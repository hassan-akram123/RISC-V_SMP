.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x8, h0_start
jalr x0, x8, 0
h0_start:
                  li x12, 0x40000100
                  csrw 0x301, x12
kernel_sp:        
                  la x20, kernel_stack_end

trap_vec_init:    
                  la x12, mtvec_handler
                  ori x12, x12, 0
                  csrw 0x305, x12 # MTVEC

mepc_setup:       
                  la x12, init
                  csrw 0x341, x12

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x12, 0x1800
                  csrw 0x300, x12 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0x80000000
                  li x2, 0x80000000
                  li x3, 0x0
                  li x4, 0xe
                  li x5, 0x9
                  li x6, 0xf7417bfb
                  li x7, 0x80000000
                  li x8, 0xf7eab735
                  li x9, 0x80000000
                  li x10, 0x0
                  li x11, 0x0
                  li x12, 0x0
                  li x13, 0x0
                  li x14, 0xff828ad4
                  li x15, 0x0
                  li x16, 0xf5f647f9
                  li x17, 0xfeb8ca39
                  li x19, 0xe91e6504
                  li x21, 0x4
                  li x22, 0x4
                  li x23, 0xf7600b38
                  li x24, 0xd
                  li x25, 0x27d7a87a
                  li x26, 0x0
                  li x27, 0xfb343dfc
                  li x28, 0x7
                  li x29, 0x0
                  li x30, 0x0
                  li x31, 0x4
                  la x18, user_stack_end
main:             la           t5, region_1+305 #start riscv_load_store_rand_instr_stream_4
                  add          a7, s1, s8
                  sltiu        a6, t1, -848
                  sh           s8, 5(t5)
                  sh           a4, -1(t5)
                  lb           a2, -4(t5)
                  sra          s3, gp, a5
                  xori         s8, s8, -1837
                  sub          a2, s2, s10
                  lb           a4, -12(t5)
                  lb           t1, -12(t5)
                  sb           a7, -2(t5)
                  lb           a4, -10(t5)
                  lbu          gp, -16(t5)
                  xori         gp, t2, 1658
                  sb           t6, -11(t5)
                  lui          t3, 5987
                  srl          a5, s11, t4
                  lh           gp, -3(t5)
                  and          s7, t2, t5
                  sra          a3, s1, zero
                  lbu          a1, -12(t5)
                  lbu          s1, 4(t5)
                  xori         a6, a2, -38
                  lbu          s8, -12(t5)
                  xor          s11, s11, a6
                  or           a3, s5, gp
                  sb           s7, 5(t5)
                  srai         a5, a3, 31
                  sb           t5, -10(t5)
                  lui          t2, 513780
                  add          t3, t4, tp
                  sb           sp, -15(t5)
                  lb           s1, -2(t5)
                  sw           a2, -13(t5)
                  xor          s8, t2, s4
                  sb           a1, -6(t5)
                  lbu          s10, 1(t5)
                  sb           tp, -12(t5)
                  lh           s10, 5(t5)
                  lui          t6, 444722
                  lbu          ra, 4(t5)
                  sb           a2, -2(t5)
                  lb           a2, -6(t5) #end riscv_load_store_rand_instr_stream_4
                  la           s9, region_1+1602 #start riscv_load_store_rand_instr_stream_3
                  auipc        a3, 52662
                  lh           s5, -102(s9)
                  slli         t6, t2, 0
                  slti         t2, t1, -1131
                  sra          s11, t4, s3
                  lb           s8, -16(s9)
                  add          s10, s0, s4
                  ori          s1, a3, -1821
                  lb           t6, -173(s9)
                  lb           s7, -24(s9)
                  sb           tp, -179(s9)
                  lw           s1, 246(s9)
                  sb           s3, 212(s9)
                  xor          s7, a5, t1
                  nop
                  auipc        s5, 472197
                  lbu          t2, -43(s9)
                  sb           a6, -155(s9)
                  slli         sp, zero, 29
                  sub          s6, a6, a5
                  addi         a2, s5, 333
                  nop
                  sb           a1, 93(s9)
                  lbu          a1, 155(s9)
                  sh           gp, -46(s9)
                  srl          a1, a4, a2
                  lb           s7, 136(s9)
                  srl          t6, a4, a2
                  lbu          a7, 49(s9)
                  srai         ra, t6, 4
                  slli         gp, a0, 1
                  lhu          t3, 176(s9)
                  lb           s7, -194(s9)
                  sll          a6, s11, s9
                  lhu          s1, -58(s9)
                  add          t0, ra, sp
                  lb           gp, 81(s9)
                  or           ra, a5, sp
                  srli         a3, sp, 14
                  srli         t2, s1, 11
                  xori         a6, a6, -1605
                  lbu          s1, 249(s9) #end riscv_load_store_rand_instr_stream_3
                  la           sp, region_0+1895 #start riscv_load_store_rand_instr_stream_0
                  lbu          zero, -928(sp)
                  addi         a3, s6, -1630
                  lb           s1, -483(sp)
                  sll          zero, t2, t5
                  auipc        ra, 539377
                  sub          a5, gp, sp
                  lb           s11, -64(sp)
                  lb           s10, -1386(sp)
                  sh           a5, -1867(sp)
                  addi         ra, s10, -150
                  or           a5, gp, t2
                  add          tp, s4, a1
                  lbu          s10, 22(sp)
                  lb           s8, -792(sp)
                  slli         a6, t0, 7
                  lb           t2, -1535(sp)
                  sra          s3, s0, s8
                  add          t1, a5, t1
                  slti         a6, tp, 1879
                  or           s11, s7, a2
                  sll          s9, s5, a7
                  auipc        s11, 148523
                  srai         t1, zero, 19
                  auipc        a7, 515216
                  sw           tp, -707(sp)
                  xori         t1, t6, -1241
                  sll          a6, s10, s1
                  lb           s9, -909(sp)
                  nop
                  sub          s1, t6, sp
                  sb           s6, -1294(sp)
                  lbu          a4, -1426(sp)
                  lbu          s3, -993(sp)
                  add          a5, ra, sp
                  add          t1, s7, t4
                  lbu          t3, -1307(sp)
                  lh           t6, -1501(sp)
                  lb           s5, -1484(sp)
                  slli         gp, a7, 14
                  slt          t6, a5, s2
                  lhu          t0, 71(sp)
                  sll          a2, s3, s6
                  xori         ra, ra, -448
                  srai         a5, t4, 23
                  andi         a0, t6, -1103
                  lbu          a4, -1619(sp)
                  lbu          a2, -548(sp)
                  lw           a2, -1787(sp) #end riscv_load_store_rand_instr_stream_0
                  la           a6, region_1+1980 #start riscv_load_store_rand_instr_stream_7
                  lhu          a0, 4(a6)
                  add          s1, a4, t5
                  slli         a0, s3, 26
                  srli         a1, a6, 13
                  lhu          t6, -36(a6)
                  or           a3, s9, t3
                  sw           s3, -24(a6)
                  sltiu        gp, a5, -1250
                  andi         s3, a7, -1777
                  lhu          a2, 6(a6)
                  lhu          s9, -28(a6)
                  slli         a3, a3, 21
                  lbu          t4, 13(a6)
                  lhu          s7, -36(a6)
                  sh           a0, 18(a6)
                  sra          s9, t6, s2
                  sb           t5, -10(a6)
                  sb           t1, -3(a6)
                  lb           s5, -23(a6)
                  srli         a3, a2, 10
                  sub          t6, a1, s8
                  sb           s0, -41(a6)
                  sb           s0, -45(a6)
                  srl          s11, t4, tp
                  sltu         t1, s4, a6
                  xor          a4, s7, t5
                  auipc        s9, 936890
                  lhu          t5, -8(a6)
                  sub          s8, t3, s2
                  sb           a4, 15(a6)
                  sub          zero, a3, t3
                  lb           a4, -31(a6)
                  srl          tp, s0, t6
                  lbu          s6, -6(a6)
                  sub          t2, a1, s9
                  lbu          s10, -9(a6)
                  lw           a7, -16(a6)
                  andi         gp, s2, 107
                  lb           s6, 16(a6)
                  srli         ra, ra, 24
                  lb           t0, -53(a6)
                  sll          a1, t2, a4
                  sb           s10, -33(a6)
                  sub          tp, s3, s0
                  lw           t4, -48(a6)
                  sra          s1, gp, ra
                  auipc        t5, 623211
                  sb           s4, -35(a6)
                  lb           sp, -23(a6)
                  sb           a2, 3(a6)
                  lui          s10, 256982
                  sb           zero, -57(a6)
                  sltiu        a0, a2, -993
                  lbu          s10, -11(a6)
                  andi         a2, sp, -154
                  lbu          s9, -55(a6)
                  sb           a0, -47(a6) #end riscv_load_store_rand_instr_stream_7
                  la           sp, region_1+1130 #start riscv_load_store_rand_instr_stream_1
                  lbu          t3, 49(sp)
                  lui          t4, 878872
                  lb           a3, 54(sp)
                  ori          a0, s9, 631
                  sb           a0, -56(sp)
                  slt          a6, s2, t5
                  or           a2, t5, s11
                  sb           s6, 33(sp)
                  slti         t2, a1, -804
                  lh           t0, -12(sp)
                  andi         s7, s10, 887
                  sh           s1, 14(sp)
                  srai         s10, a1, 18
                  sub          a4, t5, a2
                  nop
                  srli         s3, a5, 22
                  lbu          a5, -25(sp)
                  lh           a5, -16(sp)
                  ori          t5, sp, -1398
                  lbu          a2, 33(sp)
                  lb           t5, 3(sp)
                  add          t4, s0, s0
                  slli         s6, ra, 4
                  add          s10, t3, s9
                  sb           a2, -61(sp)
                  sb           s8, 64(sp)
                  add          a7, tp, s1
                  slt          a5, a7, t4
                  sub          a5, a2, gp
                  sub          a0, s3, s8
                  sll          s5, s1, s2
                  sb           s10, -63(sp)
                  srl          a4, s10, t6
                  slti         zero, a0, -435
                  srl          t2, a3, t6
                  sh           a7, -6(sp)
                  add          t3, a7, s0
                  lbu          s10, -60(sp)
                  lh           a3, 44(sp)
                  lb           s5, 37(sp)
                  and          s1, s10, t6
                  lbu          t6, 30(sp)
                  lb           t2, -57(sp)
                  srli         s1, gp, 16
                  or           a2, t1, t6
                  sra          s7, s2, s0
                  lb           t0, 59(sp)
                  xori         a0, t1, 1719
                  sh           s9, -62(sp) #end riscv_load_store_rand_instr_stream_1
                  la           s9, region_1+334 #start riscv_load_store_rand_instr_stream_8
                  lb           a1, 133(s9)
                  lui          s11, 837704
                  sh           s4, -136(s9)
                  srli         s11, s7, 27
                  sra          a0, a3, s5
                  lb           a7, 26(s9)
                  srl          s10, s8, s6
                  andi         s8, s0, 821
                  lb           a4, -167(s9)
                  srli         tp, s9, 8
                  xori         t2, t4, -1390
                  lbu          a1, 37(s9)
                  lbu          tp, 38(s9)
                  lb           s6, -147(s9)
                  sb           s4, 55(s9)
                  add          s3, a2, s3
                  and          a0, tp, s7
                  xor          a2, s1, t3
                  nop
                  lhu          a1, -254(s9)
                  and          t3, a4, a1
                  slti         t0, t0, 772
                  slti         t6, a1, -97
                  lbu          s3, -174(s9)
                  lh           a5, 250(s9)
                  lbu          ra, 3(s9)
                  xori         t2, a1, 973
                  sb           t3, -4(s9)
                  lbu          s8, -63(s9)
                  lbu          s11, 231(s9)
                  lb           zero, 109(s9)
                  sh           s11, -198(s9)
                  sltiu        ra, s2, 173
                  sb           a3, 2(s9)
                  slli         s5, s0, 18
                  srl          a6, s4, s3
                  lb           a2, -7(s9)
                  slli         t4, a5, 25
                  lb           sp, 205(s9)
                  addi         gp, s6, -96
                  sb           a4, -235(s9)
                  lh           tp, -16(s9)
                  or           t1, t1, t3
                  add          a2, ra, t4
                  sb           s2, -207(s9)
                  sb           a1, -99(s9)
                  slt          sp, ra, s9
                  lb           t0, 132(s9)
                  lbu          t0, 58(s9)
                  sb           t0, -15(s9)
                  andi         zero, zero, -993
                  lw           s10, -202(s9)
                  lbu          a1, -168(s9)
                  lb           t3, -65(s9) #end riscv_load_store_rand_instr_stream_8
                  la           sp, region_1+163 #start riscv_load_store_rand_instr_stream_5
                  lbu          ra, 35(sp)
                  lbu          t4, 23(sp)
                  ori          a7, t2, 1807
                  slli         s5, a3, 10
                  sb           a3, -6(sp)
                  nop
                  lb           t2, 28(sp)
                  lbu          t3, -16(sp)
                  lb           s7, 24(sp)
                  lbu          s3, 56(sp)
                  andi         gp, zero, -1525
                  lbu          t2, 24(sp)
                  sub          t3, t5, a5
                  lb           t4, 16(sp)
                  xor          t0, a3, t4
                  lh           s6, 47(sp)
                  lb           a6, 24(sp)
                  lbu          a5, -12(sp)
                  slli         ra, t3, 30
                  sb           s0, 15(sp)
                  sltiu        a5, s8, 24
                  addi         a0, s1, -1805
                  sll          a3, a7, s1
                  lhu          t5, 35(sp)
                  lhu          a2, 33(sp)
                  lbu          a4, -41(sp)
                  sb           t4, -20(sp)
                  sb           t4, -42(sp)
                  lbu          s1, -38(sp)
                  sb           s3, -10(sp)
                  sll          a2, s1, s8
                  lbu          s3, 28(sp)
                  lb           a7, -34(sp)
                  sb           t5, 22(sp)
                  add          tp, a0, s8
                  ori          a2, a3, 1586
                  lb           t0, 30(sp)
                  srl          a5, a7, a4
                  ori          t4, s2, 1546
                  lb           s7, -36(sp) #end riscv_load_store_rand_instr_stream_5
                  la           a1, region_1+1650 #start riscv_load_store_rand_instr_stream_10
                  sltiu        t4, t1, -2032
                  sb           a2, 210(a1)
                  sb           s2, -223(a1)
                  srl          t4, tp, s10
                  sb           a2, -60(a1)
                  sub          s10, gp, s2
                  lh           sp, -54(a1)
                  add          s3, a0, s8
                  lb           s5, 145(a1)
                  sh           s11, -96(a1)
                  sw           s9, -62(a1)
                  srai         a7, gp, 14
                  slt          a7, t4, a6
                  ori          t6, t1, -2004
                  slti         s6, a4, -1789
                  lhu          a4, 118(a1)
                  srl          a3, a0, a3
                  sltiu        sp, a2, 747
                  lb           a4, 75(a1)
                  sltiu        s5, a0, -254
                  lbu          sp, -230(a1)
                  lb           s6, -191(a1)
                  lhu          a2, -126(a1)
                  sb           t5, -62(a1)
                  sb           s11, -169(a1)
                  lb           t5, 140(a1)
                  lbu          s9, 137(a1)
                  sub          ra, s8, a4
                  sltiu        s1, a6, -922
                  lui          a7, 835660
                  lbu          gp, -147(a1)
                  slti         s9, tp, -712
                  sb           s11, 206(a1)
                  sub          a4, s3, s1
                  lhu          t3, -210(a1)
                  lhu          s6, -10(a1) #end riscv_load_store_rand_instr_stream_10
                  la           sp, region_0+594 #start riscv_load_store_rand_instr_stream_2
                  sltu         s9, a6, s9
                  add          a0, s8, t5
                  sra          s9, a6, sp
                  lhu          t2, 1090(sp)
                  sll          s6, t2, s2
                  lb           zero, 653(sp)
                  srai         a7, a6, 26
                  xori         s10, s6, -660
                  lb           s5, -263(sp)
                  sub          s1, zero, ra
                  sb           zero, 1397(sp)
                  sltu         t5, s0, s4
                  sltu         t0, ra, s11
                  slli         s6, s0, 1
                  sra          a1, s8, s9
                  sb           a2, 177(sp)
                  nop
                  xor          t2, s10, t2
                  lbu          t3, 310(sp)
                  srai         t0, s4, 14
                  sb           s0, -349(sp)
                  sll          tp, sp, ra
                  lh           t0, 1152(sp)
                  sub          a3, t3, t2
                  andi         s6, a7, 391
                  sll          t0, a7, s7
                  auipc        t4, 748729
                  xori         a0, a6, 901
                  sub          s5, t6, t4
                  auipc        t0, 133934
                  sb           s7, 431(sp)
                  xor          s6, ra, s8
                  lhu          s11, 1224(sp) #end riscv_load_store_rand_instr_stream_2
                  la           s1, region_1+1036 #start riscv_load_store_rand_instr_stream_9
                  sb           s9, 2(s1)
                  slt          t3, t4, a4
                  sb           s6, -15(s1)
                  add          gp, t6, s5
                  addi         s9, s5, 1782
                  srai         s5, a6, 26
                  sub          t5, a1, s4
                  slti         s8, t0, 937
                  lb           s3, -2(s1)
                  ori          a4, t2, -1378
                  slli         s6, a3, 14
                  slti         ra, a6, -2038
                  slt          t3, a7, s10
                  sb           s0, -16(s1)
                  lb           t0, -7(s1)
                  sll          a1, s9, a0
                  lb           a6, 13(s1)
                  lb           a0, 1(s1)
                  slt          t6, a4, a6
                  nop
                  or           t4, a7, sp
                  lb           a0, -15(s1)
                  lh           gp, -8(s1)
                  lhu          t0, 10(s1)
                  sb           s7, 13(s1)
                  xor          a5, tp, a7
                  lbu          s3, -11(s1)
                  addi         t0, gp, -1327
                  lb           a0, -3(s1)
                  xori         a2, ra, 1895
                  srai         tp, s3, 31
                  lbu          gp, 13(s1)
                  addi         t0, s3, 1054
                  slti         s3, s1, -385
                  lhu          gp, -10(s1)
                  lb           s11, 1(s1)
                  sltiu        s7, s11, -50
                  add          a4, s6, t2
                  and          a7, a2, t1
                  sb           s9, -11(s1)
                  slt          tp, t0, t6
                  sb           s0, -13(s1) #end riscv_load_store_rand_instr_stream_9
                  srai         zero, a0, 4
                  bgeu         t3, s0, 2f
2:                srl          s10, a6, s0
                  and          s3, a1, gp
                  sll          t4, t6, t0
                  xori         s10, zero, -279
                  srl          a0, sp, a7
                  sra          tp, a3, s4
                  srl          zero, s11, t2
                  andi         t3, ra, 81
                  slt          a5, s0, t0
                  add          t2, s2, s0
                  slli         tp, t5, 16
                  slt          a2, s8, s4
                  andi         s9, s4, -1771
                  blt          a3, zero, 28f
                  blt          zero, s9, 31f
                  nop
                  sltiu        t4, s1, 946
                  srai         s6, t1, 10
                  xori         s1, s10, -1941
                  or           t0, t5, s9
                  slli         t1, zero, 21
                  srai         s1, t3, 8
                  xor          t6, a3, t2
                  andi         s5, s9, 173
                  beq          a4, s2, 38f
                  auipc        s5, 458831
28:               and          s5, a3, s11
                  sltu         a6, s8, s4
                  sub          tp, a4, a2
31:               andi         t5, s8, 1702
                  bge          tp, s0, 43f
                  sub          t5, a2, s9
                  sra          a4, s11, s9
                  andi         tp, a2, -1509
                  lui          a7, 104671
                  ori          s9, s5, 951
38:               slti         gp, s7, 1224
                  beq          s5, s1, 49f
                  auipc        s11, 136413
                  srli         s11, a4, 14
                  srl          s6, a2, s2
43:               bltu         a7, zero, 45f
                  sra          t3, t5, a5
45:               auipc        t3, 138195
                  srai         a5, a3, 16
                  sub          s3, s2, sp
                  slli         a2, s8, 21
49:               bltu         s11, s5, 69f
                  ori          t6, a5, 613
                  nop
                  sra          t3, s6, s9
                  srl          t6, a7, tp
                  blt          s8, a3, 61f
                  nop
                  sll          s10, a6, s11
                  sltiu        s7, gp, -1480
                  blt          tp, s1, 60f
                  add          s8, s2, gp
60:               add          a7, t6, s6
61:               nop
                  lui          a0, 50681
                  blt          a0, s5, 74f
                  nop
                  srai         t5, t0, 24
                  srai         t4, s1, 9
                  srai         zero, t4, 14
                  lui          t3, 299156
69:               sub          a0, a5, zero
                  xori         s3, t5, -355
                  srl          tp, s10, a6
                  sub          s8, t1, ra
                  lui          s3, 768184
74:               xor          s8, a0, t1
                  blt          a3, s5, 94f
                  sltiu        t0, s1, 1646
                  andi         t4, a2, -1190
                  nop
                  andi         s7, s5, -1981
                  srai         s9, s10, 17
                  bgeu         t1, s6, 100f
                  srai         t6, s2, 12
                  bge          a5, s5, 96f
                  or           t3, t5, t5
                  xor          t2, t3, t4
                  beq          s4, t0, 102f
                  ori          t5, a3, 1687
                  beq          s9, t3, 107f
                  andi         s6, s10, 820
                  sltiu        t5, a4, 983
                  slt          s3, a3, s1
                  blt          s7, a4, 102f
                  bltu         ra, s2, 94f
94:               bltu         t5, s0, 96f
                  sltu         s3, s4, s10
96:               sll          t1, gp, zero
                  ori          s5, zero, -1696
                  sltiu        s8, a6, -1699
                  srli         a0, sp, 20
100:              sll          s1, a4, s9
                  lui          s5, 995922
102:              srli         a3, s7, 2
                  addi         s11, a1, 1088
                  andi         a2, s7, 496
                  add          s6, zero, s7
                  sll          a1, s6, s9
107:              slti         a7, a6, 714
                  slt          s5, s6, ra
                  srli         s7, t1, 13
                  sra          s6, t4, sp
                  sub          s8, t2, a5
                  sltiu        tp, s0, 1291
                  xori         a0, t3, -1868
                  bge          sp, s5, 116f
                  sub          a5, ra, s1
116:              sltiu        a3, zero, -1009
                  slli         t1, s10, 9
                  blt          s9, s9, 132f
                  bge          sp, a5, 127f
                  addi         a4, s1, -1325
                  nop
                  sub          a7, t6, t2
                  slti         ra, a4, -1101
                  sltiu        s9, zero, 903
                  bgeu         a6, s3, 137f
                  srl          a3, a3, a1
127:              or           s7, s1, a6
                  slti         a0, sp, 445
                  slti         a6, sp, -1131
                  and          a6, s3, s6
                  lui          t0, 904093
132:              ori          ra, t0, 366
                  bltu         s4, t4, 152f
                  lui          a5, 200216
                  andi         gp, tp, -916
                  sll          t5, s2, s11
137:              sltu         a5, tp, t1
                  add          a2, t2, t6
                  bne          s9, t5, 150f
                  bltu         a4, a1, 149f
                  srl          a2, a3, a2
                  sub          t0, s7, a5
                  blt          s4, a1, 151f
                  xori         s6, s10, -1657
                  bne          t6, a2, 153f
                  srli         s5, t3, 27
                  srai         s6, sp, 3
                  xor          a4, s7, t4
149:              srai         t0, t4, 20
150:              lui          s7, 888078
151:              slli         t6, t2, 4
152:              xori         a7, t3, 178
153:              slti         t2, a7, 861
                  srli         gp, s4, 25
                  ori          t1, ra, -228
                  beq          s3, s0, 172f
                  auipc        t3, 132796
                  andi         t6, s3, 370
                  bge          s0, t3, 178f
                  srli         s1, s8, 8
                  beq          s11, t4, 162f
162:              bltu         t4, s2, 171f
                  ori          s11, t0, 1140
                  ori          a4, a3, 952
                  sltu         s11, a3, gp
                  sll          a0, s2, a3
                  sltiu        sp, sp, -195
                  bne          a5, a6, 180f
                  beq          s1, s9, 180f
                  bgeu         a3, a5, 172f
171:              srl          t5, t1, s10
172:              xori         s3, s11, 1795
                  ori          a5, s2, 607
                  andi         s9, s9, -1389
                  blt          a1, t2, 182f
                  srl          zero, tp, s0
                  beq          a3, t6, 193f
178:              bne          t2, a6, 197f
                  sra          ra, s8, s0
180:              xor          t2, s6, s2
                  xori         a1, t1, -1404
182:              and          tp, a0, s5
                  srli         ra, t4, 21
                  sll          t1, a1, zero
                  srai         a6, s10, 31
                  sra          a4, a0, s10
                  sll          s3, a5, s6
                  or           t1, a2, t1
                  andi         a7, s6, -525
                  bge          a5, a4, 203f
                  ori          sp, s0, 446
                  srai         a1, zero, 23
193:              sub          s3, a3, a6
                  sltu         a1, a6, zero
                  blt          s9, t5, 205f
                  bne          a1, a6, 198f
197:              xor          sp, s7, s7
198:              sra          s6, sp, a2
                  bgeu         a4, s4, 207f
                  beq          sp, s0, 202f
                  bne          t4, s10, 212f
202:              and          zero, a0, ra
203:              beq          zero, s3, 219f
                  add          t2, t5, a4
205:              bgeu         s6, s9, 216f
                  bgeu         s6, t4, 208f
207:              lui          a7, 646578
208:              sra          gp, gp, a4
                  bltu         a6, a6, 217f
                  bgeu         a1, a1, 229f
                  add          s7, s3, s8
212:              srl          gp, a7, s0
                  andi         t6, a5, 110
                  lui          s11, 529981
                  add          ra, a1, t5
216:              sltu         s6, s6, a2
217:              and          s9, s10, s11
                  bge          a4, sp, 237f
219:              auipc        a6, 476532
                  xor          a1, t5, s11
                  andi         a1, s3, -1119
                  xori         s3, s2, 1789
                  auipc        t2, 599497
                  srl          a7, a2, t5
                  nop
                  sll          t6, tp, t0
                  bge          tp, s7, 247f
                  bgeu         s5, s9, 243f
229:              andi         tp, t1, -1494
                  slt          s7, s5, a6
                  xori         t0, a1, -464
                  and          t2, a4, a2
                  slti         sp, a6, 560
                  auipc        a3, 775727
                  sub          a2, a7, t0
                  lui          t1, 9445
237:              xor          s9, s7, t5
                  bge          t1, s11, 257f
                  or           s8, ra, s5
                  sltiu        s10, s8, -1004
                  add          t0, s10, t0
                  slti         t3, zero, 494
243:              slti         s1, s1, -1425
                  or           a4, s3, a7
                  sltu         t4, sp, s6
                  sub          gp, zero, a2
247:              slli         a5, a4, 18
                  addi         t4, s5, 567
                  srli         s9, a0, 12
                  xori         s5, t3, -642
                  sltiu        gp, gp, -1330
                  sltiu        a4, s4, -588
                  xori         t3, tp, 1515
                  beq          s4, a1, 255f
255:              lui          a1, 165069
                  sra          t4, t3, a7
257:              sub          s11, t4, a3
                  srl          t0, a6, zero
                  lui          zero, 15805
                  lui          s9, 248360
                  sub          s8, s1, s3
                  bge          s10, a3, 274f
                  addi         s5, s9, -1316
                  blt          ra, t6, 274f
                  bge          s3, a0, 279f
                  and          s8, a7, tp
                  srl          sp, t2, a0
                  ori          s11, a3, -850
                  and          gp, gp, a6
                  srai         s5, s9, 19
                  or           t5, s6, s2
                  lui          t4, 675418
                  sub          a0, tp, a7
274:              sltu         t4, t3, a1
                  bne          a3, ra, 283f
                  xor          t0, s10, s11
                  bne          a1, s8, 290f
                  bltu         gp, s8, 297f
279:              sltiu        sp, s1, 271
                  xori         s8, s9, -1759
                  sub          s7, a6, s11
                  slti         t1, t4, 756
283:              sub          a1, a3, t5
                  blt          t1, a7, 297f
                  slti         s10, t6, 2041
                  slli         a4, t2, 4
                  sll          a6, s5, a6
                  addi         s11, s3, -917
                  bgeu         s0, a1, 290f
290:              slti         a2, t5, -456
                  and          t4, s10, s0
                  add          a0, a4, t6
                  srai         s9, s8, 10
                  addi         a4, s1, 867
                  add          s1, zero, tp
                  addi         s6, t6, 714
297:              slti         sp, t6, -709
                  slt          s3, s10, s11
                  sltu         s6, a6, s7
                  slt          a6, s4, t5
                  slti         gp, sp, 900
                  sltu         t4, s7, s0
                  and          s10, tp, s3
                  srai         s8, t1, 14
                  sll          s10, s10, s1
                  srl          t0, s7, a1
                  andi         s11, s10, -871
                  slti         a3, a0, 377
                  sltu         a7, zero, t1
                  bltu         ra, s5, 329f
                  xor          s5, s1, a1
                  slt          s10, t6, a3
                  slt          a5, s10, a5
                  andi         t5, t0, -877
                  xor          zero, a0, a5
                  xori         t6, a4, -1798
                  srl          t0, gp, t4
                  bne          a4, a7, 326f
                  srl          s10, s4, tp
                  lui          t2, 424463
                  srai         a6, a6, 7
                  sltu         s6, s3, tp
                  auipc        zero, 457375
                  sll          t3, s0, gp
                  and          t2, s9, tp
326:              blt          a6, s5, 345f
                  sra          t3, a5, a6
                  ori          s7, a1, -936
329:              bltu         s7, s0, 343f
                  ori          t6, s8, 657
                  or           t4, s9, t4
                  or           ra, s4, gp
                  addi         t5, a2, -729
                  nop
                  auipc        s8, 993482
                  blt          s5, s2, 347f
                  xori         s10, a1, -1231
                  bltu         sp, s3, 358f
                  ori          t5, t1, -377
                  andi         a5, a3, 456
                  lui          s5, 205917
                  or           a7, a7, t6
343:              beq          s2, s9, 359f
                  blt          t3, a4, 352f
345:              bne          a6, s8, 360f
                  bne          s6, tp, 365f
347:              bge          ra, s1, 349f
                  srai         a1, sp, 12
349:              bgeu         s4, t3, 351f
                  nop
351:              beq          zero, a5, 359f
352:              bge          a5, t1, 368f
                  blt          s3, s5, 364f
                  bne          a4, a4, 366f
                  addi         t5, t0, -2037
                  xor          s6, s3, zero
                  bge          s2, a7, 376f
