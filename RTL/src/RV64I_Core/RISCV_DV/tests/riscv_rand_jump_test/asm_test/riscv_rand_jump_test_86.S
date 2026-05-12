.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x6, h0_start
jalr x0, x6, 0
h0_start:
                  li x23, 0x40000100
                  csrw 0x301, x23
kernel_sp:        
                  la x8, kernel_stack_end

trap_vec_init:    
                  la x23, mtvec_handler
                  ori x23, x23, 0
                  csrw 0x305, x23 # MTVEC

mepc_setup:       
                  la x23, init
                  csrw 0x341, x23

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x23, 0x1800
                  csrw 0x300, x23 # MSTATUS
                  mret
init:             
                  li x0, 0xe
                  li x1, 0xda262582
                  li x2, 0x6
                  li x3, 0xfc9fa9f4
                  li x4, 0x80000000
                  li x5, 0x18273d9b
                  li x6, 0xe
                  li x7, 0x0
                  li x9, 0x80000000
                  li x10, 0x0
                  li x11, 0x0
                  li x12, 0xf3b76f57
                  li x13, 0x80000000
                  li x14, 0x0
                  li x15, 0xe
                  li x16, 0xfde895af
                  li x17, 0x2d1eefb9
                  li x18, 0x1dc8a5e
                  li x19, 0x80000000
                  li x21, 0x80000000
                  li x22, 0x9b120543
                  li x23, 0xfa1d3eba
                  li x24, 0x80000000
                  li x25, 0x0
                  li x26, 0x0
                  li x27, 0xf8c1b92c
                  li x28, 0x80000000
                  li x29, 0xfcc995da
                  li x30, 0xfb51cc08
                  li x31, 0x80000000
                  la x20, user_stack_end
main:             or           s8, s8, s9
                  slli         s8, gp, 22
                  nop
                  sltu         tp, a7, t0
                  la           a2, sub_1
                  auipc        zero, 452438
                  sltu         gp, s5, sp
                  srai         sp, t4, 22
                  addi         a2, a2, -694
                  slli         s11, a7, 9
main_j2:          jalr         ra, a2, 695 #jump main -> sub_1
                  la           s2, region_1+1694 #start riscv_load_store_rand_instr_stream_0
                  sll          s10, a3, s3
                  or           a2, a0, t3
                  lbu          sp, 101(s2)
                  addi         s9, a6, -846
                  sb           s6, 170(s2)
                  slli         a1, s1, 27
                  sub          a2, t0, a3
                  ori          a1, a3, 381
                  slli         a6, gp, 4
                  sll          t3, a7, s1
                  ori          s9, t2, -1789
                  sb           zero, 223(s2)
                  lb           sp, 208(s2)
                  or           t3, s0, a1
                  lbu          s10, 22(s2)
                  lui          t6, 879604
                  sub          s10, s11, s0
                  srli         a3, a3, 0
                  sb           tp, 157(s2)
                  nop
                  lhu          a6, -78(s2)
                  sb           s4, -147(s2)
                  lb           a5, 185(s2)
                  lbu          a2, 130(s2)
                  sltiu        s10, t6, -1856
                  sh           s10, 106(s2)
                  ori          s7, s2, -1189
                  sb           t2, -215(s2)
                  addi         t0, s10, 1854
                  lb           zero, -216(s2)
                  slli         s1, s11, 10
                  lbu          t4, 102(s2)
                  lui          s5, 531748
                  sb           s8, 161(s2)
                  sra          s3, s3, a7
                  lbu          ra, 19(s2)
                  sh           s5, 126(s2)
                  lbu          a5, -83(s2)
                  sll          zero, s8, s10
                  sb           s3, 229(s2) #end riscv_load_store_rand_instr_stream_0
                  andi         s7, s8, -464
                  beq          s2, s11, 9f
                  beq          s8, t4, 19f
                  slli         t4, s7, 27
                  bne          ra, s8, 10f
                  beq          gp, a5, 6f
6:                bgeu         s10, s4, 18f
                  bgeu         s3, t0, 21f
                  add          t2, s10, gp
9:                sra          s2, tp, zero
10:               slli         s7, s2, 6
                  beq          a7, s2, 31f
                  nop
                  blt          a5, s5, 15f
                  beq          s5, a4, 26f
15:               bgeu         t0, t4, 27f
                  slti         s2, tp, 812
                  addi         t4, t6, 1813
18:               sltu         sp, a4, t3
19:               srai         sp, gp, 23
                  addi         t4, s6, -1790
21:               xor          a7, a2, t4
                  sltu         zero, a0, tp
                  add          t5, zero, s4
                  bgeu         s10, s3, 25f
25:               or           s2, s10, a4
26:               auipc        t4, 499490
27:               slti         s1, s0, 925
                  xori         a0, s11, 229
                  srl          t4, s10, a3
                  srai         a5, a0, 25
                  ori          a1, s2, -1769
                  addi         a4, t5, -983
                  and          s11, a6, s2
                  sub          t3, s9, a2
                  slli         t2, a3, 24
                  la           a2, sub_2
                  or           t5, ra, a3
                  addi         a1, t5, 1062
                  addi         a2, a2, -930
                  nop
main_j1:          jalr         ra, a2, 930 #jump main -> sub_2
                  blt          t5, s2, 35f
31:               slt          s8, a6, gp
                  slt          s1, a3, a2
                  andi         a7, sp, 427
                  srl          a7, t4, zero
35:               and          tp, s7, a5
                  lui          a1, 578714
                  srl          a1, a7, a2
                  lui          s7, 697122
                  nop
                  la x6, test_done
                  jalr x0, x6, 0
test_done:        
                  li gp, 1
                  ecall
sub_3:            sub          t4, zero, zero
                  blt          a0, a7, sub_3_stack_p
sub_3_stack_p:    addi         s4, s4, -52
                  auipc        zero, 271018
                  sw           ra, 4(s4)
                  ori          t0, t2, -1698
                  sll          a4, a4, s4
                  slti         s8, gp, 1962
                  sltu         sp, zero, t6
                  bne          s11, s4, 4f
                  sll          tp, sp, a1
                  or           s9, a1, t3
4:                blt          a2, a6, 21f
                  nop
                  sltu         ra, zero, a0
                  slli         zero, zero, 13
                  slli         ra, ra, 15
                  auipc        t0, 872330
                  nop
                  sub          t6, a1, s10
                  ori          tp, s6, 1907
                  blt          a7, s6, 16f
                  and          tp, s7, s2
                  lui          a0, 530195
16:               sltiu        a7, s5, 809
                  sra          s3, s2, t2
                  bne          a2, s8, sub_3_j6 #branch to jump instr
                  srai         t2, t3, 18
                  xori         s7, t6, -16
                  sltu         s11, t5, a3
                  nop
                  sltiu        t0, s6, 976
                  ori          zero, t6, 922
sub_3_j6:         jal          ra, sub_5 #jump sub_3 -> sub_5
                  xori         gp, a6, -1825
                  srli         s6, a0, 5
                  srl          s8, sp, tp
21:               sltiu        s11, s2, -1644
                  sub          sp, s6, s8
                  sub          sp, s4, sp
                  andi         s9, a6, -1215
                  add          zero, a2, t5
                  xori         tp, s3, 1517
                  slli         s2, sp, 26
                  sltu         a5, s7, s0
                  nop
                  srai         s10, ra, 22
                  srl          zero, s5, zero
                  srli         s10, a2, 31
                  srl          a3, t3, a7
                  srai         sp, sp, 0
                  lw           ra, 4(s4)
                  addi         s9, t6, -352
                  addi         s4, s4, 52
                  xori         gp, t5, -955
                  sll          t3, s10, t6
56:               addi x2, x1, 0
56:               jalr x2, x2, 0
sub_8:            srl          a4, a5, ra
                  addi         t6, ra, -931
                  bne          s11, s5, sub_8_stack_p
sub_8_stack_p:    addi         s4, s4, -64
                  sw           ra, 4(s4)
                  sltu         s6, t1, s0
                  lui          t3, 177674
                  andi         a5, s0, -555
                  addi         zero, zero, -538
                  srai         a1, s9, 10
                  and          s3, t0, gp
                  nop
sub_8_j12:        jal          ra, sub_9 #jump sub_8 -> sub_9
                  beq          s11, a7, 8f
                  bge          sp, t4, 19f
                  beq          a6, s7, 18f
                  bge          tp, t2, 14f
                  slti         t5, zero, 1274
                  srl          s3, s6, s11
                  andi         a2, s5, -1699
                  blt          s7, s7, 25f
8:                bne          t2, t5, 25f
                  bgeu         a6, a4, 27f
                  add          t3, s9, zero
                  xor          a3, s4, a2
                  beq          s1, a4, 21f
                  sll          s9, sp, zero
14:               beq          s4, s4, 32f
                  beq          a7, t3, 20f
                  bge          a0, ra, 28f
                  sub          s10, t2, s8
18:               sll          s1, s1, a2
19:               srl          s9, s8, s0
20:               and          s11, a7, a0
21:               sll          tp, s6, t5
                  ori          s9, a1, 1198
                  or           a5, s4, a0
                  sltu         t0, s8, t2
25:               bltu         a1, s11, 31f
                  sltiu        t3, a1, -1599
27:               add          a6, s7, a2
28:               bge          ra, a2, 32f
                  nop
                  sltu         a0, s7, s3
31:               sltiu        tp, a1, 1831
32:               lui          t4, 883738
                  nop
                  srai         s8, zero, 14
                  lw           ra, 4(s4)
                  lui          a1, 287969
                  and          t3, s1, gp
                  srl          s1, t1, sp
                  lui          a7, 330698
                  addi         s4, s4, 64
                  xor          s11, s8, a3
55:               addi x30, x1, 0
55:               jalr x30, x30, 0
sub_10:           blt          t4, s9, sub_10_stack_p
                  nop
                  xori         a3, s8, -1993
                  andi         t5, s6, 1951
sub_10_stack_p:   addi         s4, s4, -48
                  sw           ra, 4(s4)
                  addi         gp, a6, -217
                  bgeu         sp, a2, 15f
                  and          t2, a6, s10
                  ori          s10, a4, 1016
                  beq          t6, s1, 6f
                  sra          ra, tp, zero
                  sltiu        a4, a7, 344
6:                srai         t5, a3, 6
                  srai         t3, a3, 18
                  blt          s8, a3, 19f
                  sra          t5, a0, s7
                  add          s3, t6, s0
                  or           s7, s8, s3
                  sll          t3, zero, a5
                  auipc        a4, 384784
                  slli         t4, sp, 24
15:               blt          s3, s7, 26f
                  ori          s7, a2, 300
                  sltiu        a1, a6, 1549
                  blt          s7, s2, 27f
19:               bne          s3, t6, 27f
                  slt          a0, a0, a0
                  beq          tp, t1, 27f
                  blt          t5, a2, 27f
                  bgeu         t6, s6, 27f
                  and          s7, s10, s5
                  slli         a0, s10, 25
26:               sll          t5, s0, a5
27:               slt          tp, t6, a3
                  lw           ra, 4(s4)
                  addi         s4, s4, 48
                  ori          s5, gp, 1660
                  or           a4, t5, s0
                  sll          gp, a1, a0
                  andi         s6, s5, -1400
                  slti         s1, s3, 693
42:               addi x11, x1, 1
42:               jalr x11, x11, 0
sub_2:            slti         t4, s7, 1619
                  andi         a5, a2, -1394
                  sub          s6, s11, zero
                  addi         s4, s4, -32
                  sw           ra, 4(s4)
                  srai         t0, s9, 26
                  la           ra, region_1+423 #start riscv_load_store_rand_instr_stream_1
                  lhu          tp, 29(ra)
                  lb           s11, 50(ra)
                  lh           s2, -9(ra)
                  andi         t2, a4, -1405
                  lbu          s8, -15(ra)
                  nop
                  slt          a7, s8, t2
                  lbu          zero, -18(ra)
                  sra          t5, a5, t5
                  slti         t2, s10, -90
                  sb           t2, 34(ra)
                  sb           gp, -52(ra)
                  sb           a3, -34(ra)
                  srl          a1, gp, s7
                  sb           s4, -54(ra)
                  xor          tp, t1, s8
                  lbu          s3, 58(ra)
                  lbu          s1, 60(ra)
                  lb           a0, -39(ra)
                  sltu         a7, s9, s11
                  srli         t5, s4, 27
                  and          t2, zero, t2
                  sb           gp, 22(ra) #end riscv_load_store_rand_instr_stream_1
                  la           a0, region_1+1845 #start riscv_load_store_rand_instr_stream_2
                  sll          zero, s11, a4
                  slti         s10, s3, 288
                  lb           s2, -737(a0)
                  sb           s5, -250(a0)
                  sb           s2, -1465(a0)
                  slt          s5, s9, a1
                  sb           t5, -1638(a0)
                  lbu          sp, -1379(a0)
                  or           s11, t1, zero
                  addi         t2, t4, 1277
                  xori         s10, a0, 1143
                  lb           a2, -1382(a0)
                  and          s1, s2, a4
                  lb           s1, 58(a0)
                  lh           t5, -1049(a0)
                  lbu          zero, -536(a0)
                  lb           s6, -932(a0)
                  sll          a1, s8, s4
                  auipc        s8, 858921
                  srl          a6, s4, t2
                  or           t6, s7, t2
                  andi         s10, s9, 524
                  lbu          sp, -1754(a0)
                  ori          t3, s9, 561
                  srl          a4, s11, s7
                  slt          zero, t0, gp
                  auipc        t6, 597367
                  slti         t3, s0, -336
                  srli         a2, t2, 19
                  nop
                  sub          s8, s11, t1
                  lb           s3, -215(a0)
                  addi         s11, a2, 1279
                  slti         s2, sp, 1203
                  sw           gp, -33(a0)
                  sll          t0, gp, s9
                  auipc        a2, 405885
                  and          sp, s6, s2
                  lb           t0, -172(a0)
                  sltiu        s3, tp, 1319
                  lbu          s3, -978(a0) #end riscv_load_store_rand_instr_stream_2
                  la           a2, region_0+1197 #start riscv_load_store_rand_instr_stream_4
                  sll          a3, t4, t1
                  sb           a0, 229(a2)
                  lbu          s7, -182(a2)
                  add          a4, t4, a2
                  sra          sp, a0, a2
                  lb           s6, -141(a2)
                  addi         ra, ra, -1179
                  and          s7, s5, s7
                  sb           t4, 256(a2)
                  slt          t0, gp, t6
                  xori         a3, t4, -1988
                  lbu          a1, 17(a2)
                  srai         t6, zero, 13
                  sw           a5, 91(a2)
                  srai         s8, s6, 15
                  lb           s5, -92(a2)
                  srli         a5, s0, 20
                  srl          s9, t6, s5
                  sh           t0, -195(a2)
                  lb           a1, 182(a2)
                  sw           t1, -173(a2)
                  lbu          a1, 108(a2)
                  sb           s1, -39(a2)
                  srli         sp, tp, 19
                  srli         zero, a7, 28
                  lbu          s9, 40(a2)
                  sb           a7, 210(a2)
                  srli         ra, a1, 29
                  add          t3, gp, t5
                  auipc        s7, 688915
                  or           zero, s7, t5
                  xor          tp, a6, s6
                  lb           a5, 229(a2)
                  lbu          t3, -24(a2)
                  slli         a7, t5, 30
                  nop
                  lbu          zero, 58(a2)
                  andi         s2, s10, -955
                  sub          ra, t6, s5
                  slti         gp, s8, 253
                  lbu          a0, -246(a2)
                  sll          t4, s6, tp
                  andi         ra, t3, 607
                  lhu          s10, -51(a2) #end riscv_load_store_rand_instr_stream_4
                  la           sp, region_1+1054 #start riscv_load_store_rand_instr_stream_0
                  sltu         s5, t3, gp
                  lb           s5, -5(sp)
                  lb           s7, -27(sp)
                  add          a5, a1, gp
                  lb           tp, 28(sp)
                  srl          s1, s7, s1
                  lbu          s5, -11(sp)
                  lbu          s8, 53(sp)
                  lb           s9, -20(sp)
                  sb           t2, 52(sp)
                  lb           s5, 38(sp)
                  slti         zero, t3, -454
                  lui          a2, 274462
                  lw           a0, -46(sp)
                  and          t5, t6, s5
                  sltiu        a1, gp, 1868
                  srli         t3, s5, 24
                  sltiu        s11, s11, 1706
                  sra          s11, a7, a2
                  slli         a4, ra, 31
                  slli         s11, s7, 1
                  lbu          t5, -43(sp)
                  sb           zero, -7(sp)
                  lbu          gp, 62(sp)
                  sll          t2, s5, a2
                  lbu          s3, 40(sp)
                  auipc        t2, 942920
                  sb           a7, -11(sp)
                  lhu          a1, 12(sp)
                  srl          s3, tp, s4
                  sw           s3, 18(sp)
                  slt          a5, s8, tp
                  lb           s3, -33(sp) #end riscv_load_store_rand_instr_stream_0
                  la           s3, region_0+814 #start riscv_load_store_rand_instr_stream_3
                  andi         s5, s7, -2046
                  lbu          s5, -2(s3)
                  and          t5, s2, tp
                  sb           s7, -6(s3)
                  nop
                  srli         t2, s5, 16
                  lbu          s2, -16(s3)
                  sh           t2, -16(s3)
                  sw           s1, -14(s3)
                  lb           a3, -11(s3)
                  auipc        s10, 709678
                  lbu          s5, 5(s3)
                  lb           a5, -15(s3)
                  lb           a4, -13(s3)
                  or           a7, a3, t4
                  or           zero, t5, a4
                  or           a5, t5, a3
                  lbu          a7, -7(s3)
                  lbu          a1, -9(s3)
                  sb           s9, -12(s3)
                  srl          s9, t1, a5
                  lb           a3, 13(s3)
                  lh           t3, -12(s3)
                  lbu          t5, -3(s3)
                  lhu          tp, -2(s3)
                  lh           s6, 12(s3)
                  lh           a5, -2(s3)
                  sb           t3, -13(s3)
                  andi         a6, s4, 1875
                  slti         a4, ra, 379
                  lb           a7, 13(s3)
                  slti         s9, t4, -921
                  sh           s1, -14(s3) #end riscv_load_store_rand_instr_stream_3
                  or           a6, ra, a2
                  srli         s10, a7, 0
                  sra          gp, t4, s9
                  sltiu        a7, s7, -1167
                  sltu         a5, s9, a6
                  xor          a5, s10, s5
                  bge          s3, s8, 26f
                  srl          t3, a4, gp
                  ori          s8, s9, -1049
                  or           a3, a6, gp
                  slt          a3, a2, s5
                  sll          a7, t0, s8
                  addi         s1, s4, 410
                  xor          a2, a2, a1
                  srai         t6, s6, 30
                  bgeu         a6, zero, 24f
                  auipc        a4, 827726
                  srli         a5, s2, 24
                  slli         s10, t5, 8
                  bge          a5, a5, 35f
                  slli         s5, t6, 15
                  addi         a0, a1, 396
                  sll          sp, ra, t6
                  srli         s11, ra, 29
24:               sub          t2, t3, t1
                  bgeu         a1, a6, 26f
26:               slt          s9, s7, a6
                  bgeu         t6, s3, 30f
                  slti         zero, s10, -76
                  sltu         t0, t6, t5
30:               srl          s5, s2, t5
                  bgeu         t4, s7, 47f
                  sltiu        s2, a1, -696
                  srl          a0, s6, a4
                  srli         s5, s0, 29
35:               sll          a0, t0, a6
                  and          a3, s4, s7
                  xor          s1, gp, ra
                  auipc        s3, 193444
                  auipc        t3, 109972
                  bgeu         t0, gp, 53f
                  sltiu        a0, t3, -1232
                  slti         s7, s2, -1878
                  srli         a5, t3, 11
                  srl          t2, sp, s9
                  srl          t6, s0, sp
                  andi         t6, s7, -1961
47:               add          a3, s9, s11
                  or           s6, a3, s6
                  add          a2, t1, s6
                  blt          s11, s4, 54f
                  slli         a0, s11, 0
                  xor          t5, t3, s8
53:               nop
54:               bge          t5, s7, 56f
                  lui          s7, 56702
56:               and          zero, t0, s9
                  srai         t5, s2, 11
                  sltu         a7, a1, a4
                  add          s5, s8, s7
                  add          t0, a3, s10
                  or           a5, s11, s0
                  slli         s6, gp, 25
                  add          a0, sp, tp
                  sub          t0, a3, a0
                  bltu         ra, s8, 68f
                  srl          t3, a7, s9
                  auipc        a2, 993877
68:               and          t6, s1, tp
                  srl          s7, zero, a0
                  sltiu        s9, a1, 1822
                  addi         a3, t3, 1087
                  slli         t6, s5, 1
                  ori          a3, s8, 1697
                  srli         a3, a1, 23
                  bne          s3, s1, 78f
                  slt          a3, t3, a7
                  andi         t2, s11, -816
78:               or           s1, t5, sp
                  ori          sp, t2, 1567
                  lui          s5, 676227
                  beq          a3, t4, 101f
                  sll          ra, t3, a1
                  nop
                  xori         s11, t5, 1276
                  sra          t4, s1, s9
                  and          ra, s0, t5
                  lui          a7, 56231
                  nop
                  xori         a2, gp, -320
                  sltu         t4, s7, t5
                  andi         t6, a7, 859
                  bgeu         t2, a7, 110f
                  bgeu         a1, s1, 102f
                  beq          t3, t0, 103f
                  sltu         t0, s5, t4
                  bgeu         t0, t5, 97f
97:               add          a0, t1, ra
                  ori          a2, s2, -1903
                  sll          t2, s7, a0
                  bgeu         zero, a4, 115f
101:              sll          gp, s7, s0
102:              slt          zero, s2, s1
103:              add          t5, s7, s0
                  nop
                  andi         a0, t2, 1169
                  slt          a2, s10, a1
                  srli         zero, s7, 22
                  xori         t2, gp, 1880
                  bgeu         a0, s0, 124f
110:              slt          a4, gp, a2
                  lui          t6, 898365
                  beq          ra, t6, 128f
                  sub          tp, a3, s4
                  srl          a7, a6, t1
115:              nop
                  ori          a4, t3, 1093
                  srli         a5, t2, 14
                  auipc        s5, 1013932
                  slli         s3, s1, 29
                  srli         a4, a2, 13
                  slli         s1, s8, 1
                  slli         a7, a1, 24
                  add          a2, s4, a3
124:              bgeu         t4, sp, 140f
                  ori          t2, s0, 557
                  or           ra, t3, s7
                  srli         s9, t2, 30
                  la           s1, sub_4
                  sll          a2, s9, s9
                  srli         sp, a4, 18
                  addi         s1, s1, 562
                  xori         a7, t3, -1669
                  sltiu        a0, t4, 1083
                  xor          a5, t6, s1
                  andi         t2, tp, 1746
                  srl          a0, ra, s10
sub_2_j5:         jalr         ra, s1, -561 #jump sub_2 -> sub_4
                  add          a7, t5, a6
                  add          a7, s1, gp
128:              sltu         s9, s5, a4
                  beq          t4, s10, 149f
                  slt          tp, s11, s4
                  nop
                  bgeu         a5, t3, 146f
                  beq          t1, a4, 140f
                  sltiu        s3, t3, 1261
                  nop
                  or           tp, ra, s0
                  xori         tp, a1, 296
                  ori          t0, s6, -120
                  bge          s9, t2, 154f
140:              ori          a5, a7, -1061
                  auipc        s7, 26260
                  bge          tp, t3, 151f
                  xori         s2, t2, 339
                  addi         a7, gp, 296
                  la           sp, region_0+1315 #start riscv_load_store_rand_instr_stream_6
                  sra          t4, zero, s7
                  ori          t0, tp, 1936
                  lb           a7, -1210(sp)
                  lui          s3, 341468
                  sltu         a2, a6, a7
                  lbu          s9, 61(sp)
                  sb           a3, -745(sp)
                  lb           a0, -876(sp)
                  sb           a5, 269(sp)
                  addi         t5, a0, 1162
                  srai         a3, sp, 29
                  sra          a4, t3, a6
                  lbu          gp, -373(sp)
                  andi         a2, t0, 1674
                  auipc        t2, 590767
                  sb           s0, -1140(sp)
                  sb           a1, -1110(sp)
                  lbu          a2, 499(sp)
                  lb           s1, -930(sp)
                  sb           s3, -990(sp)
                  sb           s9, -1209(sp)
                  xori         a1, t5, 229
                  lb           t5, -260(sp)
                  lbu          ra, 287(sp)
                  lbu          t2, 592(sp)
                  or           s5, s7, s5
                  lbu          a3, -165(sp)
                  srli         s7, sp, 2
                  auipc        s1, 547051
                  lb           t3, 239(sp)
                  sw           s1, 589(sp)
                  ori          s7, t1, -905
                  sb           t4, 320(sp)
                  lb           gp, -1066(sp)
                  sltu         a4, t2, a2
                  lb           a2, -276(sp) #end riscv_load_store_rand_instr_stream_6
                  or           s11, t1, a3
146:              blt          gp, t4, 158f
                  or           s6, a1, tp
                  bgeu         s10, s6, 166f
149:              sub          sp, s2, s11
                  slti         s10, a7, -1056
151:              srai         s8, t5, 25
                  blt          gp, s9, 172f
                  srai         tp, s0, 6
154:              addi         s7, s8, -68
                  addi         s11, s6, 666
                  nop
                  addi         t2, t3, 312
158:              ori          s1, s0, 1317
                  bltu         s11, ra, 171f
                  blt          t5, zero, 177f
                  xori         a2, t5, -440
                  addi         gp, a7, -238
                  sltu         s1, s10, t5
                  addi         t3, s11, 1245
                  and          s6, tp, s2
166:              sltu         a3, a5, s8
                  ori          s1, s11, -1039
                  xor          a3, s7, t1
                  srli         sp, s4, 19
                  sltiu        t6, a1, 85
171:              andi         gp, t5, 848
172:              bge          s0, s9, 187f
                  xor          s5, s11, a7
                  slti         t6, s3, 1001
                  bgeu         s0, a1, 195f
                  blt          a6, sp, 177f
177:              slti         s1, s2, 413
                  bgeu         a0, t3, 181f
                  ori          s9, s5, 674
                  nop
181:              or           a1, s0, s2
                  sltu         s9, s1, t2
                  lui          s1, 161803
                  slli         a2, s11, 24
                  addi         s9, a6, -586
                  addi         a6, a5, 1244
187:              sub          s6, s11, a4
                  beq          t5, s9, 197f
                  ori          s8, sp, 1576
                  bltu         s5, t5, 192f
                  srl          a3, sp, a4
192:              and          a2, s5, a6
                  bgeu         s8, zero, 196f
                  andi         a1, a5, 1747
195:              slt          s10, a0, t3
196:              andi         a5, s8, -555
197:              lui          zero, 205767
                  sltu         t6, s6, s4
                  lui          zero, 891469
                  blt          t2, s6, 216f
                  srli         s8, t6, 12
                  sra          tp, t1, t5
                  beq          s4, t0, 212f
                  bne          ra, tp, 222f
                  andi         a6, t0, 1647
                  addi         s3, zero, -930
                  ori          a4, a7, -1587
                  bge          zero, t0, 212f
                  srli         s5, s10, 13
                  auipc        a7, 401334
                  blt          a4, a2, 220f
212:              blt          s3, s4, 232f
                  slt          zero, s3, s8
                  srli         s1, s7, 10
                  srli         s7, a3, 28
216:              xori         s1, a6, -1888
                  srai         a4, sp, 5
                  sra          a4, a5, a3
                  bge          s6, t6, 236f
220:              srl          ra, a3, t6
                  nop
222:              bne          zero, t3, 242f
                  xor          s8, s0, s4
                  lui          s9, 254476
                  xori         s7, t1, 816
                  sll          a7, t2, s9
                  slti         t3, t2, 1532
                  srl          a3, zero, t3
                  slti         a4, a7, -1887
                  bgeu         t3, tp, 246f
                  sub          s1, a0, s0
232:              bgeu         a6, ra, 244f
                  and          sp, a1, s4
                  add          t4, s8, t0
                  beq          zero, t1, 250f
236:              sra          t0, sp, s1
                  bgeu         a1, s5, 257f
                  lui          t5, 467932
                  sltiu        ra, s11, 95
                  blt          s11, t0, 241f
241:              and          gp, t4, s4
242:              and          t3, t6, sp
                  sltiu        t0, s8, 877
244:              auipc        s8, 872042
                  bgeu         s11, t4, 259f
246:              andi         a0, s0, 1996
                  slt          a3, a3, a7
                  sltiu        s2, t0, -461
                  srai         s2, s2, 8
250:              bltu         t4, t4, 259f
                  addi         a7, t2, 1424
                  beq          s4, t5, 267f
                  sra          s6, s11, a2
                  slt          sp, t6, a6
                  sltiu        t3, a4, -1138
                  or           s8, a4, ra
257:              srl          t2, t1, a1
                  sub          sp, s3, sp
259:              auipc        s5, 41475
                  auipc        s7, 396001
                  srai         s10, s4, 6
                  auipc        sp, 24092
                  sll          sp, t4, zero
                  srl          s3, sp, t2
                  bltu         t4, s11, 277f
                  sll          tp, t2, a2
267:              bge          s3, s1, 270f
                  beq          zero, t3, 286f
                  xor          t2, s11, s0
270:              beq          a1, a2, 286f
                  srai         tp, a0, 27
                  blt          a2, s7, 285f
                  and          sp, tp, t4
                  blt          s11, zero, 281f
                  slti         t2, a2, 748
                  bge          s11, s1, 292f
277:              beq          t6, s9, 286f
                  blt          a6, gp, 294f
                  sra          s6, a0, a0
                  slt          ra, s8, t4
281:              ori          a3, a5, -1346
                  sra          s2, t4, s11
                  bne          t6, t4, 286f
                  add          s8, a1, s2
285:              sltu         a5, a6, gp
286:              bne          t1, t0, 298f
                  ori          s7, t0, 1084
                  sll          tp, a1, s11
                  addi         s8, sp, -1108
                  lui          t0, 185505
                  bgeu         a2, t6, 307f
292:              sltu         s1, s10, s4
                  bge          s6, a5, 302f
294:              add          t6, t3, t2
                  bne          s9, s7, 315f
                  xor          zero, t3, sp
                  srl          a0, s6, sp
298:              bge          a6, zero, 311f
                  sll          a2, s0, tp
                  sltu         s10, s6, s5
                  add          a7, s0, t4
302:              sub          a0, s4, t3
                  andi         s10, sp, -1396
                  slli         s5, s9, 15
                  ori          sp, s8, 1868
                  xori         s11, a5, -1921
