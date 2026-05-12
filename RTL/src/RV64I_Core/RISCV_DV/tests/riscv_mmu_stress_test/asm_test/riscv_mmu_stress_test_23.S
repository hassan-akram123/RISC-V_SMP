.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x11, h0_start
jalr x0, x11, 0
h0_start:
                  li x7, 0x40000100
                  csrw 0x301, x7
kernel_sp:        
                  la x5, kernel_stack_end

trap_vec_init:    
                  la x7, mtvec_handler
                  ori x7, x7, 1
                  csrw 0x305, x7 # MTVEC

mepc_setup:       
                  la x7, init
                  csrw 0x341, x7

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x7, 0x1800
                  csrw 0x300, x7 # MSTATUS
                  mret
init:             
                  li x0, 0x6
                  li x1, 0x1b13134a
                  li x2, 0x265fcbf9
                  li x3, 0x80000000
                  li x4, 0xc
                  li x6, 0x2695180c
                  li x7, 0xcc2f7e1
                  li x8, 0xff3c6a63
                  li x9, 0xc8a15912
                  li x10, 0x77dba15c
                  li x11, 0x80000000
                  li x12, 0x0
                  li x13, 0x4bfe1aeb
                  li x14, 0xf4b315bb
                  li x15, 0xf64687f0
                  li x16, 0xe
                  li x17, 0xfcacbaf8
                  li x18, 0x16f263e
                  li x19, 0x0
                  li x20, 0xf
                  li x21, 0xcf4d00ed
                  li x22, 0x6
                  li x23, 0x80000000
                  li x24, 0x5721c43d
                  li x25, 0x79d99a32
                  li x26, 0x0
                  li x27, 0x80000000
                  li x28, 0x671a214f
                  li x29, 0x9
                  li x31, 0x6
                  la x30, user_stack_end
main:             sltu         t3, a4, t0
                  la           a4, sub_2
                  nop
                  xori         s1, s2, -1995
                  ori          zero, t4, -1859
                  slt          zero, s3, a0
                  add          a6, s5, a7
                  addi         a4, a4, -19
                  blt          t0, s5, main_j2 #branch to jump instr
                  slt          ra, s6, s6
                  add          t2, t3, a6
main_j2:          jalr         a6, a4, 20 #jump main -> sub_2
                  la           s9, region_0+4 #start riscv_load_store_rand_instr_stream_0
                  srl          a5, s9, a2
                  lbu          t3, -1(s9)
                  sb           s2, -3(s9)
                  sh           t2, 8(s9)
                  lbu          t6, 7(s9)
                  xor          s1, s3, s10
                  sb           a1, 11(s9)
                  sh           a6, 6(s9)
                  sb           s7, 12(s9)
                  lbu          gp, 9(s9)
                  sb           s6, 1(s9)
                  lb           a4, 3(s9)
                  sra          a3, s1, s7
                  lbu          sp, 6(s9)
                  lhu          a3, -2(s9)
                  sb           s10, 2(s9)
                  lbu          s5, 9(s9)
                  sll          a6, t0, sp
                  sra          t2, a0, s11
                  nop
                  lb           a2, 14(s9)
                  lh           s4, 0(s9)
                  sb           s6, 7(s9)
                  and          s5, s1, a7
                  lbu          tp, 9(s9)
                  slti         a4, s8, -41
                  sltiu        s1, t0, 656
                  sll          t4, t6, s11
                  ori          t2, s10, -1343
                  sra          s8, tp, t5
                  sb           t3, 9(s9)
                  sb           s11, 9(s9)
                  lbu          s8, 14(s9)
                  srai         s3, a4, 9
                  or           t2, s10, t6
                  add          s7, t4, t0
                  lb           s5, -3(s9)
                  sb           gp, 15(s9)
                  lb           zero, 9(s9)
                  sb           gp, -4(s9)
                  ori          a5, t6, -371
                  srli         s6, a0, 16
                  lbu          a2, 14(s9)
                  sb           s8, 11(s9)
                  lb           tp, 1(s9)
                  sb           t1, 13(s9)
                  sltu         a5, a6, s0
                  sh           a5, -2(s9) #end riscv_load_store_rand_instr_stream_0
                  la           s10, region_0+437 #start load_store_instr_stream_0
                  la           t2, region_0+1544 #start load_store_instr_stream_1
                  sb           s5, -220(s10)
                  la           s9, region_0+83 #start load_store_instr_stream_2
                  sb           t1, -49(t2)
                  lhu          gp, -24(t2)
                  la           s11, region_0+1771 #start load_store_instr_stream_3
                  lbu          s3, -16(s9)
                  lb           s6, -68(s10)
                  sb           s10, 1(s11)
                  lb           a6, 23(t2)
                  lh           t1, -11(s9)
                  lb           a2, 2(s9)
                  lb           s7, -62(s11)
                  lbu          t3, 66(s10)
                  lhu          s1, 62(t2)
                  lhu          s2, 1(s11)
                  lbu          a0, -128(s10)
                  lbu          s8, 42(s11)
                  lh           a5, -51(s11)
                  lbu          a7, -222(s10)
                  sb           zero, -44(s11)
                  lbu          a2, 59(t2)
                  lbu          s7, 32(s11)
                  lbu          tp, -4(s9)
                  lb           a7, -23(t2)
                  sb           a5, -238(s10)
                  lbu          s7, 4(s9) #end load_store_instr_stream_2
                  lb           a3, 28(t2)
                  lw           a2, -209(s10)
                  sh           a5, 39(s11)
                  lbu          s8, -170(s10)
                  lbu          t1, 23(t2)
                  sb           s4, 64(t2) #end load_store_instr_stream_1
                  lb           s4, -33(s11) #end load_store_instr_stream_3
                  sb           s0, -183(s10) #end load_store_instr_stream_0
                  la           a4, region_0+1636 #start riscv_load_store_hazard_instr_stream_0
                  sub          s6, s1, t3
                  sh           ra, -10(a4)
                  sra          s10, t0, t2
                  lh           a2, -10(a4)
                  and          a2, t5, s8
                  lh           a7, -10(a4)
                  sh           s2, -10(a4)
                  sb           s1, -10(a4)
                  lhu          zero, -10(a4)
                  lbu          a5, -10(a4)
                  lh           gp, -10(a4)
                  lbu          a3, -10(a4)
                  sb           a1, -10(a4)
                  lbu          a3, -1(a4)
                  lb           t3, -1(a4)
                  add          s1, s1, sp
                  lb           s8, -1(a4)
                  sltiu        s11, a4, 113
                  lb           t2, -1(a4)
                  andi         tp, s10, -1678
                  sltiu        a2, s7, -213
                  lb           t3, -1(a4) #end riscv_load_store_hazard_instr_stream_0
                  ori          s9, t6, -804
                  ori          t4, s11, 2020
                  sltiu        s0, s6, -1986
                  addi         a4, ra, -440
                  slli         a7, a6, 8
                  srai         s9, s0, 16
                  xori         s8, s3, 1033
                  bgeu         sp, a5, 25f
                  auipc        s1, 79735
                  sll          s10, a1, a5
                  bne          gp, t6, 19f
                  beq          a1, a4, 25f
                  beq          tp, tp, 28f
                  sra          tp, s6, zero
                  xor          a3, t3, s4
                  sltiu        t3, t2, 135
                  bltu         a1, s9, 28f
                  nop
                  auipc        s8, 891086
19:               add          s8, a0, t0
                  addi         a0, s8, 94
                  sltiu        tp, s1, 1194
                  lui          s7, 267445
                  and          s0, a3, t6
                  bge          sp, s5, 26f
25:               sltu         a7, a0, s9
26:               srai         ra, s1, 6
                  bgeu         tp, s2, 37f
28:               sltu         s0, a0, tp
                  xori         s1, s2, -499
                  sub          s9, a6, s6
                  ori          gp, t6, -1341
                  sra          s6, s10, a2
                  slli         t2, a7, 18
                  slti         gp, t2, 173
                  bltu         zero, s8, 49f
                  sub          t3, t1, a2
37:               and          s9, a0, sp
                  andi         t6, sp, 1480
                  bge          s4, zero, 52f
                  add          s5, t2, zero
                  blt          t3, t6, 49f
                  bge          s8, a4, 51f
                  sll          t1, s7, t6
                  nop
                  addi         s6, t6, 649
                  sra          a7, t4, a2
                  bne          s1, a6, 49f
                  nop
49:               sra          s0, a2, a6
                  sltu         s11, t0, s10
51:               beq          s0, s8, 67f
52:               bltu         a3, a5, 61f
                  nop
                  slli         s3, sp, 29
                  sub          s9, t4, ra
                  sub          s8, s4, tp
                  srli         a5, s0, 8
                  sra          s4, a4, s7
                  bgeu         s11, s6, 62f
                  nop
61:               bne          t4, zero, 77f
62:               sltu         t3, sp, a3
                  lui          a4, 585254
                  sra          ra, s7, s5
                  add          gp, a1, s2
                  sra          t3, t5, a2
67:               srli         s2, s7, 21
                  beq          zero, t2, 76f
                  andi         sp, t5, 778
                  addi         s5, a1, -850
                  sll          s0, t6, ra
                  add          t3, s9, a1
                  andi         t1, a0, 23
                  andi         t1, s0, -450
                  auipc        s10, 356669