358:              addi         s3, s4, -902
359:              slti         s5, s4, -1956
360:              srai         a5, t1, 25
                  andi         t6, a1, -1950
                  auipc        ra, 361640
                  or           a1, zero, t3
364:              andi         s7, s9, -1508
365:              and          a5, a3, t6
366:              blt          s10, ra, 368f
                  la           t4, sub_1
                  srli         a6, t2, 15
                  srai         gp, a1, 10
                  addi         t4, t4, 778
                  auipc        gp, 769612
                  srli         tp, ra, 4
                  slli         s11, t4, 4
main_j2:          jalr         s8, t4, -777 #jump main -> sub_1
                  or           t1, a2, s5
368:              xor          ra, a4, a5
                  bltu         t2, t6, 371f
                  xori         s10, a5, -1054
371:              srli         a0, a0, 8
                  srl          a2, a2, t4
                  bltu         a2, s5, 383f
                  lui          t4, 751391
                  bgeu         a1, s9, 394f
376:              sltu         a6, a3, a3
                  srl          s3, s10, s3
                  bltu         t2, s8, 387f
                  bge          a4, t2, 392f
                  srli         s3, a7, 28
                  srai         t1, ra, 31
                  or           t3, s9, a4
383:              sll          s5, gp, a0
                  or           t2, t5, a0
                  slti         tp, s1, 1915
                  srli         a4, t6, 24
387:              srl          a4, s0, a3
                  slli         a1, s5, 18
                  sra          a5, a3, a1
                  slli         t6, s6, 20
                  srl          ra, s9, t2
392:              srai         s8, a4, 7
                  beq          s1, a3, 394f
394:              sltu         a2, t1, s7
                  srl          t1, t0, zero
                  add          a0, a5, a7
                  andi         a7, s9, 785
                  auipc        a3, 518086
                  xor          s7, sp, t1
                  bne          s3, a7, 411f
                  xori         s9, s5, -546
                  slli         s6, a3, 11
                  blt          s0, s5, 413f
                  auipc        t1, 904281
                  sra          a4, a6, t3
                  bltu         a4, s7, 413f
                  slli         gp, s11, 11
                  or           t3, s10, s5
                  andi         s1, t5, -1182
                  nop
411:              lui          t6, 224485
                  and          s8, s2, s9
413:              and          a5, s9, a4
                  srai         t4, a3, 11
                  blt          a4, a1, 427f
                  ori          s11, s9, -494
                  add          t5, s3, t2
                  slt          a0, t5, s9
                  sll          s8, t2, sp
                  sltiu        gp, gp, -1285
                  srli         s11, s1, 14
                  xor          t5, a0, s7
                  sra          s7, a1, s2
                  sltu         a3, a0, a2
                  sub          s6, t6, gp
                  and          s9, tp, a3
427:              ori          tp, a4, -1340
                  xori         gp, s10, -1384
                  srli         a3, s4, 13
                  lui          a6, 531592
                  sll          sp, tp, a7
                  slli         gp, a3, 5
                  sltiu        s8, t1, -973
                  xori         s11, t1, -1485
                  or           t1, a5, t0
                  and          gp, s8, a6
                  srli         a7, a1, 26
                  blt          a1, t6, 457f
                  beq          s7, s6, 458f
                  srai         a0, a1, 7
                  bne          a1, s11, 453f
                  bltu         t6, s10, 455f
                  lui          t0, 148526
                  addi         t4, s0, 1387
                  auipc        ra, 381977
                  sltiu        a4, t2, 769
                  or           s6, s5, s0
                  auipc        s9, 795193
                  and          t3, s10, s7
                  slti         s1, zero, 1642
                  xor          t4, a1, a5
                  nop
453:              srai         sp, t3, 27
                  sltu         a3, s7, a2
455:              srl          sp, tp, s3
                  srai         s3, s10, 19
457:              srli         gp, ra, 27
458:              slti         a3, a6, -1784
                  bge          ra, a4, 460f
460:              addi         t5, t0, 989
                  slt          a3, s6, a7
                  bgeu         zero, ra, 473f
                  sll          t1, zero, s9
                  slt          a5, a0, t4
                  add          t3, s4, sp
                  sltiu        a5, t5, -875
                  bne          s1, gp, 468f
468:              sll          a6, s1, a5
                  add          s3, s11, a4
                  bge          s10, t5, 481f
                  slli         gp, a3, 5
                  auipc        a0, 800451
473:              sltu         s8, a6, s8
                  bge          a0, zero, 484f
                  andi         s9, s10, 1359
                  srai         t5, t4, 29
                  xor          ra, s8, s9
                  slti         a2, s7, 1930
                  xori         a5, a7, 773
                  xori         s11, tp, -1110
481:              add          gp, s3, zero
                  addi         t1, a4, 1356
                  xori         t6, s4, 384
484:              addi         s7, a1, -1776
                  sra          s5, s0, s10
                  bltu         a3, s2, 494f
                  bne          s5, s10, 496f
                  and          a3, a3, s7
                  sltiu        t4, a0, 1992
                  srai         s7, a0, 6
                  slt          s6, s7, a0
                  or           s6, a5, s9
                  bgeu         a6, tp, 504f
494:              auipc        gp, 49252
                  sltiu        s9, s6, 1117
496:              lui          a3, 328444
                  bne          a3, s6, 499f
                  addi         t0, a3, 1144
499:              sltu         a1, t4, s7
                  srai         t3, s1, 4
                  slt          t6, sp, s0
                  bgeu         ra, zero, 521f
                  sll          t1, s7, t3
504:              and          t4, zero, a0
                  xori         a1, a7, 799
                  xori         t2, t2, 254
                  sll          tp, tp, a2
                  and          sp, s2, a5
                  sub          s6, s0, sp
                  slt          t0, t2, t5
                  xor          t0, a3, t6
                  blt          s5, s4, 514f
                  slti         a0, t0, 727
514:              sub          ra, s2, a5
                  slli         a6, tp, 5
                  srai         zero, s2, 5
                  and          a6, s3, a4
                  xori         a7, zero, -1862
                  sub          t0, sp, sp
                  la           s9, sub_1
                  sra          t0, t4, a4
                  lui          s5, 912126
                  add          a7, t3, s9
                  addi         s9, s9, 307
                  bne          a7, a3, main_j1 #branch to jump instr
                  ori          s3, s10, 2033
main_j1:          jalr         s8, s9, -307 #jump main -> sub_1
                  bne          t0, a4, 533f
                  sltiu        zero, t3, -445
                  srli         a5, s11, 30
                  slt          ra, t0, s7
521:              and          s7, s1, s2
                  sltu         a3, a5, a2
                  bge          a1, a0, 525f
                  bgeu         a2, s2, 539f
525:              blt          t0, t0, 539f
                  ori          s11, a4, 1815
                  slti         t4, a4, 589
                  auipc        t2, 974917
                  sltu         a1, s8, a4
                  sll          t2, a7, t1
                  lui          a3, 685936
                  add          a6, a1, s7
533:              xor          s3, t5, s11
                  slt          s5, a0, s4
                  lui          a1, 60672
                  sltiu        t2, s6, -1430
                  sltiu        s11, t2, -1866
                  slt          t1, a0, a6
539:              bgeu         s10, a6, 547f
                  xori         s3, t2, -169
                  sltu         s9, t0, zero
                  sltiu        a6, a5, 1701
                  lui          a4, 926311
                  blt          s10, s10, 556f
                  xori         t0, a2, 1622
                  blt          ra, t3, 548f
547:              xori         t6, t2, -1456
548:              andi         s5, t4, 1899
                  beq          tp, ra, 565f
                  ori          t5, t2, -1434
                  sra          s6, s7, tp
                  slli         t5, s5, 14
                  sltu         s7, t5, t3
                  or           t5, s3, s10
                  srl          s1, s10, s5
556:              andi         ra, s5, 501
                  bge          s9, s10, 565f
                  auipc        s1, 452252
                  sll          t1, a4, a7
                  lui          zero, 699249
                  nop
                  la           t2, region_1+251 #start riscv_load_store_rand_instr_stream_11
                  nop
                  srl          t3, a2, gp
                  lbu          s11, -222(t2)
                  sb           t0, 200(t2)
                  lw           s11, -139(t2)
                  lbu          s10, -220(t2)
                  lw           t6, 189(t2)
                  slli         t1, t4, 29
                  lhu          a1, 225(t2)
                  xor          a3, t4, a4
                  sb           s4, 144(t2)
                  sll          zero, t5, a0
                  ori          a0, t6, -1334
                  sb           t6, 76(t2)
                  lb           zero, 191(t2)
                  andi         t5, s11, -1786
                  sub          s3, tp, s0
                  lb           a6, 122(t2)
                  or           t5, s0, a0
                  lbu          s9, -28(t2)
                  lbu          tp, -129(t2)
                  and          a5, s7, a6
                  lbu          s7, -124(t2)
                  lbu          a7, -34(t2)
                  lbu          a3, -68(t2) #end riscv_load_store_rand_instr_stream_11
                  xor          s6, t3, s0
                  or           t2, t5, t6
                  ori          s1, s7, 1668
565:              nop
                  lui          t0, 219190
                  sub          t6, zero, s10
                  auipc        tp, 393882
                  sltiu        t2, t0, 347
                  add          s1, a1, s5
                  add          s7, gp, s10
                  nop
                  xor          a1, t2, t6
                  srli         s11, gp, 23
                  sll          a7, gp, a6
                  srl          s9, a5, gp
                  beq          s3, t2, 584f
                  sltiu        a7, a4, 1126
                  auipc        tp, 368078
                  sub          s5, a6, a6
                  beq          s11, a1, 594f
                  addi         a2, a2, 424
                  srl          s10, s0, a2
584:              add          t0, a1, tp
                  sra          s6, a1, t4
                  auipc        ra, 434393
                  lui          sp, 1000974
                  slt          s1, tp, s5
                  sltu         t3, s7, s11
                  auipc        a5, 775005
                  slli         t1, t1, 23
                  slli         a1, t3, 15
                  add          t1, a5, s9
594:              bltu         t3, sp, 613f
                  bltu         s7, a0, 605f
                  xor          t5, s0, a1
                  slti         t1, a1, -30
                  beq          a7, s4, 618f
                  srl          s3, a2, t6
                  ori          t6, s3, 626
                  slli         sp, zero, 12
                  srai         a2, t6, 6
                  srli         s11, s2, 0
                  lui          t5, 280126
605:              lui          t6, 847945
                  sltiu        gp, s9, -1374
                  bge          t4, t4, 626f
                  beq          s1, ra, 616f
                  ori          a7, s8, 1760
                  sltiu        t5, a2, -1444
                  srai         t3, s7, 20
                  srl          s9, s6, a0
613:              xor          tp, t5, ra
                  sub          t2, a1, t1
                  ori          zero, sp, 1677
616:              auipc        a5, 351448
                  bgeu         sp, a6, 628f
618:              nop
                  sub          a0, s5, a4
                  sltiu        sp, t4, -463
                  sub          gp, a0, t5
                  xor          s3, s1, s3
                  addi         a1, a3, -465
                  beq          t6, s0, 634f
                  andi         t5, a1, 1549
626:              sub          s3, s8, ra
                  beq          s1, a6, 629f
628:              nop
629:              sll          a0, t6, a0
                  blt          s6, sp, 638f
                  srl          s3, t2, s8
                  slt          s6, t1, gp
                  blt          s4, a4, 634f
634:              sub          zero, s7, s0
                  or           s11, a6, s8
                  lui          s6, 994638
                  sub          sp, s9, zero
638:              add          a4, s9, t1
                  beq          a7, s6, 647f
                  ori          a5, s5, 121
                  and          gp, zero, a2
                  beq          sp, t0, 658f
                  sub          t1, s10, a6
                  xor          s7, ra, a1
                  bge          s1, zero, 647f
                  slt          s6, t5, t1
647:              or           t2, a6, sp
                  lui          s10, 701082
                  xori         t6, zero, -1134
                  sra          a0, ra, a0
                  bne          zero, t0, 670f
                  blt          tp, s7, 663f
                  sll          s9, t6, a3
                  auipc        s5, 566177
                  srl          ra, s3, t2
                  beq          a0, s5, 669f
                  bge          sp, t3, 659f
658:              sltiu        s9, a3, -986
659:              beq          a1, s9, 671f
                  sub          ra, gp, a5
                  sltu         t0, s1, t1
                  slt          s3, a2, a1
663:              addi         s11, s7, 1571
                  bne          s5, t5, 674f
                  auipc        a4, 449216
                  blt          a0, t2, 682f
                  sltu         t1, t2, s10
                  xori         s5, gp, 703
669:              srai         s9, a7, 6
670:              and          tp, s4, a6
671:              add          s11, t1, s10
                  blt          s11, s1, 687f
                  sra          ra, sp, s3
674:              slli         s6, a4, 10
                  bne          s10, a0, 686f
                  nop
                  lui          a5, 312446
                  lui          s8, 49594
                  bne          t0, tp, 699f
                  sltu         s11, t1, s2
                  blt          t4, t6, 688f
682:              blt          a1, gp, 695f
                  or           t6, a3, t0
                  nop
                  slli         t2, s0, 27
686:              xor          s5, a5, t1
687:              add          t0, t2, gp
688:              blt          s10, a7, 707f
                  sltu         a4, s5, sp
                  lui          a4, 335660
                  slli         ra, a7, 14
                  slt          sp, s8, s11
                  nop
                  sltu         s9, a7, a5
695:              sltiu        s6, a0, 150
                  and          a0, zero, t1
                  nop
                  srai         t2, s2, 6
699:              srli         zero, s9, 14
                  slli         a1, a7, 13
                  xori         a2, s6, 1544
                  sra          t5, t3, s1
                  xor          t2, s6, a0
                  srl          ra, s0, a6
                  and          t5, s6, a4
                  slti         t2, sp, -322
707:              bge          s2, s4, 719f
                  srl          a5, t0, s5
                  andi         s1, s2, 324
                  bltu         t5, t1, 729f
                  addi         a3, t1, 153
                  auipc        gp, 1008616
                  addi         s1, t6, -16
                  sll          zero, s6, s3
                  ori          sp, s2, -1369
                  or           t5, s7, s4
                  xori         t0, s10, 1628
                  and          t3, t5, zero
719:              add          s10, s2, s7
                  ori          s1, s5, -1501
                  sub          t1, tp, s9
                  blt          t2, a5, 731f
                  sltiu        t6, s2, 1457
                  sll          sp, s0, s1
                  sltu         s9, s10, t5
                  sub          a5, a1, a2
                  sra          a2, a2, zero
                  bgeu         t1, s7, 747f
729:              slli         t0, tp, 1
                  add          t5, gp, a6
731:              sub          t6, s8, a1
                  slt          a3, s8, sp
                  slt          a3, t6, a1
                  or           ra, s0, gp
                  bltu         t3, a3, 754f
                  la           tp, region_0+301 #start riscv_load_store_rand_instr_stream_6
                  sb           t3, 1556(tp)
                  addi         t3, t3, -616
                  addi         s8, t2, -759
                  or           a5, s0, a7
                  sra          a7, a4, s5
                  sb           s5, -226(tp)
                  sb           s4, 1604(tp)
                  srli         s9, t4, 11
                  ori          s11, a5, 607
                  xor          t0, s7, a7
                  lh           t0, 1097(tp)
                  xor          s9, s11, s3
                  xor          a4, a3, s5
                  srl          a5, s5, t6
                  lbu          t1, 713(tp)
                  lb           s6, 960(tp)
                  or           gp, zero, t0
                  xori         t2, s6, 1983
                  lb           a3, 923(tp)
                  lb           s1, 1186(tp)
                  ori          s7, s7, -1882
                  sh           t5, 1411(tp)
                  sub          a3, sp, a3
                  lhu          a3, -99(tp)
                  addi         t5, s1, 784
                  slt          gp, tp, zero
                  xori         ra, s9, 596
                  lbu          a2, 112(tp)
                  lh           t3, 17(tp)
                  lb           a1, 648(tp)
                  add          a2, t0, s7
                  srli         gp, a0, 17
                  lb           s11, 1146(tp)
                  slli         a6, a7, 6
                  sltiu        t0, s8, 141
                  sb           a7, 657(tp)
                  lui          a2, 730064
                  lhu          a2, 1373(tp)
                  lb           s8, 35(tp)
                  lbu          a2, 1163(tp) #end riscv_load_store_rand_instr_stream_6
                  slli         t0, t6, 9
                  addi         ra, t6, 952
                  slli         a7, sp, 5
                  ori          t3, zero, -1677
                  lui          s8, 105673
                  bge          a7, s7, 743f
                  slli         s1, t5, 18
743:              slli         s5, a7, 21
                  slli         a2, a6, 13
                  sub          t2, a4, a5
                  sra          a5, s3, s10
747:              ori          t2, t4, 563
                  bltu         t5, t3, 762f
                  blt          a0, a3, 750f
750:              nop
                  nop
                  slli         s10, t4, 23
                  and          a7, zero, s11
754:              lui          s9, 207721
                  andi         sp, tp, 746
                  slli         a2, t2, 3
                  bgeu         a6, a6, 758f
758:              sltu         t4, ra, t4
                  sltiu        t0, a7, 690
                  add          s1, ra, s7
                  add          s7, t3, s3
762:              slti         a4, s3, 2040
                  slti         s9, a2, -2040
                  bgeu         a0, s5, 776f
                  bgeu         s5, s9, 772f
                  nop
                  add          s6, s0, s6
                  add          s11, t5, t5
                  or           t2, s11, s1
                  or           t0, t0, a0
                  srl          t6, sp, t2
772:              slt          a0, s3, a3
                  bgeu         s7, t4, 781f
                  bgeu         tp, a4, 785f
                  lui          t6, 512212
776:              lui          s1, 521464
                  xor          gp, zero, sp
                  xori         ra, sp, 194
                  slt          t4, s10, s8
                  ori          t2, a6, 1574
781:              or           a3, t0, ra
                  bltu         a6, s3, 783f
783:              bne          gp, t0, 791f
                  bne          s0, s9, 803f
785:              srai         s6, s4, 11
                  bge          s1, s11, 797f
                  sltu         s6, a3, s10
                  srl          s6, s9, a4
                  slt          a7, s9, sp
                  bge          s5, a2, 805f
791:              add          a6, s10, sp
                  lui          s10, 496398
                  bgeu         t4, t4, 813f
                  slti         a4, a1, -1437
                  srl          s11, a3, a5
                  and          tp, t0, s7
797:              add          s6, t1, t1
                  xori         a2, s0, 638
                  andi         s10, s9, 1295
                  xori         zero, t3, 1285
                  bge          s5, s4, 810f
                  nop
803:              or           s7, a6, s3
                  slt          t5, a6, t1
805:              add          s11, t4, s5
                  ori          t1, a3, -625
                  slli         a0, t0, 25
                  srl          t3, a7, s5
                  nop
810:              or           a5, s5, t0
                  bge          s1, sp, 830f
                  nop
813:              xor          s8, s7, s9
                  sltiu        t5, s11, -918
                  add          s3, a7, s5
                  or           s5, gp, s7
                  bltu         s4, ra, 819f
                  bne          zero, t4, 832f
819:              slti         tp, sp, -1401
                  or           s10, s0, a0
                  auipc        s10, 777955
                  bge          a1, zero, 834f
                  sll          ra, a5, s3
                  bltu         ra, a4, 840f
                  xori         t6, t0, 1901
                  slti         t1, s1, -1197
                  xor          t5, t1, t1
                  bltu         t0, s6, 847f
                  sra          s11, a3, s1
830:              srli         a7, a2, 29
                  and          zero, t5, a4
832:              bge          s4, t2, 848f
                  sra          gp, s2, t4
834:              srai         a7, tp, 16
                  or           a4, s0, s5
                  slli         a6, s9, 4
                  andi         t2, gp, -1239
                  addi         gp, sp, -1528
                  bltu         a5, a4, 841f
840:              bne          s1, sp, 859f
841:              sltu         s11, s2, t5
                  or           a2, s7, t1
                  xori         s5, s6, -1751
                  bne          s9, t4, 857f
                  sll          a4, tp, t0
                  slti         a5, s9, -23
847:              slli         t2, zero, 17
848:              srl          t0, a7, t0
                  and          t3, t0, ra
                  srai         s8, ra, 0
                  sub          t1, a1, zero
                  bltu         ra, a5, 862f
                  srl          s1, s9, a0
                  ori          a3, s11, -737
                  auipc        s1, 977897
                  bge          s11, a7, 875f
857:              slti         a7, t5, 577
                  addi         a4, t0, 31
859:              add          ra, zero, ra
                  slti         s5, gp, -1058
                  slli         zero, s11, 28
862:              blt          s5, a6, 864f
                  sll          gp, t4, t5
864:              slt          s8, a5, sp
                  bge          a0, s0, 875f
                  srli         t5, a1, 2
                  slt          t0, s2, s6
                  add          t0, s2, a2
                  nop
                  bge          a5, s10, 883f
                  bne          a6, t5, 882f
                  sll          ra, zero, s8
                  slt          ra, sp, s3
                  ori          t3, s10, 486
875:              and          t6, tp, t2
                  ori          t4, t3, 1448
                  slti         s1, gp, 1223
                  sra          s5, a0, a6
                  srli         gp, s9, 1
                  bgeu         s0, s1, 882f
                  srl          s6, s11, tp
882:              sub          tp, a0, s1
883:              slli         s8, a4, 14
                  andi         sp, a5, -1405
                  and          s7, a6, t6
                  beq          s8, s6, 894f
                  or           a5, t3, gp
                  or           s3, s10, t0
                  srl          s6, a6, zero
                  slli         s9, s10, 3
                  sltu         t6, gp, s5
                  srai         s5, a4, 28
                  lui          sp, 480717
894:              sub          s5, a5, a3
                  bltu         a1, tp, 911f
                  slli         s6, t5, 15
                  bne          tp, s0, 899f
                  add          gp, t2, s7
899:              slti         zero, s6, -456
                  srai         ra, a6, 23
                  sra          t6, gp, s0
                  lui          s9, 778608
                  nop
                  sll          s7, a1, gp
                  beq          gp, a2, 913f
                  auipc        tp, 347219
                  andi         s3, s10, 29
                  srl          a5, ra, a3
                  sltiu        t6, a1, -514
                  beq          s5, s10, 912f
911:              srl          s1, s7, ra
912:              srli         t4, s9, 24
913:              sltiu        gp, s1, 2025
                  srai         s5, t2, 2
                  addi         a1, t1, -1651
                  sltu         tp, s9, a2
                  lui          s6, 943753
                  ori          s9, s3, -667
                  nop
                  add          s10, sp, a1
                  beq          ra, s7, 929f
                  sll          t0, t5, t2
                  nop
                  slli         a5, a4, 26
                  nop
                  lui          s5, 726236
                  lui          gp, 360531
                  sltiu        a6, gp, 196
929:              srai         t4, tp, 20
                  bne          s11, t2, 931f
931:              bge          zero, s8, 942f
                  ori          s3, s11, 1809
                  bne          s7, s7, 952f
                  sra          tp, a6, t5
                  andi         s11, s1, 414
                  srl          s3, gp, t2
                  sub          ra, s9, a2
                  beq          a7, a6, 949f
                  bltu         gp, t4, 949f
                  or           s11, sp, a5
                  lui          t3, 243493
942:              blt          sp, a6, 955f
                  addi         t2, a6, -329
                  slti         s9, a3, -530
                  nop
                  lui          s1, 580258
                  blt          t1, t2, 966f
                  bgeu         t1, s0, 963f
949:              ori          s7, t4, 256
                  sra          s9, s8, s11
                  bgeu         s2, s1, 964f
952:              slt          s1, s10, sp
                  or           tp, t0, t4
                  sll          s9, a6, s8
955:              lui          s8, 786649
                  srl          a6, a7, t0
                  slli         s10, t4, 30
                  sub          t1, a0, t1
                  sltiu        s1, s7, -1695
                  blt          t3, a5, 972f
                  add          t3, a7, t4
                  sltu         s10, s10, s5
963:              auipc        a2, 92956
964:              auipc        tp, 609664
                  ori          s3, s9, -366
966:              add          a4, s9, ra
                  andi         t4, s8, -779
                  beq          s9, a6, 970f
                  lui          s9, 620957
970:              srli         tp, s2, 29
                  srai         a7, gp, 19
972:              ori          t0, t5, -334
                  bltu         a0, a1, 985f
                  sltu         a2, a5, sp
                  lui          s11, 266510
                  slli         a5, a1, 14
                  and          ra, s0, a0
                  add          t1, s2, tp
                  auipc        sp, 1048300
                  or           a7, gp, a4
                  sll          s10, t5, t6
                  srai         a5, a2, 26
                  nop
                  blt          s0, t6, 1003f
985:              bgeu         s10, t5, 1001f
                  sra          a0, s7, s4
                  srl          s10, s8, t2
                  srai         s11, s3, 30
                  bge          t3, zero, 990f
990:              and          t3, t4, a2
                  andi         ra, s0, -965
                  xor          a2, t1, s7
                  ori          t3, t2, 230
                  xori         a2, t0, 1993
                  slli         t0, t3, 29
                  srli         t3, s7, 5
                  sra          t5, s8, s3
                  blt          a3, s5, 1018f
                  blt          s6, t6, 1010f
                  srai         t3, a3, 23
1001:             srl          a5, s3, sp
                  srli         a5, s4, 21
1003:             srli         t0, s9, 4
                  sra          s3, s6, a6
                  sll          s8, s5, s1
                  bltu         s7, zero, 1008f
                  auipc        a0, 186045
1008:             srai         t3, sp, 30
                  bne          t5, t6, 1028f
1010:             ori          t4, a0, 1077
                  sltiu        sp, s8, 979
                  bne          a0, t2, 1021f
                  sltiu        s5, s1, 381
                  or           s7, a7, s9
                  srl          a1, t4, gp
                  sltiu        s8, s8, -953
                  auipc        t0, 321066
1018:             sub          s8, a7, t6
                  auipc        zero, 801631
                  srli         ra, s8, 10
1021:             srli         sp, a3, 27
                  blt          s1, s1, 1032f
                  bltu         s9, s2, 1037f
                  srai         a1, s11, 6
                  bge          ra, zero, 1032f
                  nop
                  auipc        s6, 1006580
1028:             sltiu        t4, s8, -969
                  addi         a5, a3, 993
                  xori         t4, a4, -557
                  slli         sp, a1, 1
1032:             srai         t6, t4, 24
                  blt          s0, s7, 1041f
                  sub          s9, t5, s7
                  srl          a7, t6, s7
                  srl          s5, s11, t6
1037:             auipc        a1, 114279
                  srai         t4, t5, 14
                  slti         a4, a3, 1485
                  bltu         ra, s10, 1059f
1041:             nop
                  bltu         s1, s9, 1051f
                  bge          s9, t1, 1055f
                  srli         s5, tp, 7
                  bgeu         t1, s1, 1058f
                  sltiu        sp, s7, 757
                  addi         sp, t2, 280
                  andi         a2, s7, 296
                  bge          s7, s0, 1068f
                  addi         s6, s3, -1107
1051:             slti         zero, t2, 1953
                  andi         sp, t2, -386
                  slli         s6, s7, 28
                  add          t2, a0, s4
1055:             slti         t4, t0, 413
                  addi         sp, s6, -634
                  xor          s7, t5, a2
1058:             or           ra, gp, a3
1059:             bne          s5, sp, 1061f
                  lui          a4, 572267
1061:             and          s1, s1, s2
                  srl          s8, a7, s5
                  sub          zero, t6, s4
                  xor          tp, s8, s1
                  ori          s3, a7, -160
                  bltu         t4, s0, 1082f
                  lui          t0, 1005612
1068:             bne          t3, s5, 1082f
                  add          s9, t4, zero
                  bltu         s4, s9, 1089f
                  sll          a0, tp, a4
                  blt          ra, a0, 1080f
                  xor          t1, s11, ra
                  slt          s1, s6, s0
                  sll          t6, a0, a7
                  bgeu         t5, s10, 1084f
                  ori          gp, zero, -2032
                  sltu         t2, s0, s5
                  addi         s11, s10, -1407
1080:             srli         sp, s5, 8
                  sub          s3, ra, a3
1082:             slli         s5, a3, 9
                  ori          gp, s2, -518
1084:             sll          s9, s9, s4
                  slti         s9, t5, -379
                  xor          gp, a4, s8
                  sub          t2, t5, s11
                  srli         sp, t0, 26
1089:             sub          t3, a6, a2
                  xori         a7, s2, 740
                  or           a0, s7, s11
                  andi         gp, s6, -1045
                  add          t6, gp, s6
                  auipc        a4, 1039788
                  bge          t4, t1, 1105f
                  auipc        sp, 318358
                  slti         s7, a7, 796
                  srli         t1, sp, 26
                  andi         a1, t6, 1682
                  ori          ra, a0, 835
                  srli         s6, zero, 31
                  sra          a6, s6, ra
                  nop
                  auipc        t0, 622512
1105:             add          t4, s0, t3
                  slli         gp, s0, 16
                  slti         s7, s6, -762
                  or           t1, t2, a6
                  sltiu        s5, ra, 1205
                  auipc        s1, 343940
                  or           s8, s1, s8
                  sltu         a7, s2, t0
                  srl          s7, t6, s7
                  srai         s8, a7, 2
                  xor          zero, s5, a4
                  sra          t4, tp, a6
                  srli         s5, s9, 5
                  or           t4, t3, t6
                  sll          s9, s9, s5
                  sltu         t1, sp, t3
                  sltiu        a5, ra, 1764
                  sra          t4, t4, s0
                  nop
                  slt          a5, s0, gp
                  slti         s11, s7, -220
                  beq          s3, a4, 1128f
                  nop
1128:             and          a1, s0, s4
                  sltu         s3, t4, s4
                  slli         s7, s6, 22
                  srli         s6, a7, 18
                  bgeu         gp, s2, 1134f
                  xori         s9, a6, -1753
1134:             sub          a0, s2, t5
                  bne          t5, s2, 1155f
                  beq          zero, a1, 1146f
                  andi         t4, s11, -883
                  slti         gp, t4, -833
                  srai         s11, s1, 6
                  bge          s8, s10, 1159f
                  nop
                  srli         a0, ra, 18
                  srli         s8, s8, 26
                  ori          a1, a1, 1461
                  blt          s2, zero, 1164f
1146:             sltu         tp, a2, a0
                  sub          t4, a3, a2
                  sltiu        s5, t2, -1559
                  bne          t1, s10, 1165f
                  bgeu         t2, a6, 1161f
                  sub          s9, sp, ra
                  sll          s3, s10, ra
                  nop
                  bltu         a2, a3, 1169f
1155:             nop
                  andi         t1, s9, 1138
                  bge          s2, s5, 1164f
                  slt          ra, s3, ra