307:              bne          a0, t1, 316f
                  sll          ra, a3, a2
                  srai         s9, s3, 19
                  srli         a5, t5, 23
311:              bgeu         t0, t5, 320f
                  srai         a6, a2, 3
                  bltu         a1, t3, 333f
                  or           a7, t5, s4
315:              beq          s4, a3, 319f
316:              slli         a5, gp, 13
                  bgeu         s5, s8, 332f
                  bne          a2, t0, 336f
319:              srai         t0, a3, 1
320:              add          t2, s5, s6
                  slti         s2, a6, -1013
                  srai         tp, t2, 18
                  ori          sp, t6, -668
                  slti         t0, a4, -1575
                  lui          s10, 67150
                  srl          s6, t2, a7
                  and          t2, s8, t4
                  sll          zero, t5, ra
                  slti         a7, t3, 1748
                  bne          s11, a1, 350f
                  or           s6, a4, s2
332:              ori          zero, zero, 797
333:              srai         a5, s0, 9
                  andi         zero, s2, 950
                  blt          s8, s5, 347f
336:              blt          ra, s2, 337f
337:              srai         a5, t2, 2
                  and          s5, a7, tp
                  srai         s2, s1, 16
                  add          gp, a1, gp
                  sra          s2, t0, t2
                  bgeu         tp, t3, 362f
                  slli         s7, s8, 9
                  slti         s5, s3, -446
                  or           a4, a0, t2
                  bne          s9, s7, 364f
347:              sltiu        a0, t1, -1380
                  xori         t5, s0, -1602
                  sltu         t6, s0, s9
350:              auipc        s6, 1031386
                  lui          a4, 52383
                  srai         s6, a2, 3
                  bge          t1, zero, 367f
                  slti         s2, a6, -2013
                  add          s1, s4, a2
                  andi         s3, t2, 241
                  and          gp, s11, tp
                  bne          s10, s7, 375f
                  lui          s1, 847469
                  bgeu         zero, s0, 361f
361:              beq          gp, a6, 376f
362:              srai         a7, a0, 7
                  bgeu         t0, s1, 365f
364:              auipc        t6, 360664
365:              sub          t0, s7, a0
                  beq          a6, ra, 373f
367:              beq          a0, s10, 383f
                  addi         zero, gp, 519
                  lui          s1, 306808
                  addi         ra, t0, -622
                  blt          s0, t6, 374f
                  and          t3, a7, t5
373:              slt          a7, a1, t3
374:              xori         sp, s6, 1371
375:              add          a4, a7, tp
376:              lui          gp, 31156
                  srl          a2, ra, sp
                  bltu         a7, s5, 394f
                  sltu         ra, sp, ra
                  nop
                  bltu         t1, s3, 384f
                  sltu         a6, a0, a1
383:              slli         gp, s3, 8
384:              bltu         t6, zero, 399f
                  bge          a6, a7, 397f
                  sltiu        t3, a7, 837
                  bltu         t5, s4, 405f
                  slli         t4, s4, 4
                  slt          s11, t1, a7
                  add          s3, s3, t0
                  slt          a3, s4, a4
                  slti         a3, t5, 960
                  xori         a2, sp, 667
394:              blt          t3, zero, 397f
                  sub          tp, t4, t2
                  slli         a5, tp, 20
397:              auipc        s11, 885891
                  bltu         s9, s1, 402f
399:              auipc        sp, 138706
                  slli         s2, s1, 22
                  bge          s10, s1, 415f
402:              nop
                  add          a1, s4, a7
                  srli         s11, tp, 7
405:              bgeu         s2, gp, 425f
                  slt          s6, t5, s1
                  sltu         s1, t0, a0
                  addi         a5, s10, 23
                  ori          sp, s5, -1692
                  andi         t5, t4, -319
                  ori          a3, a6, 638
                  slt          t3, s4, ra
                  sltu         t6, a2, a5
                  xori         s5, t3, -1180
sub_2_j4:         jal          ra, sub_3 #jump sub_2 -> sub_3
                  lui          a2, 234486
                  sll          t4, s8, s5
                  bne          s8, s1, 420f
                  slti         tp, s8, 271
                  slt          s3, s9, s8
                  auipc        sp, 209520
415:              sltu         ra, t1, s11
                  slli         a5, s5, 26
                  slti         tp, tp, -197
                  sltu         a7, a4, a5
                  nop
420:              bgeu         sp, zero, 421f
421:              sll          a6, s10, s2
                  bne          t2, ra, 425f
                  bgeu         t0, ra, 430f
                  addi         s1, s11, -1133
425:              sra          gp, a0, s10
                  beq          t3, a4, 442f
                  andi         s10, a1, 1493
                  bge          a3, t4, 443f
                  ori          s7, a2, 342
430:              bltu         a3, s9, 446f
                  bgeu         s8, s2, 434f
                  and          s5, s3, t0
                  srli         t3, s11, 13
434:              ori          t3, a6, 1120
                  ori          zero, t3, -434
                  bgeu         a2, t2, 454f
                  lui          s2, 274414
                  bltu         t3, s4, 447f
                  auipc        a3, 170274
                  bgeu         s1, t3, 456f
                  sra          s9, t6, s6
442:              bltu         s9, s7, 462f
443:              bne          s4, s2, 452f
                  sltiu        s3, a0, 318
                  auipc        a2, 239049
446:              srl          a4, a6, s4
447:              bge          gp, a2, 448f
448:              andi         a6, t0, 1280
                  bne          tp, a3, 466f
                  srli         t3, s9, 30
                  auipc        t0, 915270
452:              add          s5, a3, a3
                  slt          tp, a3, zero
454:              bge          t6, a0, 467f
                  sltu         s7, sp, a1
456:              xor          a5, s3, a6
                  srli         gp, a7, 3
                  addi         s3, a3, -658
                  slti         zero, a2, 1686
                  srl          sp, sp, s4
                  sra          t3, a5, t4
462:              add          s2, s2, s4
                  and          a3, sp, zero
                  nop
                  bltu         a0, t2, 481f
466:              addi         sp, s2, 590
467:              sltiu        s3, s5, -8
                  srai         a5, gp, 12
                  srai         s9, s7, 1
                  bne          tp, s9, 479f
                  sltiu        a1, s3, -730
                  xor          t2, s3, a1
                  sll          t4, s5, t2
                  sltu         t2, s5, t3
                  auipc        a3, 125792
                  auipc        t6, 100183
                  bltu         a2, s6, 489f
                  bltu         sp, a7, 498f
479:              addi         s8, s6, 1657
                  bgeu         t0, t1, 482f
481:              bne          tp, s0, 496f
482:              bltu         a4, t2, 502f
                  slt          s10, s11, zero
                  or           s5, s10, sp
                  sra          s3, t0, a3
                  auipc        s5, 962138
                  auipc        t2, 826446
                  srai         t6, t1, 18
489:              srl          sp, sp, a5
                  xori         t4, t0, 1990
                  srl          s10, s9, s2
                  lui          t5, 982043
                  sra          a1, gp, t2
                  bge          a3, s3, 509f
                  auipc        s7, 181533
496:              nop
                  slli         sp, a2, 5
498:              auipc        gp, 47265
                  slti         a5, t1, 360
                  srai         sp, t4, 2
                  nop
502:              xor          tp, a3, a5
                  srl          zero, a4, ra
                  bgeu         t2, t1, 522f
                  sub          a6, t5, a6
                  slli         t0, t1, 17
                  srai         t6, a2, 3
                  srai         s6, s11, 9
509:              bgeu         s9, tp, 518f
                  blt          s8, t5, 519f
                  lui          a7, 248044
                  add          t0, t2, a6
                  xor          s7, zero, s8
                  lui          s7, 467609
                  blt          a1, a5, 527f
                  bge          a7, sp, 519f
                  nop
518:              sll          a1, s2, s8
519:              slt          a4, zero, s2
                  sltu         s8, a3, s6
                  blt          s3, t1, 537f
522:              slt          t4, a2, gp
                  sltu         s5, t3, s4
                  lui          a0, 592352
                  sll          s2, zero, sp
                  bltu         t5, t2, 540f
527:              add          t6, ra, t3
                  addi         t6, sp, -1017
                  bltu         a3, s1, 545f
                  bgeu         t2, gp, 550f
                  srli         s9, t5, 11
                  beq          ra, zero, 541f
                  slti         s9, s1, -1723
                  xor          a4, s3, zero
                  slli         a0, a5, 20
                  slti         gp, ra, 1915
537:              sltu         a4, s9, a3
                  addi         t3, s11, -170
                  srai         ra, a3, 2
540:              slti         a2, a1, 532
541:              bltu         t0, t3, 544f
                  srl          ra, t1, a4
                  bne          a2, s10, 547f
544:              srl          s11, s10, s3
545:              sll          a4, t2, a3
                  sll          s6, s5, s0
547:              and          a0, ra, t1
                  bge          s0, s5, 568f
                  sra          t6, t4, a6
550:              sra          a3, a6, zero
                  slti         t2, a7, -580
                  or           s11, t6, a1
                  blt          sp, zero, 573f
                  srli         s3, t0, 10
                  bgeu         a5, t0, 564f
                  sub          s5, a0, t1
                  beq          t4, ra, 560f
                  sltiu        tp, a1, 830
                  sltu         a7, tp, s7
560:              ori          a4, t0, 124
                  bgeu         t5, a2, 576f
                  add          s5, zero, a1
                  or           s10, s6, s6
564:              bge          t4, s8, 579f
                  bltu         s10, s6, 581f
                  slti         s11, s0, 1240
                  bge          s4, ra, 584f
568:              xor          a5, t1, gp
                  sll          t2, a4, zero
                  sub          s6, s3, t0
                  bgeu         a3, s0, 572f
572:              lui          s7, 338467
573:              sra          a2, tp, t2
                  sra          s6, s2, a5
                  bge          a6, t2, 577f
576:              auipc        a7, 538234
577:              andi         a4, t4, 1746
                  add          t3, t1, s6
579:              addi         gp, a7, -1989
                  srl          gp, s7, t1
581:              andi         a1, t2, 1415
                  auipc        t4, 1010908
                  sra          a7, s3, a7
584:              srli         a6, t5, 2
                  srl          s2, a0, a6
                  lui          t0, 313457
                  ori          s10, a3, -104
                  slli         s2, a6, 14
                  sltu         s2, ra, a7
                  auipc        s6, 579034
                  srai         t4, s4, 31
                  bge          s11, a3, 599f
                  xor          zero, s7, t0
                  bgeu         t6, gp, 612f
                  beq          a3, t0, 596f
596:              bltu         s2, tp, 608f
                  bgeu         t1, a4, 610f
                  xori         s9, t5, -1506
599:              slli         t3, s4, 5
                  lui          a4, 76825
                  ori          s3, s8, -107
                  ori          ra, zero, -1770
                  slti         a7, s7, -518
                  auipc        t6, 503056
                  slli         a5, t0, 18
                  bgeu         a4, s9, 622f
                  or           t3, t0, a1
608:              sltiu        a5, s0, 759
                  sub          a1, t5, t5
610:              bne          a2, t2, 630f
                  xor          t0, gp, a5
612:              beq          s8, s11, 627f
                  srl          a7, a4, s7
                  sll          a2, s6, sp
                  bgeu         t2, s5, 629f
                  slli         s3, a1, 30
                  auipc        s2, 191957
                  sltu         s2, a2, s9
                  sub          s1, a1, zero
                  or           s5, t5, t0
                  bgeu         s9, a7, 633f
622:              beq          a2, a5, 637f
                  srli         a7, sp, 18
                  and          tp, t0, gp
                  blt          s0, zero, 634f
                  andi         s8, a4, -437
627:              or           tp, t4, s10
                  srai         s2, a6, 1
629:              sltiu        s6, a2, 603
630:              slt          a3, s11, tp
                  andi         s2, a4, 815
                  bge          tp, a5, 644f
633:              srli         s3, s6, 13
634:              srl          s5, s7, s1
                  bne          t6, s0, 648f
                  or           t2, s3, zero
637:              bltu         t4, t4, 653f
                  slti         s10, t5, 294
                  sll          a0, tp, t4
                  slt          a6, s0, ra
                  bgeu         ra, s4, 657f
                  addi         a4, t3, -1584
                  auipc        t3, 886055
644:              xor          a4, s2, s1
                  sltu         s1, s0, s9
                  beq          s2, a1, 649f
                  bgeu         t2, t1, 649f
648:              bge          sp, a3, 665f
649:              xor          tp, s6, s10
                  slt          a5, t6, a7
                  beq          s10, s2, 654f
                  bltu         s4, s5, 668f
653:              blt          t6, t6, 673f
654:              add          s11, s10, s10
                  srl          s2, t4, s2
                  addi         t2, s0, -601
657:              blt          s10, a3, 658f
658:              and          a4, s4, sp
                  sltiu        tp, t3, 1708
                  andi         a1, s10, 1188
                  slli         t3, tp, 3
                  sub          s9, t1, s5
                  slti         ra, t0, 1271
                  nop
665:              andi         a2, a0, 1653
                  sll          sp, a1, a0
                  xor          tp, a5, a0
668:              bgeu         a7, a3, 677f
                  xori         t0, t4, -435
                  bgeu         s0, a5, 688f
                  sltu         a4, gp, sp
                  blt          t2, s7, 673f
673:              lui          s7, 347662
                  slt          s6, t6, a0
                  addi         t6, gp, -235
                  bltu         t3, a7, 691f
677:              ori          a2, t0, -1360
                  srl          s11, a6, t6
                  xor          sp, s11, t6
                  add          a1, s7, s1
                  srli         sp, a6, 7
                  nop
                  sub          s1, a3, s4
                  srli         t5, s8, 16
                  blt          a6, a7, 705f
                  slt          ra, ra, s2
                  slli         s7, t4, 13
688:              slli         s3, t5, 23
                  srai         s5, s3, 9
                  beq          t3, t4, 706f
691:              sra          s8, s8, s6
                  srli         s10, a7, 3
                  sltiu        ra, s5, -296
                  sltiu        s2, a0, 592
                  beq          s8, a1, 699f
                  nop
                  ori          t3, sp, -262
                  slti         a5, a2, -853
699:              slt          t0, gp, ra
                  andi         a1, a2, 1595
                  slti         t4, s10, -1596
                  sltiu        t4, t6, 819
                  auipc        ra, 666820
                  andi         s5, sp, 480
705:              bltu         t0, zero, 725f
706:              bltu         a2, t1, 715f
                  lui          a4, 99281
                  bltu         gp, t2, 728f
                  addi         a2, zero, -497
                  addi         s2, t4, 1816
                  and          gp, tp, s5
                  sra          s9, a2, sp
                  auipc        t3, 990564
                  sra          s10, a6, sp
715:              xor          s7, a1, a2
                  add          a3, zero, t2
                  andi         s6, tp, 96
                  nop
                  srai         t6, s8, 23
                  or           ra, s11, a2
                  bgeu         sp, s2, 730f
                  srl          t3, s11, sp
                  srai         s1, s1, 27
                  ori          s8, t4, -401
725:              srli         sp, t4, 17
                  bgeu         t5, ra, 729f
                  auipc        a4, 954250
728:              srai         s8, t6, 13
729:              srl          s8, t0, t0
730:              srli         s9, t5, 23
                  blt          sp, s3, 738f
                  bgeu         a7, s3, 750f
                  bne          a2, a0, 748f
                  sub          zero, a1, s7
                  sra          t2, a7, a3
                  ori          t6, t4, -1199
                  sll          a2, t0, s6
738:              or           a1, s8, t5
                  andi         sp, s5, -1723
                  slti         s5, s6, -1324
                  blt          sp, s6, 744f
                  slti         s10, s5, 202
                  srl          s5, s9, a6
744:              sll          t2, s8, a1
                  or           t2, a4, s3
                  or           a7, a4, t0
                  xor          sp, t2, ra
748:              srli         s8, s3, 28
                  sll          s8, ra, s10
750:              slli         t4, a4, 15
                  ori          t6, s8, 1276
                  sltu         a4, a6, a5
                  add          t0, t0, s6
                  sltiu        a2, t4, -1027
                  add          t3, s9, a3
                  ori          a2, a0, -329
                  nop
                  ori          gp, s1, 789
                  bge          gp, a4, 779f
                  slli         a5, t0, 26
                  and          a1, a2, ra
                  sll          s7, s2, t2
                  slli         s8, t4, 0
                  bne          sp, gp, 766f
                  bltu         t0, t0, 774f
766:              andi         t4, t2, 271
                  addi         a6, s7, -1254
                  slli         a7, t5, 26
                  bgeu         gp, s2, 784f
                  blt          t2, gp, 779f
                  blt          a6, gp, 772f
772:              add          t0, a7, a3
                  or           a1, a7, s11
774:              sra          a0, a3, t6
                  beq          s8, s11, 784f
                  xori         s8, gp, 387
                  sub          s6, s8, s7
                  sltiu        s2, s9, -1229
779:              and          zero, a2, a3
                  add          s1, s0, a3
                  srl          gp, t3, s11
                  addi         s7, sp, -357
                  sub          gp, s8, gp
784:              bne          ra, zero, 800f
                  srai         s7, s10, 26
                  bge          s3, s3, 801f
                  beq          sp, a7, 805f
                  xori         a0, s0, 660
                  slli         a3, tp, 30
                  or           t4, a6, t4
                  srl          a1, s0, t3
                  add          a0, a1, t1
                  addi         zero, t0, -161
                  srai         s10, s0, 17
                  andi         a2, s0, -1046
                  srai         tp, t4, 18
                  bge          a4, t2, 800f
                  srai         t0, s2, 26
                  beq          s7, tp, 803f
800:              srli         s5, a5, 24
801:              srli         sp, ra, 10
                  bne          s6, s10, 814f
803:              srli         a7, a1, 14
                  bne          t3, s2, 813f
805:              bgeu         s10, s3, 825f
                  xori         a6, a0, 195
                  addi         a7, t1, 232
                  xor          zero, sp, s4
                  bge          gp, s11, 822f
                  and          a5, s5, a1
                  slt          a2, s6, sp
                  ori          a4, t1, 1653
813:              sltu         a0, s9, a6
814:              nop
                  bltu         s7, t0, 816f
816:              slt          a4, zero, zero
                  sub          s2, s1, a5
                  or           tp, a0, gp
                  sltiu        s2, t4, 524
                  srli         t6, a4, 13
                  srli         s10, s6, 14
822:              xor          s2, t3, tp
                  andi         s5, a1, 1379
                  xor          s3, t6, a3
825:              sll          t3, t3, gp
                  bltu         s2, ra, 844f
                  andi         a5, s10, 699
                  or           s6, s1, a0
                  srai         s5, gp, 3
                  xor          a0, s2, a4
                  lui          a0, 479360
                  bge          a3, t2, 844f
                  blt          tp, a6, 836f
                  slti         t2, t1, 1697
                  la           sp, region_1+361 #start riscv_load_store_rand_instr_stream_5
                  sb           a0, 21(sp)
                  srli         a5, a1, 22
                  sw           s4, -101(sp)
                  lb           zero, 18(sp)
                  addi         a3, a5, 835
                  sb           sp, 99(sp)
                  and          s2, s11, a7
                  lh           gp, -221(sp)
                  lbu          s7, -34(sp)
                  nop
                  lbu          s3, -176(sp)
                  lbu          t3, -167(sp)
                  srl          a3, s2, t4
                  lb           a3, -205(sp)
                  sb           s4, -171(sp)
                  sra          t6, a0, a7
                  auipc        t3, 309336
                  lb           a5, 93(sp)
                  sub          a2, a0, a6
                  sb           s1, 49(sp)
                  lbu          a4, 15(sp)
                  sll          s9, s7, s0
                  sh           s2, 89(sp)
                  nop
                  lb           gp, 81(sp)
                  lh           gp, 85(sp)
                  sb           a0, -146(sp)
                  srl          s1, s10, t5
                  sub          a4, t3, s7
                  lb           a3, 13(sp)
                  srai         t4, s4, 31
                  sb           a6, 36(sp)
                  lbu          s6, 207(sp) #end riscv_load_store_rand_instr_stream_5
                  bltu         s11, a0, 851f
836:              xori         a1, a4, 712
                  sub          s7, s5, s1
                  sll          a5, a5, zero
                  slli         a2, s2, 8
                  or           t4, s8, s8
                  srl          a2, t6, t0
                  xor          s6, s5, a7
                  or           a6, s9, t5
844:              bgeu         a3, t4, 860f
                  auipc        a3, 573618
                  lui          t4, 757881
                  auipc        t5, 1009252
                  bgeu         zero, zero, 868f
                  nop
                  blt          t6, s8, 864f
851:              slli         s1, s5, 14
                  srl          gp, tp, a4
                  slti         t6, t3, -610
                  srai         s8, s2, 10
                  beq          t4, s9, 871f
                  sll          a6, s3, s1
                  and          s7, s11, s4
                  bge          gp, a1, 878f
                  bgeu         t1, s3, 866f
860:              lui          s11, 844393
                  bne          s5, s1, 876f
                  srl          a7, t5, tp
                  xor          s1, a0, gp
864:              ori          t5, t5, 375
                  ori          ra, t4, 1332
866:              bltu         t4, t1, 883f
                  or           t4, s2, t6
868:              sra          a7, t4, s10
                  srai         a2, a4, 7
                  auipc        s11, 271744
871:              lui          s1, 15553
                  nop
                  sra          a2, a1, sp
                  lui          a0, 941385
                  srai         s8, sp, 4
876:              beq          t1, s2, 885f
                  lui          sp, 959615
878:              add          s11, gp, s10
                  lui          s2, 195000
                  and          sp, a7, a3
                  bne          a6, t3, 896f
                  srl          a2, s9, t1
883:              xori         ra, t6, -1336
                  slt          s9, sp, t2
885:              sra          s7, t5, a7
                  bltu         s11, ra, 895f
                  blt          s9, t4, 899f
                  add          s9, s4, tp
                  bne          a7, a6, 898f
                  sltu         s6, t0, t3
                  nop
                  bge          a7, s3, 899f
                  bne          s4, s4, 896f
                  sltu         sp, t4, s10
895:              slli         s8, a1, 18
896:              slli         t3, sp, 15
                  add          gp, s7, s8
898:              bltu         t6, a3, 899f
899:              sll          t6, a4, gp
                  srai         s8, a6, 15
                  sra          a2, zero, tp
                  slt          a6, a1, s9
                  lw           ra, 4(s4)
                  addi         t2, s10, -1910
                  srl          a2, s2, a6
                  srl          t4, a4, t1
                  addi         s4, s4, 32
                  slli         s2, ra, 17
                  sll          a3, t1, s4
                  xori         a3, zero, -1354
1186:             addi x3, x1, 0
1186:             jalr x3, x3, 0
sub_6:            nop
                  nop
                  bltu         a4, s4, sub_6_stack_p
sub_6_stack_p:    addi         s4, s4, -52
                  xor          t2, a6, a2
                  slt          t5, s6, a1
                  sw           ra, 4(s4)
                  sra          s3, s5, ra
                  srl          t6, a4, s4
                  auipc        s6, 535134
                  sra          a6, s8, t5
                  andi         s2, s5, 1633
                  la           s1, region_0+929 #start riscv_load_store_rand_instr_stream_6
                  lbu          s3, -694(s1)
                  andi         a2, a6, 526
                  lbu          a7, 428(s1)
                  lbu          s7, 330(s1)
                  sb           t0, 393(s1)
                  lbu          a7, -212(s1)
                  lb           ra, 226(s1)
                  lhu          a5, -677(s1)
                  lb           a1, 974(s1)
                  lbu          t5, -120(s1)
                  lbu          a6, 994(s1)
                  lb           t0, 810(s1)
                  lb           t4, 568(s1)
                  sltu         t4, s9, t1
                  sra          a1, s9, t0
                  xor          t4, t0, tp
                  sb           a7, -912(s1)
                  sb           a4, 1006(s1)
                  lb           t4, 681(s1)
                  sra          gp, t1, t2
                  lh           t3, 501(s1)
                  sb           s0, 78(s1)
                  sh           a2, 873(s1)
                  lui          t4, 751537
                  sltiu        a6, zero, 152
                  sh           zero, -415(s1)
                  lw           s5, 323(s1)
                  ori          t2, a2, 107
                  lbu          zero, 344(s1)
                  sltu         t3, a5, s9
                  addi         s11, sp, 771
                  lhu          t2, 835(s1) #end riscv_load_store_rand_instr_stream_6
                  la           tp, region_1+1106 #start riscv_load_store_rand_instr_stream_3
                  lhu          a3, 50(tp)
                  lbu          a0, 25(tp)
                  lb           a1, -61(tp)
                  lbu          s11, 45(tp)
                  srl          t0, t0, s4
                  nop
                  sb           gp, 10(tp)
                  srli         s10, t2, 24
                  auipc        t2, 218227
                  sb           s11, -37(tp)
                  sw           a0, -58(tp)
                  sll          s2, s3, s6
                  lui          s3, 407376
                  or           gp, s9, tp
                  srli         a2, sp, 10
                  slli         sp, a5, 20
                  sltiu        gp, s4, 1980
                  srai         a7, a1, 6
                  sb           ra, -1(tp)
                  slti         s3, t2, 2013
                  lb           a3, -13(tp)
                  lbu          a3, 19(tp)
                  lbu          s7, 27(tp)
                  slt          s9, s0, ra
                  sll          s5, ra, a0
                  srli         sp, s1, 13
                  sb           s4, 45(tp) #end riscv_load_store_rand_instr_stream_3
                  la           s6, region_1+1774 #start riscv_load_store_rand_instr_stream_4
                  sb           tp, -1636(s6)
                  srai         a7, a6, 6
                  slti         tp, tp, 312
                  sltiu        s10, sp, 1635
                  sh           s9, -1692(s6)
                  lbu          s7, -1507(s6)
                  lhu          s5, -1466(s6)
                  lui          a0, 1014742
                  sltiu        s3, gp, -1528
                  addi         zero, s4, 439
                  lh           a2, -824(s6)
                  slli         tp, a7, 30
                  lbu          a4, -1695(s6)
                  srl          a1, s7, s11
                  lbu          s10, -1531(s6)
                  lb           s5, -853(s6)
                  sll          t3, t6, gp
                  srli         s5, a6, 29
                  sltu         t0, s8, s7
                  ori          s1, a5, -1360
                  lhu          a6, -800(s6)
                  xori         s8, a5, 178
                  lbu          s1, 127(s6)
                  addi         a4, ra, 1983
                  nop
                  lbu          s1, -809(s6)
                  sh           a3, 0(s6)
                  sub          a5, s2, s9
                  srai         gp, a2, 20
                  sb           tp, -770(s6)
                  lbu          t0, -418(s6)
                  sh           s7, -1676(s6) #end riscv_load_store_rand_instr_stream_4
                  la           s5, region_0+1166 #start riscv_load_store_rand_instr_stream_2
                  auipc        s8, 617299
                  sb           s8, -15(s5)
                  slti         t5, t1, 406
                  lb           s6, -1(s5)
                  lb           a0, 1(s5)
                  lb           a7, -14(s5)
                  lb           s2, -1(s5)
                  slt          a7, s8, s0
                  lb           a7, 12(s5)
                  sub          a1, s8, zero
                  lb           a7, -10(s5)
                  srli         t2, t4, 30
                  lbu          s8, -11(s5)
                  slti         a3, a7, -1916
                  sltu         t2, s5, t3
                  sb           a1, -11(s5)
                  sltiu        zero, sp, -514
                  lh           sp, -4(s5)
                  xori         s6, s11, 2040
                  addi         a3, s2, -1883
                  xori         s2, s7, -1935
                  sltiu        a4, a6, -50
                  lb           t2, 5(s5)
                  sb           s10, 4(s5)
                  xor          a6, a0, a7
                  sb           s2, 14(s5)
                  lui          a5, 408377
                  addi         s3, s10, 1000
                  auipc        a7, 347020
                  ori          s1, s11, 649
                  sb           s4, -13(s5)
                  nop
                  lbu          t0, -13(s5)
                  sb           s10, -10(s5)
                  srai         a7, t6, 24
                  slti         t4, a3, 279
                  andi         sp, s2, -123
                  sra          tp, s6, ra
                  lbu          s9, 14(s5)
                  lh           a7, -6(s5)
                  auipc        a3, 208969
                  add          t5, a0, a6
                  lh           s8, -8(s5)
                  lbu          t4, 10(s5)
                  and          t4, s9, s7
                  lui          zero, 183271
                  xor          s10, s1, t4
                  and          t3, t3, zero
                  sub          s6, a2, s7
                  lhu          tp, 2(s5) #end riscv_load_store_rand_instr_stream_2
                  la           s5, region_1+1409 #start riscv_load_store_rand_instr_stream_7
                  srai         s10, t5, 26
                  lh           s11, 87(s5)
                  sra          s6, t5, s11
                  lb           s6, 205(s5)
                  ori          sp, t3, -1658
                  addi         a1, a4, -131
                  sltiu        t4, s8, 619
                  lbu          zero, -236(s5)
                  sb           gp, -6(s5)
                  ori          sp, ra, -178
                  sra          t6, t1, a6
                  lui          a2, 506204
                  lhu          s10, -101(s5)
                  sb           s3, 116(s5)
                  sll          s9, s5, s4
                  sb           s5, -6(s5)
                  and          s9, s7, a4
                  sh           s6, 73(s5)
                  sb           ra, 208(s5)
                  srli         tp, s10, 8
                  lb           t4, -63(s5)
                  ori          t2, t3, -963
                  sb           s0, 86(s5)
                  slt          t0, s1, a3
                  sb           s8, 233(s5)
                  xor          t6, t4, sp
                  sra          a2, t6, a1
                  lhu          a7, -27(s5)
                  lbu          s1, 185(s5)
                  lhu          a1, -41(s5)
                  sll          t2, t5, s11
                  sll          a1, t1, a6
                  sub          s6, s2, s1
                  sub          t4, s9, t4
                  lh           t3, -33(s5)
                  andi         a4, t4, 249
                  xori         a2, t5, 1417
                  srli         zero, t1, 27
                  lh           s1, 153(s5)
                  lw           a6, -49(s5)
                  lhu          s2, 99(s5)
                  or           a1, s11, zero
                  sub          a6, t1, a4
                  sh           s9, 227(s5)
                  nop
                  lw           zero, 23(s5)
                  sb           gp, -129(s5)
                  sb           s0, -207(s5)
                  lbu          s8, 8(s5)
                  lhu          a5, 51(s5)
                  xori         a2, a4, 1480
                  slli         a0, s11, 21
                  xor          s2, a4, a2
                  srli         s11, s10, 29
                  sb           s11, 70(s5)
                  sb           a7, 57(s5) #end riscv_load_store_rand_instr_stream_7
                  la           sp, region_1+775 #start riscv_load_store_rand_instr_stream_0
                  slti         a5, a7, -468
                  lb           ra, -201(sp)
                  lb           a7, -199(sp)
                  slti         s10, ra, -919
                  lbu          gp, 36(sp)
                  lb           t6, -88(sp)
                  lb           tp, 219(sp)
                  srai         s7, a3, 27
                  or           s2, s8, s5
                  lbu          s10, 119(sp)
                  lb           a2, 127(sp)
                  lbu          a4, 220(sp)
                  lbu          a0, -236(sp)
                  nop
                  lh           a3, 25(sp)
                  lb           s9, -57(sp)
                  lbu          s5, 154(sp)
                  srai         s3, a5, 19
                  sh           a5, 87(sp)
                  lb           s3, 219(sp)
                  lhu          a7, 243(sp)
                  sw           t4, -243(sp)
                  lhu          a4, -83(sp)
                  lbu          s11, 96(sp)
                  lh           gp, 33(sp)
                  sll          t6, a3, gp
                  sb           t4, -92(sp)
                  sh           t0, -27(sp)
                  srai         t2, ra, 25
                  sb           t0, 100(sp)
                  lhu          a4, 199(sp)
                  sb           s0, 247(sp)
                  sh           t2, 195(sp)
                  xor          t0, a5, t6
                  lhu          s11, -89(sp)
                  sll          tp, a4, zero
                  sra          a2, s0, a4
                  lbu          a0, -93(sp) #end riscv_load_store_rand_instr_stream_0
                  la           a3, region_0+852 #start riscv_load_store_rand_instr_stream_10
                  andi         s7, t5, 870
                  slti         t5, t0, 1767
                  srai         s5, zero, 2
                  slt          a4, s8, t0
                  add          s2, s7, s7
                  sh           s7, 786(a3)
                  sw           t4, -644(a3)
                  lbu          s5, 15(a3)
                  lh           s7, 706(a3)
                  lb           s11, -280(a3)
                  add          s6, s5, s8
                  sltiu        s8, s6, 1675
                  ori          s9, zero, 275
                  nop
                  slti         s11, a0, 1428
                  lb           s3, -551(a3)
                  sb           t6, -107(a3)
                  lb           s6, -235(a3)
                  sb           a7, 287(a3)
                  slt          s10, t0, t6
                  xor          s11, tp, a6
                  nop
                  addi         zero, s4, 1912
                  sltiu        t0, a6, 925
                  sltu         t2, s10, a2
                  srl          t4, ra, s2
                  sll          s11, s1, s3
                  addi         t2, sp, 600
                  add          s5, s8, a5
                  lui          s5, 523705
                  ori          s9, a6, -1641
                  lbu          a5, -215(a3)
                  slti         t6, a3, -1519
                  sll          a5, tp, t2
                  lb           s7, -14(a3) #end riscv_load_store_rand_instr_stream_10
                  la           s11, region_1+1405 #start riscv_load_store_rand_instr_stream_9
                  sll          s2, a0, s6
                  sb           a2, 144(s11)
                  lbu          s2, 420(s11)
                  sh           s8, -1149(s11)
                  lb           t0, -534(s11)
                  sh           s4, 489(s11)
                  and          a1, ra, s3
                  slli         s1, t6, 18
                  lbu          t0, -1004(s11)
                  sra          s3, a6, a1
                  ori          t5, t3, 1381
                  auipc        s1, 939091
                  sltu         a2, zero, a5
                  srai         s3, t2, 11
                  lh           a4, -317(s11)
                  slli         zero, s11, 2
                  slli         gp, a2, 0
                  srai         s10, a3, 8
                  lbu          t6, -183(s11)
                  lbu          t2, -490(s11)
                  lw           t3, -793(s11)
                  lb           t2, -206(s11)
                  slt          s2, t5, s3
                  lbu          t2, -1122(s11)
                  srli         a6, a4, 23
                  nop
                  lbu          t6, 402(s11)
                  lbu          a6, 19(s11)
                  lb           a6, -1250(s11) #end riscv_load_store_rand_instr_stream_9
                  srai         t6, s6, 29
                  nop
                  xori         t2, s2, 1116
                  bltu         s5, a6, 16f
                  sltu         gp, zero, s7
                  bgeu         s10, a1, 16f
                  andi         a2, a4, -1631
                  srl          t2, s11, t0
                  bltu         s5, s2, 10f
                  sll          a1, s6, t0