76:               bge          t5, gp, 77f
77:               auipc        gp, 822168
                  slt          t3, s5, a3
                  or           a7, a4, ra
                  sltu         t2, a6, t4
                  xori         s11, a2, 517
                  beq          a2, a5, 90f
                  bne          a1, s1, 101f
                  sll          a4, s10, a7
                  bltu         a5, a5, 98f
                  xor          ra, zero, t1
                  bne          a3, a2, 97f
                  bltu         t3, t5, 95f
                  auipc        t1, 505690
90:               beq          a4, t0, 107f
                  xori         s11, t2, 466
                  slli         s2, s10, 31
                  bltu         s2, a1, 110f
                  auipc        s6, 745052
95:               sra          t2, t4, t2
                  srli         t4, s8, 0
97:               slli         s1, t1, 30
98:               bltu         s6, tp, 103f
                  sub          s11, t0, t2
                  beq          t5, s10, 117f
101:              and          a5, ra, s8
                  xor          s9, s3, s4
103:              sub          s10, s7, t5
                  blt          s9, a3, 120f
                  blt          s4, s2, 116f
                  or           a3, gp, s2
107:              bltu         a0, s8, 126f
                  bne          s1, ra, 121f
                  sltiu        s11, a7, -745
110:              and          s1, s2, s10
                  beq          t3, s7, 113f
                  xori         a7, s5, 426
113:              bge          s6, t4, 116f
                  add          a7, a1, s3
                  xori         t2, s3, -1669
116:              addi         s9, s7, -1992
117:              sltiu        a5, s7, -536
                  xori         s4, s10, -273
                  slti         s6, ra, 508
120:              blt          t1, ra, 133f
121:              slt          ra, t4, s8
                  slli         a6, s4, 24
                  xor          a7, s6, t4
                  and          a0, s11, s2
                  beq          s3, a4, 132f
126:              lui          s8, 229658
                  ori          s10, a5, 7
                  sltiu        s9, a3, 1365
                  beq          sp, s4, 131f
                  bge          a3, t3, 133f
                  nop
                  la           t1, sub_1
                  addi         t1, t1, 294
                  nop
                  lui          a0, 590590
                  bgeu         a5, s8, main_j1 #branch to jump instr
                  sra          a7, t1, s7
                  srli         s6, t4, 1
                  ori          t6, ra, -300
                  sltiu        s3, a7, 1680
                  xori         s1, t3, 800