1159:             auipc        a3, 1045555
                  sub          s7, sp, s1
1161:             bne          sp, s4, 1173f
                  andi         t4, t1, 1113
                  sltiu        s1, t6, 392
1164:             bge          a7, a3, 1175f
1165:             srai         t6, a7, 14
                  sub          gp, t5, a5
                  and          a1, s9, t1
                  xori         s9, t2, -1985
1169:             slli         s11, s3, 29
                  nop
                  bne          a0, a2, 1182f
                  xori         t5, s0, 577
1173:             xor          sp, a5, a7
                  sltiu        s7, gp, -20
1175:             addi         t2, a5, 1114
                  sltu         tp, a7, sp
                  srl          s1, a5, s0
                  srli         s8, s2, 0
                  bge          sp, s9, 1181f
                  slli         a6, s0, 11
1181:             bgeu         s7, t3, 1200f
1182:             bltu         gp, s1, 1183f
1183:             addi         t3, a4, -1644
                  addi         s7, t4, 1064
                  bge          a6, t4, 1186f
1186:             addi         s10, s10, 1967
                  srli         t5, s8, 23
                  bge          t2, s3, 1196f
                  add          t3, s3, t0
                  blt          s3, a4, 1203f
                  sub          s1, t1, gp
                  xor          s7, t5, s6
                  srai         s9, a6, 19
                  srai         a4, a0, 15
                  sra          a5, s0, a7
1196:             add          a1, s2, s0
                  bgeu         s10, a7, 1208f
                  nop
                  srli         a7, s4, 29
1200:             sltu         s8, s8, t3
                  andi         tp, s6, -1858
                  andi         s10, a3, 1727
1203:             srai         ra, a5, 31
                  slt          tp, t2, ra
                  andi         a6, t4, 1554
                  xori         zero, sp, 2025
                  xor          a6, sp, zero
1208:             auipc        a1, 639208
                  or           a4, t3, s4
                  slli         s11, t0, 16
                  bgeu         s0, s0, 1230f
                  sub          t6, s6, a3
                  slti         tp, sp, -12
                  nop
                  slli         s10, a7, 11
                  and          a2, t4, a6
                  and          s11, s10, t1
                  sltiu        t5, s0, 1542
                  sll          ra, s2, a1
                  nop
                  nop
                  slti         t6, s9, 225
                  slli         a7, s2, 25
                  bne          t4, tp, 1237f
                  bltu         s7, s11, 1227f
                  sltiu        t5, t1, -1460
1227:             or           a0, a4, a7
                  addi         a6, s0, -1757
                  bgeu         s4, t6, 1238f
1230:             sub          s10, t3, a7
                  nop
                  slt          a6, a1, t4
                  bgeu         t6, a6, 1244f
                  slt          a4, t5, s3
                  sub          t6, a2, t1
                  xori         t6, s6, 777
1237:             sltu         a7, t3, s4
1238:             bne          s11, s1, 1257f
                  ori          t3, s11, -579
                  xor          s11, s0, s1
                  blt          s4, a6, 1243f
                  sub          s5, a3, t6
1243:             or           tp, ra, a0
1244:             bge          a3, gp, 1259f
                  addi         s9, t2, -919
                  bltu         a3, s6, 1253f
                  add          a5, ra, sp
                  addi         t0, a7, 873
                  sltu         a0, s11, t2
                  bge          zero, s1, 1262f
                  xor          a4, gp, a2
                  beq          s1, s7, 1266f
1253:             auipc        gp, 484058
                  xori         t4, gp, -1059
                  bne          a0, s11, 1274f
                  lui          a1, 424921
1257:             srl          s5, s4, t6
                  slti         a3, zero, -1774
1259:             add          s8, t0, a1
                  add          a1, t1, a4
                  bltu         a5, a4, 1280f
1262:             xori         s7, a3, -1783
                  slli         a2, s0, 4
                  or           t1, s3, a6
                  and          s7, gp, t6
1266:             ori          t5, s10, -386
                  slt          s7, t4, t2
                  slt          s11, s8, t6
                  srli         t5, t2, 13
                  slti         a0, s2, -1377
                  bgeu         s6, s0, 1287f
                  lui          t2, 262562
                  bgeu         a6, zero, 1292f
1274:             nop
                  srai         s3, s8, 17
                  srl          s8, a5, s5
                  sra          a2, t4, a3
                  sub          gp, t4, s5
                  bgeu         s4, a2, 1295f
1280:             srl          t4, s1, s5
                  blt          s10, t4, 1283f
                  bge          s1, a5, 1294f
1283:             nop
                  sltu         t6, s3, s2
                  addi         s7, tp, 218
                  sll          t6, a6, ra
1287:             auipc        s10, 645194
                  andi         t1, sp, -99
                  bge          a4, s0, 1297f
                  sra          t1, s10, s9
                  sltiu        a1, a1, -2034
1292:             xor          s5, t5, s7
                  blt          t5, t0, 1303f
1294:             lui          sp, 746792
1295:             blt          t4, s2, 1306f
                  xor          tp, s1, s9
1297:             beq          s9, a3, 1307f
                  slt          sp, a1, s11
                  sra          s9, s2, t2
                  sub          s6, a5, tp
                  sll          t5, ra, a6
                  slt          a2, t4, a4
1303:             sltiu        sp, t3, -1507
                  sra          t5, s0, t6
                  bgeu         t4, s8, 1318f
1306:             slti         s3, a5, 387
1307:             or           s9, gp, t3
                  nop
                  blt          t6, a6, 1329f
                  andi         s3, a2, 1404
                  srli         s9, s1, 2
                  and          gp, ra, a0
                  sltu         t6, t2, s10
                  slt          s10, s5, a5
                  addi         t0, s0, 16
                  nop
                  srli         s8, sp, 0
1318:             srl          ra, sp, t1
                  sub          s8, a1, ra
                  slti         t0, a5, 721
                  lui          s10, 397568
                  sra          gp, s10, a0
                  lui          t4, 399366
                  srl          a5, t3, t3
                  bge          t0, t3, 1326f
1326:             xor          t2, s4, s8
                  blt          zero, ra, 1335f
                  bgeu         s5, t3, 1329f
1329:             and          s9, a0, s2
                  addi         a0, a1, -711
                  slt          a4, a6, gp
                  slti         a1, a1, 893
                  bltu         a7, a5, 1341f
                  srai         s6, a5, 21
1335:             auipc        a5, 794922
                  ori          zero, gp, 1839
                  sra          t3, s2, t0
                  addi         s3, zero, 1870
                  srl          a2, s3, t2
                  srl          t1, t4, s5
1341:             nop
                  blt          a0, s7, 1344f
                  sub          zero, s7, s11
1344:             srai         a2, s9, 3
                  slti         s10, t6, 1387
                  ori          s10, s11, 1356
                  auipc        s11, 144529
                  slt          t3, t2, t0
                  slli         s3, s5, 8
                  or           a6, a4, t5
                  bge          a3, a1, 1370f
                  and          sp, a7, t4
                  or           t0, s1, t1
                  srli         s11, s1, 29
                  sltu         t0, ra, ra
                  sltu         s7, s6, tp
                  auipc        s9, 907862
                  andi         a7, a2, -479
                  lui          s6, 352251
                  sltiu        a1, t3, -1259
                  bltu         zero, s8, 1363f
                  xor          a7, s9, tp
1363:             xor          s1, s5, s6
                  sll          a2, a6, s5
                  slt          tp, t0, s8
                  slti         tp, s6, 55
                  add          a0, s2, t5
                  nop
                  addi         a6, a0, -683
1370:             lui          s6, 9051
                  bge          s9, a2, 1391f
                  auipc        s5, 7497
                  or           t6, s4, a7
                  addi         t6, t1, 902
                  slti         s7, t5, 1127
                  xori         t0, a3, 32
                  slli         s5, t0, 10
                  slli         t1, s11, 23
                  andi         a6, t1, 1389
                  slli         sp, s9, 5
                  bltu         a5, t0, 1382f
1382:             srli         s9, s6, 11
                  srl          s11, gp, sp
                  bge          s6, t4, 1394f
                  bne          t2, a3, 1386f
1386:             bltu         ra, a5, 1402f
                  sltiu        s11, t1, 1147
                  nop
                  auipc        t3, 151170
                  lui          zero, 1001494
1391:             slt          s7, s11, s0
                  and          s9, s10, a1
                  slli         a2, t1, 7
1394:             lui          s8, 1000029
                  addi         a3, t3, 681
                  sltiu        zero, s5, -1982
                  sltu         a4, ra, a0
                  slli         a1, a2, 30
                  srli         s11, s9, 6
                  and          t5, s3, t3
                  srl          t6, t0, s2
1402:             slt          s3, s1, tp
                  addi         t4, sp, -1554
                  ori          t3, a1, 897
                  ori          sp, tp, 1639
                  ori          s3, s3, -72
                  slti         s7, tp, 123
                  and          sp, s5, s7
                  blt          t1, s6, 1423f
                  xor          a7, t5, t5
                  srai         s1, a4, 3
                  addi         s5, s11, -689
                  sll          a5, s8, s4
                  xori         a0, s5, 529
                  sub          a5, a6, s11
                  srl          ra, a6, t0
                  or           a0, a5, t6
                  add          a4, a2, a5
                  srli         a5, t0, 7
                  auipc        a4, 507519
                  srl          t6, s10, a6
                  addi         a0, s5, -908
1423:             and          t0, a4, t6
                  blt          s5, sp, 1437f
                  sltu         sp, s11, a2
                  auipc        a0, 1009666
                  sltiu        sp, a1, 770
                  andi         a0, a1, -1504
                  sltu         s10, t3, s0
                  slli         s3, s9, 7
                  xori         a7, s2, 1154
                  bgeu         sp, s8, 1440f
                  srl          a4, t3, s1
                  sltiu        gp, t3, -240
                  add          s3, t3, tp
                  srai         s8, a1, 20
1437:             bne          t5, gp, 1448f
                  nop
                  xori         t4, s10, 695
1440:             srai         a2, s9, 21
                  sra          a3, s6, a7
                  bne          t4, s7, 1454f
                  addi         ra, s6, 261
                  sltu         a7, t5, a7
                  xor          a5, s7, t5
                  bgeu         t6, t4, 1448f
                  sltu         s10, a1, t2
1448:             srl          sp, s4, s1
                  xor          tp, ra, gp
                  srl          t2, t2, a6
                  xori         gp, t2, -1584
                  and          s7, s8, t3
                  bne          t2, sp, 1472f
1454:             and          s11, s0, a0
                  slti         s11, s3, -342
                  bgeu         s9, s2, 1469f
                  sub          s9, a4, s11
                  bne          s5, a1, 1474f
                  srai         a6, t0, 4
                  slti         a2, s3, 256
                  sub          s5, zero, s8
                  addi         gp, t1, 679
                  slti         a5, a2, -965
                  srli         t3, s7, 4
                  nop
                  slli         a0, t6, 1
                  andi         t6, a0, -785
                  xor          a0, a0, s0
1469:             sltiu        gp, zero, 470
                  and          ra, t2, t3
                  sltu         s11, a6, a2
1472:             xori         a0, s10, -1924
                  beq          s0, t2, 1492f
1474:             slt          s5, s10, gp
                  and          zero, a4, a6
                  bgeu         gp, t6, 1495f
                  addi         t4, a0, 517
                  bge          s6, t4, 1486f
                  or           s11, a5, gp
                  or           t0, a6, a6
                  slt          t5, s3, s3
                  andi         t4, a3, 612
                  sra          ra, s3, t6
                  srl          s6, a4, a0
                  bltu         a3, zero, 1493f
1486:             bge          s7, a6, 1488f
                  sll          a3, t5, zero
1488:             sub          a4, s5, t6
                  lui          a2, 295863
                  srai         a7, a6, 24
                  srli         a4, s0, 2
1492:             andi         t5, a4, -588
1493:             bltu         a3, zero, 1505f
                  beq          s6, a0, 1505f
1495:             andi         a7, s7, 85
                  sra          gp, a3, s4
                  nop
                  add          a3, t0, t2
                  andi         t0, zero, -1921
                  ori          s9, t5, -1876
                  sltu         t3, s8, s3
                  bgeu         gp, s8, 1511f
                  blt          t6, s9, 1514f
                  lui          s3, 185084
1505:             xori         a1, s7, -1543
                  beq          a6, t2, 1508f
                  slli         sp, tp, 5
1508:             sra          a2, s6, tp
                  slti         t0, s4, 200
                  blt          t5, t1, 1520f
1511:             addi         s7, s11, -1495
                  lui          a0, 175916
                  srai         a7, s5, 31
1514:             ori          gp, t0, 464
                  bge          s3, tp, 1534f
                  ori          s11, tp, 1306
                  bgeu         s0, t1, 1524f
                  sltiu        tp, a1, -1481
                  auipc        s8, 1044710
1520:             sra          a5, a4, tp
                  sll          a5, t5, sp
                  bne          t5, t4, 1537f
                  xori         a7, tp, -374
1524:             beq          a6, s7, 1543f
                  sltu         t0, t2, tp
                  sub          ra, s3, s3
                  xor          s10, s6, a0
                  xor          a3, t1, ra
                  ori          a0, a6, 1289
                  xor          a7, s5, t3
                  srl          a7, s9, s6
                  and          ra, s3, s2
                  and          ra, t6, a5
1534:             bge          gp, s2, 1542f
                  xor          tp, s7, s4
                  and          t1, s2, tp
1537:             srai         gp, s0, 13
                  addi         s6, s9, 176
                  lui          t2, 311504
                  blt          a1, s6, 1541f
1541:             or           s1, s6, a7
1542:             addi         s6, a7, -1281
1543:             xori         s8, t3, -1328
                  andi         s5, sp, -611
                  srli         s9, s10, 17
                  addi         s5, t1, 1941
                  slti         a6, t4, 1108
                  addi         tp, s8, -1960
                  sll          a7, s0, t2
                  slli         a2, s7, 25
                  sltu         s6, t5, t5
                  xor          t6, a0, t3
                  srl          s11, s10, a5
                  add          t3, s7, s10
                  bne          a0, a0, 1557f
                  and          t5, sp, s3
1557:             sub          t5, s8, a1
                  bge          t2, s4, 1574f
                  lui          zero, 594847
                  sra          t3, a1, ra
                  addi         ra, s10, -437
                  slt          t3, s7, s3
                  bne          a5, t2, 1583f
                  slli         a5, s8, 23
                  srli         zero, s4, 7
                  srli         s9, s0, 0
                  bne          s7, a6, 1586f
                  sub          s6, s1, s10
                  sll          t3, a4, s7
                  bge          s8, t3, 1571f
1571:             andi         t0, t3, -1641
                  srl          a3, s4, s11
                  ori          s3, s10, 1970
1574:             sltiu        s3, tp, 944
                  nop
                  beq          t2, a2, 1587f
                  blt          s2, t5, 1585f
                  sra          s10, s6, s1
                  bge          s4, a3, 1598f
                  sub          t0, t0, gp
                  bge          s0, s6, 1583f
                  xor          a2, s10, s9
1583:             bgeu         s8, a6, 1596f
                  bltu         s6, t3, 1591f
1585:             beq          a3, zero, 1595f
1586:             bgeu         a6, s6, 1597f
1587:             beq          t5, ra, 1589f
                  andi         a0, t3, -393
1589:             addi         a1, s4, 1
                  srai         t5, s4, 3
1591:             sub          a2, a6, a3
                  beq          s0, s0, 1607f
                  bltu         t2, t3, 1607f
                  blt          t5, a5, 1613f
1595:             add          a0, a7, a7
1596:             sub          ra, s3, a7
1597:             bgeu         s0, s0, 1607f
1598:             srai         t4, a5, 29
                  or           t5, a5, a1
                  sll          zero, s0, s1
                  sltu         t0, gp, a1
                  auipc        t6, 721129
                  addi         t3, s9, -1524
                  sltiu        gp, s9, 139
                  sltiu        s6, a1, 852
                  sra          s9, s6, s5
1607:             bgeu         t2, s7, 1626f
                  bgeu         s5, zero, 1617f
                  andi         s3, sp, -63
                  blt          a4, s6, 1618f
                  ori          s10, s2, -969
                  slti         a2, t2, 1346
1613:             auipc        a5, 911198
                  auipc        s10, 902788
                  xor          s8, t5, t4
                  xori         ra, a5, 253
1617:             slt          s10, a3, tp
1618:             xor          sp, a2, s2
                  sll          t3, t4, a1
                  slti         ra, t3, 430
                  srli         a6, s9, 0
                  sra          zero, t5, t6
                  bltu         s8, t3, 1634f
                  nop
                  xor          t4, s2, a7
1626:             xori         t6, s10, 178
                  lui          a5, 983339
                  xor          t4, s6, s1
                  bne          t6, s6, 1631f
                  bge          s0, t1, 1646f
1631:             slt          t1, s3, a0
                  bge          t2, t6, 1644f
                  bltu         s6, t3, 1646f
1634:             sra          sp, t6, s3
                  addi         ra, a6, 640
                  and          s11, s7, t3
                  xori         t3, tp, 475
                  sltiu        a6, a3, -592
                  sll          a3, t5, sp
                  blt          s11, a2, 1652f
                  and          s7, t2, t5
                  and          tp, s10, a5
                  srli         sp, t6, 8
1644:             srli         a3, a1, 8
                  bltu         zero, a7, 1664f
1646:             and          s7, a6, t5
                  sub          s5, t6, ra
                  slli         t0, t3, 11
                  sltiu        a3, s8, -319
                  or           a2, t0, t5
                  bne          ra, a2, 1670f
1652:             nop
                  srli         tp, a1, 1
                  and          sp, t4, ra
                  slti         zero, a2, 1669
                  nop
                  slt          s11, s5, a1
                  srli         a7, a2, 23
                  beq          zero, s2, 1669f
                  auipc        t2, 116338
                  and          t5, s8, a6
                  xor          a0, s11, s11
                  ori          s1, s4, -1676
1664:             srli         s7, ra, 13
                  la           s6, region_1+135 #start riscv_load_store_rand_instr_stream_12
                  nop
                  add          s5, a2, zero
                  lbu          t3, 1559(s6)
                  sb           tp, 699(s6)
                  sb           a3, 1649(s6)
                  lb           zero, 333(s6)
                  andi         ra, a0, 1961
                  slli         tp, a3, 25
                  add          t3, gp, s10
                  lbu          s1, 1410(s6)
                  lbu          s5, 912(s6)
                  sb           zero, 774(s6)
                  lb           zero, 1822(s6)
                  xori         s7, s3, -1632
                  slli         s11, t3, 14
                  lb           t4, 1510(s6)
                  slt          a1, s11, t1
                  lhu          s9, 727(s6)
                  lui          t3, 934884
                  lbu          s5, 387(s6)
                  slli         t5, t6, 25
                  lh           s9, 1179(s6)
                  srl          t0, a1, s6
                  lb           ra, 1389(s6) #end riscv_load_store_rand_instr_stream_12
                  sltiu        t6, s2, -218
                  slt          a1, s2, s2
                  lui          a3, 281189
                  bge          a4, t4, 1676f
1669:             sra          t0, s5, sp
1670:             and          s6, s6, s1
                  lui          a3, 683050
                  blt          s1, s7, 1685f
                  bge          gp, s1, 1685f
                  xori         tp, s8, -1584
                  lui          t5, 1015422
1676:             srli         t5, s9, 0
                  bge          a3, a6, 1684f
                  beq          a3, t1, 1685f
                  addi         s8, t2, -1071
                  add          t2, zero, gp
                  bgeu         t0, s2, 1685f
                  sra          t0, s4, a7
                  nop
1684:             sub          s3, t1, s8
1685:             srli         sp, s6, 23
                  la x8, test_done
                  jalr x0, x8, 0
test_done:        
                  li gp, 1
                  ecall
sub_7:            srl          a0, a7, a4
                  ori          sp, t4, -2016
                  nop
                  sll          a4, t6, a0
                  auipc        s10, 670954
                  addi         s2, s2, -20
                  add          s5, a0, s0
                  sltu         gp, s11, t5
                  slt          s11, s9, s0
                  sw           s8, 4(s2)
                  sltiu        s1, a2, 633
                  la           s11, sub_10
                  auipc        ra, 409426
                  addi         s11, s11, -998
                  add          a4, s11, t0
                  sub          gp, s7, s9
                  xor          a1, t4, t5
                  lui          a5, 55453
                  and          ra, t6, t4
                  addi         a0, s7, -1125
                  ori          t3, s3, -1660
sub_7_j13:        jalr         s8, s11, 999 #jump sub_7 -> sub_10
                  beq          a6, t2, 9f
                  bgeu         a6, s8, 9f
                  srai         a6, s4, 11
                  sub          s5, s7, t1
                  xori         t6, tp, -972
                  slti         s9, s7, -193
                  beq          s9, t4, 9f
                  auipc        t5, 433360
                  ori          s8, a5, 1589
9:                slt          a3, s0, a5
                  srl          a3, a6, s3
                  lw           s8, 4(s2)
                  slti         s11, s4, -785
                  addi         t3, tp, -1231
                  ori          sp, a6, -568
                  sltiu        t2, s5, -1928
                  lui          a4, 971557
                  slli         a1, t4, 2
                  addi         s2, s2, 20
                  xor          s9, tp, a6
42:               addi x29, x24, 0
42:               jalr x29, x29, 0
sub_8:            addi         t3, s6, -1835
                  nop
                  addi         s2, s2, -16
                  lui          s1, 584587
                  sw           s8, 4(s2)
                  nop
                  nop
                  auipc        gp, 108841
                  andi         s5, t4, -1207
                  nop
                  la           t2, region_1+1316 #start riscv_load_store_rand_instr_stream_0
                  lbu          s9, 5(t2)
                  sb           a6, -15(t2)
                  lw           s9, 12(t2)
                  sh           sp, 14(t2)
                  sltiu        s6, s11, 1875
                  and          t6, s7, s4
                  lw           s5, -16(t2)
                  srli         a5, s7, 6
                  lhu          a1, 4(t2)
                  sb           t2, 9(t2)
                  sra          s9, sp, a5
                  xor          a5, a7, a1
                  lui          gp, 229470
                  nop
                  sh           a0, -2(t2)
                  sb           a6, -7(t2)
                  srai         a5, s6, 10
                  sb           s3, -7(t2)
                  srl          s6, sp, s6
                  lh           s9, -6(t2)
                  or           a7, a2, tp
                  srl          t4, ra, tp
                  sll          a5, s10, a5
                  lbu          sp, -7(t2)
                  ori          a5, a1, 95
                  lbu          a0, -13(t2)
                  lb           s1, 5(t2)
                  lbu          a7, 14(t2)
                  sltiu        s1, t2, -389
                  sll          a7, s8, s8
                  xor          tp, s11, s4
                  sltiu        s11, a6, 1362
                  sltu         a3, ra, s8
                  lw           s9, 0(t2)
                  lhu          t1, 2(t2)
                  lbu          s8, -1(t2)
                  lhu          s8, 12(t2)
                  sub          s5, s8, a5
                  andi         zero, t2, -519
                  lui          sp, 63276
                  lw           s9, 8(t2)
                  sw           a0, 16(t2)
                  lbu          s9, -15(t2)
                  sb           s2, -9(t2)
                  sh           t5, -16(t2)
                  lhu          t1, 10(t2)
                  sb           t3, 11(t2)
                  sltiu        s1, t3, -1031
                  sltu         a4, t0, t4
                  addi         a2, s0, -209
                  and          t5, tp, gp
                  addi         t0, a1, -1589
                  sb           t1, -9(t2) #end riscv_load_store_rand_instr_stream_0
                  bne          t4, s6, 14f
                  addi         s9, a7, 951
                  blt          s4, s11, 6f
                  srl          a1, a7, s10
                  sub          a1, a1, gp
                  xori         s11, s7, -289
6:                sub          s8, t2, a5
                  slti         s7, a1, 1520
                  bgeu         s10, s10, 24f
                  srl          a5, a4, t0
                  sra          gp, t3, gp
                  lui          gp, 601855
                  sltu         a7, s5, s0
                  sltiu        a1, a4, 7
14:               slt          a1, s1, s7
                  andi         t4, s1, 961
                  slt          a3, t3, t5
                  blt          a7, tp, 28f
                  beq          sp, sp, 27f
                  xor          s6, s8, s8
                  add          t5, s2, s7
                  andi         s11, s9, 1166
                  addi         t5, t6, 1768
                  srl          a7, s9, s6
24:               sub          s3, s11, sp
                  xori         s11, tp, -1179
                  bge          t1, a7, 42f
27:               srl          tp, ra, a0
28:               xor          t0, s7, s1
                  sra          a1, s8, ra
                  slt          s3, s1, a5
                  and          a5, s1, t2
                  bltu         t5, s4, 39f
                  and          s8, a6, tp
                  blt          s4, t2, 40f
                  slti         a6, ra, 68
                  add          t4, s3, s8
                  sltu         a6, s9, zero
                  slt          s1, s1, s1
39:               auipc        s11, 1031568
40:               and          s5, t5, s0
                  addi         s7, t6, -1932
                  lui          s10, 718579
                  srl          a4, sp, s5
                  lui          t6, 501048
                  xor          a7, a7, a1
                  srl          s10, a1, t4
                  add          s6, s9, s8
                  bge          a3, t1, sub_8_j14 #branch to jump instr
                  xori         a4, ra, 302
                  lui          a4, 535829
                  slti         zero, a7, -218
                  srl          a0, a0, s2
sub_8_j14:        jal          s8, sub_10 #jump sub_8 -> sub_10
42:               addi         s7, a5, -1745
                  ori          zero, s8, 1195
                  srli         s11, gp, 19
                  sub          s7, s2, a6
                  or           a6, s7, tp
                  srli         t2, t0, 11
                  auipc        a6, 768991
                  addi         s11, sp, 822
                  srl          zero, a4, s11
                  slli         s10, s6, 23
                  sub          t3, t3, t5
                  blt          s1, a0, 73f
                  xor          t5, s0, a6
                  lui          t2, 596278
                  bgeu         s2, t1, 74f
                  bne          s2, tp, 62f
                  sub          s11, t5, a3
                  add          s1, t1, s5
                  sra          s7, t6, a6
                  sll          s1, zero, s3
62:               slt          s6, gp, a7
                  or           sp, t3, s2
                  bgeu         a5, zero, 81f
                  addi         t0, s10, -394
                  addi         t1, s11, 1354
                  beq          s1, a3, 85f
                  and          s6, a6, s7
                  beq          s11, s0, 71f
                  srai         s1, a3, 0
71:               srl          s5, gp, a3
                  sltu         sp, zero, a1
73:               blt          s10, s8, 85f
74:               nop
                  slt          a1, zero, s2
                  sltu         a2, t1, a5
                  auipc        t3, 591424
                  ori          s7, s6, -666
                  srai         s7, s4, 1
                  srl          t3, t5, a4
81:               andi         zero, t6, -1071
                  srai         gp, s10, 11
                  lui          s1, 786744
                  bge          gp, gp, 101f
85:               and          ra, a0, sp
                  xori         s10, s8, -981
                  lui          t2, 788776
                  bltu         s1, t6, 94f
                  and          t2, t0, a3
                  auipc        s8, 401473
                  bge          zero, a4, 95f
                  bgeu         t2, t1, 107f
                  nop
94:               sltu         a7, tp, s6
95:               slt          t0, s3, tp
                  nop
                  addi         s10, a3, -1675
                  srl          a7, a2, s2
                  blt          s2, s2, 107f
                  bne          s0, s2, 119f
101:              bge          t4, a0, 119f
                  beq          s6, s6, 117f
                  srai         sp, s6, 0
                  bge          t3, s2, 113f
                  srai         t3, t5, 13
                  bne          ra, s7, 121f
107:              slti         t4, zero, 1194
                  sltiu        s3, ra, 1105
                  sub          t6, a3, t4
                  bge          a4, a5, 118f
                  sll          s7, t1, a7
                  bge          t6, ra, 120f
113:              or           a4, t6, s5
                  beq          a0, t6, 129f
                  srl          t4, s9, a1
                  xor          a7, s5, s7
117:              bltu         ra, zero, 133f
118:              sra          s10, a3, a2
119:              sub          a5, sp, s11
120:              sll          t3, s4, a0
121:              and          t2, a1, t4
                  slti         a4, s10, 107
                  bne          s6, s2, 137f
                  slt          a0, s8, t6
                  slti         tp, t1, -490
                  sra          t0, sp, t1
                  sub          a4, a0, s3
                  nop
129:              lui          tp, 195191
                  srl          gp, tp, tp
                  bltu         s10, t3, 146f
                  xori         sp, t2, 881
133:              bne          t0, s3, 151f
                  bltu         t6, ra, 149f
                  slti         s1, sp, 568
                  sltu         zero, s1, s10
137:              bge          a0, sp, 143f
                  sltu         s7, t3, s4
                  blt          a4, t5, 146f
                  andi         a0, a6, 533
                  andi         t4, s4, 11
                  slti         a4, s7, 1617
143:              bge          s2, s10, 157f
                  sub          s3, t4, s3
                  auipc        a2, 515109
146:              add          t2, s2, t1
                  beq          a6, s4, 164f
                  addi         sp, tp, -696
149:              xori         a7, s2, 1904
                  xor          s7, t1, zero
151:              andi         s8, s5, 1514
                  srai         s3, ra, 17
                  slti         a4, s6, -1120
                  andi         a5, s8, 216
                  ori          a0, t5, 1553
                  and          t1, tp, t1
157:              add          s5, s7, tp
                  sll          t3, a4, t2
                  slli         t2, s5, 25
                  sltiu        s10, sp, -1044
                  slt          a5, s9, t2
                  sra          a6, zero, s5
                  auipc        a5, 111195
164:              beq          a3, a0, 182f
                  xor          s1, s5, t4
                  sra          a2, s8, sp
                  xor          a2, t3, a2
                  lui          t1, 939720
                  addi         a4, s11, 1134
                  add          t5, a3, sp
                  sltiu        gp, a7, -1380
                  sltu         s3, s4, t2
                  andi         s11, s4, 1361
                  add          t0, gp, t3
                  slli         a3, t6, 20
                  auipc        gp, 368523
                  and          a0, t3, t4
                  sltu         s11, tp, s4
                  lui          s5, 919362
                  addi         s10, t6, 107
                  xori         s1, t0, 1159
182:              addi         t0, a4, 1084
                  bge          s11, a1, 198f
                  or           s11, a6, t4
                  bne          s9, a1, 191f
                  bltu         s1, t0, 188f
                  srli         s8, a2, 16
188:              xor          s9, a7, zero
                  sll          a7, tp, t3
                  slli         t6, a5, 12
191:              xori         s3, s9, 1694
                  lui          a1, 252141
                  and          a7, s9, t0
                  and          t3, t0, a0
                  addi         s8, t1, -1536
                  beq          a6, s9, 200f
                  lui          t1, 181026