10:               srai         sp, a4, 5
                  srl          s3, s4, zero
                  bltu         a6, t5, 31f
                  sra          s2, zero, a7
                  auipc        s5, 674065
                  xori         s10, a3, 1993
16:               beq          a3, t5, 20f
                  or           ra, s7, a5
                  srli         t4, s3, 7
                  srl          a7, sp, t4
20:               sltiu        s1, s0, -1552
                  bge          t4, a0, 28f
                  slli         s8, a7, 27
                  beq          s9, s4, 25f
                  andi         a6, t1, -778
25:               or           zero, t3, s3
                  beq          s8, t5, 30f
                  slt          s3, s0, a4
28:               sltu         s11, a6, s0
                  ori          s7, a5, 916
30:               blt          s4, s3, 49f
31:               bgeu         s10, a4, 38f
                  and          s7, s4, s0
                  bge          s7, s7, 49f
                  add          t4, sp, s4
                  nop
                  beq          ra, s3, 51f
                  addi         s2, a5, -123
38:               ori          t3, t2, -2047
                  lui          t3, 939225
                  blt          ra, tp, 44f
                  srli         s8, sp, 5
                  sra          s5, s3, gp
                  nop
44:               xori         t4, t0, 1513
                  slli         t5, a0, 27
                  sltu         s2, s10, t2
                  xor          sp, a3, a6
                  beq          s0, t4, 64f
49:               andi         a6, zero, -1076
                  xori         s3, tp, 693
51:               ori          s5, gp, -1658
                  srl          tp, s5, a7
                  sub          sp, s9, t5
                  bltu         s8, t2, 71f
                  srai         a7, t2, 11
                  srl          s6, a7, s8
                  and          s11, s4, a7
                  addi         s1, s0, -470
                  bne          a4, s6, 60f
60:               slti         sp, zero, -578
                  sra          sp, a2, s9
                  bge          a7, s8, 80f
                  sub          t3, a1, s5
64:               srl          a4, ra, sp
                  auipc        gp, 944723
                  slti         s3, s5, 1188
                  sra          t0, ra, s4
                  bne          a2, s8, 76f
                  bge          t5, zero, 79f
                  or           zero, s6, a7
71:               andi         a6, s2, 405
                  or           t3, s7, a0
                  add          t2, zero, gp
                  slli         a2, s7, 9
                  or           a1, s10, s1
76:               lui          a7, 707408
                  bltu         a5, s1, 85f
                  bne          t0, s6, 82f
79:               xor          gp, s9, t6
80:               slti         ra, a7, -767
                  sltu         tp, t1, s8
82:               sra          a4, s10, tp
                  sll          s7, sp, gp
                  blt          s4, s10, 91f
85:               sltiu        a7, a1, -852
                  bgeu         a7, s3, 103f
                  srli         zero, sp, 19
                  blt          s3, s3, 95f
                  auipc        ra, 948764
                  andi         s9, t1, -604
91:               sltiu        t2, sp, -280
                  bltu         t4, t5, 104f
                  sub          a0, t2, a1
                  srai         sp, s1, 29
95:               or           tp, t6, s8
                  xor          sp, s3, a2
                  auipc        s2, 846826
                  sltu         s11, s10, a6
                  addi         a0, tp, 1208
                  lui          sp, 128263
                  srai         zero, t5, 13
                  bgeu         a6, s11, 110f
103:              auipc        a0, 240504
104:              add          a1, zero, a6
                  bne          s4, zero, 119f
                  xori         a4, tp, 1621
                  sltu         t3, s0, a5
                  andi         a0, s7, -351
                  sub          s1, gp, t6
110:              beq          s4, s4, 114f
                  sra          t4, t4, t2
                  addi         a5, s5, 404
                  xor          t2, a5, zero
114:              bgeu         s4, a3, 122f
                  srli         t0, a6, 2
                  slti         ra, t0, 110
                  xor          t0, t4, ra
                  beq          sp, zero, 123f
119:              srli         s10, s7, 10
                  and          a0, s11, tp
                  srl          s8, s0, t3
122:              auipc        a3, 376003
123:              addi         a5, t2, -793
                  sra          t3, s10, s11
                  addi         a7, s6, -191
                  bltu         s8, gp, 133f
                  srli         a0, zero, 21
                  blt          a2, s11, 129f
129:              slli         a4, tp, 26
                  sll          zero, ra, a4
                  slti         sp, t3, 37
                  nop
133:              bge          sp, s2, 135f
                  auipc        gp, 413925
135:              bgeu         s8, a2, 149f
                  bge          t4, t1, 153f
                  bgeu         s5, s7, 141f
                  bltu         ra, t4, 146f
                  sra          sp, a3, t1
                  srl          s7, s1, zero
141:              xor          a0, s10, t0
                  addi         a2, s10, -151
                  andi         s6, ra, 1239
                  bge          a3, a3, 160f
                  bgeu         zero, a3, 152f
146:              slti         s5, t1, 436
                  sll          s9, ra, t6
                  or           sp, a3, s11
149:              auipc        s1, 548092
                  ori          a6, s5, -1434
                  slti         a5, t0, -231
152:              beq          t0, t4, 171f
153:              sra          zero, a1, a0
                  sltiu        a4, t5, -1510
                  andi         s10, a6, -306
                  sub          s2, tp, gp
                  srli         gp, t4, 11
                  lui          s10, 717973
                  nop
160:              sub          t4, s0, a2
                  andi         a4, tp, 2011
                  xor          a4, a6, t3
                  srli         s5, a1, 4
                  slli         s1, s6, 14
                  bge          a7, zero, 167f
                  bltu         t3, a3, 184f
167:              ori          t4, a2, -1383
                  slli         a7, a0, 9
                  andi         gp, s2, -1974
                  beq          a1, a5, 177f
171:              blt          s11, s9, 175f
                  beq          s3, s6, 180f
                  and          s11, s4, a3
                  xor          ra, a5, s6
175:              slt          a7, s5, a0
                  srai         t0, s8, 14
177:              blt          s5, s0, 192f
                  slli         t4, tp, 29
                  auipc        t3, 46416
180:              or           sp, tp, gp
                  andi         s6, s3, 22
                  and          t0, s2, a6
                  bge          gp, t1, 191f
184:              slt          a2, t2, a3
                  bne          a0, s6, 192f
                  nop
                  blt          s4, ra, 206f
                  slli         a6, a6, 16
                  sra          a3, a6, t1
                  add          s9, s11, a3
191:              lui          sp, 942008
192:              sltu         s11, s5, s7
                  addi         s6, gp, 1251
                  beq          t6, s6, 210f
                  sub          a3, sp, t0
                  bltu         sp, a2, 200f
                  andi         s5, t3, 1575
                  sra          t2, s6, a5
                  srli         t4, a6, 9
200:              add          t2, s9, t5
                  nop
                  sra          t2, a2, s0
                  bne          a6, ra, 220f
                  blt          s5, s1, 209f
                  sub          sp, t1, t4
206:              srl          t2, t3, gp
                  blt          a4, t4, 217f
                  addi         s2, s7, -1930
209:              sltiu        t6, a5, -879
210:              srai         a3, a3, 24
                  and          a2, s8, t6
                  slt          s3, s7, s3
                  srl          t3, s2, a3
                  xor          a3, a4, a7
                  lui          t4, 447569
                  ori          s1, s3, 4
217:              ori          a1, s0, -1465
                  beq          a7, gp, 231f
                  sub          t0, s3, t6
220:              andi         s11, t2, 1134
                  bge          t1, s2, 229f
                  lui          s7, 869864
                  nop
                  sub          s2, a2, t4
                  sltu         s10, tp, t1
                  blt          s9, s3, 238f
                  sll          s11, s3, s8
                  bne          sp, s4, 232f
229:              sltiu        s5, a5, -1501
                  blt          a6, a4, 234f
231:              and          s5, a4, t1
232:              srli         a2, a4, 31
                  srl          a6, t0, s9
234:              bne          a7, a4, 245f
                  beq          t4, a6, 240f
                  slli         a5, t3, 27
                  bgeu         s10, a3, 245f
238:              slt          sp, s0, a6
                  slti         zero, zero, -1770
240:              sub          sp, a5, s4
                  bge          s1, t2, 258f
                  nop
                  bltu         ra, t1, 247f
                  bge          s11, a2, 255f
245:              sra          t2, s7, s4
                  add          s3, sp, a4
247:              sltu         a7, tp, a6
                  slt          s5, s11, s9
                  sltiu        a1, zero, -1509
                  sltiu        t6, s3, -1108
                  srl          a6, a1, t2
                  xor          s5, a6, s3
                  bge          t6, a0, 269f
                  ori          a4, s5, -304
255:              ori          a6, s4, 1185
                  add          s2, t4, s10
                  addi         a4, t3, 89
258:              sra          a0, s5, s4
                  blt          sp, sp, 274f
                  slt          t5, gp, s8
                  sra          a6, s6, s10
                  bltu         s3, t6, 274f
                  sub          a1, s6, sp
                  andi         s10, a0, -728
                  srai         t4, s9, 20
                  blt          t3, t1, 270f
                  bne          s3, a0, 277f
                  add          s7, zero, t5
269:              srl          gp, t3, a6
270:              sra          t3, s3, s9
                  sltu         t4, s2, s7
                  slli         tp, a2, 11
                  and          s6, sp, s3
274:              slti         s2, s2, -1632
                  bge          tp, t5, 289f
                  auipc        ra, 943709
277:              nop
                  nop
                  auipc        s3, 267951
                  srli         a0, s2, 27
                  nop
                  slt          a0, ra, t6
                  srai         s2, s11, 5
                  sltiu        a7, a7, 1193
                  sll          t2, a1, s5
                  or           s7, s2, s2
                  sltiu        a2, a2, -974
                  and          t2, a0, s7
289:              sra          a1, t1, a0
                  beq          s6, a6, 294f
                  slti         a7, s6, -1599
                  xor          tp, s2, s8
                  sltiu        a0, t1, 675
294:              sltiu        a0, s7, -1514
                  bltu         s0, a6, 308f
                  xor          tp, gp, a5
                  xor          gp, a3, t0
                  add          s1, s6, t1
                  ori          sp, t4, -1671
                  sltiu        a0, a7, -874
                  blt          a1, t6, 303f
                  sll          s10, t6, t4
303:              auipc        t5, 466212
                  bne          a6, sp, 311f
                  auipc        s8, 991057
                  blt          sp, sp, 310f
                  sra          s10, s4, zero
308:              and          a6, t5, t0
                  add          s9, a1, s10
310:              blt          s0, s10, 318f
311:              slt          a3, s8, s9
                  sltu         t3, a0, t3
                  sub          s9, sp, s10
                  bne          sp, s8, 332f
                  slti         sp, s8, 356
                  sll          tp, t2, s3
                  srai         sp, s10, 29
318:              nop
                  nop
                  sra          s10, sp, sp
                  lui          a7, 969853
                  bgeu         zero, t2, 324f
                  andi         a7, ra, 986
324:              sltiu        t3, a0, 1760
                  slti         a3, a0, -90
                  and          s10, t4, t2
                  xor          t3, t4, zero
                  sub          a0, t3, s11
                  srai         ra, s2, 31
                  add          t3, t3, s8
                  bltu         t2, s10, 350f
332:              sltiu        t4, s7, 1157
                  slt          t2, t2, s4
                  sltiu        t4, t2, 137
                  slli         s6, a4, 1
                  ori          s6, a7, -959
                  lui          s11, 57932
                  ori          gp, t6, -1000
                  andi         s7, t4, 1604
                  bge          a3, t2, 356f
                  srai         sp, s8, 29
                  sltiu        a3, a6, 2041
                  nop
                  addi         t2, a2, -1391
                  bne          a7, zero, 349f
                  and          a5, t0, s10
                  sll          tp, s7, s10
                  bge          a5, a1, 355f
349:              srli         t5, gp, 28
350:              xor          a2, s7, a4
                  srl          s10, s1, a2
                  beq          t0, s4, 360f
                  srl          s11, ra, t1
                  bgeu         a4, a0, 361f
355:              bge          a4, s6, 363f
356:              srai         a6, t2, 31
                  slt          s5, a5, s9
                  bgeu         a6, ra, 375f
                  sltu         t4, t2, t3
360:              bge          s2, a3, 367f
361:              lui          a7, 909072
                  srl          s6, t6, gp
363:              xor          s1, s4, zero
                  blt          a4, a6, 383f
                  srai         s8, a3, 11
                  xor          s7, a4, a0
367:              xori         s7, s8, 952
                  bne          a1, a6, 369f
369:              blt          t5, s11, 373f
                  andi         a5, s4, -1937
                  slti         a1, a5, -1830
                  sra          s2, a1, ra
373:              auipc        t3, 896311
                  srl          a3, s2, s0
375:              add          tp, sp, s6
                  bge          s7, s6, 383f
                  sra          zero, s11, t4
                  xori         s1, s5, -182
                  sub          a1, a4, s2
                  sra          a0, t5, a2
                  andi         t2, s4, 1928
                  sra          ra, s0, s7
383:              ori          s2, t1, 518
                  or           a7, s3, s10
                  bgeu         t6, s1, 395f
                  xor          t2, s0, a5
                  ori          s2, s9, -955
                  srli         t0, s9, 5
                  add          s1, zero, t3
                  bne          s5, a3, 395f
                  bge          s11, a1, 408f
                  andi         t4, t2, 1022
                  xori         zero, s4, -50
                  bge          a4, s2, 410f
395:              slti         a7, s1, -528
                  sll          t2, s5, a7
                  and          s10, a2, s6
                  slli         a6, t2, 11
                  slti         s6, a2, -219
                  xori         s1, a1, 1683
                  srl          s7, s4, gp
                  beq          a0, s8, 406f
                  lui          t4, 993386
                  add          s7, gp, a7
                  add          s8, sp, t2
406:              xor          t6, t0, s1
                  slli         a0, s3, 16
408:              blt          a2, a7, 416f
                  ori          s6, s2, -281
410:              beq          s5, tp, 423f
                  srli         tp, t2, 20
                  andi         s3, s1, -1463
                  slt          gp, s1, s7
                  bltu         t5, t3, 431f
                  sra          a3, s2, s7
416:              blt          t0, zero, 430f
                  srai         a6, a5, 28
                  bge          t1, s4, 426f
                  lui          s8, 1009601
                  xori         s3, s9, -11
                  bne          s1, s0, 422f
422:              bltu         gp, sp, 424f
423:              slti         sp, a7, 431
424:              bgeu         s4, s2, 442f
                  auipc        a2, 708345
426:              srl          s9, t5, a6
                  beq          a2, a4, 434f
                  nop
                  bge          a3, s10, 445f
430:              sll          s10, s4, s0
431:              bne          sp, s10, 435f
                  bgeu         a4, s6, 439f
                  slli         s9, sp, 30
434:              bge          t3, t3, 449f
435:              bge          s7, a0, 447f
                  slt          zero, a1, a5
                  sltu         t3, s11, s4
                  srl          a5, t4, zero
439:              xori         s1, a5, 981
                  srai         a1, a1, 12
                  beq          t4, t6, 443f
442:              add          a5, s2, t0
443:              or           s1, ra, s2
                  and          s2, t5, zero
445:              and          t4, s1, tp
                  bge          s0, s4, 465f
447:              bge          a5, s10, 455f
                  xor          t5, s10, s0
449:              xor          s8, t5, a2
                  or           a6, tp, a6
                  sra          s9, a7, s9
                  lui          ra, 787296
                  srai         zero, zero, 5
                  srai         a2, a5, 28
455:              sra          ra, a2, a5
                  bne          sp, t2, 460f
                  blt          a6, s0, 461f
                  slt          a3, t0, a4
                  slti         sp, t0, 283
460:              andi         a6, s7, 273
461:              andi         s10, a2, -672
                  sll          a4, s0, t1
                  add          s3, s6, s8
                  srl          t5, t5, a3
465:              xori         s3, t4, -1219
                  bge          s8, s1, 477f
                  add          t0, s3, a4
                  and          a2, a2, tp
                  sll          a7, a0, s5
                  sltu         a3, t3, t4
                  srai         s10, s0, 18
                  addi         ra, s2, -83
                  srli         tp, t3, 25
                  srli         sp, s4, 5
                  sltu         a7, t5, s8
                  bge          a5, a2, 483f
477:              srl          a7, s1, s1
                  blt          s9, s8, 486f
                  srl          s9, gp, zero
                  slti         a1, ra, 444
                  bltu         t2, tp, 500f
                  slt          s1, a4, a7
483:              sltu         t4, s5, s4
                  bge          t2, t4, 491f
                  srl          sp, zero, t4
486:              sll          a5, ra, a7
                  nop
                  blt          a7, s1, 503f
                  xor          a4, a4, s4
                  or           s10, s6, s8
491:              slti         a2, s1, -1509
                  sltu         t5, a3, s6
                  addi         s3, zero, -1131
                  and          s2, s6, tp
                  bge          s6, s8, 512f
                  slti         t2, gp, -603
                  sra          a4, a5, s6
                  srai         ra, a5, 11
                  xor          s2, a2, s8
500:              beq          t4, s3, 501f
501:              beq          t4, t2, 503f
                  sll          a7, a4, a4
503:              addi         ra, a2, 2046
                  xori         a3, t5, 257
                  slt          gp, t3, sp
                  bne          s9, gp, 511f
                  slli         t5, s8, 6
                  or           s11, t2, sp
                  nop
                  srli         a3, t3, 2
511:              srai         s10, s1, 7
512:              nop
                  blt          s1, s1, 521f
                  xor          a1, a5, gp
                  nop
                  sll          a0, s1, s6
                  xori         t5, s8, 1507
                  nop
                  and          a6, t3, a4
                  slt          s3, t1, t5
521:              slt          s6, t2, t0
                  bltu         s6, s11, 538f
                  slt          ra, s4, s5
                  srai         s7, s6, 24
                  blt          s10, t6, 529f
                  ori          t2, s2, 1058
                  addi         ra, t0, 698
                  and          t5, tp, s11
529:              beq          t4, s9, 539f
                  sll          s11, a3, s11
                  nop
                  nop
                  and          s1, a2, a7
                  slti         gp, sp, -2039
                  sub          a6, s6, t5
                  slti         s3, zero, 340
                  add          s1, s10, s3
538:              slli         s5, s10, 22
539:              sra          t5, s0, a6
                  lui          t3, 746735
                  bgeu         zero, s11, 548f
                  add          t2, s11, s0
                  slli         a3, a5, 28
                  sub          s8, t5, s3
                  xori         a6, s0, -657
                  lui          ra, 383103
                  addi         t0, zero, 1824
548:              srai         s10, s4, 24
                  bge          s2, s8, 553f
                  auipc        s3, 405749
                  nop
                  or           a7, s8, t3
553:              bge          s8, a6, 561f
                  sra          s3, a0, t2
                  auipc        a0, 401160
                  bge          s3, a6, 573f
                  sub          s5, gp, a3
                  sll          t6, s11, s7
                  sltu         a1, a5, s8
                  slli         s6, a4, 17
561:              and          s11, s11, s8
                  bge          s1, s7, 581f
                  blt          t4, t1, 581f
                  auipc        t0, 493524
                  slli         s7, s6, 10
                  slti         a7, s4, -1386
                  addi         t5, s11, -1805
                  andi         s9, a2, 1198
                  slt          t3, t5, t4
                  bgeu         s3, a1, 574f
                  andi         a5, t4, 1569
                  srl          tp, t6, s0
573:              srli         t2, a3, 5
574:              blt          sp, a2, 593f
                  bltu         s5, gp, 586f
                  bltu         gp, t4, 588f
                  bgeu         a7, s3, 579f
                  bgeu         s10, a5, 591f
579:              nop
                  sub          gp, s0, a1
581:              sll          tp, s7, t1
                  lui          a1, 972430
                  srai         tp, a2, 10
                  or           s10, t2, t2
                  or           a6, a5, s4
586:              srli         s3, s6, 8
                  sltu         s6, ra, s8
588:              addi         s2, tp, -998
                  srli         s7, a1, 21
                  sll          a5, t1, a4
591:              srl          s3, s5, t6
                  bltu         a6, s3, 606f
593:              bge          s2, a5, 597f
                  sltiu        a0, s0, 542
                  nop
                  ori          s10, a1, -86
597:              sub          gp, s11, a0
                  xori         a3, t5, 154
                  bltu         t5, s0, 606f
                  xori         t6, a0, -1412
                  ori          t3, s9, 1424
                  bltu         zero, t3, 609f
                  bgeu         tp, zero, 607f
                  srl          s2, a4, a7
                  slli         s6, s2, 22
606:              slt          ra, ra, ra
607:              sub          ra, a4, t5
                  bne          t4, zero, 616f
609:              add          a2, s4, s11
                  bne          gp, a0, 626f
                  bltu         t5, t3, 619f
                  xor          s3, tp, t5
                  srai         a6, a0, 9
                  blt          s3, s10, 621f
                  lui          s1, 725583
616:              bltu         ra, s11, 632f
                  xori         ra, s6, -1607
                  xori         s5, s1, 1381
619:              xori         a1, s10, 544
                  add          a1, gp, a4
621:              andi         a3, gp, -881
                  lui          a2, 579898
                  beq          s5, s0, 641f
                  sub          gp, s4, s0
                  srai         s2, a2, 26
626:              srli         sp, zero, 13
                  ori          ra, a7, 453
                  beq          s3, s8, 644f
                  beq          s8, a1, 633f
                  add          a6, a7, t5
                  add          sp, ra, t5
632:              add          s7, zero, a4
633:              sra          t6, a6, t6
                  or           t4, s11, a3
                  nop
                  beq          t0, a3, 643f
                  beq          t5, gp, 656f
                  sub          a0, a3, s5
                  andi         gp, gp, -207
                  bgeu         s6, s5, 647f
641:              bgeu         t0, s5, 643f
                  slli         tp, s0, 22
643:              add          a7, a1, s5
644:              beq          a3, s0, 656f
                  or           gp, t1, s4
                  sub          t6, s5, a3
647:              slti         s2, a2, -1974
                  add          s8, t3, t6
                  srl          a6, a0, t5
                  ori          a1, a4, -797
                  add          t5, s3, a5
                  sltiu        a6, a2, 769
                  blt          s3, s11, 661f
                  bgeu         s1, t2, 658f
                  or           s8, zero, s2
656:              bne          s11, s5, 660f
                  sub          t6, t1, gp
658:              sltiu        a5, a7, -369
                  addi         t3, a1, -115
660:              sltiu        a6, s3, -78
661:              bne          gp, zero, 668f
                  sub          s6, a2, s10
                  sltiu        t6, a0, -1043
                  add          ra, a0, s5
                  sltu         a1, s9, t2
                  slti         s5, a2, 59
                  slli         s6, s0, 9
668:              bltu         a7, a7, 676f
                  add          s5, s0, a1
                  sltu         t0, s10, a6
                  beq          t1, a6, 676f
                  sub          gp, a6, ra
                  slti         a3, s11, -380
                  bge          a1, s5, 678f
                  sub          t0, a4, a6
676:              nop
                  add          a0, a4, t0
678:              srl          t2, t5, gp
                  srli         a3, zero, 20
                  srli         s11, zero, 20
                  srai         zero, t1, 23
                  beq          s10, s9, 695f
                  bge          tp, s7, 691f
                  addi         gp, s8, -206
                  bltu         s10, t5, 696f
                  sltiu        t6, s4, -175
                  srai         gp, gp, 9
                  srli         ra, s0, 5
                  beq          s5, t5, 703f
                  bge          t5, a4, 698f
691:              srli         gp, s1, 12
                  bge          ra, s11, 702f
                  andi         t0, a0, 70
                  andi         sp, s5, -686
695:              xor          a7, a6, s6
696:              ori          a3, s2, -21
                  sltu         s7, a5, zero
698:              auipc        s11, 730748
                  beq          s1, s7, 718f
                  xori         t4, a5, 1314
                  sub          s11, a5, a1
702:              sltu         t5, s3, s10
703:              slli         a1, s6, 9
                  sll          gp, ra, s2
                  xori         tp, tp, -798
                  bne          s2, t6, 710f
                  andi         a1, a7, 587
                  sltu         t0, s4, s4
                  sub          t2, a2, a6
710:              slti         s10, gp, 245
                  srl          s7, a4, s4
                  or           t2, t2, s9
                  auipc        t5, 715355
                  bltu         t3, t5, 729f
                  bltu         s1, s4, 732f
                  sltu         s5, ra, s6
                  blt          a5, tp, 718f
718:              sub          a3, t0, s4
                  blt          s5, a5, 721f
                  srl          t2, a4, gp
721:              add          a3, a7, a6
                  bge          s0, t0, 739f
                  slli         s9, a3, 7
                  srli         sp, s11, 31
                  or           s11, s2, t2
                  slt          a2, s6, s1
                  sll          a3, a7, a7
                  beq          t6, t2, 742f
729:              sub          a4, s11, s10
                  and          sp, t4, t6
                  auipc        a4, 380156
732:              sll          sp, a4, s3
                  bgeu         s1, t0, 740f
                  add          s1, a5, s8
                  bltu         a5, s9, 742f
                  bltu         s2, a5, 744f
                  lui          s10, 409869
                  add          zero, ra, s6
739:              andi         t0, t3, -296
740:              slti         a4, tp, 1173
                  xor          s6, t5, t3
742:              and          a3, s8, a5
                  srl          s7, gp, sp
744:              slti         s10, a0, -903
                  srai         s1, s10, 27
                  xori         tp, gp, 1119
                  andi         t5, s4, 1909
                  slli         ra, a5, 14
                  sll          ra, s9, s3
                  addi         a4, s8, 269
                  sra          s7, t3, t5
                  sltiu        t4, a5, 401
                  slli         t6, gp, 15
                  slt          a3, s8, a3
                  ori          sp, a1, -1353
                  and          a1, s9, s4
                  sra          a7, gp, t0
                  bltu         s9, a3, 760f
                  ori          zero, s11, 1382
760:              xor          t3, t0, t2
                  addi         s9, s4, 1794
                  xori         s2, t3, 1766
                  and          s10, s10, s5
                  auipc        ra, 389982
                  blt          a1, s6, 780f
                  sra          s8, t2, t6
                  sltiu        s1, sp, 1919
                  sub          a1, s11, s2
                  blt          a4, ra, 770f