main_j1:          jalr         a6, t1, -293 #jump main -> sub_1
131:              sltu         ra, zero, s0
132:              slli         sp, s4, 24
133:              slli         a3, s3, 0
                  la x11, test_done
                  jalr x0, x11, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            xor          t3, t5, a2
                  add          s9, ra, s10
                  andi         s4, t6, -1069
                  addi         t5, t5, -24
                  ori          a5, t0, 1623
                  sw           a6, 4(t5)
                  nop
                  srai         a5, sp, 21
                  add          tp, s0, s4
                  slti         s6, s4, 1790
                  la           s10, region_0+463 #start riscv_load_store_rand_instr_stream_4
                  addi         t4, tp, 649
                  sltiu        a6, s4, 1313
                  slli         s5, s2, 16
                  sb           s0, 36(s10)
                  lui          a2, 463799
                  lhu          tp, -29(s10)
                  lbu          s2, 15(s10)
                  sh           t2, -25(s10)
                  lbu          t4, 19(s10)
                  lb           t2, -24(s10)
                  lbu          a4, -36(s10)
                  sb           t1, -24(s10)
                  lui          s0, 906437
                  lh           s11, -23(s10)
                  lb           a6, -28(s10)
                  lbu          s3, -5(s10)
                  sltiu        a4, a5, 936
                  lb           s8, -36(s10)
                  xori         t3, s3, -1190
                  xori         a7, a7, 1609
                  lb           a3, -54(s10)
                  sw           a0, 57(s10)
                  sh           t4, 51(s10)
                  sh           s3, 57(s10)
                  lh           a0, -59(s10)
                  andi         a4, gp, -111
                  nop
                  lbu          a3, 58(s10)
                  lb           a4, -49(s10)
                  sw           a2, 13(s10)
                  or           t6, s2, s9
                  nop
                  and          a6, s7, s0
                  auipc        s3, 835029
                  srli         gp, t3, 9
                  sb           zero, 31(s10)
                  sub          s2, t5, a5
                  sll          a5, zero, s8
                  sltiu        zero, t2, 1655
                  ori          s8, s11, 335
                  lbu          ra, -36(s10) #end riscv_load_store_rand_instr_stream_4
                  la           s6, region_0+1592 #start riscv_load_store_rand_instr_stream_2
                  lb           t6, -9(s6)
                  sh           s6, -8(s6)
                  add          s1, a4, a2
                  lb           t1, -10(s6)
                  sb           s11, 5(s6)
                  lb           t2, 1(s6)
                  lw           zero, 12(s6)
                  sll          t6, a1, a1
                  andi         s4, s4, -697
                  sra          s1, s2, gp
                  sltu         s5, s8, s8
                  xor          tp, t2, t0
                  xori         tp, t2, 657
                  srli         a2, ra, 27
                  lui          s9, 250784
                  lbu          a7, 2(s6)
                  sb           s11, 9(s6)
                  srli         s8, t0, 4
                  lhu          s3, 10(s6)
                  lb           a0, 3(s6)
                  srai         a5, a1, 18
                  sb           s10, 10(s6)
                  slli         ra, a2, 2
                  slti         a3, a5, -646
                  lw           a7, 8(s6)
                  lw           sp, -16(s6)
                  sll          tp, t4, a3
                  or           s11, t5, a1
                  or           a0, s1, zero
                  lb           s2, 2(s6)
                  nop
                  sw           t6, 0(s6) #end riscv_load_store_rand_instr_stream_2
                  la           ra, region_1+1314 #start riscv_load_store_hazard_instr_stream_2
                  lb           a4, -399(ra)
                  sra          a5, a4, s6
                  lbu          sp, -889(ra)
                  sb           s8, -889(ra)
                  lbu          a7, -889(ra)
                  nop
                  lb           s0, -889(ra)
                  sb           s9, -889(ra)
                  sb           gp, -889(ra)
                  sra          s1, t1, a3
                  lbu          s2, -101(ra)
                  sb           s6, -911(ra)
                  lbu          t3, -911(ra)
                  sb           s11, -911(ra) #end riscv_load_store_hazard_instr_stream_2
                  la           t1, region_0+496 #start load_store_instr_stream_2
                  lb           s2, -2(t1)
                  la           s4, region_0+1186 #start load_store_instr_stream_1
                  lhu          a7, 6(t1)
                  la           s1, region_0+1667 #start load_store_instr_stream_0
                  sb           s4, -11(t1)
                  lb           ra, -4(s1)
                  sw           a3, -7(s1)
                  lbu          a0, -12(s1)
                  lbu          s0, 161(s4)
                  lbu          a0, -1(s1)
                  lhu          a3, 248(s4)
                  lb           ra, -44(s4)
                  lh           t2, 120(s4)
                  lb           tp, -16(t1)
                  lb           s6, 2(t1)
                  lbu          s9, 0(s1)
                  lb           s9, 212(s4)
                  lb           s10, -2(t1)
                  sb           t5, -4(s1)
                  lbu          a4, 13(s1)
                  sb           gp, -169(s4) #end load_store_instr_stream_1
                  lb           s8, -10(t1)
                  lbu          a7, -14(t1)
                  lb           a3, 12(t1)
                  lb           t2, -8(s1)
                  lbu          s3, -7(t1) #end load_store_instr_stream_2
                  lbu          a7, 8(s1) #end load_store_instr_stream_0
                  la           s5, region_1+1375 #start load_store_instr_stream_1
                  la           t4, region_1+1044 #start load_store_instr_stream_3
                  la           t6, region_1+944 #start load_store_instr_stream_0
                  lhu          a7, -514(t6)
                  sb           a1, 16(t4)
                  sb           a0, 139(t6)
                  lbu          t2, -836(s5)
                  lw           s3, -12(t4)
                  la           a6, region_1+569 #start load_store_instr_stream_2
                  lh           zero, -1233(s5)
                  sb           s2, -169(a6)
                  lw           tp, 16(t4)
                  sb           a4, -607(t6)
                  lhu          ra, -14(t4)
                  lbu          s11, 567(s5)
                  lbu          a0, 218(a6)
                  lbu          t2, -760(t6)
                  lbu          s2, 160(a6)
                  lbu          a4, -716(s5)
                  lh           t1, 8(t4)
                  lw           s9, -105(a6)
                  lw           s7, -13(a6)
                  lbu          s0, -841(t6)
                  lb           t1, 99(a6)
                  lhu          s4, 704(t6)
                  sw           zero, -832(t6)
                  lw           t3, 155(a6)
                  lh           t3, -165(a6)
                  lb           a2, -208(a6)
                  lbu          a4, -856(s5) #end load_store_instr_stream_1
                  lbu          s4, 75(a6) #end load_store_instr_stream_2
                  sb           s11, -387(t6)
                  lb           a2, -16(t4) #end load_store_instr_stream_3
                  sh           a7, 984(t6) #end load_store_instr_stream_0
                  la           gp, region_1+1093 #start load_store_instr_stream_1
                  la           s6, region_1+522 #start load_store_instr_stream_0
                  lb           t6, 49(s6)
                  sh           a4, -57(gp)
                  lhu          s8, 55(gp)
                  lbu          s3, -55(s6)
                  lw           s5, -33(gp)
                  lb           a4, -37(s6)
                  lbu          s10, -13(s6)
                  lb           s1, -53(gp)
                  lhu          zero, 47(gp)
                  lbu          s10, -29(s6)
                  lbu          tp, -57(s6)
                  lbu          t6, 36(s6)
                  lb           s3, 27(s6)
                  lh           t3, -25(gp)
                  sb           s0, 6(gp) #end load_store_instr_stream_1
                  lb           t1, 25(s6)
                  lhu          s8, 46(s6) #end load_store_instr_stream_0
                  la           a7, region_0+1209 #start load_store_instr_stream_0
                  la           s8, region_0+1124 #start load_store_instr_stream_1
                  lb           a2, -11(s8)
                  sb           gp, 2(a7)
                  la           a3, region_0+1372 #start load_store_instr_stream_2
                  lhu          t2, 10(s8)
                  lhu          s4, -2(s8)
                  lb           a5, -11(s8)
                  sw           s3, 16(s8)
                  lb           a6, -31(a3)
                  lb           s5, -53(a7)
                  lhu          s6, 8(s8)
                  lh           s0, 16(a3)
                  lhu          t3, 0(s8)
                  lbu          a4, 186(a3)
                  sw           s11, -228(a3)
                  sh           ra, -6(s8)
                  sh           t4, 234(a3)
                  sb           a0, 169(a7)
                  lbu          s10, -105(a3)
                  sb           s7, -243(a7)
                  lb           a0, 6(s8) #end load_store_instr_stream_1
                  lb           a4, 65(a3) #end load_store_instr_stream_2
                  lbu          a4, -211(a7) #end load_store_instr_stream_0
                  la           sp, region_0+513 #start riscv_load_store_hazard_instr_stream_0
                  lhu          a0, -31(sp)
                  sltiu        a2, s4, 532
                  lhu          t4, -31(sp)
                  lhu          t1, -31(sp)
                  slt          zero, a5, s4
                  sh           s3, -31(sp)
                  lhu          s7, -31(sp)
                  lb           t4, -31(sp)
                  sb           t0, 7(sp)
                  lw           a4, 7(sp)
                  srl          s6, a6, s4
                  sb           s7, 64(sp)
                  sb           ra, 64(sp)
                  sll          s9, t5, s10
                  sb           s0, 64(sp)
                  sb           zero, 64(sp)
                  lb           s9, 64(sp)
                  lb           a2, 64(sp)
                  lui          t1, 282388
                  lhu          a2, -3(sp)
                  lhu          a4, -3(sp)
                  sb           a7, 0(sp)
                  lb           a5, 0(sp) #end riscv_load_store_hazard_instr_stream_0
                  la           t3, region_0+1917 #start riscv_load_store_hazard_instr_stream_3
                  lb           s5, -4(t3)
                  lbu          s2, 15(t3)
                  sw           s10, 7(t3)
                  lhu          t2, 7(t3)
                  lh           t2, -15(t3)
                  sb           a7, -8(t3)
                  slt          t2, s10, t5
                  sb           s4, 8(t3)
                  lbu          s11, 0(t3)
                  sh           a5, -5(t3)
                  lbu          a3, -5(t3)
                  sh           a6, -5(t3)
                  sb           s7, 1(t3)
                  lh           s5, 3(t3)
                  lb           ra, 3(t3)
                  lbu          zero, -16(t3) #end riscv_load_store_hazard_instr_stream_3
                  la           ra, region_1+1791 #start riscv_load_store_hazard_instr_stream_4
                  sb           t3, 53(ra)
                  sh           s5, 53(ra)
                  sw           a2, 53(ra)
                  lb           tp, 53(ra)
                  sub          a4, a5, s6
                  lbu          s8, 53(ra)
                  andi         a7, t6, -1740
                  lw           t3, 53(ra)
                  lb           s6, 53(ra)
                  lbu          s10, -51(ra)
                  lbu          a2, -51(ra)
                  sh           s5, -51(ra)
                  sb           t4, 50(ra) #end riscv_load_store_hazard_instr_stream_4
                  la           s11, region_0+634 #start riscv_load_store_rand_instr_stream_1
                  ori          s3, s11, 1816
                  sll          a6, s10, s2
                  xori         s0, s11, -1720
                  xori         t3, a1, 853
                  sh           s0, 140(s11)
                  add          a6, a6, sp
                  sb           a2, 81(s11)
                  lbu          s4, -116(s11)
                  lh           a2, -36(s11)
                  ori          s7, s9, 908
                  lhu          ra, 190(s11)
                  auipc        sp, 887062
                  lb           s0, -149(s11)
                  sh           s7, 190(s11)
                  lb           s2, -57(s11)
                  xori         s0, s1, 438
                  lh           a3, 252(s11)
                  ori          s6, a7, -917
                  sll          tp, a3, s4
                  sb           t0, -44(s11)
                  slli         s7, a7, 0
                  lbu          sp, 183(s11)
                  xor          sp, s9, t2
                  sltu         s7, ra, s11
                  lhu          t3, -74(s11)
                  sw           s0, 250(s11)
                  lbu          a7, 69(s11)
                  lw           s3, -78(s11)
                  sltu         a7, a6, s9
                  sw           s11, -50(s11)
                  nop
                  sb           t4, 113(s11)
                  slli         ra, t1, 9
                  lbu          t3, -155(s11)
                  lhu          t1, -92(s11)
                  sltiu        s0, t0, -597
                  sb           s0, -136(s11)
                  sra          t6, s8, a1
                  sltu         s2, t1, a7
                  lh           t6, 168(s11) #end riscv_load_store_rand_instr_stream_1
                  la           gp, region_1+660 #start riscv_load_store_rand_instr_stream_3
                  ori          s8, tp, -1416
                  and          s1, tp, a4
                  sb           a5, 39(gp)
                  slli         a5, a5, 5
                  sra          s10, t5, s5
                  sub          a5, a2, s10
                  ori          s0, s6, 984
                  lw           a6, 20(gp)
                  lui          a7, 883934
                  add          a3, s6, a3
                  lb           t4, 51(gp)
                  sra          zero, s10, t1
                  lb           ra, 37(gp)
                  lb           a4, 32(gp)
                  lb           zero, 21(gp)
                  srli         s1, s5, 3
                  add          a0, a2, a5
                  sltiu        t4, s2, -22
                  lb           a7, -37(gp)
                  slli         a3, s7, 10
                  sb           s2, -12(gp)
                  srai         a0, t2, 12
                  sub          t6, a4, t2
                  lbu          s3, 35(gp)
                  andi         t6, s0, 1461
                  sltu         s0, tp, ra
                  slt          s9, t6, s7
                  srl          s7, tp, s9
                  andi         a5, a0, -1553
                  sll          a3, s9, a6
                  lui          ra, 235489
                  sb           a1, 61(gp) #end riscv_load_store_rand_instr_stream_3
                  la           s9, region_0+945 #start riscv_load_store_hazard_instr_stream_1
                  sb           a5, 458(s9)
                  sb           a7, 458(s9)
                  lb           t6, 458(s9)
                  lbu          a0, -874(s9)
                  sb           tp, -874(s9)
                  sb           a1, -403(s9)
                  lbu          a4, -403(s9)
                  lh           tp, -403(s9)
                  xori         gp, a5, 270
                  lb           s6, -403(s9)
                  sb           t5, 510(s9)
                  lb           s8, 510(s9)
                  sh           s7, -591(s9) #end riscv_load_store_hazard_instr_stream_1
                  la           tp, region_0+713 #start load_store_instr_stream_0
                  sb           s7, 106(tp)
                  la           t2, region_0+58 #start load_store_instr_stream_1
                  sh           ra, -10(t2)
                  lb           s6, -8(t2)
                  lw           a4, -1(tp)
                  sb           s11, -5(t2)
                  sb           a6, -224(tp)
                  la           s8, region_0+784 #start load_store_instr_stream_2
                  sb           t5, 57(s8)
                  sb           a6, -21(s8)
                  lb           s4, -123(tp)
                  sb           s9, -5(t2)
                  lbu          s6, 34(s8)
                  lw           sp, 239(tp)
                  lw           s5, -53(tp)
                  sb           ra, -9(t2)
                  lb           a0, -44(s8)
                  lbu          ra, 5(s8)
                  lhu          s5, -4(t2)
                  sh           t6, -8(s8)
                  lbu          a3, 9(s8)
                  lh           a5, 12(t2) #end load_store_instr_stream_1
                  sb           s5, 8(s8) #end load_store_instr_stream_2
                  sb           t0, -173(tp) #end load_store_instr_stream_0
                  ori          s7, s1, 639
                  slti         sp, a6, 681
                  srli         s8, a7, 0
                  add          a3, t4, s2
                  lui          sp, 898993
                  xor          t3, s9, t3
                  srl          s4, s3, a4
                  addi         ra, t4, 1448
                  sub          t2, a6, t3
                  beq          s10, a2, 20f
                  bne          t2, sp, 15f
                  bne          s11, s0, 27f
                  bgeu         s3, a6, 21f
                  auipc        s11, 41389
                  add          sp, s7, t0