198:              sra          a2, s10, t2
                  sll          s9, sp, t1
200:              and          s11, t3, sp
                  beq          s1, s0, 216f
                  lui          gp, 987869
                  srli         t0, s8, 12
                  or           t4, s6, t5
                  or           s7, tp, s1
                  slt          s10, t1, a7
                  sltiu        s8, s1, 697
                  srli         a7, t3, 12
                  sra          s1, s5, zero
                  slti         a5, a1, -1826
                  and          a3, t5, s6
                  andi         t4, gp, -1026
                  bge          a2, a2, 231f
                  sub          tp, s9, s7
                  sra          sp, a0, tp
216:              bltu         s10, s6, 224f
                  bgeu         t4, t2, 233f
                  beq          s11, s0, 227f
                  or           s9, s3, s10
                  xor          s9, t0, t0
                  la           a0, region_0+1272 #start riscv_load_store_rand_instr_stream_1
                  sra          zero, s3, t3
                  sra          t6, ra, s11
                  sb           s3, -60(a0)
                  lb           s7, 51(a0)
                  sw           t1, 40(a0)
                  lb           a3, -13(a0)
                  sll          gp, t6, tp
                  sb           a3, -31(a0)
                  sw           a1, 32(a0)
                  sb           s10, 7(a0)
                  lh           s7, -6(a0)
                  addi         gp, t1, 2038
                  and          s1, t3, s1
                  sb           a4, 1(a0)
                  sb           s0, -45(a0)
                  sb           sp, 58(a0)
                  add          a1, s11, tp
                  nop
                  lbu          tp, 35(a0)
                  sh           a5, -40(a0)
                  sb           a4, -49(a0)
                  slli         a5, s6, 6
                  sra          gp, t0, tp
                  lb           a1, 45(a0)
                  lbu          s6, -35(a0)
                  lbu          a7, 13(a0)
                  addi         t3, ra, -942
                  nop
                  lbu          t5, -2(a0)
                  slt          zero, a0, s1
                  sb           s3, -33(a0)
                  sb           t6, 19(a0)
                  add          s10, t6, t2
                  lbu          s1, 17(a0)
                  lh           t6, -26(a0)
                  lb           s6, -52(a0)
                  lbu          a3, 57(a0)
                  add          t5, s3, a4
                  auipc        s3, 289808
                  xori         sp, tp, 1087
                  andi         s3, s8, -1045
                  lbu          a4, -5(a0)
                  slt          gp, s10, ra
                  lb           s7, -15(a0)
                  sw           a7, -20(a0)
                  lb           a6, 37(a0)
                  lb           a3, -23(a0) #end riscv_load_store_rand_instr_stream_1
                  srai         a7, s6, 26
                  sub          t1, s9, s5
                  xor          a6, s1, s7
224:              srl          t4, s6, s6
                  bne          a7, s2, 230f
                  slti         s7, s9, 1781
227:              auipc        a7, 850229
                  or           t0, s4, t2
                  sll          s6, s5, tp
230:              bne          a0, a2, 246f
231:              bne          zero, a0, 243f
                  xori         t6, a7, 554
233:              ori          s5, t0, -1519
                  srai         s6, t5, 5
                  slt          s9, a1, a0
                  and          gp, gp, t2
                  slti         ra, t6, 187
                  srl          gp, s7, t4
                  auipc        s5, 339890
                  sll          tp, sp, s0
                  srai         s5, s7, 25
                  xori         gp, sp, -1038
243:              auipc        ra, 590014
                  auipc        s9, 401790
                  sltiu        ra, s2, 30
246:              xor          s5, s11, s1
                  bne          t3, s11, 264f
                  add          a6, s9, a1
                  auipc        a4, 149085
                  and          ra, s7, s0
                  or           s11, gp, t6
                  beq          s5, s8, 263f
                  ori          t5, s11, -1721
                  bgeu         t2, s6, 262f
                  srl          a0, zero, s0
                  nop
                  bgeu         a3, t2, 261f
                  sll          t0, s0, a4
                  bltu         s2, a0, 268f
                  bltu         a7, s9, 276f
261:              sltiu        s3, a3, 572
262:              slt          t1, a6, t6
263:              slti         zero, s11, 495
264:              lui          a6, 555158
                  sra          s6, a4, s8
                  auipc        sp, 153266
                  xori         s7, ra, -1553
268:              sll          a5, t4, s4
                  addi         t6, sp, 1609
                  or           zero, s9, a7
                  andi         tp, s1, -523
                  blt          t6, t2, 291f
                  xori         t3, sp, 1200
                  srli         a4, s3, 13
                  xor          s1, t3, s5
276:              ori          sp, a7, 1270
                  sra          zero, sp, s1
                  xor          a5, a2, a4
                  nop
                  add          s1, gp, t5
                  bltu         s11, s8, 295f
                  auipc        t6, 723166
                  bne          a5, s6, 291f
                  ori          sp, s11, -1674
                  auipc        t4, 432683
                  add          a6, zero, zero
                  xor          t2, a7, a1
                  slti         t2, s8, 1402
                  addi         s6, s6, -1937
                  sll          t6, tp, sp
291:              andi         zero, a7, 1217
                  xori         t2, zero, 1831
                  or           a6, gp, a6
                  sltiu        t4, s3, -78
295:              sra          t1, zero, s5
                  beq          s3, zero, 304f
                  bge          s6, tp, 303f
                  sltiu        s9, a6, 1101
                  slli         a3, a2, 19
                  srl          t6, t6, t1
                  bge          s9, s9, 304f
                  ori          a3, s11, 1560
303:              slt          a4, s7, a1
304:              andi         t6, s4, -1810
                  lw           s8, 4(s2)
                  and          t5, a3, s9
                  srli         a2, s10, 30
                  srai         a0, a4, 5
                  sll          t6, a4, t2
                  sltiu        ra, s10, 2027
                  slti         s11, a5, 915
                  sltu         t1, gp, ra
                  sll          a0, s11, a5
                  addi         s2, s2, 16
                  xori         a4, s10, 1458
440:              addi x6, x24, 0
440:              jalr x6, x6, 0
sub_3:            addi         s2, s2, -12
                  sw           s8, 4(s2)
                  add          a5, s10, s3
                  sub          ra, s0, s10
                  and          a2, zero, s1
                  ori          t0, t2, -793
                  beq          s2, s8, 14f
                  slti         s7, a2, -1597
                  slti         t5, a0, -1050
                  xori         t4, t6, -1335
                  bgeu         s11, t6, 16f
                  bne          tp, s5, 10f
                  bne          a0, t3, 19f
                  bgeu         s8, s2, 14f
                  blt          s5, a0, 17f
                  sra          a2, a5, ra
10:               slti         a2, a0, -820
                  addi         a7, a0, 333
                  slti         a5, a5, 2033
                  xori         t1, s11, -417
14:               srai         a4, s11, 30
                  bgeu         s11, s10, 19f
16:               bge          s10, s7, 19f
17:               blt          a7, s0, 19f
                  bltu         s7, t5, 19f
19:               addi         s6, s9, 1290
                  sltu         t1, tp, s4
                  lw           s8, 4(s2)
                  add          t5, t4, s11
                  addi         s2, s2, 12
                  ori          t4, a3, -1596
31:               addi x21, x24, 1
31:               jalr x21, x21, 0
sub_2:            andi         tp, s2, 821
                  and          a4, a3, a0
                  srl          t5, s8, a0
                  addi         s2, s2, -48
                  slli         a2, t1, 20
                  sw           s8, 4(s2)
                  nop
                  or           s6, zero, sp
                  sub          t0, a1, t0
                  slti         t6, a7, -1059
                  srli         s3, t2, 13
                  sltiu        s6, s5, -33
                  srai         s10, ra, 3
                  lui          a7, 508624
                  andi         a4, t0, -426
                  slti         t2, s2, 1318
sub_2_j6:         jal          s8, sub_4 #jump sub_2 -> sub_4
                  la           t3, region_0+219 #start riscv_load_store_rand_instr_stream_0
                  sub          s3, s10, zero
                  sra          sp, a2, s8
                  srai         a0, t0, 8
                  sb           a1, 156(t3)
                  lb           t6, 1643(t3)
                  srli         a1, zero, 23
                  srai         sp, t2, 13
                  lbu          s5, 837(t3)
                  sb           a4, 1367(t3)
                  lb           s6, 1392(t3)
                  srai         t2, s7, 27
                  lb           s10, -8(t3)
                  lb           t6, 1034(t3)
                  srli         a7, t3, 24
                  sw           t3, 861(t3)
                  sb           t4, 1422(t3)
                  sh           zero, 1019(t3)
                  xori         t0, a7, 1307
                  addi         a6, t4, 268
                  srl          t1, a1, a5
                  addi         t6, a4, 301
                  or           s10, t1, s7
                  lw           a4, 209(t3)
                  lb           a7, 40(t3)
                  sb           s5, 806(t3)
                  or           t0, a3, s6
                  srl          t4, gp, sp
                  auipc        a6, 783298
                  srli         ra, a7, 24
                  and          a2, t6, s6
                  sw           gp, 1049(t3)
                  lb           a6, 874(t3)
                  srli         t6, s8, 21
                  slti         tp, a6, -1163
                  and          s11, t6, a4
                  xori         a3, gp, -398
                  nop
                  lbu          gp, -32(t3)
                  sw           t2, 121(t3)
                  lh           a4, 339(t3)
                  lbu          a6, 1746(t3)
                  sb           t4, 447(t3)
                  lb           s6, 382(t3)
                  and          t1, s10, a5
                  sh           t1, -165(t3)
                  and          s10, zero, a6
                  lhu          s5, 611(t3)
                  srli         a0, a1, 23
                  or           s7, gp, s2
                  sh           t5, 635(t3) #end riscv_load_store_rand_instr_stream_0
                  sltu         s9, s0, a5
                  bge          a1, gp, 7f
                  andi         a0, tp, 238
                  auipc        zero, 821361
                  srli         tp, a2, 1
                  bltu         a4, t4, 14f
                  auipc        t4, 945765
7:                auipc        t0, 337614
                  blt          t3, a7, 11f
                  sub          t1, s3, t2
                  bgeu         ra, t4, 20f
11:               sra          s7, ra, a5
                  slli         s8, ra, 3
                  slt          a5, t5, tp
14:               slt          a1, t1, t2
                  sub          t0, a3, s8
                  srai         a2, a4, 19
                  slli         a5, a1, 7
                  ori          s9, s4, 958
                  add          a0, t6, s10
20:               srli         s7, s5, 29
                  srai         s10, s10, 26
                  bgeu         a2, s3, 28f
                  slli         s10, s8, 2
                  blt          a3, a1, 36f
                  xor          a5, s7, s11
                  beq          t5, ra, 38f
                  slti         s8, t4, -1999
28:               ori          a3, s0, 488
                  bge          s8, s1, 41f
                  sub          t0, t6, s10
                  sra          sp, a6, s2
                  bgeu         a6, s7, 43f
                  srl          t1, s11, s5
                  srl          s7, s1, s10
                  sub          s5, s3, s0
36:               slti         a1, tp, 54
                  and          s5, sp, s10
38:               ori          a1, a4, 730
                  bge          t3, gp, 48f
                  andi         a2, a0, -1486
41:               srl          s3, s0, s4
                  srai         s11, tp, 1
43:               nop
                  sra          t1, a3, s7
                  nop
                  blt          a3, sp, 59f
                  srli         t3, s4, 1
48:               srai         sp, s6, 6
                  lui          t5, 538604
                  sltu         ra, s2, s9
                  beq          s11, t2, 69f
                  slti         gp, t3, -155
                  bltu         s10, a5, 70f
                  blt          sp, zero, 68f
                  sltiu        zero, a3, -978
                  lui          t5, 323833
                  blt          sp, s5, 74f
                  srai         a6, t6, 31
59:               addi         s6, t1, -1890
                  sll          t6, t4, s11
                  beq          s2, s5, 62f
62:               ori          s5, sp, 1800
                  srai         sp, t5, 20
                  beq          sp, t3, 84f
                  sll          t0, s1, s7
                  sltiu        s7, zero, 41
                  or           a0, gp, t2
68:               slt          a5, s2, ra
69:               bltu         s11, s2, 74f
70:               slli         t2, a4, 27
                  slt          s11, t1, s0
                  xori         zero, t3, 27
                  srl          s7, a1, t3
74:               addi         s10, t5, -1868
                  slt          zero, s2, s3
                  lui          t0, 833962
                  beq          a6, a4, 86f
                  nop
                  srli         s5, a6, 15
                  xor          a3, t5, a3
                  srli         t5, t6, 12
                  srl          a3, s8, gp
                  srai         a7, s8, 18
84:               xor          zero, a3, a6
                  xor          s6, a5, zero
86:               auipc        s9, 738329
                  slli         s3, s10, 12
                  bgeu         gp, a1, 100f
                  bltu         s0, s4, 106f
                  bltu         s5, a3, 93f
                  sub          s1, s3, s11
                  beq          s5, a1, 95f
93:               ori          s8, t3, 1413
                  bltu         s5, s2, 101f
95:               beq          s5, t3, 100f
                  slti         a6, t0, 1941
                  sub          a0, ra, gp
                  sltu         a4, a4, s2
                  srli         s6, sp, 20
100:              auipc        zero, 603455
101:              andi         s5, a3, -36
                  sltu         s3, t2, t1
                  and          s11, s0, s0
                  auipc        s7, 25360
                  sll          s10, s7, s11
106:              xori         t5, a2, -1449
                  bge          t1, a5, 118f
                  srl          s7, a4, sp
                  srli         s7, s9, 4
                  bgeu         zero, s6, 128f
                  sra          ra, t4, gp
                  bltu         s9, s3, 115f
                  sub          a1, t6, tp
                  beq          a6, t2, 133f
115:              bgeu         a7, s0, 121f
                  sub          t1, s6, s3
                  slt          t0, s2, a4
118:              sub          a6, a5, t0
                  sub          s11, zero, t5
                  add          a4, a2, t6
121:              lui          a3, 700542
                  bltu         t3, s6, 125f
                  auipc        s1, 1042201
                  sll          gp, tp, t6
125:              slli         a1, t2, 7
                  sltu         s5, s1, t3
                  auipc        a7, 572813
128:              sltiu        s8, a5, -813
                  bne          t1, s10, 141f
                  sll          zero, s11, a7
                  slt          s7, a5, s6
                  bge          t6, s1, 149f
133:              bne          t4, zero, 145f
                  bge          t1, a5, 137f
                  srli         s7, t4, 21
                  slli         a1, sp, 31
137:              add          a3, s8, t0
                  sltu         t2, a1, gp
                  slt          t2, a0, sp
                  srli         t5, tp, 5
141:              srl          a6, t0, s7
                  xori         t4, tp, 1052
                  slt          ra, a6, s1
                  bne          s1, t2, 153f
145:              sltiu        gp, s10, -1917
                  slti         t3, t4, 1608
                  bltu         s0, s11, 164f
                  andi         t0, s9, -1195
149:              ori          a3, s1, 145
                  andi         t6, gp, -110
                  bge          gp, t1, 160f
                  xori         s1, t5, 811
153:              srl          sp, zero, s4
                  addi         s3, s2, -1716
                  bge          s11, tp, 156f
156:              slti         t6, s6, 658
                  xor          t4, s8, t2
                  sltiu        gp, zero, 873
                  bge          s10, s2, 165f
160:              andi         t2, a0, 1286
                  bgeu         s0, t4, 174f
                  bltu         a0, a3, 169f
                  ori          a3, a4, -646
164:              srl          zero, s7, s2
165:              add          a1, s5, ra
                  srli         t3, a4, 9
                  la           s5, sub_4
                  sltu         s8, s3, a3
                  addi         tp, tp, -1658
                  slt          ra, t4, s10
                  addi         s5, s5, 731
                  slt          s1, t5, ra
                  beq          s3, a6, sub_2_j5 #branch to jump instr
                  and          t6, t4, s2
sub_2_j5:         jalr         s8, s5, -730 #jump sub_2 -> sub_4
                  andi         ra, s3, -1337
                  sltu         tp, s1, s4
                  nop
169:              srl          a7, t5, s3
                  and          s3, s9, t3
                  srl          a3, t6, s4
                  slti         sp, s9, -1690
                  xori         sp, t6, 318
174:              and          a3, s2, t0
                  beq          a6, s4, 176f
176:              or           t5, s0, s10
                  addi         s6, t2, 22
                  lw           s8, 4(s2)
                  sll          s9, a2, s6
                  andi         s10, a2, -1910
                  addi         s2, s2, 48
                  or           tp, a2, a7
                  srl          t4, s1, s11
262:              addi x16, x24, 0
262:              jalr x16, x16, 0
sub_6:            sub          gp, s0, gp
                  addi         s2, s2, -56
                  sra          s3, s3, t3
                  sw           s8, 4(s2)
                  or           t2, t3, s3
                  nop
                  sltiu        a3, t2, 1686
                  srl          t5, a3, s9
                  nop
                  slti         ra, t4, 704
                  srai         s10, s0, 1
                  srai         a1, s5, 27
                  sub          zero, t1, s0
                  beq          t5, s8, 24f
                  sub          s8, ra, s10
                  add          s8, a3, a5
                  or           sp, s7, s10
                  blt          s3, a7, 22f
                  slli         t3, a3, 6
                  srl          gp, t3, s9
                  and          a6, a0, a2
                  ori          zero, s4, 109
                  auipc        t1, 203198
                  slt          a2, t0, t4
                  beq          s6, s5, 30f
                  bgeu         zero, s5, 26f
                  bgeu         t6, ra, 22f
22:               auipc        a5, 561262
                  srli         a2, a2, 8
24:               srli         a3, a6, 19
                  add          s5, s4, ra
26:               sll          s1, s0, s2
                  sltu         a3, t6, a5
                  sll          s8, ra, s7
                  nop
30:               sub          t2, a0, a1
                  add          t2, t0, s0
                  slli         a3, s9, 29
                  auipc        ra, 470740
                  andi         a5, t1, -1173
                  nop
                  blt          gp, t1, 48f
                  xor          zero, t5, ra
                  xori         t3, s10, -342
                  beq          s11, s5, 53f
                  bgeu         s7, s11, 54f
                  srli         zero, a1, 22
                  or           s11, s6, s0
                  beq          zero, s0, 59f
                  sltu         s3, tp, s9
                  nop
                  add          zero, a6, a1
                  lui          a3, 734148
48:               or           s1, a6, t1
                  sub          gp, s10, ra
                  nop
                  srli         a4, s11, 24
                  srai         gp, sp, 22
53:               auipc        ra, 815451
54:               nop
                  srli         tp, a4, 5
                  xori         gp, s10, -226
                  sltiu        s9, s4, -1852
                  slli         s1, s9, 1
59:               slt          s6, s0, a1
                  and          sp, gp, t2
                  blt          sp, a3, 79f
                  blt          ra, ra, 82f
                  bltu         s5, t1, 81f
                  blt          s6, s7, 77f
                  bgeu         s1, s1, 70f
                  sub          a2, t3, t2
                  addi         a1, s0, -16
                  sub          sp, t4, t6
                  bge          sp, s9, 73f
70:               xori         a5, a0, 32
                  sub          s10, s5, s5
                  xori         tp, t5, -1066
73:               bltu         s9, s3, 79f
                  add          a6, t5, ra
                  slli         a3, s10, 28
                  sltu         t2, s1, t6
77:               sra          t0, t3, s9
                  slti         a3, a3, -1617
79:               sra          s10, sp, s3
                  xor          t5, a5, s4
81:               or           a3, gp, a6
82:               beq          t3, s9, 86f
                  auipc        a3, 1024571
                  sra          a3, sp, s11
                  sub          a7, gp, s2
86:               sub          t5, t5, a2
                  blt          s1, sp, 96f
                  or           s9, s9, a3
                  addi         t1, sp, 1560
                  xori         t1, s2, -416
                  sll          t3, s1, a5
                  srai         a4, s11, 10
                  slt          a0, t5, a6
                  bltu         a0, a1, 98f
                  auipc        s7, 231211
96:               or           t1, a2, a6
                  sll          tp, s4, s11
98:               or           a1, s7, a0
                  addi         a1, s0, -56
                  bge          t6, a3, 105f
                  xor          a3, a7, s10
                  and          s5, ra, s6
                  auipc        tp, 1009351
                  ori          s10, zero, 1518
105:              beq          gp, s10, 117f
                  xori         a0, s9, 1569
                  nop
                  xor          t3, a2, t6
                  sra          a6, s2, a7
                  and          s5, s11, t1
                  and          t0, a0, ra
                  ori          zero, s0, 1455
                  blt          t0, s5, 117f
                  addi         tp, sp, -1159
                  sltu         s6, t6, tp
                  addi         t2, a6, -1159
117:              or           a7, t4, a5
                  and          s11, s6, gp
                  lui          t4, 565045
                  lw           s8, 4(s2)
                  addi         s2, s2, 56
                  auipc        s3, 112383
                  srai         ra, a1, 21
                  sub          tp, s6, t1
130:              addi x23, x24, 1
130:              jalr x23, x23, 0
sub_4:            addi         s2, s2, -56
                  sw           s8, 4(s2)
                  and          s9, s1, a3
                  or           s10, s9, zero
                  srl          s7, a4, sp
                  slli         s5, a2, 16
                  xori         a4, s1, -933
                  srl          a4, t4, a0
                  auipc        s6, 728664
                  la           sp, region_0+1583 #start riscv_load_store_rand_instr_stream_6
                  lhu          a7, -489(sp)
                  sub          t5, a2, s11
                  lb           s7, -1380(sp)
                  xor          zero, s4, t4
                  lbu          t5, -1248(sp)
                  lh           zero, -1241(sp)
                  xori         t4, a1, -106
                  srli         s3, a0, 16
                  lh           a6, -3(sp)
                  sh           s6, -1231(sp)
                  lbu          gp, -1067(sp)
                  lb           a0, -450(sp)
                  lbu          s6, 211(sp)
                  sb           s8, -1028(sp)
                  lbu          a7, -1204(sp)
                  srai         s3, a4, 20
                  sltiu        a6, s3, -674
                  lb           a2, -24(sp)
                  sb           s0, -460(sp)
                  lh           s8, -89(sp)
                  andi         s9, tp, -690
                  srli         ra, a4, 10
                  sltiu        s10, tp, 135
                  lhu          a3, -345(sp)
                  srli         gp, s6, 22
                  sb           a3, -560(sp)
                  lbu          t2, -1420(sp)
                  auipc        s8, 901117
                  lb           a6, 39(sp)
                  sb           zero, -1200(sp)
                  lb           tp, -465(sp)
                  lw           t5, 345(sp)
                  lbu          s9, -793(sp)
                  lbu          a2, -1140(sp)
                  lhu          ra, -349(sp)
                  nop
                  srai         s9, gp, 28
                  sb           a2, -1444(sp)
                  xori         tp, s1, -1138
                  lbu          t1, 106(sp)
                  sb           s11, -1100(sp)
                  sra          a3, t3, s9
                  srai         s5, s4, 0
                  slt          a5, zero, t3
                  nop
                  sh           a2, -1411(sp) #end riscv_load_store_rand_instr_stream_6
                  la           t3, region_0+185 #start riscv_load_store_rand_instr_stream_4
                  srai         s1, s5, 7
                  lh           t2, 519(t3)
                  slt          zero, s3, s6
                  lbu          a5, 1118(t3)
                  srl          a4, sp, sp
                  lb           zero, 1666(t3)
                  lb           t2, -11(t3)
                  lbu          t1, 119(t3)
                  lb           sp, 228(t3)
                  sb           t5, 1122(t3)
                  lhu          a2, 1089(t3)
                  andi         a2, s0, -243
                  sb           t0, 522(t3)
                  sh           zero, 503(t3)
                  lhu          t6, 1209(t3)
                  sw           t1, 59(t3)
                  lb           s7, 401(t3)
                  lb           a4, 609(t3)
                  srli         zero, t0, 30
                  sb           s5, 1354(t3)
                  srli         t6, a2, 13
                  sb           s2, 78(t3)
                  lbu          t6, 1596(t3)
                  sw           t1, 1615(t3)
                  addi         s6, t1, -12
                  lb           t0, 1678(t3)
                  and          a4, s9, a1
                  lh           sp, 481(t3)
                  sb           s10, 1075(t3)
                  lb           sp, 1237(t3)
                  or           s5, a2, s10
                  xori         s6, sp, 563
                  lw           s5, 943(t3)
                  slli         s5, t4, 12
                  sb           s8, 1274(t3)
                  lb           a7, 734(t3)
                  srli         t2, t5, 24
                  lbu          t6, 670(t3)
                  lbu          a2, -114(t3)
                  lb           t6, 130(t3)
                  lb           ra, 722(t3)
                  sll          s11, sp, s2
                  slli         s8, ra, 12
                  lhu          s7, 317(t3) #end riscv_load_store_rand_instr_stream_4
                  la           sp, region_0+1390 #start riscv_load_store_rand_instr_stream_5
                  lhu          a7, -492(sp)
                  lbu          zero, -749(sp)
                  xor          a3, sp, t5
                  srai         t3, t2, 24
                  lb           s6, 557(sp)
                  xori         zero, s8, -1823
                  lb           s6, 61(sp)
                  xori         a0, t0, 1302
                  sltiu        a7, t5, 867
                  lbu          s11, -169(sp)
                  slli         ra, s9, 13
                  sb           a2, -249(sp)
                  addi         a3, gp, -494
                  sb           sp, -407(sp)
                  ori          t6, sp, -1208
                  sb           t6, -347(sp)
                  srai         s3, s3, 3
                  andi         a4, a5, -2003
                  lb           t5, 490(sp)
                  auipc        a4, 942077
                  sb           zero, -955(sp)
                  srli         t4, t6, 13
                  slti         a2, t4, -533
                  lh           tp, -350(sp)
                  sb           s7, 157(sp)
                  slti         t2, a5, -1494
                  sb           t0, -399(sp)
                  slt          tp, a2, ra
                  lbu          s11, -907(sp)
                  sltiu        s3, s6, 360
                  sb           gp, -823(sp)
                  andi         t4, t2, 139
                  sb           gp, 459(sp)
                  slt          t0, t4, s8
                  slti         t4, gp, 828
                  sub          s1, sp, a0
                  sltu         a6, s4, s3
                  lb           a6, 547(sp)
                  slti         t4, t1, 1874
                  lb           s11, -357(sp)
                  xor          a7, a5, s6
                  nop
                  xori         a0, t2, 1156
                  lhu          t5, -282(sp)
                  or           tp, s5, s0
                  lbu          a2, -441(sp)
                  srai         a4, s10, 25
                  lbu          a0, -369(sp)
                  srai         t3, s7, 19
                  lhu          t5, -1282(sp)
                  lbu          s9, -873(sp)
                  sra          a6, s9, s10
                  or           t2, sp, a4
                  lb           t3, -391(sp) #end riscv_load_store_rand_instr_stream_5
                  la           s11, region_0+1101 #start riscv_load_store_rand_instr_stream_0
                  sub          s6, s4, a0
                  slti         s6, s1, 169
                  sh           a4, 63(s11)
                  lbu          t5, 123(s11)
                  and          a7, s0, t4
                  sb           a1, -57(s11)
                  slt          a6, a7, s10
                  slti         tp, s1, 1032
                  or           a1, a6, a6
                  lui          a1, 317231
                  slt          t2, t0, s10
                  add          t5, a6, s6
                  lb           s6, -18(s11)
                  srl          s3, a3, t5
                  lb           s3, -152(s11)
                  lbu          s6, -47(s11)
                  srli         a6, s7, 13
                  auipc        a2, 453517
                  srai         a4, a3, 19
                  sll          a5, a0, a4
                  xor          s8, a1, a0
                  sh           s4, -115(s11)
                  srli         a7, s4, 29
                  lb           zero, 54(s11)
                  srli         t3, t4, 21
                  lbu          t6, -111(s11)
                  srai         ra, a1, 31
                  sltiu        tp, a6, -1163
                  sh           s2, -49(s11)
                  lbu          t4, -122(s11)
                  lb           a3, -52(s11)
                  slt          t1, s0, a5
                  sra          s10, sp, s11
                  lb           s9, -102(s11)
                  andi         s9, t4, -711
                  add          t6, zero, s2
                  lb           s6, 85(s11)
                  lbu          t5, 46(s11)
                  auipc        zero, 516213
                  srl          a1, t5, s5
                  auipc        s5, 1045551
                  lui          t3, 864719
                  sb           a3, 47(s11) #end riscv_load_store_rand_instr_stream_0
                  la           tp, region_0+1383 #start riscv_load_store_rand_instr_stream_3
                  lb           s8, -722(tp)
                  lb           a1, -366(tp)
                  sb           a5, 194(tp)
                  sll          s9, t5, a7
                  srli         t1, gp, 8
                  lbu          t6, -550(tp)
                  lb           s7, -1218(tp)
                  lb           s1, -305(tp)
                  sh           t1, -441(tp)
                  sb           t3, 208(tp)
                  lui          a2, 1036423
                  sltiu        t3, t5, -735
                  lbu          t6, 179(tp)
                  ori          t0, s5, 1232
                  lb           a5, -785(tp)
                  lbu          a1, 326(tp)
                  sb           a7, 317(tp)
                  sb           t0, 187(tp)
                  sw           t0, -671(tp)
                  and          t2, s10, a7
                  lbu          a2, 183(tp)
                  ori          a2, tp, -292
                  ori          t5, tp, -410
                  sb           t5, -164(tp)
                  or           ra, sp, a7
                  lhu          t2, 473(tp)
                  lbu          a5, -102(tp)
                  lbu          a5, -749(tp)
                  lb           s6, -539(tp)
                  slti         a5, s10, -1375
                  sw           a4, -691(tp)
                  lhu          s3, -1357(tp)
                  lhu          t6, -759(tp)
                  slli         ra, gp, 17
                  nop
                  sw           a1, -875(tp)
                  sb           t4, 460(tp)
                  and          t5, a7, s4
                  lbu          s9, 345(tp)
                  slti         t5, a7, -1936
                  sra          a7, tp, s5
                  lb           ra, -311(tp) #end riscv_load_store_rand_instr_stream_3
                  la           t2, region_0+1220 #start riscv_load_store_rand_instr_stream_7
                  sb           a4, 5(t2)
                  sb           a7, 21(t2)
                  lb           s6, -5(t2)
                  sra          sp, gp, s3
                  addi         a2, s0, 575
                  slti         a3, s8, 324
                  auipc        t1, 188527
                  sra          sp, s5, s5
                  sb           a1, 15(t2)
                  srl          t1, s4, s3
                  sltiu        s5, t3, -299
                  lbu          t5, -10(t2)
                  ori          s10, a7, 1485
                  add          s9, a4, s7
                  sb           t5, -1(t2)
                  slt          a4, t4, a3
                  srai         s3, sp, 28
                  sltiu        tp, s0, 201
                  lui          zero, 1041015
                  lbu          a3, -31(t2)
                  sb           a2, 49(t2)
                  xor          t1, t4, tp
                  sw           s4, 44(t2)
                  xori         a7, s11, 789
                  add          t4, t1, zero
                  sb           s3, 13(t2) #end riscv_load_store_rand_instr_stream_7
                  bgeu         s8, gp, 8f
                  bgeu         ra, a6, 16f
                  slt          s5, sp, a0
                  bge          a5, t1, 17f
                  blt          a0, t1, 23f
                  auipc        a2, 165658
                  slt          t2, a1, tp
                  lui          sp, 308124