770:              auipc        a6, 241659
                  nop
                  and          s11, a5, a2
                  nop
                  blt          zero, s5, 791f
                  srli         t3, s10, 14
                  bne          s2, ra, 780f
                  or           t6, sp, s2
                  sltu         a0, a6, a6
                  and          a0, s7, s8
780:              and          a7, s2, s0
                  srai         sp, a6, 21
                  addi         s7, s8, 40
                  sltu         a7, s9, t6
                  bne          s2, a0, 795f
                  sub          tp, t5, t5
                  blt          s7, s11, 794f
                  beq          s10, t2, 803f
                  add          s8, a7, s8
                  or           a6, ra, gp
                  xor          sp, a6, a2
791:              sltu         ra, t0, s3
                  addi         t5, s2, -1734
                  add          s2, a3, s5
794:              xori         t4, zero, -191
795:              lui          t4, 955675
                  sltu         a1, s0, s5
                  sltiu        a1, s6, -1555
                  addi         s1, a0, 1448
                  bltu         s9, a6, 806f
                  srli         s10, t5, 9
                  andi         ra, s6, -1154
                  srai         t4, a0, 15
803:              auipc        t2, 371323
                  and          s9, s3, s9
                  slli         s5, ra, 14
806:              addi         a5, s6, 1127
                  addi         a2, a3, -381
                  srli         t4, sp, 19
                  bgeu         a1, s11, 817f
                  auipc        sp, 924558
                  auipc        s1, 786806
                  bgeu         s0, gp, 831f
                  lui          a2, 550482
                  xori         a3, a1, -1028
                  srli         s3, t1, 14
                  nop
817:              addi         a7, gp, 468
                  add          a4, t6, s7
                  sub          a5, s4, gp
                  nop
                  sltiu        zero, a2, 849
                  beq          ra, a6, 826f
                  or           s10, tp, a7
                  add          a4, a4, a5
                  lui          a0, 359813
826:              slti         s6, t1, 397
                  sra          tp, a6, s8
                  sra          ra, s4, a2
                  bgeu         t1, a3, 837f
                  bne          t0, t3, 834f
831:              sltiu        s8, s0, -39
                  bltu         s1, s0, 836f
                  add          t5, t6, s10
834:              slti         s6, a5, 946
                  sra          s5, s8, s9
836:              or           a4, s8, t6
837:              sltu         a0, a7, s7
                  bne          s1, t0, 857f
                  bgeu         a2, t4, 857f
                  or           a7, t3, gp
                  blt          s5, s0, 843f
                  xori         s10, a7, 680
843:              auipc        s1, 761117
                  add          s11, a1, a1
                  sltu         a3, a4, s0
                  sltiu        ra, s4, -668
                  slli         a0, t1, 23
                  sra          s9, a1, s3
                  sub          a4, s5, t3
                  sltu         t5, t1, a1
                  and          s5, s8, s8
                  xori         zero, s2, -160
                  bge          zero, s8, 860f
                  sra          zero, t6, a4
                  srl          s11, s8, s11
                  sub          s3, s3, s5
857:              srli         s11, s1, 5
                  sll          s6, ra, a1
                  and          a2, s0, t5
860:              addi         s9, zero, 1833
                  add          tp, s5, s2
                  xori         s11, s1, 720
                  xor          t4, s9, a2
                  lui          s5, 738670
                  addi         s9, t5, -1618
                  slt          t2, t1, t0
                  auipc        t0, 590501
                  xori         a3, a5, -722
                  srl          t4, s5, a6
                  and          s11, t3, gp
                  slt          t3, a7, a0
                  sltu         s10, s2, s4
                  sub          tp, a0, a7
                  srl          s6, t3, a6
                  sltiu        s10, t0, 1102
                  bge          sp, s4, 886f
                  beq          s10, s10, 890f
                  sltiu        a7, s9, 1448
                  bne          a4, t3, 884f
                  sra          t0, sp, s5
                  bltu         s0, tp, 893f
                  and          ra, a0, a4
                  bge          a2, t6, 899f
884:              or           t3, sp, tp
                  and          ra, a2, gp
886:              lui          a0, 622722
                  or           tp, a2, t3
                  blt          t1, s4, 905f
                  slli         s2, t2, 25
890:              slti         s10, zero, -504
                  ori          t6, t1, -48
                  addi         a4, s11, -1551
893:              bne          t1, s10, 897f
                  bltu         a4, s3, 908f
                  xori         a3, t6, 1261
                  bltu         t0, a5, 911f
897:              blt          s8, t0, 899f
                  sra          sp, t6, a0
899:              slti         s10, t4, 1522
                  slt          a5, s9, a2
                  auipc        a5, 973585
                  bne          s11, s9, 909f
                  auipc        ra, 557923
                  bltu         t4, a2, 912f
905:              slli         zero, s4, 6
                  sll          a5, s6, s8
                  auipc        zero, 779176
908:              bge          s5, t6, 910f
909:              slli         a7, s5, 11
910:              sltu         gp, a5, s9
911:              addi         a2, s9, -982
912:              xor          sp, t1, s1
                  slt          a1, t5, tp
                  sltiu        t0, s6, -441
                  nop
                  sra          sp, a4, t3
                  addi         s11, s8, 736
                  srl          s6, s4, t5
                  bgeu         a5, s4, 937f
                  srl          t0, t2, ra
                  srai         t6, s8, 21
                  beq          s7, s1, 926f
                  bge          tp, s9, 933f
                  bne          s0, t5, 940f
                  sltu         s7, a0, a6
926:              auipc        sp, 430844
                  slli         a1, a3, 16
                  andi         t4, sp, -1694
                  ori          s3, a5, 893
                  beq          s10, a3, 935f
                  slti         s11, s9, 1162
                  srli         s8, gp, 29
933:              sltu         a4, s3, s5
                  slti         s10, t0, -1622
935:              slli         a2, sp, 7
                  ori          ra, s2, 1824
937:              sub          sp, t5, t4
                  bgeu         s2, s3, 949f
                  lui          s1, 854675
940:              srli         a5, s1, 12
                  xor          a4, s4, s10
                  ori          s8, a5, 1536
                  auipc        t3, 247256
                  blt          t6, zero, 948f
                  sub          ra, t1, t0
                  and          t6, s5, s10
                  xori         a1, a7, -20
948:              nop
949:              ori          t0, s5, 71
                  and          a0, s5, s5
                  and          a1, s9, tp
                  ori          s7, a5, 1308
                  sltiu        s1, s7, 273
                  srai         tp, t5, 2
                  slli         s9, s7, 23
                  blt          s2, s6, 975f
                  slt          t0, s10, sp
                  or           tp, ra, tp
                  sltu         ra, t5, s3
                  ori          s2, s7, 62
                  srl          t5, t6, s2
                  sra          s10, ra, s5
                  bgeu         s11, s10, 967f
                  addi         zero, t4, 1783
                  srl          s3, gp, a0
                  slt          s3, s11, s6
967:              bgeu         t0, ra, 980f
                  auipc        a0, 405684
                  sub          a2, gp, t1
                  srli         a3, s4, 23
                  bgeu         s3, a2, 975f
                  nop
                  add          t4, sp, a1
                  bgeu         tp, t4, 991f
975:              bne          t4, s9, 979f
                  sra          t2, s3, s10
                  bge          a2, t3, 985f
                  bltu         s8, a6, 985f
979:              sltu         t5, a6, t6
980:              nop
                  xori         t2, a2, 24
                  lui          zero, 1013124
                  lui          gp, 202371
                  blt          s11, s11, 991f
985:              blt          gp, a6, 997f
                  or           a2, s11, s1
                  bge          t4, t0, 1003f
                  sub          a2, s8, a0
                  bge          sp, a2, 996f
                  add          a2, t1, a1
991:              and          zero, zero, s11
                  xor          s10, t4, sp
                  add          t5, s0, t4
                  beq          a6, t4, 1013f
                  addi         t6, a4, 1345
996:              srl          ra, t6, s0
997:              add          ra, s6, t5
                  bgeu         t4, a2, 1006f
                  slli         a3, a7, 25
                  ori          a2, a0, -12
                  sltiu        s3, s0, -236
                  add          a2, s11, t1
1003:             slti         s6, s3, 436
                  andi         tp, t0, -231
                  nop
1006:             nop
                  bltu         tp, tp, 1015f
                  srai         s1, a2, 0
                  nop
                  bltu         t2, s6, 1027f
                  blt          t3, s10, 1012f
1012:             slt          gp, a4, s0
1013:             or           t5, s7, t5
                  slt          tp, tp, gp
1015:             sub          a0, t1, t3
                  sll          s2, a6, t0
                  srli         a0, t0, 9
                  srli         a7, t2, 5
                  blt          ra, a1, 1034f
                  bltu         t2, a1, 1037f
                  andi         a2, s9, 1534
                  slli         s2, t6, 23
                  sltu         s7, t4, s8
                  addi         s9, t4, 172
                  sltiu        t4, tp, -1247
                  slt          a7, t6, tp
1027:             ori          tp, s1, -224
                  srl          gp, s6, s10
                  sltu         s3, t5, a6
                  bne          a5, s5, 1046f
                  srl          s10, s1, s2
                  srl          s11, t2, t6
                  bne          sp, t0, 1041f
1034:             sltu         a0, s5, s6
                  andi         t4, s8, -751
                  auipc        a5, 358767
1037:             sltu         s11, s0, ra
                  auipc        a2, 630535
                  bgeu         a6, s11, 1047f
                  sra          s7, sp, s11
1041:             bge          a0, s3, 1045f
                  bltu         t0, a1, 1059f
                  bltu         gp, zero, 1048f
                  or           s2, t1, s1
1045:             srai         a6, t0, 4
1046:             slti         t2, s7, 377
1047:             bgeu         s5, t4, 1051f
1048:             sltiu        a3, ra, 124
                  add          s3, ra, a5
                  or           a0, a2, a1
1051:             slti         a2, a7, 1207
                  xori         a4, a4, -1799
                  lui          s5, 606167
                  srai         tp, s0, 29
                  srl          t0, a2, s7
                  slti         a4, s4, 727
                  add          s6, s10, s1
                  slli         s2, s10, 31
1059:             bgeu         t3, ra, 1073f
                  ori          gp, a5, -409
                  la           sp, region_1+189 #start riscv_load_store_rand_instr_stream_8
                  sb           a2, -62(sp)
                  or           t5, t3, a6
                  lh           s11, 29(sp)
                  xori         s7, s10, 1402
                  lbu          a4, -61(sp)
                  or           t5, a5, t1
                  auipc        s5, 503462
                  lb           t6, 24(sp)
                  lbu          s7, -13(sp)
                  sb           a3, 15(sp)
                  lhu          t3, -29(sp)
                  lbu          a7, 61(sp)
                  lbu          s9, -16(sp)
                  nop
                  srli         tp, s0, 19
                  lb           s10, 52(sp)
                  lb           t0, 59(sp)
                  sb           a3, 53(sp)
                  ori          a2, t5, 1729
                  lb           a4, -32(sp)
                  lb           tp, 34(sp)
                  lbu          a2, -24(sp)
                  sh           s4, -41(sp)
                  slti         s10, a7, 1531
                  lb           s10, -21(sp)
                  sb           s9, -15(sp)
                  slti         s9, t3, 1820
                  lw           a6, -5(sp)
                  sra          a2, a5, a5
                  nop
                  sra          s10, zero, s6
                  sb           s0, 45(sp)
                  slt          a2, t6, tp
                  sw           t1, 51(sp)
                  slli         t0, s0, 0
                  xor          a0, a7, a1
                  andi         a0, tp, 1333
                  ori          s2, s3, 1094
                  lbu          s9, 2(sp)
                  sb           a3, 30(sp)
                  xori         s11, a0, 1278
                  addi         t5, a0, 1520
                  lbu          zero, -6(sp)
                  lh           s5, -31(sp)
                  and          a4, s3, s2
                  sub          s9, s7, s6
                  lb           a1, 36(sp) #end riscv_load_store_rand_instr_stream_8
                  add          gp, a0, a3
                  xor          s10, gp, s5
                  bne          sp, sp, 1067f
                  lui          s1, 583777
                  xori         s2, gp, -1440
                  srli         a1, s6, 18
1067:             blt          s1, a5, 1071f
                  sltiu        t0, ra, -595
                  ori          t4, gp, -363
                  sra          tp, s8, s0
1071:             sll          s11, a5, s11
                  sra          a4, sp, a2
1073:             sltu         a6, a7, a1
                  add          s6, t5, t5
                  bgeu         s11, t4, 1077f
                  slt          s3, zero, s1
1077:             srli         a5, s10, 12
                  blt          ra, a0, 1090f
                  xor          t0, s5, a6
                  andi         t0, a4, 1304
                  sub          s2, zero, t5
                  bltu         ra, a2, 1090f
                  bne          t5, s6, 1085f
                  sltu         gp, a7, s2
1085:             or           s3, tp, s0
                  xori         a1, a5, 1970
                  lui          s1, 951616
                  xori         t5, a7, 932
                  blt          sp, t2, 1099f
1090:             add          t5, gp, zero
                  or           s11, t5, s4
                  slti         t5, a0, -549
                  sub          s2, a0, s10
                  sll          a6, s7, a7
                  ori          s6, zero, 1350
                  and          a5, s7, s10
                  blt          s5, a0, 1115f
                  xori         s2, t1, -1611
1099:             bltu         s1, t1, 1106f
                  nop
                  xori         a2, s4, -1216
                  sltu         s10, s10, t0
                  andi         s8, s5, -1477
                  blt          a3, s10, 1111f
                  ori          s7, s6, 137
1106:             srai         t5, s1, 6
                  xor          t4, a2, t3
                  bge          t1, t4, 1127f
                  bgeu         gp, a4, 1110f
1110:             lui          s8, 652411
1111:             auipc        ra, 595227
                  bne          a4, a1, 1120f
                  sltu         s11, a7, s10
                  bgeu         t6, t3, 1130f
1115:             add          s3, s2, s8
                  or           t5, a4, t4
                  la           t3, region_1+447 #start riscv_load_store_rand_instr_stream_1
                  srl          zero, a7, a7
                  srl          s7, a1, zero
                  sltu         gp, s6, t5
                  xor          a1, s9, s5
                  andi         s5, t4, -1885
                  lhu          a4, 127(t3)
                  sh           s10, 77(t3)
                  xori         a4, t0, 960
                  lbu          s1, 202(t3)
                  sb           t2, 51(t3)
                  addi         s6, a4, 200
                  srai         t2, a3, 1
                  lb           zero, -170(t3)
                  addi         s1, t2, -1214
                  lh           tp, -155(t3)
                  or           a1, t5, s4
                  slt          t5, a4, s3
                  sub          a5, s6, zero
                  sb           ra, -66(t3)
                  sh           t1, -39(t3)
                  sub          s8, s2, a1
                  srl          t4, a2, s6
                  andi         ra, gp, -290
                  nop
                  lbu          a0, 172(t3)
                  xori         t2, t6, -1049
                  lb           s1, -146(t3)
                  sb           t2, 123(t3)
                  lbu          s7, -105(t3)
                  or           s3, t5, t1
                  sll          sp, s7, s10
                  lb           s6, 52(t3) #end riscv_load_store_rand_instr_stream_1
                  sltiu        s3, s5, -1247
                  add          s3, gp, a3
                  sltu         a5, s11, a4
1120:             beq          s6, a2, 1133f
                  xor          t6, t2, s0
                  lui          t3, 297868
                  slti         s10, tp, 706
                  sltiu        t4, t6, -345
                  srai         s11, a0, 3
                  xor          s3, a2, s6
1127:             sltiu        s8, s6, -1111
                  sub          a7, t6, a0
                  bgeu         zero, s6, 1140f
1130:             sltu         a4, t1, zero
                  nop
                  slt          t4, s1, t2
1133:             sltu         a2, ra, tp
                  slti         a5, s4, 1872
                  beq          t0, gp, 1142f
                  srli         s6, ra, 19
                  nop
                  auipc        s9, 845768
                  nop
1140:             sltiu        a6, t1, -1211
                  add          s9, s1, s7
1142:             bne          a1, s0, 1146f
                  sltiu        a4, s5, -325
                  auipc        a0, 479321
                  slti         tp, s9, 1397
1146:             bge          s10, t6, 1165f
                  xori         s9, s5, 1305
                  srli         t4, a1, 29
                  sub          tp, a3, s0
                  bgeu         a0, a0, 1157f
                  bgeu         s4, t1, 1167f
                  auipc        t2, 856156
                  bge          s5, gp, 1172f
                  xor          s5, a6, s2
                  slti         t3, a4, -1549
                  nop
1157:             srli         s3, a4, 10
                  bltu         s8, s9, 1165f
                  slli         zero, s1, 23
                  or           t6, s10, a7
                  bgeu         a2, s8, 1169f
                  sll          t2, s11, t4
                  slli         s5, s4, 23
                  sltiu        s8, t5, 625
1165:             sll          s3, zero, s10
                  sltiu        s10, t6, 1041
1167:             and          a4, s5, s7
                  add          gp, s0, s8
1169:             sra          s3, s11, s7
                  sra          s5, tp, s5
                  xor          s6, a0, s4
1172:             blt          t3, a5, 1176f
                  slti         gp, s4, -294
                  add          s6, s4, s6
                  sub          ra, s9, a4
1176:             beq          s2, t5, 1195f
                  and          zero, s9, tp
                  bge          t0, s7, 1186f
                  srli         t2, s3, 22
                  blt          t0, t6, 1194f
                  addi         t2, s5, 1004
                  sltiu        s5, s11, 1729
                  ori          s9, s5, -453
                  slti         s5, t0, -1251
                  auipc        t5, 226348
1186:             or           s1, t1, zero
                  srai         a4, t0, 4
                  sll          a7, a5, s9
                  bne          tp, t5, 1200f
                  sll          s11, s0, a3
                  blt          t0, t2, 1198f
                  slti         s6, a5, -145
                  xor          zero, s6, s9
1194:             sltu         t0, a4, s3
1195:             bne          s7, s6, 1196f
1196:             srl          s1, a2, s8
                  bne          a6, s1, 1214f
1198:             sltiu        t6, a1, 1764
                  slli         s11, a4, 30
1200:             andi         t3, a5, -32
                  slt          s10, gp, tp
                  sll          s1, t1, s1
                  sll          a7, t5, t1
                  sra          t2, a7, t1
                  slt          a0, a5, gp
                  xor          a2, s9, gp
                  bgeu         tp, t0, 1209f
                  sll          s1, tp, tp
1209:             ori          s8, t1, 1729
                  andi         s3, t5, 679
                  ori          s6, s9, -299
                  ori          tp, s2, -277
                  andi         t3, s6, -963
1214:             auipc        s7, 391284
                  blt          s2, t4, 1219f
                  or           s6, a4, s4
                  srli         sp, t1, 15
                  slt          s5, t0, t5
1219:             xori         a2, a6, 677
                  sub          t6, s0, s10
                  sltu         s11, s9, s11
                  sltu         tp, a6, s3
                  or           s7, s11, s3
                  ori          s8, t0, -644
                  xor          t4, zero, s1
                  addi         a5, a4, -1463
                  sub          t3, s5, t6
                  andi         tp, a0, -1792
                  bge          s11, s2, 1231f
                  srai         a3, a0, 17
1231:             bgeu         s10, s10, 1239f
                  sll          a1, a7, s8
                  bne          s11, s3, 1245f
                  add          s6, s7, s1
                  sub          s10, a6, s4
                  sltiu        s11, s3, -940
                  ori          a5, a5, 1308
                  andi         a5, gp, -1682
1239:             sltiu        t0, a3, -1924
                  beq          t2, t1, 1247f
                  sub          a4, t0, s11
                  sra          s11, t1, s2
                  auipc        t4, 440058
                  blt          s1, t0, 1260f
1245:             slt          zero, s9, sp
                  slti         s6, gp, 604
1247:             auipc        s2, 50859
                  ori          a6, s5, 856
                  bne          gp, t6, 1262f
                  sltu         ra, s4, a2
                  beq          s5, tp, 1255f
                  srai         s11, s2, 5
                  lui          a1, 229466
                  srl          tp, t2, s6
1255:             sltiu        a3, a3, 1237
                  beq          s10, sp, 1273f
                  nop
                  bge          s2, s7, 1266f
                  or           a0, s9, s5
1260:             sra          t6, tp, a6
                  or           a6, gp, s0
1262:             add          a1, s10, s11
                  srli         s10, a7, 9
                  beq          s1, a1, 1271f
                  or           tp, t1, s10
1266:             sra          s6, s7, s3
                  bgeu         t4, s6, 1271f
                  beq          s8, a7, 1283f
                  sltiu        t6, tp, 675
                  or           s3, t1, t1
1271:             andi         t2, s0, 582
                  andi         t5, tp, -23
1273:             srl          s3, t0, s6
                  ori          t0, t6, -30
                  slti         zero, s11, 1506
                  auipc        sp, 343457
                  blt          s11, s2, 1282f
                  sltiu        s11, s4, -2024
                  blt          gp, s9, 1289f
                  sub          a6, a6, s10
                  srai         tp, s2, 21
1282:             slt          a6, s9, a2
1283:             beq          t2, a3, 1287f
                  nop
                  bge          t3, sp, 1303f
                  sltu         a3, s1, s0
1287:             andi         ra, s7, 1080
                  auipc        tp, 967855
1289:             andi         a7, s2, 199
                  sub          a4, ra, a1
                  addi         t5, s11, 1812
                  sltiu        t0, a6, -694
                  sra          s2, a2, s3
                  blt          t6, a6, 1311f
                  la           a0, region_0+1629 #start riscv_load_store_rand_instr_stream_5
                  lbu          a4, -7(a0)
                  srai         a7, a4, 10
                  sb           t2, -15(a0)
                  or           s9, s10, t4
                  sltu         s2, t2, t6
                  sltu         s5, s11, s7
                  sw           t0, 15(a0)
                  add          a6, s2, a5
                  and          t6, t4, sp
                  sb           t2, 2(a0)
                  lw           a7, -5(a0)
                  lh           ra, 9(a0)
                  auipc        s2, 596095
                  ori          s7, a0, 1062
                  lh           s5, -15(a0)
                  lhu          t5, 13(a0)
                  lw           tp, -13(a0)
                  lui          zero, 642160
                  sh           s6, -1(a0)
                  sub          s11, s0, s10
                  lb           s7, 12(a0)
                  sb           s8, 10(a0)
                  lbu          a6, 2(a0) #end riscv_load_store_rand_instr_stream_5
                  sub          a1, zero, a6
                  sub          s11, zero, s10
                  xor          t2, s2, s6
                  bne          a5, a2, 1314f
                  sub          a1, s5, s9
                  or           t3, a3, a2
                  or           a2, sp, gp
                  lui          s8, 482058
1303:             sra          a1, t1, a5
                  addi         a2, s9, 592
                  andi         s7, s4, -1837
                  srai         t2, a5, 10
                  srl          s10, a4, t4
                  or           sp, zero, s11
                  beq          s5, tp, 1314f
                  nop
1311:             and          a1, a6, zero
                  bge          a7, s8, 1316f
                  auipc        a7, 758877
1314:             slti         s6, s4, -2039
                  bltu         s3, t4, 1326f
1316:             bne          sp, s1, 1320f
                  xor          s10, a7, a2
                  xori         s7, a3, -31
                  and          ra, s5, a1
1320:             bltu         t0, s5, 1336f
                  slli         ra, s2, 22
                  sll          s6, s10, s3
                  srl          a7, t2, gp
                  sub          t5, tp, a0
                  xori         t5, s1, -154
1326:             sub          t3, s10, s4
                  xor          a5, a5, t2
                  add          s8, s3, a4
                  bgeu         a1, s7, 1333f
                  slli         t2, s5, 17
                  bltu         tp, a5, 1333f
                  srai         t2, t2, 8
1333:             srli         sp, s7, 6
                  blt          t1, sp, 1342f
                  sltu         ra, a3, a3
1336:             xor          a7, a5, s5
                  slt          s1, a6, gp
                  srli         s1, s6, 13
                  sltiu        a0, t1, 183
                  bgeu         s0, t6, 1358f
                  ori          s2, s10, -1202
1342:             ori          sp, a1, -1868
                  bgeu         s10, a6, 1355f
                  bge          a2, t1, 1354f
                  or           s9, gp, s5
                  xori         s7, s3, 60
                  slt          s5, t2, a3
                  sra          s3, s11, s11
                  slti         t0, a0, -261
                  addi         t6, s4, -747
                  nop
                  add          a2, t4, t0
                  or           s2, gp, t2
1354:             sub          s11, ra, s9
1355:             srai         s5, s1, 13
                  and          a5, a3, s8
                  or           a6, s0, zero
1358:             xori         s9, s5, -209
                  blt          a3, a4, 1378f
                  bne          s11, s11, 1377f
                  auipc        t5, 599713
                  bge          a4, s5, 1363f
1363:             nop
                  beq          t4, a0, 1371f
                  sltiu        s9, a3, -1211
                  addi         a0, a5, -644
                  slt          t5, a4, t1
                  addi         s6, s10, 726
                  ori          ra, a1, 1638
                  bltu         t4, a7, 1384f
1371:             andi         s6, a1, -296
                  xori         a5, gp, 3
                  slti         s5, s9, 2037
                  xor          s8, zero, t2
                  xor          s8, s11, a2
                  and          ra, a4, s9
1377:             slti         a5, tp, -1636
1378:             sltiu        tp, a2, 198
                  addi         t5, a1, -1070
                  slt          a5, sp, tp
                  bne          s8, ra, 1400f
                  sltiu        s3, s0, 1598
                  bltu         t4, ra, 1398f
1384:             slt          t5, s2, a4
                  slt          ra, ra, s3
                  srai         ra, a4, 30
                  sub          a0, t1, t2
                  sll          t6, a3, t6
                  beq          t3, t0, 1397f
                  lui          s1, 161928
                  nop
                  srli         a1, a7, 30
                  ori          a6, a4, 1984
                  sll          sp, t4, zero
                  lui          t4, 578360
                  sll          t6, s10, tp
1397:             auipc        s1, 573949
1398:             bgeu         s10, s7, 1400f
                  blt          a1, gp, 1412f
1400:             bltu         a4, t4, 1407f
                  slli         s10, s6, 7
                  bgeu         a7, gp, 1406f
                  bgeu         ra, s6, 1407f
                  add          s1, s2, ra
                  slt          s1, s10, s1
1406:             blt          s10, s2, 1414f
1407:             bltu         zero, a6, 1415f
                  slt          gp, s5, a7
                  srli         s9, t3, 29
                  auipc        s2, 795389
                  beq          a7, gp, 1418f
1412:             nop
                  sll          s5, a1, s5
1414:             xor          t2, s2, t0
1415:             ori          t2, s7, -354
                  addi         t5, a4, -28
                  bgeu         s9, s10, 1424f
1418:             beq          a3, gp, 1426f
                  srl          tp, s9, s3
                  xor          a2, s8, s7
                  ori          a4, a6, -1029
                  ori          s11, t2, -1210
                  andi         a5, t3, -199
1424:             sub          s2, zero, t0
                  sltiu        a2, s8, -336
1426:             sltiu        a1, s9, -1242
                  slli         a5, t4, 9
                  srl          ra, a4, s10
                  and          tp, a1, t6
                  auipc        a7, 191446
                  lui          s2, 970706
                  lw           ra, 4(s4)
                  nop
                  addi         s4, s4, 52
                  sll          zero, s5, s0
                  and          s11, s10, a4
                  and          s10, s0, s11
                  ori          t2, sp, 460
1863:             addi x26, x1, 0
1863:             jalr x26, x26, 0
sub_9:            andi         zero, t6, -1934
                  srli         a5, a6, 2
                  beq          t3, a3, sub_9_stack_p
                  slti         a7, s7, -1061
sub_9_stack_p:    addi         s4, s4, -56
                  sw           ra, 4(s4)
                  slli         t6, s11, 2
                  bge          s1, a0, 10f
                  bne          t2, s10, 6f
                  bge          s9, a2, 11f
                  bne          sp, s3, 15f
                  slti         zero, s5, 625
                  srai         a6, s11, 24
6:                slti         a0, a2, 1647
                  slti         tp, t1, -206
                  xori         s1, a5, -1480
                  slti         s1, ra, -1560
10:               sltu         a6, t4, t1
11:               sll          t4, s7, gp
                  addi         t4, s2, 329
                  bne          t5, t0, 31f
                  bne          a1, s6, 34f
15:               addi         sp, a2, 2013
                  addi         s7, tp, 1974
                  xor          ra, s8, s11
                  sub          s2, a0, a7
                  sub          s6, s2, s10
                  and          s8, t0, a5
                  xor          s7, s8, a5
                  slti         t5, s10, -282
                  xori         s10, t1, 1308
                  bne          s8, a6, 34f
                  ori          zero, t6, -1759
                  bge          t1, s5, 28f
                  sll          a2, s9, s11
28:               bgeu         ra, t5, 32f
                  add          s11, t2, a0
                  bge          s10, t3, 40f
31:               bge          t6, zero, 42f
32:               beq          t5, s9, 52f
                  slti         ra, t0, 2022
34:               blt          t1, ra, 45f
                  beq          a1, s11, 37f
                  blt          s3, s3, 46f
37:               srai         a4, a7, 9
                  ori          ra, gp, -807
                  slt          t0, ra, s7
40:               addi         a5, s9, -481
                  srai         a0, s5, 9
42:               blt          sp, t6, 50f
                  or           a1, t4, t4
                  bge          s2, s9, 59f
45:               or           s3, s10, gp
46:               srli         ra, s9, 21
                  sub          t4, tp, s2
                  ori          s11, t4, 1620
                  add          gp, s9, a4
50:               ori          s8, s2, -805
                  slt          s7, zero, a5
52:               nop
                  slli         tp, a5, 19
                  la           t3, region_1+276 #start riscv_load_store_rand_instr_stream_0
                  or           s10, gp, t2
                  srli         t6, s5, 6
                  srl          zero, s7, sp
                  lb           a5, 589(t3)
                  sra          s9, a2, s2
                  lw           s2, 1632(t3)
                  xori         a7, s8, -48
                  lbu          t2, 96(t3)
                  lb           t0, 497(t3)
                  sb           t1, 448(t3)
                  sub          s9, t1, ra
                  slli         t0, sp, 3
                  andi         t4, t1, -1297
                  add          s9, s2, s8
                  sb           s1, 791(t3)
                  lb           t6, -125(t3)
                  lbu          a6, 1681(t3)
                  sra          s5, t3, t1
                  nop
                  lh           s11, 1334(t3)
                  lb           t6, 303(t3)
                  lb           s6, 1549(t3)
                  slt          t6, s9, t1
                  lh           s9, 1292(t3)
                  lh           a1, 746(t3)
                  sltiu        s8, t2, 958
                  lbu          sp, 1166(t3)
                  srli         s6, s4, 22
                  sb           s11, 761(t3)
                  lb           a4, 539(t3) #end riscv_load_store_rand_instr_stream_0
                  andi         a0, s4, 770
                  srl          gp, t5, s3
                  srai         a7, s7, 20
                  sra          sp, s6, gp
                  and          s11, t2, t1