15:               bne          s0, a0, 20f
                  bge          a3, a6, 31f
                  sltiu        ra, a4, -1049
                  sll          s3, a3, t6
                  bge          t4, s5, 31f
20:               sub          s6, a4, t4
21:               bne          sp, a5, 41f
                  addi         t1, a5, -1887
                  add          t2, tp, a3
                  addi         s6, t2, -43
                  bltu         gp, s0, 32f
                  sub          a7, t2, s10
27:               bne          t0, tp, 43f
                  slti         t3, s4, -980
                  lui          t1, 996852
                  sltiu        s9, s0, -683
31:               slli         s9, s0, 4
32:               blt          s10, t3, 35f
                  srai         ra, s10, 25
                  sll          ra, t4, t5
35:               slti         sp, s5, 590
                  blt          a2, s11, 50f
                  andi         sp, zero, 2028
                  beq          s3, gp, 57f
                  slt          s10, t1, sp
                  srai         a7, ra, 22
41:               bne          a1, s1, 47f
                  bltu         s11, a1, 52f
43:               nop
                  or           s0, t0, s5
                  lui          s9, 228026
                  blt          t3, ra, 64f
47:               bne          a6, t4, 56f
                  srai         s6, a4, 0
                  slli         a0, s8, 22
50:               bge          a7, s8, 69f
                  bgeu         a5, t4, 70f
52:               beq          tp, ra, 61f
                  slt          s7, a3, s9
                  sltiu        a3, a6, -1852
                  addi         s1, tp, -55
56:               blt          t5, s11, 57f
57:               xori         tp, ra, 1531
                  bge          s1, s10, 70f
                  nop
                  blt          t3, a2, 62f
61:               sub          s9, a4, a0
62:               nop
                  sltiu        s7, s8, -883
64:               xor          zero, s7, t5
                  slt          a6, zero, sp
                  srli         tp, a7, 4
                  ori          sp, a3, 351
                  sll          gp, s5, a0
69:               lui          t2, 207437
70:               bge          zero, t1, 84f
                  auipc        s4, 684424
                  bge          t1, s8, 89f
                  beq          t4, a5, 75f
                  sra          tp, s5, t5
75:               bgeu         s11, a7, 92f
                  slt          s0, ra, s11
                  slt          a5, s4, a6
                  srl          zero, s1, t0
                  sra          s9, s3, a6
                  slt          t4, a3, a4
                  auipc        s4, 470844
                  slti         ra, s2, -1732
                  bgeu         t1, a4, 99f
84:               andi         a7, a4, 269
                  bge          s10, s3, 93f
                  xor          s8, t1, gp
                  srli         s9, a1, 2
                  sltu         a2, a2, a2
89:               lui          s9, 171422
                  auipc        s6, 940823
                  andi         s3, s0, -850
92:               nop
93:               sra          a6, t0, t2
                  beq          a0, a3, 99f
                  sra          a7, s6, sp
                  blt          s6, a2, 115f
                  bgeu         s8, s4, 113f
                  lui          t3, 479331
99:               lui          a7, 83866
                  sltiu        zero, a4, 468
                  andi         s4, sp, -960
                  bne          t2, a2, 121f
                  slt          t1, a1, s1
                  andi         zero, t5, 1788
                  bltu         s4, a7, 114f
                  auipc        s3, 855264
                  auipc        ra, 1016720
                  bltu         s8, tp, 123f
                  slti         t1, zero, 1780
                  slli         s5, s3, 23
                  beq          t5, a0, 128f
                  sltu         a0, zero, a1
113:              slt          a2, s9, s11
114:              nop
115:              slli         a0, a5, 15
                  add          s4, s9, s6
                  and          t1, s2, ra
                  xori         s2, ra, -753
                  addi         s10, s11, -484
                  bne          t2, s5, 125f
121:              or           t4, s10, a5
                  blt          s3, ra, 124f
123:              lui          a2, 573920
124:              add          s4, t0, a4
125:              and          a5, a0, t2
                  addi         ra, s9, 1424
                  slt          s8, s4, s11
128:              sll          t2, s8, s8
                  srl          s6, s4, ra
                  addi         s4, t6, 1435
                  srl          tp, a1, t4
                  and          s8, t2, a0
                  or           t1, sp, a1
                  sltu         gp, zero, t5
                  nop
                  sltu         s2, a4, s3
                  sltiu        s3, t3, -1480
                  bgeu         t1, ra, 139f
139:              ori          s1, t6, -1139
                  bge          t4, a4, 143f
                  ori          ra, tp, 385
                  nop
143:              add          s5, t0, s3
                  srai         a6, t2, 2
                  and          a0, s9, t0
                  sra          zero, a3, t1
                  slt          a5, t4, a4
                  and          s11, t5, s10
                  xor          s6, t2, a0
                  and          gp, a7, s4
                  ori          t4, a3, -1423
                  sltiu        s4, a4, -1313
                  sub          sp, tp, s8
                  ori          s4, zero, -769
                  addi         t1, t3, -177
                  bgeu         a1, s8, 164f
                  srli         a5, gp, 24
                  bgeu         a1, s1, 170f
                  srl          s11, t3, a4
                  and          sp, t5, s4
                  xor          s11, t1, gp
                  bgeu         s7, s10, 168f
                  slt          s8, t5, t1
164:              lui          t3, 1048063
                  bne          a1, tp, 172f
                  auipc        sp, 389709
                  andi         t6, t6, -52
168:              or           a6, t0, a1
                  andi         t3, s7, 1506
170:              sltiu        s6, s7, 327
                  sra          s3, a5, s1
172:              bge          a1, a7, 177f
                  andi         s0, t0, -373
                  lui          s3, 576179
                  sltu         a5, s4, t2
                  bge          gp, t4, 193f
177:              bge          s3, s2, 186f
                  sub          s1, s5, t6
                  bge          a0, s9, 199f
                  slt          a6, a3, a7
                  sra          t4, a2, gp
                  xor          a7, s10, s8
                  or           s8, t5, gp
                  sub          gp, s9, a5
                  auipc        s2, 392886
186:              auipc        tp, 614402
                  ori          a0, s10, 783
                  bge          gp, t0, 204f
                  or           a2, s5, a1
                  bge          t3, s5, 208f
                  blt          s3, t1, 202f
                  nop
193:              bne          s5, s8, 207f
                  sll          a7, zero, zero
                  nop
                  bgeu         s7, s4, 206f
                  sltu         tp, s1, t3
                  sltu         s1, s8, s1
199:              sra          ra, s9, t5
                  beq          s3, s11, 212f
                  blt          gp, t5, 220f
202:              auipc        s1, 757735
                  beq          s3, tp, 205f
204:              sra          ra, ra, a0
205:              lui          t4, 627691
206:              and          s3, sp, a1
207:              slti         s7, t5, -51
208:              blt          gp, t5, 213f
                  sra          t2, s2, t6
                  or           a2, t0, t6
                  blt          gp, a6, 225f
212:              beq          s0, a4, 221f
213:              slli         s4, t5, 7
                  beq          s11, tp, 230f
                  nop
                  auipc        a7, 214181
                  or           a4, s9, s10
                  and          s10, s1, ra
                  bge          a5, a2, 228f
220:              srl          a6, a1, sp
221:              auipc        s10, 79699
                  blt          a6, t1, 227f
                  bltu         s3, s6, 239f
                  ori          s8, t2, 255
225:              slli         a2, a6, 13
                  ori          a4, t6, -1125
227:              andi         t2, a4, -1653
228:              sltiu        a4, t3, 1999
                  slt          a3, t6, t6
230:              srli         a6, a6, 28
                  blt          s3, a4, 234f
                  sltu         a5, a7, a7
                  sltiu        sp, s11, 906
234:              addi         s7, s0, 1320
                  sub          gp, s0, s7
                  blt          s6, sp, 244f
                  and          a3, s5, a1
                  sub          ra, a4, a3
239:              bgeu         gp, t4, 254f
                  bne          t2, a6, 259f
                  sltiu        a5, a2, -489
                  srl          ra, s6, sp
                  bgeu         s4, s8, 249f
244:              sra          s10, s4, t4
                  srl          s11, t2, s2
                  sra          s0, s2, a6
                  sra          s10, s6, s2
                  andi         t1, a7, 337
249:              or           s1, s5, s9
                  and          ra, s5, zero
                  slti         a4, s0, 996
                  srl          s8, tp, t2
                  sltiu        a6, a7, -1101
254:              sll          a7, s0, t1
                  sltu         s6, s4, zero
                  bne          zero, s4, 268f
                  andi         s6, t4, 1796
                  add          t6, t1, s11