8:                slt          tp, s2, s4
                  ori          s9, zero, 1195
                  ori          t3, t6, -1921
                  xori         a0, s10, -4
                  slli         a4, a1, 15
                  xor          tp, s6, t5
                  sll          s1, s5, s10
                  srai         t5, gp, 20
16:               srl          s5, s11, a3
17:               and          ra, s11, a0
                  slt          a0, a7, gp
                  sll          t1, s1, s11
                  srl          t6, t1, ra
                  xor          s7, s11, s9
                  lui          s7, 600430
23:               slti         zero, t3, -1637
                  xor          a4, s7, s11
                  sll          tp, s5, t5
                  bltu         a2, gp, 37f
                  srai         s7, s11, 17
                  or           t4, a7, a2
                  sub          a7, s8, a1
                  slti         s10, t5, 131
                  and          s11, a1, t0
                  addi         t5, sp, 75
                  nop
                  srl          s9, gp, s4
                  nop
                  bltu         s0, a4, 46f
37:               slti         s5, t6, 1412
                  lui          a2, 252980
                  sll          a6, s2, t2
                  sltu         a4, zero, a0
                  sll          s10, a3, s6
                  sltu         t5, a7, s3
                  blt          s3, t3, 46f
                  and          a4, a5, sp
                  nop
46:               sll          t1, gp, a1
                  sltiu        gp, a4, 1927
                  bgeu         s0, s9, 63f
                  sll          s3, s4, s5
                  or           a4, a5, a5
                  srl          s8, ra, t4
                  ori          sp, gp, 1741
                  sltu         t2, s3, s8
                  sltu         s5, s10, a5
                  bge          a0, s6, 75f
                  xori         t6, t2, 193
                  blt          s6, s1, 69f
                  andi         s6, sp, 133
                  bltu         gp, s8, 60f
60:               blt          s10, a6, 65f
                  bgeu         t6, a3, 78f
                  bne          a4, zero, 74f
63:               sub          gp, s9, s11
                  bltu         a3, t5, 81f
65:               auipc        s8, 112059
                  blt          s6, tp, 75f
                  sra          s10, tp, t0
                  andi         t1, s1, -426
69:               blt          t4, t2, 81f
                  lui          s10, 158293
                  andi         a2, a4, 903
                  add          s5, s2, a3
                  lui          s7, 977898
                  andi         s5, s4, -124
                  sub          zero, s4, s2
                  add          zero, s0, s11
                  sltiu        t4, s9, -607
                  sll          zero, s10, tp
                  addi         sp, s3, 1735
                  or           s9, s6, a6
                  srl          s11, t4, zero
sub_4_j7:         jal          s8, sub_5 #jump sub_4 -> sub_5
74:               add          a0, s9, t4
75:               xori         s11, t3, 459
                  nop
                  andi         a2, s10, -1436
78:               sra          t5, t3, a3
                  lui          a2, 667296
                  and          s5, sp, s0
81:               slt          a7, t6, sp
                  srl          a4, a1, tp
                  or           t5, gp, s11
                  and          a2, zero, s4
                  bne          s4, t3, 87f
                  xori         s7, tp, 1858
87:               add          zero, s0, s10
                  xori         a0, s7, -1801
                  sltiu        a2, gp, 1680
                  lui          a2, 306036
                  beq          a5, s8, 106f
                  bne          zero, s3, 93f
93:               add          s9, s2, s5
                  bltu         tp, s8, 95f
95:               lui          t1, 897403
                  bgeu         s2, s3, 112f
                  sra          a7, a6, s2
                  or           gp, s11, zero
                  nop
                  blt          t0, s7, 108f
                  srli         s10, t6, 29
                  bgeu         a7, s8, 118f
                  xori         sp, t6, -484
                  sll          t1, t4, s5
                  addi         t2, a6, 527
106:              slt          t6, s5, s11
                  sll          s5, s5, s2
108:              lui          a2, 794312
                  sltiu        s3, s5, 980
                  bltu         s4, ra, 122f
                  slt          t1, s3, a2
112:              bltu         ra, s2, 129f
                  sltu         t0, t2, a2
                  sll          zero, a2, s10
                  addi         t2, a2, -2022
                  slli         t2, a6, 30
                  auipc        ra, 339051
118:              srai         ra, t4, 5
                  slli         a6, a2, 10
                  auipc        gp, 417605
                  sll          t3, t1, a1
122:              andi         s7, a4, 107
                  nop
                  srl          a6, zero, s8
                  ori          a4, a1, 505
                  bltu         s5, s4, 138f
                  srl          t2, s9, t0
                  xori         s6, ra, -738
129:              xori         s10, zero, -632
                  srli         a2, tp, 18
                  beq          s9, s8, 136f
                  add          a4, s9, a6
                  nop
                  or           t6, a2, a5
                  blt          s4, t5, 140f
136:              ori          s7, t5, 539
                  andi         a1, t2, 308
138:              ori          t3, s5, -1301
                  slli         t0, gp, 8
140:              lui          s1, 281147
                  bne          zero, t5, 148f
                  or           s10, s9, s1
                  add          s1, t1, t3
                  bltu         s5, zero, 149f
                  auipc        t2, 71631
                  sub          s7, a2, s10
                  addi         a5, s5, 1323
148:              bge          a6, tp, 149f
149:              slt          t5, t1, a5
                  xor          sp, sp, s10
                  bgeu         a0, t3, 168f
                  srli         a3, t2, 12
                  and          s11, a6, tp
                  bge          s10, s6, 171f
                  sltiu        t2, a1, -1029
                  and          t5, a6, s6
                  add          a3, zero, s11
                  andi         sp, a6, 501
                  xori         gp, s3, -1818
                  srli         gp, s4, 20
                  slt          s8, t0, a1
                  andi         s6, s4, -1605
                  bgeu         gp, tp, 175f
                  or           s7, a0, s3
                  nop
                  sra          s6, zero, t3
                  andi         t3, a1, -1289
168:              bltu         t6, t3, 178f
                  sltu         s1, s7, s3
                  and          s5, s6, ra
171:              srli         t2, a5, 27
                  or           s7, t2, a0
                  slli         s11, t3, 26
                  and          zero, a3, s8
175:              bgeu         s9, s6, 183f
                  slti         a2, s9, -1449
                  and          s5, t0, s5
178:              lui          s6, 193270
                  add          s1, t2, a5
                  slt          s11, a0, t2
                  bge          s0, s6, 189f
                  ori          t4, a7, 1944
183:              bne          s7, s8, 190f
                  slti         a1, s5, 1597
                  sra          s6, a4, s5
                  sra          t6, a1, s1
                  bgeu         t2, a2, 204f
                  sll          s9, s7, zero
189:              bne          sp, a0, 204f
190:              sra          s7, s6, s10
                  lui          s3, 1008232
                  ori          s9, ra, 653
                  add          tp, a0, sp
                  bge          a2, a6, 209f
                  slli         s8, tp, 29
                  add          s9, s0, a4
                  bne          t6, t0, 209f
                  addi         a5, a2, 404
                  sra          t1, a5, tp
                  ori          s5, s4, -63
                  beq          t4, t0, 221f
                  sltu         a3, s6, s7
                  sub          tp, a5, s3
204:              xori         ra, t1, -151
                  lui          t3, 959478
                  add          a0, s8, t5
                  slli         a4, s1, 19
                  addi         t5, t0, 1414
209:              sll          sp, a3, s9
                  sltiu        a6, t1, -932
                  bne          a7, t0, 223f
                  slti         t2, s5, 948
                  sra          t4, t5, a1
                  addi         s6, t1, -1572
                  slti         s8, a0, -1890
                  xor          t4, t6, a1
                  sltiu        gp, s6, 194
                  sub          t5, zero, a4
                  sra          t3, a7, a3
                  auipc        ra, 451385
221:              sll          a5, gp, tp
                  addi         t2, s3, 389
223:              bgeu         a2, s4, 225f
                  andi         s8, a3, -67
225:              bgeu         t1, a5, 239f
                  xor          ra, t6, s7
                  addi         a5, s3, -798
                  add          t2, a3, s11
                  slt          s3, s6, s6
                  bge          t1, t4, 249f
                  ori          t2, s3, 1420
                  bgeu         s6, s5, 237f
                  sltu         s7, tp, zero
                  or           t0, t1, s5
                  slli         a6, sp, 21
                  srli         a7, s11, 0
237:              bgeu         s4, a5, 246f
                  bne          t5, zero, 253f
239:              slti         s7, s5, -323
                  sra          s5, s8, a3
                  sub          t6, t1, zero
                  srli         s6, a3, 1
                  ori          zero, a3, -103
                  lui          s8, 401822
                  sll          a2, s3, t3
246:              slt          ra, a3, s9
                  auipc        a7, 131320
                  bgeu         t3, t0, 249f
249:              ori          s7, s10, -201
                  sltu         zero, s6, a4
                  blt          t0, t3, 254f
                  auipc        t5, 25629
253:              sltiu        a1, s11, 1573
254:              sll          s7, t0, tp
                  nop
                  bltu         sp, zero, 272f
                  slti         gp, a7, -999
                  xori         t4, a3, 62
                  addi         a5, a4, -459
                  add          a5, a1, t3
                  ori          t5, a2, -1717
                  auipc        a0, 201479
                  nop
                  blt          s6, a5, 276f
                  srli         t1, s5, 29
                  bge          s10, s9, 282f
                  bgeu         a5, a1, 278f
                  nop
                  slli         a4, a4, 22
                  nop
                  sra          sp, t5, t5
272:              sub          s1, s3, sp
                  sra          a6, t5, s10
                  srai         a4, s10, 11
                  slt          tp, a7, s5
276:              add          a2, s9, a3
                  blt          s1, a1, 282f
278:              sltu         t3, zero, s10
                  and          a5, a7, a7
                  beq          t5, s7, 281f
281:              nop
282:              srl          t4, a3, s5
                  sub          sp, a1, a3
                  beq          t5, t4, 296f
                  srli         s1, t6, 17
                  blt          a3, t0, 291f
                  lui          a5, 596455
                  add          a5, s11, a7
                  andi         a6, zero, 1346
                  blt          s2, sp, 292f
291:              nop
292:              srai         s6, s3, 31
                  srai         a6, a4, 14
                  add          s8, t6, a5
                  sra          t2, a6, t6
296:              bgeu         s6, t2, 303f
                  auipc        t6, 288660
                  and          a1, a5, a6
                  srai         ra, a6, 7
                  ori          tp, t3, 1402
                  srl          t1, a1, a4
                  srai         a1, a0, 25
303:              or           gp, s8, s8
                  auipc        a2, 18412
                  bge          a1, s9, 321f
                  or           a2, s8, sp
                  srai         a6, s2, 15
                  sra          s9, tp, s8
                  lui          tp, 700041
                  sub          s8, s4, sp
                  or           s6, a7, a7
                  and          tp, s8, s3
                  sltu         sp, s11, s11
                  lui          t0, 296111
                  sra          s9, t6, t6
                  bge          t3, s2, 330f
                  srl          t1, a0, s11
                  xor          s9, t4, tp
                  lui          s1, 316289
                  ori          s1, s2, 1052
321:              srai         s7, a0, 25
                  andi         a4, s7, -1161
                  auipc        t3, 771337
                  bne          s1, sp, 341f
                  srli         s1, s1, 28
                  sll          a6, t3, a6
                  ori          gp, s11, -185
                  andi         a6, zero, -1689
                  bgeu         s3, s5, 344f
330:              bne          ra, a5, 338f
                  srl          t2, a1, gp
                  sra          a2, a3, s5
                  srai         tp, t4, 13
                  sltu         s11, zero, s6
                  srai         s8, s8, 28
                  xori         a4, a2, -1625
                  sltu         s8, ra, s2
338:              bltu         a0, s2, 350f
                  bge          sp, a5, 344f
                  slli         s11, zero, 1
341:              and          t4, sp, s5
                  add          s6, s10, ra
                  xor          s8, s9, t3
344:              beq          t0, zero, 355f
                  sra          sp, tp, s9
                  xor          t6, s3, a1
                  auipc        gp, 557518
                  sub          a7, s8, gp
                  andi         s9, a6, -1288
350:              andi         a4, s9, 1506
                  sltiu        t2, s8, 287
                  slt          a4, s0, t4
                  slti         s11, s5, 279
                  srl          t1, s8, s8
355:              bltu         a7, gp, 370f
                  bge          t2, s0, 368f
                  srl          t3, t6, ra
                  slti         t0, a1, 1147
                  ori          s10, a6, -1474
                  beq          a6, s0, 372f
                  slli         s6, t3, 30
                  andi         s11, zero, 1320
                  auipc        tp, 619257
                  srli         s6, s11, 7
                  bgeu         a6, s5, 385f
                  beq          a5, t5, 383f
                  slti         s1, a6, 1586
368:              addi         t3, s6, -1129
                  sra          a0, s11, a3
370:              add          t5, s0, s8
                  srl          a0, s7, s6
372:              slt          gp, a6, s10
                  srai         s7, t0, 27
                  bge          a3, t2, 389f
                  srli         s5, t2, 23
                  slti         a1, t6, -1543
                  srai         s7, t4, 21
                  srli         a0, t6, 26
                  lui          s7, 525123
                  slli         t6, zero, 11
                  sra          s8, tp, zero
                  bltu         a3, a2, 385f
383:              slti         zero, sp, 1341
                  blt          s6, s5, 392f
385:              and          a7, t1, sp
                  andi         s1, s4, -730
                  addi         t0, a4, -978
                  nop
389:              add          s7, t1, t5
                  sll          t2, s0, tp
                  lui          t5, 745724
392:              bgeu         a6, s7, 402f
                  or           a2, s10, s11
                  addi         s3, s3, -162
                  slli         t4, s5, 2
                  xor          s7, a2, s11
                  bgeu         s8, a7, 398f
398:              auipc        t3, 352971
                  slt          t2, t6, s5
                  or           s6, a4, a4
                  bne          sp, a6, 413f
402:              ori          zero, s3, 1809
                  nop
                  slti         t3, t4, -407
                  beq          s5, t0, 414f
                  xor          t1, a3, a3
                  bne          s7, t0, 412f
                  or           t0, a3, s5
                  add          t1, s8, t6
                  slti         s1, t6, -545
                  sll          s6, s4, a7
412:              blt          s4, s8, 413f
413:              blt          a3, t5, 414f
414:              sra          gp, s0, s4
                  bgeu         t6, a6, 434f
                  bne          s10, s5, 433f
                  blt          s1, t0, 433f
                  slt          sp, a4, s6
                  slti         s5, s11, -1703
                  nop
                  ori          a2, s1, 1685
                  srli         s11, s6, 18
                  blt          t0, s11, 435f
                  bge          ra, t0, 425f
425:              ori          t5, s4, -331
                  blt          t2, s8, 431f
                  slli         t3, sp, 11
                  srai         a5, a6, 22
                  beq          s4, s3, 449f
                  beq          a3, gp, 442f
431:              bge          a0, a0, 440f
                  ori          a4, s6, 612
433:              xori         a6, ra, -413
434:              bne          a4, t3, 446f
435:              slli         t5, a1, 0
                  srl          t6, gp, s9
                  srai         s7, gp, 31
                  and          s10, a5, s1
                  slli         gp, t6, 9
440:              andi         t6, t1, -604
                  slli         t2, a3, 16
442:              bgeu         t4, t2, 461f
                  addi         a5, t1, 213
                  srai         a1, s1, 18
                  lui          gp, 975672
446:              srai         s7, t5, 5
                  bge          t5, s3, 454f
                  nop
449:              srai         s8, t6, 0
                  sub          a6, t0, a5
                  sltu         ra, s1, gp
                  or           a2, s4, a6
                  or           a6, s6, tp
454:              and          t6, s0, s6
                  bltu         tp, s1, 472f
                  srai         gp, gp, 8
                  nop
                  sub          s1, s5, a2
                  sll          t6, s6, s4
                  addi         t2, a6, -221
461:              slli         ra, a1, 25
                  blt          s4, a3, 476f
                  xor          a5, s11, t6
                  slli         s11, s3, 13
                  sltu         s5, t5, a5
                  and          s1, ra, t5
                  sll          s5, gp, t3
                  blt          a2, s9, 483f
                  sltu         s8, s7, s10
                  beq          s0, t1, 485f
                  bge          t1, t4, 473f
472:              xor          a7, a6, s8
473:              srli         s8, sp, 19
                  beq          t4, a0, 486f
                  sub          sp, t1, s8
476:              nop
                  sub          s6, a5, a4
                  sltiu        t6, s11, -390
                  beq          t0, a6, 487f
                  lui          a7, 350736
                  sub          a7, s11, t3
                  bgeu         a2, s4, 494f
483:              srli         t4, s1, 20
                  blt          t6, a4, 485f
485:              or           a5, a6, s10
486:              ori          s5, s0, 867
487:              srli         gp, a6, 27
                  or           t2, tp, t6
                  srli         a7, s0, 12
                  nop
                  sub          a1, a1, s7
                  srl          a7, a7, a2
                  sltu         t1, s5, s3
494:              sll          s3, s9, s2
                  srli         s3, a0, 21
                  beq          s5, tp, 513f
                  slt          t5, s4, a2
                  bltu         ra, s3, 514f
                  sltu         t3, s4, s5
                  beq          zero, t4, 508f
                  and          a2, t3, t1
                  sub          a6, s8, s2
                  ori          t2, a4, -1261
                  bltu         zero, s7, 507f
                  srai         t0, gp, 9
                  srl          ra, s2, s1
507:              blt          t1, s5, 512f
508:              andi         a7, s6, -1184
                  xor          a3, a7, t1
                  or           a5, t4, s5
                  add          s10, a6, zero
512:              or           s3, s8, t2
513:              nop
514:              sltiu        t4, t0, 1557
                  sll          s5, s6, s1
                  lui          sp, 131537
                  and          s8, s8, t0
                  sra          a2, s5, a5
                  srli         t0, s11, 29
                  lui          a3, 69541
                  beq          zero, sp, 526f
                  slt          tp, tp, s4
                  blt          s0, sp, 535f
                  xori         a2, a4, -838
                  srl          zero, t6, a4
526:              andi         a0, s10, -590
                  andi         t2, t1, 1818
                  sll          t3, a7, s8
                  srl          t3, t5, s7
                  sltu         a3, s2, s1
                  sub          s6, s0, t0
                  bltu         s2, zero, 549f
                  or           a3, t3, t1
                  lui          tp, 203903
535:              slt          s11, a3, s7
                  lui          gp, 364158
                  nop
                  andi         t4, zero, 32
                  bltu         t0, t6, 550f
                  la           a4, region_1+1731 #start riscv_load_store_rand_instr_stream_2
                  lbu          t5, -8(a4)
                  lb           t1, -12(a4)
                  lbu          a3, 1(a4)
                  addi         a6, a1, 49
                  nop
                  sub          ra, sp, ra
                  srl          a3, s3, t4
                  sh           t1, -9(a4)
                  addi         tp, s5, 1720
                  lui          s6, 292300
                  srai         s9, a7, 9
                  lui          s6, 893796
                  sltiu        s9, s9, 1368
                  xori         a0, s5, -989
                  sra          a7, a6, s10
                  sub          s9, t6, s3
                  lbu          a5, 6(a4)
                  xor          t0, s0, s4
                  sb           s10, 12(a4)
                  lb           s10, 12(a4)
                  slli         s9, s11, 21
                  lh           zero, 1(a4)
                  or           gp, t6, gp
                  sub          a7, sp, t0
                  lbu          gp, 13(a4)
                  or           s11, a3, t3
                  lh           t5, 3(a4)
                  sub          a7, t0, ra
                  lb           s6, 11(a4)
                  sltu         sp, s10, a1
                  lb           ra, 10(a4)
                  srl          ra, s3, s1
                  sh           a5, 9(a4)
                  add          s7, s3, a1
                  srai         ra, a1, 6
                  addi         s10, a3, -1736
                  sub          a2, s2, s5
                  lh           s7, 5(a4)
                  lbu          a0, 4(a4)
                  sltu         a7, a7, s10
                  lui          s6, 346535
                  lh           a7, -5(a4)
                  lhu          tp, -1(a4)
                  lhu          s10, -9(a4) #end riscv_load_store_rand_instr_stream_2
                  bge          s0, a1, 555f
                  beq          s11, s0, 542f
542:              slt          a2, a0, tp
                  sltiu        gp, t0, 1580
                  add          zero, a7, a1
                  blt          gp, a7, 555f
                  lui          t0, 630825
                  sra          s8, tp, s9
                  lui          a3, 172784
549:              and          s1, s4, ra
550:              sltu         s5, a7, s4
                  sll          t1, gp, a1
                  and          a3, a1, a2
                  sra          a6, t2, s11
                  blt          a0, sp, 570f
555:              srl          t4, a6, s6
                  srai         s7, a1, 15
                  sll          a2, s3, gp
                  bne          a1, a7, 559f
559:              bne          s10, a7, 576f
                  srli         a0, t3, 14
                  ori          a5, a0, 588
                  bge          a2, a6, 574f
                  sll          s9, ra, t6
                  bge          s2, t0, 569f
                  srai         s7, t5, 21
                  srl          s8, t4, a0
                  srli         s11, s5, 19
                  sub          s8, a5, s6
569:              auipc        t2, 997739
570:              xor          s9, t1, s0
                  lui          s3, 196994
                  andi         s3, s6, 1569
                  andi         a0, t4, -776
574:              sub          s3, a6, s3
                  auipc        gp, 818393
576:              bgeu         a1, s0, 591f
                  xor          t0, t3, s1
                  bne          a3, s10, 585f
                  bne          s4, s6, 595f
                  ori          a0, a0, 1546
                  and          zero, a1, a7
                  add          a0, s9, t2
                  beq          ra, s5, 602f
                  bne          s1, t6, 596f
585:              srl          a7, s0, s10
                  sll          s6, s0, a0
                  addi         s11, t5, -757
                  or           s5, t6, t1
                  bgeu         sp, s2, 598f
                  sll          s3, a1, sp
591:              bne          s4, s4, 592f
592:              nop
                  srl          t1, sp, s9
                  auipc        s1, 954012
595:              blt          s7, s6, 600f
596:              xori         t1, s0, -1448
                  bgeu         a7, ra, 613f
598:              srl          t1, a0, s4
                  ori          s3, s5, 1370
600:              nop
                  srai         t6, a2, 24
602:              blt          ra, a3, 610f
                  slti         sp, a3, 221
                  add          t6, t2, a2
                  lui          s8, 283003
                  auipc        a1, 927113
                  sub          a4, a5, t4
                  bge          t6, s1, 623f
                  slti         t2, ra, 687
610:              bne          t5, s6, 622f
                  bltu         s9, t0, 626f
                  andi         s8, t0, -214
613:              addi         a1, a7, -719
                  beq          a0, s6, 617f
                  addi         a3, a4, -1292
                  sra          s10, a1, t6
617:              sub          a5, a3, s9
                  sub          a6, s7, t2
                  lui          s9, 248675
                  xori         s8, t2, -1547
                  andi         s3, a3, 1642
622:              lui          a6, 237665
623:              bltu         t1, a6, 624f
624:              auipc        t1, 754772
                  sra          a4, s5, a2
626:              or           t5, t4, a6
                  bge          t3, s4, 639f
                  sltiu        a3, t3, 1797
                  andi         s7, t2, -1956
                  xor          ra, s8, s1
                  auipc        t1, 611618
                  xori         a6, s10, 1502
                  sltu         t3, s11, s0
                  bgeu         a6, t2, 654f
                  lui          s10, 200617
                  ori          t2, s7, 348
                  sltiu        s6, t5, -699
                  bgeu         ra, s0, 649f
639:              bgeu         t3, s9, 653f
                  xori         s11, t4, -803
                  bgeu         s6, t5, 651f
                  slli         s9, a2, 20
                  nop
                  sltu         s8, zero, t6
                  la           a0, region_1+1427 #start riscv_load_store_rand_instr_stream_1
                  addi         s5, t5, 434
                  sub          ra, a0, t6
                  sub          s1, a1, s10
                  sb           s8, 4(a0)
                  lui          s3, 444211
                  lb           zero, -242(a0)
                  lhu          t6, -137(a0)
                  sltu         s7, a2, s11
                  nop
                  sltu         s6, t0, a3
                  sh           t2, 169(a0)
                  addi         s6, t4, 2027
                  add          sp, s3, a5
                  sb           a2, 61(a0)
                  xor          t0, s1, s10
                  slt          a2, t4, t0
                  ori          a2, t1, 206
                  slt          t0, s6, t2
                  addi         t1, ra, -350
                  lb           s7, 109(a0)
                  lhu          s10, -231(a0)
                  sra          a6, s5, s7
                  xor          a3, s8, ra
                  and          a4, s11, tp
                  srai         a5, s7, 26
                  lhu          ra, 233(a0)
                  sb           a5, 108(a0)
                  lbu          a6, -23(a0)
                  lbu          sp, -5(a0)
                  or           a6, s4, a1
                  lb           s6, -226(a0)
                  lb           s7, -160(a0)
                  lbu          t0, 52(a0)
                  sll          s7, t1, a4
                  lbu          s7, 75(a0)
                  lbu          s7, -20(a0) #end riscv_load_store_rand_instr_stream_1
                  slt          gp, a5, s6
                  auipc        a1, 627099
                  addi         t3, t4, 196
                  xor          tp, a3, a1
649:              srai         ra, s7, 15
                  andi         t2, t4, 1740
651:              and          t0, a7, a3
                  slli         t6, sp, 22
653:              and          a1, t4, t0
654:              auipc        a4, 675446
                  xor          t5, t6, s9
                  srli         t3, a3, 28
                  add          s6, s4, s10
                  beq          zero, s10, 663f
                  bltu         s9, t4, 661f
                  slt          s8, t6, a7
661:              xori         s3, t5, 938
                  and          ra, a5, t3
663:              nop
                  srli         t3, s5, 7
                  andi         t5, a1, 1461
                  srai         ra, s5, 30
                  auipc        s8, 25137
                  bltu         a3, s4, 685f
                  slti         sp, tp, -1989
                  sll          a7, t5, a3
                  andi         s7, t6, -1951
                  bgeu         s3, s11, 689f
                  srli         ra, tp, 20
                  bge          s11, s10, 686f
                  bltu         s3, a7, 683f
                  blt          s6, s1, 693f
                  and          a5, t3, s1
                  or           a1, t6, zero
                  bne          s2, s2, 682f
                  beq          a1, s3, 697f
                  or           s9, t3, tp
682:              slli         a5, s0, 26
683:              lui          s7, 729540
                  sltiu        a6, a3, -1582
685:              srai         s9, s2, 15
686:              sltu         a5, a6, t1
                  andi         a4, s1, 259
                  bltu         s6, a4, 705f
689:              add          zero, zero, t6
                  sltiu        s8, s2, -683
                  srl          a7, a0, zero
                  ori          tp, a5, 1451
693:              lui          t4, 666724
                  and          t4, a5, a5
                  sra          s7, s7, s0
                  slti         t3, s2, 1752
697:              lui          gp, 718812
                  bltu         t6, t3, 703f
                  beq          a7, sp, 711f
                  ori          a4, t5, 450
                  nop
                  bgeu         s4, a1, 703f
703:              blt          a2, tp, 719f
                  slli         t0, t2, 28
705:              sltu         a2, t3, s2
                  andi         zero, s6, -909
                  bgeu         t1, s4, 719f
                  beq          s10, s9, 720f
                  blt          t6, ra, 719f
                  bne          t2, s3, 722f
711:              sltiu        t4, s6, -1908
                  bge          zero, a6, 713f
713:              ori          t3, s9, 1061
                  auipc        gp, 923808
                  andi         t3, tp, 1134
                  slti         tp, t2, 1574
                  srai         s3, t5, 22
                  and          a1, a3, s5
719:              sub          s7, s1, a7
720:              sltu         s1, s7, a5
                  beq          s9, t0, 723f
722:              xori         a3, a1, -1380
723:              auipc        s3, 748797
                  bgeu         a3, t5, 738f
                  beq          s1, s3, 730f
                  sll          t3, s5, a6
                  sll          t2, s10, a0
                  and          t4, s4, ra
                  srai         tp, t0, 11
730:              sltu         a2, s0, s0
                  add          s1, gp, gp
                  ori          tp, s8, 514
                  lui          a5, 532888
                  slti         t6, t5, 72
                  blt          s7, s8, 750f
                  sltu         s3, zero, a3
                  bltu         t6, s3, 748f
738:              ori          t5, ra, 1218
                  slli         a4, s6, 30
                  auipc        t2, 890679
                  bge          t4, s1, 750f
                  slti         a4, s2, 1503
                  srai         t5, a2, 21
                  sltiu        t2, t5, -1966
                  slti         t1, a5, -1560
                  srai         a2, t5, 27
                  srli         t4, a5, 18
748:              ori          a4, s7, -1807
                  blt          t1, a4, 765f
750:              sub          a4, s0, a1
                  andi         zero, t3, 268
                  bge          a0, a1, 771f
                  bltu         s7, a6, 765f
                  add          a3, t1, s2
                  auipc        s11, 418240
                  auipc        t2, 809758
                  beq          s4, s3, 762f
                  ori          t2, zero, -195
                  sll          a3, gp, t4
                  srli         s6, s7, 31
                  blt          s8, a7, 776f
762:              sll          s6, t5, a5
                  andi         a5, a5, -1197
                  or           a0, s8, s5
765:              add          s9, t0, a4
                  srai         a3, t2, 29
                  bgeu         sp, s4, 774f
                  sub          a5, s4, s0
                  slt          t5, t5, s10
                  sra          s3, t6, s4
771:              bge          t2, tp, 791f
                  sll          s11, a0, s2
                  bne          a5, s7, 774f
774:              bge          a4, t1, 782f
                  srl          t0, a0, ra
776:              auipc        s9, 702171
                  beq          t5, s6, 792f
                  slti         s1, t4, 2019
                  slt          gp, a2, t6
                  bltu         t3, a4, 788f
                  nop