59:               beq          ra, a4, 71f
                  sra          s2, a7, s10
                  bge          s7, t3, 64f
                  bge          a7, s3, 63f
63:               sub          sp, t6, t4
64:               sll          s7, t4, a5
                  sub          s3, a4, s2
                  slt          s5, t3, ra
                  xor          t0, a4, t5
                  beq          s7, a2, 85f
                  sltu         a2, ra, tp
                  lui          a3, 435834
71:               xori         sp, tp, -1009
                  addi         a1, s7, 1810
                  sub          t2, t5, a4
                  srli         zero, gp, 16
                  nop
                  srli         s11, ra, 14
                  sub          gp, s8, a7
                  ori          a0, s3, 1502
                  ori          s10, s6, -1756
                  lui          gp, 854994
                  slli         a7, t3, 31
                  sltu         t2, ra, s11
                  sub          t2, s0, a4
                  andi         s6, a3, 1037
85:               slli         tp, s3, 10
                  xor          t0, s3, t6
                  and          a0, s6, s9
                  slli         tp, s8, 29
                  sltiu        a7, a5, -1855
                  beq          ra, t2, 102f
                  sltiu        t6, t4, 1954
                  lui          a4, 753133
                  sra          sp, s6, s7
                  andi         s8, s6, 1594
                  add          s1, zero, t2
                  add          a7, s9, a4
                  addi         a5, a2, -123
                  slli         a0, a5, 21
                  bgeu         t0, s5, 118f
                  auipc        s3, 575535
                  andi         s7, s10, -909
102:              or           gp, s8, s6
                  lui          a6, 857213
                  bgeu         a0, t0, 105f
105:              bgeu         t2, a6, 106f
106:              ori          ra, a1, -1878
                  xor          s9, a2, a2
                  slli         s5, a2, 26
                  bgeu         a5, zero, 117f
                  slt          s8, s11, gp
                  lui          s10, 1035445
                  add          a2, s11, t0
                  addi         s5, t5, 1018
                  sub          s10, s2, s11
                  srl          s2, a7, t0
                  xor          a0, tp, s1
                  auipc        t0, 424996
                  blt          a3, gp, sub_9_j13 #branch to jump instr
                  xor          a7, s1, t1
                  nop
                  sltiu        t6, s7, 350
                  slt          s11, s5, s3
                  sll          zero, a5, t5
sub_9_j13:        jal          ra, sub_10 #jump sub_9 -> sub_10
                  srai         s8, s2, 20
                  ori          gp, zero, 1714
                  blt          a2, s8, 136f
117:              blt          s7, s0, 120f
118:              sltu         gp, s6, ra
                  bgeu         s2, t1, 127f
120:              xor          t6, t0, s3
                  bge          t0, s2, 132f
                  and          t2, t4, s2
                  bge          a4, sp, 124f
124:              or           zero, t2, t4
                  blt          s9, a3, 128f
                  add          s6, s11, t4
127:              xor          zero, s1, tp
128:              addi         a4, a7, 308
                  sub          a7, s2, s2
                  auipc        a1, 83726
                  xor          s7, t5, t0
132:              slli         t5, t5, 31
                  sltiu        t5, a3, -1209
                  srli         t5, s4, 16
                  beq          s10, s0, 136f
136:              bge          a1, t1, 144f
                  srai         s9, s1, 26
                  ori          s10, t1, -1468
                  nop
                  sra          s1, a2, gp
                  xor          a0, tp, a3
                  sub          a6, a6, gp
                  beq          a0, s8, 153f
144:              xori         t6, a1, -988
                  sltu         a1, s11, ra
                  add          a0, a5, ra
                  and          a4, sp, s3
                  slt          t5, s11, s6
                  ori          a4, zero, 636
                  bgeu         a6, s7, 170f
                  beq          a5, sp, 153f
                  slt          a4, s7, t5
153:              andi         sp, a4, 1277
                  sll          t4, ra, a5
                  and          s10, t1, s10
                  sltu         a3, t5, zero
                  bne          s7, a6, 175f
                  and          a4, s4, t6
                  slt          t2, s5, a6
                  bltu         s6, zero, 171f
                  sltu         a7, s10, t1
                  sltiu        zero, a3, 117
                  slti         t5, s0, -1041
                  nop
                  bne          t0, a5, 185f
                  auipc        a6, 664337
                  auipc        ra, 494390
                  beq          t5, s1, 173f
                  addi         s6, a4, -292
170:              nop
171:              sra          s7, s8, a3
                  srl          gp, s5, ra
173:              ori          s6, a5, -544
                  xori         s5, s5, 369
175:              sll          t0, ra, s9
                  nop
                  blt          t5, ra, 189f
                  beq          t1, t2, 181f
                  sub          t6, t3, t4
                  bge          s7, s9, 190f
181:              addi         s2, tp, 1349
                  srai         s5, sp, 5
                  nop
                  xori         a3, t2, -1800
185:              ori          a4, a6, 46
                  beq          a7, s7, 199f
                  auipc        t3, 614434
                  blt          s2, a5, 189f
189:              beq          s0, a4, 199f
190:              auipc        zero, 115584
                  xor          s5, s10, s9
                  sub          a2, a4, a5
                  xori         a7, a2, -415
                  sltu         s5, a6, s8
                  auipc        a1, 328221
                  xori         a2, s6, -745
                  slti         a2, t3, 1098
                  auipc        t2, 217472
199:              xori         a6, sp, 263
                  sll          s7, t5, gp
                  lw           ra, 4(s4)
                  slti         s10, a1, -604
                  addi         s4, s4, 56
                  sub          a2, s2, t2
                  addi         a3, sp, 1327
                  slli         t4, s5, 21
                  slli         gp, a3, 14
257:              addi x4, x1, 1
257:              jalr x4, x4, 0
sub_4:            sltu         zero, s1, a7
                  srai         s6, a7, 30
                  and          t3, s4, s3
                  bltu         sp, s0, sub_4_stack_p
                  sra          t5, a1, t5
sub_4_stack_p:    addi         s4, s4, -32
                  sltu         a1, ra, ra
                  nop
                  srli         sp, t6, 5
                  andi         a6, t0, 1673
                  ori          a7, s0, 1632
                  sw           ra, 4(s4)
                  or           t3, s9, s11
                  la           s9, region_0+784 #start riscv_load_store_rand_instr_stream_8
                  srli         a7, t0, 21
                  auipc        s5, 262943
                  nop
                  sltu         s5, s3, s6
                  auipc        s11, 940326
                  xori         a5, s0, -114
                  addi         sp, s11, 227
                  slli         t3, s6, 6
                  lw           a5, 64(s9)
                  auipc        s5, 286111
                  xor          s8, t6, a1
                  sb           t6, 135(s9)
                  srl          a6, s7, s1
                  lbu          a1, 49(s9)
                  lh           s11, -46(s9)
                  lbu          a0, -164(s9)
                  sltiu        s5, s1, 1442
                  lbu          s2, -239(s9)
                  sltiu        s10, ra, 938
                  lui          s11, 632490
                  slt          a3, t6, s9
                  lb           a0, -115(s9)
                  slt          a7, s2, t5
                  lbu          a1, -222(s9)
                  lb           s6, 37(s9)
                  lbu          s11, 199(s9)
                  add          ra, sp, s5
                  lbu          a1, -197(s9)
                  lb           s10, -144(s9)
                  lbu          gp, -121(s9)
                  slti         gp, t4, -2047
                  and          s10, a5, sp
                  ori          gp, zero, -368
                  xor          s10, s1, s6
                  add          s2, a1, a6
                  sb           a7, -84(s9)
                  sra          a2, tp, s3
                  sb           a3, 23(s9)
                  lb           a3, 165(s9)
                  add          t5, s11, s3
                  lb           s2, -28(s9)
                  sltu         t6, s6, s8
                  sll          s10, s3, s9
                  lb           a7, -212(s9)
                  lbu          s11, -49(s9)
                  lh           a2, 58(s9)
                  srli         s5, t0, 21
                  xor          t2, a5, a3
                  sb           s11, -103(s9)
                  sb           gp, -53(s9) #end riscv_load_store_rand_instr_stream_8
                  la           sp, region_0+1166 #start riscv_load_store_rand_instr_stream_4
                  nop
                  sb           zero, -371(sp)
                  lbu          t0, 345(sp)
                  nop
                  or           s8, a2, t0
                  sh           a2, -466(sp)
                  sra          s3, s11, zero
                  lb           s2, 109(sp)
                  sb           tp, 521(sp)
                  sb           s2, 299(sp)
                  sub          s5, t4, s9
                  lbu          s3, -45(sp)
                  nop
                  lbu          t3, -267(sp)
                  andi         a3, a0, -314
                  lui          s11, 336365
                  srai         tp, a5, 24
                  sb           a1, -427(sp)
                  sub          t5, s2, t2
                  lb           tp, 444(sp)
                  auipc        s5, 355812
                  lbu          s1, -11(sp)
                  lbu          t0, -34(sp)
                  andi         a1, a7, 590
                  sltu         t0, a0, s2
                  xor          a1, t1, t0
                  lbu          t3, -33(sp)
                  auipc        t2, 789924
                  lbu          zero, -929(sp)
                  sw           t0, 766(sp) #end riscv_load_store_rand_instr_stream_4
                  la           t4, region_1+1708 #start riscv_load_store_rand_instr_stream_0
                  lhu          t2, -116(t4)
                  lui          a2, 445090
                  lui          a1, 940122
                  sh           a0, 46(t4)
                  sra          a3, a5, gp
                  sub          t0, s11, zero
                  sb           a2, -221(t4)
                  lhu          a2, 44(t4)
                  lb           s10, -35(t4)
                  lh           t6, 124(t4)
                  lui          s2, 625549
                  lhu          s1, -88(t4)
                  lbu          zero, 149(t4)
                  ori          a2, s2, -955
                  sb           s9, 20(t4)
                  sll          t5, t5, t2
                  lb           s3, 149(t4)
                  srai         s2, zero, 10
                  sh           s3, 236(t4)
                  lbu          s3, 76(t4)
                  ori          ra, gp, -83
                  lbu          t5, 86(t4)
                  slti         s11, s4, 887
                  sh           a5, -36(t4)
                  lbu          tp, 128(t4)
                  sh           a7, 34(t4)
                  ori          a2, t1, 1454
                  sw           zero, -248(t4)
                  slt          ra, s10, ra
                  lh           a6, 34(t4)
                  lbu          s9, -98(t4)
                  slt          s9, t0, a1
                  ori          a3, gp, -62
                  lhu          s3, -184(t4)
                  sh           s11, -52(t4)
                  slli         a5, s8, 16
                  xor          a4, t6, s6
                  lb           s5, -180(t4)
                  lbu          a2, 143(t4)
                  slli         a2, a0, 25
                  sb           a4, -11(t4)
                  sb           a4, 197(t4)
                  sb           a6, 125(t4)
                  lbu          t0, -193(t4) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_0+1919 #start riscv_load_store_rand_instr_stream_1
                  sltu         a7, s4, s1
                  sb           tp, -33(sp)
                  xori         s7, a2, 91
                  sw           a0, -243(sp)
                  lb           t5, -246(sp)
                  or           tp, a2, s5
                  srl          a0, a3, s7
                  sltu         a0, sp, t4
                  lb           s8, -203(sp)
                  sb           zero, -103(sp)
                  lh           s9, -165(sp)
                  or           a4, gp, s2
                  lbu          s3, -205(sp)
                  or           s7, a6, t0
                  srli         zero, t6, 28
                  xor          t2, t0, a3
                  lh           tp, -29(sp)
                  srl          a7, a7, s11
                  lb           t0, 72(sp)
                  sltiu        a3, s11, -904
                  addi         gp, s10, -1044
                  sll          a0, s4, s8
                  lh           a6, -77(sp)
                  lhu          tp, 43(sp)
                  add          a3, t0, gp
                  nop
                  lhu          tp, 29(sp)
                  add          gp, s5, a5
                  nop
                  lw           tp, -147(sp)
                  lbu          s7, 11(sp)
                  add          s5, ra, s5
                  sub          s7, s9, a1
                  slti         s8, a5, 1509
                  sub          tp, tp, a3
                  xori         gp, t3, 967
                  lb           t2, 16(sp)
                  or           s1, t0, gp
                  sh           s10, 51(sp)
                  lbu          a3, 49(sp)
                  lui          t4, 565256
                  lb           tp, 15(sp)
                  lh           a6, -125(sp) #end riscv_load_store_rand_instr_stream_1
                  la           a7, region_0+1184 #start riscv_load_store_rand_instr_stream_5
                  sltiu        a6, sp, 1775
                  lbu          a0, 490(a7)
                  lb           s7, 395(a7)
                  lb           t2, -274(a7)
                  lbu          a0, -595(a7)
                  sll          t3, a6, s5
                  lbu          s10, 150(a7)
                  lb           a2, 148(a7)
                  xori         s7, s7, 1729
                  sltiu        s9, s7, 1956
                  srl          t0, t6, s4
                  lui          t0, 615361
                  lh           sp, -734(a7)
                  sh           t4, -688(a7)
                  lbu          s7, 417(a7)
                  lbu          s2, -1011(a7)
                  lb           t2, 146(a7)
                  lbu          a2, 359(a7)
                  lhu          a3, 372(a7)
                  lb           t2, 405(a7)
                  and          s3, s2, s6
                  sw           s8, -636(a7)
                  add          tp, a2, t5
                  lbu          t4, -215(a7)
                  lbu          tp, -436(a7)
                  lh           s5, -44(a7)
                  lh           s3, -482(a7)
                  sb           a3, 404(a7)
                  lb           s3, -1047(a7)
                  lb           zero, 462(a7)
                  sltiu        t6, s1, -739
                  sb           t5, -324(a7)
                  lh           sp, -446(a7)
                  sb           a6, -961(a7)
                  lh           a1, 342(a7)
                  lui          s10, 979172
                  sh           a0, -560(a7)
                  sub          a5, t4, t0
                  lb           a0, -486(a7)
                  sw           s8, 56(a7) #end riscv_load_store_rand_instr_stream_5
                  la           sp, region_0+138 #start riscv_load_store_rand_instr_stream_7
                  lh           s11, -18(sp)
                  lui          s2, 998488
                  lw           tp, -98(sp)
                  lb           s5, 155(sp)
                  sh           tp, 144(sp)
                  slt          a6, a0, s3
                  srai         s10, t0, 3
                  lhu          tp, 252(sp)
                  sb           a7, -87(sp)
                  slli         s3, s6, 20
                  lbu          s6, -49(sp)
                  lbu          a4, -88(sp)
                  lhu          zero, 8(sp)
                  sb           a5, -128(sp)
                  lb           a1, 69(sp)
                  lbu          a3, 93(sp)
                  sll          s7, t3, t0
                  lb           t3, 43(sp)
                  lbu          t6, 88(sp)
                  andi         a6, t4, -897
                  lb           s3, 147(sp)
                  sub          t2, s9, ra
                  sb           t3, -103(sp)
                  nop
                  lb           t6, 227(sp)
                  lb           s1, 105(sp)
                  auipc        s1, 236698
                  srai         s6, s2, 24
                  sh           a3, 22(sp)
                  lbu          s10, 26(sp)
                  lbu          gp, 43(sp) #end riscv_load_store_rand_instr_stream_7
                  la           t5, region_0+795 #start riscv_load_store_rand_instr_stream_9
                  lbu          a0, 13(t5)
                  sll          s6, gp, t6
                  sb           s3, 0(t5)
                  lb           a2, 16(t5)
                  lb           s3, -33(t5)
                  xori         t6, a0, -1314
                  sb           a1, -6(t5)
                  lbu          s9, -5(t5)
                  sra          s11, s5, s2
                  lbu          a5, 10(t5)
                  sub          s5, s1, s5
                  sltiu        t2, a2, -211
                  lb           t4, 40(t5)
                  srl          s7, t6, s9
                  slti         a4, s4, -1539
                  lhu          t6, -21(t5)
                  sra          t4, s7, s9
                  add          s7, tp, t4
                  lhu          a4, 3(t5)
                  sw           s5, -23(t5)
                  sb           s10, -10(t5)
                  lb           t0, -54(t5)
                  lb           s3, 62(t5)
                  sb           t4, -62(t5)
                  srl          a4, sp, a2
                  nop
                  slti         a0, s8, -1632
                  lw           s2, -55(t5)
                  nop
                  lbu          tp, -41(t5)
                  lbu          s7, -48(t5)
                  sb           t0, 12(t5)
                  sh           t2, 15(t5)
                  auipc        gp, 890868
                  andi         ra, a4, 1137
                  sll          t2, s8, s0
                  lbu          sp, 59(t5)
                  or           a1, sp, t3
                  lhu          a7, -1(t5)
                  lh           t0, 41(t5)
                  lb           s2, 27(t5)
                  lbu          t3, 64(t5)
                  nop
                  sra          s1, a5, a1
                  addi         sp, tp, -265
                  lb           ra, -16(t5)
                  sh           s5, -19(t5)
                  sltu         a3, s11, ra
                  and          s3, t4, s11
                  add          ra, s3, a3
                  lb           sp, -32(t5)
                  or           a2, a3, s2
                  ori          s8, s11, 1367
                  sltu         t2, t2, s2
                  lw           t4, -23(t5) #end riscv_load_store_rand_instr_stream_9
                  addi         t6, s8, -1193
                  andi         t4, t2, -1490
                  slli         a5, a1, 11
                  ori          a0, zero, 1037
                  lui          ra, 317578
                  srl          t4, a5, s7
                  bgeu         s4, s0, 19f
                  sra          ra, s7, s4
                  sltiu        t2, s4, 908
                  nop
                  bge          sp, t5, 15f
                  bgeu         a2, t6, 17f
                  or           s2, gp, t5
                  bgeu         s5, t6, 28f
                  auipc        t5, 743436
15:               srl          t0, s2, gp
                  addi         a3, ra, 1214
17:               slt          sp, a7, s11
                  nop
19:               slt          s9, t3, s10
                  sra          s3, s4, zero
                  slti         a6, s9, -612
                  add          t2, s8, t5
                  bne          a3, t3, 36f
                  addi         zero, t2, 1
                  auipc        a0, 1016368
                  add          s2, a4, t0
                  nop
28:               bge          s8, s6, 33f
                  srai         a4, zero, 3
                  auipc        a4, 174603
                  andi         s1, s1, -1410
                  andi         t3, a2, -188
33:               sltu         gp, s11, s1
                  sltiu        t5, ra, 1421
                  bgeu         gp, t3, 43f
36:               ori          s9, s5, 1347
                  bltu         s4, a0, 53f
                  sub          s1, s10, a5
                  slli         t3, a3, 8
                  srli         t0, a2, 2
                  nop
                  sltiu        a5, s8, -317
43:               ori          a5, s5, -739
                  srli         s2, tp, 1
                  lui          s5, 266714
                  addi         a3, t4, -1223
                  sltiu        a4, tp, 1902
                  bltu         s4, s8, 64f
                  sll          a6, s11, sp
                  add          tp, t4, a7
                  add          s8, s4, a2
                  add          zero, s11, a6
53:               bge          s4, s4, 57f
                  sub          s8, t5, s3
                  addi         gp, t6, 1795
                  srli         a1, a1, 5
57:               and          s2, a6, a0
                  blt          t6, s6, 70f
                  sll          a3, s8, a6
                  add          t4, s9, s10
                  lui          s5, 713245
                  ori          a4, sp, -23
                  lui          sp, 275301
64:               addi         a5, t4, -588
                  nop
                  srl          tp, a5, s10
                  slt          s3, t5, s1
                  srai         s1, s1, 17
                  blt          s4, s7, 71f
70:               sltu         a5, t0, a7
71:               bgeu         sp, a1, 73f
                  sltiu        gp, t2, -592
73:               blt          ra, a0, 75f
                  slli         t2, a4, 10
75:               srai         a5, a7, 28
                  slt          tp, t6, a7
                  sub          s8, t2, a2
                  srl          s10, gp, a0
                  blt          s2, a6, 92f
                  bne          s11, s11, 96f
                  addi         s8, a3, -1218
                  srli         t6, s7, 10
                  srl          ra, a4, t0
                  srli         t6, s6, 12
                  xori         s10, a0, -1840
                  sltu         a4, a0, a4
                  slti         a3, s1, -1000
                  addi         a6, t3, 1215
                  srli         t3, s2, 11
                  sra          t5, s7, tp
                  beq          t4, s8, 101f
92:               sltiu        a1, t1, -1585
                  sltiu        s11, gp, 424
                  ori          sp, s8, 1630
                  or           s9, s5, gp
96:               lui          s3, 64978
                  srl          a0, t4, s4
                  andi         s1, s5, -1301
                  add          a4, s11, a3
                  srli         t4, s3, 10
101:              srli         s8, tp, 29
                  slt          ra, s10, s8
                  slti         a0, s8, 1155
                  auipc        a3, 252803
                  addi         s11, s0, 1611
                  slli         a5, t5, 11
                  sltu         a1, a5, t0
                  blt          a2, s6, 127f
                  slt          s2, ra, zero
                  add          t4, t3, s11
                  add          a7, s3, a7
                  srai         a7, t2, 13
                  srl          s9, t4, ra
                  auipc        s11, 364046
                  sra          a6, s8, s5
                  sltu         s2, a4, s9
                  sltiu        a5, sp, 1835
                  bltu         gp, t3, 124f
                  bge          gp, s5, 133f
                  auipc        s6, 132737
                  andi         s7, s10, -412
                  lui          t0, 548780
                  andi         t4, s8, 1943
124:              slti         tp, a1, -960
                  sll          s8, s7, ra
                  sub          s5, a5, t0
127:              and          t3, ra, a6
                  srli         t5, a5, 13
                  bne          s2, a1, 148f
                  bltu         s11, tp, 135f
                  bge          s6, a7, 132f
132:              sub          sp, s11, s2
133:              sltu         a0, a4, a7
                  srai         s9, t6, 1
135:              sltiu        t5, t0, 1498
                  addi         tp, t1, 1684
                  ori          s6, a6, 866
                  bge          t2, s5, 141f
                  srai         a0, tp, 9
                  nop
141:              andi         a7, gp, 916
                  srl          t5, s6, a7
                  andi         a4, s6, -276
                  slli         t5, s8, 28
                  sub          zero, t1, zero
                  or           gp, s3, s7
                  bltu         s11, s8, 153f
148:              bgeu         s10, t4, 163f
                  andi         a0, tp, 1413
                  lui          ra, 359070
                  xor          s10, s11, ra
                  srai         s6, t6, 9
153:              ori          a3, t4, -1850
                  and          a0, t1, s11
                  bge          gp, zero, 171f
                  nop
                  blt          a5, s0, 174f
                  beq          t6, a1, 165f
                  bge          a7, a7, 179f
                  srli         s3, s3, 17
                  slti         ra, s8, 742
                  bne          s0, t2, 167f
163:              sltiu        t3, a5, -1481
                  bne          s5, a3, 172f
165:              bgeu         a2, t3, 178f
                  and          a3, a3, s8
167:              bge          tp, a1, 169f
                  blt          s2, s6, 174f
169:              or           a3, s11, a6
                  slti         s8, gp, 1566
171:              sltu         t2, s4, t4
172:              bge          a7, a4, 192f
                  slti         s6, sp, -1768
174:              xor          ra, s7, s4
                  sltiu        zero, t2, 1377
                  and          t4, s5, s6
                  nop
178:              andi         ra, a1, 213
                  la           a1, region_1+1780 #start riscv_load_store_rand_instr_stream_3
                  slli         t4, a4, 10
                  sb           t3, -3(a1)
                  lw           t6, 4(a1)
                  sltu         s7, t2, s1
                  nop
                  lui          s2, 322347
                  srl          a4, s2, s6
                  add          ra, t5, s9
                  lb           t2, -3(a1)
                  lh           zero, 2(a1)
                  lbu          tp, 5(a1)
                  sb           a7, 6(a1)
                  lb           a5, -14(a1)
                  lb           s2, -15(a1)
                  sb           a7, 14(a1)
                  nop
                  lbu          s5, -5(a1)
                  sltiu        gp, s2, -1068
                  lh           tp, 4(a1)
                  lb           gp, -10(a1)
                  lbu          s5, 3(a1)
                  lbu          t4, -12(a1)
                  or           t3, sp, s11
                  lw           tp, 12(a1)
                  sw           s3, 4(a1)
                  lb           ra, -5(a1)
                  lh           sp, 0(a1)
                  lb           t6, 9(a1)
                  sltiu        zero, a2, -2015
                  srl          a0, s7, s5
                  lhu          t2, -6(a1)
                  srli         s8, s7, 4
                  sb           a3, 7(a1)
                  sltu         zero, gp, s7
                  sb           a3, -1(a1)
                  srli         s1, s11, 24
                  xori         s1, gp, -1768
                  lh           t3, -10(a1)
                  lh           a2, 6(a1)
                  andi         a6, s5, 351
                  sh           ra, -4(a1)
                  lb           a7, -3(a1)
                  sb           sp, -16(a1)
                  slli         a6, a1, 27
                  lh           t6, 0(a1)
                  lbu          tp, 5(a1)
                  sh           sp, -16(a1) #end riscv_load_store_rand_instr_stream_3
179:              slli         t0, a4, 25
                  bne          a7, a3, 199f
                  and          s1, s9, s8
                  lui          a2, 752333
                  sltu         t6, a4, a0
                  srli         s2, s1, 12
                  sll          a1, t5, s3
                  slti         gp, a7, 1955
                  or           a3, gp, a5
                  andi         a5, s5, 364
                  sll          s9, t0, s4
                  xor          s1, s9, a1
                  xor          zero, s1, gp
192:              and          sp, t1, s0
                  xor          a4, s2, s10
                  or           s8, s4, s9
                  add          ra, t5, t3
                  sltiu        tp, s5, -869
                  and          zero, s1, s10
                  xor          s3, t2, s5
199:              or           s6, t4, s3
                  sub          a1, t4, zero
                  srl          a7, gp, s0
                  add          a4, s0, a5
                  lui          t5, 338050
                  lui          zero, 128310
                  blt          a6, ra, 221f
                  bne          s10, s1, 208f
                  srai         tp, s5, 29
208:              add          s3, s5, a6
                  sra          s5, s6, t3
                  bgeu         t5, s7, 225f
                  srli         ra, zero, 29
                  or           a4, a6, a4
                  and          tp, s9, s7
                  slt          a1, zero, s2
                  andi         t3, s4, 603
                  sub          a7, sp, ra
                  xor          a4, t5, s8
                  auipc        s1, 760032
                  andi         ra, s0, 1051
                  xor          a7, t5, t2
221:              xor          s9, a3, s1
                  bltu         s4, a2, 227f
                  lui          gp, 198257
                  add          a7, a5, a4
225:              xori         a0, t5, 218
                  sltiu        a5, t1, 1002
227:              addi         t2, s1, 873
                  slli         t2, t1, 3
                  addi         t0, t6, 305
                  bgeu         t5, a5, 246f
                  auipc        s5, 914524
                  andi         s3, s9, -1826
                  srai         a4, zero, 19
                  and          gp, s8, s2
                  bltu         sp, a3, 250f
                  sll          a2, gp, s0
                  srli         gp, tp, 18
                  bne          t5, s3, 242f
                  sub          sp, s4, t3
                  auipc        t6, 878930
                  nop
242:              bge          s10, gp, 244f
                  sll          t0, a6, a0
244:              and          gp, s10, s2
                  bgeu         ra, s0, 261f
246:              slt          s3, s9, t4
                  srai         s8, s3, 31
                  sltu         zero, zero, sp
                  sra          s6, s2, a7
250:              andi         s3, s7, 20
                  sltu         s3, s5, s10
                  srai         a4, s10, 1
                  srl          tp, s9, tp
                  xori         s7, s7, 1181
                  la           a3, region_1+320 #start riscv_load_store_rand_instr_stream_6
                  lbu          t2, 7(a3)
                  slti         t0, s11, 974
                  lh           sp, -10(a3)
                  lb           t0, 9(a3)
                  lbu          t6, 9(a3)
                  addi         a4, a7, 928
                  lw           a6, 8(a3)
                  lui          s2, 159523
                  lbu          a5, -15(a3)
                  lbu          t4, -10(a3)
                  slli         t6, a0, 10
                  lb           gp, 1(a3)
                  addi         s6, t3, -1537
                  slli         s10, a1, 12
                  lb           a5, 12(a3)
                  sh           t6, 10(a3)
                  lhu          a1, 12(a3)
                  sb           s0, 16(a3)
                  sb           sp, -3(a3)
                  lbu          ra, -1(a3)
                  srai         t0, zero, 19
                  sb           s9, 2(a3)
                  lbu          gp, 15(a3)
                  ori          zero, sp, 866
                  lbu          t3, -11(a3)
                  srai         ra, gp, 15
                  srl          s5, t5, t5
                  lui          a2, 853134
                  lbu          s7, 3(a3)
                  lbu          t0, -8(a3)
                  andi         s9, gp, -777
                  sra          s8, s10, a5
                  lh           a1, 0(a3)
                  addi         a1, sp, -826
                  lbu          s6, 1(a3)
                  and          s2, tp, s5
                  lbu          s6, 5(a3) #end riscv_load_store_rand_instr_stream_6
                  slt          a1, a0, t1
                  lui          t4, 288740
                  sltu         s10, a7, s6
                  srl          sp, s0, a5
                  beq          tp, s11, 275f
                  andi         a5, s1, 792
261:              bne          t5, a6, 278f
                  xori         a2, t4, -687
                  slli         tp, t4, 10
                  nop
                  xor          s5, zero, gp
                  xor          tp, a3, t6
                  sub          gp, t3, a1
                  ori          t0, a6, -902
                  or           s1, t2, a5
                  bgeu         s2, s1, 283f
                  bge          s4, s9, 283f
                  sltiu        a3, t3, -1901
                  srli         a4, s10, 0
                  addi         a1, s11, -539
275:              blt          a5, a5, 278f
                  slt          t6, s9, s3
                  slt          a7, s6, s7
278:              bgeu         s9, s8, 284f
                  bge          a6, ra, 292f
                  sll          a4, a4, s6
                  sra          s10, a1, a4
                  srli         a3, s1, 0
283:              bltu         a5, a7, 284f
284:              nop
                  sll          s1, t2, zero
                  slti         a0, s0, -183
                  slt          s7, t4, t4
                  or           t3, a1, t3
                  sll          t3, a1, t6
                  srli         t3, s5, 16
                  ori          a0, t1, -1296