259:              bge          t1, t0, 271f
                  sub          s2, a7, a3
                  sra          s8, s7, t0
                  add          t6, t2, gp
                  bne          t5, s7, 273f
                  bge          a7, ra, 278f
                  bltu         t0, t3, 276f
                  beq          a7, s8, 268f
                  sltiu        s0, a5, -1501
268:              sub          t4, gp, s2
                  srai         t2, t2, 3
                  sra          gp, s6, sp
271:              sub          s8, t3, t0
                  ori          s0, a2, 939
273:              srli         t1, gp, 24
                  slli         t1, s4, 22
                  sltu         tp, a1, a1
276:              srl          s0, a7, t6
                  srl          a2, ra, s1
278:              srli         s6, s10, 18
                  add          a2, tp, s6
                  lui          t3, 599117
                  sll          s9, t6, a0
                  blt          s6, s7, 289f
                  and          s6, a6, ra
                  slli         a3, a5, 2
                  ori          zero, a6, -1562
                  ori          ra, s6, 1043
                  or           t6, zero, t1
                  slli         gp, ra, 6
289:              bge          s4, ra, 298f
                  bge          zero, t3, 309f
                  nop
                  auipc        t3, 897178
                  lui          t3, 246571
                  srl          s0, a6, t0
                  bltu         a7, gp, 296f
296:              srl          s8, a2, t5
                  sra          s2, a0, s8
298:              ori          s0, a2, 311
                  xor          s3, s6, a1
                  bltu         t5, tp, 319f
                  sra          s1, a0, s5
                  ori          s6, s7, -945
                  and          a2, t6, s1
                  add          s5, t6, a6
                  slli         t6, s8, 12
                  sub          s6, a1, a6
                  andi         s11, t3, 1249
                  andi         s11, s8, 282
309:              nop
                  bne          ra, a1, 326f
                  and          tp, t0, s10
                  sra          a6, t0, s4
                  bltu         s1, s2, 333f
                  add          s1, t2, t1
                  nop
                  srli         s6, a4, 27
                  bltu         t3, t5, 333f
                  bltu         tp, tp, 335f
319:              xori         s10, s0, -1596
                  bge          s9, s5, 325f
                  sub          a4, s6, t1
                  sltu         a4, t4, s5
                  bne          s4, a2, 328f
                  nop
325:              xor          a0, t1, t1
326:              srl          s0, ra, s3
                  bge          s11, a5, 344f
328:              bgeu         s0, s6, 342f
                  nop
                  xori         ra, t6, -1463
                  sltiu        s9, zero, 414
                  nop
333:              sltiu        s4, s11, 136
                  slt          a0, a5, a3
335:              slli         zero, a1, 30
                  slti         sp, t6, -144
                  bgeu         zero, s7, 355f
                  bgeu         s7, t3, 340f
                  addi         s4, s8, 1594
340:              xor          s3, zero, t6
                  bgeu         s8, t2, 350f
342:              bltu         a0, s10, 347f
                  bge          t3, a6, 355f
344:              beq          s5, gp, 352f
                  or           a6, zero, s6
                  beq          t3, t1, 363f
347:              and          t4, s3, tp
                  andi         s2, zero, 955
                  slli         sp, t1, 28
350:              ori          a3, s4, 302
                  addi         a6, t1, 1863
352:              bgeu         s11, s4, 362f
                  blt          s2, a1, 354f
354:              ori          a5, t2, 257
355:              slt          s10, s0, t4
                  or           a2, a2, a4
                  and          tp, s0, s10
                  srl          s11, a7, a0
                  sltu         t2, t2, s1
                  addi         s11, t1, -1029
                  addi         s0, a3, 1296
362:              slt          s7, s7, t4
363:              ori          t1, s0, -1643
                  auipc        t6, 444161
                  slli         s9, a5, 24
                  blt          t1, s2, 382f
                  srai         t4, a3, 13
                  or           t1, s4, tp
                  ori          t2, s6, 1469
                  slli         s0, t4, 29
                  lui          t4, 554878
                  auipc        sp, 734642
                  add          s9, a4, t5
                  sra          s3, t2, s9
                  auipc        ra, 947610
                  addi         t4, a4, 123
                  sll          t4, s1, s11
                  bgeu         s6, s8, 394f
                  bgeu         tp, a3, 388f
                  bge          s5, s6, 399f
                  andi         t1, t2, -836
382:              sltiu        s7, t2, -386
                  sll          a2, t3, s5
                  blt          s6, a5, 391f
                  lui          t1, 984581
                  bltu         a3, s2, 391f
                  bge          s9, a2, 403f
388:              slti         t4, a2, -1854
                  slti         s5, ra, -1951
                  blt          s1, a3, 392f
391:              beq          t2, a4, 400f
392:              addi         a2, s0, -1102
                  sltiu        s8, a1, -632
394:              lui          s9, 299550
                  srl          s9, sp, s0
                  bltu         a5, s6, 414f
                  bltu         s2, t4, 409f
                  srli         t4, t2, 30
399:              slli         a6, s1, 8
400:              auipc        s7, 379761
                  add          t1, zero, a5
                  srai         t4, s9, 7
403:              add          t4, sp, s5
                  srai         a2, t4, 22
                  srai         a2, s4, 13
                  slti         t4, a4, 1337
                  nop
                  srai         s8, t6, 25
409:              beq          ra, a4, 414f
                  sll          zero, s5, a6
                  addi         s9, s6, 673
                  lui          a6, 241111
                  bne          s6, t1, 422f
414:              or           t6, t4, s1
                  nop
                  bne          t3, s11, 435f
                  bne          a1, s6, 431f
                  slti         s11, s4, -302
                  add          tp, t5, s7
                  xori         a2, gp, 583
                  addi         s11, a3, 521
422:              andi         s5, s6, 57
                  srli         s3, zero, 15
                  srl          t3, s2, ra
                  or           t3, a6, sp
                  sltiu        a4, s10, 830
                  nop
                  nop
                  addi         gp, a2, -1832
                  nop
431:              or           a7, sp, s11
                  sltu         sp, t1, s6
                  bne          t1, s3, 436f
                  bgeu         a0, t6, 453f
435:              xor          a7, s2, s5
436:              bgeu         a7, s4, 447f
                  bgeu         s11, t2, 457f
                  bltu         s1, zero, 455f
                  sltiu        t6, s0, -1549
                  slt          a5, s4, t6
                  xor          a4, s8, t2
                  bne          t4, t6, 448f
                  xor          s9, s6, t6
                  sra          s1, s8, a2
                  sltiu        s8, t4, -919
                  addi         a5, a1, -2034
447:              slt          t3, s10, s10
448:              srai         ra, a1, 31
                  nop
                  andi         s10, ra, -237
                  addi         sp, a3, 1638
                  add          t6, s6, ra
453:              bgeu         t1, s2, 455f
                  bltu         s3, a5, 468f
455:              addi         t6, s0, 1435
                  sra          s11, t2, s10
457:              bltu         s6, a1, 472f
                  bge          s4, t6, 474f
                  sltiu        s7, zero, 241
                  srl          a3, sp, t2
                  blt          tp, s4, 466f
                  slti         s11, a5, -223
                  lui          gp, 1047154
                  xor          a4, ra, s4
                  bltu         sp, s5, 476f
466:              add          zero, s11, gp
                  bge          s8, s10, 468f
468:              ori          tp, t0, 2
                  slli         zero, t5, 31
                  bge          a0, sp, 489f
                  srai         s11, a0, 11
472:              bgeu         gp, s5, 484f
                  slli         s6, ra, 6
474:              nop
                  nop
476:              beq          s2, s5, 493f
                  srli         a3, t2, 1
                  addi         s10, s8, 569
                  slt          ra, s11, t2
                  lui          a6, 86976
                  srli         s6, t2, 19
                  ori          tp, t6, -108
                  auipc        s10, 548398
484:              ori          t1, a3, 658
                  andi         a5, t3, -2002
                  bge          a0, gp, 506f
                  sltiu        gp, s8, 400
                  xori         s10, a5, 579
489:              xor          zero, s10, ra
                  srai         s10, t6, 27
                  la           t1, region_1+1280 #start riscv_load_store_rand_instr_stream_0
                  sh           t5, 314(t1)
                  nop
                  sub          t6, s7, t0
                  ori          a6, t2, 1855
                  sh           a0, 216(t1)
                  add          sp, s1, s11
                  lhu          s7, -234(t1)
                  auipc        a7, 329455
                  sb           t6, 437(t1)
                  sra          t2, a2, s0
                  lb           s6, 442(t1)
                  lb           a7, 89(t1)
                  lb           a3, 440(t1)
                  lb           a3, 155(t1)
                  nop
                  lbu          s5, 557(t1)
                  lui          a2, 468154
                  add          a4, s10, t6
                  lbu          a3, -22(t1)
                  lw           s11, -288(t1)
                  xori         a4, a3, -495
                  auipc        t4, 479546
                  add          t2, a0, ra
                  sra          t6, a2, t5
                  srl          sp, gp, a2
                  slti         t3, zero, 1239
                  xor          zero, sp, s6
                  and          ra, a4, s10
                  or           zero, a5, t5
                  auipc        s5, 63087
                  slli         s10, t4, 7
                  and          t2, s3, s3
                  srl          s7, s9, a7
                  andi         sp, s0, 821
                  auipc        zero, 584709
                  lbu          s5, -531(t1)
                  srli         t2, s5, 24
                  sh           zero, -782(t1)
                  lbu          s4, 23(t1)
                  lbu          gp, 27(t1)
                  lbu          s5, 343(t1)
                  slt          ra, tp, a7
                  lb           a5, -223(t1)
                  lbu          a7, -73(t1)
                  nop
                  or           s0, ra, t5
                  lui          a7, 966677
                  andi         sp, s9, 1495
                  sb           s8, -779(t1) #end riscv_load_store_rand_instr_stream_0
                  sll          s6, s2, a5
                  andi         t4, gp, 2019