782:              and          t4, a3, a7
                  slt          a1, s5, t0
                  and          a1, s0, a3
                  sltu         t0, s2, a5
                  nop
                  auipc        a3, 438176
788:              bgeu         t2, a0, 793f
                  bne          s11, a0, 792f
                  andi         s11, a7, 138
791:              bgeu         s0, s0, 796f
792:              srli         s6, s11, 29
793:              xor          t2, a4, s0
                  slti         t5, s7, -507
                  lui          t3, 1026665
796:              bne          a7, a4, 810f
                  srai         t3, a4, 30
                  add          gp, t4, a4
                  xori         a2, s9, -609
                  srli         s9, a6, 16
                  auipc        t4, 704396
                  auipc        ra, 450050
                  addi         a2, gp, 1490
                  sra          s3, a3, s1
                  xori         a5, s9, 1213
                  sltu         s5, zero, s4
                  slli         t4, s1, 31
                  xor          t2, zero, s5
                  blt          s1, t5, 818f
810:              srai         s10, t6, 18
                  bne          s1, s8, 812f
812:              srli         a6, a5, 11
                  ori          t1, t1, -809
                  beq          a4, s1, 831f
                  slli         t0, s10, 31
                  xor          gp, s10, ra
                  bge          s3, t1, 828f
818:              nop
                  bgeu         s3, s5, 835f
                  auipc        gp, 238098
                  slli         t0, t4, 15
                  bgeu         t2, t3, 824f
                  beq          a0, t4, 835f
824:              sll          s10, s8, s6
                  lui          s11, 903021
                  bltu         s1, t4, 834f
                  add          a7, sp, s8
828:              bgeu         a2, s11, 840f
                  sra          t0, s0, t0
                  bne          t6, a2, 831f
831:              slt          a7, t0, s2
                  slti         zero, a0, -511
                  blt          a1, t0, 840f
834:              andi         s7, t4, 314
835:              or           t2, s0, s4
                  sll          t2, a2, s8
                  xori         a0, tp, -1959
                  bne          s0, s6, 848f
                  sub          s6, s10, tp
840:              auipc        a0, 143868
                  srl          t1, a7, s8
                  xor          a5, ra, ra
                  bltu         a2, s8, 863f
                  nop
                  bne          t4, t5, 857f
                  srli         sp, ra, 27
                  srl          a0, s2, t6
848:              srli         a7, a6, 30
                  beq          sp, s3, 864f
                  srai         s6, t1, 3
                  nop
                  ori          a6, sp, 1082
                  sub          a4, a5, gp
                  and          a5, tp, t1
                  bltu         a4, s4, 867f
                  sra          s8, a1, t6
857:              slti         sp, t0, 546
                  slt          t4, s8, a0
                  sll          a0, s11, t4
                  bne          t4, s3, 877f
                  srli         tp, ra, 26
                  srl          s3, s9, tp
863:              beq          s8, ra, 879f
864:              slt          a1, ra, s10
                  xori         t0, s11, 479
                  sltiu        s10, a5, -1726
867:              srli         a3, a2, 5
                  srl          s6, s5, zero
                  or           ra, a1, s2
                  bge          a5, tp, 875f
                  sub          a4, a7, s8
                  slt          a4, ra, s6
                  or           tp, s5, a3
                  sltiu        tp, a4, -1846
875:              andi         t4, t3, -899
                  sra          s5, s3, s8
877:              slti         a4, a4, 1512
                  srai         t0, t1, 20
879:              nop
                  srli         s3, a2, 26
                  srli         a5, s3, 15
                  sltiu        t0, a4, -1458
                  slti         a5, s5, -1172
                  bne          s7, a0, 901f
                  bltu         s4, a7, 893f
                  bgeu         a2, t4, 898f
                  andi         s11, ra, -421
                  lui          t6, 382001
                  srai         s6, s10, 27
                  xor          s6, a3, t3
                  nop
                  beq          t3, a1, 907f
893:              srai         a7, a5, 26
                  or           a7, s4, t6
                  beq          zero, a2, 896f
896:              srai         t3, t2, 28
                  srai         a7, tp, 23
898:              or           gp, sp, s8
                  addi         a4, ra, -266
                  slt          s3, t5, t3
901:              sltiu        a2, a2, 566
                  srl          t3, s0, t2
                  xor          s8, a2, t0
                  srai         gp, s9, 23
                  ori          t3, ra, -958
                  or           ra, a4, s10
907:              sll          a5, s1, a5
                  sltu         t4, t3, t2
                  xor          a6, ra, s2
                  bge          a2, gp, 929f
                  blt          a5, ra, 926f
                  bge          ra, s4, 928f
                  xori         t3, s9, 1359
                  lui          s6, 157714
                  bge          s5, t3, 927f
                  sub          sp, gp, sp
                  add          tp, s1, gp
                  ori          t0, t3, -833
                  nop
                  slti         a6, s7, -1361
                  sll          t2, t4, ra
                  sltu         t6, sp, s6
                  or           gp, t3, t6
                  bge          t0, t4, 926f
                  andi         s11, s8, -2004
926:              sra          s3, a2, s5
927:              srai         t1, s2, 29
928:              xor          tp, a3, a1
929:              andi         t3, t0, -1999
                  ori          a4, s11, -1165
                  srli         a0, s0, 23
                  xori         s5, a0, 155
                  xor          s9, gp, t1
                  bne          a5, s8, 946f
                  srai         s3, s2, 6
                  bltu         s7, s10, 951f
                  bgeu         t1, t6, 956f
                  bge          gp, t5, 941f
                  srli         s10, a7, 16
                  beq          a3, a5, 945f
941:              bgeu         t2, s1, 953f
                  sltiu        a5, gp, 261
                  bltu         s4, s5, 959f
                  bgeu         s4, s11, 961f
945:              bgeu         t1, s6, 957f
946:              beq          a1, a1, 961f
                  sra          t5, t5, sp
                  beq          s2, t1, 959f
                  add          s3, a1, s3
                  ori          t3, s5, 1726
951:              bge          s2, s2, 963f
                  slt          s10, ra, s10
953:              add          a7, a1, ra
                  srai         sp, s6, 17
                  bgeu         a5, a2, 956f
956:              auipc        s5, 28793
957:              bge          s5, ra, 958f
958:              auipc        s10, 458168
959:              bgeu         s4, s10, 969f
                  nop
961:              sra          a4, sp, s9
                  slli         sp, a5, 0
963:              nop
                  sra          t4, s9, a5
                  sll          s9, zero, a0
                  xor          s1, a6, t6
                  bge          a5, s4, 975f
                  bne          s8, a6, 973f
969:              srli         a6, s5, 15
                  slti         s11, t2, 135
                  bgeu         t3, a2, 979f
                  sltu         s6, s5, s6
973:              bgeu         t4, s5, 980f
                  xor          zero, t0, t0
975:              srli         t1, s2, 23
                  sub          t6, a7, s7
                  slli         t5, a3, 4
                  slti         t1, tp, -125
979:              bne          a0, sp, 996f
980:              add          s9, a4, s7
                  srai         s11, s7, 15
                  auipc        sp, 451132
                  lui          s9, 587402
                  xori         zero, a3, 822
                  blt          s0, t6, 999f
                  andi         t0, s0, 266
                  beq          s3, tp, 1004f
                  andi         a2, s2, -1438
                  auipc        s6, 777206
                  bltu         a4, s4, 991f
991:              sltu         s3, t6, t2
                  srli         tp, s5, 23
                  add          s9, s0, tp
                  sll          a5, s2, s3
                  ori          s3, t6, -1781
996:              add          t5, t0, sp
                  beq          a1, s2, 1008f
                  sltiu        a5, t5, -508
999:              srai         s11, s2, 8
                  srai         t1, a5, 1
                  sra          t0, t2, a0
                  addi         a1, a1, 710
                  bgeu         sp, ra, 1008f
1004:             or           t5, s11, s7
                  slli         gp, tp, 20
                  sra          ra, sp, t5
                  slli         a5, a5, 14
1008:             sra          a7, s11, t1
                  xor          a7, s10, s10
                  srl          t1, tp, s5
                  lw           s8, 4(s2)
                  addi         s2, s2, 56
                  lui          t6, 610686
                  slli         a1, t2, 25
                  srai         s3, s10, 28
                  nop
                  and          a3, gp, s6
1379:             addi x13, x24, 0
1379:             jalr x13, x13, 0
sub_9:            slli         ra, sp, 16
                  sub          s1, s11, zero
                  slt          s9, s5, s3
                  andi         t3, a3, -609
                  sub          t2, a2, s2
                  or           t5, ra, s4
                  lui          t2, 413543
                  addi         s2, s2, -16
                  nop
                  sw           s8, 4(s2)
                  addi         a2, a7, -1565
                  la           sp, region_0+1889 #start riscv_load_store_rand_instr_stream_0
                  lb           t3, -40(sp)
                  sll          s9, s1, a6
                  lhu          s3, -63(sp)
                  slti         t5, s9, -1459
                  lbu          t5, -22(sp)
                  srl          a5, t4, a1
                  srl          a1, a6, s1
                  srl          a2, t1, sp
                  lb           s7, 6(sp)
                  sb           a2, -11(sp)
                  slli         a1, t5, 9
                  sb           s2, 30(sp)
                  lhu          s9, -13(sp)
                  lb           t3, -60(sp)
                  sb           a7, -50(sp)
                  srai         tp, s4, 29
                  sltu         a4, a7, a2
                  sb           s2, 18(sp)
                  ori          s5, s7, -638
                  lh           s5, 21(sp)
                  sb           t2, 54(sp)
                  sh           s5, 7(sp)
                  lw           s7, 43(sp)
                  sb           t3, 16(sp)
                  lbu          s6, -58(sp)
                  srli         a2, t3, 21
                  lw           s8, -61(sp)
                  sb           s7, -64(sp)
                  lh           s5, -41(sp)
                  lhu          s6, 25(sp) #end riscv_load_store_rand_instr_stream_0
                  la           s10, region_1+1110 #start riscv_load_store_rand_instr_stream_1
                  lbu          s7, -241(s10)
                  srai         tp, s4, 10
                  sh           a5, -136(s10)
                  or           zero, t5, gp
                  auipc        gp, 770554
                  auipc        a6, 428037
                  sb           t0, -61(s10)
                  lb           s9, -145(s10)
                  lh           a4, 144(s10)
                  lb           t3, -148(s10)
                  lhu          t3, 66(s10)
                  or           t1, s8, a7
                  lw           gp, 46(s10)
                  xor          t3, s11, tp
                  lh           a1, 2(s10)
                  lb           a0, 123(s10)
                  sb           s8, 81(s10)
                  srl          t5, a7, gp
                  sh           s3, 22(s10)
                  and          s1, tp, s1
                  addi         a7, gp, 1678
                  sb           a4, -94(s10)
                  lw           sp, 234(s10)
                  sb           s7, -93(s10)
                  addi         t6, s6, -401
                  or           s8, s0, s2
                  lbu          s1, -1(s10)
                  slli         a1, t5, 21
                  srai         s7, t6, 24
                  auipc        a3, 626605
                  lh           a0, -62(s10)
                  ori          gp, t5, -313
                  lbu          s1, -28(s10)
                  auipc        t5, 196741
                  lbu          t1, 219(s10)
                  add          s6, t6, s2
                  andi         sp, s3, 202
                  lui          t3, 879971
                  sb           a3, 92(s10)
                  lb           s1, 143(s10)
                  srl          a1, s5, a1
                  slt          ra, t2, t2
                  srl          t0, tp, a5
                  lh           gp, -178(s10)
                  slli         s3, a1, 12
                  sltu         t5, tp, t2
                  sb           t4, 149(s10)
                  lbu          a3, -206(s10)
                  lbu          t2, -79(s10)
                  sh           t2, 234(s10)
                  slti         s6, tp, -210
                  lbu          t2, 95(s10)
                  lbu          a0, -12(s10)
                  lbu          s5, -59(s10) #end riscv_load_store_rand_instr_stream_1
                  sra          t3, gp, s5
                  sltiu        s10, s1, 303
                  and          s10, zero, s8
                  sra          t3, gp, s7
                  bne          s1, tp, 22f
                  auipc        sp, 15787
                  slti         a2, s10, 265
                  add          t3, t1, s4
                  or           s9, a0, s9
                  xor          ra, tp, s4
                  srai         s5, gp, 28
                  sra          t6, a2, tp
                  sra          tp, ra, ra
                  andi         s11, s11, 1820
                  xor          a0, a4, s10
                  sll          t6, s4, a2
                  and          t4, sp, s1
                  slti         ra, zero, 216
                  srli         t4, s9, 30
                  srli         tp, a4, 17
                  andi         s10, s5, -1869
                  sltiu        a4, a5, -1601
22:               or           a7, s5, t5
                  blt          ra, a3, 38f
                  lui          a5, 834148
                  andi         t5, t1, 792
                  srl          a0, sp, s3
                  ori          s7, s5, 68
                  sltu         s8, a1, s1
                  beq          s5, s0, 32f
                  add          a5, sp, t3
                  bltu         a5, s8, 43f
32:               sra          a1, s2, t0
                  bltu         s9, s6, 38f
                  xori         s6, s5, -346
                  bltu         s10, a5, 49f
                  slti         t6, sp, -376
                  xori         t0, t4, 357
38:               sltiu        t3, s11, 909
                  nop
                  ori          s6, s11, -761
                  srai         s10, a4, 22
                  sll          tp, s8, s5
43:               bltu         t4, a0, 54f
                  srai         a6, a4, 9
                  ori          a3, a6, 689
                  slti         t3, t5, 1539
                  addi         s6, a1, -1576
                  sll          a0, a0, a7
49:               andi         a7, s2, -1089
                  blt          t2, s3, 66f
                  or           s9, s10, s2
                  sltiu        a7, ra, 8
                  andi         t0, t6, 1023
54:               bne          zero, s7, 73f
                  srli         a3, s11, 31
                  lui          t1, 8671
                  srl          s5, a5, s6
                  andi         s10, a7, 1055
                  ori          s11, ra, 1510
                  srl          a7, s7, tp
                  slli         t4, a0, 16
                  srli         s6, zero, 24
                  bge          a0, s3, 67f
                  srai         a4, s5, 22
                  slti         t4, gp, -192
66:               xor          a7, tp, s0
67:               sltu         s9, s7, s5
                  srai         s5, gp, 5
                  beq          a1, s6, 82f
                  bne          s10, s8, 73f
                  xor          s6, a0, s1
                  bgeu         a0, s5, 84f
73:               lui          t2, 802096
                  slti         a6, s0, 1569
                  sra          t5, t1, s7
                  addi         a3, a0, 1827
                  ori          s6, a6, -576
                  bgeu         s2, ra, 89f
                  ori          s6, a6, 1726
                  beq          s8, s2, 89f
                  sub          s7, s6, s11
82:               bgeu         a1, t1, 97f
                  srl          t4, a5, a5
84:               sltu         a1, s10, t6
                  add          gp, s11, gp
                  bne          a3, a6, 100f
                  sra          t6, s9, t5
                  sltiu        t1, a0, -614
89:               nop
                  bne          a3, a3, 94f
                  add          t1, s4, t2
                  bne          t0, s11, 106f
                  sltiu        s8, s1, -625
94:               andi         s8, s9, 649
                  bgeu         t5, t5, 113f
                  xori         a2, t3, 114
97:               add          t3, zero, t1
                  andi         a1, t4, 1813
                  lui          a0, 717841
100:              sra          t3, a0, s9
                  bltu         a1, s3, 115f
                  ori          ra, a6, 1311
                  blt          a1, s7, 110f
                  bgeu         s6, zero, 110f
                  xori         t4, gp, 327
106:              xori         ra, a6, -276
                  bltu         a1, t0, 118f
                  sltiu        t1, t2, -1527
                  bge          t2, s2, 115f
110:              ori          s8, a2, -807
                  sra          s10, a1, a3
                  bne          s5, a7, 121f
113:              bgeu         s7, a7, 132f
                  addi         ra, a7, -1157
115:              or           s10, s5, t6
                  beq          ra, s5, 121f
                  sltu         s11, a4, s4
118:              nop
                  sltiu        a6, s5, -277
                  bgeu         s4, s10, 122f
121:              bge          sp, t2, 135f
122:              bgeu         t4, t0, 134f
                  srli         t0, a2, 4
                  sltiu        s1, tp, -1851
                  srai         gp, a7, 1
                  ori          a6, tp, 1188
                  slti         t2, s10, -1378
                  srai         t5, ra, 13
                  sltiu        t0, a3, -608
                  sra          sp, a5, a4
                  bne          s6, sp, 149f
132:              andi         a6, a0, -718
                  sub          t5, s2, a4
134:              nop
135:              sltu         a3, a2, t4
                  sltiu        a7, zero, 1140
                  and          t6, a4, ra
                  and          s5, a5, s1
                  slt          tp, s7, s5
                  slt          t5, zero, s10
                  srl          t6, t4, a2
                  blt          s3, a7, 158f
                  andi         t0, sp, 1416
                  andi         t6, s3, 1850
                  nop
                  bne          a4, s2, 159f
                  auipc        t6, 921077
                  addi         t6, tp, -1239
149:              bge          a1, zero, 160f
                  nop
                  bgeu         a2, s5, 165f
                  sltiu        ra, s2, -1834
                  bne          s1, t6, 159f
                  or           t4, a1, a6
                  bltu         gp, a5, 158f
                  beq          tp, t6, 170f
                  slt          s6, t1, a3
158:              xori         a1, s9, -1871
159:              xor          s10, t1, gp
160:              bltu         s6, a7, 174f
                  bne          s8, t3, 170f
                  sub          a2, s7, s10
                  srl          t1, s10, s11
                  sub          s10, s1, sp
165:              bne          t2, s11, 170f
                  srli         t3, s1, 11
                  and          t6, a0, a7
                  sra          t5, s11, a7
                  bgeu         t5, tp, 184f
170:              srai         t5, a5, 24
                  sub          s10, t3, s10
                  bgeu         ra, t3, 179f
                  bltu         t1, t6, 192f
174:              srli         tp, a6, 28
                  auipc        s11, 491054
                  lui          gp, 469534
                  xor          a3, s0, a2
                  auipc        t1, 910124
179:              sra          s11, sp, gp
                  srli         s5, a5, 1
                  ori          s10, s10, 1708
                  sub          s5, a0, t6
                  andi         s5, zero, 434
184:              and          s9, a4, t3
                  sub          a6, s0, a7
                  or           s6, a3, s6
                  blt          s4, tp, 196f
                  blt          t0, a2, 206f
                  and          a6, t6, s9
                  sltu         s9, s0, s6
                  ori          a2, s1, 508
192:              beq          a1, sp, 211f
                  slti         gp, a2, -1310
                  slt          t3, a7, t3
                  blt          t0, t0, 200f
196:              srl          t4, s0, a7
                  beq          s0, s8, 208f
                  sra          sp, tp, s0
                  add          a0, s4, sp
200:              ori          t3, a0, -1579
                  sub          s5, a0, t3
                  srli         s9, a6, 29
                  srai         a5, a3, 1
                  beq          t6, t0, 208f
                  auipc        a0, 679711
206:              bltu         a1, ra, 210f
                  auipc        sp, 141540
208:              bge          s8, zero, 214f
                  lui          s3, 354360
210:              or           a1, t6, s9
211:              sll          s6, s1, s4
                  andi         s11, t0, 1969
                  srli         s8, tp, 25
214:              srai         zero, a6, 21
                  sltiu        zero, s1, -1415
                  nop
                  xor          a7, t1, a3
                  andi         a7, s11, -2020
                  slt          a0, s4, t4
                  sub          t2, t5, ra
                  bgeu         a2, a0, 236f
                  srai         a4, t3, 18
                  blt          s11, s7, 234f
                  sub          s1, s0, t4
                  bne          s10, s4, 239f
                  or           t5, s7, s0
                  sra          t0, a0, a0
                  sub          t2, a4, s0
                  slli         t2, a7, 5
                  nop
                  addi         a1, s10, -1259
                  andi         a3, s3, -1460
                  auipc        a4, 662060
234:              bltu         t1, s6, 237f
                  andi         t1, s0, 1716
236:              nop
237:              bne          t0, sp, 239f
                  nop
239:              sltu         s11, tp, s3
                  sra          a4, a6, a7
                  beq          ra, s0, 253f
                  sltu         s5, a7, s0
                  add          s7, a6, zero
                  auipc        a0, 675379
                  sltu         a4, s0, a7
                  xor          t6, s3, s4
                  beq          a4, zero, 261f
                  and          zero, t2, s9
                  bltu         t0, a4, 264f
                  lui          s6, 1028312
                  bltu         a0, a3, 265f
                  bltu         ra, a5, 256f
253:              blt          t4, t5, 265f
                  ori          t4, ra, 1378
                  sltiu        s8, tp, -1509
256:              auipc        s7, 492260
                  xor          t1, t0, t3
                  andi         s3, t3, 237
                  xori         a0, s7, -1545
                  blt          s7, s0, 264f
261:              sltiu        s3, gp, 187
                  andi         s11, gp, 1366
                  sltu         s7, t5, t3
264:              auipc        s8, 30653
265:              slli         a1, a5, 18
                  bne          ra, s7, 269f
                  beq          a7, a3, 273f
                  auipc        s6, 1030623
269:              andi         s3, a7, -353
                  sltu         t5, t4, a5
                  sll          s5, a6, t3
                  or           t5, s11, s8
273:              blt          s11, a6, 292f
                  slli         a0, a0, 29
                  slt          t6, s2, t1
                  blt          t1, sp, 292f
                  and          t3, t2, a1
                  beq          s0, ra, 291f
                  sub          a5, s10, t6
                  beq          a2, t4, 289f
                  srl          s5, s3, s0
                  bltu         s8, t0, 300f
                  sra          s1, a4, t6
                  add          s6, a0, s11
                  sltu         a1, a3, gp
                  srl          t6, t1, tp
                  bgeu         s4, gp, 290f
                  slti         t5, t6, -979
289:              bgeu         s7, t0, 303f
290:              sll          s9, a1, s0
291:              slt          s7, t3, t2
292:              srai         t1, a3, 13
                  sltu         a1, s1, t1
                  add          s6, t3, s7
                  bge          s7, a4, 307f
                  bge          a6, a7, 301f
                  ori          ra, s1, -688
                  sra          a1, s7, s3
                  bltu         sp, a5, 307f
300:              xori         a2, t2, 1007
301:              beq          t2, a3, 306f
                  srli         s9, s7, 31
303:              xori         s8, s5, -765
                  srli         t3, zero, 19
                  xori         s6, t0, -1344
306:              beq          a3, a2, 307f
307:              sub          a5, s0, t2
                  srai         a2, s10, 15
                  slli         zero, s8, 31
                  ori          s6, s6, -1889
                  nop
                  sra          a6, t5, s3
                  lw           s8, 4(s2)
                  sltiu        gp, s6, 1825
                  addi         s2, s2, 16
                  and          ra, t1, s5
414:              addi x10, x24, 0
414:              jalr x10, x10, 0
sub_5:            srli         a0, t2, 5
                  addi         s2, s2, -16
                  lui          s3, 605661
                  sll          s11, a0, t1
                  sltiu        s6, s3, -626
                  sw           s8, 4(s2)
                  xori         sp, t2, -1877
                  sltu         s10, a1, a2
                  sltu         zero, t5, a7
                  lui          t5, 93922
                  slli         a2, s11, 17
                  sltiu        s3, t3, 1846
                  slli         t3, s2, 30
                  sltiu        s10, a7, 28
                  bne          s10, t1, sub_5_j10 #branch to jump instr
                  sltiu        t4, a4, -1222
                  slli         a1, t5, 2
                  xor          t5, zero, t1
sub_5_j10:        jal          s8, sub_9 #jump sub_5 -> sub_9
                  or           t5, a0, t3
                  srai         t4, s7, 31
                  xori         s11, s7, 701
                  xor          a5, s4, sp
                  xori         s11, t1, -740
                  xori         a7, zero, 62
sub_5_j11:        jal          s8, sub_7 #jump sub_5 -> sub_7
                  sra          a2, a3, ra
                  la           s1, sub_7
                  lui          tp, 806125
                  sub          a6, a7, a4
                  addi         s1, s1, -71
                  slli         a3, a4, 6
                  bne          a6, sp, sub_5_j12 #branch to jump instr
                  sltiu        a4, t2, -843
                  lui          t3, 56434
sub_5_j12:        jalr         s8, s1, 71 #jump sub_5 -> sub_7
                  srl          a0, t6, s4
                  addi         ra, s4, -1113
                  bgeu         s4, s4, 7f
                  srli         s5, t4, 7
                  bge          a0, a2, 19f
                  andi         a5, a1, 194
                  blt          gp, t6, 19f
7:                addi         s3, s3, -121
                  blt          t2, a5, 17f
                  srai         t5, s7, 6
                  ori          a0, s10, 317
                  auipc        a6, 432718
                  sll          t4, s4, t2
                  bge          tp, a1, 19f
                  lui          s3, 886726
                  sll          zero, zero, s9
                  nop
                  or           t4, t1, s7
                  srai         s1, t1, 4
                  xor          tp, s2, s2
                  srl          s8, t6, a1
                  xor          ra, sp, s7
                  sltiu        s10, s1, -1044
                  sub          s7, ra, a3
                  xori         a7, s2, -668
                  srai         t1, s2, 22
sub_5_j9:         jal          s8, sub_6 #jump sub_5 -> sub_6
17:               beq          a2, tp, 20f
                  andi         ra, s4, -129
19:               ori          t3, s8, -86
20:               bltu         t2, s2, 31f
                  auipc        s3, 428363
                  xor          a0, a4, t5
                  slti         a7, s2, 1002
                  bgeu         s3, t4, 27f
                  bgeu         ra, t4, 40f
                  sltiu        s5, a7, 510
27:               xori         a1, t1, -1563
                  sltu         a2, t6, t3
                  srli         t6, a1, 26
                  slt          s3, s9, s11
31:               sltiu        tp, a4, 1509
                  srl          s3, a5, sp
                  beq          a3, t0, 45f
                  bgeu         a3, s6, 43f
                  bltu         t6, t0, 43f
                  sra          s3, s1, a3
                  beq          a7, s1, 40f
                  addi         s1, t5, -869
                  ori          t3, s7, -1006
40:               sltiu        t4, s7, 592
                  srl          a2, tp, s5
                  sltiu        s8, s5, 1433
43:               bne          a4, s1, 47f
                  ori          t1, s2, 447
45:               or           a2, t1, a7
                  slti         s3, t5, 1065
47:               slti         s8, tp, -1977
                  auipc        t4, 252594
                  slli         t0, s9, 1
                  slt          a5, a4, s4
                  sltu         a5, gp, a2
                  add          s10, t0, s9
                  beq          s3, s6, 69f
                  ori          a2, zero, -1962
                  ori          a7, tp, 707
                  xor          s7, sp, t5
                  srli         t5, t5, 30
                  and          a1, s11, a3
                  sra          tp, a7, s10
                  slli         sp, tp, 3
                  slt          t5, ra, s5
                  or           s6, s9, a4
                  xori         s8, a7, -491
                  srl          gp, a6, s4
                  bge          s11, s5, 83f
                  add          t1, t1, s2
                  blt          a7, t3, 87f
                  andi         t3, s10, -1658
69:               sra          t2, s9, t3
                  andi         tp, ra, -178
                  lui          t6, 177546
                  add          ra, a3, zero
                  sll          t1, t4, zero
                  sub          t3, a1, sp
                  sub          a1, t2, s10
                  sub          s1, t6, sp
                  srai         s8, s2, 31
                  slli         s6, s9, 10
                  andi         s5, a0, 968
                  sra          zero, t2, s2
                  bge          a5, t1, 91f
                  slli         a3, a1, 25
83:               sltu         t6, s0, ra
                  addi         a4, t1, -784
                  xori         s8, s9, 32
                  srai         s11, t4, 6
87:               beq          s5, s0, 98f
                  bge          a6, s6, 100f
                  sra          s11, zero, a7
                  sll          tp, s2, s11
91:               xor          s3, sp, s10
                  lui          zero, 1015437
                  xori         t1, s6, -1455
                  srli         a4, a5, 19
                  blt          a4, t5, 96f
96:               beq          gp, a6, 111f
                  blt          a7, s3, 99f
98:               bgeu         t2, gp, 116f
99:               andi         s10, tp, 1904
100:              sub          t3, a5, a7
                  sra          a4, s10, t3
                  or           s11, s3, t1
                  slli         a6, t3, 29
                  beq          ra, tp, 123f
                  andi         zero, t0, 642
                  auipc        a1, 674423
                  addi         s7, a1, 1132
                  andi         tp, s8, 94
                  xor          t3, a2, s2
                  auipc        sp, 543471
111:              xori         ra, a2, 962
                  srli         a4, a1, 15
                  sra          s11, s4, t5
                  xor          s1, s6, s6
                  sll          t2, s1, a4
116:              slt          s11, a0, t6
                  andi         s7, a7, 557
                  lui          s1, 804920
                  andi         s8, gp, 1451
                  srl          a5, t3, t4
                  addi         a2, t0, -131
                  ori          s3, a2, -592
123:              slt          ra, a7, t3
                  addi         t0, t1, -637
                  beq          t1, a6, 130f
                  bltu         t5, a5, 135f
                  addi         t1, t2, -1889
                  sra          a2, s9, s7
                  srl          s10, a4, t4
130:              xor          tp, s8, sp
                  sra          a0, a5, tp
                  sub          a3, t3, s4
                  xori         s3, a3, 693
                  add          s3, s6, s10
135:              bne          sp, s8, 141f
                  blt          a1, s7, 152f
                  slti         tp, t2, -434
                  lui          a7, 640951
                  lui          s11, 108938
                  bne          s8, s3, 159f
141:              sltiu        t6, t0, -278
                  slt          s1, t3, s5
                  lui          gp, 745307
                  nop
                  bge          gp, s2, 151f
                  addi         s5, t1, -518
                  bgeu         t3, s1, 152f
                  ori          s3, a6, -1486
                  srai         a3, s10, 11
                  bge          t1, sp, sub_5_j8 #branch to jump instr
                  slt          t1, s4, t3
                  sltu         t6, a6, s9
                  srli         t5, t5, 4
                  slt          s10, s9, a5
                  auipc        tp, 628771
                  sll          a7, s0, a7
sub_5_j8:         jal          s8, sub_8 #jump sub_5 -> sub_8
                  auipc        t5, 709126
151:              ori          s6, gp, 6
152:              xori         gp, t6, -160
                  srai         t5, a7, 29
                  ori          t5, t6, 1592
                  bltu         s6, s8, 170f
                  xor          gp, t4, t2
                  sltiu        a7, s0, -661
                  bgeu         tp, s4, 161f