292:              slti         t6, t3, -84
                  nop
                  sub          s10, tp, tp
                  add          s10, a4, s3
                  add          s1, a7, a6
                  xor          s7, s8, a3
                  slt          gp, a4, s11
                  sra          s10, s10, t2
                  slli         t4, s0, 24
                  bgeu         a1, tp, 320f
                  lui          a1, 884886
                  add          t3, s1, sp
                  sltiu        s8, ra, 851
                  srai         s9, a4, 19
                  beq          t1, s11, 313f
                  slti         s7, a3, -1736
                  nop
                  sra          t6, gp, s11
                  slli         t4, t4, 14
                  bgeu         t2, s11, 321f
                  blt          gp, a1, 326f
313:              bgeu         tp, s6, 318f
                  andi         s6, t3, -376
                  bne          a4, sp, 321f
                  sltiu        t6, s5, 1765
                  srli         gp, s4, 0
318:              andi         s2, t1, -949
                  sll          a7, a4, zero
320:              auipc        a6, 11859
321:              slti         a3, s9, 523
                  add          t2, tp, a2
                  srli         t5, s6, 16
                  sltu         a2, s8, s7
                  or           zero, s4, s10
326:              add          s1, s4, a5
                  blt          s10, a0, 332f
                  bne          a7, ra, 344f
                  ori          t3, a0, -1790
                  srl          s6, a4, s0
                  beq          s7, a6, 333f
332:              sll          sp, s11, t6
333:              slti         t2, s11, 1741
                  bgeu         tp, t0, 336f
                  ori          s9, a4, -14
336:              blt          t1, s10, 349f
                  slti         s11, t0, -686
                  beq          a2, s0, 352f
                  sll          s1, t3, s3
                  add          t0, a7, gp
                  slti         ra, s5, 1088
                  srl          s2, t1, s8
                  slt          s5, a7, zero
344:              ori          t4, t6, 1007
                  or           zero, a7, s4
                  ori          sp, s4, 683
                  sltu         s8, t0, s1
                  andi         a3, t4, -1057
349:              xori         s7, s3, -1926
                  sltu         a1, s5, a5
                  slli         s5, a6, 6
352:              sra          s3, t3, a4
                  srai         a3, a4, 21
                  sra          s9, s2, s9
                  xor          a4, a6, s2
                  srl          s7, s10, s10
                  sub          s8, s0, sp
                  lui          s5, 197651
                  nop
                  srli         s6, t2, 21
                  srl          a2, s5, t3
                  lui          a7, 931433
                  srai         s2, t1, 26
                  xor          s2, t6, s6
                  or           s3, s8, t3
                  slti         a6, a2, -1397
                  xor          s7, s6, s6
                  beq          s6, s7, 387f
                  sll          s10, s7, a1
                  sll          s1, t5, s4
                  bne          s4, a2, 375f
                  bne          t2, t6, 380f
                  sltiu        s8, s4, 190
                  srli         s9, s0, 19
375:              xor          sp, sp, ra
                  ori          t5, s2, 671
                  slli         a0, s3, 26
                  andi         s1, t5, -1207
                  srli         t4, s0, 9
380:              andi         t3, a2, -993
                  srl          t3, a5, ra
                  addi         a3, a2, 599
                  xor          a6, a0, s10
                  bltu         s10, ra, 400f
                  addi         a2, s5, 205
                  bltu         s4, t1, 389f
387:              xori         ra, a5, 1706
                  andi         s2, s0, -1824
389:              slli         a7, t0, 0
                  srl          t4, ra, t2
                  ori          t2, s8, 741
                  slli         t4, t3, 2
                  ori          s10, t3, 165
                  slt          a2, t2, t4
                  xor          t6, s5, sp
                  blt          tp, sp, 408f
                  sub          s10, gp, t3
                  sra          s5, s7, s5
                  bne          s4, s11, 405f
400:              ori          s3, s11, -1549
                  sub          s2, a5, s8
                  sra          a1, s7, a3
                  bne          a1, sp, 409f
                  slt          a4, s11, a0
405:              sltu         s9, t6, s7
                  bgeu         a7, gp, 421f
                  bgeu         s3, s8, 417f
408:              slli         zero, s2, 26
409:              nop
                  bltu         s4, s2, 425f
                  sltiu        gp, a7, -221
                  andi         sp, t0, -705
                  srai         t0, sp, 20
                  lui          s5, 342654
                  bge          t4, t1, 417f
                  bltu         t4, s11, 429f
417:              srai         a3, a2, 8
                  slt          ra, s3, s4
                  sltu         a3, a3, s10
                  ori          a7, t2, 1614
421:              bge          s5, s1, 437f
                  slti         gp, s0, -208
                  auipc        t4, 165033
                  slti         a3, a4, 1710
425:              sub          a6, a6, t0
                  bge          t1, s2, 427f
427:              add          t0, a0, tp
                  slti         sp, a1, -267
429:              sltu         a7, s4, t5
                  nop
                  lui          s10, 22688
                  srl          t6, t0, s6
                  srli         s6, t4, 26
                  sll          a1, t5, a4
                  beq          a0, a3, 451f
                  ori          t2, s7, 362
437:              slti         a3, s11, 1312
                  bne          s4, a5, 443f
                  bgeu         a5, s0, 452f
                  slt          s9, gp, a7
                  sub          s11, s2, s3
                  sltu         s3, s9, sp
443:              add          a6, s4, s1
                  sltiu        a1, s9, 533
                  srli         ra, a7, 25
                  slti         a3, t2, -771
                  srli         zero, sp, 23
                  sll          s7, t6, t1
                  bgeu         a5, s2, 454f
                  andi         gp, zero, -1196
451:              beq          s9, a5, 470f
452:              xori         a4, s5, -1887
                  xor          s7, s5, t4
454:              sll          s3, a7, s6
                  sll          a4, a5, s3
                  sub          s8, gp, a5
                  srl          s9, t2, t0
                  add          s3, s11, t5
                  bne          s8, s8, 465f
                  bgeu         t4, s2, 467f
                  beq          t5, a1, 478f
                  sra          s7, s5, a2
                  sll          sp, a2, s11
                  or           a4, zero, t5
465:              srai         a4, gp, 14
                  srli         t0, s4, 27
467:              sra          a3, t4, s4
                  nop
                  lui          a7, 348272
470:              add          a2, gp, s0
                  slt          tp, s11, a0
                  sra          a2, t5, s0
                  bgeu         a1, s8, 493f
                  sub          t6, s7, a7
                  or           s5, sp, a2
                  nop
                  srai         s10, t0, 4
478:              ori          a5, s11, -1757
                  sub          a5, zero, a2
                  bge          s9, a1, 497f
                  beq          a7, ra, 483f
                  bge          a7, t5, 497f
483:              sra          t2, s7, a1
                  or           a6, s8, a4
                  srl          a0, tp, tp
                  slt          sp, s5, s7
                  bltu         a3, s9, 489f
                  slti         s8, s11, -231
489:              or           t4, tp, a0
                  blt          s0, a4, 495f
                  bltu         a3, s6, 506f
                  srai         gp, a0, 23
493:              sll          s9, t5, s4
                  auipc        a0, 498895
495:              nop
                  slt          a0, s11, a5
497:              srli         a3, t4, 29
                  add          ra, t0, sp
                  bltu         s10, a1, 501f
                  sltu         t3, a1, tp
501:              nop
                  addi         t3, t0, -1958
                  bne          a0, s8, 516f
                  nop
                  add          tp, s7, gp
506:              blt          t0, s3, 518f
                  andi         s5, s10, -295
                  blt          a7, t5, 509f
                  la           s2, region_0+570 #start riscv_load_store_rand_instr_stream_2
                  auipc        t2, 803544
                  sh           a7, -10(s2)
                  sll          t3, zero, s7
                  lbu          zero, 15(s2)
                  sb           s7, -13(s2)
                  lb           a4, -13(s2)
                  sb           gp, -15(s2)
                  lh           a1, -4(s2)
                  lui          t5, 741627
                  and          s9, s11, a7
                  lb           t6, -16(s2)
                  srl          t0, t1, s0
                  lb           s5, 3(s2)
                  lb           a6, 13(s2)
                  lbu          a1, 6(s2)
                  lbu          t0, 16(s2)
                  sh           s3, 16(s2)
                  lbu          a0, -8(s2)
                  srl          a6, s7, s8
                  andi         t3, s1, -805
                  srli         s10, tp, 11
                  sh           s7, 16(s2)
                  lbu          tp, -5(s2)
                  lbu          tp, 4(s2)
                  lb           gp, 9(s2)
                  slt          gp, a0, s3
                  lh           t6, -4(s2)
                  xori         s5, s2, 460
                  auipc        s1, 29908
                  lb           s6, 5(s2)
                  sw           a1, 14(s2)
                  sh           s1, 14(s2)
                  and          t6, t2, a6
                  slti         s9, s11, -1724
                  sb           t6, 2(s2)
                  sb           a5, -16(s2)
                  sb           t0, 16(s2)
                  sb           gp, 7(s2)
                  sb           tp, 3(s2)
                  sltiu        t6, a0, -1689
                  lb           s7, -16(s2)
                  sb           t2, -1(s2)
                  sra          a3, t2, t1
                  sltu         sp, t3, s0
                  sll          a0, s11, t5
                  srl          s5, t5, a5
                  or           s3, zero, a5
                  lh           s6, 12(s2) #end riscv_load_store_rand_instr_stream_2
509:              slti         s2, a3, 307
                  add          a2, s2, s11
                  srli         t0, a6, 5
                  sltu         zero, tp, t3
                  bge          s1, s3, 529f
                  andi         gp, a2, 583
                  beq          a2, t3, 525f
516:              beq          s5, s0, 522f
                  bge          gp, s11, 536f
518:              xor          s7, ra, t1
                  sra          s1, gp, s9
                  sltiu        s8, s10, 1463
                  addi         a6, s7, 87
522:              nop
                  andi         a6, t2, -1505
                  slti         a2, zero, 1769
525:              slti         ra, s1, -342
                  sll          t6, a4, sp
                  sll          s9, s4, a2
                  sltu         gp, s2, zero
529:              ori          s11, a6, -1978
                  srli         t6, s11, 6
                  and          a3, a5, s5
                  sub          t0, a3, t2
                  sra          a7, sp, s11
                  bge          a6, t5, 537f
                  srli         s7, t3, 21
536:              srl          s7, ra, a4
537:              bltu         a5, s0, 553f
                  sra          a0, s10, a5
                  slti         a1, a0, 978
                  auipc        sp, 467871
                  beq          s5, s6, 560f
                  xor          tp, a2, sp
                  srl          tp, t5, t3
                  bne          t0, a2, 548f
                  or           t5, tp, t6
                  slt          zero, tp, a5
                  slli         s10, t2, 20
548:              and          t3, s0, a7
                  sub          s11, gp, a0
                  blt          s9, s4, 557f
                  add          a7, s11, a7
                  bge          s10, t0, 557f
553:              bge          s7, a6, 569f
                  slti         s5, a3, 399
                  lui          ra, 755489
                  bge          gp, s5, 562f
557:              ori          s7, t4, 91
                  sra          s5, a6, a1
                  add          a3, tp, s11
560:              slti         s10, t5, 730
                  andi         a3, gp, -922
562:              xor          a3, tp, a3
                  add          a7, tp, s7
                  xor          a1, a5, t6
                  xor          s8, zero, ra
                  addi         t4, tp, -1720
                  sll          gp, a2, a4
                  xori         s2, a5, -1156
569:              bne          a3, a6, 585f
                  blt          s8, s2, 576f
                  srai         s9, a5, 1
                  lui          t2, 56072
                  lui          gp, 126709
                  or           sp, s7, t5
                  sltu         s8, t6, t1
576:              slli         s1, a6, 24
                  beq          t4, s7, 597f
                  bgeu         tp, t3, 591f
                  nop
                  xori         a6, s0, -755
                  blt          t2, s11, 586f
                  srl          a7, t4, t2
                  slli         t4, a6, 3
                  srl          t4, t5, gp
585:              sra          a5, s10, tp
586:              srai         a5, t4, 21
                  bne          sp, s4, 601f
                  blt          s6, s8, 601f
                  or           s7, t3, a7
                  bne          ra, a3, 598f
591:              bge          s5, s0, 610f
                  add          t6, sp, a6
                  slti         t6, s7, 1169
                  andi         a7, t0, -39
                  sll          s3, a5, a3
                  sll          tp, s3, tp
597:              slti         a7, s1, 320
598:              sub          ra, t4, s4
                  bgeu         zero, s6, 611f
                  beq          a6, a5, 605f
601:              lui          s3, 954932
                  slti         s10, t5, 355
                  andi         a3, a6, 1174
                  blt          a2, s7, 609f
605:              srl          t4, a3, s5
                  bltu         s10, ra, 626f
                  sub          s8, ra, s7
                  and          sp, s8, a1
609:              auipc        tp, 877874
610:              slti         t5, sp, 735
611:              addi         a6, a4, 1583
                  slli         ra, a6, 5
                  lui          a7, 986740
                  blt          s1, t2, 619f
                  lui          a5, 540208
                  slt          s10, s1, gp
                  lui          s8, 1027540
                  bltu         tp, gp, 625f
619:              sltiu        ra, ra, -238
                  add          a6, s7, ra
                  xor          s11, t6, gp
                  bne          s9, s6, 626f
                  andi         a2, s6, -1648
                  bltu         a0, a4, 626f
625:              addi         t0, zero, 1740
626:              xori         a2, a2, 311
                  slt          s10, a3, s1
                  xor          s8, t3, s0
                  bne          s0, ra, 631f
                  sltu         t4, s3, s8
631:              bltu         s5, s4, 647f
                  slli         ra, zero, 26
                  and          t6, a6, s4
                  sll          t2, s3, t5
                  bgeu         t0, gp, 641f
                  bne          t4, a0, 642f
                  sll          s11, t3, s0
                  sll          a7, s1, sp
                  beq          a2, a3, 655f
                  beq          zero, t3, 642f
641:              nop
642:              nop
                  sub          s2, a4, a0
                  srl          a0, s5, t5
                  slti         t0, s8, -1312
                  sra          a7, a0, a4
647:              beq          t3, a4, 650f
                  srli         t6, s6, 1
                  nop
650:              slli         a4, s9, 18
                  blt          s4, t1, 666f
                  sll          a6, s9, a7
                  blt          t4, s6, 672f
                  bgeu         s9, zero, 670f
655:              andi         s5, gp, 341
                  sub          s5, a6, s4
                  lui          sp, 502632
                  ori          t0, zero, -1143
                  xori         t4, s10, -226
                  sra          a3, t0, s7
                  add          t6, s6, s8
                  sub          t0, s4, s1
                  addi         s8, s0, -1352
                  blt          s3, s9, 665f
665:              srai         s1, ra, 21
666:              srai         gp, s11, 7
                  auipc        s10, 128140
                  and          tp, s4, t0
                  srai         sp, t4, 21
670:              sll          t0, a7, gp
                  and          t6, s0, zero
672:              slli         t5, s4, 31
                  bne          a1, s1, 686f
                  lui          a1, 364466
                  srl          s1, a4, s1
                  srl          t0, t5, gp
                  auipc        s5, 182738
                  xor          t2, t5, s5
                  xor          t6, t5, t6
                  addi         s7, t1, -1314
                  srai         s10, a4, 31
                  beq          s11, t3, 695f
                  and          a7, t2, ra
                  and          ra, a2, a6
                  sra          s10, s3, s0
686:              nop
                  sll          gp, a7, a6
                  srai         t5, t5, 0
                  lui          a2, 1035030
                  bne          a2, s11, 696f
                  sub          zero, s8, s11
                  sub          a4, s10, s6
                  sltu         a3, a6, tp
                  beq          a0, t2, 707f
695:              xori         t2, s1, -1215
696:              xori         zero, a5, -1778
                  and          s10, t5, s8
                  sra          t6, a1, s4
                  slli         t3, t6, 27
                  slt          s10, a1, s8
                  ori          s3, t5, 1015
                  addi         a3, t1, 584
                  blt          t0, s4, 711f
                  slti         a0, s3, -484
                  srli         a5, t5, 15
                  and          a7, ra, tp
707:              bltu         a6, zero, 721f
                  slti         t4, sp, 866
                  ori          s9, ra, -264
                  andi         s5, s0, -157
711:              srli         t2, t5, 12
                  srli         s2, s0, 17
                  srli         a6, a2, 24
                  beq          a0, a7, 729f
                  beq          a3, a5, 732f
                  addi         t2, sp, 1464
                  srai         s10, t4, 16
                  ori          a3, t2, -1198
                  sll          t4, sp, t0
                  bne          s5, s3, 730f
721:              blt          t2, t1, 737f
                  lui          ra, 815306
                  beq          zero, sp, 726f
                  bge          a1, s0, 726f
                  add          s10, s6, a3
726:              blt          s6, s11, 732f
                  or           s9, a6, t5
                  xori         s5, s7, -1373
729:              andi         a5, ra, -567
730:              srli         s5, a5, 5
                  sra          sp, t6, a5
732:              sltu         a7, a3, a7
                  srl          s8, a6, a5
                  slli         t4, t0, 17
                  srl          t2, a0, sp
                  lui          s10, 146440
737:              sltiu        s10, a3, 385
                  ori          a7, a2, -68
                  sll          a0, s6, t3
                  sltiu        s9, a7, -13
                  bgeu         s2, s10, 761f
                  add          s11, a2, s7
                  srai         t4, s3, 4
                  xori         a4, t6, -1774
                  beq          t5, s10, 753f
                  sltiu        s9, a2, 478
                  auipc        s2, 775768
                  blt          s2, a6, 763f
                  xor          ra, gp, t2
                  bgeu         a3, t5, 757f
                  addi         a5, s4, 1897
                  sll          sp, s8, t2
753:              sub          t5, t4, tp
                  slli         t3, zero, 7
                  srl          s6, sp, s8
                  lui          s8, 769974
757:              srli         s1, s5, 12
                  or           t3, a0, zero
                  sltu         a3, sp, zero
                  and          a1, a6, tp
761:              sltiu        s2, s8, 577
                  srli         t5, s9, 11
763:              auipc        t6, 875682
                  beq          zero, s0, 780f
                  nop
                  nop
                  sltiu        t0, s7, -45
                  slti         s2, s5, 441
                  blt          gp, t5, 779f
                  andi         a0, s0, -1271
                  xor          t0, t6, t1
                  xori         s1, a6, -1394
                  sltu         t5, a1, t0
                  bge          tp, t3, 776f
                  sltu         a7, a4, s10
776:              bgeu         s11, a7, 780f
                  auipc        s7, 595497
                  or           s6, s10, s9
779:              srli         s5, s4, 26
780:              auipc        s8, 322757
                  add          t6, s8, t0
                  srl          a4, s0, a7
                  xor          s5, t5, t5
                  auipc        s3, 621512
                  sltu         a1, zero, s7
                  bgeu         a3, ra, 805f
                  blt          s2, s10, 801f
                  addi         t4, t6, -816
                  ori          s6, s4, -1433
                  nop
                  bgeu         s2, a0, 796f
                  bge          t3, t4, 808f
                  bne          a5, gp, 808f
                  sub          t2, a3, sp
                  sll          a4, a0, s0
796:              or           a2, s4, s10
                  lui          a5, 318441
                  slti         a2, t2, 252
                  andi         a6, a4, -1936
                  and          s3, a7, s6
801:              sltu         t4, s5, a5
                  add          sp, s4, s3
                  lui          t2, 924948
                  sra          t0, a2, a2
805:              beq          s2, s5, 810f
                  sltiu        ra, s5, -1285
                  and          s5, a6, tp
808:              sub          t2, t5, s1
                  slt          a3, a6, s3
810:              srli         t2, a7, 8
                  slt          t5, s1, s7
                  bltu         t1, s3, 813f
813:              bltu         t5, s10, 815f
                  sltiu        t5, gp, 1153
815:              nop
                  beq          s7, s6, 821f
                  nop
                  and          ra, gp, zero
                  slti         a6, t0, -1361
                  add          t6, s0, t0
821:              srli         a0, gp, 16
                  bne          s8, a3, 835f
                  bge          s3, t5, 829f
                  bgeu         a7, s11, 837f
                  srl          t5, t6, tp
                  ori          s5, s1, 1899
                  addi         a4, s11, 1534
                  blt          s6, a1, 840f
829:              or           t5, a0, t6
                  sltiu        a1, t3, -1879
                  nop
                  addi         t4, t1, -1536
                  blt          a4, s6, 839f
                  slt          t4, ra, s2
835:              srli         a2, gp, 4
                  srl          a1, a2, a5
837:              bge          s10, a5, 853f
                  ori          s2, a1, 573
839:              slti         ra, t6, -617
840:              srl          t0, tp, t3
                  slli         a1, gp, 29
                  slti         s7, s3, -329
                  sltu         s2, a5, t5
                  add          t5, t5, a0
                  sra          s9, t1, s9
                  addi         a0, t2, 271
                  add          s11, t4, t0
                  sra          s8, t3, s9
                  ori          t3, s2, -672
                  sra          s8, t3, a4
                  auipc        t4, 210954
                  sra          s1, s4, t1
853:              xori         s1, zero, -950
                  sltiu        s8, s5, 2007
                  or           a3, s0, ra
                  nop
                  and          tp, s9, t2
                  xor          s2, gp, s6
                  ori          a2, t1, 341
                  andi         s11, t3, 367
                  sltu         s11, s3, t2
                  addi         s9, a3, -1190
                  or           a3, a2, ra
                  srli         t3, s8, 17
                  sltu         s11, t5, s3
                  slli         s9, s4, 31
                  addi         a2, t1, -712
                  bge          s10, t1, 881f
                  slli         a4, tp, 18
                  xori         sp, s5, 1127
                  sll          s9, a3, s10
                  and          a6, s8, s1
                  srli         gp, t5, 13
                  nop
                  and          s8, s2, gp
                  andi         a0, gp, 533
                  srli         a2, s7, 5
                  bltu         s4, a2, 897f
                  srl          s9, s4, t4
                  bgeu         s6, zero, 896f
881:              xori         a6, s7, 1695
                  sra          ra, gp, sp
                  xor          gp, s10, t2
                  bge          a0, a5, 901f
                  andi         tp, s11, -1909
                  slli         t6, a7, 17
                  bgeu         ra, s6, 899f
                  andi         s3, s6, -1329
                  xor          a4, s9, gp
                  and          s6, a4, s9
                  addi         a5, s10, 1271
                  bgeu         a2, zero, 908f
                  sub          t6, s11, s6
                  srli         gp, s5, 5
                  andi         a6, s6, -645
896:              beq          s8, a4, 900f
897:              slt          t2, a2, zero
                  andi         sp, s2, -1123
899:              xori         sp, s7, -362
900:              bne          a3, s3, 907f
901:              xori         s2, gp, -126
                  bgeu         a2, t3, 918f
                  xori         t6, a6, 386
                  sll          s3, s7, s10
                  srli         ra, t2, 21
                  bgeu         s10, s2, 919f
907:              srai         a3, s3, 9
908:              sltiu        s6, a6, -1599
                  sll          s10, sp, s9
                  bgeu         a0, a3, 915f
                  beq          a6, a4, 925f
                  bne          s10, s9, 925f
                  sll          t3, s4, t0
                  srl          a3, a3, s8
915:              sra          t6, a1, a6
                  sltu         a0, s5, t1
                  andi         s10, a0, -1021
918:              blt          t1, a5, 933f
919:              nop
                  add          a5, t1, sp
                  auipc        s5, 134839
                  sra          a5, s2, s10
                  beq          a2, t2, 940f
                  and          a6, t1, s1
925:              bge          t1, a5, 931f
                  bge          t4, s0, 945f
                  srli         s9, a2, 29
                  srai         s3, a0, 14
                  sltu         a3, s8, s9
                  srli         ra, s4, 23
931:              beq          a4, a6, 947f
                  auipc        a6, 829874
933:              slli         tp, s4, 15
                  andi         t5, gp, 432
                  nop
                  andi         tp, a7, 1531
                  xor          s3, a6, s1
                  slli         s11, ra, 22
                  add          zero, ra, t2
940:              auipc        t2, 632444
                  add          t6, t2, gp
                  srli         a6, s9, 21
                  srai         s11, t2, 29
                  beq          t3, s11, 950f
945:              xor          sp, s6, s1
                  srli         a3, sp, 22
947:              srl          t0, a5, a2
                  slli         gp, s1, 18
                  bge          a2, t1, 962f
950:              nop
                  auipc        tp, 971281
                  bne          s2, a5, 954f
                  andi         a1, tp, -1756
954:              add          s9, t6, tp
                  bge          s10, gp, 960f
                  addi         t2, s8, 1700
                  auipc        a3, 775582
                  add          s11, a3, s9
                  sub          a7, sp, a0
960:              or           gp, s9, a5
                  slti         tp, s11, -1153
962:              addi         s3, gp, 1397
                  sltiu        t0, s1, 910
                  andi         t2, zero, -791
                  ori          t6, s7, 270
                  bne          s1, t3, 971f
                  sltiu        s11, s0, -847
                  sll          t6, a3, sp
                  sll          a3, s11, t1
                  bne          s10, s5, 980f
971:              sra          a3, s3, t5
                  sub          s9, a4, zero
                  sll          zero, s6, s11
                  blt          t0, gp, 990f
                  bltu         a3, a2, 995f
                  auipc        a1, 532679
                  slt          s3, a0, t4
                  auipc        s8, 951502
                  and          s9, s11, t4
980:              bge          gp, s11, 982f
                  and          ra, a0, sp
982:              slt          gp, s4, a2
                  bgeu         s3, a1, 984f
984:              nop
                  sub          a1, t1, t4
                  ori          a6, t5, 748
                  lui          zero, 931760
                  andi         s6, t1, 713
                  sll          gp, t4, a3
990:              auipc        s1, 230748
                  bltu         s8, a4, 999f
                  sltiu        s2, t2, 853
                  add          s2, t6, t4
                  srai         s7, s4, 0
995:              addi         s1, gp, -512
                  and          a0, t0, t3
                  lui          s3, 734980
                  lui          s9, 731990
999:              bne          s10, t2, 1018f
                  add          s8, t0, s8
                  slli         a6, s9, 8
                  nop
                  slli         ra, t0, 25
                  nop
                  bne          t4, s4, 1020f
                  bne          t6, a6, 1009f
                  bne          a1, zero, 1013f
                  xor          t3, s11, a6
1009:             sltu         a6, s6, ra
                  add          t5, s5, s9
                  sra          a1, s5, t1
                  sltu         tp, a4, a1
1013:             sra          a1, a0, ra
                  bne          a4, s9, 1016f
                  bge          s11, t6, 1020f
1016:             srli         t4, s4, 24
                  sltu         a3, a7, s2
1018:             bgeu         a0, t0, 1033f
                  bne          a0, s0, 1038f
1020:             ori          a4, t0, -192
                  sll          tp, s6, s0
                  sltu         s7, t0, a7
                  addi         tp, s4, -701
                  beq          s11, s2, 1026f
                  xori         s5, s11, 1065
1026:             and          a2, sp, tp
                  sll          s9, zero, gp
                  addi         t3, a0, 862
                  beq          a1, a2, 1049f
                  auipc        a7, 863079
                  sub          t5, t2, s2
                  srai         s5, a5, 9
1033:             or           s11, s4, t0
                  slti         t4, a0, 1150
                  andi         gp, s3, -1045
                  and          zero, t2, t3
                  blt          zero, a7, 1050f
1038:             sra          tp, a2, s0
                  sltu         s2, tp, a7
                  blt          a2, s3, 1042f
                  bge          t5, s4, 1047f
1042:             sltiu        a4, a3, -330
                  addi         s11, s6, -1415
                  nop
                  bltu         t3, a3, 1050f
                  and          a4, t6, s8
1047:             lui          s9, 72755
                  sub          s6, t3, a6
1049:             slti         a4, s11, 1650
1050:             blt          a7, gp, 1064f
                  sltiu        s10, tp, -1283
                  add          ra, gp, s10
                  bge          a1, s9, 1072f
                  beq          a3, t0, 1067f
                  bge          a2, a1, 1061f
                  xor          a7, t0, zero
                  sub          a3, t6, s6
                  blt          a0, a2, 1060f
                  srl          sp, a2, t0
1060:             slli         a1, s5, 0
1061:             sra          a2, s3, a5
                  blt          s9, a0, 1068f
                  srl          sp, t3, t6
1064:             srli         s3, t0, 20
                  blt          a6, sp, 1082f
                  sltu         s1, s6, a5
1067:             bne          sp, tp, 1072f
1068:             slti         s9, s7, 515
                  beq          s4, a2, 1082f
                  sltiu        sp, s4, -1896
                  bgeu         a4, s1, 1086f
1072:             lui          s3, 40476
                  xori         ra, t2, -1446
                  sra          s7, s2, s0
                  xori         a2, s9, -1709
                  sub          s2, t4, t1
                  slt          a3, t5, t6
                  beq          s0, s10, 1094f
                  sltu         a6, zero, s7
                  and          s11, a6, s3
                  srai         s7, a6, 27
1082:             blt          a3, s7, 1089f
                  andi         ra, s4, -1358
                  auipc        s7, 972594
                  slt          a6, t6, t5
1086:             xori         s2, s8, 711
                  lui          ra, 440394
                  andi         t0, a0, -1324
1089:             bltu         s9, s8, 1105f
                  and          t4, ra, tp
                  sltu         t6, a4, zero
                  andi         a1, s7, 170
                  auipc        s3, 732056
1094:             lui          t3, 256199
                  xor          a1, t3, zero
                  slti         a4, t4, -979
                  and          t6, a2, s5
                  and          t0, a7, tp
                  sub          s9, t2, t5
                  xori         ra, gp, 1974
                  bge          a1, s2, 1117f
                  bltu         t1, s8, 1114f
                  bltu         s2, a5, 1111f
                  slt          a7, t0, s1
1105:             bgeu         t6, s0, 1109f
                  addi         gp, s9, -1056
                  sub          a2, a2, s2
                  sub          t5, t1, a1
1109:             sll          a0, t0, a6
                  blt          t3, t5, 1113f
1111:             bltu         a7, t6, 1121f
                  auipc        s10, 820011
1113:             blt          zero, s4, 1114f
1114:             sltu         s1, a3, t1
                  ori          a5, s8, 87
                  auipc        a4, 811589
1117:             slti         a0, a7, -8
                  and          s10, a5, t6
                  slt          s7, s4, ra
                  sltu         s1, s0, gp