493:              add          s6, s7, a0
                  xor          t6, s8, t1
                  lui          a5, 30434
                  nop
                  sra          a6, sp, zero
                  sltu         s8, a5, a7
                  lui          s2, 641055
                  slt          s4, s0, sp
                  xori         t6, a2, 1903
                  xor          s3, gp, a2
                  auipc        t1, 167735
                  srli         gp, t1, 13
                  sltu         s7, t5, s9
506:              blt          zero, s9, 515f
                  srli         ra, t2, 20
                  andi         zero, a0, -1060
                  bgeu         s1, a4, 518f
                  and          s5, a2, a2
                  sub          s7, s1, s0
                  beq          t6, tp, 515f
                  xori         t4, t5, -1853
                  sub          s4, s9, s0
515:              sub          s2, s4, s11
                  sll          a4, s0, gp
                  sltiu        s3, a5, -316
518:              add          zero, a5, gp
                  sra          t6, s10, s8
                  sltiu        ra, gp, -1178
                  slti         sp, t3, -110
                  bne          sp, s11, 540f
                  and          s6, a6, t4
                  slli         s5, t3, 5
                  srai         a7, a4, 2
                  srai         s9, t2, 20
                  add          a0, a1, sp
                  auipc        s2, 251024
                  or           t2, a4, s2
                  bgeu         a5, ra, 532f
                  srli         s6, a3, 12
532:              bltu         s2, s9, 539f
                  slli         a4, zero, 7
                  srl          s3, t4, a2
                  xori         t4, t6, 1934
                  slli         a3, s3, 8
                  slli         a0, s2, 19
                  srli         s4, t1, 29
539:              add          s7, s8, a1
540:              slti         a4, t1, -517
                  srli         a4, s9, 2
                  ori          t2, s2, -1316
                  slli         ra, s11, 18
                  slli         s8, t2, 15
                  srai         gp, s0, 28
                  sltu         t6, gp, s3
                  auipc        s4, 732673
                  auipc        t6, 951941
                  ori          tp, a5, 287
                  and          a7, tp, sp
                  sll          a2, t5, zero
                  slti         s3, s10, -120
                  nop
                  auipc        s3, 934148
                  srl          t3, a2, s3
                  xori         s8, t3, 713
                  lui          s0, 878312
                  and          s1, t4, a7
                  sra          s11, gp, s10
                  slti         s4, s3, 327
                  sltu         s2, t5, t1
                  bne          a0, a0, 570f
                  lui          a5, 168472
                  bge          t3, s9, 578f
                  addi         s0, s5, 645
                  nop
                  sub          s7, s3, gp
                  bne          a1, a4, 582f
                  slli         s4, t4, 1
570:              sltu         s0, s5, a5
                  sll          a7, t1, a6
                  sra          s9, s9, s7
                  auipc        t1, 222441
                  sra          s11, t6, a2
                  slt          t1, tp, s7
                  or           t3, t4, a2
                  blt          a0, s11, 582f
578:              sub          s2, s1, s5
                  xori         s2, s0, 1126
                  xori         a5, tp, -1250
                  add          zero, s3, s1
582:              sltu         ra, s3, tp
                  addi         s6, s3, -814
                  lw           a6, 4(t5)
                  srl          a7, s1, s3
                  addi         t5, t5, 24
                  ori          tp, s1, -1153
1011:             addi x13, x16, 1
1011:             jalr x13, x13, 0
sub_1:            andi         t4, a7, -2040
                  add          s8, s4, t2
                  sltu         s9, t1, s10
                  slt          zero, s7, a3
                  srl          a5, t0, t4
                  addi         t5, t5, -12
                  sw           a6, 4(t5)
                  auipc        s3, 910771
                  and          zero, sp, t1
                  la           gp, region_0+1288 #start load_store_instr_stream_3
                  la           s9, region_0+1856 #start load_store_instr_stream_2
                  lw           sp, -212(gp)
                  la           s0, region_0+1634 #start load_store_instr_stream_0
                  lbu          a0, -12(gp)
                  lhu          s4, -14(s9)
                  lw           t1, 14(s0)
                  lb           s11, 15(s9)
                  lbu          t6, -101(gp)
                  la           s2, region_0+985 #start load_store_instr_stream_1
                  sh           a7, 6(s9)
                  lh           t1, -14(s0)
                  sb           s4, 97(gp)
                  sw           s6, 27(s2)
                  lbu          t1, 50(s2)
                  lb           a3, 49(gp)
                  lb           t6, 3(s9)
                  lb           a5, -52(gp)
                  sb           a7, 2(s0)
                  sb           a1, 164(gp)
                  lb           a5, 38(s2)
                  sb           t0, -1(s9)
                  lb           t6, 0(s9)
                  lbu          t1, -12(s0)
                  sb           a3, 115(gp) #end load_store_instr_stream_3
                  lh           a4, -31(s2)
                  sb           a1, 5(s9)
                  lh           sp, 2(s9) #end load_store_instr_stream_2
                  lbu          s11, 9(s2) #end load_store_instr_stream_1
                  lh           s3, 12(s0) #end load_store_instr_stream_0
                  la           s8, region_1+881 #start riscv_load_store_rand_instr_stream_1
                  sll          s2, s6, t0
                  srai         a7, t6, 30
                  sll          t4, a0, tp
                  xor          s2, s0, zero
                  nop
                  srai         sp, t5, 20
                  and          s7, sp, ra
                  ori          tp, a6, 1880
                  lb           t6, -6(s8)
                  sb           t2, -64(s8)
                  xori         t4, tp, 311
                  lw           a0, -133(s8)
                  add          s7, ra, s8
                  lh           a4, -191(s8)
                  slli         s7, s5, 28
                  lui          s10, 601303
                  lb           s11, 183(s8)
                  or           s2, t0, a0
                  slt          t6, t4, t6
                  srai         a4, t6, 31
                  sb           t0, 52(s8)
                  lh           tp, 139(s8)
                  srai         a5, zero, 1
                  srai         s7, s11, 8
                  sb           a7, 80(s8)
                  or           s2, a4, t3
                  addi         sp, s11, -346
                  ori          s3, s10, -738
                  lui          a7, 721756
                  slt          s0, s6, s0
                  lb           s3, -206(s8)
                  srli         t3, tp, 4
                  lbu          tp, -225(s8)
                  sb           t5, 87(s8) #end riscv_load_store_rand_instr_stream_1
                  la           a0, region_1+982 #start riscv_load_store_hazard_instr_stream_0
                  sb           s7, -3(a0)
                  lhu          zero, 6(a0)
                  sb           sp, 8(a0)
                  lhu          s2, 8(a0)
                  lbu          s10, -3(a0)
                  lb           a2, -3(a0)
                  sb           t4, -3(a0)
                  lbu          s4, -9(a0)
                  lbu          s1, -9(a0)
                  lbu          t4, -8(a0)
                  lbu          s7, -8(a0)
                  sltu         s0, s3, t2
                  add          t4, t0, s8
                  sb           a4, 2(a0)
                  sub          t1, t0, a6
                  sb           a1, 2(a0)
                  lb           a7, 3(a0)
                  lb           a6, 10(a0)
                  lb           s7, 10(a0)
                  lb           t2, 13(a0)
                  lh           a2, 6(a0)
                  xor          t1, s10, t6
                  lhu          tp, 6(a0) #end riscv_load_store_hazard_instr_stream_0
                  la           s5, region_0+318 #start load_store_instr_stream_1
                  la           s4, region_0+840 #start load_store_instr_stream_0
                  lhu          zero, -230(s5)
                  sb           a4, -147(s5)
                  lb           a7, -7(s4)
                  sb           a7, -213(s5)
                  lb           s0, -94(s5)
                  lbu          a4, 108(s5)
                  lbu          s3, 3(s4)
                  lhu          s11, -108(s5)
                  lh           s6, -34(s5)
                  lbu          a4, -13(s4)
                  sh           zero, 14(s4)
                  lb           a3, 179(s5)
                  sb           a6, 23(s5) #end load_store_instr_stream_1
                  sb           t0, -11(s4) #end load_store_instr_stream_0
                  la           sp, region_0+207 #start riscv_load_store_rand_instr_stream_0
                  sw           s3, -195(sp)
                  auipc        t2, 588937
                  auipc        t4, 312126
                  lhu          t1, -185(sp)
                  nop
                  lbu          s3, -153(sp)
                  sb           s11, -194(sp)
                  lbu          s11, -20(sp)
                  sb           s7, 204(sp)
                  lb           gp, -133(sp)
                  sw           sp, 137(sp)
                  or           gp, tp, a1
                  andi         s8, a0, -1111
                  srai         gp, s1, 29
                  sub          tp, a4, t4
                  lb           gp, -66(sp)
                  sra          a2, s5, ra
                  lui          s10, 301637
                  sll          t6, a4, s6
                  nop
                  sltiu        a7, a6, -215
                  lb           s8, -106(sp)
                  xor          t3, t0, s1
                  sub          a6, s5, a1
                  auipc        a5, 744054
                  slt          ra, sp, t2
                  sb           s2, 44(sp)
                  xor          ra, t0, s4
                  sltiu        zero, s8, 687
                  lbu          t2, -66(sp)
                  lbu          tp, -102(sp)
                  lh           a5, 43(sp)
                  slti         t2, a0, 819
                  lb           t4, -93(sp)
                  sra          a7, t6, zero
                  lb           t2, 58(sp) #end riscv_load_store_rand_instr_stream_0
                  sll          a5, t1, zero
                  addi         a3, t5, -1791
                  and          s11, a2, a2
                  slli         s2, s3, 21
                  slti         zero, s1, -1712
                  auipc        t6, 524041
                  bne          s3, s11, 16f
                  add          s10, s7, a0
                  xori         t4, a2, 371
                  addi         t1, gp, -1401
                  beq          t0, a3, 24f
                  srai         s6, s11, 13
                  sll          s8, s8, s10
                  srli         t2, a7, 18
                  bgeu         tp, s2, 15f