159:              bgeu         s3, s1, 162f
                  sll          a7, t4, s8
161:              nop
162:              xor          a3, t6, a2
                  or           zero, t6, s10
                  sub          a2, s6, s4
                  srl          zero, a4, s11
                  xor          a6, a2, a6
                  and          a3, sp, t5
                  sltu         s11, t3, s1
                  lui          a3, 855936
170:              or           t0, a1, a3
                  sll          a3, gp, a4
                  auipc        t0, 63338
                  srli         a2, s7, 24
                  sra          t3, a5, s9
                  ori          s3, a6, 559
                  add          t2, a7, sp
                  sll          a0, t2, s1
                  sub          a6, sp, t6
                  sltiu        gp, s9, 1965
                  srl          gp, zero, a1
                  addi         tp, s7, 1155
                  add          s11, ra, t0
                  sltu         t5, gp, s3
                  beq          s8, gp, 195f
                  slti         s8, s6, -100
                  sltiu        s9, s4, 955
                  bltu         s4, a5, 206f
                  sll          a0, a3, t3
                  beq          gp, s8, 190f
190:              srl          a0, s9, s8
                  ori          t2, s5, 1763
                  add          gp, s11, s10
                  andi         a4, a7, -686
                  ori          a3, zero, 498
195:              sub          a5, a5, a4
                  sll          t4, s9, a5
                  srai         gp, s4, 16
                  slli         s1, tp, 29
                  and          sp, t6, s8
                  xor          t3, a7, a4
                  sll          zero, t5, ra
                  sra          t0, t5, gp
                  ori          t1, sp, -1417
                  xori         t2, a4, -1796
                  sltu         a4, t4, s0
206:              or           s5, t1, ra
                  xori         a5, a7, 1868
                  xori         t1, sp, -1714
                  sra          a2, tp, tp
                  auipc        s7, 836118
                  sra          a2, s7, s7
                  sub          s5, t0, s3
                  beq          gp, a1, 219f
                  bge          t0, zero, 226f
                  bne          gp, t5, 230f
                  blt          zero, zero, 225f
                  blt          zero, a1, 219f
                  srli         t1, s1, 3
219:              lui          t2, 820160
                  srli         s6, a7, 11
                  sub          s8, a6, s8
                  xor          tp, t6, t0
                  auipc        s11, 916476
                  la           sp, region_1+809 #start riscv_load_store_rand_instr_stream_0
                  sb           s1, -110(sp)
                  lw           t0, -561(sp)
                  add          s9, sp, s0
                  lh           s8, 345(sp)
                  lbu          a1, -140(sp)
                  lbu          tp, -359(sp)
                  sltu         t6, s1, a5
                  lh           t6, -747(sp)
                  lb           a6, -435(sp)
                  andi         tp, s0, 1087
                  sh           s0, -7(sp)
                  lbu          t6, 1076(sp)
                  lh           t2, 445(sp)
                  sb           s9, -472(sp)
                  lb           gp, 1077(sp)
                  srli         gp, a6, 14
                  lw           s10, 631(sp)
                  lb           a3, -640(sp)
                  sw           zero, -477(sp)
                  sh           tp, -397(sp)
                  lbu          a5, -336(sp)
                  lh           a0, -565(sp)
                  sub          a1, a7, sp
                  lhu          a3, 751(sp)
                  lbu          s9, 300(sp)
                  sb           a0, -382(sp)
                  lbu          s6, 72(sp)
                  sb           s8, -427(sp)
                  lui          t5, 696079
                  sll          a6, t0, s5
                  slt          s10, s7, zero
                  lb           a1, 281(sp)
                  lbu          s3, -432(sp)
                  and          a5, t5, t2
                  xori         ra, s3, -1815
                  add          t0, a0, s5
                  lbu          s5, -168(sp)
                  lw           s11, 691(sp)
                  xori         s5, tp, 1826
                  lb           ra, -676(sp)
                  sb           s3, -64(sp) #end riscv_load_store_rand_instr_stream_0
                  sltiu        t3, sp, 1765
225:              srl          s9, zero, a5
226:              andi         t3, t6, 1460
                  lui          a0, 287583
                  sltu         t6, a2, a4
                  srai         tp, t2, 20
230:              slli         s11, s0, 15
                  srli         gp, s4, 7
                  nop
                  sltu         s8, t0, s10
                  beq          a4, a0, 240f
                  or           t2, a0, s9
                  srl          a0, s5, t2
                  sub          t0, t3, s7
                  srai         t2, s2, 1
                  slti         s6, s5, 195
240:              nop
                  xor          s1, t0, t1
                  sltu         t0, s1, a5
                  lw           s8, 4(s2)
                  sra          s1, s7, s6
                  addi         s2, s2, 16
                  sll          s10, a6, a0
                  sltiu        t5, a4, 862
                  nop
                  andi         t2, s3, -1873
346:              addi x19, x24, 0
346:              jalr x19, x19, 0
sub_1:            or           t2, a1, tp
                  bge          s9, a0, sub_1_stack_p
sub_1_stack_p:    addi         s2, s2, -16
                  slti         ra, s11, 552
                  sltu         a5, t1, a5
                  nop
                  addi         s10, s7, 1011
                  sw           s8, 4(s2)
                  sltiu        a1, t6, -444
                  slt          gp, a5, a7
                  sll          t5, a5, s0
                  addi         s10, a5, -1112
                  addi         a0, t1, -1140
                  ori          a1, gp, -1965
sub_1_j4:         jal          s8, sub_2 #jump sub_1 -> sub_2
                  la           s5, region_0+1282 #start riscv_load_store_rand_instr_stream_5
                  sra          s6, s9, s9
                  lb           s10, 589(s5)
                  sb           s11, -1256(s5)
                  xori         a0, tp, -1059
                  sh           s2, -184(s5)
                  lh           t0, -564(s5)
                  slti         zero, a5, -1824
                  slti         gp, a6, -1951
                  xori         s3, s2, -275
                  addi         s7, s10, 383
                  and          t5, a0, tp
                  lw           t5, -86(s5)
                  sh           s4, -836(s5)
                  lbu          s8, -521(s5)
                  andi         a2, a1, -145
                  sb           s3, 557(s5)
                  lw           s11, 262(s5)
                  lb           sp, -89(s5)
                  sltiu        a3, tp, 1728
                  sb           s6, 15(s5)
                  xor          a3, a3, s3
                  srli         ra, a6, 19
                  sltiu        t1, t0, -1736
                  or           t2, s1, s1
                  slti         a4, s9, -664
                  add          zero, a2, a2
                  lh           t2, -258(s5)
                  sb           a0, -416(s5) #end riscv_load_store_rand_instr_stream_5
                  la           gp, region_1+1 #start riscv_load_store_rand_instr_stream_2
                  slli         zero, t2, 0
                  lb           s5, 586(gp)
                  lhu          t0, 1869(gp)
                  and          s6, s7, a6
                  sb           t1, 904(gp)
                  lhu          s8, 1769(gp)
                  auipc        a3, 874505
                  addi         s10, a0, -1601
                  sltu         t5, a6, a2
                  srli         t1, s6, 10
                  nop
                  lbu          a7, 517(gp)
                  sh           a6, 561(gp)
                  ori          a4, s5, -723
                  sh           ra, 237(gp)
                  xor          s10, t5, t5
                  xor          t4, t0, s3
                  srli         tp, gp, 19
                  ori          zero, t5, 92
                  sb           s2, 1414(gp)
                  sb           a0, 1117(gp)
                  sub          s1, s6, s0
                  xor          t0, s2, t2
                  xori         s3, s1, -1812
                  lui          s9, 992208
                  sltiu        t6, a1, 919
                  lb           a7, 842(gp)
                  addi         sp, sp, -1957
                  lbu          zero, 1173(gp)
                  andi         a0, s10, -1665
                  sub          s10, a4, a7
                  sub          sp, gp, a2
                  sltu         s7, s3, s3
                  srli         a0, s7, 9
                  lbu          s11, 188(gp) #end riscv_load_store_rand_instr_stream_2
                  la           tp, region_1+1254 #start riscv_load_store_rand_instr_stream_4
                  and          t5, gp, a3
                  slt          t3, s0, t2
                  slt          a2, t6, a5
                  slt          s8, t1, a6
                  srli         s9, t4, 19
                  sb           s2, 11(tp)
                  lh           s10, -16(tp)
                  slt          t6, s11, t4
                  srai         a0, t6, 26
                  lb           s10, -9(tp)
                  lb           t0, 9(tp)
                  srli         a7, a6, 9
                  sb           a7, 16(tp)
                  lbu          a1, -8(tp)
                  lb           s10, 12(tp)
                  lbu          sp, -5(tp)
                  sub          s8, t6, a3
                  lb           s5, -12(tp)
                  sw           t4, 10(tp)
                  lui          s8, 513242
                  lb           t4, -9(tp)
                  nop
                  sll          t0, a5, gp
                  lb           s3, 13(tp)
                  andi         s8, s5, -188
                  sll          s7, gp, a1
                  slti         t0, zero, -2021
                  sub          s9, a1, t2
                  auipc        t5, 835748
                  sb           s2, 12(tp) #end riscv_load_store_rand_instr_stream_4
                  la           t4, region_1+1797 #start riscv_load_store_rand_instr_stream_6
                  xor          a7, a7, s10
                  xor          t2, a1, tp
                  lbu          s3, -4(t4)
                  auipc        s7, 144895
                  slt          s8, a4, a5
                  sltiu        s7, s8, -300
                  addi         s3, a6, 1227
                  add          s8, s3, s0
                  add          s9, a4, s1
                  sh           a7, 11(t4)
                  auipc        s3, 684612
                  sra          t0, s5, t2
                  lbu          a6, 9(t4)
                  xor          t5, t3, t1
                  andi         zero, s2, 1654
                  sb           a6, 16(t4)
                  or           sp, s2, s0
                  sb           gp, -14(t4)
                  lbu          s5, 14(t4)
                  lbu          a4, 8(t4)
                  srl          t3, a5, zero
                  sh           a0, -13(t4)
                  andi         ra, a5, -335
                  lbu          t0, 2(t4)
                  lhu          gp, 1(t4)
                  srli         sp, s5, 27
                  slt          s10, sp, a3
                  lh           a7, 1(t4)
                  xor          ra, s1, s0
                  andi         a0, s8, -1373
                  sub          sp, a3, s2
                  sub          t2, s4, tp
                  lb           a7, 10(t4)
                  lb           t0, -8(t4)
                  xor          a2, s10, ra
                  slti         a7, a2, 565
                  sltu         zero, s5, t4
                  addi         a7, gp, -952
                  or           s5, s5, s6
                  srli         s7, t3, 6
                  slli         t0, sp, 21
                  sub          a4, ra, s0
                  lh           t0, 5(t4) #end riscv_load_store_rand_instr_stream_6
                  la           s11, region_0+1119 #start riscv_load_store_rand_instr_stream_3
                  xor          a5, a1, t3
                  sw           t3, 5(s11)
                  and          t4, a4, t3
                  sh           t1, -29(s11)
                  xori         s1, a6, -382
                  lbu          tp, -16(s11)
                  lb           t4, -37(s11)
                  slti         t2, a0, 917
                  auipc        a1, 380288
                  slti         a6, s4, 1456
                  srai         t6, t5, 14
                  sh           t1, -5(s11)
                  xori         ra, s6, -254
                  srai         a4, zero, 27
                  auipc        gp, 72836
                  sb           s10, -48(s11)
                  sb           t4, 63(s11)
                  srli         s7, t6, 15
                  ori          zero, a5, -1429
                  sltu         t5, sp, ra
                  slt          t0, t4, t5
                  sw           s0, 25(s11)
                  lb           a7, 64(s11)
                  sra          gp, t5, s10
                  lbu          a0, 24(s11)
                  srli         a5, t0, 17
                  lb           a7, -8(s11)
                  lb           s10, 59(s11)
                  ori          t4, s2, -978
                  addi         t6, s9, -1618
                  slt          s7, s11, a4
                  slti         t1, a0, 2035
                  slt          t4, t1, s8
                  and          s9, s7, a7
                  andi         s8, a0, 384
                  lh           sp, -25(s11) #end riscv_load_store_rand_instr_stream_3
                  la           ra, region_1+1961 #start riscv_load_store_rand_instr_stream_1
                  lb           gp, 34(ra)
                  sb           tp, -30(ra)
                  srli         s7, a4, 3
                  slti         t5, gp, 219
                  srai         sp, a5, 28
                  lbu          a4, -50(ra)
                  srli         a5, s0, 9
                  nop
                  lb           zero, 37(ra)
                  slti         a0, zero, 1397
                  lbu          a3, -64(ra)
                  lbu          a5, -47(ra)
                  lb           s10, 34(ra)
                  lbu          s7, -38(ra)
                  srai         s5, s10, 29
                  lb           a1, -51(ra)
                  lbu          s9, 34(ra)
                  sb           sp, -51(ra)
                  sb           ra, -40(ra)
                  lb           a1, 22(ra)
                  xor          tp, s6, a1
                  slti         gp, a4, -304
                  slti         s9, a1, 1905
                  lbu          a1, 24(ra)
                  slli         s7, s0, 24
                  sb           t2, 12(ra) #end riscv_load_store_rand_instr_stream_1
                  sltiu        s3, t6, 1673
                  srai         t2, t5, 25
                  lui          a4, 200643
                  bltu         s6, s0, 18f
                  sub          t4, t6, t5
                  sub          a3, t2, t0
                  or           s9, a7, gp
                  and          sp, t3, sp
                  sll          s9, a7, s2
                  nop
                  slt          t4, t6, t4
                  sra          a1, a6, s7
                  bge          a0, s8, 14f
                  srl          a5, sp, t2
14:               add          t3, sp, a2
                  bgeu         zero, a1, 30f
                  and          s3, a2, s6
                  bge          t6, s6, 32f
18:               sll          s11, t6, sp
                  bne          t1, zero, 32f
                  srl          s6, gp, a2
                  bge          sp, sp, 34f
                  lui          t0, 151783
                  auipc        ra, 93977
                  blt          zero, t5, 37f
                  auipc        a1, 942459
                  lui          sp, 882001
                  slt          s5, a6, a1
                  xor          a5, ra, a7
                  sub          a3, s1, s4
30:               sltu         gp, s0, t3
                  xori         s10, t1, -1887
32:               sub          a2, t3, t1
                  slt          zero, a7, s2
34:               ori          sp, t5, -982
                  xori         t6, s3, 2030
                  sll          t2, tp, t3
37:               bgeu         sp, a7, 46f
                  xor          sp, a0, t0
                  ori          a7, s11, -490
                  addi         s8, s0, -1253
                  auipc        s5, 492168
                  lui          s3, 960939
                  add          zero, t3, a1
                  slt          gp, t6, zero
                  srl          s9, s2, s9
46:               bltu         zero, t1, 57f
                  sltiu        s9, s11, -1308
                  andi         t4, s10, 212
                  beq          a7, t6, 55f
                  srai         s11, s1, 1
                  ori          a6, s8, 1033
                  sub          sp, a2, t1
                  srai         a4, t6, 6
                  srai         s9, a2, 5
55:               xor          t6, a1, a7
                  add          a5, t3, a6
57:               bgeu         a3, s2, 73f
                  sll          a4, t0, a6
                  lui          a7, 718741
                  bge          s10, s2, 69f
                  sub          s7, t0, s3
                  andi         sp, s3, 116
                  bltu         s7, s0, 82f
                  xor          a3, s3, a0
                  bgeu         a5, s4, 73f
                  sub          t1, t1, s1
                  andi         s1, t6, 1630
                  srli         a0, t5, 8
69:               blt          a4, zero, 80f
                  sra          a2, s5, s4
                  ori          sp, s0, -1471
                  xor          a6, s10, ra
73:               sltiu        t5, s3, -292
                  bge          zero, a7, 93f
                  srli         s10, t5, 6
                  lui          a4, 440586
                  srl          a2, t2, t1
                  srli         t4, s9, 29
                  bge          t2, s1, 85f
80:               bgeu         t1, a3, 87f
                  xor          a7, t2, t3
82:               ori          tp, zero, 488
                  blt          a4, a7, 92f
                  bne          a2, sp, 90f
85:               bge          t3, t4, 100f
                  blt          a3, t5, 105f
87:               slti         a7, a7, -951
                  or           t6, s11, s11
                  slli         a2, a6, 10
90:               bltu         sp, s8, 108f
                  addi         s3, a3, 183
92:               slti         gp, a4, 595
93:               xor          t2, s11, a6
                  andi         a6, a3, 1972
                  slt          s8, ra, a4
                  ori          s9, ra, 1053
                  xor          s10, t2, t6
                  sltiu        s9, a3, 1405
                  ori          s10, ra, 295
100:              bgeu         t5, s1, 112f
                  beq          t6, s9, 115f
                  auipc        a0, 750677
                  beq          s4, gp, 123f
                  add          a3, s0, s0
105:              andi         a1, a2, -1486
                  xor          a6, s4, s4
                  and          t4, a2, s8
108:              auipc        a4, 987011
                  xor          t3, gp, t3
                  ori          t6, a6, 718
                  bne          a6, s3, 126f
112:              bne          s0, a2, 127f
                  bgeu         s11, a0, 131f
                  blt          zero, t1, 134f
115:              xor          s11, s7, s11
                  sub          s6, s7, s4
                  bgeu         s0, a7, 126f
                  bgeu         t4, gp, 127f
                  or           s7, s10, t4
                  and          s9, s2, ra
                  srai         zero, t2, 27
                  bgeu         gp, s11, 131f
123:              add          t6, a1, sp
                  sub          a0, t4, s3
                  slt          a3, s0, s8
126:              or           t3, s2, s1
127:              sub          s8, a0, a5
                  slt          s1, s8, t4
                  sra          zero, t6, s8
                  bne          s7, tp, 137f
131:              sltiu        s5, s6, -921
                  slti         a7, s5, -14
                  addi         s7, zero, 1388
134:              lui          tp, 859894
                  srli         a0, s5, 23
                  andi         s11, a6, 412
137:              xori         s11, s11, 232
                  ori          a3, s0, -1148
                  slt          sp, t3, s5
                  add          t3, t3, s4
                  sll          a1, a2, a0
                  srli         t0, a3, 11
                  slt          a0, sp, tp
                  slli         s5, t4, 9
                  sltu         a2, gp, s4
                  lui          a2, 441626
                  sltu         t5, s9, zero
                  slli         a5, s5, 26
                  andi         a0, zero, 1326
                  slt          s7, a1, s5
                  sltu         a2, sp, s11
                  srli         t5, t1, 23
                  bge          t6, sp, 172f
                  xori         sp, t5, -1880
                  xori         s3, s8, 672
                  xor          a1, s0, t4
                  beq          gp, a2, 170f
                  auipc        s11, 451848
                  xori         t6, a4, 559
                  nop
                  xori         t0, sp, -698
                  sra          s9, a3, a6
                  sub          s11, t0, s10
                  auipc        s5, 293595
                  and          a0, t2, t2
                  beq          t4, s8, 182f
                  blt          s5, s4, 180f
                  srl          a7, t4, a3
                  xori         s8, sp, -1010
170:              addi         a5, s2, 1702
                  auipc        t6, 639495
172:              sll          sp, s1, t1
                  add          t6, t3, a2
                  sub          t6, s9, a2
                  ori          s8, s6, 378
                  xor          tp, t1, a4
                  ori          s5, t3, 2014
                  sub          a6, t2, a6
                  sltiu        s1, s5, -67
180:              addi         tp, s8, -1326
                  slti         a4, a7, -541
182:              and          s1, tp, s0
                  ori          tp, t1, 327
                  sra          sp, sp, s9
                  xori         t4, s9, -185
                  slt          t4, s5, t1
                  xori         s8, gp, 1772
                  srai         t3, a0, 4
                  sub          t2, s4, s4
                  xori         a6, s5, -1009
                  sra          a7, t3, t0
                  addi         s3, s1, -1023
                  bne          s2, t1, 204f
                  ori          t5, s9, 1491
                  auipc        s10, 337618
                  srl          s9, a6, gp
                  and          s3, t2, s5
                  beq          a0, t5, 213f
                  sll          s10, s0, gp
                  srl          t0, sp, s7
                  bne          s4, s2, 221f
                  srli         s5, t5, 11
                  addi         a4, tp, -1238
204:              srl          zero, s5, s1
                  slli         t1, t5, 31
                  bltu         a3, t4, 208f
                  auipc        sp, 550068
208:              slt          s8, a5, s2
                  blt          a2, a7, 222f
                  bge          s4, s5, 229f
                  slli         gp, t0, 26
                  xori         a3, t2, 232
213:              auipc        s6, 1026271
                  srai         a1, a3, 31
                  add          zero, t0, zero
                  sub          s7, s0, s3
                  add          zero, t0, t5
                  srl          s3, t6, s9
                  srli         t3, a2, 24
                  auipc        a4, 601744
221:              slti         ra, a6, 176
222:              slti         tp, a5, 1183
                  xor          a7, sp, s5
                  ori          a0, t4, 1737
                  xori         t6, a0, 635
                  sub          s1, s0, s6
                  xori         t0, a0, 992
                  srl          s10, t6, a3
229:              xori         t4, a2, -914
                  and          s10, s2, s10
                  beq          a4, a5, 251f
                  lui          a6, 486213
                  addi         s3, s1, 1349
                  ori          s11, a0, 816
                  srai         a1, t1, 28
                  slti         gp, s3, 214
                  sltiu        t3, s1, 1863
                  sub          t3, a7, s10
                  nop
                  beq          t5, a7, 255f
                  bge          a2, s11, 256f
                  bge          t2, sp, 248f
                  slt          a0, s4, s8
                  andi         a6, t0, 1870
                  bgeu         t4, s4, 260f
                  srl          a2, a0, s9
                  addi         s11, s8, -1751
248:              add          t3, s4, t0
                  slli         a4, a5, 7
                  addi         t1, a1, 1805
251:              xori         s7, t5, 1720
                  andi         s6, a5, -1408
                  blt          t1, t4, 259f
                  ori          t0, a0, -1809
255:              xor          t0, s2, a5
256:              sub          a7, a4, s1
                  srai         t2, s7, 12
                  srl          a7, a2, t1
259:              xor          t0, a1, gp
260:              auipc        s1, 424501
                  sub          gp, t2, a5
                  slt          t5, s0, t5
                  bge          s1, a4, 278f
                  lui          t4, 725500
                  xori         s7, a6, -704
                  bltu         t1, t2, 274f
                  srli         s7, t1, 2
                  auipc        s11, 819447
                  slli         a2, s1, 7
                  slti         s5, s9, 354
                  addi         s6, tp, -876
                  bne          s11, a1, 284f
                  add          tp, zero, s0
274:              or           a5, s10, gp
                  add          t4, t0, t1
                  andi         s10, t3, -1223
                  sra          t3, s7, a5
278:              sltiu        s11, a2, 1654
                  add          a5, gp, s0
                  srli         sp, s11, 4
                  sub          a6, s1, s8
                  sub          gp, t6, s4
                  addi         a3, zero, -18
284:              sra          ra, s0, a3
                  slt          a2, s0, s1
                  lui          s5, 635494
                  beq          ra, s7, 305f
                  xor          s5, gp, t5
                  xor          tp, a7, a2
                  bne          t0, ra, 304f
                  bne          s7, s1, 310f
                  bne          s0, t5, 298f
                  xori         s8, s10, -1737
                  add          s9, s8, s11
                  bgeu         s11, s8, 306f
                  bgeu         t1, t5, 314f
                  slli         s1, a1, 29
298:              addi         gp, zero, 452
                  sll          gp, t6, a3
                  slli         s8, a7, 2
                  srai         t0, a2, 22
                  ori          s1, a1, 383
                  and          a5, s3, t6
304:              ori          a7, tp, -1173
305:              blt          t6, a2, 320f
306:              bge          s4, s6, 321f
                  xor          t3, t4, a3
                  la           a2, region_0+1426 #start riscv_load_store_rand_instr_stream_7
                  sub          s1, a2, t0
                  ori          t2, a3, 1651
                  sh           s10, -40(a2)
                  lbu          s5, -23(a2)
                  lhu          a6, 14(a2)
                  sb           a5, -45(a2)
                  xori         a1, t3, -1904
                  sll          s5, s3, s7
                  lbu          s10, -52(a2)
                  sll          a4, zero, a0
                  addi         s7, s7, 1489
                  lbu          t4, 15(a2)
                  lbu          s3, 6(a2)
                  srl          a5, a5, t0
                  sltiu        t5, a3, 222
                  lbu          a4, 61(a2)
                  auipc        s6, 732726
                  sb           a4, -45(a2)
                  slt          s6, t3, s7
                  srai         t0, t0, 8
                  sub          s8, s11, s10
                  sw           s0, -26(a2)
                  sltu         tp, s2, a6
                  auipc        a4, 20700
                  and          s7, t1, t1
                  srai         a3, t2, 12
                  lbu          s6, -4(a2)
                  sra          a5, tp, gp
                  lbu          a6, 40(a2)
                  sra          s10, t1, s2
                  andi         s11, a6, -1150
                  lh           s6, -40(a2)
                  lw           a0, 6(a2)
                  sll          sp, a7, tp
                  sh           s4, -46(a2)
                  sltiu        s5, s10, 34
                  lb           a4, 29(a2)
                  srai         a1, t2, 7
                  slli         a3, a7, 12
                  slti         s5, t4, -2006
                  sll          s3, gp, sp
                  xor          s11, a1, s6
                  slt          s6, t1, ra
                  addi         s8, zero, -773
                  xor          s10, a5, s3
                  xor          a4, s11, tp
                  sb           s9, -12(a2) #end riscv_load_store_rand_instr_stream_7
                  add          t5, a2, ra
                  bgeu         s0, a3, 327f
310:              andi         t5, s8, 1801
                  bgeu         t1, sp, 326f
                  sub          s5, ra, sp
                  addi         s11, ra, 1439
314:              beq          sp, sp, 330f
                  auipc        s9, 397698
                  srl          s10, t5, tp
                  bgeu         a5, t4, 325f
                  ori          ra, a2, -944
                  sltu         a2, s10, tp
320:              or           t2, a3, a4
321:              bltu         a2, a2, 336f
                  sll          a1, a2, tp
                  sra          s6, t6, s6
                  sub          s7, t6, ra
325:              sltiu        s10, s5, 1232
326:              lui          t2, 457146
327:              bne          s10, a0, 347f
                  slli         s11, s7, 8
                  sub          a0, t4, a0
330:              srli         sp, gp, 20
                  srai         a3, t4, 24
                  bne          ra, a7, 347f
                  srl          gp, s11, a6
                  xor          t1, s6, a5
                  srli         t1, t0, 27
336:              xor          a2, s6, a0
                  srl          s6, t2, t1
                  auipc        s3, 827206
                  andi         t0, ra, -1483
                  and          tp, tp, s0
                  sub          a0, t0, s7
                  sra          sp, s6, s4
                  beq          ra, t2, 349f
                  bltu         t0, t6, 353f
                  sltu         s7, s2, a0
                  slli         sp, a6, 23
347:              bge          gp, s6, 362f
                  addi         s7, s6, 1399
349:              sra          zero, s9, t5
                  sltu         s8, sp, a6
                  lui          gp, 468053
                  beq          t0, s11, 365f
353:              blt          tp, s11, 355f
                  sra          tp, s10, a1
355:              ori          tp, s3, 439
                  lui          s9, 575036
                  xor          s1, ra, s4
                  and          a3, s1, s10
                  sltu         a5, tp, s10
                  add          t2, s10, t6
                  bgeu         t4, s3, 370f
362:              nop
                  ori          s1, t6, -931
                  addi         s6, s3, -1597
365:              blt          a1, s11, 384f
                  slli         a0, ra, 14
                  slli         t5, s2, 27
                  srl          s11, t6, t0
                  sll          ra, tp, gp
370:              sra          a2, a4, s3
                  sll          zero, t1, t6
                  blt          t3, a2, 386f
                  add          s6, s6, a7
                  bltu         a3, a4, 385f
                  bne          t1, t3, 384f
                  blt          a4, s0, 395f
                  bne          s5, gp, 383f
                  bltu         a7, t1, 396f
                  blt          s0, a3, 391f
                  slli         a0, s7, 2
                  slli         ra, zero, 4
                  srl          a6, s4, s5
383:              blt          s6, t2, 394f
384:              beq          s6, a3, 404f
385:              xori         sp, s7, -352
386:              blt          s7, s1, 393f
                  and          a6, a1, t6
                  or           t3, s8, a2
                  lui          t6, 1011025
                  add          t5, s10, s11
391:              bltu         t6, t5, 404f
                  blt          a4, s8, 398f
393:              ori          s5, a7, -645
394:              ori          s9, a7, 156
395:              bne          zero, tp, 410f
396:              bne          t5, a3, 409f
                  addi         t2, a7, -913
398:              andi         a5, s3, 1905
                  bgeu         s1, s11, 418f
                  and          a6, s7, a0
                  srli         s6, tp, 10
                  nop
                  andi         a5, a3, -1978
404:              add          t2, ra, t1
                  beq          a4, a0, 424f
                  addi         s7, s9, -519
                  andi         t0, sp, 1730
                  slt          a6, sp, a4
409:              bge          s2, a5, 420f
410:              lui          s9, 536457
                  blt          gp, t4, 426f
                  addi         a0, a6, -506
                  xor          s3, t2, s6
                  lui          a5, 48163
                  slti         t5, a2, 480
                  slt          sp, s0, t1
                  bgeu         a4, s9, 426f
418:              and          t4, t6, a3
                  bltu         t5, t4, 433f
420:              ori          t5, t0, -44
                  slti         a4, a6, 1547
                  sub          s1, a4, a0
                  add          gp, a7, s1
424:              bge          s0, s3, 433f
                  ori          s10, gp, -1165
426:              sra          a5, zero, s10
                  sub          t6, a6, s8
                  addi         a7, t5, 1672
                  slt          t4, gp, t3
                  sra          t2, sp, s5
                  sub          s3, s10, t0
                  sll          s9, a5, t6
433:              bge          s6, s9, 448f
                  slt          t1, s7, sp
                  sra          t5, a1, a4
                  sltiu        s3, gp, 1657
                  bge          s11, s7, 450f
                  xor          t4, t0, s3
                  slli         tp, s2, 19
                  auipc        s10, 191468
                  xori         tp, t4, 1159
                  sra          t3, s4, s5
                  lui          t0, 287052
                  sll          t5, t3, t5
                  srai         zero, t6, 29
                  or           gp, zero, s6
                  beq          s8, t1, 453f
448:              slli         sp, zero, 21
                  srai         a0, a5, 17
450:              andi         ra, t1, -553
                  xor          ra, gp, s11
                  bgeu         a5, s10, 468f