1121:             sltu         gp, t2, s2
                  blt          t4, a1, 1138f
                  auipc        t3, 643887
                  bgeu         t4, s10, 1129f
                  sltiu        s3, a6, -1201
                  slli         a5, a7, 29
                  bne          zero, s5, 1146f
                  sltiu        s3, s7, 1572
1129:             or           s7, a3, s5
                  blt          s11, a7, 1136f
                  ori          gp, t4, -766
                  auipc        t2, 732112
                  blt          tp, t3, 1138f
                  slti         a0, gp, 1429
                  addi         t2, a7, -1945
1136:             sltiu        gp, s6, -136
                  slli         zero, a7, 16
1138:             lui          a3, 606391
                  slt          a1, t5, s1
                  srl          s11, s1, sp
                  ori          t5, s7, -1194
                  srl          s3, a7, zero
                  slti         s3, a6, 35
                  slt          zero, a0, s0
                  bne          s7, t1, 1153f
1146:             nop
                  nop
                  slli         s3, ra, 0
                  slti         s7, s1, 1700
                  srai         s1, a5, 7
                  srai         s2, s10, 13
                  slli         a3, sp, 28
1153:             or           s8, zero, t1
                  srl          t0, t0, t5
                  and          s1, s4, s4
                  nop
                  xor          gp, t3, t0
                  bge          a0, tp, 1173f
                  lui          a1, 555686
                  xori         s6, s10, -494
                  xor          a7, a4, a5
                  sll          a2, s5, s2
                  slt          s11, s10, s6
                  sltu         a5, s1, t0
                  and          s3, a0, zero
                  addi         a0, t3, -1219
                  sltu         a0, t0, s11
                  ori          s1, a6, -461
                  slli         s3, a6, 0
                  auipc        s10, 247220
                  slli         s10, a4, 30
                  slt          a1, zero, s2
1173:             sltiu        ra, t6, 23
                  addi         s3, s11, 718
                  bgeu         s9, s10, 1188f
                  sll          sp, s0, a7
                  srl          t3, s3, ra
                  beq          t0, s9, 1185f
                  bgeu         a5, s4, 1198f
                  sll          t5, ra, a7
                  nop
                  slt          t5, s7, t5
                  sub          s6, t6, a1
                  addi         t4, t6, -473
1185:             srai         a4, tp, 2
                  bne          s11, s3, 1192f
                  sub          t0, a4, s5
1188:             slt          s1, s10, s9
                  bgeu         t5, s3, 1191f
                  and          s3, s1, zero
1191:             sll          s2, a5, a2
1192:             sra          s9, a5, sp
                  srli         zero, s0, 16
                  sltu         s9, s11, s2
                  xori         s1, a5, -824
                  sltiu        s1, t3, 516
                  addi         a7, s8, 195
1198:             ori          t2, s5, -1196
                  sltiu        s10, s11, -177
                  addi         t4, gp, -500
                  bge          a1, a0, 1217f
                  auipc        t2, 393731
                  sra          a5, s2, s10
                  add          s11, zero, t6
                  slt          t3, s6, ra
                  addi         gp, a1, -1545
                  ori          sp, tp, -439
                  sub          tp, s9, a1
                  add          a3, s10, a7
                  slt          a1, a7, s1
                  srai         ra, gp, 15
                  srl          gp, t2, a6
                  lui          zero, 254144
                  or           tp, a6, t4
                  bne          s7, s1, 1230f
                  bge          t4, t5, 1220f
1217:             slti         s1, s5, 1850
                  addi         s10, a2, -1824
                  lui          a0, 233814
1220:             srai         a6, t4, 25
                  addi         a3, t2, 1466
                  nop
                  lui          a2, 735298
                  and          sp, s8, a7
                  srl          a2, a5, s5
                  srai         a3, t0, 26
                  add          s6, s4, t6
                  slti         s3, s0, -1048
                  sltiu        s9, a5, -334
1230:             add          s8, gp, a7
                  sltu         gp, a5, s6
                  slti         s2, tp, 993
                  slli         a3, a4, 0
                  ori          s5, s11, -1191
                  bge          a7, sp, 1245f
                  lui          s6, 902641
                  srli         sp, s4, 7
                  xor          zero, s9, s3
                  addi         s5, a7, 193
                  lui          s11, 599103
                  sltu         gp, t2, s8
                  xor          a3, gp, gp
                  sltiu        a2, t6, 486
                  sltiu        gp, s8, -205
1245:             or           t5, s10, t4
                  bltu         tp, a1, 1262f
                  srl          s11, t5, s9
                  ori          t3, a1, 1810
                  add          s2, s4, s1
                  beq          s5, a3, 1266f
                  srl          a0, s3, s5
                  beq          s8, s9, 1257f
                  beq          t1, t1, 1255f
                  srai         zero, s11, 31
1255:             srai         a3, t3, 22
                  addi         ra, s11, -1932
1257:             lui          a7, 705393
                  slli         s1, tp, 15
                  slli         a6, s4, 27
                  srai         s3, gp, 10
                  xori         t2, ra, -1813
1262:             andi         t4, a6, -1360
                  srli         a4, s2, 20
                  lui          a4, 236347
                  sra          s10, s9, t0
1266:             xori         tp, s8, 1510
                  andi         s3, t5, -1706
                  xori         s6, a1, -99
                  srli         sp, t5, 2
                  slt          a2, gp, a1
                  andi         t0, a3, -1709
                  and          s3, t3, s9
                  srai         zero, a2, 27
                  add          s8, a2, t2
                  srai         a1, a1, 26
                  sra          s5, t5, s4
                  add          s11, s8, t3
                  andi         a4, a6, -47
sub_4_j7:         jal          ra, sub_5 #jump sub_4 -> sub_5
                  bltu         t0, s8, 1291f
                  and          s8, s0, s1
                  auipc        s11, 878255
                  bltu         a0, a6, 1293f
                  ori          t2, s0, 97
                  slt          s7, s9, tp
                  sra          s2, t0, a7
                  srai         zero, a5, 24
                  bne          s9, tp, 1283f
1283:             srl          s5, s0, sp
                  srl          s2, a6, a7
                  srl          t0, a4, a3
                  nop
                  add          s5, a1, a6
                  beq          a5, t2, 1290f
                  sltiu        a7, sp, 811
1290:             sub          s7, a5, t5
1291:             lui          s6, 200485
                  blt          s11, t0, 1295f
1293:             lui          ra, 553982
                  beq          t0, s11, 1306f
1295:             andi         t3, s8, -1572
                  sub          t2, a7, s6
                  slli         t4, s9, 22
                  sra          a7, t3, t6
                  and          a7, t4, tp
                  bgeu         s6, a7, 1313f
                  auipc        s1, 126921
                  bne          s2, a4, 1322f
                  andi         s5, t5, -993
                  lui          t2, 123813
                  xor          t5, s3, tp
1306:             lui          a7, 527428
                  blt          tp, a2, 1313f
                  beq          a4, a3, 1322f
                  xor          a7, a6, ra
                  slti         s9, s1, -128
                  addi         sp, t2, 704
                  blt          s10, a5, 1325f
1313:             slt          gp, t1, tp
                  slti         s6, s9, 1265
                  slt          t0, tp, gp
                  andi         s9, sp, -1707
                  andi         t3, s0, -582
                  lui          a6, 362059
                  ori          t4, t1, -917
                  andi         s2, a2, -1697
                  sltiu        zero, a5, 1485
1322:             sltiu        gp, t1, -6
                  andi         ra, a4, 1045
                  beq          a6, a3, 1329f
1325:             and          t6, a6, t5
                  srli         s3, t1, 21
                  nop
                  or           gp, s11, s9
1329:             beq          a6, gp, 1337f
                  slti         s3, s11, -957
                  andi         t0, s3, -1984
                  bltu         s8, s9, 1336f
                  lui          sp, 206860
                  sll          a3, zero, t5
                  blt          zero, t0, 1337f
1336:             slt          a3, t1, s9
1337:             auipc        zero, 555176
                  srl          t6, a3, a2
                  srli         a5, s0, 21
                  sll          s6, s0, a2
                  lw           ra, 4(s4)
                  srai         sp, a3, 14
                  addi         s4, s4, 32
                  sltu         s8, s1, gp
                  slti         t4, s3, 1866
                  srl          t4, s1, s7
1801:             addi x13, x1, 1
1801:             jalr x13, x13, 0
sub_7:            ori          tp, ra, -886
                  addi         s6, s6, 1557
                  add          t4, s7, a7
                  or           s3, t1, s5
                  addi         s4, s4, -64
                  sw           ra, 4(s4)
                  or           a3, t6, t6
                  and          s10, s4, t3
                  la           s6, region_0+1296 #start riscv_load_store_rand_instr_stream_0
                  xori         a5, zero, -1884
                  and          zero, s4, sp
                  lbu          s2, -43(s6)
                  sb           ra, -194(s6)
                  lb           s1, 46(s6)
                  lbu          s10, -147(s6)
                  sltu         t3, a2, t5
                  or           a5, a5, gp
                  xori         a6, s5, -1399
                  ori          ra, gp, 389
                  lb           a4, 13(s6)
                  sll          t2, t4, s10
                  lbu          s1, 153(s6)
                  lb           s10, 251(s6)
                  lhu          t4, -122(s6)
                  lbu          a6, -22(s6)
                  xor          s10, s10, t2
                  sb           gp, 160(s6)
                  nop
                  lbu          t2, -183(s6)
                  add          a4, a0, a7
                  lb           s7, -116(s6)
                  or           s11, t6, a3
                  add          t5, a0, t1
                  lbu          ra, 175(s6)
                  sb           s9, 107(s6)
                  slti         s11, gp, -1291
                  ori          gp, s10, 284
                  sra          t2, t4, s8
                  lbu          s1, 65(s6)
                  sb           tp, 213(s6)
                  sb           tp, 123(s6)
                  lbu          s1, -139(s6)
                  lbu          t6, 201(s6)
                  slt          zero, s10, s8
                  ori          a6, a0, 1818
                  lb           t5, -231(s6)
                  sb           t5, -22(s6)
                  lbu          s3, 21(s6)
                  srli         a2, a1, 29
                  lbu          a1, -247(s6)
                  lb           a0, 35(s6)
                  addi         a5, t6, 848
                  lui          s2, 239358
                  lb           sp, -185(s6) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_0+1795 #start riscv_load_store_rand_instr_stream_1
                  slti         a3, s8, 1605
                  sb           ra, -2(sp)
                  sb           t4, -7(sp)
                  sb           t6, 16(sp)
                  lbu          s8, 2(sp)
                  and          s6, a2, t5
                  lb           s8, 4(sp)
                  sb           s6, 13(sp)
                  sb           t5, -10(sp)
                  slti         s11, a7, 508
                  sub          s2, s3, s9
                  sb           a0, -1(sp)
                  lb           gp, 1(sp)
                  srli         tp, s3, 22
                  auipc        s10, 815955
                  lbu          a3, 13(sp)
                  lbu          s7, 0(sp)
                  lb           t2, 2(sp)
                  lb           a4, -16(sp)
                  sb           ra, -15(sp)
                  lhu          t0, -15(sp)
                  slli         a4, t6, 24
                  slt          gp, s5, s2
                  sb           s6, -5(sp)
                  slti         t2, a3, -1526
                  sb           a4, 16(sp)
                  sll          a4, t1, s0
                  srai         s10, t3, 6
                  sltu         a3, s9, a2
                  slt          s10, a5, s8
                  lh           s8, -5(sp) #end riscv_load_store_rand_instr_stream_1
                  lui          s7, 372694
                  slti         s11, t4, -904
                  srl          a7, t3, a3
                  slli         gp, a5, 3
                  xor          t3, t6, sp
                  bltu         s8, a4, 20f
                  beq          s10, t3, 9f
                  andi         t0, t1, 1814
                  bgeu         s3, ra, 16f
9:                blt          t4, s0, 21f
                  srai         t0, a1, 3
                  xor          a5, s3, gp
                  xori         a2, ra, 573
                  bgeu         t1, a1, 25f
                  bge          a4, s7, 25f
                  lui          s9, 166233
16:               lui          t6, 954423
                  ori          s1, gp, 1496
                  bge          t2, s9, 25f
                  sra          a1, a4, s8
20:               sub          a1, s11, t0
21:               xori         t3, a0, 1877
                  bne          t3, gp, 26f
                  addi         s9, t1, -1346
                  slti         ra, t3, -783
25:               srli         t0, s4, 5
26:               bge          s1, t5, 46f
                  beq          t6, s5, 43f
                  or           t6, s5, s1
                  addi         sp, ra, 833
                  srai         a4, s3, 1
                  bge          s8, t6, 46f
                  sltu         t3, s6, gp
                  slti         a1, s2, 511
                  sltiu        s11, s1, 1951
                  sltiu        s3, s9, 919
                  sra          a4, a0, t0
                  srli         t3, t6, 18
                  or           s11, t6, t3
                  sra          s9, s9, s5
                  auipc        tp, 840091
                  xori         s7, t5, 1063
                  bgeu         a0, gp, 61f
43:               bltu         ra, a5, 48f
                  slli         a7, t2, 23
                  slt          s8, a4, t4
46:               slti         s2, t6, 1297
                  srl          s1, s0, a5
48:               bne          tp, a3, 55f
                  bge          sp, sp, 52f
                  lui          s8, 838481
                  add          t4, t6, a1
52:               srai         zero, ra, 12
                  srl          t3, sp, a4
                  bgeu         s8, s11, 60f
55:               bltu         a1, a6, 72f
                  xori         tp, a0, -1878
                  or           a4, t4, t0
                  andi         tp, gp, -1356
                  bne          a1, a6, 63f
60:               sub          a3, s1, s8
61:               addi         s3, s6, -649
                  slt          a7, a2, s10
63:               slt          a0, a2, t1
                  nop
                  ori          s11, s0, 1174
                  bne          tp, a3, 69f
                  auipc        s1, 854897
                  sub          t5, s2, a6
69:               srl          a4, s3, s4
                  srai         t0, zero, 22
                  bltu         t6, s8, 75f
72:               sltiu        a1, a7, -1428
                  sub          a7, gp, a2
                  andi         s10, sp, 1501
75:               bltu         tp, a4, 90f
                  sltiu        ra, a7, 1501
                  blt          s9, t4, 97f
                  ori          t5, s5, 135
                  bge          s7, s10, 86f
                  add          a4, gp, sp
                  bne          s1, s3, 92f
                  auipc        s9, 80028
                  beq          t3, t0, 85f
                  bne          t1, a7, 89f
85:               sll          s7, s11, s3
86:               and          s10, t3, sp
                  bge          a7, t0, 103f
                  lui          a1, 548103
89:               and          s9, ra, s0
90:               or           s9, a6, a5
                  srl          tp, sp, a3
92:               xori         tp, s3, -1262
                  slt          zero, ra, s1
                  bne          s4, s11, 102f
                  andi         s1, s0, 511
                  slt          s1, tp, s10
97:               blt          t3, s11, 116f
                  slti         s8, gp, -682
                  andi         s11, s7, 385
                  lui          s8, 119626
                  bge          t1, t1, 109f
102:              andi         a4, s4, -789
103:              bne          s1, s5, 110f
                  bltu         ra, t2, 108f
                  blt          s4, s3, 108f
                  sra          s11, s5, t6
                  slt          zero, a4, a5
108:              and          s11, a7, a3
109:              xor          gp, s3, t2
110:              bne          t5, a4, 127f
                  bltu         a7, s11, 113f
                  slli         t5, a0, 9
113:              slli         t4, t4, 11
                  bltu         a5, a1, 129f
                  ori          a2, a2, 498
116:              sll          gp, s0, s8
                  slt          s3, a1, t6
                  lui          s2, 705921
                  sll          a3, s2, s9
                  la           sp, sub_8
                  addi         sp, sp, 7
                  xor          zero, a6, tp
                  sra          a6, s10, zero
                  sra          t3, s10, s6
                  addi         s8, ra, -1810
sub_7_j11:        jalr         ra, sp, -6 #jump sub_7 -> sub_8
                  srli         s3, ra, 26
                  or           s3, s10, a7
                  bgeu         s7, t2, 128f
                  beq          s4, s6, 125f
                  blt          s11, a7, 125f
                  slt          a1, a6, sp
                  bne          s7, a5, 127f
125:              sra          s8, a7, gp
                  sll          tp, s3, a5
127:              blt          s2, s10, 131f
128:              addi         s5, a2, 1271
129:              sub          t6, a7, zero
                  sub          s7, s7, a1
131:              xor          s5, s4, t5
                  bgeu         zero, a7, 140f
                  sll          tp, s3, t4
                  bgeu         s2, t0, 153f
                  auipc        s8, 432375
                  andi         a0, t0, -21
                  sra          s3, gp, t1
                  addi         a0, t3, -192
                  nop
140:              blt          s7, t1, 145f
                  srl          t0, s8, a1
                  beq          t0, a5, 154f
                  blt          sp, t4, 148f
                  sltu         a0, t4, t1
145:              sltu         s9, s5, t3
                  sra          s5, a2, s7
                  bltu         ra, t1, 162f
148:              nop
                  auipc        s2, 716081
                  bltu         t5, a5, 156f
                  beq          a5, s11, 171f
                  addi         s9, a1, 752
153:              or           sp, s3, t5
154:              blt          s5, a0, 165f
                  xor          zero, s11, t0
156:              bgeu         t0, a4, 172f
                  lui          t2, 760753
                  beq          a6, s9, 165f
                  srai         s7, a5, 9
                  andi         t6, zero, -1554
                  bgeu         s2, zero, 168f
162:              xori         s8, a5, 1719
                  bltu         a7, s0, 182f
                  xor          zero, s8, ra
165:              bgeu         t6, s9, 181f
                  xor          a5, s0, a1
                  srai         a4, t5, 14
168:              slt          t4, s6, a2
                  sub          sp, s5, s8
                  sltu         s6, a4, s4
171:              srl          s6, ra, s7
172:              sll          s9, s10, sp
                  and          s8, s4, s9
                  slt          t2, a3, a5
                  bge          s5, t0, 195f
                  or           s3, a2, zero
                  xor          a1, a2, s11
                  blt          s4, s5, 186f
                  srai         t0, s2, 4
                  bne          a5, a2, 192f
181:              add          t2, zero, s0
182:              blt          t5, t5, 197f
                  blt          gp, t6, 194f
                  bge          t1, sp, 204f
                  nop
186:              sltiu        s3, t2, 1938
                  andi         s5, s0, -1919
                  auipc        t3, 75835
                  ori          ra, s1, 1237
                  ori          sp, s9, -1467
                  slt          t5, zero, s4
192:              add          ra, a6, s4
                  bgeu         zero, a0, 209f
194:              slli         s9, ra, 19
195:              bne          zero, t4, 202f
                  sltiu        ra, a0, 1023
197:              nop
                  lui          sp, 648873
                  ori          gp, tp, 2030
                  bge          t2, a0, 202f
                  or           t2, a4, a6
202:              auipc        t6, 75395
                  andi         t2, s2, -611
204:              bne          t0, s11, 207f
                  nop
                  srl          s8, a6, s8
207:              sub          t3, gp, s7
                  sub          a5, zero, a2
209:              slli         t5, s7, 1
                  lui          s8, 926656
                  bge          s7, t1, 223f
                  slt          s2, s0, sp
                  bltu         a7, a5, 220f
                  xori         s7, t0, -782
                  addi         a0, a1, -367
                  auipc        ra, 835092
                  sra          a2, s3, s0
                  xori         ra, t6, 476
                  bne          gp, s7, 234f
220:              slt          t4, t3, t0
                  bgeu         s2, tp, 225f
                  nop
223:              and          t0, t0, s9
                  bge          ra, s0, 241f
225:              sub          a1, s10, t6
                  ori          gp, s3, 797
                  sra          zero, s11, t5
                  xori         ra, a2, 1642
                  and          t5, t1, a2
                  ori          s5, t5, 1063
                  or           sp, a7, a3
                  lui          a7, 898539
                  addi         t0, s7, -1629
234:              sra          s8, a4, a0
                  or           t4, tp, a1
                  ori          a0, s5, 1408
                  slti         ra, t3, 1503
                  xor          s10, s11, s9
                  nop
                  srli         a7, t2, 15
241:              slti         a6, gp, -1199
                  xori         t0, a7, -663
                  beq          s11, s3, 263f
                  sub          a2, t4, s1
                  andi         s5, a2, 1241
                  slt          tp, s3, a1
                  slt          s7, sp, t6
                  xori         s7, t0, -2030
                  bge          t6, s5, 257f
                  srl          s3, s1, s1
                  bltu         sp, ra, 254f
                  sltu         a0, a2, s5
                  addi         a5, a6, 1931
254:              srai         ra, gp, 21
                  xori         tp, s7, -621
                  blt          s11, t6, 263f
257:              srai         a2, a3, 17
                  xori         tp, s5, 414
                  slti         a5, s7, -72
                  slt          a1, a5, t0
                  bltu         sp, s9, 280f
                  slt          t3, t2, tp
263:              srl          a2, s11, s4
                  blt          a2, s6, 283f
                  lui          s8, 810085
                  add          s7, ra, a7
                  beq          a4, s2, 273f
                  xor          t3, a6, s1
                  bltu         a5, t1, 273f
                  srli         s5, a0, 24
                  xori         a7, a6, 1059
                  srai         a2, s10, 20
273:              sub          a6, a4, t1
                  add          a2, a3, a0
                  sub          t0, t2, s7
                  slti         a4, t6, -92
                  nop
                  sltiu        s8, s8, 604
                  sltu         a1, s9, s0
280:              or           a1, s4, s10
                  auipc        s11, 710804
                  auipc        a6, 186969
283:              slt          s2, a4, a6
                  sltiu        s7, t1, 1011
                  slti         s11, a1, -473
                  xori         s5, s7, 267
                  bne          t2, gp, 302f
                  andi         sp, s9, -1990
                  slt          s11, s11, s10
                  bgeu         s3, a3, 295f
                  add          s10, t1, a6
                  srai         t2, t6, 29
                  nop
                  sltu         a2, s3, zero
295:              ori          s1, sp, -1766
                  srl          s9, s1, s4
                  lui          t5, 129438
                  or           t5, gp, a5
                  bgeu         t3, a0, 307f
                  nop
                  bgeu         t6, t5, 317f
302:              blt          a5, s0, 314f
                  bgeu         tp, s5, 314f
                  bge          t2, s4, 308f
                  and          s5, a4, t4
                  and          gp, s10, t5
307:              or           s5, t1, t1
308:              bltu         a1, s5, 313f
                  slli         sp, s3, 23
                  andi         s9, t0, 660
                  sra          ra, ra, t3
                  slli         t6, zero, 22
313:              addi         zero, ra, 1307
314:              slli         tp, t2, 0
                  srl          s8, ra, t6
                  sra          ra, a3, s0
317:              sra          tp, sp, a5
                  bgeu         a0, a0, 329f
                  add          s8, sp, gp
                  andi         t3, a2, -997
                  slti         s5, s3, -1556
                  nop
                  slt          s11, a4, s6
                  ori          s11, ra, -1009
                  addi         s2, a2, -1624
                  blt          a6, s6, 329f
                  bne          s7, ra, 342f
                  blt          t2, gp, 336f
329:              bne          s8, a6, 345f
                  and          a3, t0, t3
                  srai         s5, t1, 5
                  bgeu         s6, s0, 347f
                  slli         t6, s5, 21
                  auipc        a5, 722468
                  lui          ra, 129709
336:              andi         s3, s2, -376
                  beq          t2, t1, 342f
                  bge          a3, a5, 349f
                  auipc        s9, 708146
                  srai         s7, a1, 11
                  blt          s10, a4, 348f
342:              auipc        t4, 983724
                  sra          s11, s6, s6
                  slt          t0, t2, ra
345:              sltiu        s9, t2, -375
                  beq          s10, s6, 353f
347:              slt          a3, s2, a1
348:              auipc        s3, 391237
349:              lui          t2, 127775
                  nop
                  bltu         a6, a1, 353f
                  srai         t2, zero, 28
353:              xori         a2, s1, 1778
                  sra          a1, t3, s9
                  lw           ra, 4(s4)
                  srai         t2, gp, 8
                  addi         s4, s4, 64
                  slt          a7, s6, zero
                  slt          t4, a4, s2
                  ori          a6, t6, -995
                  sra          t0, s7, a5
457:              addi x17, x1, 1
457:              jalr x17, x17, 0
sub_5:            srai         a1, t2, 31
                  addi         s4, s4, -64
                  auipc        tp, 641858
                  sw           ra, 4(s4)
                  sll          a6, a0, a1
                  sra          s11, t5, s9
                  sll          s1, sp, sp
                  lui          a4, 637448
                  slti         t3, s7, -1483
                  and          t2, a5, s0
                  andi         s2, t5, -331
                  sll          t3, s7, a1
                  bgeu         a3, s3, sub_5_j8 #branch to jump instr
                  sll          s3, t3, gp
                  nop
                  and          ra, s6, a0
                  slti         ra, a1, -1680
                  sltiu        tp, s9, 1751
sub_5_j8:         jal          ra, sub_7 #jump sub_5 -> sub_7
                  add          t4, t4, s0
                  bge          a5, s6, sub_5_j9 #branch to jump instr
                  and          s7, s6, s4
                  addi         ra, s4, -910
                  or           s10, s4, s8
                  xor          tp, t4, a3
                  addi         sp, t3, 127
                  xor          tp, s10, a1
                  slli         ra, a7, 5
                  sll          a4, a6, t4
                  sra          t5, s10, t2
sub_5_j9:         jal          ra, sub_7 #jump sub_5 -> sub_7
                  srli         s2, s8, 11
                  sra          s2, s11, s6
                  srai         a4, a3, 27
                  andi         s10, s7, 240
                  andi         a6, s0, 1607
                  add          s3, s9, t4
                  add          a1, s3, s7
                  and          a2, s5, s3
sub_5_j10:        jal          ra, sub_6 #jump sub_5 -> sub_6
                  la           a3, region_0+496 #start riscv_load_store_rand_instr_stream_0
                  lhu          s7, 720(a3)
                  slti         t4, t1, 65
                  auipc        s6, 1022793
                  srl          t0, a6, s3
                  sb           t3, -155(a3)
                  sb           s5, 904(a3)
                  sltiu        s5, a4, 923
                  sltiu        t4, sp, -414
                  sb           t4, 1341(a3)
                  slt          s5, zero, s10
                  srl          zero, s10, t6
                  xori         zero, s9, -796
                  lb           a2, -387(a3)
                  lw           a1, 228(a3)
                  auipc        s5, 450135
                  slti         a4, s5, -1362
                  slli         s8, s3, 27
                  lb           t2, 809(a3)
                  sb           s7, -466(a3)
                  slti         zero, t1, -418
                  slt          gp, t0, a3
                  andi         a6, s2, 1028
                  lbu          s10, -239(a3)
                  slli         s6, s7, 15
                  xori         a5, gp, 1523
                  srl          a4, t4, ra
                  lh           t6, 1370(a3)
                  sltu         s9, t1, a1
                  lb           t0, 401(a3)
                  sh           s0, 670(a3)
                  srl          a2, t3, a3
                  srai         a4, t3, 5
                  lhu          s10, 1414(a3)
                  lbu          t4, 133(a3)
                  xori         a1, a4, -549
                  lh           t5, -458(a3)
                  srl          zero, t6, sp
                  lb           a0, 755(a3)
                  slli         s9, zero, 17
                  lbu          s8, 70(a3) #end riscv_load_store_rand_instr_stream_0
                  beq          s2, s7, 20f
                  andi         a4, sp, -568
                  xori         s6, s3, -1287
                  xor          t5, s3, a2
                  or           s7, a6, a5
                  slt          a5, s2, s11
                  srli         s6, zero, 18
                  lui          a4, 626100
                  xori         s2, t3, -917
                  blt          t1, t4, 13f
                  and          tp, t2, gp
                  sltu         s5, t0, t2
                  sltiu        t5, t6, 1242
13:               srli         zero, a4, 31
                  ori          ra, sp, 652
                  slti         t5, s0, -240
                  ori          s1, s2, 179
                  slti         a7, a2, 1534
                  slti         t4, tp, 84
                  sra          s10, a5, s3
20:               sll          s7, s5, s3
                  add          t5, s1, a2
                  or           ra, s1, gp
                  xori         t2, t6, 371
                  or           s1, s5, s4
                  slt          s1, a1, tp
                  or           a3, a4, tp
                  addi         ra, s1, 267
                  and          s1, a3, t3
                  sra          s10, a6, a3
                  beq          t4, a7, 50f
                  ori          s2, s0, 876
                  beq          s10, zero, 42f
                  bne          s7, t0, 44f
                  xor          tp, s3, a2
                  nop
                  addi         a0, s8, -266
                  auipc        a0, 167679
                  slli         s8, s7, 0
                  sltiu        s10, zero, 267
                  srli         gp, a1, 6
                  slt          zero, a0, s10
42:               bge          a5, s7, 55f
                  xor          t4, zero, s10
44:               xor          s11, s8, ra
                  or           a2, s1, a7
                  beq          s6, s4, 55f
                  lui          a7, 931058
                  sra          a3, a1, s1
                  addi         a3, a0, 1633
50:               xori         t3, t3, 455
                  lui          s2, 584959
                  add          a1, s2, t3
                  sll          zero, t2, a5
                  bgeu         s9, a7, 57f
55:               lui          a4, 100410
                  sltu         a1, a5, t5
57:               srl          s9, a0, s2
                  srl          s9, s8, t3
                  srli         tp, a4, 25
                  sra          s7, s4, tp
                  sll          sp, a4, a6
                  slti         t5, t1, -1948
                  xori         zero, a6, 1296
                  ori          s11, zero, 609
                  srli         t6, s1, 28
                  add          a5, a1, t4
                  lui          a6, 542601
                  andi         s3, ra, 570
                  bne          t0, zero, 84f
                  ori          t0, a3, -1426
                  srai         s11, s2, 27
                  add          gp, s8, a3
                  srl          ra, tp, t1
                  sra          s10, t6, sp
                  bne          gp, t4, 82f
                  sltiu        sp, a1, 1831
                  sltiu        a3, zero, 232
                  ori          zero, s6, 1446
                  andi         t5, a0, 686
                  slt          a6, s10, tp
                  sll          zero, s11, s4
82:               sub          a4, t6, sp
                  bltu         s9, tp, 88f
84:               beq          a3, s2, 93f
                  xor          a5, sp, a6
                  bltu         a7, s6, 104f
                  lui          tp, 554081
88:               blt          a5, t1, 106f
                  slti         a0, a6, -469
                  srl          s11, gp, ra
                  bgeu         sp, t4, 102f
                  slli         gp, s5, 19
93:               bltu         t4, sp, 107f
                  slt          s11, s2, a1
                  slt          gp, a6, t2
                  bge          t6, t2, 99f
                  bne          tp, t2, 104f
                  sltiu        s5, s5, -145