15:               or           s2, s2, s0
16:               beq          s4, s9, 31f
                  srl          a2, s7, s2
                  bltu         gp, s7, 23f
                  bge          s5, a5, 39f
                  bne          s8, s10, 31f
                  andi         t6, tp, 890
                  beq          s2, t2, 28f
23:               addi         a6, a4, -1268
24:               add          s3, a2, s2
                  blt          s9, s3, 44f
                  nop
                  slti         s5, s2, 1748
28:               lui          t6, 921289
                  bltu         t3, t3, 45f
                  slti         sp, a7, 640
31:               sra          s10, s8, a0
                  bltu         s4, s5, 52f
                  andi         s6, a3, 1354
                  and          sp, s7, t5
                  sltu         t1, t0, s9
                  nop
                  bgeu         a6, t5, 56f
                  slt          sp, a5, t6
39:               or           a0, a3, gp
                  slt          s10, a0, gp
                  ori          s5, a0, 1311
                  xori         s10, s2, -404
                  slli         a7, gp, 25
44:               addi         s2, s11, 600
45:               sub          s1, sp, ra
                  addi         a0, a0, -1710
                  andi         a5, t4, -2041
                  lui          tp, 44095
                  lui          s2, 584673
                  bne          s0, s4, 70f
                  sll          sp, a7, t6
52:               nop
                  bltu         a4, t0, 63f
                  xori         s3, t2, -354
                  sll          s9, t1, s10
56:               xori         s1, t4, -1087
                  slt          sp, a2, ra
                  xori         a7, s1, -1540
                  bge          s7, t4, 60f
60:               sltu         a7, a6, ra
                  srli         s6, t1, 17
                  srli         zero, s4, 9
63:               or           zero, a5, s3
                  sub          s7, s3, s4
                  bgeu         s4, t1, 83f
                  bge          t1, a7, 77f
                  bltu         s4, s11, 86f
                  xori         t6, t3, 1124
                  or           a4, a6, t5
70:               bltu         a2, a5, 81f
                  sltu         gp, a0, a2
                  addi         s11, s2, 418
                  bgeu         s6, s0, 78f
                  bgeu         s6, s2, 85f
                  slt          a4, t2, t5
                  srl          s1, s5, s8
77:               bgeu         t6, t0, 84f
78:               xor          ra, a7, ra
                  bgeu         t2, t2, 82f
                  or           gp, a3, a0
81:               sra          s4, s6, s2
82:               blt          a7, s3, 92f
83:               bge          s2, a2, 90f
84:               xor          s6, s8, a5
85:               bgeu         s3, s7, 105f
86:               sltiu        t6, gp, -393
                  sra          ra, a4, t0
                  sll          t1, s4, t2
                  bge          a7, a4, 101f
90:               and          s0, a6, s11
                  slli         s3, sp, 13
92:               and          tp, zero, s2
                  srli         a2, t5, 3
                  add          ra, s0, ra
                  srai         t6, t6, 1
                  andi         t1, a4, 1987
                  blt          s4, s3, 103f
                  bltu         s11, sp, 107f
                  lui          s4, 310233
                  auipc        a7, 649046
101:              bge          t2, a1, 107f
                  slt          s9, a6, t1
103:              slti         t4, a7, 315
                  bge          s8, sp, 105f
105:              srli         sp, a5, 30
                  bne          tp, sp, 126f
107:              lui          t6, 534629
                  xor          s5, t2, t2
                  add          s9, a0, tp
                  bltu         sp, a1, 117f
                  lui          a3, 939166
                  xori         t6, a3, -362
                  sll          a7, a7, t6
                  srli         a5, a1, 22
                  xor          a0, s11, s3
                  sltu         tp, s10, s4
117:              srl          t1, s8, sp
                  or           t4, zero, t1
                  bge          a2, t5, 130f
                  or           a6, a3, s3
                  slt          sp, t1, t4
                  blt          a5, t6, 140f
                  bne          sp, a7, 135f
                  sra          sp, zero, a2
                  srli         ra, a5, 7
126:              sltu         t1, t4, t0
                  andi         t4, t3, 718
                  srl          s8, sp, t0
                  lui          gp, 707101
130:              slli         gp, s0, 12
                  lui          s10, 361067
                  xori         s1, s2, 821
                  bne          gp, a2, 149f
                  bltu         s7, zero, 139f
135:              sll          t2, a6, s5
                  auipc        s5, 13520
                  blt          s9, a0, 147f
                  auipc        t3, 66385
139:              beq          s6, s4, 140f
140:              bne          s3, t0, 159f
                  or           ra, zero, ra
                  ori          t2, t4, 991
                  and          s1, a7, s6
                  sra          t3, t2, s7
                  srl          s2, s3, tp
                  slt          s8, s8, s7
147:              auipc        s2, 466605
                  beq          a5, t6, 157f
149:              lui          s8, 769520
                  bne          s0, t4, 161f
                  sltiu        zero, s9, 1864
                  sll          s3, a3, t3
                  addi         tp, s4, 916
                  xori         a3, s9, 441
                  auipc        t6, 777227
                  slt          a3, s5, t5
157:              srli         a5, sp, 30
                  xori         s10, s1, 1991
159:              slti         sp, s10, 596
                  xori         gp, a0, -872
161:              or           s11, a6, a7
                  addi         s3, s3, -194
                  or           s7, ra, a2
                  beq          s1, gp, 183f
                  xori         ra, a1, 940
                  srli         s0, s5, 2
                  auipc        a6, 951552
                  sub          a7, a5, t2
                  srli         a2, sp, 16
                  srai         s3, s10, 4
                  ori          a3, tp, -77
                  srli         s0, s4, 24
                  and          s11, t6, s7
                  xor          a3, s5, s3
                  add          s6, s2, t0
                  sltiu        a2, tp, -1763
                  nop
                  sll          s1, s8, s4
                  slt          t6, t6, sp
                  srli         zero, s2, 11
                  sra          tp, a6, t1
                  srli         s0, a5, 20
183:              nop
                  sll          gp, t1, s7
                  srai         s11, a2, 11
                  sub          s4, t0, tp
                  srai         a6, ra, 0
                  bltu         a4, t0, 195f
                  slti         s1, t0, 1943
                  srl          s3, gp, a5
                  slli         zero, t4, 28
                  sltiu        s2, s1, 472
                  sltiu        s6, s8, -489
                  slti         s5, s1, 1797
195:              add          s0, s10, gp
                  auipc        t6, 259109
                  blt          a5, a4, 208f
                  sll          t4, a5, s11
                  addi         a7, a6, 875
                  la           s1, region_0+1007 #start riscv_load_store_hazard_instr_stream_1
                  sb           t4, 15(s1)
                  lh           gp, 15(s1)
                  sh           s0, 15(s1)
                  lhu          t6, 15(s1)
                  lb           a3, 15(s1)
                  add          s7, tp, ra
                  lbu          s8, 15(s1)
                  sb           s6, 15(s1)
                  lbu          s6, 15(s1)
                  lb           s8, 15(s1)
                  sh           gp, 15(s1)
                  lh           a3, 15(s1) #end riscv_load_store_hazard_instr_stream_1
                  sltiu        t4, s2, 1829
                  ori          tp, t6, 1784
                  sltu         s11, ra, t2
                  bne          s7, s11, 214f
                  slt          zero, ra, s11
                  slti         s5, t4, 1944
                  srl          ra, s0, a5
                  xori         s4, a5, 423
208:              bltu         a6, a0, 223f
                  bge          a1, t2, 215f
                  and          s3, s10, s4
                  sra          sp, s2, a6
                  ori          t1, s6, 791
                  and          s5, s1, s11