453:              slti         s7, t1, -491
                  bgeu         t5, s7, 473f
                  bge          s7, s11, 464f
                  sltiu        t3, s1, 665
                  and          a5, s10, s11
                  sub          a6, t1, s2
                  blt          t1, t0, 479f
                  sll          s10, s11, a0
                  blt          tp, a7, 480f
                  srli         tp, a4, 13
                  beq          a3, s11, 478f
464:              and          a7, t1, a0
                  xor          t2, t5, t0
                  sub          a7, a5, t2
                  slt          a1, a5, s5
468:              ori          s11, s3, -1187
                  xori         tp, s1, -544
                  nop
                  bltu         a2, s7, 483f
                  ori          gp, s3, 901
473:              srai         s9, a5, 11
                  sub          s3, t5, sp
                  srli         a1, gp, 12
                  nop
                  nop
478:              slti         t2, s3, -1151
479:              bne          ra, a3, 487f
480:              srl          t5, gp, gp
                  sltu         s7, s5, t5
                  add          a0, s9, a4
483:              beq          t3, t5, 498f
                  sub          s6, s3, s10
                  and          a3, s8, s0
                  sltu         s3, s9, t1
487:              bgeu         ra, t0, 502f
                  srai         gp, s1, 27
                  nop
                  add          gp, t6, a0
                  srai         a5, s11, 31
                  srli         s10, t4, 11
                  srli         a2, t1, 22
                  sll          a2, a3, s5
                  bgeu         t0, t5, 501f
                  sra          t5, a0, a2
                  srai         a3, s3, 10
498:              srai         s3, t1, 31
                  sub          s11, gp, s4
                  add          a5, t2, s8
501:              bne          a1, s8, 519f
502:              or           a6, s6, t5
                  srai         t1, a0, 22
                  or           sp, tp, s4
                  srl          s8, t1, a1
                  bne          a5, t1, 524f
                  srli         ra, a2, 24
                  and          a1, sp, a2
                  srli         t2, t2, 30
                  bne          a1, t2, 525f
                  and          t3, gp, t0
                  xor          a3, t6, t1
                  bne          t2, gp, 526f
                  sub          gp, t0, gp
                  auipc        a2, 868250
                  srli         tp, s8, 18
                  sltu         zero, ra, t3
                  beq          a5, s4, 531f
519:              xori         s1, s5, 1889
                  slti         a3, a2, 712
                  addi         a7, gp, 1646
                  add          t4, s0, t5
                  bne          s9, s4, 534f
524:              slli         ra, sp, 7
525:              sub          s8, s1, s11
526:              xor          a0, a0, zero
                  xor          s3, ra, zero
                  sll          t0, a3, t1
                  xori         a2, s8, 1522
                  andi         zero, t1, 810
531:              xori         s3, s3, -1512
                  xor          t1, a7, a0
                  sltiu        tp, t0, -275
534:              sub          s9, a4, t4
                  add          s9, s2, t5
                  andi         a6, s2, 102
                  bne          sp, t5, 539f
                  srl          ra, s0, s7
539:              slt          t3, zero, s2
                  sltiu        a3, s3, -1390
                  lui          t2, 129853
                  and          t3, s4, ra
                  srai         a6, s6, 6
                  srl          s3, ra, a1
                  bge          sp, a1, 552f
                  beq          s2, t2, 566f
                  ori          tp, s7, 1374
                  sra          s11, t1, s9
                  auipc        sp, 401298
                  beq          s9, gp, 556f
                  or           s7, t0, t6
552:              sub          a1, a5, a3
                  bne          a0, s4, 569f
                  sra          a2, s9, s6
                  and          a0, ra, s9
556:              slti         a2, t3, -1795
                  addi         gp, s9, -110
                  sltiu        zero, gp, -848
                  sltu         s11, s7, zero
                  sltu         s5, s10, s8
                  sltiu        a7, t3, -1881
                  bge          t2, t0, 573f
                  srl          a5, sp, t6
                  slti         s11, s0, -1283
                  and          a1, t2, s5
566:              xori         s11, t4, 414
                  nop
                  sra          a7, ra, s6
569:              slti         s11, s11, -303
                  bltu         s3, t4, 578f
                  lui          t4, 58871
                  slt          t5, a4, s1
573:              auipc        s1, 533812
                  bne          t5, s2, 588f
                  slti         s5, t5, -731
                  slt          a5, a0, a7
                  slli         t2, t0, 24
578:              slli         s11, zero, 8
                  ori          a7, s2, 19
                  blt          a2, s3, 595f
                  sltiu        s11, s5, -748
                  addi         s5, s5, -911
                  slt          tp, a3, t0
                  and          tp, s9, a0
                  andi         a4, s5, -1380
                  blt          s9, zero, 601f
                  and          a2, s11, a1
588:              slli         s8, a1, 25
                  addi         t6, t5, -1486
                  xor          a6, t2, zero
                  nop
                  andi         t5, s5, -1616
                  and          a5, t3, s0
                  slti         s6, zero, 1241
595:              beq          a3, t4, 597f
                  xor          a3, gp, s1
597:              lui          a3, 536342
                  or           s10, s7, s9
                  bltu         s3, tp, 619f
                  xori         a4, s3, -1336
601:              srl          a5, s2, t4
                  beq          s1, a2, 613f
                  ori          s1, t1, -852
                  nop
                  addi         s8, s2, 1255
                  slt          a4, tp, gp
                  xori         sp, s11, -589
                  bgeu         t0, s6, 623f
                  or           tp, s1, s3
                  slli         s8, a2, 5
                  lui          s6, 106558
                  andi         s3, a0, 1191
613:              sra          s8, tp, tp
                  and          s6, gp, s9
                  sra          t6, t2, a4
                  ori          t0, s11, -1000
                  slti         a3, s6, -1859
                  srl          t5, ra, s0
619:              addi         s1, s2, -1519
                  and          s6, tp, t1
                  xor          t5, zero, a4
                  sltiu        sp, s4, 1419
623:              ori          t5, t0, -1543
                  sltiu        gp, t1, 1990
                  ori          zero, a1, -1527
                  blt          s7, t3, 635f
                  sll          s10, t3, gp
                  andi         t0, t1, -1354
                  sltiu        s3, t1, 1286
                  bltu         a6, s1, 650f
                  bgeu         s2, s4, 640f
                  addi         s5, a2, 139
                  ori          a3, tp, -1397
                  ori          t5, t6, -820
635:              slti         s7, t0, -1429
                  sll          a6, a5, s2
                  bge          s4, t3, 656f
                  sltiu        t2, a4, 532
                  srl          t5, s4, t6
640:              nop
                  srai         a6, s2, 21
                  sltu         t0, ra, s8
                  auipc        a0, 390909
                  xor          t2, s2, a4
                  slti         a5, a1, -1736
                  xor          sp, t5, s9
                  slti         s7, tp, 1789
                  slli         s9, s10, 8
                  slt          zero, t2, a3
650:              slt          sp, t4, s3
                  and          t5, t0, a5
                  xor          s7, s6, a2
                  beq          a3, a5, 668f
                  sll          s6, t3, s11
                  sltiu        a4, a4, 404
656:              bge          sp, s0, 671f
                  sll          a7, gp, sp
                  lui          t4, 269779
                  auipc        s6, 259708
                  sltiu        s11, t4, -555
                  lui          gp, 748316
                  sltiu        zero, t0, 1537
                  or           s3, a4, tp
                  and          t1, a4, a1
                  bne          s10, s4, 678f
                  xori         s6, s2, 1089
                  sub          a3, ra, t1
668:              slt          s5, s10, a7
                  sltiu        zero, s6, 1208
                  add          s10, a7, s11
671:              slti         tp, s6, -1490
                  sltu         s3, s8, s3
                  slli         t5, a6, 15
                  nop
                  sll          a4, s8, t0
                  ori          s9, sp, 93
                  bgeu         s8, gp, 684f
678:              blt          tp, s7, 687f
                  blt          a6, a6, 692f
                  sra          s3, a3, gp
                  addi         t5, s7, 263
                  bgeu         a5, a1, 688f
                  nop
684:              slli         ra, t6, 21
                  ori          s3, sp, -1519
                  blt          s4, a5, 698f
687:              slti         s3, a6, -915
688:              xori         a5, s2, -464
                  nop
                  sra          a3, s8, t1
                  andi         a3, s7, 1644
692:              auipc        t2, 189529
                  blt          s5, a7, 711f
                  slti         zero, s11, -1773
                  sltiu        t4, s7, -621
                  bgeu         t5, a5, 714f
                  bne          t5, tp, 703f
698:              lui          t6, 9507
                  slti         s10, t1, -178
                  or           t4, tp, zero
                  nop
                  xori         t1, s4, -146
703:              auipc        zero, 902569
                  srai         sp, a6, 25
                  auipc        s10, 229868
                  bne          t3, s9, 721f
                  sltu         sp, a3, t6
                  bge          tp, s8, 714f
                  lui          s9, 753075
                  sra          s1, sp, ra
711:              bge          sp, t3, 724f
                  srai         gp, t5, 22
                  beq          a5, t1, 732f
714:              ori          a6, t0, -519
                  xor          sp, s11, a6
                  slli         a4, t4, 11
                  sltu         gp, ra, s11
                  slti         a0, s7, 898
                  and          s11, a0, s4
                  andi         a5, s4, 424
721:              nop
                  sra          s8, gp, s4
                  sltiu        ra, s11, -565
724:              add          s6, a1, ra
                  and          s9, a7, s7
                  blt          s4, a2, 745f
                  nop
                  ori          s9, a6, 389
                  ori          s10, zero, -356
                  sll          t1, s5, ra
                  xor          s9, s3, a6
732:              slti         ra, a1, -607
                  bne          a2, t4, 742f
                  addi         tp, t5, 1115
                  lui          s6, 809298
                  beq          s9, s0, 749f
                  xori         s7, s0, 1041
                  sub          a5, s2, zero
                  xor          sp, ra, s6
                  sub          a1, ra, s3
                  xor          ra, sp, s11
742:              slt          a4, s0, sp
                  lui          a6, 309514
                  and          s3, s0, t5
745:              bge          s8, t5, 758f
                  slli         t6, a1, 7
                  and          s7, ra, s9
                  bltu         a3, a2, 764f
749:              srli         sp, a3, 23
                  bge          s1, s9, 757f
                  xori         a0, a0, 1316
                  xor          s5, zero, s9
                  srl          tp, a3, a0
                  sltiu        a7, s8, -880
                  srai         t4, a5, 13
                  blt          t2, a0, 774f
757:              srli         s6, a1, 19
758:              srai         t5, a3, 26
                  or           s8, a1, s0
                  add          s5, t4, tp
                  bltu         t0, tp, 774f
                  andi         t6, sp, 63
                  xor          a6, a1, a0
764:              sra          s5, s0, a6
                  bge          s9, a2, 783f
                  and          a7, s0, sp
                  xor          s7, a2, a4
                  andi         t2, zero, -1849
                  bge          t2, s4, 778f
                  xori         s3, s0, -1030
                  sll          t6, t4, tp
                  and          t0, zero, t0
                  slli         t4, a0, 3
774:              sra          s7, t4, t5
                  nop
                  add          s7, s8, a3
                  sra          a5, s6, a4
778:              add          t1, t2, a1
                  xor          a5, s2, t3
                  or           a0, s3, t1
                  sra          s9, s2, t6
                  srl          s7, t6, t6
783:              ori          a6, s2, -1133
                  sub          a4, s1, s1
                  sltu         t6, s0, s10
                  blt          s2, s9, 795f
                  auipc        sp, 391575
                  nop
                  addi         a0, t5, 1545
                  sltu         s10, a4, t3
                  and          t2, s7, s8
                  bne          s3, s3, 807f
                  bltu         s11, s11, 804f
                  ori          sp, a3, 1084
795:              sll          t5, a0, a4
                  slti         zero, s7, -548
                  bgeu         t0, s9, 803f
                  sra          a3, ra, t3
                  nop
                  bne          s2, t4, 820f
                  add          a3, t0, a4
                  sll          s6, gp, s4
803:              xori         a7, a4, 892
804:              beq          a7, a0, 819f
                  srai         a4, s2, 16
                  srai         a1, s11, 12
807:              bgeu         s8, a4, 827f
                  andi         s9, s1, -536
                  blt          tp, t5, 817f
                  sltiu        a2, t6, 385
                  srai         s6, s9, 17
                  blt          s0, s5, 818f
                  sra          zero, t5, zero
                  add          s11, t6, s8
                  srli         ra, gp, 14
                  beq          a7, a0, 835f
817:              bgeu         s5, a3, 832f
818:              bge          tp, s9, 829f
819:              and          sp, s7, t4
820:              and          gp, t4, zero
                  or           t6, t3, a0
                  srl          a6, s9, s11
                  bne          s7, s0, 837f
                  bgeu         a5, tp, 839f
                  nop
                  auipc        tp, 695349
827:              srl          a7, a1, s8
                  srli         tp, s2, 20
829:              xori         s10, t0, 1034
                  slt          s1, ra, s3
                  add          gp, a4, t2
832:              addi         s3, t2, -733
                  srl          a0, a6, s8
                  bgeu         t3, s9, 840f
835:              auipc        t5, 392753
                  xor          sp, s7, s5
837:              bgeu         t5, gp, 852f
                  lui          t2, 329080
839:              and          s11, s2, s10
840:              sll          a0, t2, t0
                  sltiu        s7, s2, 1298
                  lui          t3, 655783
                  lui          ra, 142812
                  sll          s10, s1, a5
                  xori         sp, s6, -1344
                  beq          t1, s8, 858f
                  xori         s7, zero, 614
                  sra          ra, s9, t2
                  sub          s5, s7, s10
                  nop
                  slli         a0, a2, 20
852:              nop
                  sltiu        s6, t4, -225
                  xori         t5, zero, -764
                  beq          a6, t0, 857f
                  sll          a3, a0, s3
857:              sra          t2, s11, a0
858:              sltiu        s10, s1, 510
                  xor          s6, s2, s11
                  bne          s0, t5, 875f
                  slli         s11, s6, 14
                  sltu         t4, gp, s10
                  srl          a2, s7, ra
                  and          s1, s11, zero
                  nop
                  bne          s4, t0, 885f
                  sltu         s3, t3, s8
                  lui          s1, 803614
                  lui          s9, 296416
                  and          ra, s0, s5
                  addi         s10, t6, 1980
                  slti         s5, t6, 1638
                  srai         a4, s5, 15
                  lui          a6, 351020
875:              xori         t0, a5, -1026
                  slli         s7, s6, 6
                  sltiu        s8, t4, 43
                  srl          t6, t5, a0
                  sltu         a0, s10, s4
                  bge          a1, t6, 899f
                  ori          s10, s10, -505
                  sltu         ra, t2, s4
                  bge          t0, s3, 903f
                  or           a6, t1, a5
885:              beq          t0, s8, 900f
                  sll          a3, s5, s5
                  sra          s5, t6, s3
                  blt          tp, gp, 897f
                  sra          s3, s1, a1
                  sra          t1, s8, t0
                  add          a0, t5, s11
                  bltu         s3, t0, 907f
                  auipc        t6, 1040337
                  sra          t1, s6, s11
                  bne          s1, s3, 903f
                  slli         a6, t2, 24
897:              andi         a3, t3, -47
                  sra          gp, t1, t1
899:              beq          t5, s8, 918f
900:              and          gp, sp, s9
                  sra          s5, ra, a3
                  bltu         t0, a5, 915f
903:              slti         a4, s0, 1518
                  sltiu        a7, t6, 1157
                  ori          s1, ra, -584
                  slt          s1, s0, t3
907:              srai         t1, a6, 22
                  bge          a0, t0, 910f
                  auipc        tp, 572290
910:              lui          s7, 21326
                  sub          zero, t0, s10
                  auipc        sp, 651349
                  ori          t2, t1, -560
                  slt          a1, s8, a1
915:              bge          gp, t6, 924f
                  xori         a4, s3, 1225
                  addi         t1, s2, 1374
918:              srl          s3, a7, gp
                  bgeu         a3, s4, 926f
                  addi         s3, t2, 150
                  la           sp, region_1+919 #start riscv_load_store_rand_instr_stream_0
                  sb           s10, 632(sp)
                  lh           s7, -773(sp)
                  slt          tp, t4, s11
                  sltiu        a6, gp, 1908
                  lw           s6, -907(sp)
                  sb           a2, -688(sp)
                  lb           a5, 980(sp)
                  sra          t5, gp, a3
                  or           s10, a1, a1
                  lb           ra, 992(sp)
                  sh           a3, -57(sp)
                  lui          s5, 3240
                  lui          s7, 690216
                  lbu          a7, 801(sp)
                  andi         a7, s7, 390
                  auipc        a4, 861592
                  sltiu        t3, a3, 364
                  lbu          ra, 196(sp)
                  ori          gp, s8, 1786
                  ori          s3, s10, -175
                  lh           a2, -273(sp)
                  slli         s9, s8, 6
                  sb           s4, -58(sp)
                  srl          s6, a4, s7
                  sw           t5, -335(sp)
                  sb           s8, 84(sp)
                  sw           a2, -267(sp)
                  lbu          s3, -715(sp)
                  ori          a3, tp, -1172
                  sb           a3, 584(sp)
                  lb           t0, 52(sp)
                  or           a1, t0, t2
                  sb           t6, 212(sp)
                  nop
                  nop
                  slt          t4, s9, s0
                  addi         a1, s10, 1022
                  xor          s10, a1, s2
                  srl          t4, t0, t0
                  lw           t2, -307(sp)
                  lb           t6, 650(sp)
                  sb           s3, -597(sp)
                  sb           t3, 132(sp)
                  sltiu        s9, a5, -1935
                  slli         a1, ra, 16
                  slt          a3, sp, sp
                  lb           t4, 128(sp)
                  lw           t2, -595(sp)
                  sra          a3, s4, gp
                  lbu          gp, -658(sp)
                  sb           s7, -818(sp)
                  xor          s9, a0, s5
                  lbu          a1, -904(sp) #end riscv_load_store_rand_instr_stream_0
                  slli         a3, s2, 14
                  bge          t3, zero, 936f
                  srli         a4, a3, 4
924:              andi         s1, s1, 158
                  bge          a6, s10, 937f
926:              sra          t3, t1, ra
                  sltiu        t0, s9, -708
                  xor          a4, a4, tp
                  nop
                  beq          s11, t2, 936f
                  xori         zero, a6, 1130
                  srli         a0, a0, 19
                  srai         a3, s8, 8
                  xor          a7, s9, s0
                  srli         s10, s11, 7
936:              xori         a3, ra, -1
937:              or           tp, s8, t0
                  ori          s1, t3, -1556
                  srai         t3, a1, 31
                  addi         t5, s11, 73
                  xori         t2, s4, -1623
                  bltu         t0, s1, 951f
                  andi         s9, a5, 1409
                  bne          t0, a4, 962f
                  sra          t6, a2, tp
                  srai         s3, s0, 6
                  sltiu        a1, a7, -344
                  ori          t2, s2, -2019
                  bgeu         a4, a4, 967f
                  bltu         a1, gp, 966f
951:              slti         t1, t6, 360
                  slli         a3, t6, 25
                  ori          tp, s6, 1405
                  or           gp, s0, s9
                  blt          s4, s3, 961f
                  slli         s8, a2, 30
                  ori          a6, sp, 1791
                  bne          s8, a6, 964f
                  slt          ra, a1, s9
                  and          tp, s9, t1
961:              add          a3, gp, t1
962:              bgeu         t5, s2, 982f
                  and          s9, s11, s1
964:              sltu         t6, s0, gp
                  bltu         s9, s8, 980f
966:              lui          s6, 767937
967:              add          a1, a5, t4
                  xor          t6, t6, s10
                  slti         a3, s4, -578
                  blt          s9, s0, 983f
                  sub          s5, s5, s4
                  xor          t0, zero, a5
                  or           a1, t5, gp
                  xori         t1, a6, 1820
                  sltiu        t3, t6, -1873
                  beq          s8, a4, sub_1_j3 #branch to jump instr
                  ori          a3, gp, 1808
                  add          s3, s9, s0
                  sub          a4, a3, t2
                  nop
                  ori          s7, a3, 1168
                  andi         zero, s10, 1626
sub_1_j3:         jal          s8, sub_3 #jump sub_1 -> sub_3
                  nop
                  bgeu         a7, t0, 993f
                  addi         a0, a2, -1787
                  or           t2, t3, tp
                  bgeu         s9, ra, 988f
                  slli         t6, t6, 3
                  addi         ra, a4, 238
980:              bne          t4, s9, 999f
                  sra          s1, t1, a5
982:              xor          s5, s3, t3
983:              sra          a7, s2, s3
                  blt          ra, a1, 995f
                  srai         t5, s1, 9
                  srai         zero, gp, 18
                  nop
988:              andi         a3, s9, 1262
                  slli         a3, ra, 14
                  bge          t4, a7, 1005f
                  slti         a0, tp, 1391
                  sltiu        a2, ra, -1850
993:              andi         t1, zero, 325
                  and          s11, t6, t3
995:              sll          tp, s4, s0
                  add          t4, a6, s8
                  and          tp, tp, a4
                  blt          zero, a2, 1011f
999:              sltiu        tp, t5, 754
                  slt          tp, a7, ra
                  beq          t2, t5, 1016f
                  bge          a6, tp, 1017f
                  andi         a1, s11, 1223
                  xori         a6, a5, 1746
1005:             andi         t5, a7, -968
                  bgeu         s7, t4, 1021f
                  sltiu        s7, s4, -1755
                  sltu         t1, s10, zero
                  lui          a2, 301909
                  sltiu        s8, t1, -298
1011:             sll          a7, t6, a7
                  srli         s1, s3, 15
                  auipc        t5, 78885
                  sltiu        ra, s11, -891
                  blt          s4, s0, 1017f
1016:             xori         a3, s11, -1240
1017:             slli         s9, sp, 30
                  beq          s4, t5, 1024f
                  nop
                  beq          s6, s9, 1036f
1021:             sub          a7, s7, tp
                  sub          a2, s9, s7
                  bge          t1, ra, 1042f
1024:             beq          s0, s10, 1039f
                  ori          a4, s9, -1833
                  bltu         t0, ra, 1035f
                  sub          a6, sp, s2
                  and          s11, ra, t4
                  auipc        s10, 636125
                  addi         s11, s2, -1460
                  nop
                  bne          t6, t0, 1044f
                  sll          s6, s1, s9
                  addi         a0, a4, -600
1035:             srli         s1, sp, 20
1036:             andi         s11, s11, -900
                  bgeu         zero, t3, 1050f
                  sltiu        a2, s10, -1284
1039:             andi         t6, a2, 457
                  slli         a6, t1, 21
                  sll          s7, a6, s7
1042:             sltiu        a7, s10, 565
                  bge          s0, ra, 1050f
1044:             srl          gp, s7, a1
                  sltiu        s5, t1, 1169
                  sub          s6, t3, s7
                  addi         t3, a4, -706
                  ori          a2, s6, 1364
                  xor          s11, sp, ra
1050:             slt          s5, s3, t0
                  sll          s10, zero, t0
                  bltu         s5, a1, 1065f
                  slli         s8, a3, 20
                  lui          s1, 32317
                  lui          gp, 906497
                  sub          s9, s8, a4
                  sll          a6, s1, s10
                  sltiu        s10, s0, 89
                  bltu         s5, s8, 1078f
                  sltiu        s7, t5, 1892
                  andi         s8, a7, -1907
                  xori         s11, s1, 108
                  add          a7, t1, s7
                  add          zero, s7, s9
1065:             andi         s7, t4, 207
                  add          tp, a7, t3
                  or           a5, sp, s0
                  slt          t6, a7, s4
                  bge          a3, t4, 1078f
                  ori          s8, s7, 249
                  andi         s10, s6, 1328
                  nop
                  bge          s10, a5, 1081f
                  and          s7, a3, sp
                  sra          zero, ra, t4
                  bne          s7, a7, 1090f
                  srai         sp, s8, 22
1078:             slti         zero, s0, 381
                  sub          s9, a5, a7
                  sltu         s7, s5, s9
1081:             nop
                  lui          s8, 785495
                  sltu         a5, t6, s5
                  ori          s6, gp, -1874
                  bne          s3, s4, 1096f
                  bne          s11, s3, 1099f
                  slti         t5, a4, 1117
                  blt          zero, s9, 1108f
                  bne          s9, t0, 1104f
1090:             andi         s7, sp, -275
                  xori         s8, s10, 855
                  slt          a2, s8, t5
                  sra          t2, t3, s0
                  andi         s7, t0, -630
                  bne          s3, s11, 1101f
1096:             bltu         s7, t2, 1110f
                  add          a4, a6, tp
                  bne          s8, s4, 1104f
1099:             lui          ra, 471071
                  or           t6, s5, a0
1101:             slt          a0, a6, t6
                  slli         gp, t5, 0
                  srl          s5, t6, a2
1104:             xor          s8, a7, s3
                  addi         s7, t0, -1927
                  blt          a5, a1, 1110f
                  ori          a3, t6, 998
1108:             and          t1, zero, s11
                  bne          t2, zero, 1110f
1110:             sll          t4, t0, s7
                  lw           s8, 4(s2)
                  or           t5, a6, a1
                  xor          sp, s10, a0
                  add          t1, s0, t3
                  addi         s2, s2, 16
                  nop
1449:             addi x22, x24, 1
1449:             jalr x22, x22, 0
sub_10:           beq          t1, a1, sub_10_stack_p
                  xor          gp, s11, s0
                  srli         a7, a4, 30
sub_10_stack_p:   addi         s2, s2, -16
                  sra          t6, a4, t6
                  sll          a4, s4, t2
                  sw           s8, 4(s2)
                  xor          s6, a3, s5
                  slt          t3, a6, zero
                  andi         a5, tp, -453
                  nop
                  bne          t0, t0, 9f
                  sltu         t1, t6, a7
                  bgeu         t4, s8, 9f
                  sub          a3, t5, a4
                  add          a7, s5, gp
                  xor          a2, a2, s8
9:                slt          s7, s4, sp
                  and          sp, s2, s7
                  lw           s8, 4(s2)
                  addi         s2, s2, 16
                  xor          a7, a6, s11
                  sub          sp, t4, s3
                  sltiu        t5, s8, -504
                  and          s3, s2, zero
                  add          s5, sp, a7
                  lui          a0, 477407
                  or           sp, t2, tp
28:               addi x9, x24, 0
28:               jalr x9, x9, 0
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
                  addi x18, x18, -128
                  sw  x1, 4(x18)
                  sw  x2, 8(x18)
                  sw  x3, 12(x18)
                  sw  x4, 16(x18)
                  sw  x5, 20(x18)
                  sw  x6, 24(x18)
                  sw  x7, 28(x18)
                  sw  x8, 32(x18)
                  sw  x9, 36(x18)
                  sw  x10, 40(x18)
                  sw  x11, 44(x18)
                  sw  x12, 48(x18)
                  sw  x13, 52(x18)
                  sw  x14, 56(x18)
                  sw  x15, 60(x18)
                  sw  x16, 64(x18)
                  sw  x17, 68(x18)
                  sw  x18, 72(x18)
                  sw  x19, 76(x18)
                  sw  x20, 80(x18)
                  sw  x21, 84(x18)
                  sw  x22, 88(x18)
                  sw  x23, 92(x18)
                  sw  x24, 96(x18)
                  sw  x25, 100(x18)
                  sw  x26, 104(x18)
                  sw  x27, 108(x18)
                  sw  x28, 112(x18)
                  sw  x29, 116(x18)
                  sw  x30, 120(x18)
                  sw  x31, 124(x18)
                  add x20, x18, zero
                  csrr x12, 0x300 # MSTATUS
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 31
                  bne x12, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x12, 0x341 # MEPC
                  csrr x12, 0x342 # MCAUSE
                  li x17, 0x3 # BREAKPOINT
                  beq x12, x17, ebreak_handler
                  li x17, 0x8 # ECALL_UMODE
                  beq x12, x17, ecall_handler
                  li x17, 0x9 # ECALL_SMODE
                  beq x12, x17, ecall_handler
                  li x17, 0xb # ECALL_MMODE
                  beq x12, x17, ecall_handler
                  li x17, 0x1
                  beq x12, x17, instr_fault_handler
                  li x17, 0x5
                  beq x12, x17, load_fault_handler
                  li x17, 0x7
                  beq x12, x17, store_fault_handler
                  li x17, 0xc
                  beq x12, x17, pt_fault_handler
                  li x17, 0xd
                  beq x12, x17, pt_fault_handler
                  li x17, 0xf
                  beq x12, x17, pt_fault_handler
                  li x17, 0x2 # ILLEGAL_INSTRUCTION
                  beq x12, x17, illegal_instr_handler
                  csrr x17, 0x343 # MTVAL
                  1: la x8, test_done
                  jalr x1, x8, 0

ecall_handler:    
                  la x12, _start
                  sw x0, 0(x12)
                  sw x1, 4(x12)
                  sw x2, 8(x12)
                  sw x3, 12(x12)
                  sw x4, 16(x12)
                  sw x5, 20(x12)
                  sw x6, 24(x12)
                  sw x7, 28(x12)
                  sw x8, 32(x12)
                  sw x9, 36(x12)
                  sw x10, 40(x12)
                  sw x11, 44(x12)
                  sw x12, 48(x12)
                  sw x13, 52(x12)
                  sw x14, 56(x12)
                  sw x15, 60(x12)
                  sw x16, 64(x12)
                  sw x17, 68(x12)
                  sw x18, 72(x12)
                  sw x19, 76(x12)
                  sw x20, 80(x12)
                  sw x21, 84(x12)
                  sw x22, 88(x12)
                  sw x23, 92(x12)
                  sw x24, 96(x12)
                  sw x25, 100(x12)
                  sw x26, 104(x12)
                  sw x27, 108(x12)
                  sw x28, 112(x12)
                  sw x29, 116(x12)
                  sw x30, 120(x12)
                  sw x31, 124(x12)
                  la x8, write_tohost
                  jalr x0, x8, 0

instr_fault_handler:
                  add x18, x20, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
                  mret

load_fault_handler:
                  add x18, x20, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
                  mret

store_fault_handler:
                  add x18, x20, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
                  mret

ebreak_handler:   
                  csrr  x12, 0x341
                  addi  x12, x12, 4
                  csrw  0x341, x12
                  add x18, x20, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
                  mret

illegal_instr_handler:
                  csrr  x12, 0x341
                  addi  x12, x12, 4
                  csrw  0x341, x12
                  add x18, x20, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x12, 0x300 # MSTATUS;
                  csrr  x12, 0x304 # MIE;
                  csrr  x12, 0x344 # MIP;
                  csrrc x12, 0x344, x12 # MIP;
                  add x18, x20, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
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