99:               sltiu        t2, s10, -1478
                  bgeu         gp, sp, 107f
                  or           s7, s11, a5
102:              beq          s4, a4, 117f
                  srl          a7, a4, t3
104:              slti         t0, a2, -2
                  srl          t0, t5, s10
106:              slti         t0, a4, 1678
107:              sll          s5, s1, a4
                  sra          a5, s1, s9
                  sltiu        a4, a4, -599
                  lui          tp, 321623
                  sub          s9, t1, sp
                  auipc        sp, 42038
                  sra          t6, s3, a2
                  sll          gp, s4, t0
                  xori         t5, a1, 437
                  beq          t6, s4, 119f
117:              ori          t4, t3, 1645
                  sub          t0, a2, a6
119:              srai         s9, s3, 15
                  srli         s6, tp, 29
                  nop
                  xori         t3, sp, 969
                  add          tp, s2, zero
                  add          s6, a6, a4
                  auipc        a0, 307991
                  nop
                  auipc        a1, 469178
                  and          a1, t2, a1
                  sltu         s7, t1, s7
                  sltiu        s10, t4, 2022
                  add          s5, a5, a3
                  addi         t4, t2, -69
                  sra          s11, s2, sp
                  bne          s3, a5, 138f
                  sltiu        a1, s3, 2044
                  beq          s7, s8, 143f
                  auipc        s8, 548382
138:              addi         a4, sp, 1381
                  addi         sp, gp, -328
                  auipc        a6, 492006
                  lui          a5, 837944
                  xori         t2, a1, 795
143:              sll          s11, s11, s6
                  andi         tp, s11, 875
                  bge          t4, s6, 155f
                  bne          t4, t0, 164f
                  blt          s1, gp, 159f
                  slli         t3, tp, 21
                  xori         t3, s11, -1269
                  andi         t0, s4, 1129
                  auipc        s10, 147002
                  xori         t2, a0, 819
                  blt          sp, a0, 164f
                  lui          s11, 261731
155:              ori          s9, t0, -649
                  beq          t1, tp, 164f
                  lui          t5, 96218
                  blt          a2, a6, 164f
159:              andi         zero, a1, 1413
                  ori          s8, s9, 984
                  lui          s10, 879420
                  bge          t0, zero, 163f
163:              slli         s2, s9, 15
164:              srli         a2, a1, 19
                  lw           ra, 4(s4)
                  slli         a6, s5, 29
                  sll          sp, zero, s9
                  srai         a1, s6, 3
                  srl          s8, s11, t5
                  sra          zero, zero, s3
                  sltu         t4, s0, s0
                  addi         s4, s4, 64
                  slti         t3, sp, 421
                  slt          a6, s2, ra
                  srl          sp, tp, gp
                  nop
258:              addi x2, x1, 0
258:              jalr x2, x2, 0
sub_1:            add          t4, s9, s11
                  bne          s0, a0, sub_1_stack_p
                  slli         s7, a0, 7
sub_1_stack_p:    addi         s4, s4, -52
                  sub          zero, t1, s0
                  sw           ra, 4(s4)
                  or           a6, tp, s10
                  srli         a5, a2, 11
                  ori          ra, t4, 2039
                  bgeu         t4, t3, sub_1_j3 #branch to jump instr
                  srli         s2, s0, 25
                  slt          s6, a6, t0
                  slli         t5, a4, 26
                  srai         a5, s6, 16
                  addi         a3, a7, -87
sub_1_j3:         jal          ra, sub_3 #jump sub_1 -> sub_3
                  la           a1, region_0+1570 #start riscv_load_store_rand_instr_stream_2
                  slti         s7, a1, 53
                  srl          s1, s10, a6
                  sb           s7, 1(a1)
                  sltu         s8, s4, s11
                  sw           s0, 26(a1)
                  andi         a4, s8, 1986
                  lh           zero, -24(a1)
                  addi         s7, s2, -1277
                  lhu          s6, -48(a1)
                  xori         a4, s3, -1980
                  andi         s1, s8, 1353
                  slt          a0, ra, a4
                  sltiu        sp, a4, 420
                  lh           a4, -44(a1)
                  srli         s2, s4, 18
                  lw           s11, 30(a1)
                  addi         a3, a2, -1243
                  sltu         t3, tp, s9
                  auipc        gp, 816761
                  sh           a7, -48(a1)
                  sll          s1, a0, s5
                  sll          s10, s6, a1
                  lbu          a5, 31(a1)
                  lb           s1, 15(a1)
                  slt          s11, t0, a0
                  lb           sp, 39(a1)
                  sw           sp, -42(a1)
                  and          t3, a4, a0
                  lb           tp, -9(a1)
                  lb           s11, -15(a1)
                  slti         t4, s2, 392
                  lbu          gp, 43(a1)
                  lui          gp, 571396
                  andi         t5, s9, 518
                  slti         a6, sp, -1626
                  sh           a6, -44(a1)
                  sb           t0, -54(a1) #end riscv_load_store_rand_instr_stream_2
                  la           t3, region_0+1478 #start riscv_load_store_rand_instr_stream_0
                  addi         tp, s0, -638
                  andi         s10, zero, 372
                  sw           t6, 254(t3)
                  lb           a4, -235(t3)
                  nop
                  lbu          a5, 213(t3)
                  lb           a3, 25(t3)
                  or           a2, s2, t3
                  lw           gp, -162(t3)
                  and          t2, a3, s6
                  auipc        zero, 649723
                  sb           a0, 71(t3)
                  lw           t6, 98(t3)
                  lbu          s1, -125(t3)
                  lbu          s5, -238(t3)
                  sh           s3, -164(t3)
                  sb           a6, -170(t3)
                  srl          s6, s9, a1
                  lhu          s3, 190(t3)
                  sll          t0, t4, a4
                  srai         gp, t3, 19
                  or           s10, t6, gp
                  sltu         s7, s2, t5
                  xor          s6, s8, s9
                  sh           ra, 200(t3)
                  or           a0, s9, a5
                  lbu          a1, -95(t3)
                  lw           a7, -138(t3)
                  lh           a6, 50(t3)
                  and          s11, s9, s8
                  sw           s5, 58(t3)
                  auipc        a1, 508222
                  xor          s3, a2, tp
                  sb           sp, 196(t3)
                  nop
                  srai         s5, t4, 19
                  lb           a5, -149(t3)
                  sltu         s7, t6, a0
                  sb           a4, 243(t3)
                  sra          gp, s8, t5
                  sra          t4, t3, t4
                  addi         t0, s3, 1181
                  sb           t6, -26(t3)
                  lb           a7, -221(t3)
                  xor          s1, s0, sp
                  and          a3, tp, t2
                  lb           s10, -139(t3)
                  sb           a3, -149(t3) #end riscv_load_store_rand_instr_stream_0
                  slt          ra, s7, a4
                  sll          zero, sp, t4
                  ori          t4, t6, 1225
                  bne          s11, a2, 5f
                  add          a0, a1, ra
5:                slli         a2, t0, 26
                  addi         s2, t0, 2027
                  bne          s1, s11, 25f
                  ori          sp, a7, -335
                  auipc        a0, 346155
                  sra          t4, t1, sp
                  add          s5, s2, s2
                  ori          t3, sp, 1355
                  bge          t2, s4, 21f
                  sltiu        a0, a0, -1577
                  bltu         a0, a6, 30f
                  xori         t5, a1, -1369
                  srl          t4, t3, s7
                  xori         t4, s4, -587
                  slt          s2, gp, t6
                  beq          s8, zero, 23f
21:               xori         t0, t1, -949
                  andi         a6, s11, 1494
23:               sltiu        s8, s7, -1748
                  bne          a4, t0, 35f
25:               beq          t3, s5, 38f
                  sra          ra, a6, s0
                  nop
                  sub          s11, sp, a0
                  bne          s2, a0, 32f
30:               sltiu        s2, t5, 1026
                  or           zero, s11, s11
32:               addi         t5, s5, 1239
                  sll          a4, s5, a6
                  srai         a0, zero, 30
35:               slli         a0, a6, 14
                  sll          s8, tp, a0
                  sra          s11, s3, t0
38:               sll          a7, s3, t4
                  srai         t3, s5, 8
                  and          s11, t0, a7
                  srli         gp, s7, 8
                  andi         a5, a3, 354
                  or           ra, a2, s11
                  sltiu        a2, a1, -1099
                  sra          s1, tp, s2
                  sll          s1, t3, sp
                  slt          s2, t4, t2
                  beq          s0, zero, 60f
                  bge          t0, s3, 56f
                  srl          ra, t5, t3
                  bne          tp, t1, 69f
                  srli         t4, a3, 17
                  sltiu        a0, t2, 85
                  bltu         a0, t6, 56f
                  sltiu        a7, a7, -2007
56:               srai         s11, s2, 17
                  bgeu         s11, s4, 72f
                  nop
                  srli         s11, gp, 14
60:               add          s7, t2, s1
                  and          s8, tp, s9
                  slti         s8, t4, 747
                  slti         s5, s0, 1534
                  lui          s6, 137238
                  sub          a2, t5, a3
                  sltiu        s8, s1, -882
                  slli         a5, s8, 6
                  bltu         s0, t5, 78f
69:               bltu         a4, sp, 72f
                  sll          t0, s11, s9
                  add          zero, a3, a1
72:               srl          t0, zero, t1
                  xor          s5, t6, s4
                  srai         t5, s8, 11
                  bgeu         s6, a7, 93f
                  sltiu        s2, a7, 695
                  srl          s3, tp, s4
78:               blt          s9, t6, 88f
                  bgeu         t1, t3, 83f
                  sra          a2, a3, a7
                  slti         s10, s11, 1903
                  xor          s11, a5, s2
83:               bltu         sp, s9, 96f
                  sltiu        s9, s11, -2006
                  bne          s10, s1, 92f
                  sra          t3, tp, s6
                  bltu         s5, a6, 88f
88:               or           a5, zero, a6
                  sll          a0, t6, t0
                  sub          ra, t0, tp
                  bltu         t0, s3, 96f
92:               beq          tp, t5, 97f
93:               srli         s2, s9, 29
                  beq          tp, t0, 109f
                  srl          t6, zero, a2
96:               srai         t2, gp, 10
97:               beq          s0, t5, 112f
                  sra          a2, s4, t6
                  bgeu         a0, s0, 118f
                  xori         a7, t0, 183
                  bgeu         s9, s7, 111f
                  blt          ra, zero, 106f
                  nop
                  srli         a6, sp, 0
                  andi         sp, s2, -1126
106:              or           s5, a7, s8
                  auipc        a3, 866258
                  sltu         s10, s10, s3
109:              nop
                  srli         a0, s6, 11
111:              slli         t6, s5, 28
112:              sra          t5, a1, a5
                  sltu         a5, a6, sp
                  lui          t6, 676238
                  sra          gp, s2, a4
                  auipc        s11, 605446
                  sll          s7, t0, a1
118:              bge          t2, t4, 133f
                  xor          a2, s10, a7
                  bltu         s11, t2, 124f
                  sub          s11, s6, a1
                  sll          s9, t4, t5
                  bgeu         t4, t0, 142f
124:              nop
                  addi         t6, a4, 416
                  sltu         s1, s11, s5
                  xor          t3, a7, s2
                  bge          a6, s10, 146f
                  slli         a4, a4, 19
                  addi         s8, t2, 1839
                  and          a5, s3, s5
                  srli         s3, a2, 31
133:              slti         sp, zero, 468
                  xor          a7, s0, t1
                  srli         sp, s5, 10
                  sll          s7, a0, t5
                  add          a5, s10, s0
                  slli         s9, s5, 17
                  andi         s11, t3, 158
                  sltiu        zero, gp, -1399
                  srai         t6, s11, 13
142:              bgeu         s0, ra, 149f
                  srl          a0, a0, t5
                  add          s2, s0, gp
                  ori          s8, s6, -163
146:              sub          a5, zero, t4
                  sltu         s6, t0, a3
                  nop
149:              bne          s10, s2, 153f
                  addi         a7, a1, 1365
                  slli         a2, a4, 23
                  srai         t4, t6, 26
153:              add          t5, a2, t5
                  bge          t2, t2, 164f
                  sltiu        tp, t2, -1370
                  andi         s5, t0, 149
                  blt          s6, tp, 160f
                  beq          s10, a0, 159f
159:              srl          a5, s4, s9
160:              bne          a0, t4, 170f
                  blt          s7, zero, 169f
                  srai         a3, t0, 28
                  slli         gp, gp, 2
164:              beq          gp, t1, 182f
                  sll          t2, s5, s0
                  srl          sp, t3, s4
                  sra          a2, ra, s1
                  ori          s2, s8, 1271
169:              sltiu        t4, a4, 668
170:              sltu         s5, t2, gp
                  srl          t0, s6, s8
                  and          a5, tp, s3
                  bge          s9, t4, 176f
                  bltu         s8, zero, 186f
                  sltiu        zero, t0, -617
176:              srl          ra, a7, s0
                  sra          s3, sp, a4
                  srai         t2, a4, 30
                  srli         t3, s10, 19
                  xori         t2, s11, 1562
                  slt          s6, s9, t5
182:              srai         t4, s6, 23
                  add          s2, a3, a1
                  bne          s0, sp, 202f
                  auipc        s3, 605377
186:              andi         tp, gp, -974
                  blt          a7, a4, 191f
                  srai         s7, s6, 24
                  sltiu        s1, a5, 1571
                  bne          t6, s2, 195f
191:              xori         zero, ra, 1366
                  addi         t0, s5, -1896
                  blt          s1, a2, 208f
                  slli         a0, a5, 3
195:              xor          t5, s1, s3
                  nop
                  slt          a3, ra, s0
                  sll          gp, tp, t2
                  and          a6, a5, s9
                  sll          a5, tp, t5
                  bge          t2, t0, 203f
202:              srai         s7, s10, 8
203:              add          s7, s9, s6
                  sub          tp, t4, t2
                  xor          ra, s1, s9
                  nop
                  sll          t2, a4, s2
208:              srli         a0, s4, 13
                  sltu         s8, a0, t2
                  bgeu         t2, sp, 212f
                  xor          s10, s8, sp
212:              or           t5, s10, s0
                  blt          s2, s9, 217f
                  xor          t6, t4, s6
                  lui          s2, 808403
                  ori          a6, s8, 1630
217:              slti         s1, s7, -1496
                  andi         a0, s6, -1524
                  srli         sp, s10, 8
                  ori          tp, s7, -1168
                  xor          a4, s6, t2
                  auipc        s10, 3873
                  srai         s3, t6, 13
                  srl          s1, tp, a6
                  sra          s10, s11, gp
                  srl          s8, s1, t4
                  bne          s1, s3, 242f
                  nop
                  bltu         s10, a5, 244f
                  sub          a1, s11, a0
                  sll          ra, a6, s7
                  srai         s9, s7, 15
                  beq          sp, a1, 248f
                  slt          t2, s1, a5
                  sltu         a2, sp, a3
                  sltiu        t6, a1, 285
                  bne          a0, a6, 250f
                  and          s9, t5, s11
                  and          a0, zero, s10
                  auipc        a0, 382372
                  bne          t3, t6, 256f
242:              slt          s7, a6, a3
                  bge          s9, a2, 250f
244:              auipc        sp, 115076
                  bge          gp, a1, 248f
                  xor          s7, s9, a2
                  xor          t2, t1, s11
248:              ori          s7, a0, 925
                  andi         t4, t5, -1120
250:              srai         tp, a7, 29
                  or           s8, t6, t1
                  slti         zero, a2, -1988
                  xori         s3, a0, -569
                  sub          s5, sp, a1
                  slt          s1, a5, s4
256:              xori         t6, a5, -1340
                  beq          s9, a1, 262f
                  bge          s9, t2, 268f
                  nop
                  slt          a0, ra, t6
                  bltu         s7, ra, 272f
262:              xor          a5, t3, s4
                  sub          s11, s3, a7
                  andi         t3, sp, 27
                  beq          t0, zero, 278f
                  auipc        a4, 109386
                  bltu         s7, s5, 282f
268:              slli         gp, a7, 11
                  add          tp, tp, t5
                  sra          gp, s6, gp
                  bne          a5, a1, 281f
272:              beq          s3, zero, 276f
                  bltu         t1, a5, 291f
                  bge          s7, a0, 293f
                  or           a0, a5, s0
276:              addi         s11, a1, -319
                  srai         s5, t0, 22
278:              and          s11, t2, a2
                  slt          tp, sp, s6
                  bge          tp, t0, 282f
281:              slli         s6, s4, 10
282:              bne          a1, tp, 289f
                  xor          a7, s3, s6
                  blt          a4, t3, 288f
                  ori          a2, t0, -1425
                  lui          s2, 897147
                  ori          t2, a5, 1967
288:              xor          tp, t3, s10
289:              or           a1, a0, s9
                  bge          a4, t5, 305f
291:              andi         t5, ra, -1551
                  slt          ra, s10, s3
293:              add          t4, s9, s0
                  nop
                  nop
                  ori          t3, s11, 727
                  blt          zero, s9, 300f
                  add          s6, t4, sp
                  bgeu         s11, s10, 317f
300:              slt          ra, a4, s1
                  slli         s1, t3, 29
                  sra          a1, a7, tp
                  ori          a4, t5, 1065
                  auipc        t4, 776398
305:              srl          s9, tp, t3
                  bgeu         a0, t1, 317f
                  addi         t3, s2, 1912
                  sra          t5, a0, s8
                  bge          a4, t0, 324f
                  srli         zero, t6, 22
                  auipc        a6, 287915
                  and          sp, t2, t2
                  lui          s10, 253795
                  bge          tp, s10, 332f
                  srli         a4, s2, 12
                  slli         a7, s7, 8
317:              nop
                  sra          a5, s11, a5
                  srai         ra, s1, 27
                  sltiu        a2, s3, -1574
                  slli         a0, t3, 24
                  slt          s9, tp, a3
                  sll          a1, a7, zero
324:              srai         t6, t0, 7
                  slt          a1, s9, a2
                  srli         s6, a3, 3
                  xori         s7, sp, -196
                  beq          s4, t5, 329f
329:              bne          s10, a5, 344f
                  sll          ra, s9, a3
                  or           s10, t0, s3
332:              lui          s10, 198540
                  sra          zero, t0, gp
                  lui          t4, 209023
                  srl          s6, s11, s11
                  srai         zero, s4, 21
                  sltiu        sp, s10, -404
                  blt          s8, t1, 348f
                  slli         t2, a1, 26
                  beq          zero, s9, 348f
                  or           s10, tp, s8
                  xori         t2, sp, -1716
                  bge          s9, zero, 346f
344:              slti         a0, s0, 1406
                  slti         a3, a7, 17
346:              sltiu        a1, a0, -1821
                  sll          gp, tp, a2
348:              bltu         a7, s5, 350f
                  bltu         s5, s9, 352f
350:              sub          zero, a1, s3
                  bgeu         s6, a0, 355f
352:              bltu         tp, t6, 365f
                  addi         tp, ra, -1885
                  add          a7, s3, t1
355:              xori         s2, s9, -1933
                  sra          s7, a3, a4
                  srai         s8, a1, 8
                  addi         t5, t2, -57
                  slli         t4, a5, 8
                  bne          gp, zero, 365f
                  lui          a3, 10442
                  sra          sp, a5, t6
                  blt          a2, a5, 368f
                  bge          s7, s7, 376f
365:              ori          s6, t2, 944
                  bltu         s6, s4, 381f
                  add          t0, a1, s1
368:              xori         s5, t1, 1395
                  lui          a3, 328112
                  lui          s1, 826766
                  srai         ra, t5, 8
                  srli         t2, ra, 18
                  sub          s7, s2, a4
                  bgeu         t1, s3, 381f
                  add          gp, zero, a4
376:              bge          s1, s2, 386f
                  srl          s8, tp, zero
                  srl          s9, s6, gp
                  bge          s11, a5, 392f
                  addi         a3, a5, -559
381:              beq          a2, a5, 389f
                  auipc        t4, 845735
                  srl          t6, s4, ra
                  addi         a4, a0, -1111
                  add          s9, t6, a1
386:              slli         s3, t2, 27
                  nop
                  sll          s2, t5, t5
389:              slt          a7, ra, ra
                  sltu         t3, s3, s4
                  slli         t0, sp, 4
392:              ori          s9, s4, 129
                  ori          s8, s9, 420
                  bge          gp, a0, 395f
395:              auipc        s2, 565153
                  sltu         s3, t2, s9
                  add          s6, t2, a1
                  slli         s9, s2, 4
                  srli         s6, a7, 1
                  blt          t5, t2, 410f
                  xor          tp, a2, s1
                  blt          a3, a5, 417f
                  addi         zero, s7, 1957
                  bltu         s0, gp, 422f
                  srai         sp, t1, 2
                  srl          t4, a3, a3
                  sll          t5, tp, a2
                  or           s5, s0, s9
                  srli         s1, s7, 25
410:              srl          a6, a5, s0
                  lui          tp, 26869
                  nop
                  bge          a1, t2, 416f
                  or           s8, tp, s1
                  srl          t5, t0, t1
416:              add          sp, s7, t3
417:              slti         zero, ra, -1504
                  srai         sp, gp, 3
                  addi         t0, a2, -1880
                  andi         zero, a2, -1809
                  sll          s5, t4, a1
422:              xor          s11, s7, s6
                  sltu         gp, a3, s3
                  xori         s8, s3, 1375
                  and          a4, s10, sp
                  la           s5, region_0+97 #start riscv_load_store_rand_instr_stream_1
                  sb           a4, -16(s5)
                  lb           s1, -12(s5)
                  sb           t3, 2(s5)
                  srl          a1, t1, s1
                  sub          gp, a3, s10
                  lb           a6, 13(s5)
                  sh           t0, 11(s5)
                  sb           t6, 10(s5)
                  sltu         s7, a5, t2
                  lui          s11, 427569
                  nop
                  lhu          a7, -3(s5)
                  lb           s11, 14(s5)
                  sb           t3, -10(s5)
                  sb           a2, -4(s5)
                  xori         t4, a0, -1601
                  srl          s1, a3, t1
                  xor          s2, s10, s2
                  addi         s7, s5, 1389
                  slt          tp, a3, a1
                  sb           a1, 7(s5)
                  lh           sp, 9(s5)
                  sltiu        a5, t1, -1330
                  lbu          tp, 12(s5)
                  sb           s9, -8(s5)
                  xor          tp, s0, s9
                  slli         a3, a2, 6
                  addi         s1, a1, 282
                  sb           a6, 16(s5)
                  lb           a7, -14(s5)
                  sh           s0, 9(s5)
                  sb           s3, 14(s5)
                  lb           t3, -16(s5)
                  nop
                  lhu          s11, 11(s5)
                  sh           s6, 11(s5)
                  lb           a5, -8(s5)
                  lbu          zero, -2(s5)
                  sll          zero, s0, sp
                  sh           s10, 9(s5)
                  lh           a0, 7(s5)
                  slli         t6, tp, 9
                  lb           a2, 6(s5)
                  sb           t3, 10(s5)
                  sub          s10, a4, s11
                  lb           tp, 2(s5)
                  srai         a5, t3, 10
                  lb           s10, 12(s5) #end riscv_load_store_rand_instr_stream_1
                  bge          s0, t1, 433f
                  and          ra, a2, a0
                  bgeu         t4, s11, 430f
                  sra          tp, t4, s4
430:              srli         s9, t5, 7
                  nop
                  xor          t3, t1, t3
433:              sub          t2, s9, t3
                  slt          a7, t0, zero
                  sub          t0, s3, t3
                  bne          s4, a3, 454f
                  slli         s3, t1, 27
                  bltu         s9, a1, 449f
                  addi         s2, s7, 1490
                  bltu         t1, s6, 452f
                  auipc        a2, 287091
                  ori          t2, t6, -751
                  addi         s11, a5, -1462
                  and          a6, s11, t4
                  auipc        s1, 550174
                  addi         s9, s7, 462
                  slli         s7, t6, 3
                  sltu         s1, a6, t2
449:              or           gp, s11, a6
                  or           a1, a2, s7
                  sra          s9, a3, t5
452:              blt          ra, zero, 462f
                  sll          s2, s10, tp
454:              blt          s3, t6, 461f
                  bgeu         s1, a3, 459f
                  sub          s9, a4, t5
                  bltu         a2, a4, 470f
                  blt          s10, s10, 463f
459:              srai         s9, t5, 18
                  auipc        s1, 375364
461:              andi         s5, t4, -1396
462:              lui          zero, 888127
463:              bltu         s5, a7, 467f
                  and          s7, s9, a6
                  srl          a0, t6, s10
                  srli         a4, sp, 16
467:              srli         a0, tp, 29
                  slli         t2, s10, 8
                  slli         a1, s11, 12
470:              auipc        s1, 802223
                  srli         s9, a3, 1
                  sub          a7, s11, a6
                  lw           ra, 4(s4)
                  xori         t4, s4, -1350
                  sub          s6, sp, a3
                  ori          s10, t3, -381
                  auipc        s9, 436239
                  nop
                  auipc        a2, 168087
                  addi         s4, s4, 52
                  slti         t0, ra, 205
                  sll          t5, s7, zero
635:              addi x17, x1, 1
635:              jalr x17, x17, 0
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
                  addi x20, x20, -128
                  sw  x1, 4(x20)
                  sw  x2, 8(x20)
                  sw  x3, 12(x20)
                  sw  x4, 16(x20)
                  sw  x5, 20(x20)
                  sw  x6, 24(x20)
                  sw  x7, 28(x20)
                  sw  x8, 32(x20)
                  sw  x9, 36(x20)
                  sw  x10, 40(x20)
                  sw  x11, 44(x20)
                  sw  x12, 48(x20)
                  sw  x13, 52(x20)
                  sw  x14, 56(x20)
                  sw  x15, 60(x20)
                  sw  x16, 64(x20)
                  sw  x17, 68(x20)
                  sw  x18, 72(x20)
                  sw  x19, 76(x20)
                  sw  x20, 80(x20)
                  sw  x21, 84(x20)
                  sw  x22, 88(x20)
                  sw  x23, 92(x20)
                  sw  x24, 96(x20)
                  sw  x25, 100(x20)
                  sw  x26, 104(x20)
                  sw  x27, 108(x20)
                  sw  x28, 112(x20)
                  sw  x29, 116(x20)
                  sw  x30, 120(x20)
                  sw  x31, 124(x20)
                  add x8, x20, zero
                  csrr x23, 0x300 # MSTATUS
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 31
                  bne x23, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x23, 0x341 # MEPC
                  csrr x23, 0x342 # MCAUSE
                  li x12, 0x3 # BREAKPOINT
                  beq x23, x12, ebreak_handler
                  li x12, 0x8 # ECALL_UMODE
                  beq x23, x12, ecall_handler
                  li x12, 0x9 # ECALL_SMODE
                  beq x23, x12, ecall_handler
                  li x12, 0xb # ECALL_MMODE
                  beq x23, x12, ecall_handler
                  li x12, 0x1
                  beq x23, x12, instr_fault_handler
                  li x12, 0x5
                  beq x23, x12, load_fault_handler
                  li x12, 0x7
                  beq x23, x12, store_fault_handler
                  li x12, 0xc
                  beq x23, x12, pt_fault_handler
                  li x12, 0xd
                  beq x23, x12, pt_fault_handler
                  li x12, 0xf
                  beq x23, x12, pt_fault_handler
                  li x12, 0x2 # ILLEGAL_INSTRUCTION
                  beq x23, x12, illegal_instr_handler
                  csrr x12, 0x343 # MTVAL
                  1: la x6, test_done
                  jalr x1, x6, 0

ecall_handler:    
                  la x23, _start
                  sw x0, 0(x23)
                  sw x1, 4(x23)
                  sw x2, 8(x23)
                  sw x3, 12(x23)
                  sw x4, 16(x23)
                  sw x5, 20(x23)
                  sw x6, 24(x23)
                  sw x7, 28(x23)
                  sw x8, 32(x23)
                  sw x9, 36(x23)
                  sw x10, 40(x23)
                  sw x11, 44(x23)
                  sw x12, 48(x23)
                  sw x13, 52(x23)
                  sw x14, 56(x23)
                  sw x15, 60(x23)
                  sw x16, 64(x23)
                  sw x17, 68(x23)
                  sw x18, 72(x23)
                  sw x19, 76(x23)
                  sw x20, 80(x23)
                  sw x21, 84(x23)
                  sw x22, 88(x23)
                  sw x23, 92(x23)
                  sw x24, 96(x23)
                  sw x25, 100(x23)
                  sw x26, 104(x23)
                  sw x27, 108(x23)
                  sw x28, 112(x23)
                  sw x29, 116(x23)
                  sw x30, 120(x23)
                  sw x31, 124(x23)
                  la x6, write_tohost
                  jalr x0, x6, 0

instr_fault_handler:
                  add x20, x8, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  mret

load_fault_handler:
                  add x20, x8, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  mret

store_fault_handler:
                  add x20, x8, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  mret

ebreak_handler:   
                  csrr  x23, 0x341
                  addi  x23, x23, 4
                  csrw  0x341, x23
                  add x20, x8, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  mret

illegal_instr_handler:
                  csrr  x23, 0x341
                  addi  x23, x23, 4
                  csrw  0x341, x23
                  add x20, x8, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x23, 0x300 # MSTATUS;
                  csrr  x23, 0x304 # MIE;
                  csrr  x23, 0x344 # MIP;
                  csrrc x23, 0x344, x23 # MIP;
                  add x20, x8, zero
                  lw  x1, 4(x20)
                  lw  x2, 8(x20)
                  lw  x3, 12(x20)
                  lw  x4, 16(x20)
                  lw  x5, 20(x20)
                  lw  x6, 24(x20)
                  lw  x7, 28(x20)
                  lw  x8, 32(x20)
                  lw  x9, 36(x20)
                  lw  x10, 40(x20)
                  lw  x11, 44(x20)
                  lw  x12, 48(x20)
                  lw  x13, 52(x20)
                  lw  x14, 56(x20)
                  lw  x15, 60(x20)
                  lw  x16, 64(x20)
                  lw  x17, 68(x20)
                  lw  x18, 72(x20)
                  lw  x19, 76(x20)
                  lw  x20, 80(x20)
                  lw  x21, 84(x20)
                  lw  x22, 88(x20)
                  lw  x23, 92(x20)
                  lw  x24, 96(x20)
                  lw  x25, 100(x20)
                  lw  x26, 104(x20)
                  lw  x27, 108(x20)
                  lw  x28, 112(x20)
                  lw  x29, 116(x20)
                  lw  x30, 120(x20)
                  lw  x31, 124(x20)
                  addi x20, x20, 128
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