214:              slti         s2, t4, -1142
215:              sra          s0, s6, s7
                  and          a4, a5, gp
                  sll          s9, tp, t3
                  xor          s4, a6, s3
                  srai         s5, a5, 1
                  andi         zero, s7, -1447
                  blt          s9, s5, 241f
                  sub          a7, s8, ra
223:              sra          s10, s7, t5
                  sll          gp, s11, s10
                  and          s10, tp, a5
                  bge          a1, a6, 231f
                  and          s4, s9, s4
                  slli         s2, gp, 4
                  lui          t4, 149517
                  or           a2, a1, t1
231:              add          s3, t5, t4
                  blt          s1, sp, 246f
                  beq          t0, t6, 252f
                  srl          a7, s11, s0
                  sll          s7, s3, s10
                  andi         sp, s11, 391
                  sll          a3, ra, s1
                  ori          a6, a3, 1165
                  addi         s1, s0, -1995
                  xor          s1, a1, a7
241:              srli         t4, s10, 19
                  andi         a2, s4, 1405
                  nop
                  xor          a0, s2, zero
                  sltu         gp, s6, a6
246:              bltu         a0, s8, 256f
                  beq          a5, a0, 257f
                  bne          zero, gp, 268f
                  bge          t4, t2, 252f
                  and          a6, a5, t0
                  xori         a3, s6, -395
252:              sub          t1, a7, s5
                  ori          gp, a4, 1122
                  bltu         tp, s7, 260f
                  ori          s9, s0, 1040
256:              ori          a4, t1, 91
257:              nop
                  bltu         s7, tp, 278f
                  ori          s7, s11, -1765
260:              and          a4, t4, a3
                  srli         t1, a3, 22
                  bne          a0, zero, 268f
                  xori         a4, s0, 598
                  xori         a0, tp, -390
                  sltiu        a6, gp, -866
                  bne          t4, s7, 271f
                  xor          s1, s9, s1
268:              blt          a5, s7, 279f
                  bgeu         t6, s10, 280f
                  sltiu        a7, s8, 1683
271:              andi         ra, tp, 1652
                  bne          a6, s9, 275f
                  bge          t5, s3, 280f
                  andi         s4, t6, 1531
275:              srai         t3, s1, 28
                  srli         tp, tp, 27
                  ori          s8, t4, 1917
278:              ori          s1, zero, -1210
279:              bne          s7, s1, 281f
280:              andi         a0, s8, -1282
281:              srl          s4, s8, s3
                  or           s2, gp, gp
                  lw           a6, 4(t5)
                  sltu         t3, tp, sp
                  lui          sp, 173935
                  addi         t5, t5, 12
                  sltu         s1, s6, s0
                  slti         a4, a2, 1996
453:              addi x9, x16, 0
453:              jalr x9, x9, 0
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
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x5, x30, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

mmode_intr_vector_2:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x5, x30, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

mmode_intr_vector_3:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x5, x30, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

mmode_intr_vector_4:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x5, x30, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

mmode_intr_vector_5:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x5, x30, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

mmode_intr_vector_6:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x5, x30, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

mmode_intr_vector_7:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x5, x30, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

mmode_intr_vector_8:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x5, x30, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

mmode_intr_vector_9:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x5, x30, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

mmode_intr_vector_10:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x5, x30, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

mmode_intr_vector_11:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x5, x30, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

mmode_intr_vector_12:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x5, x30, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

mmode_intr_vector_13:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x5, x30, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

mmode_intr_vector_14:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x5, x30, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

mmode_intr_vector_15:
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x5, x30, zero
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 0x1f
                  beqz x7, 1f
                  j mmode_intr_handler
                  1: la x11, test_done
                  jalr x0, x11, 0

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
                  addi x30, x30, -128
                  sw  x1, 4(x30)
                  sw  x2, 8(x30)
                  sw  x3, 12(x30)
                  sw  x4, 16(x30)
                  sw  x5, 20(x30)
                  sw  x6, 24(x30)
                  sw  x7, 28(x30)
                  sw  x8, 32(x30)
                  sw  x9, 36(x30)
                  sw  x10, 40(x30)
                  sw  x11, 44(x30)
                  sw  x12, 48(x30)
                  sw  x13, 52(x30)
                  sw  x14, 56(x30)
                  sw  x15, 60(x30)
                  sw  x16, 64(x30)
                  sw  x17, 68(x30)
                  sw  x18, 72(x30)
                  sw  x19, 76(x30)
                  sw  x20, 80(x30)
                  sw  x21, 84(x30)
                  sw  x22, 88(x30)
                  sw  x23, 92(x30)
                  sw  x24, 96(x30)
                  sw  x25, 100(x30)
                  sw  x26, 104(x30)
                  sw  x27, 108(x30)
                  sw  x28, 112(x30)
                  sw  x29, 116(x30)
                  sw  x30, 120(x30)
                  sw  x31, 124(x30)
                  add x5, x30, zero
                  csrr x7, 0x341 # MEPC
                  csrr x7, 0x342 # MCAUSE
                  li x8, 0x3 # BREAKPOINT
                  beq x7, x8, ebreak_handler
                  li x8, 0x8 # ECALL_UMODE
                  beq x7, x8, ecall_handler
                  li x8, 0x9 # ECALL_SMODE
                  beq x7, x8, ecall_handler
                  li x8, 0xb # ECALL_MMODE
                  beq x7, x8, ecall_handler
                  li x8, 0x1
                  beq x7, x8, instr_fault_handler
                  li x8, 0x5
                  beq x7, x8, load_fault_handler
                  li x8, 0x7
                  beq x7, x8, store_fault_handler
                  li x8, 0xc
                  beq x7, x8, pt_fault_handler
                  li x8, 0xd
                  beq x7, x8, pt_fault_handler
                  li x8, 0xf
                  beq x7, x8, pt_fault_handler
                  li x8, 0x2 # ILLEGAL_INSTRUCTION
                  beq x7, x8, illegal_instr_handler
                  csrr x8, 0x343 # MTVAL
                  1: la x11, test_done
                  jalr x1, x11, 0

ecall_handler:    
                  la x7, _start
                  sw x0, 0(x7)
                  sw x1, 4(x7)
                  sw x2, 8(x7)
                  sw x3, 12(x7)
                  sw x4, 16(x7)
                  sw x5, 20(x7)
                  sw x6, 24(x7)
                  sw x7, 28(x7)
                  sw x8, 32(x7)
                  sw x9, 36(x7)
                  sw x10, 40(x7)
                  sw x11, 44(x7)
                  sw x12, 48(x7)
                  sw x13, 52(x7)
                  sw x14, 56(x7)
                  sw x15, 60(x7)
                  sw x16, 64(x7)
                  sw x17, 68(x7)
                  sw x18, 72(x7)
                  sw x19, 76(x7)
                  sw x20, 80(x7)
                  sw x21, 84(x7)
                  sw x22, 88(x7)
                  sw x23, 92(x7)
                  sw x24, 96(x7)
                  sw x25, 100(x7)
                  sw x26, 104(x7)
                  sw x27, 108(x7)
                  sw x28, 112(x7)
                  sw x29, 116(x7)
                  sw x30, 120(x7)
                  sw x31, 124(x7)
                  la x11, write_tohost
                  jalr x0, x11, 0

instr_fault_handler:
                  add x30, x5, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

load_fault_handler:
                  add x30, x5, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

store_fault_handler:
                  add x30, x5, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

ebreak_handler:   
                  csrr  x7, 0x341
                  addi  x7, x7, 4
                  csrw  0x341, x7
                  add x30, x5, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

illegal_instr_handler:
                  csrr  x7, 0x341
                  addi  x7, x7, 4
                  csrw  0x341, x7
                  add x30, x5, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x7, 0x300 # MSTATUS;
                  csrr  x7, 0x304 # MIE;
                  csrr  x7, 0x344 # MIP;
                  csrrc x7, 0x344, x7 # MIP;
                  add x30, x5, zero
                  lw  x1, 4(x30)
                  lw  x2, 8(x30)
                  lw  x3, 12(x30)
                  lw  x4, 16(x30)
                  lw  x5, 20(x30)
                  lw  x6, 24(x30)
                  lw  x7, 28(x30)
                  lw  x8, 32(x30)
                  lw  x9, 36(x30)
                  lw  x10, 40(x30)
                  lw  x11, 44(x30)
                  lw  x12, 48(x30)
                  lw  x13, 52(x30)
                  lw  x14, 56(x30)
                  lw  x15, 60(x30)
                  lw  x16, 64(x30)
                  lw  x17, 68(x30)
                  lw  x18, 72(x30)
                  lw  x19, 76(x30)
                  lw  x20, 80(x30)
                  lw  x21, 84(x30)
                  lw  x22, 88(x30)
                  lw  x23, 92(x30)
                  lw  x24, 96(x30)
                  lw  x25, 100(x30)
                  lw  x26, 104(x30)
                  lw  x27, 108(x30)
                  lw  x28, 112(x30)
                  lw  x29, 116(x30)
                  lw  x30, 120(x30)
                  lw  x31, 124(x30)
                  addi x30, x30, 128
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
