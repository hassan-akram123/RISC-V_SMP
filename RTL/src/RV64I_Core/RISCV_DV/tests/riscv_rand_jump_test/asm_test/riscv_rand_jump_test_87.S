.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x18, h0_start
jalr x0, x18, 0
h0_start:
                  li x25, 0x40000100
                  csrw 0x301, x25
kernel_sp:        
                  la x21, kernel_stack_end

trap_vec_init:    
                  la x25, mtvec_handler
                  ori x25, x25, 0
                  csrw 0x305, x25 # MTVEC

mepc_setup:       
                  la x25, init
                  csrw 0x341, x25

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x25, 0x1800
                  csrw 0x300, x25 # MSTATUS
                  mret
init:             
                  li x0, 0xc
                  li x1, 0xd09b2ee2
                  li x2, 0x80000000
                  li x3, 0xa
                  li x4, 0xac7bbc2
                  li x5, 0x80000000
                  li x6, 0x7
                  li x7, 0x0
                  li x8, 0x80000000
                  li x9, 0xb724e4b4
                  li x10, 0xfa48c1e4
                  li x11, 0xbb03aa9e
                  li x12, 0x0
                  li x13, 0xc
                  li x15, 0xfc4445e2
                  li x16, 0x80000000
                  li x17, 0xd2a53780
                  li x18, 0x80000000
                  li x19, 0x80000000
                  li x20, 0x0
                  li x22, 0xa
                  li x23, 0x76a9f960
                  li x24, 0xb9b8f450
                  li x25, 0x80000000
                  li x26, 0x80000000
                  li x27, 0x0
                  li x28, 0x1
                  li x29, 0x0
                  li x30, 0x80000000
                  li x31, 0xff5f16e0
                  la x14, user_stack_end
main:             auipc        a6, 586129
                  srai         s3, ra, 18
                  la           t5, sub_1
                  xori         a1, gp, 150
                  and          a1, ra, s5
                  auipc        a6, 27678
                  addi         t5, t5, -517
                  xor          s3, s8, ra
                  slt          t0, t4, a3
                  slli         sp, s1, 10
main_j2:          jalr         ra, t5, 518 #jump main -> sub_1
                  la           s9, region_0+129 #start riscv_load_store_rand_instr_stream_0
                  lb           a3, 11(s9)
                  sb           s10, 1(s9)
                  lw           t2, 15(s9)
                  auipc        a1, 207362
                  lbu          t2, 10(s9)
                  sra          a5, a2, sp
                  srli         sp, t0, 24
                  slli         t5, t4, 13
                  lb           a5, -14(s9)
                  lb           a0, -16(s9)
                  lbu          s4, -12(s9)
                  lb           a1, -13(s9)
                  addi         s7, s7, -396
                  sb           a5, 8(s9)
                  ori          s6, s0, -1275
                  lb           ra, -2(s9)
                  srai         a5, t3, 5
                  sub          ra, t0, t4
                  lb           t3, -11(s9)
                  or           s6, s0, t1
                  lbu          t3, 3(s9)
                  or           s0, s5, s7
                  nop
                  slli         s4, s1, 25
                  srai         s7, t6, 1
                  sb           tp, -8(s9)
                  sb           a0, -14(s9)
                  addi         s6, s3, -939
                  lb           a5, -8(s9)
                  lbu          s3, 16(s9)
                  sb           t3, -4(s9)
                  slt          zero, a3, sp
                  slli         a0, a2, 23
                  and          a2, a2, a7
                  slt          t1, ra, t3
                  srl          a0, s5, a2
                  xori         tp, s6, 455
                  xori         t5, a0, -343
                  srl          gp, s1, s7
                  sb           s4, 2(s9)
                  sll          s10, s1, s10
                  lb           a5, -8(s9)
                  lhu          a5, 1(s9)
                  lbu          a7, 8(s9)
                  slti         a2, a0, 533
                  xor          s8, gp, zero
                  lb           s6, -14(s9) #end riscv_load_store_rand_instr_stream_0
                  andi         a0, s3, -1513
                  sra          sp, s0, t2
                  and          t0, t5, s6
                  slt          a6, zero, a0
                  auipc        s0, 846614
                  addi         t3, zero, -1963
                  or           t3, a0, s1
                  add          t4, t3, t0
                  add          a5, a7, ra
                  la           s6, sub_1
                  addi         s6, s6, 538
                  slli         tp, s6, 7
                  slti         zero, t1, -812
main_j1:          jalr         ra, s6, -537 #jump main -> sub_1
                  beq          a0, s10, 10f
                  lui          s7, 247834
                  sub          t3, gp, s6
                  bgeu         a2, t2, 10f
                  slt          s3, t4, zero
                  sltiu        t3, a0, -555
                  beq          a0, a5, 10f
                  nop
                  andi         s0, t4, -614
10:               and          ra, s4, t0
                  la x18, test_done
                  jalr x0, x18, 0
test_done:        
                  li gp, 1
                  ecall
sub_10:           slli         t0, zero, 6
                  xor          sp, s7, ra
                  srli         a0, a6, 9
                  srli         s3, s11, 15
                  andi         t0, s4, -191
                  sltu         s9, t2, t4
                  sltiu        gp, s0, 259
                  addi         a4, a4, -8
                  sub          s4, s11, a6
                  sw           ra, 4(a4)
                  slt          sp, zero, t5
                  nop
                  bgeu         s4, a7, 15f
                  srai         s10, s8, 25
                  srli         a3, a0, 16
                  beq          a2, a1, 20f
                  and          t2, s10, s0
                  andi         t2, s11, 1208
                  and          a1, ra, a6
                  sra          gp, s4, a5
                  srli         s3, a1, 0
                  bge          s7, t0, 27f
                  xor          s3, tp, s7
                  ori          s4, s0, 42
                  ori          s9, s8, 174
                  nop
15:               auipc        s3, 348746
                  slt          t0, s8, tp
                  sltu         s7, s6, s8
                  bne          a6, s1, 35f
                  srl          s4, t0, zero
20:               bltu         t4, t6, 34f
                  sub          s11, t4, a3
                  bltu         tp, s10, 28f
                  nop
                  bne          a7, s0, 25f
25:               bne          ra, t0, 41f
                  slli         a5, s7, 22
27:               add          s6, s9, a6
28:               andi         a5, s10, 1986
                  bltu         s6, t4, 40f
                  auipc        a3, 746003
                  andi         s6, a4, -1420
                  xor          s0, s9, gp
                  sltiu        t6, a1, 1353
34:               nop
35:               sltiu        a3, s2, 1484
                  beq          s4, t3, 50f
                  bge          t1, s9, 40f
                  addi         a3, s8, 949
                  beq          a1, t0, 41f
40:               xori         a7, t3, -1756
41:               bge          t4, t1, 43f
                  sra          sp, tp, gp
43:               ori          s9, a0, 1031
                  bltu         s4, s7, 50f
                  sltiu        t2, s5, -1260
                  xor          t3, gp, t5
                  xor          a0, zero, t5
                  bgeu         a7, s4, 50f
                  sltiu        zero, t0, 1829
50:               slti         t0, t6, -924
                  and          s4, a1, s4
                  srli         gp, t6, 19
                  lw           ra, 4(a4)
                  xori         t5, a6, -1655
                  sll          a6, t5, a7
                  sll          t0, t2, a7
                  addi         a4, a4, 8
                  ori          a5, s11, -1618
                  srl          s3, s1, a3
71:               addi x13, x1, 0
71:               jalr x13, x13, 0
sub_3:            bge          t2, t4, sub_3_stack_p
                  and          s0, s8, t4
sub_3_stack_p:    addi         a4, a4, -32
                  sw           ra, 4(a4)
                  nop
                  xori         s11, t6, 362
                  or           a0, s8, a7
                  lui          s10, 705233
                  slli         s8, a7, 2
                  andi         a2, t5, -633
                  srli         s1, s4, 8
                  la           a7, region_0+299 #start riscv_load_store_rand_instr_stream_1
                  xor          a2, a3, a3
                  xori         s3, s9, 1070
                  sb           sp, 16(a7)
                  srli         s10, t1, 14
                  sltu         t3, zero, s11
                  ori          s3, s4, -218
                  sh           s7, 5(a7)
                  sub          t1, s0, s9
                  sll          s6, tp, s1
                  lui          s8, 1015910
                  auipc        s9, 707176
                  xori         tp, s6, -499
                  xori         s6, a6, -436
                  srli         s11, t0, 22
                  ori          s3, t0, -469
                  lh           gp, -1(a7)
                  and          t2, a6, s1
                  slti         tp, a0, 1160
                  lb           t3, -10(a7)
                  lb           t6, 15(a7)
                  slli         s6, s8, 17
                  sltu         t0, a6, s8
                  sltiu        sp, ra, -1201
                  andi         s10, t5, 1689
                  lbu          a6, 14(a7)
                  lh           s0, -9(a7)
                  srli         s7, s11, 16
                  sltiu        a2, s9, 1035
                  slt          t0, t6, gp
                  and          a1, t6, ra
                  xor          t2, t0, t4
                  andi         a6, s7, -1885
                  sltiu        t1, s10, 185
                  auipc        a2, 369228
                  sll          t0, a0, t6
                  lbu          ra, -8(a7)
                  sh           t6, 3(a7)
                  andi         a5, a4, -1810
                  xori         zero, t5, -1431
                  lb           a6, 6(a7) #end riscv_load_store_rand_instr_stream_1
                  la           a2, region_0+1003 #start riscv_load_store_rand_instr_stream_2
                  sub          sp, a5, s2
                  lbu          s10, 97(a2)
                  sb           s3, -10(a2)
                  sb           s5, -200(a2)
                  add          t4, a0, s2
                  slti         sp, s0, -868
                  lb           t2, -110(a2)
                  sltu         t2, s6, s11
                  lbu          a1, 219(a2)
                  srai         a5, s3, 13
                  slli         s10, a2, 4
                  lhu          t1, -255(a2)
                  lbu          t5, -97(a2)
                  nop
                  sb           a0, -165(a2)
                  lbu          s11, -72(a2)
                  lb           t4, -224(a2)
                  lb           s1, -26(a2)
                  sw           gp, 181(a2)
                  srli         s7, s10, 25
                  sb           t2, -201(a2)
                  sb           s3, 14(a2)
                  lb           s9, -194(a2)
                  addi         s10, gp, 316
                  add          s7, t3, ra
                  sw           s5, 153(a2)
                  lb           t5, 205(a2)
                  andi         s9, t5, 1801
                  lbu          s10, -43(a2)
                  lb           s3, -40(a2)
                  xori         a0, t2, -1662
                  sh           s4, 245(a2)
                  lbu          a1, 109(a2)
                  sub          gp, a3, s0
                  lbu          a6, -139(a2)
                  sb           tp, 18(a2) #end riscv_load_store_rand_instr_stream_2
                  la           s0, region_0+462 #start riscv_load_store_rand_instr_stream_0
                  lbu          ra, -157(s0)
                  lb           a7, -106(s0)
                  and          s9, t1, tp
                  lb           s3, 224(s0)
                  lh           s6, -136(s0)
                  sra          s1, a7, s1
                  sltiu        zero, zero, 1581
                  sh           s0, 64(s0)
                  xori         s11, s10, -1571
                  sb           tp, -229(s0)
                  lbu          tp, 12(s0)
                  lbu          a1, 209(s0)
                  andi         t0, a6, -100
                  sb           t0, 42(s0)
                  nop
                  lh           t4, 162(s0)
                  lbu          s3, 19(s0)
                  slti         a1, s5, 1654
                  sb           a6, -155(s0)
                  xor          s6, ra, t6
                  lb           t3, 174(s0)
                  lbu          a7, -20(s0)
                  lui          s11, 835680
                  lhu          sp, -28(s0)
                  lbu          sp, 50(s0)
                  sb           s3, -126(s0)
                  lb           t0, -216(s0)
                  sltu         s8, a6, s3
                  lhu          tp, 44(s0)
                  add          a1, a3, t6
                  ori          s6, a5, 1424
                  lb           a2, -63(s0)
                  sltiu        t4, s11, -1120
                  sb           t1, -22(s0)
                  xori         gp, ra, 159
                  sb           s0, -69(s0)
                  sltiu        a2, a4, -1192
                  sb           gp, 194(s0) #end riscv_load_store_rand_instr_stream_0
                  beq          sp, t3, 17f
                  bltu         s3, s2, 19f
                  srli         a5, ra, 6
                  bgeu         s11, s2, 6f
                  bne          tp, t2, 15f
                  srai         s8, s9, 22
6:                nop
                  auipc        t5, 398789
                  xor          a6, s7, a6
                  nop
                  ori          s7, ra, -306
                  xor          s10, t2, gp
                  or           t1, a0, s9
                  slt          t2, s4, s1
                  add          t5, ra, s0
15:               slt          t5, a7, s5
                  bne          zero, gp, 17f
17:               ori          a5, ra, -1597
                  sltu         ra, ra, s1
19:               srli         a7, s2, 16
                  and          s8, zero, t2
                  bne          zero, t0, 33f
                  slt          a3, s11, s3
                  sub          a2, s4, sp
                  slti         t2, t1, 1612
                  andi         t0, zero, 1256
                  sll          ra, s5, zero
                  slt          a2, s6, a4
                  slt          a1, t6, a4
                  addi         s1, a1, 1388
                  xori         a6, t2, 1520
                  nop
                  slti         s8, s1, 1016
33:               and          t5, a2, ra
                  bgeu         a4, s7, 50f
                  sra          t5, s7, s7
                  xor          a2, a0, s4
                  xor          s6, t4, s10
                  slli         t4, s0, 18
                  or           t6, t5, s5
                  or           s3, t6, gp
                  ori          s8, s8, 1802
                  bge          s3, a7, 50f
                  bltu         tp, s11, 49f
                  srai         t3, s1, 27
                  srai         t3, t2, 14
                  sltiu        a5, a2, 507
                  srl          s9, tp, tp
                  sltiu        s1, s7, 1424
49:               blt          tp, t5, 68f
50:               and          tp, s3, s9
                  srai         zero, a4, 29
                  sltu         t3, s4, t1
                  ori          a6, s6, -749
                  bltu         s2, s9, 73f
                  bne          a2, t0, 65f
                  lui          zero, 331827
                  add          ra, s0, s7
                  srai         t6, s4, 24
                  auipc        s11, 147808
                  slt          s9, a2, a6
                  srli         ra, a6, 31
                  bne          t1, t0, 81f
                  add          s9, gp, a1
                  slt          s1, s11, s11
65:               bltu         s3, a0, 80f
                  srli         tp, t4, 21
                  sra          zero, tp, sp
68:               nop
                  andi         t5, t1, -254
                  nop
                  beq          t0, s2, 75f
                  or           s0, s9, s10
73:               sub          t2, s6, a4
                  add          t0, t5, t2
75:               add          s11, s1, s3
                  lui          tp, 1013147
                  bne          t2, ra, 80f
                  auipc        t2, 745702
                  add          a7, s11, s6
80:               blt          s1, s9, 81f
81:               bltu         s8, t2, 87f
                  xor          s10, s2, zero
                  addi         s11, a1, 33
                  sll          t4, a4, s4
                  add          t3, a1, t6
                  xori         tp, a0, -1327
87:               sltiu        gp, a0, 1280
                  lui          s3, 866593
                  addi         t1, s4, 288
                  sltu         t3, a7, s5
                  auipc        t6, 491675
                  add          tp, s9, ra
                  slli         a5, a6, 14
                  ori          t2, a6, 1517
                  beq          a4, t1, 100f
                  bgeu         s8, a6, 99f
                  xori         s1, s2, -915
                  nop
99:               slti         a6, s0, 1352
100:              sub          a2, a0, zero
                  bge          a5, a1, 108f
                  sub          s1, zero, tp
                  bge          a5, a0, 108f
                  sll          a0, zero, s7
                  andi         s10, s6, 1744
                  add          a2, s10, a2
                  srai         a3, s6, 26
108:              sll          ra, t0, a5
                  lui          a2, 199443
                  auipc        s0, 691613
                  or           sp, s0, t2
                  sll          t0, s0, s5
                  sltu         t3, a5, a4
                  sub          sp, a7, t4
                  slt          s9, a7, a4
                  bge          t2, t3, 132f
                  slli         t6, t6, 8
                  sll          t6, s4, zero
                  bgeu         zero, gp, 132f
                  slti         a0, t5, -1161
                  sltiu        s7, a5, -1983
                  srli         s4, s8, 20
                  blt          s4, s11, 139f
                  ori          t3, t2, -346
                  slti         a6, s5, 666
                  bltu         s3, s7, 136f
                  addi         t1, s5, 1707
                  xor          t1, s4, gp
                  srai         a5, t2, 2
                  add          t6, a1, t2
                  slli         a7, ra, 8
132:              bne          sp, a1, 140f
                  srai         t4, t0, 31
                  srli         zero, s11, 7
                  xori         s1, s10, -244
136:              beq          s4, s10, 147f
                  bne          s0, ra, 148f
                  beq          t2, ra, 154f
139:              sra          t1, s9, s7
140:              ori          s9, s0, -1453
                  addi         a2, a5, -946
                  srai         t4, sp, 29
                  ori          s11, s11, 1908
                  bge          s2, s0, 147f
                  bne          t5, s10, 153f
                  addi         t6, a7, 1546
147:              add          a2, t1, t3
148:              slti         ra, a0, -170
                  srai         s3, t1, 7
                  xor          a1, gp, a5
                  srli         s11, a3, 29
                  bltu         t4, zero, 153f
153:              add          s6, t4, t1
154:              bgeu         s1, s9, 159f
                  auipc        t3, 697206
                  la           s3, sub_5
                  addi         s3, s3, 987
                  sra          s10, s8, a0
                  ori          t6, a4, 418
                  ori          a3, s3, -547
                  sll          s8, s6, t4
                  sltu         a0, a2, sp
                  or           s7, s7, t5
                  bltu         tp, a3, sub_3_j7 #branch to jump instr
                  or           s0, a2, t5
sub_3_j7:         jalr         ra, s3, -987 #jump sub_3 -> sub_5
                  slli         a5, ra, 8
                  sll          s11, t0, s0
                  sub          t0, a7, a5
159:              bgeu         s1, a6, 178f
                  beq          s5, a2, 170f
                  sltu         ra, t5, t6
                  andi         a6, sp, -1090
                  andi         zero, s11, 1872
                  addi         s7, a0, 639
                  srli         s10, t1, 24
                  auipc        s3, 573703
                  xori         s6, t0, 2003
                  la           s3, sub_4
                  nop
                  and          t3, t2, s3
                  addi         s3, s3, 432
                  bne          a1, a2, sub_3_j6 #branch to jump instr
                  slt          a2, t5, a6
                  sra          s8, t5, t0
                  sra          a2, s2, t4
                  sltu         a6, s0, s11
sub_3_j6:         jalr         ra, s3, -431 #jump sub_3 -> sub_4
                  srli         ra, s6, 6
                  sltu         s8, s10, ra
170:              auipc        tp, 337075
                  sltu         s8, t4, t2
                  or           a1, s1, t3
                  lui          a7, 557857
                  bltu         s11, a3, 181f
                  bge          tp, s10, 185f
                  slt          a7, s9, t0
                  beq          t3, a4, 183f
178:              bne          t5, s3, 190f
                  xori         s9, a4, 939
                  bne          a4, zero, 195f
181:              sll          s1, a4, s8
                  bgeu         s7, s10, 198f
183:              nop
                  xori         a2, s10, -475
185:              xor          ra, a7, s3
                  bne          s4, a2, 203f
                  lui          t4, 383707
                  sltu         s0, s8, s7
                  bge          a7, t6, 200f
190:              auipc        gp, 462034
                  slt          t0, a3, a3
                  sltiu        t3, a6, 490
                  slti         t1, a0, 1033
                  blt          a3, zero, 213f
195:              or           t2, t2, t4
                  slli         s10, s10, 16
                  xori         ra, s8, 614
198:              sltu         tp, a2, a3
                  auipc        zero, 149189
200:              bltu         a6, a4, 204f
                  blt          s10, a7, 212f
                  and          a1, a6, a6
203:              bltu         tp, s5, 222f
204:              beq          s11, t0, 209f
                  ori          s11, gp, 594
                  bltu         s6, t4, 222f
                  addi         a1, zero, 991
                  add          s1, a3, t5
209:              auipc        s3, 108254
                  bge          s7, t0, 228f
                  and          s9, s1, s3
212:              and          s9, a2, t2
213:              srli         a6, a5, 9
                  andi         t6, t4, 1013
                  srli         t6, t1, 12
                  srl          t0, s8, a3
                  nop
                  bge          s9, a5, 221f
                  and          a6, s9, t3
                  add          zero, t5, s5
221:              and          gp, s2, a6
222:              bge          t1, a3, 235f
                  andi         gp, s7, -1231
                  and          s9, t6, a7
                  slli         a1, s1, 28
                  bne          s7, t0, 232f
                  lui          s10, 13787
228:              addi         s6, a7, -1706
                  auipc        a2, 586515
                  and          t6, zero, t3
                  sltiu        t5, a1, -286
232:              srai         t0, s9, 26
                  sra          a7, s3, t5
                  sltu         s7, t5, s9
235:              slti         s4, s3, 1789
                  bge          a6, a4, 244f
                  sll          zero, a2, a3
                  nop
                  xori         t0, s10, -1753
                  and          t6, a5, sp
                  lui          t3, 310102
                  ori          t0, a6, -986
                  ori          a3, s10, 1413
244:              lui          gp, 42592
                  xori         a3, t5, -655
                  or           s3, t6, tp
                  xori         s9, s9, 4
                  slti         s3, zero, -1012
                  srai         s11, sp, 10
                  srli         a2, t5, 29
                  lui          s11, 46123
                  sltiu        t5, sp, 725
                  nop
                  sltu         s4, s3, a4
                  sltiu        a1, s6, -458
                  srai         s7, ra, 21
                  sll          a5, ra, t2
                  auipc        a3, 812768
                  srl          s6, t2, zero
                  and          a3, s3, s3
                  nop
                  ori          zero, s1, -341
                  sltu         s8, gp, a7
                  ori          t4, a7, -624
                  xor          t1, a3, a6
                  xor          zero, s10, a6
                  auipc        sp, 985230
                  bge          s3, a4, 284f
                  add          a0, s6, s8
                  andi         t2, a3, -1429
                  xori         a1, a4, 762
                  bltu         t3, s3, 283f
                  bne          a6, s8, 274f
274:              sub          ra, s3, tp
                  addi         sp, s6, 1881
                  sltiu        sp, s9, -663
                  add          t0, s2, s1
                  or           t0, a3, t3
                  sll          t1, s3, a0
                  ori          s4, a7, 244
                  add          sp, t5, ra
                  add          a5, s0, a1
283:              bne          s1, a6, 286f
284:              xor          t0, a2, s5
                  bltu         s10, sp, 301f
286:              sra          s4, a3, s7
                  sltiu        a7, t6, 345
                  sltiu        s8, t1, 1169
                  nop
                  addi         s7, a7, -1291
                  sltiu        zero, t5, -1203
                  slli         t6, t3, 17
                  bgeu         s0, a2, 299f
                  sll          t3, a0, t3
                  sra          s10, a3, sp
                  bltu         a4, a1, 301f
                  sub          s11, s8, gp
                  sra          t3, s4, s3
299:              slli         s1, s3, 16
                  sub          s3, s3, s8
301:              blt          a7, tp, 311f
                  addi         gp, s1, 430
                  srli         s4, t0, 24
                  nop
                  srli         s7, s11, 13
                  bgeu         a5, s7, 319f
                  blt          s11, s6, 326f
                  slti         t4, zero, 1544
                  sltiu        sp, tp, -265
                  or           a6, t0, ra
311:              slti         a0, gp, -137
                  sltu         tp, s7, s0
                  addi         t4, a1, 1069
                  sub          tp, s7, s7
                  sra          a5, a2, t6
                  nop
                  xori         s8, zero, -956
                  slti         s3, s3, -770
319:              ori          sp, a3, -1593
                  nop
                  beq          ra, a4, 332f
                  sub          t3, t5, t0
                  bne          zero, s7, 326f
                  slli         ra, s1, 1
                  lui          t4, 328458
326:              bne          s7, t5, 334f
                  addi         s10, a0, -589
                  srl          tp, t2, t4
                  sll          t0, s5, s0
                  xor          a0, a7, t2
                  or           s6, a5, s7
332:              srl          s8, s5, t5
                  bge          tp, s10, 336f
334:              sltiu        t3, a3, 1804
                  srl          gp, a0, a7
336:              sltu         s9, t3, s9
                  bge          a7, s10, 341f
                  andi         sp, a6, 2006
                  sltu         s10, a6, s11
                  blt          t1, s6, 351f
341:              ori          t2, s10, 579
                  auipc        t6, 300795
                  slti         t5, s11, 1539
                  andi         a2, s2, 1360
                  sltu         sp, s2, t3
                  beq          gp, sp, 365f
                  bne          s11, t3, 348f
348:              sll          a0, t2, s3
                  and          zero, a5, a1
                  addi         t3, sp, 703
351:              andi         a1, s7, -1118
                  nop
                  andi         s4, a7, 224
                  and          a2, s8, t4
                  srli         s9, s3, 9
                  sltu         s1, s9, a3
                  add          a1, s3, zero
                  ori          zero, zero, 19
                  lui          t0, 1014782
                  bgeu         s6, s0, 377f
                  xor          zero, a3, s0
                  srai         s6, a1, 23
                  srl          s4, a6, t1
                  bge          gp, zero, 372f
365:              srl          t5, t0, a2
                  add          s9, t5, s8
                  nop
                  ori          a3, zero, 782
                  slt          s0, t3, a1
                  add          a0, a0, t4
                  sub          t3, s9, a4
372:              sltiu        tp, s8, 1967
                  sltu         ra, s0, sp
                  bne          t4, s3, 390f
                  sltiu        s10, s3, 673
                  slt          s11, t6, a5
377:              srai         t1, a5, 23
                  xori         s9, a0, 899
                  ori          s6, s6, -161
                  srai         t6, s9, 19
                  bge          s4, t4, 391f
                  and          s3, t4, t5
                  ori          a5, a1, 35
                  andi         s3, s8, -286
                  bne          s7, s9, 388f
                  sra          s8, ra, a7
                  slli         tp, a2, 31
388:              sll          s3, a0, s6
                  auipc        t2, 963614
390:              slti         a7, a1, 1368
391:              beq          s9, t2, 407f
                  sub          s6, s5, s9
                  lui          sp, 745481
                  add          s8, s10, s10
                  bgeu         ra, s3, 411f
                  or           t5, t0, t4
                  xori         a0, ra, -1906
                  sltu         s1, t2, s3
                  xor          gp, t6, gp
                  andi         t1, a5, -1307
                  sub          t5, a1, a6
                  srl          sp, s3, a0
                  srli         s9, a7, 19
                  ori          sp, a6, 1478
                  sltu         s11, t2, s6
                  sll          a5, t6, t6
407:              and          t6, a0, t6
                  srl          a6, a2, tp
                  srl          s7, s5, s3
                  srli         sp, a3, 21
411:              sra          t6, gp, s11
                  xor          s1, gp, t0
                  or           sp, s9, s8
                  slti         t6, tp, -65
                  bltu         t1, t5, 426f
                  bgeu         ra, t6, 435f
                  srl          t0, a5, s9
                  bgeu         tp, s0, 436f
                  slti         a2, a6, 17
                  sll          a0, t0, t6
                  sltu         s1, t4, s7
                  bltu         zero, tp, 427f
                  sub          t3, s8, a6
                  add          t6, s8, s3
                  slt          t5, s11, s2
426:              slli         tp, t0, 7
427:              srli         zero, a7, 6
                  bgeu         t0, t3, 435f
                  blt          a6, s7, 441f
                  slt          s11, t6, ra
                  auipc        t4, 903990
                  slli         s11, a3, 4
                  add          t3, s8, s8
                  bltu         t6, s11, 449f
435:              slt          a1, s8, a0
436:              add          s10, a4, t5
                  srl          a0, s1, t2
                  srli         a7, gp, 15
                  bne          ra, s1, 445f
                  sll          a0, t0, t3
441:              andi         a5, t4, 1701
                  bltu         s3, s3, 443f
443:              beq          s8, s7, 459f
                  sltu         s4, s9, s3
445:              bne          ra, t0, 460f
                  la           s8, region_0+1627 #start riscv_load_store_rand_instr_stream_3
                  auipc        ra, 40637
                  sll          s1, t6, sp
                  lb           s9, -40(s8)
                  srl          a2, s3, t0
                  sltiu        a6, s10, -621
                  sll          t3, t3, s6
                  lb           t5, 202(s8)
                  xori         t6, s9, -1070
                  sb           gp, -200(s8)
                  addi         s4, zero, 1528
                  lb           t3, -150(s8)
                  sltu         ra, s11, t2
                  lb           s1, 63(s8)
                  nop
                  sb           zero, 242(s8)
                  sltu         zero, t4, s11
                  xori         t6, s10, 329
                  lb           s4, 18(s8)
                  sltiu        t1, gp, -1819
                  auipc        t5, 669461
                  ori          s11, s5, 1706
                  sb           s11, -44(s8)
                  sub          t6, gp, t2
                  lb           a6, 137(s8)
                  sra          a7, t5, s0
                  sra          t6, t0, s11
                  lui          a3, 151321
                  sh           t2, -253(s8)
                  lbu          t0, -6(s8)
                  lh           s7, -61(s8)
                  auipc        a0, 376731
                  xori         ra, t4, -614
                  lb           a3, -252(s8)
                  lbu          s10, -152(s8)
                  lb           t5, -148(s8)
                  lh           ra, 163(s8)
                  lbu          a1, -65(s8)
                  sltiu        t2, s9, -1660
                  sh           a5, -33(s8)
                  lb           sp, 156(s8) #end riscv_load_store_rand_instr_stream_3
                  sltu         s3, s11, t6
                  and          a5, s1, s1
                  sll          s9, s9, a4
449:              and          t2, t6, s1
                  beq          t1, t4, 466f
                  bgeu         s2, a2, 459f
                  slti         s0, t6, 1408
                  srl          s10, a5, s9
                  lui          a5, 513954
                  and          ra, a0, t5
                  sra          t6, a1, t2
                  srai         t4, t1, 28
                  bltu         s10, a7, 459f
459:              srli         s3, a0, 29
460:              sltu         t4, t4, a7
                  ori          sp, a4, -1744
                  srl          t2, a6, ra
                  andi         a0, s9, 341
                  sltiu        a1, sp, -1605
                  lui          t5, 489442
466:              and          a6, s5, s10
                  nop
                  andi         a6, t2, 1193
                  or           t1, s1, tp
                  sltiu        s6, s0, 2022
                  slli         a3, a1, 8
                  sll          s6, a0, t5
                  bltu         a5, s1, 476f
                  bne          t1, a1, 484f
                  slli         ra, a6, 9
476:              slti         t1, s4, 136
                  slli         s9, sp, 21
                  bgeu         t6, s8, 497f
                  auipc        t2, 989425
                  lui          s3, 686178
                  sll          tp, t4, s7
                  blt          s7, t2, 499f
                  slli         t0, s1, 31
484:              sltiu        t4, t5, 1700
                  beq          s9, s2, 504f
                  sltiu        s1, s1, 761
                  or           s3, a5, s10
                  bge          a7, s10, 491f
                  bgeu         zero, ra, 500f
                  bne          a1, t2, 509f
491:              sub          a6, a3, a1
                  addi         a5, a6, -200
                  addi         t1, s11, -1350
                  bltu         sp, zero, 510f
                  sltiu        t3, s2, 1838
                  or           a5, s5, s11
497:              sll          a3, s3, t6
                  addi         s3, t1, -352
499:              bge          s2, s7, 504f
500:              xori         a2, s7, -245
                  srli         s7, s9, 1
                  sll          a0, t4, s7
                  nop
504:              xori         s10, t2, 642
                  slli         a0, t3, 18
                  and          t1, a2, a1
                  slt          s7, t2, a5
                  sub          a0, a0, s0
509:              or           tp, a2, s3
510:              lui          t4, 602500
                  sub          s6, t1, s6
                  sll          s10, t5, s10
                  beq          s3, s11, 526f
                  slt          t5, s9, s10
                  andi         t3, s4, -905
                  bge          s1, s0, 521f
                  or           a3, a4, s4
                  add          a0, a1, gp
                  blt          a4, t2, 522f
                  addi         s6, a6, 1614
521:              slli         a7, t5, 20
522:              bne          a4, a2, 534f
                  srli         gp, tp, 28
                  bne          a7, a2, 540f
                  lui          zero, 142079
                  srli         s0, s10, 5
                  ori          a2, s8, 1388
                  la           a7, sub_4
                  auipc        tp, 608810
                  addi         a7, a7, 465
                  auipc        s9, 1004879
sub_3_j5:         jalr         ra, a7, -464 #jump sub_3 -> sub_4
                  blt          tp, s9, 543f
526:              sub          sp, s5, t3
                  lui          t1, 271974
                  and          t1, s2, a2
                  sll          s11, tp, ra
                  sll          a7, zero, a1
                  sub          t1, t1, s2
                  blt          a6, t3, 540f
                  srl          s6, s0, t1
534:              ori          t1, ra, 1713
                  slt          s1, a4, a4
                  andi         a5, t6, -1501
                  sll          s1, a5, zero
                  bgeu         gp, s4, 549f
                  bgeu         s4, a4, 545f
540:              bgeu         a4, s10, 556f
                  srl          zero, a5, gp
                  blt          zero, s1, 549f
543:              slt          s7, s2, a7
                  andi         tp, t3, 103
545:              bltu         t4, s1, 556f
                  and          tp, s1, s7
                  slli         s11, a2, 15
                  xor          s8, a2, a2
549:              nop
                  srli         a1, t0, 6
                  lui          s4, 209996
                  slti         s9, s3, -912
                  lui          s11, 800792
                  slli         sp, t3, 25
                  sltu         a6, sp, t5
556:              add          a2, s1, zero
                  sltiu        a0, t0, -1736
                  nop
                  sra          t4, s5, t6
                  beq          a4, s6, 564f
                  beq          gp, s2, 567f
                  beq          tp, t2, 563f
563:              ori          s11, s4, 999
564:              or           s3, s10, s8
                  bge          s3, s5, 575f
                  addi         s7, t2, 1319
567:              sltiu        s0, s5, -486
                  ori          a6, a7, 643
                  blt          sp, s5, 574f
                  blt          t4, t1, 580f
                  xor          ra, sp, a0
                  slt          t0, t5, zero
                  xor          a6, a4, sp
574:              sltiu        s6, t0, -64
575:              add          t4, gp, s1
                  bltu         t1, t4, 588f
                  beq          a6, a0, 596f
                  and          ra, a5, a3
                  slli         a2, a0, 22
580:              bltu         a6, a6, 581f
581:              andi         s7, a2, 1737
                  slt          t0, a5, t2
                  srli         s1, t6, 26
                  sub          s9, zero, gp
                  sra          s4, t6, a0
                  bltu         a3, s6, 591f
                  bltu         s1, ra, 603f
588:              add          a3, s8, s1
                  srli         t3, s4, 24
                  nop
591:              nop
                  srl          s6, sp, s9
                  sltu         t3, s7, s10
                  andi         gp, a4, -2033
                  sra          s3, s1, s9
596:              or           a7, t4, a2
                  auipc        s11, 387111
                  andi         s8, t0, -195
                  bne          s5, s1, 607f
                  sub          a1, s11, s10
                  srai         a3, a4, 22
                  andi         sp, a5, -663
603:              slt          t2, zero, a6
                  sll          s8, s11, t2
                  andi         t2, a4, -1653
                  and          s0, s8, s8
607:              add          ra, a4, s0
                  lui          s9, 1032052
                  srl          s8, a5, s10
                  nop
                  addi         t1, a1, 401
                  slti         t1, t3, -244
                  sltiu        s6, t1, -226
                  ori          t0, s5, 555
                  slt          a1, a0, s0
                  bltu         s0, s11, 620f
                  bltu         t0, s8, 620f
                  or           s1, a2, s10
                  nop
620:              sltiu        t2, zero, 1734
                  auipc        a3, 896008
                  lw           ra, 4(a4)
                  addi         a4, a4, 32
                  srl          s6, t1, zero
                  lui          t4, 40674
                  xor          t4, s9, ra
825:              addi x11, x1, 1
825:              jalr x11, x11, 0
sub_6:            add          s6, s10, s0
                  sltu         sp, a5, ra
                  bge          a2, t3, sub_6_stack_p
                  srli         sp, a0, 9
sub_6_stack_p:    addi         a4, a4, -40
                  sub          s6, s5, s7
                  xori         s3, sp, -187
                  xor          t4, sp, s6
                  ori          t4, s11, -621
                  ori          a5, s8, -838
                  xori         tp, zero, -1980
                  sw           ra, 4(a4)
                  or           t3, t2, s6
                  sltu         t0, s5, s4
                  sll          t4, t4, s10
                  la           a3, sub_7
                  lui          s7, 172884
                  addi         a3, a3, 213
                  slt          sp, s9, a3
                  xor          s3, s7, a5
                  sra          s10, s0, sp
                  slt          a5, t4, a0
                  blt          s7, s5, sub_6_j9 #branch to jump instr
                  xor          gp, t6, s4
sub_6_j9:         jalr         ra, a3, -213 #jump sub_6 -> sub_7
                  xor          t5, a4, t6
                  la           a2, sub_7
                  sltu         tp, s5, a1
                  addi         a2, a2, 835
                  lui          tp, 913099
                  xor          s0, tp, s8
                  nop
sub_6_j10:        jalr         ra, a2, -835 #jump sub_6 -> sub_7
                  bne          s4, sp, 9f
                  and          a6, s7, s2
                  or           t6, t6, s2
                  add          s8, s6, ra
                  slti         s3, s10, -19
                  sltiu        a3, a3, 517
                  or           tp, gp, a5
                  andi         s8, s5, 972
                  sub          t3, a0, ra
9:                slti         s9, t5, -982
                  slli         gp, ra, 18
                  addi         s3, t3, -1894
                  slt          a1, t3, s5
                  and          a0, s1, a4
                  xori         s6, zero, 935
                  lw           ra, 4(a4)
                  addi         a4, a4, 40
                  sltu         t6, t5, a1
                  sltiu        tp, a3, -743
                  xor          s9, t0, a0
53:               addi x20, x1, 1
53:               jalr x20, x20, 0
sub_2:            blt          a7, ra, sub_2_stack_p
sub_2_stack_p:    addi         a4, a4, -40
                  srli         a7, zero, 12
                  sw           ra, 4(a4)
                  nop
                  auipc        a2, 88527
                  sub          a3, a2, ra
                  sub          s7, s5, t3
                  slt          s8, t0, t5
                  la           s7, region_0+861 #start riscv_load_store_rand_instr_stream_9
                  lhu          t5, -11(s7)
                  sb           a6, 13(s7)
                  addi         a1, a7, -1257
                  lui          s9, 667191
                  lw           s9, -33(s7)
                  and          t3, s8, a1
                  lui          a5, 411771
                  lb           t2, 38(s7)
                  lh           t0, 33(s7)
                  sb           s2, 8(s7)
                  sll          gp, a5, t6
                  addi         s11, s2, -159
                  lbu          t2, 34(s7)
                  sh           a3, -27(s7)
                  sb           a2, -14(s7)
                  xori         ra, gp, 104
                  lb           s11, 14(s7)
                  sll          t6, t1, a6
                  auipc        s3, 174357
                  addi         sp, zero, -1054
                  srli         a6, a6, 31
                  lbu          t1, 22(s7)
                  andi         s10, s3, 1060
                  sb           sp, 60(s7)
                  sb           a1, 62(s7)
                  sra          s11, t6, s0
                  sltiu        t4, a2, 1499
                  andi         s10, s4, 738
                  lb           a5, 52(s7)
                  sb           s9, -16(s7)
                  srli         ra, sp, 4
                  addi         s11, tp, 1918
                  andi         s11, t1, -1531
                  ori          s1, s4, 1698
                  auipc        s9, 439118
                  lbu          zero, 62(s7)
                  add          sp, a7, s0
                  lbu          t6, 20(s7)
                  ori          t3, a2, -1457
                  sltiu        s6, a2, -1780
                  lb           t5, 61(s7)
                  lbu          t4, 54(s7)
                  sh           s9, -53(s7)
                  addi         t5, s10, 272
                  lui          t3, 349301
                  auipc        t2, 449790
                  lb           s8, -58(s7)
                  lb           s3, 45(s7) #end riscv_load_store_rand_instr_stream_9
                  la           a0, region_0+1029 #start riscv_load_store_rand_instr_stream_2
                  sb           a2, 460(a0)
                  auipc        t3, 973453
                  sb           t1, -404(a0)
                  or           s6, t1, a6
                  sll          t1, a3, a3
                  srai         ra, a7, 10
                  sra          s10, a3, s0
                  sll          gp, t0, s4
                  lb           s6, -1008(a0)
                  sltiu        gp, s10, -1671
                  lbu          a6, -40(a0)
                  sub          s0, gp, s1
                  addi         a3, s0, -335
                  lb           zero, -732(a0)
                  slti         t6, gp, -27
                  addi         t2, sp, -407
                  lb           s10, -3(a0)
                  sra          gp, a7, s3
                  nop
                  sb           s10, -332(a0)
                  lb           s1, -132(a0)
                  sb           s0, 861(a0)
                  slti         s9, s10, 1370
                  addi         gp, s4, 436
                  lbu          t0, 583(a0)
                  lhu          a3, -569(a0)
                  srai         t5, gp, 20
                  srai         a1, t6, 5
                  sb           s0, 217(a0)
                  srl          t6, s8, s8
                  lbu          t4, -621(a0)
                  lbu          s7, -620(a0)
                  sb           s2, -36(a0)
                  lb           a5, 793(a0)
                  sub          a3, s10, t0
                  lui          ra, 879213
                  srli         t1, a0, 15
                  sh           t6, -321(a0)
                  and          s3, s6, t0
                  sll          s10, s11, a1
                  sltiu        a3, a4, -626
                  sb           s1, -446(a0) #end riscv_load_store_rand_instr_stream_2
                  la           tp, region_0+1346 #start riscv_load_store_rand_instr_stream_3
                  lbu          s4, 12(tp)
                  slti         s8, a4, -293
                  ori          a7, t0, 1956
                  lb           s8, 15(tp)
                  andi         s4, a6, -1422
                  lhu          s1, 24(tp)
                  lbu          s9, -63(tp)
                  xori         s10, a7, -1853
                  srl          t5, t1, zero
                  sb           t2, 54(tp)
                  lb           s6, -19(tp)
                  lbu          t3, -51(tp)
                  sb           s2, -17(tp)
                  addi         a0, s0, -1533
                  sb           s7, 56(tp)
                  xor          s6, tp, ra
                  nop
                  slli         ra, a6, 3
                  nop
                  or           t3, s8, tp
                  lbu          s8, -44(tp)
                  sb           s7, 25(tp)
                  lhu          ra, -16(tp) #end riscv_load_store_rand_instr_stream_3
                  la           s6, region_1+404 #start riscv_load_store_rand_instr_stream_4
                  sb           t1, 26(s6)
                  lb           s1, -63(s6)
                  sll          t0, s4, a3
                  slt          s7, a7, sp
                  slli         t2, t4, 17
                  or           s7, t4, tp
                  lbu          a5, -59(s6)
                  sub          t4, s4, s4
                  srli         s10, tp, 28
                  or           sp, t5, s1
                  xor          a0, zero, zero
                  add          t5, t6, s3
                  lb           t0, 37(s6)
                  sb           t2, -1(s6)
                  lb           zero, -48(s6)
                  srli         t5, zero, 22
                  lh           t6, -24(s6)
                  sb           t2, 0(s6)
                  lbu          s9, -38(s6)
                  lhu          t1, 8(s6)
                  lb           t6, -59(s6)
                  lb           s3, 45(s6)
                  sb           zero, -23(s6)
                  and          a6, t6, t1
                  sub          a2, t2, s7
                  sh           sp, 40(s6)
                  lb           s4, -15(s6)
                  lbu          s10, -47(s6)
                  lbu          a2, 33(s6)
                  lh           s11, -50(s6)
                  add          t2, s8, s4
                  sb           a5, -64(s6) #end riscv_load_store_rand_instr_stream_4
                  la           s1, region_1+443 #start riscv_load_store_rand_instr_stream_11
                  andi         s10, s2, 376
                  lb           s9, -18(s1)
                  lb           s7, 223(s1)
                  srl          t1, t4, s8
                  lh           s11, -161(s1)
                  lb           a7, -72(s1)
                  lw           sp, -83(s1)
                  srl          a1, s2, t3
                  auipc        s3, 727188
                  sub          s11, s4, s6
                  andi         s3, ra, 1552
                  srai         s11, s3, 3
                  lh           a5, -7(s1)
                  lhu          s10, 81(s1)
                  lh           tp, 181(s1)
                  lbu          a6, -164(s1)
                  lbu          tp, -160(s1)
                  sb           a5, -68(s1)
                  sb           s4, 124(s1)
                  sltu         t4, a2, s2
                  sub          s10, a1, t1
                  lb           s11, -172(s1)
                  srli         tp, t2, 8
                  srai         s6, s11, 11
                  lb           s11, 76(s1)
                  lb           t6, 256(s1)
                  andi         a5, tp, 1501
                  sb           s6, 150(s1)
                  xori         s10, t2, 309
                  addi         s11, s0, -1388
                  sra          a0, sp, t4
                  andi         s8, a2, -1923
                  sll          ra, s3, s10
                  lbu          t5, -110(s1)
                  lui          tp, 689919
                  lb           s0, 178(s1)
                  sw           s9, 253(s1)
                  lb           s8, -200(s1)
                  sb           s4, -114(s1)
                  sb           tp, -253(s1)
                  nop
                  srl          s7, t2, s4
                  lbu          s6, 172(s1)
                  sb           s9, 64(s1)
                  lui          a1, 512723
                  slli         t3, t4, 1
                  add          t4, s4, a5
                  sb           s4, -50(s1)
                  lb           t2, -216(s1)
                  andi         zero, t6, -594
                  lbu          a6, -106(s1)
                  sb           t3, -151(s1) #end riscv_load_store_rand_instr_stream_11
                  la           a1, region_1+268 #start riscv_load_store_rand_instr_stream_7
                  srai         a7, t3, 2
                  or           t0, s3, s1
                  xor          a3, sp, a7
                  srai         s1, s0, 21
                  add          a0, t1, a0
                  lbu          s10, 11(a1)
                  lbu          s9, 13(a1)
                  add          s1, s5, t2
                  sb           s7, -3(a1)
                  lbu          s7, -15(a1)
                  lb           s9, 1(a1)
                  srl          t4, s6, a4
                  auipc        s11, 903723
                  srli         sp, s7, 5
                  lbu          sp, 13(a1)
                  srl          a7, s5, a3
                  sh           a3, 12(a1)
                  slt          a7, tp, s4
                  lb           s9, 9(a1)
                  lbu          gp, -11(a1)
                  ori          a0, sp, 1049
                  or           gp, s6, t1
                  sb           a5, 1(a1)
                  slt          zero, s8, sp
                  sw           t3, -16(a1)
                  sra          a6, a7, s1
                  sw           a4, -16(a1)
                  sh           t6, 10(a1) #end riscv_load_store_rand_instr_stream_7
                  la           s1, region_0+785 #start riscv_load_store_rand_instr_stream_8
                  lb           s0, 61(s1)
                  sltu         t3, a1, s11
                  lbu          a6, 4(s1)
                  sra          t2, s6, t5
                  lbu          s11, -2(s1)
                  lhu          a5, 61(s1)
                  slt          a3, a4, t1
                  sh           s0, -59(s1)
                  or           ra, s0, sp
                  srli         a0, t0, 1
                  lh           a3, -31(s1)
                  sb           t0, -40(s1)
                  sb           t1, 14(s1)
                  sb           zero, 49(s1)
                  srli         s0, s2, 9
                  or           t3, zero, zero
                  lw           s4, -29(s1)
                  lui          s10, 1044326
                  lbu          zero, -42(s1)
                  lb           t1, 64(s1)
                  lbu          s11, 56(s1)
                  sra          ra, sp, a1
                  sll          t2, s3, gp
                  srai         s10, a6, 6
                  sb           s8, -51(s1)
                  sb           tp, 36(s1)
                  lw           s11, 39(s1)
                  lb           a0, -48(s1)
                  slt          a3, a4, s5
                  sb           t3, -36(s1)
                  sb           a0, 4(s1) #end riscv_load_store_rand_instr_stream_8
                  la           s8, region_0+526 #start riscv_load_store_rand_instr_stream_0
                  xor          t6, ra, t5
                  lh           s6, -336(s8)
                  or           a0, ra, a3
                  lhu          t1, 636(s8)
                  sb           s6, -464(s8)
                  lb           s0, 805(s8)
                  lbu          t5, 923(s8)
                  lb           s3, -28(s8)
                  sra          s0, ra, s7
                  sb           s7, 23(s8)
                  lb           ra, 340(s8)
                  addi         a7, a3, -1309
                  andi         t1, s4, 1261
                  sltu         t5, sp, tp
                  sb           t6, -357(s8)
                  lui          s7, 982543
                  sb           s6, 730(s8)
                  sb           t2, -385(s8)
                  lui          t1, 153319
                  sb           a2, 627(s8)
                  lbu          t3, -182(s8)
                  lb           sp, 1463(s8)
                  sw           a1, -34(s8)
                  lb           s11, 955(s8)
                  lbu          a7, 1418(s8)
                  lb           tp, 430(s8)
                  or           t3, s8, ra
                  lw           t5, 322(s8)
                  lbu          zero, 959(s8)
                  lb           s1, 165(s8)
                  slt          t0, a2, ra
                  lb           s1, 1003(s8)
                  lbu          t3, -53(s8)
                  lbu          zero, -229(s8)
                  lb           t4, 980(s8) #end riscv_load_store_rand_instr_stream_0
                  la           a7, region_0+1324 #start riscv_load_store_rand_instr_stream_1
                  slt          a2, gp, tp
                  ori          t4, s3, 231
                  lbu          t6, -53(a7)
                  sltiu        a2, t5, 775
                  lbu          s4, -9(a7)
                  sltu         a3, s10, ra
                  srai         tp, t0, 24
                  addi         ra, t4, 1196
                  sb           s10, 47(a7)
                  xor          s4, zero, s2
                  lb           a1, 11(a7)
                  srli         s10, a4, 24
                  sltu         s10, a4, t6
                  xori         zero, s9, 1559
                  nop
                  lui          tp, 24032
                  andi         a1, a3, 1199
                  sb           s5, -35(a7)
                  lbu          t6, -57(a7)
                  srai         a5, s2, 12
                  lbu          a5, 13(a7)
                  nop
                  sll          a2, s5, t0
                  slt          t0, sp, s3
                  srl          s7, s5, t2
                  lui          s6, 133282
                  xori         s11, a5, -977
                  lbu          zero, -29(a7)
                  nop
                  sb           t4, -26(a7)
                  lui          s11, 772262
                  xori         a5, a5, -784
                  sra          s4, t4, s2
                  or           a3, zero, zero
                  sb           a5, -34(a7)
                  xori         a5, t5, 1247
                  and          s8, t4, s8
                  srl          s4, a7, a4
                  auipc        t5, 806642
                  slti         s6, s9, 387
                  lbu          t2, -4(a7) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_0+1921 #start riscv_load_store_rand_instr_stream_10
                  lbu          t6, -44(sp)
                  add          a6, a7, s9
                  slti         gp, s1, 1203
                  lb           a0, 10(sp)
                  xor          t0, t3, s2
                  lbu          t5, -16(sp)
                  lbu          s8, -10(sp)
                  sltu         s10, s2, a3
                  lhu          s6, 49(sp)
                  sh           s7, 51(sp)
                  sb           s7, -47(sp)
                  lhu          a7, -37(sp)
                  xori         a2, s2, 1829
                  sb           t3, 54(sp)
                  lw           t1, 51(sp)
                  lw           tp, -45(sp)
                  sb           a4, -22(sp)
                  addi         t1, s6, 1414
                  slt          t4, t2, a7
                  lb           a6, -42(sp)
                  lbu          s6, -30(sp)
                  srli         a5, s9, 0
                  lbu          a1, 56(sp)
                  lbu          s7, 28(sp)
                  lbu          s8, 12(sp)
                  lbu          s1, 58(sp)
                  auipc        a0, 487530
                  lb           a1, -24(sp)
                  lb           t5, 50(sp)
                  lb           s4, -44(sp)
                  lb           a7, 54(sp)
                  sh           s1, -47(sp)
                  addi         gp, a2, -150
                  sltiu        t0, t1, -1238
                  sub          a1, s5, s1
                  lbu          s1, -48(sp)
                  lh           t6, -11(sp)
                  lb           s6, 64(sp)
                  sb           t6, 48(sp)
                  lh           s3, -19(sp)
                  lb           s7, 33(sp)
                  lbu          s10, 41(sp) #end riscv_load_store_rand_instr_stream_10
                  la           sp, region_0+194 #start riscv_load_store_rand_instr_stream_5
                  sh           s4, 806(sp)
                  srl          a6, s4, t1
                  sb           s2, -8(sp)
                  sb           a1, 1483(sp)
                  sh           tp, 1252(sp)
                  sb           ra, 880(sp)
                  andi         s6, t3, -1578
                  srli         s3, ra, 29
                  sb           a0, 685(sp)
                  lb           t2, 885(sp)
                  lbu          t6, 242(sp)
                  lb           s10, 1417(sp)
                  or           s10, a6, t6
                  sltu         s10, t1, s3
                  nop
                  lbu          t3, 1467(sp)
                  andi         t0, tp, 1901
                  lhu          a6, 1398(sp)
                  lhu          s9, 1260(sp)
                  sub          a7, a6, s2
                  xori         s11, t0, -1759
                  sh           s5, 1790(sp)
                  xor          s1, a6, tp
                  srai         t6, s6, 23
                  lbu          s1, 453(sp)
                  lw           s10, 1730(sp)
                  sh           t0, -48(sp)
                  sltiu        ra, a1, -177
                  and          a5, a2, s4
                  lb           a2, 801(sp)
                  sltiu        t2, s8, 1309
                  lbu          tp, 768(sp)
                  sh           zero, 508(sp)
                  sub          t1, s10, s4
                  sb           s8, 749(sp) #end riscv_load_store_rand_instr_stream_5
                  la           sp, region_0+1152 #start riscv_load_store_rand_instr_stream_12
                  sb           tp, -2(sp)
                  lhu          s10, -26(sp)
                  auipc        a2, 240839
                  and          t2, s0, s8
                  sb           t6, 3(sp)
                  andi         s10, a4, 1386
                  lhu          t1, -26(sp)
                  add          a1, a6, s11
                  xori         s9, t0, -1770
                  slli         s11, s3, 20
                  sb           s9, 26(sp)
                  lbu          s0, 31(sp)
                  sb           t5, 3(sp)
                  addi         t1, s1, -1797
                  slt          a2, a5, a4
                  add          s8, s0, s11
                  sra          a0, s0, s8
                  andi         s0, s8, 1498
                  lb           gp, 50(sp)
                  lhu          a0, 56(sp)
                  lbu          a3, 26(sp)
                  sw           a0, -32(sp)
                  sw           ra, 4(sp)
                  lb           t6, 53(sp)
                  sb           tp, -63(sp)
                  ori          s6, a6, -943
                  srli         s6, a1, 20
                  srl          s0, s10, a2
                  sll          gp, gp, s9
                  sb           s0, -28(sp)
                  sra          t5, s3, s3
                  or           a3, zero, s1
                  andi         a1, a7, 327
                  lui          s6, 811774
                  addi         zero, t5, -391
                  sltu         a6, s7, a0
                  or           a6, a2, a2
                  sltiu        t0, a0, 1158
                  lbu          s3, 64(sp)
                  sw           s0, 16(sp)
                  srli         t3, t3, 5
                  lbu          t6, -29(sp)
                  lbu          a1, -25(sp)
                  lw           a1, -28(sp)
                  srl          a5, s1, a4
                  lb           s9, -21(sp)
                  sw           s0, -64(sp)
                  nop
                  lh           s9, -2(sp)
                  lbu          s4, -32(sp)
                  sll          a3, a3, t4
                  lbu          a6, -47(sp)
                  addi         s8, a2, -1188
                  addi         t5, ra, -1965
                  sb           s9, 21(sp)
                  sw           a5, 12(sp)
                  lb           a0, -22(sp)
                  sll          a3, zero, a3
                  lbu          s6, 20(sp)
                  lb           a7, -3(sp) #end riscv_load_store_rand_instr_stream_12
                  la           a7, region_1+641 #start riscv_load_store_rand_instr_stream_6
                  sb           tp, 327(a7)
                  xori         t5, sp, 1498
                  lhu          a6, -399(a7)
                  nop
                  lb           s1, 1284(a7)
                  sb           a1, 250(a7)
                  sb           gp, 1065(a7)
                  sll          a3, sp, s3
                  sh           a1, 993(a7)
                  sh           s7, 1117(a7)
                  lb           t4, 254(a7)
                  sh           a5, -99(a7)
                  sb           zero, -456(a7)
                  sh           gp, 467(a7)
                  lbu          gp, 390(a7)
                  sub          sp, s0, s11
                  lbu          s10, 357(a7)
                  sb           tp, 246(a7)
                  lb           a0, 989(a7)
                  slti         s8, a3, -644
                  lb           t1, -469(a7)
                  lb           s11, 1310(a7)
                  lw           t2, 1067(a7)
                  lb           t5, 40(a7)
                  lbu          ra, -237(a7)
                  sub          a6, a1, s1
                  lbu          t1, 172(a7)
                  sb           t2, 1077(a7)
                  sw           a3, -361(a7)
                  sw           s8, 711(a7)
                  sra          s10, s5, s8
                  ori          a6, tp, -1147
                  srai         s11, sp, 30
                  lbu          s1, 197(a7)
                  sb           t1, 119(a7)
                  lhu          t2, 159(a7)
                  lbu          a6, 989(a7)
                  auipc        s4, 135071
                  xor          t2, t2, gp
                  and          a6, sp, t6
                  sb           s4, -438(a7) #end riscv_load_store_rand_instr_stream_6
                  slli         a0, s3, 26
                  nop
                  srai         s3, t5, 21
                  slt          s11, t1, a3
                  lui          t6, 20501
                  bne          s6, s5, 17f
                  slt          a1, s10, a6
                  lui          s11, 860361
                  sltiu        t5, s4, -1654
                  xori         s4, a0, -631
                  beq          s10, s1, 23f
                  srai         s0, s2, 15
                  slt          s3, ra, t3
                  srli         s9, a0, 0
                  slt          t6, t0, s6
                  xori         t1, s2, -606
                  nop
17:               ori          tp, s0, 1289
                  sll          t6, t2, t5
                  nop
                  bne          tp, t3, 26f
                  sltu         t1, s7, gp
                  bltu         a0, a7, 27f
23:               sltu         a7, t2, sp
                  add          a5, sp, a3
                  or           t2, t4, s6
26:               bgeu         t3, a4, 27f
27:               auipc        s9, 882126
                  sltiu        a2, t3, 692
                  slt          a3, s11, s4
                  bltu         t0, a1, 34f
                  xor          s3, s6, a4
                  srai         a6, a4, 12
                  and          s10, tp, sp
34:               blt          s10, a7, 52f
                  xor          a6, a1, t5
                  sltu         ra, gp, a5
                  bgeu         t0, s3, 47f
                  sra          s11, a4, ra
                  addi         sp, t3, -1208
                  slt          t1, gp, zero
                  slti         t2, a3, -1164
                  sra          s7, s0, a6
                  xori         s11, s3, -379
                  addi         s10, ra, 466
                  sltiu        s0, s8, 799
                  xori         s7, a3, 1556
47:               sll          t2, a6, sp
                  xori         a6, s10, -605
                  sll          s7, a0, a7
                  lui          s9, 568233
                  slli         a0, t4, 23
52:               sra          s1, s4, s2
                  slt          s3, t1, s1
                  nop
                  sll          s11, a3, t5
                  srai         a0, s8, 5
                  add          t2, s5, t1
                  auipc        s1, 601658
                  bne          t6, a7, 77f
                  sll          s10, a0, a6
                  slli         s9, s9, 31
                  slti         gp, a4, 627
                  srai         a7, sp, 13
                  beq          t6, a0, 69f
                  slt          a0, s1, t6
                  auipc        s9, 34542
                  or           tp, s7, t6
                  sra          t1, a3, s3
69:               lui          a5, 994246
                  bge          tp, s10, 81f
                  xori         ra, t5, 1239
                  bltu         a5, a5, 85f
                  or           s8, zero, a2
                  sll          a3, s4, a2
                  xor          sp, ra, t1
                  slti         t5, s11, 250
77:               blt          s2, ra, 79f
                  xori         s11, t5, 395
79:               xor          s0, s11, a5
                  xor          s6, t3, s11
81:               ori          t6, a6, 127
                  lui          sp, 417796
                  srli         a2, a3, 5
                  bne          zero, tp, 101f
85:               addi         s10, ra, 1282
                  srli         a1, t2, 22
                  srli         gp, t1, 6
                  addi         t0, t6, -1672
                  srli         s10, s0, 30
                  bltu         s7, a6, 102f
                  beq          a3, a2, 93f
                  bne          a0, tp, 110f
93:               or           gp, t3, tp
                  sltu         a3, a2, a3
                  add          a7, a6, s2
                  or           s4, t3, sp
                  xori         zero, a3, 511
                  bltu         t0, s3, 106f
                  andi         s7, s1, -1821
                  and          t6, a7, a5
101:              lui          s10, 109453
102:              addi         s3, a4, -1710
                  auipc        tp, 395210
                  sll          s9, a5, a2
                  srl          a7, ra, a4
106:              bltu         zero, zero, 116f
                  andi         a6, zero, -1500
                  slt          s1, t1, t6
                  bltu         s7, s5, 128f
110:              xor          sp, t5, t4
                  sll          sp, s11, s2
                  srai         s8, ra, 28
                  ori          s8, s1, -1482
                  andi         t5, a3, -1844
                  or           s11, t2, s6
116:              sub          t1, a3, a3
                  sltu         s9, a7, a1
                  sltiu        a6, sp, -738
                  sra          s1, s7, s9
                  srl          a0, s3, a1
                  beq          s0, a0, 133f
                  xori         s8, s2, -117
                  auipc        gp, 657475
                  andi         gp, t4, 1378
                  slt          sp, zero, tp
                  blt          tp, s4, 133f
                  sub          s6, t2, zero
128:              ori          s9, t2, 2016
                  add          a0, s11, s11
                  blt          sp, s6, 142f
                  sra          a7, a0, t0
                  sll          s0, zero, gp
133:              xori         a0, s11, -405
                  beq          s6, tp, 135f
135:              xori         sp, s2, -1759
                  sub          t4, ra, zero
                  blt          s8, tp, 140f
                  auipc        t2, 714499
                  sra          s1, gp, tp
140:              bge          sp, s11, 148f
                  slti         t1, t2, 1296
142:              bge          s1, a3, 162f
                  sll          t2, s11, s11
                  srli         s0, t3, 23
                  srai         tp, zero, 26
                  sll          t3, a5, s1
                  slti         s9, s9, 56
148:              slt          gp, sp, s5
                  slt          s9, ra, t4
                  blt          t1, t4, 164f
                  ori          sp, a4, -50
                  slt          gp, s9, a3
                  sll          t4, s11, a1
                  ori          a0, gp, -298
                  sra          s0, s3, s7
                  beq          s1, s6, 175f
                  sll          s7, a3, a4
                  xor          a5, ra, t6
                  auipc        tp, 137900
                  add          a1, s7, a5
                  bltu         t0, s4, 165f
162:              bge          tp, t2, 182f
                  sltu         gp, s6, zero
164:              sub          a0, sp, t4
165:              andi         t5, s2, -751
                  xor          s7, gp, s0
                  sltu         gp, a2, t1
                  nop
                  lui          a3, 719263
                  or           a3, a5, s4
                  xor          s11, s5, t5
                  xori         t4, t2, -808
                  ori          s6, s4, -1643
                  slt          t4, s6, s10
175:              sub          t2, a6, sp
                  srli         s0, s9, 27
                  bgeu         s6, t0, 178f
178:              sltiu        s7, a6, -1979
                  andi         s6, s9, 1241
                  and          t4, a6, t6
                  bne          s3, s9, 188f
182:              srl          t4, a7, s10
                  bge          s5, a4, 201f
                  sub          s7, s3, a3
                  nop
                  lui          t6, 953407
                  bgeu         t0, s11, 200f
188:              bltu         s2, gp, 196f
                  ori          s10, s9, 1426
                  sltiu        s1, s10, 110
                  or           t2, s8, t1
                  beq          s11, s3, 197f
                  xori         ra, a1, -522
                  addi         s10, s9, -2034
                  or           a2, t1, t5
196:              sub          t4, sp, s1
197:              srl          s3, a1, s11
                  srl          s6, s11, t4
                  andi         sp, sp, -404
200:              sll          s3, gp, a6
201:              xori         ra, s10, 90
                  slti         s4, s1, -1363
                  or           s7, t5, a5
                  andi         s10, t2, -849
                  or           s0, t3, t4
                  ori          s3, s11, 474
                  sltiu        s8, a6, -750
                  add          s9, zero, a3
                  xor          zero, s6, s0
                  sll          t4, s3, t4
                  lui          t1, 297207
                  add          sp, a1, s8
                  bltu         a6, s7, 218f
                  bge          a0, s2, 217f
                  xor          s6, a1, a5
                  beq          t4, a3, 220f
217:              bne          t6, t4, 219f
218:              bne          s3, tp, 228f
219:              blt          s7, t1, 225f
220:              bge          t6, t3, 224f
                  blt          s2, s8, 233f
                  bltu         a2, s2, 240f
                  bgeu         t0, t3, 231f
224:              sltu         a3, s7, t6
225:              slli         s7, a3, 16
                  or           s10, t1, ra
                  srai         s7, tp, 22
228:              or           a2, ra, t6
                  addi         s9, t4, -1514
                  xori         gp, s9, 1704
231:              blt          s6, t6, 243f
                  nop
233:              sra          s1, s5, a2
                  xor          s7, s11, a6
                  lui          t6, 728222
                  srai         ra, s11, 28
                  sub          s3, a0, s7
                  xori         a3, s8, -1452
                  bne          t2, s0, 253f
240:              xor          s11, a1, a0
                  or           s4, t0, a1
                  sltu         sp, s0, a5
243:              xor          s9, a4, s5
                  srai         t3, s4, 23
                  nop
                  andi         gp, tp, -1802
                  sltiu        s0, t6, -800
                  nop
                  nop
                  blt          t0, tp, 267f
                  blt          t0, t4, 262f
                  slti         t1, t1, -1887
253:              bgeu         a3, t5, 265f
                  blt          t5, t0, 267f
                  xor          s8, s3, s10
                  bne          t2, zero, 275f
                  xor          a5, a5, sp
                  sltu         s4, a7, a6
                  bltu         t2, s2, 278f
                  srai         sp, t6, 8
                  and          s0, sp, a1
262:              and          t3, s1, sp
                  sltiu        zero, s8, 653
                  sub          s4, a0, s10
265:              sra          ra, s0, ra
                  srl          s8, sp, tp
267:              andi         a7, sp, -1310
                  beq          a2, a1, 280f
                  sra          a6, s8, t2
                  bne          a3, s7, 271f
271:              or           s0, tp, a1
                  xori         a2, sp, -569
                  sub          gp, zero, s0
                  slti         sp, t5, 920
275:              sll          zero, t1, s7
                  add          s1, a2, s3
                  slt          ra, s9, s0
278:              addi         ra, s8, -938
                  ori          gp, s8, -1129
280:              sltiu        ra, a6, 273
                  and          t4, s9, a1
                  nop
                  ori          s0, a4, -66
                  addi         t1, s5, -1494
                  addi         a0, s0, -1592
                  sll          gp, s6, t4
                  srli         s11, a4, 2
                  srli         t2, a6, 26
                  or           a5, s0, a4
                  sltu         t1, s9, t1
                  nop
                  blt          a4, a0, 302f
                  bltu         s1, s2, 295f
                  andi         s8, s8, -1236
295:              sltiu        sp, s8, 26
                  sltiu        s1, s2, -195
                  xori         t2, a7, 1777
                  bltu         s4, s2, 316f
                  slti         s8, a6, 461
                  sra          a7, s4, s10
                  srai         gp, s10, 5
302:              andi         t5, s0, 1157
                  sll          t2, s9, s11
                  bge          a1, t0, 323f
                  bltu         t4, ra, 311f
                  sll          a7, a1, s2
                  addi         a0, gp, -559
                  nop
                  and          t5, t3, a5
                  sll          t6, s7, s6
311:              bne          t4, zero, 323f
                  and          s0, t5, t3
                  srli         sp, s2, 21
                  nop
                  beq          a1, sp, 317f
316:              bgeu         t1, s5, 320f
317:              blt          t5, a3, 330f
                  bge          s8, a2, 319f
319:              slti         s8, s6, -1373
320:              ori          sp, s2, -537
                  srli         a3, a3, 29
                  bltu         a4, t1, 342f
323:              xori         t1, s1, 1116
                  srli         a1, s5, 22
                  addi         tp, s7, -1067
                  srl          s10, tp, sp
                  ori          s10, a7, 1811
                  slt          s7, s8, t1
                  bge          a4, t3, 346f
330:              or           a3, sp, t4
                  and          s3, s8, s1
                  addi         s11, a5, -205
                  nop
                  beq          s2, a0, 336f
                  andi         a1, gp, 641
336:              and          t0, s11, tp
                  nop
                  addi         a2, a4, 82
                  slli         t5, a4, 11
                  auipc        a7, 568329
                  auipc        s0, 357126
342:              xor          s11, t4, a2
                  bltu         s5, tp, 361f
                  sltu         s10, ra, s2
                  lui          a3, 684731
346:              srai         zero, s7, 28
                  ori          s1, a0, 1940
                  lui          s4, 89225
                  bne          a2, s6, 350f
350:              xor          t2, t4, a0
                  sra          t6, a5, ra
                  bne          t0, a7, 366f
                  bgeu         a3, s1, 366f
                  bge          a4, a2, 365f
                  bne          a0, a5, 373f
                  xori         s6, s0, 368
                  srli         s9, t5, 8
                  auipc        t5, 792333
                  nop
                  bge          sp, a0, 365f
361:              sltiu        t1, a7, -34
                  slli         s8, s0, 25
                  bge          t6, t0, 373f
                  add          t0, s10, s7
365:              bge          a4, t6, 372f
366:              ori          a1, s7, 1389
                  bne          a0, ra, 379f
                  sltiu        t1, a5, -504
                  slli         tp, s4, 28
                  sltu         a6, a5, a3
                  sltu         s10, t2, s6
372:              bltu         a7, s9, 384f
373:              srai         gp, a6, 3
                  slti         a2, tp, -1604
                  sltiu        t1, s9, 687
                  xori         s0, t5, 865
                  slti         a2, s2, -1147
                  srl          tp, s11, t3
379:              srli         s10, ra, 17
                  xori         s7, t6, 1517
                  bge          a4, t3, 386f
                  sll          t0, t2, s0
                  ori          a2, s10, -854
384:              srli         s3, s10, 28
                  srai         s4, t5, 4
386:              beq          s6, a7, 405f
                  addi         s9, sp, 899
                  andi         s8, t6, 802
                  slt          ra, sp, s1
                  or           sp, t5, a1
                  addi         tp, a3, 382
                  addi         tp, s7, -54
                  sltiu        a0, tp, -271
                  nop
                  nop
                  bne          t4, s11, 400f
                  sltu         t1, a3, t1
                  srai         t0, gp, 7
                  addi         s11, a4, -342
400:              slt          t6, ra, a7
                  or           t5, zero, t0
                  bgeu         s7, a2, 410f
                  lui          t3, 624023
                  srli         zero, a4, 26
405:              slti         tp, a6, 1102
                  srl          t4, s5, s1
                  addi         s7, a2, -1850
                  sltu         t3, t1, sp
                  nop
410:              beq          s0, ra, 422f
                  blt          sp, s2, 414f
                  slti         t3, t1, -866
                  srli         a7, s3, 3
414:              blt          t1, a3, 422f
                  srl          a5, a3, s8
                  slt          t2, s8, s3
                  addi         a1, a0, 842
                  blt          a7, a3, 428f
                  add          s1, t2, s4
                  xor          t2, s7, s9
                  slt          tp, t1, s9
422:              bgeu         a4, sp, 440f
                  bgeu         ra, s6, 428f
                  srai         ra, s2, 31
                  blt          s3, zero, 435f
                  slt          t1, t0, s11
                  bne          s2, t4, 445f
428:              slt          a3, s0, s5
                  sll          sp, s5, s2
                  auipc        t2, 213810
                  srl          s9, a5, s2
                  bgeu         s5, s6, 444f
                  bne          t5, s6, 453f
                  bgeu         a3, zero, 438f
435:              and          s4, s6, t2
                  andi         tp, s11, 1744
                  bltu         t1, a3, 449f
438:              bgeu         t5, s2, 444f
                  slt          s9, s7, t4
440:              sll          s9, gp, t0
                  beq          s7, s0, 460f
                  nop
                  slti         a6, s6, 1371
444:              and          s8, s1, a7
445:              lui          ra, 994781
                  slt          a6, t3, a4
                  andi         t0, a7, 1190
                  slli         sp, s11, 2
449:              bge          gp, s5, 459f
                  addi         t3, s2, 217
                  blt          a7, s11, 464f
                  andi         s8, a2, 1871
453:              blt          s7, t2, 464f
                  bltu         s5, s6, 459f
                  srai         tp, gp, 22
                  srai         t1, t6, 9
                  addi         tp, s6, 1192
                  sra          a3, t5, s2
459:              bltu         s8, t1, 466f
460:              or           a3, t4, a1
                  slli         a0, s11, 27
                  or           gp, s5, t1
                  xor          s9, s10, a5
464:              add          zero, a5, a2
                  srli         a6, a2, 13
466:              sltiu        s8, gp, 1177
                  sltu         s6, s6, t4
                  sll          s10, gp, a1
                  xori         t6, a7, -438
                  slti         s1, t3, -1637
                  xori         a3, zero, -424
                  and          s1, s11, s1
                  sra          ra, a5, a3
                  slli         t4, zero, 29
                  or           s1, s10, a3
                  srl          t6, ra, t1
                  lui          s9, 666579
                  slli         s1, a5, 21
                  xori         t6, s7, 1318
                  xori         ra, zero, 503
                  srai         t4, s7, 23
                  srai         ra, t5, 20
                  xor          sp, sp, s0
                  bgeu         a5, s3, 486f
                  slli         s0, s10, 20
486:              slti         t2, a7, 1968
                  xor          s3, a7, gp
                  or           s9, tp, a1
                  nop
                  sra          s9, s0, s5
                  bltu         t0, a6, 492f
492:              lui          s3, 409001
                  bltu         a1, a4, 512f
                  bne          s7, t2, 506f
                  bge          a5, tp, 496f
496:              slti         t5, t2, 386
                  sll          gp, s7, s5
                  bge          t3, a0, 510f
                  slti         s10, gp, 484
                  add          s0, a6, a3
                  ori          t2, s0, 1360
                  srli         s0, t4, 1
                  blt          s1, tp, 511f
                  slti         zero, s1, -1882
                  add          s1, s9, a7
506:              srli         s9, a0, 28
                  slli         s9, gp, 25
                  and          s11, a4, zero
                  bltu         s11, sp, 523f
510:              sra          s9, a2, a4
511:              bltu         s1, t0, 529f
512:              bne          s7, s10, 529f
                  sltu         s10, sp, s9
                  bltu         s0, a4, 517f
                  beq          s2, zero, 517f
                  bltu         t6, t0, 524f
517:              sltiu        t0, t2, -346
                  addi         ra, t3, 1936
                  add          a2, s3, t3
                  srl          s10, a7, ra
                  sltiu        t4, s0, -1800
                  srl          a0, t3, t0
523:              nop
524:              srl          a1, s6, s11
                  srl          a7, s10, t2
                  slti         s8, t6, 562
                  slt          a7, a2, s11
                  sll          a5, s10, s4
529:              srl          t3, s7, a7
                  sra          a0, a7, a7
                  nop
                  srai         zero, sp, 7
                  and          s1, zero, s6
                  slt          t6, t3, s1
                  xori         s4, a5, -1698
                  sll          a0, a3, t3
                  bne          a6, a6, 555f
                  xori         t6, a5, 2025
                  and          s1, a7, a3
                  srai         t1, a7, 16
                  xor          sp, t6, s1
                  slti         a6, s6, -1098
                  sll          sp, a1, s5
                  beq          a0, a3, 557f
                  sltiu        s7, a4, 1361
                  ori          ra, s10, -204
                  bge          zero, t1, 551f
                  beq          s8, s9, 558f
                  bne          s0, sp, 550f
550:              srli         a1, s7, 25
551:              slli         t1, s3, 1
                  beq          s4, a0, 557f
                  srai         s8, t3, 21
                  bne          s3, gp, 574f
555:              sltu         s1, t2, a7
                  srai         a5, a2, 20
557:              sll          a0, a3, zero
558:              and          t5, t2, a4
                  sub          a6, t3, sp
                  bne          s8, a0, 568f
                  sll          gp, a4, s4
                  add          zero, t2, a1
                  slti         zero, t2, 1058
                  add          sp, s2, t3
                  addi         s3, s4, -192
                  nop
                  xori         a7, a3, -609
568:              slli         a0, a7, 22
                  blt          sp, s10, 571f
                  or           t5, a0, t5
571:              beq          a0, s6, 574f
                  auipc        a3, 262592
                  and          s11, gp, ra
574:              slli         s8, a4, 31
                  sll          s10, t2, s10
                  xor          t0, t0, s0
                  blt          s10, t0, 589f
                  srli         a3, s4, 1
                  add          t2, t1, s8
                  xori         a0, s3, -728
                  sltu         tp, s5, s4
                  xori         zero, a3, -1065
                  xori         s11, t6, -86
                  nop
                  auipc        t5, 477103
                  ori          a1, s5, -378
                  addi         ra, t6, -477
                  andi         t4, t5, 1727
589:              lui          a0, 403029
                  ori          s10, gp, 1633
                  xor          t5, s10, s2
                  auipc        a6, 898788
                  auipc        ra, 476328
                  srl          t3, s9, ra
                  sll          tp, t5, tp
                  bne          s11, t5, 609f
                  blt          t1, ra, 609f
                  srli         s6, a1, 2
                  sra          a1, t5, a4
                  sll          s4, t0, a4
                  and          t4, t2, s0
                  or           s11, a7, s1
                  srl          a0, t1, a2
                  nop
                  andi         s10, s0, -696
                  and          a2, s4, a4
                  sll          ra, ra, sp
                  bge          t2, t6, 619f
609:              sub          t4, sp, tp
                  srli         sp, s3, 4
                  bltu         a1, s0, 619f
                  bltu         s8, t6, 619f
                  srl          s9, t5, t0
                  lui          s9, 67362
                  srai         zero, s2, 27
                  add          ra, s6, a6
                  nop
                  and          s6, a0, a6
619:              sltu         t5, s9, a2
                  bne          a2, zero, 639f
                  sltu         t3, t6, ra
                  lui          t1, 579942
                  or           ra, s8, t3
                  or           gp, a1, s7
                  srli         t2, s4, 28
                  sltiu        a5, a5, -1660
                  sub          a1, t2, s2
                  bgeu         t1, a0, 630f
                  bge          a2, t0, 648f
630:              and          s9, a6, a4
                  auipc        a0, 520778
                  sra          s11, s3, t2
                  nop
                  blt          a3, t4, 646f
                  sub          a0, s5, a3
                  bgeu         s2, s5, 646f
                  lui          zero, 742322
                  slt          s10, ra, tp
639:              andi         s1, tp, -1736
                  andi         s3, a6, -1655
                  sra          a0, s6, s1
                  andi         zero, s0, -1111
                  bge          sp, zero, 656f
                  and          s3, s4, t2
                  blt          t4, s3, 649f
646:              sra          s1, zero, a7
                  xori         t4, a2, -1935
648:              sltu         s8, a3, s8
649:              blt          a7, s5, 663f
                  or           a6, s7, t6
                  beq          s10, t4, 652f
652:              andi         a5, zero, -1463
                  blt          a0, a1, 665f
                  bltu         t4, ra, 660f
                  slti         gp, s4, -70
656:              beq          s0, a3, 674f
                  bge          s7, a6, 662f
                  slt          s10, a3, s4
                  xor          tp, gp, a0
660:              sub          a5, a7, sp
                  andi         s4, s6, -509
662:              add          sp, a1, sp
663:              sub          a2, s7, a4
                  slti         t2, sp, 1898
665:              or           a2, s1, a7
                  srl          zero, t6, s9
                  add          tp, sp, tp
                  or           s9, a6, a2
                  sltiu        s11, t3, 491
                  sub          a5, s7, a7
                  blt          t5, zero, 689f
                  bne          zero, t0, 689f
                  lui          gp, 277727
674:              sltu         gp, a5, t2
                  srl          s8, t4, t3
                  or           t3, tp, a4
                  srl          t2, s8, s7
                  add          s10, s2, t5
                  slt          t2, s0, s11
                  sra          s0, t2, tp
                  or           t1, s8, a2
                  blt          s4, t4, 700f
                  xor          t5, tp, t1
                  srli         a0, s8, 0
                  bgeu         t3, t5, 689f
                  sltu         s3, t2, t2
                  add          a7, tp, s9
                  sub          s4, t6, s9
689:              slli         t2, a3, 6
                  sltiu        s7, s4, 352
                  sltiu        s7, ra, 1724
                  slti         tp, sp, 213
                  lui          s1, 975056
                  sub          t2, s10, a3
                  srl          s6, gp, gp
                  add          a5, sp, a6
                  srl          zero, t6, sp
                  xori         s7, sp, 352
                  srli         a3, s10, 22
700:              andi         a5, zero, -573
                  bltu         t2, a0, 713f
                  and          s3, s1, zero
                  sll          a1, s3, s2
                  bge          t0, a3, 709f
                  srl          s4, s11, t4
                  auipc        t2, 607874
                  add          s11, s11, t3
                  xori         t1, s5, 575
709:              sra          a3, t3, s3
                  nop
                  sltu         s11, t6, a1
                  or           t6, s2, t6
713:              ori          s8, s4, 1131
                  bne          t1, s9, 732f
                  auipc        s6, 539358
                  bgeu         ra, sp, 717f
717:              xor          a7, t4, t6
                  slt          a6, t6, a7
                  auipc        a1, 274191
                  bne          a1, a0, 732f
                  slti         s6, tp, 646
                  xori         t2, t1, 837
                  add          a7, a1, t4
                  sltu         s11, s3, t1
                  sub          s0, a4, a1
                  slli         a5, sp, 3
                  bgeu         gp, s9, 744f
                  sltu         t1, t3, s9
                  xor          t5, gp, s4
                  sltu         t2, s2, t1
                  sll          s4, a1, gp
732:              srai         s9, s1, 29
                  slti         t0, sp, 639
                  beq          a3, a1, 742f
                  sll          a0, t2, a2
                  add          a0, t5, s2
                  auipc        s10, 845337
                  sub          a5, gp, s1
                  ori          a3, ra, -1111
                  and          t2, a5, ra
                  srli         s6, s9, 28
742:              bgeu         ra, t5, 749f
                  andi         t1, a1, -29
744:              sltu         a2, a4, a4
                  slt          s8, a6, s8
                  slti         ra, t3, -23
                  and          t5, s8, s11
                  and          s0, t2, s7
749:              srl          gp, t5, ra
                  bltu         s10, t1, 763f
                  andi         s0, zero, -1343
                  blt          a3, t3, 756f
                  andi         s3, a1, 322
                  slt          s3, s9, a0
                  slli         t1, zero, 21
756:              bne          gp, s2, 760f
                  beq          a6, a6, 775f
                  andi         a5, s6, -1111
                  bltu         gp, s2, 769f
760:              nop
                  lui          s6, 408969
                  srli         s3, ra, 26
763:              bgeu         s3, t2, 776f
                  lui          t3, 463698
                  sub          t6, s3, a4
                  bgeu         s5, t0, 776f
                  addi         a5, s6, -2039
                  srl          a2, ra, s5
769:              slt          t1, a5, gp
                  addi         a5, s6, -1023
                  addi         s9, a2, 1252
                  sll          t3, a3, a6
                  srli         a7, s1, 7
                  ori          s7, t2, 1737
775:              auipc        t4, 765680
776:              ori          s10, a6, -1860
                  sll          s9, s10, s9
                  lui          s11, 281549
                  beq          t5, ra, 798f
                  slt          a5, s1, t6
                  sltiu        s9, s10, -1530
                  bge          t3, s4, 794f
                  srai         s10, s5, 12
                  srl          s10, s10, a6
                  nop
                  bgeu         a5, a3, 806f
                  xor          t5, zero, s9
                  bge          t5, a2, 793f
                  srai         s1, s7, 8
                  blt          tp, s9, 798f
                  andi         a5, s8, -725
                  blt          a5, s2, 794f
793:              srl          s11, s9, tp
794:              sll          t5, t2, t2
                  xori         s6, t6, 366
                  xori         t6, s7, 116
                  slt          s4, s7, s4
798:              srli         a0, t4, 24
                  sll          s7, t5, s3
                  sub          s9, s3, zero
                  nop
                  sub          t3, s0, gp
                  sra          s7, a3, a1
                  srai         t1, t4, 27
                  addi         a5, ra, -1737
806:              bge          a6, s0, 807f
807:              slli         a3, s9, 0
                  xori         a3, s8, -395
                  slti         s4, t4, 345
                  addi         a5, s9, 934
                  xori         t4, a3, 1078
                  slli         ra, a5, 5
                  lui          zero, 512251
                  ori          a7, t1, -1107
                  nop
                  slti         s1, a5, -616
                  srai         ra, t6, 7
                  blt          s6, t6, 837f
                  sra          a3, s4, a1
                  addi         t5, t3, 150
                  bne          s11, zero, 833f
                  bge          s5, s0, 840f
                  nop
                  xori         gp, sp, 1996
                  bgeu         s0, s11, 831f
                  slti         a6, ra, -129
                  ori          s1, s5, 1131
                  bltu         s8, s9, 831f
                  sltu         zero, t1, sp
                  auipc        t2, 906606
831:              sub          a6, t0, s0
                  blt          t4, t3, 846f
833:              slt          a0, s5, t1
                  ori          a3, s10, 314
                  and          s9, s6, s8
                  addi         s10, sp, -17
837:              bne          ra, a5, 848f
                  sra          t3, a1, tp
                  add          gp, a3, a4
840:              lui          a0, 413271
                  or           t6, t4, s1
                  xori         s8, zero, 1055
                  auipc        s4, 344017
                  add          t4, t5, s8
                  bne          s8, ra, 847f
846:              sub          s6, t0, sp
847:              xor          tp, a0, s6
848:              bltu         a5, a3, 853f
                  auipc        s8, 492979
                  auipc        t0, 604587
                  bltu         a2, s7, 853f
                  slti         s7, s6, -1958
853:              lui          s0, 899472
                  sll          t6, s5, t4
                  xor          t6, t4, t0
                  and          s8, a6, zero
                  and          t1, s3, zero
                  lui          s8, 563907
                  and          zero, s6, s10
                  addi         s9, tp, 373
                  srli         t6, sp, 12
                  beq          s11, gp, 874f
                  srai         s1, s8, 29
                  andi         a7, a0, -43
                  lui          sp, 719948
                  sub          t0, t4, s5
                  srli         s3, s10, 8
                  slti         s0, t0, -1716
                  bltu         s2, ra, 881f
                  nop
                  bge          ra, a4, 879f
                  bne          a7, a5, 880f
                  bgeu         s7, s0, 880f
874:              lui          s10, 58158
                  slt          tp, gp, a5
                  bgeu         gp, a3, 894f
                  srli         tp, s6, 1
                  xor          tp, t1, tp
879:              slti         s9, t3, -521
880:              slti         s4, a2, 1772
881:              xor          gp, a5, t0
                  slti         s11, a5, 1891
                  addi         s10, a6, -1960
                  or           ra, t2, t2
                  slli         a6, a3, 19
                  or           t4, s0, s11
                  slt          t5, s0, a7
                  bne          s6, s4, 901f
                  srli         s7, t4, 9
                  or           s4, ra, a7
                  or           a7, s9, s1
                  bltu         s6, t0, 904f
                  blt          s9, s5, 912f
894:              lui          sp, 978189
                  bge          t2, ra, 901f
                  sltiu        s7, gp, 708
                  blt          s7, s5, 900f
                  sltu         t4, s6, s5
                  bltu         t1, s9, 919f
900:              andi         a1, s11, -1953
901:              srl          t3, a2, t5
                  andi         t1, s1, 713
                  xor          s0, s7, ra
904:              ori          zero, s3, 1256
                  addi         t1, s7, 1213
                  xor          s4, zero, s1
                  sltiu        a3, a6, -1974
                  bne          s6, a1, 910f
                  sltu         s4, ra, s4
910:              xor          s3, gp, a6
                  xori         t0, tp, -1411
912:              and          s0, tp, a7
                  auipc        s8, 96556
                  slli         a3, s9, 15
                  addi         a3, a4, -833
                  add          t5, t6, t5
                  slt          a1, tp, t5
                  slli         s1, t2, 9
919:              or           s4, a6, a0
                  nop
                  nop
                  blt          a6, a0, 933f
                  blt          a1, ra, 933f
                  srli         a5, s1, 28
                  lui          t6, 750217
                  blt          sp, t0, 930f
                  bltu         t6, tp, 941f
                  slt          a2, t0, t5
                  srl          s11, s5, s5
930:              sll          ra, a4, t1
                  bne          a0, t0, 948f
                  sub          s0, a1, t2
933:              bge          gp, s2, 951f
                  bne          s8, a0, 952f
                  sltu         tp, s7, s1
                  and          t1, s3, s0
                  blt          a1, s4, 942f
                  sub          t4, s8, s6
                  ori          a5, s2, 552
                  ori          a3, gp, -1380
941:              bgeu         t6, a6, 953f
942:              bltu         s6, a2, 943f
943:              sub          a6, t6, s11
                  sll          a0, s6, t4
                  ori          s9, s6, 717
                  sub          t6, t6, a1
                  andi         s8, a1, -855
948:              sll          a0, t3, s9
                  and          t0, a7, s1
                  xori         a0, a6, 714
951:              or           s3, s8, a6
952:              srl          t6, s5, s6
953:              slt          gp, s9, s9
                  bgeu         a7, a4, 967f
                  sra          a1, a5, t5
                  srli         s7, a1, 29
                  sub          s8, t0, t2
                  and          zero, s6, a3
                  srai         a6, t5, 28
                  bltu         s5, s9, 970f
                  sltu         t5, tp, t5
                  sub          t6, s11, a4
                  and          a6, t4, a2
                  srai         t4, s1, 30
                  auipc        s8, 785137
                  beq          s4, t2, 967f
967:              srli         t4, s11, 13
                  add          a0, a4, a1
                  blt          s1, s0, 988f
970:              beq          s5, t2, 974f
                  xor          s9, tp, a1
                  sltiu        s4, t0, -1434
                  slti         a0, gp, 1381
974:              andi         gp, a4, -1267
                  or           ra, a5, a5
                  xori         t3, t1, -1200
                  srai         s3, a1, 14
                  srl          a7, s2, a0
                  auipc        t0, 637379
                  or           t5, s5, s10
                  srai         s0, s2, 16
                  andi         s3, s5, -42
                  ori          tp, tp, 655
                  lui          t2, 261256
                  bltu         s4, t6, 987f
                  bne          ra, gp, 990f
987:              sltiu        t1, t0, -1309
988:              sra          s9, s3, a1
                  beq          s10, s4, 992f
990:              auipc        zero, 913505
                  slli         s8, s1, 18
992:              and          a0, s11, a5
                  lui          t3, 423225
                  ori          tp, s4, -1677
                  andi         t5, s11, -200
                  xori         s9, s7, -75
                  sltu         s11, s8, s6
                  ori          t3, t3, 1951
                  bgeu         a1, t1, 1013f
                  add          s1, s10, sp
                  addi         t0, s11, 451
                  lui          a2, 514638
                  nop
                  bltu         s8, a2, 1017f
                  slt          s7, s5, s8
                  sll          s3, t6, s0
                  slti         t5, s5, -516
                  bne          ra, a7, 1020f
                  sub          zero, a0, tp
                  slt          t6, a1, t5
                  sltu         a3, a3, t6
                  lui          s3, 120006
1013:             andi         t2, s1, -530
                  or           t3, gp, a3
                  srai         t2, ra, 7
                  ori          zero, s2, -1448
1017:             xor          a3, s1, a3
                  bne          t4, s11, 1036f
                  srl          s1, zero, s5
1020:             xor          s1, s11, s9
                  or           a0, t5, s7
                  beq          a0, s3, 1028f
                  lui          a1, 934837
                  sra          s1, s4, t3
                  bgeu         a4, s2, 1043f
                  auipc        s11, 468264
                  nop
1028:             sltu         s6, t6, s2
                  nop
                  bge          a6, s3, 1038f
                  srai         t0, s9, 6
                  add          s4, gp, t0
                  srli         zero, s6, 5
                  blt          s0, s11, 1036f
                  addi         t2, s2, 1198
1036:             auipc        a2, 466433
                  srai         gp, ra, 7
1038:             bgeu         s8, t2, 1051f
                  auipc        t0, 26811
                  andi         s11, a0, 1067
                  slli         a3, t4, 20
                  addi         tp, sp, 1428
1043:             auipc        t5, 497232
                  xor          t2, t5, a0
                  srli         ra, t3, 14
                  sltu         s4, s10, a0
                  sltiu        s4, a2, 1143
                  bltu         a5, t3, 1067f
                  xor          t4, a2, a6
                  and          tp, t2, tp
1051:             xor          gp, a5, s0
                  xor          s11, s0, s0
                  blt          gp, s2, 1065f
                  srl          s7, a4, t5
                  ori          t2, sp, -333
                  and          s11, s11, a3
                  slt          a2, s11, t6
                  slti         a5, s11, -1141
                  sll          s0, zero, a2
                  addi         t5, a1, -1527
                  srli         s0, a0, 7
                  bltu         t4, t3, 1063f
1063:             sltiu        t1, tp, 1770
                  slt          a6, s11, t4
1065:             lui          sp, 15017
                  nop
1067:             or           s7, tp, a6
                  sltiu        s4, s9, 1589
                  srl          s1, t3, s2
                  slt          a5, s4, s2
                  lui          s6, 768404
                  addi         s3, s11, -1071
                  and          a2, t0, a3
                  srai         s9, a4, 10
                  slli         zero, a7, 3
                  beq          s8, s0, 1088f
                  xor          sp, a6, a3
                  bne          s1, s11, 1083f
                  bltu         t2, s9, 1089f
                  ori          tp, t2, -798
                  sltu         s9, gp, s0
                  sltu         a3, s4, s0
1083:             srli         t4, t1, 28
                  andi         s11, tp, -628
                  ori          tp, s7, -1016
                  slti         a5, zero, -1626
                  slti         t5, t3, 695
1088:             bge          t4, t0, 1099f
1089:             andi         a2, a0, -1730
                  bltu         t0, t1, 1095f
                  srl          s1, t6, t6
                  xor          s10, gp, a2
                  lui          s8, 387399
                  sra          a6, t2, s0
1095:             srl          s7, t4, t0
                  xori         t4, a1, 864
                  srai         gp, a7, 7
                  bgeu         t3, s1, 1102f
1099:             or           t3, t2, a0
                  sll          a2, s4, ra
                  bne          s2, a7, 1111f
1102:             slti         a5, a5, 412
                  sltiu        tp, a1, 302
                  slt          zero, sp, a2
                  xor          s4, s9, a2
                  xori         t3, s11, -1280
                  ori          a7, s3, 825
                  srai         t3, t5, 22
                  auipc        ra, 575996
                  slli         a2, s2, 12
1111:             slli         s6, s10, 25
                  sub          a0, t3, gp
                  sltu         s3, a3, a0
                  sltiu        a1, s10, -622
                  ori          t5, s4, -1672
                  auipc        s1, 352406
                  sll          s4, s4, a1
                  sltu         s1, s8, s0
                  bge          zero, a5, 1127f
                  bne          a7, a7, 1132f
                  or           a0, a3, s10
                  andi         a3, t6, 872
                  bne          s6, a7, 1124f
1124:             srli         tp, s4, 27
                  xor          a0, ra, a5
                  or           s10, s2, a2
1127:             and          a2, a5, s1
                  blt          a3, s5, 1145f
                  sltiu        s7, s7, -550
                  beq          a0, a5, 1149f
                  blt          s3, s4, 1138f
1132:             sra          s8, t1, t3
                  srai         s10, t5, 18
                  addi         s1, t4, -888
                  addi         ra, tp, 603
                  beq          s10, gp, 1156f
                  xori         s8, s10, 1640
1138:             bltu         a7, t0, 1156f
                  slti         a0, s5, 921
                  andi         a1, gp, -1863
                  blt          t0, s7, 1144f
                  sltiu        zero, a4, 1605
                  add          t3, s10, t3
1144:             xori         a7, t2, 1229
1145:             auipc        t1, 351677
                  slti         s9, t4, 232
                  or           tp, t2, s8
                  lui          t4, 277189
1149:             or           a5, a7, s1
                  addi         s1, t2, 1327
                  ori          a7, s4, -510
                  or           a6, s8, a6
                  and          s7, t0, s0
                  srl          t6, s4, zero
                  blt          zero, t1, 1166f
1156:             blt          sp, a2, 1163f
                  sll          zero, s4, a2
                  bltu         a3, gp, 1159f
1159:             or           s0, a1, s5
                  bne          a4, t4, 1178f
                  add          sp, a1, s11
                  srli         a5, a3, 12
1163:             srai         zero, s11, 31
                  andi         s8, zero, 1110
                  and          s11, s2, a0
1166:             add          gp, t1, a7
                  bgeu         sp, a7, 1173f
                  lui          zero, 364956
                  srai         t3, s8, 16
                  blt          a5, s5, 1178f
                  sltu         a5, tp, s5
                  bge          s10, zero, 1192f
1173:             add          zero, t1, a6
                  or           t3, ra, s0
                  sltu         tp, s4, s9
                  slli         a5, s8, 22
                  or           sp, a4, a2
1178:             sll          zero, s7, s3
                  bne          sp, s11, 1181f
                  srai         gp, s0, 20
1181:             bne          s6, s9, 1194f
                  nop
                  blt          sp, t1, 1188f
                  sltu         a2, s3, t5
                  bltu         s10, zero, 1198f
                  xor          a3, t3, t5
                  xor          a5, zero, a6
1188:             nop
                  bgeu         a0, t1, 1194f
                  or           a7, ra, s5
                  bge          s11, s3, 1208f
1192:             beq          t4, sp, 1196f
                  slti         s9, gp, 427
1194:             srli         a1, t0, 3
                  or           tp, t2, s5
1196:             sra          a7, a6, a5
                  xori         a0, a3, 1793
1198:             xori         t4, s6, -1206
                  srl          t5, tp, a0
                  addi         s7, a2, -1643
                  sra          t2, tp, a7
                  xor          ra, zero, s0
                  bltu         zero, t5, 1213f
                  bgeu         a0, t3, 1222f
                  bltu         s8, a6, 1213f
                  sll          s0, s8, s2
                  add          ra, t1, s8
1208:             srai         s11, a2, 28
                  bge          t4, a2, 1221f
                  or           a3, a4, t0
                  sra          zero, s10, s9
                  bge          a4, s10, 1222f
1213:             sltu         a0, s0, a2
                  add          a6, a1, tp
                  bge          s11, s10, 1234f
                  and          s6, a4, a1
                  xor          zero, gp, s10
                  slti         t1, s9, -856
                  srai         s10, s10, 3
                  auipc        s6, 490712
1221:             andi         a7, t4, -1141
1222:             or           a0, s10, t0
                  sltiu        s0, s8, -749
                  bgeu         s7, t0, 1226f
                  bltu         t0, s1, 1237f
1226:             or           gp, s11, s3
                  sra          a7, s9, ra
                  sltiu        a1, s0, -1795
                  sltu         s0, s10, ra
                  sltu         a6, t4, s8
                  bltu         s0, t5, 1250f
                  xori         s1, a0, 1178
                  srai         a7, a3, 21
1234:             srai         a6, s3, 21
                  add          tp, s8, s3
                  slti         a0, s6, 1815
1237:             sub          s11, a0, s9
                  add          a5, t2, gp
                  slti         t1, t5, -317
                  auipc        gp, 381562
                  andi         sp, t1, -1699
                  sltiu        gp, s5, -251
                  addi         s4, t4, -1745
                  sltiu        a6, t2, -1188
                  or           t2, t2, gp
                  nop
                  sll          a3, t6, ra
                  srl          t2, s10, t5
                  bne          t0, t5, 1250f
1250:             sra          s0, a5, a5
                  lui          s4, 708712
                  srli         ra, s7, 31
                  slli         tp, s7, 12
                  slti         s3, a3, -1844
                  srli         s11, s10, 26
                  bne          tp, t2, 1270f
                  nop
                  bltu         t2, s3, 1262f
                  sltu         a5, a2, s11
                  srli         zero, t0, 27
                  srl          a2, s6, t5
1262:             bgeu         s1, ra, 1274f
                  add          a3, t5, t6
                  sra          ra, s1, a4
                  slt          s6, t0, s3
                  xor          t0, t6, a6
                  auipc        a6, 549339
                  bne          t1, t2, 1286f
                  and          ra, t3, s7
1270:             xori         a6, s10, -1461
                  srai         t5, s1, 4
                  slli         a6, s4, 6
                  add          s9, t5, s8
1274:             nop
                  sll          t2, s10, s3
                  slti         a3, t3, -1732
                  srai         s10, s1, 28
                  add          a1, s11, a6
                  addi         s6, a0, 638
                  xori         a0, a1, 1679
                  srli         sp, s3, 22
                  srai         s10, t5, 4
                  lui          s0, 717131
                  srai         s8, a0, 23
                  xor          s1, a6, sp
                  xori         a7, sp, -91
                  srl          sp, s9, a7
                  auipc        s3, 578635
                  srl          s9, s4, ra
                  sltiu        ra, s6, 335
sub_2_j4:         jal          ra, sub_3 #jump sub_2 -> sub_3
                  sll          s0, a2, s9
                  or           t3, t6, t0
                  srli         s1, t4, 21
                  bne          s3, zero, 1296f
                  xori         a3, a3, 1358
1286:             bgeu         s3, t1, 1296f
                  addi         a1, t6, 1920
                  and          t3, ra, s10
                  srai         s9, sp, 25
                  xor          s9, s5, a3
                  srl          s7, a2, ra
                  and          t3, s1, t5
                  lui          s10, 78085
                  xori         t6, t2, -208
                  nop
1296:             srai         t6, a0, 8
                  sltiu        s8, a6, 1931
                  bge          a2, t6, 1312f
                  sltiu        s7, zero, 685
                  srli         t6, s9, 5
                  bne          a0, t0, 1304f
                  sltiu        s1, s3, 936
                  and          t5, s0, a1
1304:             nop
                  nop
                  sub          a3, a7, tp
                  srli         ra, gp, 27
                  bltu         a2, s9, 1326f
                  sub          t1, s8, ra
                  slti         t1, s9, 147
                  blt          s0, s8, 1329f
1312:             ori          sp, s8, 1382
                  bgeu         a0, s8, 1326f
                  sra          s0, t1, s6
                  sra          t0, t2, s3
                  slli         s10, t6, 31
                  blt          s7, t6, 1330f
                  bltu         s3, s4, 1320f
                  sra          s6, t0, s4
1320:             andi         s7, s10, -471
                  bne          s3, s3, 1322f
1322:             addi         ra, s3, -1982
                  xori         s6, a7, -1167
                  add          a5, s8, s6
                  sll          t3, t1, s11
1326:             or           s0, s5, t5
                  lui          t6, 317384
                  bgeu         t6, t5, 1335f
1329:             bge          tp, s7, 1330f
1330:             beq          t4, s7, 1348f
                  andi         s3, gp, 446
                  or           ra, t4, t2
                  sub          s7, gp, t0
                  srli         t4, a0, 8
1335:             nop
                  or           a6, s10, t3
                  slli         s0, a4, 1
                  beq          t6, s2, 1346f
                  addi         s8, s5, 822
                  ori          t1, s7, 310
                  sub          s10, t2, s2
                  ori          s1, s2, 852
                  srli         t4, s6, 3
                  add          ra, s5, t0
                  auipc        s8, 658489
1346:             sub          s8, s10, s4
                  or           sp, a6, s9
1348:             lui          sp, 384305
                  sltiu        s9, gp, -653
                  slt          t2, t6, t2
                  sra          t4, s0, s10
                  slti         a5, sp, 211
                  bne          s2, s1, 1357f
                  nop
                  auipc        s0, 1019109
                  sltiu        t6, s7, -609
1357:             xori         t4, s3, 199
                  auipc        a3, 774851
                  or           s10, s8, t6
                  beq          s6, s7, 1372f
                  xor          a2, t5, s3
                  srl          a2, t1, s2
                  bne          a7, a0, 1375f
                  blt          s5, a4, 1375f
                  srl          t0, a4, s6
                  sub          s9, a0, s4
                  or           sp, s4, t3
                  bgeu         t1, t5, 1385f
                  or           a7, s4, a5
                  ori          t1, s10, 1055
                  srli         ra, a2, 22
1372:             bge          s4, a6, 1380f
                  lui          a3, 762201
                  slli         s6, s7, 23
1375:             addi         t1, a4, 1104
                  bltu         s6, a0, 1388f
                  beq          s8, s4, 1381f
                  lui          t5, 754182
                  xori         t4, s2, -1895
1380:             andi         s7, s5, 603
1381:             bgeu         a4, s5, 1400f
                  bne          sp, a5, 1387f
                  srai         sp, t6, 29
                  slt          t0, s10, s2
1385:             bltu         a2, a5, 1391f
                  slt          s10, t3, a4
1387:             andi         a5, t6, 1374
1388:             sltiu        a0, s7, 1089
                  sub          s6, a2, t5
                  bltu         t5, s2, 1410f
1391:             ori          sp, t4, -1734
                  nop
                  slli         s9, s9, 5
                  blt          s4, s4, 1399f
                  sltiu        s6, s1, -313
                  auipc        a0, 364775
                  slti         s10, s10, -1812
                  slli         ra, t2, 12
1399:             srli         t4, a0, 14
1400:             bne          t5, a7, 1412f
                  addi         zero, s5, -1180
                  srl          sp, s4, s0
                  lui          a5, 153828
                  slt          s1, gp, gp
                  ori          s9, a6, 1892
                  auipc        s10, 388939
                  bge          zero, s9, 1409f
                  slt          t4, a4, t2
1409:             add          s8, s11, a2
1410:             blt          a5, a7, 1420f
                  slti         s10, s6, 989
1412:             slt          s9, ra, a5
                  srl          t5, s9, s3
                  slli         a6, a2, 2
                  sltu         t1, s11, s8
                  slt          t5, s9, s3
                  sll          s7, t6, t5
                  srli         sp, s2, 18
                  srl          a2, a4, gp
1420:             xori         t1, ra, 851
                  slti         a3, gp, 658
                  slli         t0, a6, 3
                  ori          s11, s4, 1666
                  slti         s8, a2, 374
                  addi         t5, s3, 2009
                  srl          t3, gp, s4
                  sra          s8, sp, a4
                  sltiu        s6, a5, -113
                  bltu         zero, t2, 1448f
                  nop
                  srl          a0, s3, s10
                  xori         t0, tp, 231
                  or           s11, t3, s5
                  srl          t6, s3, s11
                  blt          a4, t2, 1447f
                  xor          t1, s10, t1
                  bne          t3, a1, 1449f
                  sltu         ra, s8, t5
                  srli         t0, a3, 23
                  and          a6, a2, s11
                  srli         tp, sp, 3
                  xor          s4, a7, a5
                  slli         a0, s3, 22
                  and          s0, ra, s1
                  slti         t4, sp, -449
                  bgeu         t1, t6, 1466f
1447:             slli         a7, s7, 26
1448:             and          s7, s6, t5
1449:             or           s6, t4, s11
                  sub          s9, zero, sp
                  add          ra, s1, s1
                  slti         a6, t3, -1747
                  slt          a0, t2, s6
                  srai         a0, s0, 17
                  ori          s6, ra, 1058
                  ori          t0, zero, 850
                  addi         t3, s4, 975
                  and          s7, s9, s5
                  slli         t0, gp, 8
                  andi         zero, gp, 1595
                  and          a7, t1, a2
                  slli         a6, s2, 3
                  ori          s0, s3, 1540
                  blt          s2, a5, 1472f
                  nop
1466:             and          gp, ra, a0
                  bge          s11, s1, 1477f
                  srai         s8, a2, 4
                  blt          a5, t6, 1471f
                  xori         t5, s6, -1355
1471:             beq          s10, t0, 1472f
1472:             xori         a0, s2, 523
                  beq          zero, s6, 1480f
                  nop
                  andi         gp, s0, 250
                  and          zero, t6, zero
1477:             sltiu        tp, gp, 1182
                  xor          a7, t5, zero
                  slti         s10, s7, -388
1480:             addi         a5, s5, -1415
                  andi         s11, s1, -1208
                  beq          tp, a5, 1488f
                  slt          a3, sp, a7
                  sra          gp, a2, a6
                  auipc        ra, 397201
                  and          a6, s5, sp
                  bltu         t3, t5, 1499f
1488:             auipc        tp, 832089
                  sub          a2, s7, s5
                  srli         s3, s11, 27
                  sra          zero, t6, t6
                  srl          a5, a3, s5
                  slt          t3, s2, t4
                  sub          a6, a4, s5
                  bge          a6, a0, 1508f
                  sltu         s3, t4, s7
                  ori          sp, a0, 974
                  slti         a2, a6, 690
1499:             add          s1, s4, s5
                  bltu         s9, s5, 1505f
                  andi         t2, s4, 774
                  beq          a0, t1, 1504f
                  beq          t3, ra, 1517f
1504:             slli         s6, t5, 29
1505:             auipc        a3, 478116
                  blt          s6, s4, 1517f
                  srl          s4, s10, t4
1508:             nop
                  slt          t0, t5, t6
                  ori          a6, t2, -1220
                  bgeu         s7, s5, 1529f
                  slti         s3, s5, -879
                  beq          t6, gp, 1521f
                  addi         t2, t6, -491
                  slt          s4, s7, a6
                  slti         a6, t3, -622
1517:             sltiu        t3, t4, -960
                  bne          s2, t0, 1522f
                  bgeu         t4, a4, 1538f
                  blt          s9, t6, 1538f
1521:             add          tp, s8, a0
1522:             slt          zero, tp, a1
                  sra          a1, a2, a1
                  add          s6, ra, a7
                  srai         s1, sp, 13
                  sub          t3, t1, t2
                  xori         s3, a1, 426
                  ori          a2, a5, 2013
1529:             auipc        s1, 525981
                  sll          t4, s6, t4
                  auipc        s0, 140254
                  nop
                  add          t6, t6, tp
                  bltu         s1, t1, 1538f
                  add          t0, s7, t0
                  addi         s4, a4, -1178
                  bltu         t5, t5, 1550f
1538:             sltu         s7, ra, s3
                  bltu         t1, s0, 1540f
1540:             sltiu        sp, s9, -1360
                  sltu         t0, s5, a6
                  ori          t6, s0, -1598
                  blt          s3, s6, 1560f
                  nop
                  xori         s1, a4, 77
                  addi         t6, a2, 238
                  slli         a3, s8, 3
                  nop
                  bge          t1, s3, 1567f
1550:             xori         t1, a4, 920
                  srli         a7, sp, 29
                  add          t2, a6, s4
                  slti         s1, s10, -757
                  srai         a7, s4, 28
                  nop
                  sra          t3, a3, s9
                  auipc        zero, 152918
                  add          a5, a3, t3
                  andi         t6, zero, 1244
1560:             sltu         a2, s4, t2
                  blt          a5, zero, 1573f
                  and          sp, a3, t3
                  sll          a1, a2, a6
                  srl          t4, t3, a4
                  bltu         t3, s8, 1568f
                  lui          s1, 18054
1567:             andi         s9, s8, -1219
1568:             add          t2, s6, s10
                  ori          a6, a6, 2046
                  srl          t6, a7, s5
                  and          t6, s2, a3
                  nop
1573:             and          s9, s10, s0
                  sra          a5, s7, s7
                  bgeu         s6, s5, 1580f
                  bge          a1, a0, 1586f
                  srl          a6, sp, s4
                  nop
                  or           a1, a3, a3
1580:             bne          s6, sp, 1599f
                  andi         ra, t1, -259
                  lui          t3, 989747
                  sub          s0, s1, s11
                  srl          gp, t0, s10
                  bge          s1, s3, 1597f
1586:             beq          s8, t1, 1596f
                  auipc        s9, 998821
                  bge          s7, s5, 1591f
                  and          t3, a5, s9
                  bge          t0, s5, 1603f
1591:             lui          tp, 521679
                  nop
                  srli         sp, s6, 24
                  sra          a2, a6, t6
                  bge          s0, tp, 1613f
1596:             slli         s4, t6, 18
1597:             beq          t1, s0, 1598f
1598:             and          s4, t3, t4
1599:             srli         sp, sp, 27
                  and          s11, t0, t0
                  bltu         s0, s10, 1619f
                  bltu         ra, gp, 1614f
1603:             sub          s7, a2, a6
                  sltiu        t3, s1, 814
                  xor          s1, ra, t6
                  sub          ra, a1, t5
                  slli         s3, s9, 18
                  sll          tp, ra, t6
                  sltiu        zero, zero, 1658
                  bne          a5, a6, 1629f
                  srl          s7, a2, ra
                  sub          tp, t5, t2
1613:             add          t0, s11, a3
1614:             bge          zero, t2, 1624f
                  add          a5, s7, t0
                  bltu         s3, sp, 1634f
                  bne          a2, s8, 1629f
                  nop
1619:             slti         a7, a3, -1828
                  bne          s11, a0, 1624f
                  addi         t1, sp, -1954
                  ori          s11, gp, -1192
                  srli         s11, ra, 4
1624:             sra          s6, s1, a6
                  bge          tp, t0, 1626f
1626:             slt          s9, s5, s5
                  beq          gp, a7, 1638f
                  sll          s1, a1, s11
1629:             andi         s11, tp, 1996
                  srli         s8, tp, 13
                  slti         s1, tp, 825
                  slli         t4, t1, 13
                  andi         t0, a3, 1577
1634:             andi         gp, s3, 155
                  sra          s0, t5, a3
                  nop
                  nop
1638:             xori         a0, ra, 223
                  sltiu        tp, t6, 1071
                  auipc        s10, 703769
                  slt          a0, s5, t3
                  lw           ra, 4(a4)
                  sub          tp, t2, tp
                  addi         a4, a4, 40
                  andi         s1, s11, -1397
                  sltiu        a7, sp, -1376
                  xori         s1, s1, -1136
                  lui          zero, 451568
                  xor          s10, a2, s10
                  nop
2194:             addi x9, x1, 1
2194:             jalr x9, x9, 0
sub_4:            addi         a4, a4, -56
                  sub          t1, sp, t1
                  xori         t1, t2, -610
                  sw           ra, 4(a4)
                  xor          a2, s9, a6
                  andi         tp, a1, -1866
                  or           a2, s2, s11
                  slti         t1, a3, -1041
                  la           t4, sub_6
                  sltiu        zero, a6, 1211
                  addi         t4, t4, 401
                  sra          s1, t4, sp
                  or           gp, t3, a5
                  ori          sp, s0, 492
sub_4_j8:         jalr         ra, t4, -400 #jump sub_4 -> sub_6
                  slt          s9, a0, gp
                  bne          a5, t0, 17f
                  andi         s9, zero, -1904
                  add          s3, s11, t3
                  sltiu        a0, a5, 1404
                  bne          a1, a6, 9f
                  srl          s11, t4, s0
                  nop
                  srli         s0, t5, 9
9:                blt          t6, t0, 16f
                  add          s0, t3, s2
                  bltu         a0, s6, 15f
                  bne          s8, s6, 32f
                  bge          s2, s5, 21f
                  addi         s4, t2, 1558
15:               slti         a7, t2, 1747
16:               nop
17:               slli         ra, sp, 5
                  srai         t0, t3, 16
                  or           s11, a1, s6
                  bge          s4, tp, 25f
21:               beq          gp, a2, 35f
                  sub          ra, a3, s1
                  auipc        t1, 251980
                  lui          t3, 53080
25:               sll          a0, t4, a4
                  srli         t0, t1, 1
                  or           a7, s3, s4
                  bltu         a4, s4, 46f
                  srai         a0, a7, 15
                  bne          a3, a7, 39f
                  auipc        gp, 738383
32:               lui          t1, 100802
                  sll          a5, s10, t3
                  sll          a0, a6, zero
35:               srl          zero, t1, s4
                  slti         s0, s11, -1555
                  bgeu         a5, tp, 55f
                  srli         a2, t0, 9
39:               sub          gp, t6, t2
                  sll          t5, t5, t6
                  addi         sp, a7, -1470
                  or           a5, s3, a6
                  andi         t3, a0, 710
                  slli         s1, t2, 19
                  bgeu         s4, gp, 46f
46:               bgeu         a3, s3, 59f
                  auipc        t2, 221328
                  sltu         a5, t3, s2
                  xor          s10, ra, a5
                  srli         ra, a4, 9
                  slt          s8, a7, t4
                  slti         t1, s10, 1110
                  srli         sp, a3, 25
                  sltu         t5, t1, a1
55:               slli         t5, t0, 30
                  ori          s8, s4, -595
                  sltu         t3, t3, sp
                  slti         s0, s6, 1486
59:               xor          t1, t4, s2
                  sltiu        a2, t5, -682
                  bgeu         a1, s4, 78f
                  or           t0, s7, s0
                  sra          zero, a2, a3
                  srl          a2, ra, a4
                  xor          t6, a5, s9
                  nop
                  la           sp, region_0+368 #start riscv_load_store_rand_instr_stream_0
                  sb           t1, 1(sp)
                  sh           a0, -16(sp)
                  addi         t0, t1, -997
                  lb           s11, 15(sp)
                  lb           ra, -10(sp)
                  slli         t4, s11, 11
                  lbu          t3, 12(sp)
                  lb           t6, 12(sp)
                  sb           s0, 0(sp)
                  sltiu        t4, s11, 1443
                  add          t5, a2, s1
                  slli         ra, t4, 3
                  slt          s1, t1, s6
                  lbu          a6, 4(sp)
                  nop
                  lhu          t1, -12(sp)
                  sb           t4, -7(sp)
                  xori         tp, s8, -1854
                  lh           s11, 10(sp)
                  lh           s6, 0(sp)
                  sra          s8, sp, t5
                  sltu         t3, s1, s5
                  lbu          a2, 5(sp)
                  lb           s0, -11(sp)
                  lbu          s0, -15(sp)
                  sb           a4, -11(sp)
                  lb           s4, -15(sp)
                  lb           s0, -14(sp)
                  sh           t5, 2(sp)
                  lb           t6, -5(sp)
                  srai         ra, a2, 9
                  sb           t2, -6(sp)
                  lbu          a1, 14(sp)
                  sh           a0, 0(sp)
                  sb           s11, 11(sp)
                  sw           a6, 0(sp)
                  addi         s1, s8, 762
                  lbu          s7, -14(sp)
                  sltiu        a1, s9, -296
                  lbu          s8, -14(sp) #end riscv_load_store_rand_instr_stream_0
                  nop
                  nop
                  nop
                  beq          t1, s6, 74f
                  beq          t5, s7, 78f
                  slt          tp, s1, gp
                  xori         s11, a7, 1057
74:               bgeu         t3, a0, 94f
                  bltu         a6, t0, 78f
                  sra          zero, t6, t1
                  blt          s11, t2, 85f
78:               add          s6, sp, a0
                  beq          zero, s1, 86f
                  nop
                  beq          s6, s0, 96f
                  add          s11, a5, t4
                  sltu         s1, s8, a1
                  andi         s0, t5, -1691
85:               sll          a7, s2, a1
86:               srai         sp, t3, 5
                  sub          t0, s2, t1
                  andi         t4, t1, 1370
                  or           a5, gp, s1
                  sltu         t4, t1, a2
                  and          t4, s3, s11
                  xor          sp, s5, s7
                  bgeu         s3, s7, 112f
94:               slt          ra, t5, t3
                  sll          t6, tp, s4
96:               slt          a1, ra, s0
                  sll          a6, s2, t3
                  bgeu         a1, s8, 118f
                  bne          a1, a6, 114f
                  beq          a7, t3, 114f
                  blt          s9, a4, 112f
                  beq          s6, t2, 110f
                  nop
                  bgeu         t1, s6, 116f
                  slli         a7, a3, 12
                  slt          s1, sp, t3
                  sub          s7, s6, t0
                  bge          t0, t5, 118f
                  auipc        a5, 912934
110:              beq          s1, t2, 122f
                  sra          ra, t1, s5
112:              lui          t3, 602433
                  slt          s0, s3, a2
114:              slti         a3, s4, 421
                  srl          a2, a7, a5
116:              add          s9, gp, a0
                  bltu         zero, s8, 131f
118:              slli         a6, t1, 9
                  bgeu         s7, s2, 137f
                  xori         s11, s1, -866
                  auipc        a7, 140583
122:              slli         s3, s10, 25
                  sltu         ra, s2, s3
                  bge          s10, a5, 127f
                  andi         s9, s5, -124
                  sll          t4, zero, s6
127:              addi         t5, s2, 1529
                  and          t6, a0, t6
                  srli         s8, t1, 26
                  blt          s0, s0, 147f
131:              bne          a4, a3, 136f
                  srl          t3, s3, s10
                  slli         gp, s7, 7
                  sll          t6, t1, s2
                  slti         tp, a7, 823
136:              auipc        s11, 429592
137:              and          s10, s4, t2
                  srai         tp, gp, 11
                  xori         s1, a2, 1453
                  xor          s1, a1, a6
                  auipc        t3, 621362
                  sub          s10, s8, t5
                  bgeu         s1, s7, 144f
144:              slti         ra, s5, 1365
                  blt          zero, a2, 156f
                  xor          a5, s7, a6
147:              or           t3, t0, a3
                  srl          a7, a2, t0
                  andi         s3, t4, -1988
                  srl          s9, t0, s2
                  sll          t3, ra, gp
                  srl          zero, tp, t3
                  sra          a2, ra, a7
                  bne          s0, tp, 161f
                  sll          t3, a2, s0
156:              addi         s3, t1, -807
                  srli         s11, s8, 31
                  sub          t3, ra, t0
                  srli         s6, a0, 25
                  or           s10, a0, s4
161:              sra          a0, tp, a7
                  sll          t1, t5, ra
                  slt          sp, s10, s3
                  xor          s4, s8, s10
                  or           gp, a0, sp
                  beq          t3, a5, 172f
                  sll          ra, a3, a4
                  slti         a1, s9, 37
                  slti         t6, gp, 734
                  srai         ra, a2, 24
                  blt          s11, s2, 172f
172:              srli         a7, t5, 30
                  lw           ra, 4(a4)
                  sub          a0, s2, a5
                  auipc        a0, 383008
                  xori         a7, a2, 852
                  addi         a4, a4, 56
                  xor          a3, a2, gp
                  auipc        s6, 372344
                  add          s1, s5, s4
                  slti         t5, a5, 2018
                  lui          a2, 665653
239:              addi x16, x1, 0
239:              jalr x16, x16, 0
sub_1:            srl          s7, s4, s3
                  and          s8, t6, tp
                  bge          zero, t3, sub_1_stack_p
                  xor          t1, a6, a3
                  sra          s3, gp, t2
                  andi         s3, t6, -1760
sub_1_stack_p:    addi         a4, a4, -48
                  sw           ra, 4(a4)
                  sltu         a3, t1, t4
                  la           a3, sub_2
                  ori          t6, s1, 920
                  sltu         t6, t6, gp
                  srli         t1, a4, 23
                  and          t0, tp, t4
                  nop
                  addi         a3, a3, -515
                  auipc        s3, 108646
sub_1_j3:         jalr         ra, a3, 516 #jump sub_1 -> sub_2
                  la           a6, region_0+1428 #start riscv_load_store_rand_instr_stream_0
                  lbu          t4, -214(a6)
                  xor          a0, s9, t4
                  andi         s11, s4, 754
                  or           ra, a2, a6
                  ori          a1, s10, 295
                  xor          t2, tp, s6
                  srli         ra, a5, 31
                  sb           s1, -69(a6)
                  lbu          tp, 209(a6)
                  lbu          ra, -171(a6)
                  srai         s7, a5, 11
                  sub          gp, t1, s3
                  ori          t5, s9, 1545
                  lb           sp, 239(a6)
                  xori         a5, a6, -94
                  lh           t1, -144(a6)
                  srai         ra, a3, 26
                  sb           a1, -185(a6)
                  auipc        sp, 769125
                  lhu          a1, 66(a6)
                  addi         t2, a7, 881
                  xori         t1, s11, -648
                  sltiu        s4, a0, -1515
                  add          s11, t1, sp
                  lhu          t1, -188(a6)
                  slt          s1, t5, a4
                  nop
                  lhu          a1, 64(a6)
                  addi         sp, s9, -275
                  and          s8, s10, zero
                  andi         a7, sp, -124
                  add          t1, sp, a3
                  lb           zero, -107(a6) #end riscv_load_store_rand_instr_stream_0
                  beq          a6, ra, 14f
                  or           s10, gp, t2
                  srli         t0, a4, 31
                  auipc        a6, 675878
                  slt          a3, s8, s7
                  addi         gp, t2, 2038
                  bne          a7, t4, 12f
                  bge          s6, a4, 22f
                  bne          zero, s1, 26f
                  nop
                  and          t5, t4, t3
                  srai         gp, s6, 24
12:               nop
                  lui          a5, 633112
14:               sltiu        a3, s11, -394
                  xor          s3, ra, a2
                  and          t2, s5, a0
                  blt          a6, s4, 37f
                  srl          t0, t2, t5
                  nop
                  la           a5, region_0+1524 #start riscv_load_store_rand_instr_stream_1
                  sb           s7, -667(a5)
                  or           s1, t6, t4
                  sb           s11, 162(a5)
                  srli         t6, zero, 4
                  sltiu        t3, zero, -715
                  lbu          t5, -547(a5)
                  xori         s9, t5, 1756
                  sb           a5, -1495(a5)
                  srli         a0, ra, 23
                  ori          sp, s4, 455
                  lbu          s10, -543(a5)
                  sb           s11, -265(a5)
                  lb           a1, -629(a5)
                  add          s3, s3, s1
                  or           tp, t0, ra
                  slti         a6, zero, 2005
                  slt          s4, s8, a4
                  xor          t3, a3, a0
                  sh           a5, 434(a5)
                  sh           a1, 38(a5)
                  andi         gp, a3, 1346
                  lbu          s3, -540(a5)
                  sb           a7, -123(a5)
                  sh           a4, -1382(a5)
                  xori         s6, s1, -1413
                  lbu          gp, -592(a5)
                  srai         t1, s9, 29
                  lhu          s4, -930(a5)
                  slti         s3, s7, 11
                  ori          t3, t5, 628
                  lh           s4, -844(a5)
                  slt          a6, s9, a3
                  or           a3, a2, a1
                  sll          s11, a5, a5
                  nop
                  sb           s4, -1172(a5)
                  sb           s2, -960(a5)
                  sb           a0, -155(a5)
                  lbu          tp, 451(a5) #end riscv_load_store_rand_instr_stream_1
                  sltiu        t1, t6, -1957
                  nop
22:               sll          t5, s10, zero
                  auipc        s6, 80435
                  sub          s10, a3, zero
                  srli         s7, t0, 7
26:               sub          a7, s11, a2
                  or           gp, a0, s4
                  blt          s4, s2, 37f
                  bge          s9, t6, 36f
                  bltu         zero, tp, 44f
                  bne          s1, a1, 33f
                  add          t1, t2, a7
33:               srl          s8, t1, t6
                  slti         t0, a6, -402
                  addi         a6, s6, -167
36:               sub          a0, gp, gp
37:               slti         a7, t2, -673
                  slt          gp, a4, tp
                  beq          t1, s10, 52f
                  andi         s4, a3, -556
                  slli         s4, sp, 2
                  bne          t3, s0, 48f
                  auipc        a0, 426887
44:               auipc        s11, 535051
                  bne          sp, s4, 48f
                  sltu         s11, t5, t4
                  or           s3, t4, sp
48:               sltu         t4, ra, s11
                  sll          gp, s5, s5
                  xori         t2, t0, -1619
                  or           t2, t4, s8
52:               sltiu        s6, s8, 866
                  srl          t1, sp, a6
                  bltu         t2, a5, 55f
55:               bgeu         t5, zero, 62f
                  srli         t3, t5, 25
                  nop
                  sra          a5, t5, s6
                  andi         s0, a0, 443
                  bge          t6, a3, 66f
                  bne          t6, s9, 62f
62:               bltu         a2, zero, 76f
                  andi         tp, t5, -1995
                  srai         t5, zero, 5
                  bltu         s6, sp, 71f
66:               add          t4, gp, t2
                  bltu         s8, s11, 70f
                  sra          a2, a4, s6
                  nop
70:               or           s6, a5, t3
71:               addi         a1, ra, 1851
                  lui          t6, 252138
                  srl          a2, a6, a0
                  sltiu        s9, s10, 42
                  andi         s1, t0, -314
76:               blt          zero, s5, 88f
                  sltiu        s9, a7, -1225
                  auipc        s0, 817864
                  add          sp, t5, gp
                  blt          t5, s11, 87f
                  and          a7, t1, s8
                  sra          s3, tp, a6
                  slt          a1, a1, sp
                  and          s1, ra, s10
                  add          t4, a5, s1
                  sub          s4, gp, s9
87:               or           t4, t5, t2
88:               nop
                  srai         t2, s9, 4
                  srl          t0, t1, s8
                  slti         t3, gp, -99
                  srli         a2, t1, 16
                  sub          s7, t0, s1
                  nop
                  bltu         t4, gp, 111f
                  andi         s0, a7, 1848
                  sltu         a5, a3, gp
                  sra          a2, s2, a6
                  slti         s1, s10, 836
                  sll          s10, s4, ra
                  xori         a6, t0, 90
                  beq          t5, t3, 113f
                  bge          t5, s0, 118f
                  srli         t6, sp, 21
                  bgeu         s9, s1, 116f
                  or           a6, a0, s5
                  lui          s9, 520544
                  xor          s10, a4, s9
                  sra          t5, s11, s6
                  slli         ra, ra, 27
111:              sltu         a3, s7, tp
                  slti         s4, sp, -892
113:              slli         a7, s2, 30
                  or           a3, a6, s9
                  blt          a3, a0, 133f
116:              bne          ra, t6, 123f
                  beq          s8, s2, 121f
118:              bltu         zero, t5, 123f
                  add          zero, t1, a0
                  srai         a6, s0, 26
121:              bgeu         s2, s3, 130f
                  blt          t5, s0, 129f
123:              lui          ra, 171302
                  or           t6, t6, s7
                  bge          t5, zero, 134f
                  andi         a2, s10, 1782
                  beq          s5, a7, 134f
                  bltu         a5, gp, 135f
129:              and          a3, s7, zero
130:              addi         s8, tp, 1202
                  add          s8, a7, t2
                  sll          s1, a2, t2
133:              nop
134:              bgeu         t4, t5, 140f
135:              sltu         a1, t6, a4
                  blt          s9, s0, 154f
                  sltu         a5, s1, zero
                  beq          t5, t2, 141f
                  auipc        t2, 462413
140:              beq          a0, t6, 141f
141:              beq          a4, a5, 152f
                  sra          t6, a6, s9
                  nop
                  lui          gp, 422470
                  bge          sp, s3, 160f
                  srai         t4, t0, 5
                  slti         zero, a2, 1076
                  or           t1, s8, t1
                  blt          tp, a6, 164f
                  ori          s6, s11, -1535
                  and          s11, a3, zero
152:              bge          zero, t6, 170f
                  bne          zero, s1, 158f
154:              blt          a4, a6, 163f
                  add          a2, a5, a7
                  slti         s7, s11, -1177
                  sltu         ra, a0, zero
158:              bltu         a3, t3, 164f
                  sltu         a3, t2, s2
160:              addi         s3, ra, -2020
                  bgeu         a3, s5, 181f
                  lui          t1, 475182
163:              sltiu        a6, a1, 773
164:              sll          t4, s2, gp
                  sltiu        zero, s3, 1182
                  auipc        s4, 165373
                  lui          a5, 804891
                  addi         t4, t4, -1117
                  sll          s3, a5, s7
170:              or           s6, a1, a1
                  beq          a6, a5, 187f
                  xor          a6, t3, s3
                  sra          s8, a4, t6
                  slli         s7, a5, 30
                  sll          tp, t6, s0
                  sll          gp, s6, t2
                  xori         t3, a1, -275
                  slt          s6, s4, a5
                  sra          t3, s2, sp
                  bne          sp, s1, 194f
181:              blt          t0, gp, 195f
                  sltu         s11, a6, a0
                  bge          t5, a7, 190f
                  xor          s0, s10, a2
                  and          a0, zero, s9
                  bge          s2, s4, 200f
187:              add          t2, sp, a4
                  xori         s1, a2, -1717
                  sra          a2, t2, a0
190:              lui          s4, 539056
                  lui          s1, 430612
                  slti         t4, a2, -1791
                  sll          a3, ra, s8
194:              bne          a4, t0, 200f
195:              addi         t5, tp, -1119
                  ori          tp, a5, -1539
                  slli         t5, gp, 9
                  xor          t3, t4, t5
                  xori         s3, tp, -471
200:              blt          a5, s7, 204f
                  sub          s4, t4, a1
                  sub          a7, a6, a2
                  sub          t4, a5, tp
204:              bne          s4, s11, 210f
                  addi         a5, t0, -1647
                  ori          t2, s4, 1293
                  lui          t0, 300740
                  slti         gp, s9, 1191
                  bgeu         a5, s5, 211f
210:              addi         s4, s6, -239
211:              nop
                  bge          a3, s3, 215f
                  bne          t1, s6, 225f
                  srai         t5, zero, 31
215:              srli         t1, s10, 1
                  sll          a6, sp, t3
                  andi         a0, t1, 535
                  beq          s9, s9, 219f
219:              slti         s1, s7, -1905
                  slt          sp, t5, a5
                  bne          s0, t4, 234f
                  nop
                  xori         s9, a4, -725
                  addi         sp, t0, 1335
225:              beq          gp, a2, 236f
                  xori         s10, s4, -714
                  slti         t1, t6, 310
                  bltu         s5, s9, 243f
                  beq          s10, tp, 233f
                  addi         ra, t0, -953
                  sltiu        a6, s4, 498
                  slti         gp, s11, 764
233:              sub          t5, a4, a7
234:              srai         a5, s5, 5
                  bltu         s2, gp, 241f
236:              lui          s10, 847961
                  lui          a2, 115195
                  srli         t1, s3, 18
                  sll          s3, t0, a7
                  sra          s6, s1, t5
241:              bltu         t2, a7, 255f
                  auipc        s11, 945094
243:              lui          zero, 708153
                  bne          t1, s8, 247f
                  sltiu        s0, a6, 751
                  nop
247:              bltu         s0, a6, 252f
                  srai         a5, t6, 17
                  lui          t4, 358202
                  xor          tp, t3, t6
                  xor          s3, s7, a1
252:              addi         tp, tp, 180
                  beq          s7, a1, 260f
                  addi         t3, a7, -1987
255:              lui          t5, 1020267
                  sltu         s1, gp, tp
                  add          a3, tp, s6
                  slti         t5, sp, 1054
                  ori          s11, a3, 1691
260:              sra          s9, sp, s9
                  sltu         s4, a1, ra
                  lui          t0, 941477
                  srli         s6, s5, 4
                  slt          s8, t3, s3
                  sub          t1, s2, t3
                  sll          t2, a1, zero
                  sub          a7, s4, s6
                  and          a0, s2, s6
                  or           a1, zero, s11
                  xori         a3, t0, -439
                  bltu         t0, s4, 282f
                  slt          t6, t6, s10
                  and          zero, s9, ra
                  lui          gp, 394316
                  bltu         t5, s5, 282f
                  bltu         t6, a0, 282f
                  sll          t4, s11, s2
                  bgeu         a3, a5, 282f
                  sub          a3, a1, s9
                  sub          s1, a3, a2
                  sub          sp, a2, s8
282:              sll          a5, a5, t0
                  srli         a0, s1, 27
                  lw           ra, 4(a4)
                  srli         zero, sp, 19
                  addi         a4, a4, 48
                  addi         tp, a0, -704
                  andi         s0, t4, -1742
381:              addi x7, x1, 0
381:              jalr x7, x7, 0
sub_9:            sra          zero, s1, a5
                  addi         a4, a4, -52
                  sw           ra, 4(a4)
                  sltu         a6, t6, s5
                  srai         zero, s5, 27
                  slti         s1, s4, -600
                  sltu         tp, t4, tp
                  bne          a1, t5, 9f
                  and          a2, a0, sp
                  srai         t6, s0, 14
                  and          s8, t6, t6
                  xor          gp, s0, s9
                  srli         zero, s8, 14
                  slt          tp, s7, s6
                  srai         s3, s5, 20
9:                nop
                  or           t0, gp, t1
                  srai         s10, s11, 13
                  sll          a5, s10, a7
                  slt          t3, t0, sp
                  sra          a7, s2, s0
                  srai         a1, s11, 0
                  slti         a3, a3, -1887
                  lui          s9, 781184
                  ori          a2, a6, 1496
                  lw           ra, 4(a4)
                  srai         a3, a5, 27
                  addi         a4, a4, 52
                  sra          s9, a2, s7
                  srai         t2, s8, 27
30:               addi x25, x1, 1
30:               jalr x25, x25, 0
sub_8:            slti         s0, s5, -1957
                  sltiu        s7, s5, 244
                  addi         a4, a4, -44
                  sw           ra, 4(a4)
                  srli         s11, s2, 20
                  auipc        t2, 886545
                  or           a0, s2, t0
                  add          tp, ra, s2
                  la           sp, region_0+1575 #start riscv_load_store_rand_instr_stream_2
                  add          s0, zero, t5
                  lw           t6, -19(sp)
                  slti         s3, t4, -700
                  nop
                  sh           s5, -53(sp)
                  sltiu        s9, a3, 1894
                  sb           a1, 61(sp)
                  sra          t5, a4, s11
                  addi         a0, a5, 207
                  or           t2, s10, gp
                  lb           tp, 4(sp)
                  lb           s1, 33(sp)
                  lui          t4, 232924
                  lb           s1, -2(sp)
                  lui          tp, 934260
                  lui          a2, 226403
                  lhu          s3, -13(sp)
                  or           ra, a6, s1
                  xor          s4, s3, gp
                  or           s7, a7, a5
                  ori          t6, a0, -1077
                  lb           t5, -28(sp)
                  add          t5, a6, a7
                  sh           gp, 51(sp)
                  lui          t4, 721991
                  andi         a0, a4, 120
                  sb           s7, 34(sp) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_0+1586 #start riscv_load_store_rand_instr_stream_0
                  srai         a7, ra, 27
                  add          s7, a1, s5
                  slt          s10, s0, t1
                  slt          tp, a7, a2
                  lbu          s4, 3(sp)
                  sltu         t0, t1, s3
                  sra          t0, s0, a4
                  auipc        a3, 73992
                  sh           a2, 12(sp)
                  sra          t5, s5, s7
                  sb           s10, -9(sp)
                  auipc        a6, 100099
                  sh           t6, -12(sp)
                  sll          tp, s1, t3
                  andi         t6, a4, 1640
                  and          a1, s2, a0
                  lb           t4, -15(sp)
                  lhu          a3, 8(sp)
                  lb           t0, -11(sp)
                  sb           gp, 13(sp)
                  sh           s2, 6(sp)
                  srl          s11, t5, a5
                  ori          a7, s1, -716
                  auipc        t2, 347281
                  lbu          s4, 11(sp)
                  sb           gp, 4(sp)
                  lhu          s9, 4(sp)
                  sw           t1, 6(sp)
                  lbu          s11, -16(sp)
                  addi         t0, a6, -453
                  lb           a6, 10(sp)
                  sltiu        s8, s7, -1686
                  lh           a3, -12(sp)
                  auipc        a2, 521673
                  sb           a0, 9(sp)
                  lw           t2, 2(sp)
                  ori          s0, ra, 658
                  xori         s11, t1, -529
                  srli         a3, ra, 27
                  srl          s7, s11, s1
                  addi         s11, s0, 865
                  lh           t1, 10(sp)
                  slti         ra, a5, -210
                  srai         a6, a3, 5
                  lb           a1, -9(sp)
                  or           t1, t3, a1
                  ori          s8, a0, -428
                  lhu          a7, -14(sp)
                  sltiu        a5, a4, 718
                  sb           s3, 13(sp) #end riscv_load_store_rand_instr_stream_0
                  sub          a1, t5, t5
                  bgeu         t3, ra, 13f
                  auipc        zero, 224831
                  andi         s1, sp, 1673
                  or           a1, t1, a7
                  sll          s4, s3, a2
                  bltu         t1, a1, 17f
                  srli         a2, s11, 15
                  auipc        sp, 711930
                  auipc        s4, 131873
                  sra          gp, t2, gp
                  srai         zero, s4, 2
                  sra          a1, s1, a4
sub_8_j12:        jal          ra, sub_9 #jump sub_8 -> sub_9
                  blt          a7, t5, 9f
                  slti         s9, s10, -1078
                  srai         a0, t4, 20
                  slt          s6, t2, t5
                  sltu         s3, s7, zero
                  xori         s1, a7, -1803
                  nop
                  sub          a1, s11, a5
                  andi         t3, a5, 356
                  sltu         a2, s9, s6
sub_8_j14:        jal          ra, sub_10 #jump sub_8 -> sub_10
9:                auipc        s0, 541149
                  bne          a2, a1, 26f
                  auipc        a1, 365764
                  add          a7, s10, s3
13:               lui          a1, 788230
                  add          a6, ra, s2
                  and          s1, s10, s8
                  and          s6, ra, s7
17:               sll          s3, s4, a7
                  nop
                  slti         t3, s9, -98
                  bltu         t3, a3, 30f
                  xor          sp, t2, sp
                  xori         gp, s3, 661
                  xor          s10, s11, a5
                  srl          s4, s7, t2
                  or           a5, s0, a6
26:               slli         a5, t2, 17
                  sltiu        a7, s7, -1247
                  slli         s1, t1, 15
                  and          s8, sp, a7
30:               srli         s11, a3, 15
                  or           zero, a0, sp
                  ori          tp, t6, -1967
                  srli         s6, t0, 17
                  sltu         t3, s9, s7
                  addi         s1, a3, 1783
                  bgeu         a2, sp, 39f
                  and          s9, a3, s7
                  srl          a0, t4, s5
39:               sltu         t0, a7, a1
                  sub          t2, gp, s1
                  xori         s0, s10, -639
                  sub          t3, s0, s0
                  slt          t0, s10, s10
                  slli         t5, t4, 28
                  lui          gp, 501710
                  andi         a2, s11, -7
                  sra          a1, a5, sp
                  sll          t0, zero, a5
                  srli         tp, s4, 31
                  sltu         s0, s2, s5
                  or           t6, s0, t5
                  srli         t4, s9, 2
                  sltu         s3, s3, t4
                  add          zero, a3, s10
                  srl          s1, a0, s1
                  sub          sp, a2, a5
                  bge          a0, t6, 59f
                  blt          s10, a5, 64f
59:               bltu         tp, s7, 75f
                  ori          tp, s3, -1569
                  sltiu        a5, zero, -563
                  or           gp, gp, s4
                  sltiu        sp, t4, -42
64:               blt          s8, a2, 65f
65:               bge          a0, s0, 70f
                  ori          a2, a6, 627
                  sltiu        t3, gp, -1092
                  sltiu        s10, s9, 288
                  srli         s6, sp, 16
70:               and          gp, t0, s6
                  nop
                  bgeu         s8, s8, 87f
                  beq          a6, s7, 84f
                  xor          a0, s6, a2
75:               or           s10, s0, s10
                  add          t6, s1, tp
                  sub          a1, t1, t4
                  sra          a5, s2, s2
                  bltu         ra, s6, 99f
                  auipc        gp, 945535
                  sltu         t5, t1, s10
                  slli         ra, s3, 14
                  nop
84:               and          s7, a7, s9
                  srl          t2, s7, s6
                  srl          t0, s7, ra
                  lui          t1, 837077
                  srai         ra, s7, 17
                  la           a6, sub_9
                  srli         a3, a6, 0
                  addi         a6, a6, -436
                  blt          t0, t6, sub_8_j13 #branch to jump instr
                  sltiu        s6, a4, -822
                  add          s7, s0, s3
sub_8_j13:        jalr         ra, a6, 437 #jump sub_8 -> sub_9
87:               add          t6, a6, a4
                  bne          s2, t2, 106f
                  slti         t6, t0, 365
                  slti         t0, sp, -1397
                  slti         s9, a2, -256
                  sll          t5, tp, s10
                  auipc        gp, 300679
                  nop
                  beq          sp, s8, 97f
                  nop
97:               blt          t3, t0, 108f
                  bge          s2, a1, 104f
99:               slti         t5, t3, -266
                  or           a5, t1, a6
                  srl          s1, s2, tp
                  srl          s0, s5, ra
                  andi         a6, s8, 258
104:              add          s7, s3, s9
                  srl          a1, s3, a4
106:              beq          s9, t3, 116f
                  srai         ra, s8, 23
108:              ori          s11, s10, -408
                  slli         t0, s2, 15
                  bge          a7, zero, 125f
                  srl          a5, a7, t3
                  slli         t4, s5, 1
                  sltu         s8, a7, tp
                  bltu         t1, t0, 125f
                  slli         a7, sp, 0
116:              sltu         t0, tp, zero
                  bltu         s10, t2, 127f
                  srli         sp, s0, 31
                  bge          a4, s5, 125f
                  xori         s3, t6, 1020
                  xor          zero, t5, tp
                  slt          t6, a7, s9
                  slli         a7, s5, 14
                  add          t1, s9, s0
125:              srli         a6, s1, 16
                  xor          t6, t0, zero
127:              add          s6, t6, s5
                  sltu         t0, t4, s7
                  beq          t3, tp, 133f
                  beq          a2, s11, 150f
                  blt          t5, s5, 146f
                  sub          a6, s8, a6
133:              addi         a6, s2, -558
                  xori         s8, t4, -27
                  srli         t1, tp, 29
                  srai         s6, s3, 24
                  auipc        s7, 486678
                  or           s8, a1, a0
                  slli         a3, t2, 5
                  xori         s1, t3, 1944
                  bgeu         s6, a1, 142f
142:              lui          ra, 857040
                  slli         ra, a5, 11
                  and          a5, s5, s11
                  sltu         a5, a5, s8
146:              bgeu         t1, t5, 158f
                  sra          a7, t5, s5
                  sra          t3, a0, s4
                  sub          t5, ra, a5
150:              andi         s10, s4, 787
                  lui          a6, 90040
                  or           s0, a2, s5
                  nop
                  sra          a2, s5, t5
                  ori          a1, s2, 516
                  sltu         t6, a4, t4
                  bne          s0, s11, 166f
158:              slt          s1, a6, t3
                  slt          t1, s10, s11
                  sltiu        a1, t0, -2004
                  srli         t2, zero, 1
                  nop
                  auipc        t5, 984458
                  srli         t2, s2, 18
                  andi         s8, s4, -1287
166:              slti         a7, s1, -1215
                  or           s8, ra, s2
                  sra          a0, t1, gp
                  beq          s5, s4, 177f
                  sltiu        zero, zero, -1572
                  and          a3, s7, s4
                  xor          s8, tp, a1
                  beq          s10, ra, 179f
                  srl          s3, s0, a5
                  xori         s8, a5, 1997
                  lui          s0, 718229
177:              sltiu        s1, s5, -1053
                  addi         s8, s1, -2040
179:              sra          t1, s10, t5
                  andi         s9, s10, -1385
                  or           s8, s5, a1
                  sltiu        t1, a7, 879
                  bne          a2, s5, 191f
                  srai         s9, a5, 4
                  bgeu         s4, t5, 186f
186:              blt          a4, s11, 196f
                  srai         t5, s2, 4
                  bgeu         s9, t3, 197f
                  sub          ra, s8, ra
                  ori          t5, t6, -128
191:              slti         t5, s5, -1456
                  ori          a3, s5, 305
                  sll          a1, t1, s3
                  sll          s9, a7, s11
                  srai         s4, zero, 4
196:              bne          s3, s0, 202f
197:              xori         s0, a4, -319
                  or           t5, a0, s3
                  bge          t1, t1, 214f
                  auipc        s4, 782240
                  sub          t0, a4, t4
202:              slt          s3, t6, t2
                  sltu         s6, s5, ra
                  ori          t1, a2, -1986
                  ori          s9, s6, 1408
                  slt          a5, s0, s8
                  sll          a3, ra, a5
                  lui          a1, 609709
                  srl          a5, tp, s9
                  srai         s3, s10, 7
                  nop
                  ori          s7, a2, 1434
                  nop
214:              lui          a5, 278044
                  slti         t1, a0, -733
                  srai         s4, s8, 16
                  xor          a3, zero, s11
                  bge          s11, sp, 220f
                  sltiu        s11, t3, 495
220:              sll          a2, s3, s11
                  sub          s11, s9, s0
                  la           sp, region_1+1853 #start riscv_load_store_rand_instr_stream_1
                  srli         s3, s1, 9
                  lbu          a3, -498(sp)
                  and          a5, t2, a1
                  lb           s4, -1083(sp)
                  lw           s11, -1705(sp)
                  lb           t2, -658(sp)
                  sb           t6, -382(sp)
                  sltiu        t2, s4, -1644
                  andi         s1, s10, 1396
                  lui          a3, 769821
                  lw           s10, -509(sp)
                  lb           zero, -800(sp)
                  xori         s10, t4, -722
                  slli         s7, s1, 17
                  lb           a6, -990(sp)
                  sh           s4, -1345(sp)
                  lui          s6, 948651
                  lh           tp, -1179(sp)
                  lbu          gp, -1111(sp)
                  ori          ra, a3, -508
                  lbu          t1, -658(sp)
                  lui          t5, 441455
                  srli         t6, ra, 6
                  andi         s3, s9, 995
                  lw           a3, -1049(sp)
                  add          t0, s10, tp
                  sb           t6, -1342(sp)
                  sub          tp, s2, s0
                  sw           s6, -557(sp)
                  lbu          s0, 106(sp)
                  sltiu        ra, s7, -483
                  lb           a0, -632(sp)
                  sb           a2, -1024(sp)
                  nop
                  addi         a3, t5, -1699
                  lb           t3, -203(sp)
                  lbu          t5, -367(sp)
                  lbu          s1, -519(sp)
                  sh           t6, -1261(sp)
                  lbu          s7, -595(sp)
                  sub          s1, a7, s3
                  lbu          ra, -1791(sp)
                  srli         a3, s6, 31
                  sw           a0, -1333(sp)
                  lbu          t5, -339(sp)
                  lbu          zero, -1741(sp)
                  lb           tp, -1040(sp) #end riscv_load_store_rand_instr_stream_1
                  srl          t1, a5, t3
                  xori         gp, s5, 158
                  blt          s2, a6, 225f
225:              beq          a4, s5, 228f
                  sra          t0, a0, ra
                  lui          t0, 596802
228:              and          tp, s0, s8
                  bge          a5, s3, 233f
                  sltu         s10, a5, a3
                  xor          t6, a6, s8
                  slt          a6, s9, zero
233:              sra          s6, s0, t5
                  blt          t3, a5, 254f
                  sub          s9, a5, ra
                  bltu         s1, sp, 247f
                  andi         a1, a1, -1108
                  lui          t3, 818555
                  sltu         s7, t1, zero
                  andi         gp, ra, 1473
                  sll          t2, s3, s0
                  sll          s9, t0, s7
                  srai         s9, zero, 24
                  sll          s3, a3, s8
                  addi         s3, s0, 467
                  auipc        s6, 383461
247:              andi         gp, t6, -448
                  slli         sp, s2, 9
                  lui          t6, 454465
                  blt          t3, t5, 265f
                  srai         s4, s1, 16
                  sub          s11, zero, a3
                  slt          s7, gp, s4
254:              or           a6, s9, zero
                  srli         a3, t4, 5
                  sub          a7, ra, s1
                  andi         sp, s1, -853
                  srli         sp, s6, 26
                  bge          tp, a7, 261f
                  andi         t0, a4, -367
261:              beq          t4, s0, 271f
                  blt          a4, s10, 280f
                  add          t5, a4, s10
                  xor          zero, s1, s6
265:              sltiu        a2, a7, 1781
                  srli         a6, s6, 28
                  or           s7, a6, s4
                  nop
                  sub          a6, t4, a1
                  bge          a7, t0, 276f
271:              add          ra, s5, t3
                  sll          s3, tp, t3
                  slti         t5, a3, 1463
                  slt          s11, s5, s11
                  bltu         t5, t2, 286f
276:              bne          s5, a4, 288f
                  nop
                  xori         a5, t6, -848
                  ori          s3, a7, -758
280:              blt          a5, a3, 296f
                  sll          gp, a2, gp
                  or           a0, s11, gp
                  xor          t0, tp, a6
                  blt          s10, s4, 289f
                  lui          s9, 698668
286:              bgeu         s1, s8, 288f
                  add          sp, s0, s3
288:              slti         tp, a3, 1231
289:              sra          a7, a6, a5
                  xori         s8, a5, 1771
                  ori          gp, t6, -282
                  beq          t6, s10, 307f
                  srai         a2, a4, 12
                  sltiu        s11, s6, 504
                  auipc        s0, 535103
296:              srli         s11, tp, 9
                  srl          a2, tp, s11
                  sltiu        sp, a2, -102
                  sra          sp, t1, a6
                  addi         zero, gp, -1358
                  lui          a3, 154980
                  add          t3, zero, s2
                  slti         sp, sp, 720
                  and          t5, s0, a5
                  add          sp, t2, t3
                  ori          a7, s0, 1914
307:              beq          s0, ra, 319f
                  sll          tp, t6, ra
                  andi         s0, t5, 479
                  bge          t3, gp, 330f
                  blt          a0, s8, 327f
                  slti         a2, t4, 1069
                  sra          t2, a4, t2
                  xor          s10, t2, s7
                  srli         t1, a1, 10
                  slti         s7, a0, -248
                  xor          s6, s5, s4
                  bne          a4, zero, 329f
319:              srai         sp, s1, 15
                  sub          zero, s7, s6
                  or           zero, gp, s11
                  bne          a6, s2, 333f
                  bge          zero, tp, 333f
                  or           s8, a1, zero
                  srai         s3, s4, 22
                  andi         s6, sp, 444
327:              nop
                  beq          s8, a5, 343f
329:              sltu         s1, t5, sp
330:              slt          a3, s4, t5
                  addi         sp, sp, -1490
                  bge          s0, s1, 342f
333:              slli         a5, s2, 21
                  beq          t2, a5, 345f
                  bgeu         s2, s5, 347f
                  xori         s6, zero, 1404
                  srli         a0, s6, 1
                  sltiu        s0, t2, 1325
                  srai         a0, a6, 12
                  ori          t6, s3, 1983
                  or           s9, a1, s0
342:              beq          gp, a3, 348f
343:              blt          s4, a2, 359f
                  auipc        t2, 490458
345:              xori         s7, t4, -560
                  srli         t5, t3, 26
347:              sltiu        s1, a1, 14
348:              srl          t0, s9, zero
                  add          s9, t0, t4
                  slt          a7, s7, s0
                  or           ra, a1, t1
                  andi         t1, a7, -72
                  srl          t3, s9, t3
                  srl          t6, a3, tp
                  and          s11, a5, s5
                  bgeu         ra, t5, 366f
                  xori         s10, t5, 1812
                  srai         s11, s6, 27
359:              and          t2, t2, t2
                  xor          a6, s9, ra
                  sltu         s3, t1, s7
                  bgeu         s10, s7, 372f
                  beq          s1, a0, 364f
364:              srli         t1, a1, 27
                  and          s10, t5, t4
366:              sra          sp, s4, a7
                  beq          a3, t5, 378f
                  slli         zero, s3, 27
                  add          s0, tp, t5
                  andi         a2, s10, -1176
                  beq          s2, t4, 387f
372:              bne          t6, a6, 381f
                  slti         t1, a5, 64
                  nop
                  srli         t5, tp, 29
                  auipc        t0, 314865
                  blt          s10, a5, 392f
378:              srli         s9, a7, 7
                  or           t3, t5, ra
                  or           sp, a2, s7
381:              blt          t0, s11, 392f
                  sra          s10, t4, t3
                  slli         s11, s1, 28
                  bge          a0, ra, 402f
                  sra          s6, s6, t1
                  and          s11, a1, a0
387:              andi         s0, s0, 748
                  xor          t2, s6, s0
                  beq          a7, a6, 391f
                  slti         t4, a1, -1929
391:              nop
392:              blt          t5, s0, 394f
                  addi         a6, a4, 663
394:              blt          s3, a0, 400f
                  auipc        s1, 568689
                  addi         t6, s1, -1173
                  sra          t5, s10, s5
                  bge          s5, a3, 409f
                  srli         t2, gp, 9
400:              sll          a2, s0, s4
                  sltiu        t4, t1, -1538
402:              srai         s10, a7, 30
                  ori          gp, gp, -152
                  ori          ra, t3, 1711
                  sra          a1, t3, s3
                  sub          ra, s7, t0
                  sra          tp, t4, a7
                  sltu         a7, a2, a4
409:              bge          ra, s0, 415f
                  slli         a6, t5, 13
                  srl          s11, a4, s1
                  sltu         t3, s10, s8
                  bltu         tp, s10, 415f
                  srl          t4, a6, s9
415:              beq          t5, a6, 427f
                  blt          t0, s6, 424f
                  auipc        s1, 187260
                  bge          a3, a3, 419f
419:              xori         s10, a0, 1985
                  and          a3, s9, sp
                  nop
                  andi         a6, t6, 1027
                  auipc        s6, 1022535
424:              sra          a2, tp, s5
                  srli         s6, a3, 20
                  sll          a6, a7, t1
427:              auipc        t3, 60469
                  slli         s4, a1, 21
                  auipc        s8, 596218
                  addi         s1, s4, 542
                  srl          t2, t6, a4
                  ori          a6, t2, 226
                  bne          a2, s6, 453f
                  srli         t6, s8, 22
                  srl          s9, s4, t0
                  beq          s5, a2, 451f
                  srl          s6, t6, a7
                  auipc        t4, 816005
                  xor          a6, t6, s11
                  sll          gp, s2, s0
                  or           t5, ra, s4
                  sltiu        t4, a7, 602
                  sltu         a2, s10, t2
                  and          t6, s8, s5
                  addi         t3, sp, -1113
                  sll          t3, a4, a7
                  xori         sp, s11, 233
                  auipc        s4, 736004
                  nop
                  auipc        s10, 718891
451:              beq          s1, a3, 454f
                  sltiu        ra, s5, 1499
453:              slti         a0, s6, 1716
454:              srli         s4, t0, 13
                  or           a3, s10, s7
                  auipc        sp, 814591
                  addi         s10, zero, 132
                  and          s10, t2, gp
                  srai         s3, s8, 8
                  nop
                  lui          a0, 744559
                  srai         t5, s7, 7
                  sub          s8, a4, s0
                  addi         a5, s0, -1630
                  slt          a5, t2, a7
                  lw           ra, 4(a4)
                  addi         a4, a4, 44
                  sub          s0, s3, s0
                  sll          a1, t5, t0
                  auipc        t0, 300356
631:              addi x27, x1, 1
631:              jalr x27, x27, 0
sub_5:            addi         a4, a4, -44
                  sltu         s4, ra, t3
                  nop
                  sw           ra, 4(a4)
                  sra          t2, ra, a7
                  la           t0, region_1+1261 #start riscv_load_store_rand_instr_stream_0
                  srai         t1, t0, 5
                  sh           s4, -1(t0)
                  xori         s6, a2, 84
                  sb           t3, -16(t0)
                  xor          ra, s3, a7
                  sra          s11, a1, sp
                  and          a7, s10, s8
                  andi         a6, tp, -920
                  or           zero, s11, s3
                  ori          s3, s6, -104
                  sltu         t2, a2, s9
                  lbu          s6, 6(t0)
                  sub          a0, a2, t0
                  ori          t5, t6, -135
                  srli         s0, a1, 4
                  lbu          t4, 8(t0)
                  lbu          s0, -4(t0)
                  sub          gp, a3, t2
                  sb           s0, -12(t0)
                  lb           a5, -2(t0)
                  auipc        t3, 511968
                  nop
                  sra          s8, a3, a2
                  sb           a4, 8(t0)
                  srli         t1, s10, 21
                  ori          t6, a4, 1451
                  sub          tp, s8, t3
                  sub          t4, t4, t6
                  add          s6, a7, tp
                  lb           a1, 12(t0)
                  xor          s4, a0, s6
                  and          s6, ra, zero
                  xori         s8, zero, 1041
                  lbu          gp, 14(t0)
                  add          t6, t5, s3
                  xor          s8, a7, s0
                  addi         t1, s1, -1505
                  sb           s5, 8(t0)
                  ori          s7, t0, -828
                  sb           a2, -16(t0) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_1+1837 #start riscv_load_store_rand_instr_stream_3
                  lb           s8, -8(sp)
                  lw           a0, -29(sp)
                  xori         a5, s2, -309
                  nop
                  srai         s10, zero, 13
                  add          s1, s1, zero
                  lbu          s6, -62(sp)
                  lhu          zero, 27(sp)
                  sh           s2, -63(sp)
                  sb           s9, 26(sp)
                  sltu         s7, ra, s2
                  lbu          t0, 6(sp)
                  sll          t2, s9, ra
                  lb           a0, 54(sp)
                  lb           tp, -18(sp)
                  lh           t0, -53(sp)
                  sb           t5, -52(sp)
                  slt          s9, s0, a6
                  ori          s10, t4, -1141
                  lb           a1, 53(sp)
                  auipc        t0, 156881
                  add          ra, t4, a3
                  sll          s9, tp, t1
                  srl          ra, ra, a2
                  lh           s1, -19(sp)
                  lw           t5, -29(sp)
                  sb           s5, -13(sp)
                  lb           t0, 38(sp)
                  xor          s1, t2, a6
                  sub          a2, s1, s3
                  sb           s9, -46(sp)
                  lui          s3, 953348
                  sb           s0, 23(sp)
                  sw           a1, -21(sp)
                  sb           zero, -64(sp)
                  lhu          a7, -25(sp)
                  sb           tp, -9(sp)
                  srl          t0, t3, s7
                  lbu          s10, 7(sp)
                  sb           s5, -3(sp)
                  lbu          a2, -62(sp)
                  lbu          a3, -12(sp)
                  lb           a6, 34(sp)
                  slt          ra, sp, a4
                  lb           s9, 32(sp) #end riscv_load_store_rand_instr_stream_3
                  la           s4, region_0+1702 #start riscv_load_store_rand_instr_stream_5
                  sh           t6, 26(s4)
                  ori          t5, t5, 1824
                  addi         ra, s9, 212
                  sh           t2, 0(s4)
                  srli         s11, a5, 7
                  lb           t3, -4(s4)
                  lbu          s3, -10(s4)
                  lbu          s10, -36(s4)
                  lui          t3, 956678
                  lb           s0, 33(s4)
                  sb           t2, 3(s4)
                  lbu          s11, -19(s4)
                  lb           sp, 11(s4)
                  lbu          t1, -45(s4)
                  addi         t0, s0, 504
                  addi         s1, s0, 710
                  nop
                  xori         a1, t1, -1296
                  lb           sp, -32(s4)
                  lb           s3, 1(s4)
                  addi         s7, s11, -888
                  lbu          ra, -42(s4)
                  sra          s0, s7, a7
                  slt          t0, a0, s8
                  xor          a3, a1, s7
                  lhu          t1, -14(s4)
                  srai         t5, a2, 9
                  lbu          t2, -13(s4)
                  lb           ra, 62(s4)
                  lb           sp, 23(s4)
                  lb           a5, -45(s4)
                  sll          s6, t6, s1
                  lbu          a6, -54(s4)
                  slt          s10, s11, s5
                  lh           zero, -6(s4)
                  lhu          t0, 0(s4) #end riscv_load_store_rand_instr_stream_5
                  la           t6, region_0+533 #start riscv_load_store_rand_instr_stream_7
                  lb           a3, 670(t6)
                  srai         a0, a4, 27
                  sb           a4, 598(t6)
                  lbu          s10, -367(t6)
                  lbu          t2, -153(t6)
                  srai         s4, gp, 18
                  lb           s6, 419(t6)
                  lb           s8, -297(t6)
                  sltiu        t3, s1, -207
                  lb           t0, 982(t6)
                  lb           s11, 25(t6)
                  add          t0, t4, zero
                  lb           s9, 1100(t6)
                  lbu          a1, 738(t6)
                  xor          a6, a4, ra
                  sw           s10, 1207(t6)
                  slli         t4, t6, 13
                  lbu          t0, 698(t6)
                  sub          s9, zero, ra
                  xor          a6, a7, a0
                  sb           ra, 1094(t6)
                  lb           a5, 1194(t6)
                  add          t1, s4, a7
                  sb           s1, 62(t6)
                  sb           s4, -195(t6)
                  lb           a5, 22(t6)
                  sb           zero, -58(t6)
                  sb           t5, -311(t6)
                  lhu          a3, 1161(t6)
                  auipc        s8, 807293
                  lb           s8, 800(t6)
                  auipc        s1, 697623
                  sb           t0, 385(t6)
                  nop
                  lh           s1, 621(t6)
                  sb           t5, 503(t6)
                  lb           s9, 639(t6)
                  srli         s10, s7, 8
                  sb           s4, 924(t6) #end riscv_load_store_rand_instr_stream_7
                  la           t2, region_1+66 #start riscv_load_store_rand_instr_stream_1
                  or           s3, s0, t2
                  lb           s9, 7(t2)
                  or           t1, zero, s5
                  srai         a2, t2, 13
                  auipc        t1, 266631
                  lb           a6, -51(t2)
                  slti         gp, a0, 1907
                  srl          s0, t5, ra
                  sh           a1, 6(t2)
                  lhu          t1, 20(t2)
                  lbu          s3, 37(t2)
                  lbu          s1, 36(t2)
                  andi         s8, a2, 679
                  andi         tp, t5, 792
                  slti         a3, s9, 699
                  sb           t4, 39(t2)
                  xori         s10, s9, 1699
                  srli         s1, a4, 1
                  sb           t3, -43(t2)
                  sll          a3, zero, sp
                  slli         s10, a2, 10
                  srli         s8, s7, 30
                  sh           tp, 52(t2)
                  nop
                  sub          a1, sp, a4
                  auipc        sp, 28328
                  sh           s10, -64(t2)
                  add          a7, s2, gp
                  lhu          s6, 22(t2) #end riscv_load_store_rand_instr_stream_1
                  ori          a6, tp, -1765
                  or           a1, a1, a3
                  sltu         a0, tp, s2
                  xor          s7, a5, sp
                  blt          t4, t4, 11f
                  srai         s6, s1, 1
                  sltiu        t6, s4, -14
                  sub          a3, a0, a0
                  slt          t5, s6, t3
                  or           a0, a0, t4
                  srl          s3, s4, a3
11:               lui          ra, 958993
                  addi         s9, a5, 440
                  slti         ra, tp, 1688
                  srai         a2, a0, 21
                  xori         t3, a4, 131
                  blt          t3, s2, 20f
                  bne          t1, a6, 29f
                  sltu         s9, a6, s2
                  slt          t2, a5, s1
20:               xor          a0, tp, s10
                  add          s10, t3, s1
                  add          a0, a0, tp
                  nop
                  bltu         s4, ra, 27f
                  add          s0, s4, s0
                  andi         a0, t2, -1918
27:               xori         t6, sp, -1992
                  slti         t3, a6, -1619
29:               slti         a1, s1, 333
                  sltiu        t3, s1, -1152
                  srli         s10, s10, 27
                  bne          s9, gp, 40f
                  nop
                  xori         a6, s9, 1828
                  andi         s11, gp, -1610
                  sub          s6, zero, t2
                  lui          t2, 348606
                  sra          a7, t2, gp
                  bltu         a0, t5, 45f
40:               bne          t4, s4, 47f
                  beq          a5, t0, 47f
                  slli         a5, s2, 31
                  nop
                  auipc        t3, 130593
45:               xor          s3, s2, t1
                  and          s3, s11, ra
47:               srli         sp, s7, 28
                  slt          s4, a1, s1
                  slli         t1, s6, 14
                  and          t3, s9, a4
                  or           t5, t6, s5
                  sra          a3, a1, s3
                  andi         s6, s5, 1392
                  add          s0, s10, t6
                  bltu         s6, s11, 73f
                  bltu         zero, t6, 65f
                  slli         s3, a5, 0
                  slti         a1, s7, -1954
                  srl          a3, t3, ra
                  ori          a6, s9, 668
                  slti         s9, s5, -956
                  nop
                  ori          s4, a5, -1057
                  beq          s2, a5, 78f
65:               srl          a3, s5, t5
                  beq          s6, a5, 80f
                  bgeu         s7, a7, 74f
                  bltu         s11, a3, 83f
                  or           s8, a4, t1
                  slti         a0, t0, 1277
                  srl          t6, s1, s2
                  sll          s0, s1, a1
73:               slt          ra, t4, sp
74:               slti         s6, s9, -1371
                  sltiu        s3, s5, 7
                  bge          t3, a0, 82f
                  auipc        t0, 988988
78:               sltiu        s11, t2, 1814
                  and          t4, sp, t5
80:               sra          s9, t5, t0
                  xori         s3, s0, -1172
82:               auipc        t3, 1004717
83:               xori         s1, t4, 2017
                  blt          t4, ra, 99f
                  or           a1, s4, t6
                  slti         tp, a6, -197
                  bltu         t1, ra, 88f
88:               slt          s6, a1, s10
                  bltu         s7, t0, 102f
                  srl          s7, a6, s5
                  beq          a4, gp, 99f
                  auipc        a7, 622602
                  andi         sp, t3, 270
                  sltu         ra, a0, t4
                  auipc        a6, 238980
                  addi         t2, t5, -1893
                  auipc        a6, 344036
                  ori          a7, s6, -297
99:               slt          s1, s6, s3
                  sll          s10, a7, a6
                  add          s7, a1, s8
102:              and          a0, a3, t5
                  sra          a3, a4, tp
                  ori          s1, a4, -862
                  sra          s3, s8, a3
                  slt          tp, a4, s1
                  sll          t5, t4, t5
                  xori         a7, s4, -1664
                  sltiu        s9, a5, 415
                  bgeu         s3, t6, 120f
                  srai         s1, s3, 24
                  sltiu        s0, s10, 1651
                  auipc        t5, 349524
                  bne          t4, t2, 115f
115:              or           sp, t4, t3
                  auipc        a6, 855480
                  bgeu         a4, s2, 135f
                  add          t1, a0, s3
                  auipc        a1, 483143
120:              srl          sp, tp, sp
                  ori          t1, a2, -60
                  add          t0, s0, t5
                  lui          t0, 413960
                  bge          s6, a4, 133f
                  beq          a3, t4, 141f
                  lui          a7, 498254
                  blt          t2, s1, 132f
                  or           t0, s11, a7
                  srai         zero, s3, 20
                  srai         tp, s0, 3
                  or           s0, t2, s4
132:              bltu         s3, t2, 152f
133:              xor          s6, t1, tp
                  blt          a7, t5, 144f
135:              bltu         a1, ra, 139f
                  slti         gp, t5, 981
                  sltu         s0, t4, s7
                  srli         a1, t2, 28
139:              and          s6, s2, sp
                  sra          tp, a3, zero
141:              slli         s3, s3, 23
                  slt          t2, s0, t6
                  srai         t4, s5, 25
144:              blt          gp, a1, 152f
                  lui          a0, 399939
                  andi         s1, ra, -1796
                  bgeu         t1, a5, 161f
                  bne          t3, s10, 152f
                  bge          a3, s1, 163f
                  addi         tp, s0, -223
                  or           s9, t2, t3
152:              xori         s9, t4, 1062
                  nop
                  sub          a0, a3, a2
                  sltiu        t0, t4, -1606
                  sltu         s10, s9, a7
                  slti         a5, a6, 1796
                  srl          s6, s0, a5
                  beq          s5, s10, 172f
                  srai         s3, tp, 25
161:              bgeu         tp, s10, 176f
                  sra          s10, s1, s0
163:              andi         s10, s1, -2035
                  addi         a6, t3, 2031
                  addi         a2, s10, 1585
                  or           s8, a6, zero
                  slli         t4, a1, 3
                  sub          s11, a1, t4
                  sll          s11, t6, s0
                  nop
                  ori          a7, s5, -693
172:              slti         a0, a7, -1494
                  add          s4, t2, t3
                  blt          s1, s6, 192f
                  xori         zero, a2, -1889
176:              andi         t2, a1, 505
                  auipc        t5, 833793
                  bne          s2, tp, 184f
                  srli         a2, a2, 17
                  xori         t0, s9, 1073
                  slti         a7, a2, 809
                  ori          ra, a4, 288
                  sltiu        s6, ra, 61
184:              sltiu        s3, sp, 53
                  add          t6, s4, a5
                  bne          a7, gp, 201f
                  sll          s0, s9, t5
                  or           a7, zero, s6
                  sll          a7, t4, s9
                  or           s3, s8, s4
                  or           a3, zero, s1
192:              sltu         a1, t0, s4
                  srai         zero, a4, 27
                  lui          a6, 855295
                  srl          s6, s8, t2
                  or           a6, t0, s7
                  andi         a6, t2, 764
                  srai         gp, s7, 30
                  sll          t2, t5, s2
                  srl          s1, s9, s3
201:              andi         t3, a1, 1873
                  srli         sp, t1, 9
                  ori          t6, t1, 1521
                  srl          zero, a1, a7
                  nop
                  bge          a4, t3, 214f
                  and          s0, s6, s7
                  sltiu        t5, t2, -1071
                  sltiu        s10, a1, -99
                  bne          s3, t1, 230f
                  xor          t5, s10, s5
                  andi         t5, s11, 1265
                  and          ra, t5, a1
214:              addi         a5, s3, -1384
                  bge          a4, ra, 219f
                  auipc        t4, 850802
                  xori         a2, a1, -413
                  xor          s9, s4, s0
219:              sra          ra, a7, t4
                  sll          t6, a0, s3
                  bltu         t2, t4, 226f
                  blt          a7, s5, 223f
223:              srli         gp, a7, 15
                  and          t0, gp, s9
                  bne          s4, s7, 233f
226:              beq          s9, a5, 233f
                  sub          zero, t5, a5
                  nop
                  slli         s3, zero, 1
230:              sltu         a7, a6, s10
                  slt          s6, t2, s0
                  bne          s10, t2, 235f
233:              slt          s11, s11, s2
                  sll          a3, s6, t3
235:              bltu         sp, s8, 244f
                  srai         a6, a1, 27
                  ori          a0, tp, 300
                  sll          t4, zero, t2
                  sub          s6, a2, a5
                  or           t0, t5, t3
                  sll          a0, a0, t0
                  slt          zero, a2, gp
                  or           s11, t3, a6
244:              bltu         gp, t1, 250f
                  add          ra, tp, gp
                  srli         s0, t5, 29
                  slt          zero, s9, a6
                  bge          s7, s0, 258f
                  sltu         s11, t4, s4
250:              lui          s3, 72048
                  addi         s7, gp, 1540
                  srl          s7, s6, t5
                  srai         tp, a1, 11
                  xor          s0, ra, gp
                  srl          t5, a2, s11
                  ori          s1, a2, 2045
                  nop
258:              and          ra, a0, sp
                  andi         t0, s1, -300
                  sltiu        t4, a7, 581
                  xor          ra, a3, t0
                  slt          tp, tp, s3
                  sltiu        s4, t2, 1854
                  xor          t1, a7, zero
                  xori         t6, s1, -2002
                  or           s1, s2, a5
                  slt          s8, s8, s4
                  srli         s8, s3, 31
                  ori          s6, s3, -1355
                  nop
                  bltu         s10, s3, 280f
                  sll          a7, a7, a5
                  sltiu        a0, a5, 1744
                  srl          t6, s10, a4
                  addi         tp, s0, 1178
                  slli         ra, ra, 28
                  bne          s11, t3, 291f
                  sub          gp, a3, a3
                  bne          t4, a1, 293f
280:              slt          s3, a7, a0
                  bltu         t5, a7, 287f
                  blt          s0, s0, 289f
                  srli         sp, s9, 29
                  slt          ra, s10, t0
                  auipc        t0, 815463
                  nop
287:              bltu         zero, tp, 295f
                  slti         s0, sp, 1284
289:              beq          a1, a0, 305f
                  srai         a7, t0, 6
291:              blt          t6, s2, 309f
                  bgeu         s5, s2, 293f
293:              ori          a0, a3, -864
                  bgeu         s1, t4, 301f
295:              andi         s11, t4, 399
                  auipc        s4, 184868
                  slt          t0, t0, s11
                  ori          ra, s1, -1089
                  addi         t2, zero, 853
                  srl          t2, t1, s6
301:              sll          s9, s4, a7
                  or           a3, a2, ra
                  beq          a4, s0, 315f
                  xori         tp, t1, 1642
305:              add          t6, sp, a4
                  bge          a0, s11, 316f
                  sub          s4, tp, t4
                  srli         a6, s6, 17
309:              blt          t3, s1, 314f
                  auipc        t4, 820444
                  and          s9, t3, s11
                  andi         zero, a0, -2024
                  and          a5, s4, s7
314:              ori          s9, s8, 1578
315:              slt          s4, ra, t1
316:              addi         t6, s6, 1045
                  ori          gp, a0, 1227
                  add          a1, t3, t2
                  or           t6, s7, s1
                  bge          s5, s3, 336f
                  slt          t5, s2, s9
                  nop
                  sub          ra, t5, t4
                  slti         s4, gp, -709
                  addi         s9, s10, 1486
                  sltu         s1, zero, s4
                  auipc        s0, 607182
                  andi         s7, a5, -1836
                  lui          tp, 387219
                  slt          a3, s11, a3
                  slli         a6, a4, 31
                  xori         a5, a3, 184
                  sltiu        s8, s1, 1430
                  add          s1, t6, s8
                  srli         a6, s4, 30
336:              and          a3, t5, tp
                  auipc        s8, 679918
                  nop
                  add          a6, ra, t2
                  ori          s4, t6, -1935
                  sll          a0, a2, s6
                  srli         sp, t1, 26
                  slt          s4, s9, s0
                  sltu         t0, t0, s5
                  bgeu         s6, tp, 352f
                  bgeu         t3, s11, 360f
                  srli         s10, zero, 20
                  xori         s1, a7, -522
                  addi         a2, a4, -1080
                  auipc        t5, 781157
                  bge          t4, s8, 371f
352:              addi         s0, a5, 1379
                  xor          sp, gp, s4
                  or           s11, s0, a6
                  sra          s11, s9, s1
                  lui          a5, 78304
                  andi         t0, a0, -1753
                  andi         gp, a5, -45
                  andi         s1, s2, -1380
360:              srai         s1, s4, 20
                  srli         t0, a5, 25
                  and          t5, tp, t2
                  sub          a6, a5, t5
                  addi         s9, t1, -1822
                  add          a0, s1, s5
                  srl          s6, s7, ra
                  nop
                  blt          a7, s7, 374f
                  sub          s9, ra, t5
                  srli         a0, s0, 29
371:              bltu         a7, sp, 378f
                  addi         t6, t0, -536
                  bgeu         a0, s0, 374f
374:              andi         a1, gp, -1911
                  srai         a5, zero, 19
                  nop
                  bge          a3, s5, 395f
378:              srai         t0, t5, 31
                  sltiu        ra, s4, 411
                  or           gp, a0, sp
                  addi         a6, a7, -1735
                  bge          a5, s11, 385f
                  auipc        tp, 790682
                  auipc        zero, 716587
385:              sltiu        t4, t6, -880
                  nop
                  lui          t4, 530209
                  bne          t2, s1, 394f
                  beq          t1, gp, 404f
                  srl          s3, t3, s0
                  slt          s10, t0, t6
                  addi         gp, s2, -1694
                  sltiu        s1, s0, 750
394:              nop
395:              sltu         s0, s5, s4
                  sll          s11, a4, s4
                  xor          s3, s11, s10
                  sll          ra, s10, a5
                  add          s6, s7, a4
                  sltiu        t4, a6, -26
                  beq          s2, s7, 407f
                  addi         t3, s10, -1682
                  nop
404:              bgeu         s8, s1, 418f
                  sltu         t5, t0, s4
                  lui          t6, 50531
407:              lui          s4, 613479
                  add          s3, s5, s4
                  slti         a7, t4, 1921
                  sll          s9, t4, s10
                  sltu         gp, t2, s3
                  xori         sp, t3, -1969
                  beq          s7, a1, 417f
                  nop
                  sll          s6, gp, s2
                  addi         s0, s1, -89
417:              and          s9, t3, s4
418:              bne          s2, a6, 426f
                  srai         s8, a1, 18
                  sra          zero, t6, ra
                  or           sp, t1, t1
                  sra          s1, s7, s1
                  srai         s8, s6, 6
                  slt          s9, t6, sp
                  blt          s3, t6, 429f
426:              blt          t1, s2, 439f
                  blt          s5, s0, 436f
                  sltiu        zero, s1, 732
429:              slli         s1, s0, 6
                  slt          ra, s1, s2
                  auipc        s8, 244074
                  beq          sp, t1, 442f
                  sra          t2, s4, a6
                  ori          s11, t6, 1948
                  andi         t2, s8, -1566
436:              bgeu         t0, t4, 450f
                  addi         tp, a0, -1378
                  bge          gp, s11, 447f
439:              xori         t4, tp, 1804
                  sltiu        t3, t1, 1111
                  slti         t1, t0, -872
442:              addi         t5, t0, 1342
                  andi         s8, sp, 1628
                  bne          t4, t2, 454f
                  sltiu        t4, gp, -289
                  add          s4, s4, t6
447:              sll          s6, s0, zero
                  blt          sp, a7, 455f
                  srai         a7, t1, 26
450:              blt          a7, s9, 465f
                  or           s9, a6, t0
                  addi         s8, a7, -1939
                  xori         t6, a1, -194
454:              and          s3, t0, s6
455:              bgeu         s8, zero, 467f
                  and          sp, sp, t6
                  bne          s4, t1, 465f
                  beq          s11, t1, 459f
459:              xori         t6, s9, -892
                  andi         s1, s3, -1328
                  nop
                  srl          t3, a2, a7
                  sub          s0, a5, s0
                  sub          a5, a2, a1
465:              blt          s2, gp, 473f
                  bltu         a2, s0, 484f
467:              sra          t0, s11, tp
                  sub          t0, s10, t4
                  nop
                  andi         s3, a6, -129
                  bge          a1, s0, 485f
                  xori         t2, s10, -696
473:              srai         t2, s2, 30
                  beq          s10, a3, 480f
                  xor          a3, a7, t6
                  xori         s1, s3, -1517
                  la           sp, region_0+1787 #start riscv_load_store_rand_instr_stream_6
                  lb           s7, -172(sp)
                  slt          t6, s3, a4
                  nop
                  sb           a6, 122(sp)
                  lb           s10, 22(sp)
                  or           s4, zero, t2
                  and          tp, a7, s3
                  sw           a4, -147(sp)
                  sltu         s1, t4, t1
                  sb           gp, 212(sp)
                  lb           s1, -209(sp)
                  lhu          a2, -143(sp)
                  srl          gp, s10, tp
                  sb           t4, 90(sp)
                  srli         a7, s9, 26
                  nop
                  lh           t0, -201(sp)
                  lb           t5, -54(sp)
                  lw           a6, -39(sp)
                  lbu          a1, 50(sp)
                  lui          tp, 38785
                  lb           t5, 45(sp)
                  sub          s11, t0, a0
                  sb           t2, -126(sp)
                  sb           t0, -104(sp)
                  lb           s8, -190(sp)
                  sb           s5, -109(sp)
                  lb           a3, -150(sp)
                  srai         s8, t6, 2
                  sb           s1, -54(sp)
                  lbu          s0, 7(sp) #end riscv_load_store_rand_instr_stream_6
                  bne          s8, t0, 489f
                  bgeu         a7, t2, 498f
                  bltu         s11, zero, 497f
480:              srli         t2, a2, 21
                  or           t1, s11, a7
                  and          t6, a2, a1
                  andi         t2, s7, -172
484:              xor          s10, tp, tp
485:              sll          a2, a1, s10
                  xor          s0, s3, t1
                  sll          ra, s6, s9
                  srai         t4, zero, 26
489:              and          t1, a2, t0
                  nop
                  srai         t0, tp, 14
                  addi         s10, a0, -473
                  srai         s6, a0, 16
                  ori          a1, ra, 1628
                  bltu         a0, a1, 502f
                  beq          s8, zero, 503f
497:              slt          a2, a0, a4
498:              sltu         s1, t4, a6
                  ori          s7, t4, -1557
                  slt          gp, s6, ra
                  beq          zero, zero, 516f
502:              sltiu        s9, a1, -868
503:              bge          t6, s8, 517f
                  auipc        a2, 568301
                  srai         s9, t5, 1
                  srli         s7, t4, 28
                  srai         t3, a7, 6
                  bne          tp, s11, 516f
                  auipc        t3, 763476
                  blt          sp, gp, 516f
                  ori          a7, s5, 1346
                  sra          a1, t2, zero
                  slt          s7, s3, t4
                  lui          s1, 526341
                  sll          ra, a4, t4
516:              auipc        t0, 1015799
517:              add          s11, s8, tp
                  beq          s6, s11, 522f
                  beq          s4, s2, 529f
                  blt          s4, a7, 533f
                  and          s6, tp, t4
522:              and          s4, s4, zero
                  sll          sp, a0, a1
                  and          sp, a7, a6
                  la           tp, region_0+846 #start riscv_load_store_rand_instr_stream_8
                  sb           t4, 15(tp)
                  lb           zero, -10(tp)
                  lhu          gp, -16(tp)
                  or           t0, t2, s8
                  lb           a6, -16(tp)
                  lbu          s3, 0(tp)
                  lbu          t3, 0(tp)
                  lb           t6, 13(tp)
                  lbu          t4, 10(tp)
                  lb           a2, -13(tp)
                  lui          gp, 809943
                  slli         zero, ra, 18
                  nop
                  sb           s11, -9(tp)
                  lb           t4, -13(tp)
                  sb           gp, -15(tp)
                  sh           zero, 2(tp)
                  lhu          a0, -8(tp)
                  sh           a5, -8(tp)
                  lb           a2, -15(tp)
                  xor          s9, t6, s6
                  lhu          zero, 2(tp)
                  slli         a5, t3, 8
                  srai         t5, s6, 30
                  lhu          t4, -12(tp)
                  srli         s6, s10, 6
                  xor          t1, s10, s5
                  lbu          s4, -9(tp)
                  lbu          a7, 15(tp)
                  lb           s11, 10(tp)
                  lbu          gp, -9(tp)
                  sra          s8, zero, s7
                  sll          a2, s4, s1
                  sb           t5, 0(tp) #end riscv_load_store_rand_instr_stream_8
                  sra          s1, ra, s6
                  lui          s3, 308894
                  beq          s6, s8, 536f
                  srl          a2, t2, s7
529:              slli         ra, s11, 22
                  bge          t6, zero, 548f
                  blt          tp, a0, 539f
                  bge          s7, t3, 533f
533:              beq          s9, a7, 534f
534:              sltu         s6, a2, t0
                  bne          t4, s1, 549f
536:              ori          s10, s5, -221
                  sll          a0, a3, a5
                  or           s6, a4, zero
539:              sltiu        t6, sp, 85
                  addi         t5, zero, -5
                  or           t0, t5, t0
                  beq          s3, t4, 548f
                  slt          zero, a4, a2
                  srai         tp, s9, 12
                  or           s1, zero, zero
                  sltu         t1, sp, s8
                  slli         a3, gp, 23
548:              addi         t6, s3, -1480
549:              blt          sp, ra, 553f
                  sll          s1, s5, tp
                  sll          a0, t0, t2
                  sub          tp, t6, t0
553:              beq          t1, t3, 569f
                  srli         t3, s5, 0
                  slt          s0, t1, s10
                  slt          a3, a2, gp
                  bne          t0, s1, 572f
                  andi         s3, t2, -1364
                  bltu         gp, s2, 566f
                  sltu         t3, s8, s8
                  andi         a2, a0, -464
                  sub          a1, s7, ra
                  xori         zero, t2, -752
                  bne          tp, a7, 572f
                  xor          a7, a7, a4
566:              ori          a3, a6, 545
                  xor          s8, t0, a6
                  or           tp, s5, s1
569:              sltu         a3, t6, t2
                  ori          t6, a0, 2046
                  sra          a1, tp, t4
572:              xori         s10, s6, 1969
                  nop
                  andi         s4, a4, -1674
                  xor          t4, s3, s6
                  bge          a1, s4, 586f
                  ori          t1, s0, 302
                  andi         zero, zero, -1626
                  auipc        s4, 939513
                  slli         ra, s5, 13
                  blt          s6, a3, 584f
                  xori         tp, a2, -1076
                  lui          t5, 828765
584:              or           t6, s1, zero
                  auipc        zero, 430702
586:              bgeu         tp, s8, 591f
                  srai         s1, t5, 31
                  xori         tp, s9, 1031
                  srai         s6, s0, 16
                  bge          t2, ra, 599f
591:              or           s0, t6, s7
                  and          s6, t4, sp
                  srai         s8, gp, 23
                  sub          s8, t5, a0
                  add          s1, s1, s11
                  blt          s3, a6, 600f
                  srli         s9, s3, 9
                  sll          s10, s9, s11
599:              sll          tp, tp, a0
600:              xori         s11, t1, 594
                  blt          a6, a3, 611f
                  andi         s4, s4, -304
                  sub          s11, sp, s1
                  sltiu        t1, s8, 1274
                  nop
                  sltu         s4, sp, a4
                  ori          t1, zero, -942
                  blt          a1, zero, 623f
                  auipc        s1, 95888
                  slti         tp, a3, -1357
611:              sub          a0, a2, zero
                  bne          a2, s8, 622f
                  nop
                  sll          t0, s10, s1
                  srli         s0, a4, 29
                  xori         tp, s9, -1867
                  sra          a0, tp, a1
                  nop
                  ori          a5, a7, -1593
                  bge          t2, s2, 627f
                  bge          s3, s5, 639f
622:              bne          s9, s5, 629f
623:              sra          s3, a2, s4
                  lui          s0, 902181
                  add          a5, sp, a2
                  sltiu        t3, s5, -156
627:              xori         a5, s1, 498
                  addi         t6, s3, 1859
629:              auipc        a2, 888415
                  addi         a1, s3, -1569
                  andi         ra, zero, -1003
                  sll          t1, t5, a3
                  srl          ra, s4, sp
                  slt          t2, s3, t0
                  nop
                  srl          tp, a2, s10
                  add          s11, s4, a4
                  slli         s10, s11, 29
639:              bgeu         s8, a0, 651f
                  blt          s5, a1, 654f
                  srai         s10, a5, 2
                  or           t3, s1, s2
                  auipc        s10, 514381
                  and          t1, a6, s5
                  bne          zero, t1, 659f
                  sub          s8, s10, s2
                  srai         t1, ra, 31
                  and          gp, sp, t0
                  ori          a3, gp, -133
                  addi         a7, t1, -1923
651:              sltiu        t4, s6, 1748
                  sltu         a6, s8, s5
                  nop
654:              slli         a1, sp, 14
                  auipc        s6, 529041
                  auipc        zero, 631678
                  xor          a5, a3, t3
                  slt          a6, t4, s7
659:              sll          s7, s9, s5
                  slti         t1, t0, -1888
                  auipc        s6, 433239
                  bne          t4, s3, 667f
                  sltu         s7, a1, s10
                  srai         zero, ra, 1
                  bgeu         s5, a4, 666f
666:              sltu         gp, a1, t5
667:              add          a2, a6, ra
                  auipc        t5, 833286
                  srli         t3, tp, 7
                  bltu         sp, t3, 686f
                  bge          a1, a0, 680f
                  beq          tp, t5, 678f
                  srli         a1, t2, 1
                  lui          a2, 261693
                  andi         a0, t1, 1009
                  sub          zero, t3, s11
                  slt          s10, s3, s5
678:              andi         a7, a7, 802
                  srli         a7, t0, 18
680:              xor          t0, a0, s1
                  bge          s8, tp, 699f
                  and          sp, s3, s10
                  slt          s4, a7, s1
                  nop
                  sra          s3, s6, s1
686:              sltiu        s10, a6, -1709
                  sub          a1, a4, zero
                  beq          t1, t1, 696f
                  slti         t4, s1, 637
                  lui          s9, 357172
                  ori          s9, t0, -1515
                  auipc        t4, 583560
                  bgeu         s1, s5, 701f
                  sltu         tp, t0, s5
                  sltiu        s1, t0, -1405
696:              addi         s10, s9, -639
                  or           ra, sp, s2
                  or           a0, a1, t1
699:              and          tp, t3, a7
                  ori          s9, a3, 693
701:              blt          a2, t3, 702f
702:              slti         zero, a7, 1213
                  sra          zero, t0, tp
                  sltiu        s4, a1, 992
                  bne          t2, t0, 709f
                  andi         s0, a6, 1299
                  slli         ra, a0, 23
                  bgeu         s4, a6, 728f
709:              sll          s8, t5, t3
                  bge          s10, a7, 717f
                  srli         t0, t4, 29
                  srli         s8, ra, 25
                  slt          t1, a0, ra
                  slli         s0, a3, 8
                  slti         t1, s2, 4
                  sll          a6, a2, s10
717:              sll          a7, s7, t4
                  sra          s11, s6, t1
                  xori         a6, a1, -1256
                  ori          a2, zero, -446
                  srli         s6, s5, 9
                  sra          a3, s3, t5
                  nop
                  sltiu        t3, gp, 1608
                  add          t0, s1, zero
                  bltu         t5, s9, 729f
                  sltu         t2, t6, t5
728:              slt          gp, tp, a1
729:              sltiu        s8, s2, 1658
                  srli         s6, s11, 10
                  srli         s0, s10, 21
                  slli         s11, t5, 14
                  slli         tp, sp, 30
                  bltu         t0, zero, 748f
                  bge          t4, t5, 750f
                  lui          s10, 219866
                  beq          t3, a7, 743f
                  srli         s9, s7, 14
                  sra          a2, t3, a4
                  srai         a7, s8, 16
                  sra          t1, s2, s4
                  addi         s7, zero, 1963
743:              sltu         tp, a2, s0
                  beq          s6, s4, 750f
                  srl          a2, a1, a0
                  andi         t4, s8, 397
                  add          s4, t6, t6
748:              srai         a7, a2, 16
                  sub          s10, a3, a5
750:              xor          t0, t5, a6
                  bge          s9, zero, 760f
                  andi         a1, s7, -1934
                  sll          s7, ra, ra
                  srai         s3, t3, 23
                  add          t0, t2, a4
                  bge          a2, sp, 764f
                  sltiu        s4, zero, 1827
                  srl          s4, s10, s6
                  slli         a7, s6, 19
760:              andi         a7, s11, -1056
                  sll          zero, a3, s8
                  xori         s3, s3, -1504
                  sll          s9, s3, t1
764:              xor          s10, tp, s5
                  lui          s9, 350718
                  srai         t5, sp, 0
                  addi         ra, a4, 381
                  add          a6, a5, t2
                  slli         sp, s4, 21
                  addi         s4, s5, -2010
                  addi         a3, t0, -1984
                  slti         s7, a2, 549
                  blt          a2, t1, 786f
                  and          t0, s5, s3
                  slli         a2, sp, 22
                  andi         s7, a5, -181
                  sra          a3, a5, a0
                  bgeu         s5, t4, 782f
                  add          s11, t6, s1
                  sltu         t3, a6, a5
                  srli         s6, sp, 9
782:              auipc        a1, 944193
                  bne          s7, s3, 788f
                  bge          s8, a2, 792f
                  ori          t6, s2, 1574
786:              srl          gp, s4, s11
                  bltu         a1, t1, 803f
788:              bge          s0, tp, 797f
                  srli         gp, s0, 0
                  nop
                  srli         a6, gp, 0
792:              lui          a1, 402077
                  add          a6, s1, s0
                  slt          s9, s2, s2
                  slt          t5, a4, t1
                  srl          s8, s10, t2
797:              add          t1, a4, zero
                  and          s3, ra, s11
                  ori          s11, zero, -561
                  xori         sp, s10, 1777
                  xor          s0, t0, a5
                  sra          a7, t3, s8
803:              bltu         zero, s2, 821f
                  or           ra, a4, t3
                  lui          tp, 924123
                  xori         gp, t1, 234
                  bge          tp, a4, 815f
                  sll          a6, ra, s9
                  slti         t0, a5, 622
                  andi         zero, s1, -1268
                  bne          s0, sp, 825f
                  srai         gp, a6, 27
                  or           gp, a5, s0
                  nop
815:              andi         s3, s1, -764
                  addi         a6, t1, -1488
                  lui          a3, 895046
                  bne          a4, a4, 825f
                  slti         s11, s7, -389
                  sltu         a5, a4, t4
821:              slt          t0, t4, s5
                  andi         s7, s6, -407
                  and          t1, s8, ra
                  bge          s6, s1, 839f
825:              srli         ra, a0, 0
                  srli         ra, a7, 16
                  ori          a3, zero, -93
                  ori          t5, s11, -1182
                  srl          ra, t5, zero
                  sub          s1, a5, gp
                  addi         s8, zero, 1581
                  nop
                  addi         t1, t6, -66
                  nop
                  andi         sp, a1, 1811
                  bgeu         ra, tp, 851f
                  bne          s8, ra, 841f
                  srl          zero, a0, s9
839:              blt          t3, s4, 847f
                  and          sp, s6, a3
841:              lui          a7, 693700
                  bgeu         tp, t2, 848f
                  lui          s3, 778649
                  sra          t6, t4, t5
                  bge          a1, s8, 855f
                  lui          s3, 891128
847:              slti         a6, a0, 1692
848:              and          sp, s11, t3
                  addi         t3, zero, 1219
                  add          zero, s11, a7
851:              nop
                  slli         a6, a6, 6
                  sltu         ra, a0, s10
                  lui          s6, 95773
855:              bltu         a7, a3, 869f
                  add          s10, s6, s11
                  nop
                  bge          a2, t2, 871f
                  bltu         gp, s5, 866f
                  xor          t5, t5, s3
                  or           gp, t6, t3
                  bne          t0, s7, 868f
                  sltiu        sp, t2, 1793
                  bgeu         a4, s10, 870f
                  sltiu        a2, t3, -379
866:              slti         a1, t0, -1584
                  or           s0, s8, t6
868:              srli         a0, a0, 25
869:              sll          t3, a1, a1
870:              xori         sp, s7, 977
871:              sub          s6, a4, s6
                  sra          zero, a2, ra
                  bge          s8, s5, 891f
                  bltu         t3, s11, 884f
                  sll          a6, a4, a2
                  sra          s6, s9, s3
                  sra          a7, s8, t0
                  slti         gp, s6, -1028
                  slti         gp, s5, -309
                  slli         a2, a6, 4
                  or           ra, s0, a1
                  slli         s9, t4, 13
                  nop
884:              sra          tp, s9, s10
                  bltu         s5, a2, 897f
                  bge          a6, a1, 893f
                  and          s1, s11, s6
                  beq          s2, zero, 897f
                  sra          s9, s9, zero
                  xor          sp, s1, zero
891:              slt          ra, t6, s10
                  sll          s1, s5, a1
893:              sltiu        t3, s2, -174
                  xor          s10, a5, a4
                  beq          s5, t6, 896f
896:              auipc        gp, 561093
897:              bltu         t3, s4, 917f
                  srai         ra, s9, 5
                  bge          ra, a4, 902f
                  sltiu        t0, a6, 315
                  blt          s11, t1, 915f
902:              or           sp, s5, tp
                  srli         t6, t6, 12
                  bge          s4, s9, 905f
905:              srli         s7, s5, 23
                  srli         t6, t2, 7
                  bne          s2, sp, 913f
                  slti         t0, a5, -1559
                  beq          s2, a3, 919f
                  andi         a7, a6, 70
                  or           a3, t4, a1
                  srli         t4, a4, 27
913:              lui          t0, 799690
                  sll          sp, t1, t2
915:              ori          a1, s3, -1806
                  and          a6, s9, t3
917:              or           s3, s6, s0
                  addi         s9, a7, -1966
919:              srli         s9, t4, 9
                  and          s6, a3, s6
                  sra          t4, s6, s5
                  bne          t3, s0, 934f
                  blt          gp, s6, 931f
                  bne          t5, t5, 938f
                  andi         a3, gp, 466
                  add          t2, s6, s3
                  ori          s7, s6, -1559
                  or           a3, s6, a4
                  lui          a5, 344920
                  ori          gp, a4, 1171
931:              or           t4, a2, t5
                  bge          a6, a7, 936f
                  bge          tp, t1, 937f
934:              or           t5, a6, sp
                  slli         s1, s8, 0
936:              xor          a2, s1, a1
937:              sltiu        s8, a0, 774
938:              blt          t3, t0, 956f
                  bltu         a7, t4, 948f
                  ori          ra, t5, 130
                  or           tp, a1, s8
                  sra          t5, s4, zero
                  addi         a1, s1, 792
                  srl          a6, t4, a0
                  ori          a0, s3, -1489
                  add          t2, t0, s8
                  bltu         a4, ra, 957f
948:              addi         a1, t3, -1184
                  nop
                  srl          t1, s2, t2
                  bge          ra, s3, 956f
                  xor          a6, gp, ra
                  bgeu         a5, s1, 956f
                  andi         s9, a4, 1720
                  auipc        a7, 519141
956:              srl          s3, a4, a0
957:              sub          s8, t2, ra
                  slli         t0, a2, 24
                  xori         sp, a1, 961
                  sub          gp, s3, s5
                  sub          t2, sp, s5
                  sra          t0, s2, s6
                  bne          s4, s8, 969f
                  bne          s5, s11, 982f
                  bne          s10, ra, 972f
                  sltu         s9, s9, s6
                  lui          s7, 426855
                  xor          t2, t2, s1
969:              slti         a7, t4, 1499
                  srl          t4, t0, s1
                  slt          a3, s8, s6
972:              slli         s1, s5, 28
                  bge          a2, a1, 981f
                  srai         t0, s2, 10
                  blt          s2, s6, 976f
976:              srl          a2, a7, sp
                  xori         s1, t3, -1199
                  srli         t5, tp, 1
                  slli         s4, s3, 20
                  slt          a7, a2, t6
981:              or           s4, t0, gp
982:              xori         s8, a5, -729
                  sub          t1, a5, a2
                  slt          sp, s5, t5
                  and          s8, t0, a3
                  xor          s11, s9, tp
                  or           s9, a0, s6
                  addi         tp, s11, 1867
                  bgeu         a4, s0, 995f
                  beq          tp, a0, 1004f
                  bltu         t2, tp, 1004f
                  addi         t6, sp, 1150
                  sub          a7, a6, s9
                  slt          a7, s7, s1
995:              srli         t1, a6, 12
                  xori         s9, s0, -1574
                  addi         ra, s10, 43
                  sra          t6, t1, s5
                  xor          t3, sp, zero
                  slti         s10, s11, 1793
                  bge          gp, s2, 1009f
                  blt          s8, s3, 1017f
                  auipc        s9, 881824
1004:             srli         t6, s8, 28
                  srli         a5, t3, 16
                  sra          s9, s0, t5
                  sll          s9, t3, t1
                  bne          t3, t6, 1028f
1009:             sub          t2, s6, s9
                  addi         a5, s10, 310
                  andi         tp, a3, -533
                  slt          t2, s1, zero
                  bne          a0, s10, 1028f
                  sll          s10, s11, a1
                  blt          a5, a0, 1031f
                  xor          a3, s5, t6
1017:             ori          s1, s5, 1338
                  sub          a1, t2, s9
                  sltiu        a0, ra, 556
                  slti         s0, a3, -585
                  xor          a6, t3, a1
                  add          s1, t3, a2
                  andi         t1, s10, 1722
                  beq          a6, a7, 1031f
                  blt          a2, gp, 1026f
1026:             bgeu         a3, s7, 1033f
                  blt          a6, s6, 1041f
1028:             auipc        s10, 623849
                  blt          s4, s4, 1038f
                  srai         a5, s6, 29
1031:             beq          s4, s8, 1036f
                  nop
1033:             addi         t0, a4, 1963
                  beq          t2, a5, 1040f
                  bge          t5, a7, 1041f
1036:             bge          zero, s3, 1040f
                  addi         t0, t3, 669
1038:             srai         a6, s10, 19
                  xor          s4, t6, s11
1040:             sltu         s10, t3, a2
1041:             slti         t5, t6, 1175
                  addi         t4, sp, 350
                  blt          s6, ra, 1044f
1044:             auipc        t2, 663540
                  bltu         a6, t5, 1057f
                  addi         zero, s1, 1827
                  auipc        s11, 964780
                  addi         tp, s2, -1375
                  beq          t2, a2, 1063f
                  slli         s6, a4, 19
                  add          t6, a5, t1
                  addi         a1, t3, 546
                  bge          ra, t2, 1063f
                  blt          ra, a3, 1069f
                  sub          s6, s1, t0
                  sll          a3, a4, a0
1057:             bgeu         s11, tp, 1075f
                  or           s3, a5, a1
                  slti         s3, s10, -1887
                  andi         s3, s5, -244
                  srli         s10, a4, 16
                  addi         s8, s2, 1980
1063:             slli         ra, a1, 7
                  srai         gp, t2, 17
                  sltiu        t2, s4, 1387
                  nop
                  srai         t4, s11, 12
                  srai         gp, a5, 25
1069:             nop
                  slt          s4, a0, t3
                  addi         s9, a1, -695
                  sltiu        s6, t6, 1588
                  srl          t1, t4, t0
                  or           t3, sp, t0
1075:             srai         s4, s4, 2
                  sltiu        s4, t4, 2019
                  bge          ra, ra, 1087f
                  sltiu        sp, s11, 1563
                  bge          s10, a4, 1087f
                  and          s3, a2, a5
                  bge          a5, a0, 1095f
                  addi         t3, a5, 1511
                  srl          s4, s6, a3
                  xor          t0, a5, a5
                  slt          a6, s2, t0
                  bltu         t5, t5, 1101f
1087:             srai         a5, a2, 5
                  la           sp, region_0+603 #start riscv_load_store_rand_instr_stream_4
                  lb           t0, 37(sp)
                  and          s1, s5, s11
                  lbu          a3, 0(sp)
                  srai         a2, zero, 3
                  lh           s1, -21(sp)
                  sra          s6, s6, a5
                  andi         s9, s7, 508
                  srai         t1, s1, 26
                  lb           a1, -22(sp)
                  xori         t1, t5, 1087
                  sb           a4, 34(sp)
                  lb           t3, 6(sp)
                  andi         a5, t4, -1634
                  srli         t6, a2, 1
                  slt          s9, a6, a7
                  addi         ra, t5, 552
                  lb           ra, -25(sp)
                  lh           a6, 39(sp)
                  srli         t3, a5, 12
                  lbu          ra, 6(sp)
                  srli         zero, s0, 31
                  sub          t3, a7, a0
                  sub          s6, t0, a3
                  add          t0, a3, a7
                  sra          a1, a7, a0
                  slt          s1, s1, a2
                  slt          s6, a4, s4
                  sltiu        a3, t1, 1555
                  sh           s2, 47(sp)
                  lb           tp, 1(sp)
                  sw           s10, 9(sp) #end riscv_load_store_rand_instr_stream_4
                  beq          s4, tp, 1091f
                  xor          s4, t1, tp
                  bltu         a6, sp, 1098f
1091:             slti         a0, t1, -1224
                  add          s1, t6, a7
                  bne          t3, t4, 1102f
                  auipc        t4, 967689
1095:             add          s10, s8, gp
                  beq          a4, a5, 1103f
                  beq          s2, t3, 1115f
1098:             slti         s8, a5, 1858
                  bge          sp, a0, 1106f
                  addi         sp, s11, 611
1101:             xor          s6, s8, a0
1102:             and          t5, s11, t0
1103:             bne          s2, t0, 1111f
                  bltu         a3, t6, 1110f
                  sra          s9, s9, s9
1106:             beq          t1, t3, 1115f
                  beq          s8, t2, 1123f
                  srli         tp, s10, 24
                  add          s4, s8, s7
1110:             andi         ra, a6, 773
1111:             slt          a5, a5, s1
                  xori         s3, s10, 1211
                  sltiu        a2, s10, -159
                  and          a2, t3, a0
1115:             srl          a6, a5, t1
                  bgeu         t5, s10, 1136f
                  bge          s2, t3, 1121f
                  srai         s9, t5, 31
                  andi         s4, s6, 48
                  auipc        s9, 312315
1121:             sltu         t3, tp, a4
                  add          ra, a6, t6
1123:             sub          s3, t5, a4
                  srli         s6, a4, 29
                  addi         s10, s6, -913
                  ori          s0, t1, -1388
                  blt          s0, s8, 1140f
                  sltiu        a5, a4, 1888
                  or           t2, s5, s6
                  ori          t2, s8, 1893
                  slt          a3, a5, a4
                  lui          s1, 319675
                  auipc        s0, 1978
                  xor          ra, t2, a6
                  srli         a1, a3, 8
1136:             nop
                  and          zero, s4, s2
                  sll          s1, t1, s11
                  bne          s7, ra, 1148f
1140:             lui          s0, 590468
                  and          t4, a6, a7
                  srli         t3, s3, 1
                  la           a2, region_0+1320 #start riscv_load_store_rand_instr_stream_2
                  srli         s4, t5, 12
                  sb           sp, -1091(a2)
                  srl          s10, s2, s0
                  slli         s6, s5, 25
                  or           s1, zero, s9
                  addi         s3, t2, -1407
                  srli         s7, t0, 1
                  lhu          s7, 554(a2)
                  lbu          s1, 247(a2)
                  sltu         t3, t1, t0
                  lbu          s4, -810(a2)
                  xori         t5, sp, 800
                  ori          t6, t2, 2007
                  lb           a5, -1085(a2)
                  slli         t4, s11, 11
                  ori          s7, ra, -807
                  auipc        s1, 385109
                  lhu          a5, 4(a2)
                  or           a7, t0, s4
                  lui          a6, 564715
                  lb           t1, -762(a2)
                  sll          s1, a5, zero
                  sltu         s3, a5, s3
                  andi         a7, s3, -530
                  lb           a5, -1316(a2)
                  lb           t6, -85(a2)
                  lbu          s7, 511(a2)
                  sra          t0, t4, t5
                  addi         sp, s0, 1983
                  and          t5, s7, a0
                  sltiu        zero, t2, -1025
                  slli         sp, t6, 21
                  lbu          s8, -638(a2)
                  xori         t4, s1, -245
                  sh           s0, -212(a2)
                  lbu          a7, -363(a2)
                  add          t3, a0, a0
                  lhu          a3, 460(a2)
                  sb           a5, 553(a2)
                  auipc        tp, 233755
                  add          s0, a2, s2
                  lb           t0, 603(a2) #end riscv_load_store_rand_instr_stream_2
                  lui          sp, 776994
                  andi         a6, s10, -1019
                  lui          sp, 62770
                  sra          s3, t3, t3
                  bltu         t3, a2, 1148f
1148:             andi         s10, a1, -851
                  or           a7, s9, s11
                  lw           ra, 4(a4)
                  ori          s0, a0, 962
                  addi         a4, a4, 44
                  slt          s4, gp, t5
                  sra          s1, t2, s9
1496:             addi x2, x1, 1
1496:             jalr x2, x2, 0
sub_7:            xor          a7, a0, s10
                  xori         s4, s3, -1391
                  bge          t2, t0, sub_7_stack_p
sub_7_stack_p:    addi         a4, a4, -20
                  andi         s6, tp, -1720
                  sw           ra, 4(a4)
                  andi         s1, a3, 169
                  la           t5, region_0+52 #start riscv_load_store_rand_instr_stream_3
                  xori         t0, t2, 579
                  lhu          s9, -12(t5)
                  sra          s9, s6, t1
                  lbu          t0, 31(t5)
                  addi         a5, tp, 112
                  sub          tp, a0, s2
                  lbu          t2, -1(t5)
                  lui          s7, 284572
                  slli         s10, a6, 4
                  lhu          s4, -48(t5)
                  lb           a5, -41(t5)
                  srai         a6, gp, 16
                  lh           t3, 26(t5)
                  lbu          s9, -10(t5)
                  lbu          a3, 33(t5)
                  nop
                  ori          t4, s0, 1928
                  sb           s3, 63(t5)
                  nop
                  and          t3, a1, a5
                  lbu          a5, -18(t5)
                  sltu         a0, s10, a0
                  lb           gp, -2(t5)
                  lbu          s10, 1(t5)
                  sb           a0, 3(t5)
                  lbu          a5, -7(t5)
                  sll          a6, t6, s6
                  sltiu        a5, a2, -209
                  xori         t3, t3, -369
                  sra          t0, gp, sp
                  or           a2, t6, a3
                  lbu          s9, 58(t5)
                  auipc        a7, 366455
                  srli         gp, s9, 12
                  sll          s10, tp, s8
                  add          zero, s11, a1
                  lbu          t6, 14(t5)
                  lb           s10, -31(t5)
                  sb           t2, 21(t5)
                  andi         s11, s7, 1391
                  sb           a4, 1(t5)
                  nop
                  nop
                  addi         s4, t6, -1794
                  lbu          s8, 47(t5)
                  sh           s8, 42(t5) #end riscv_load_store_rand_instr_stream_3
                  la           sp, region_0+284 #start riscv_load_store_rand_instr_stream_2
                  lbu          gp, -6(sp)
                  sb           gp, 6(sp)
                  slt          s7, a7, a2
                  srl          ra, sp, s7
                  sltiu        s3, a5, -860
                  nop
                  slli         a3, s8, 2
                  sb           a3, 106(sp)
                  xor          s11, t5, tp
                  slti         a6, a2, 1248
                  andi         gp, a2, -568
                  lh           s3, 6(sp)
                  srl          s6, gp, t3
                  andi         s7, t6, -237
                  sub          s10, a4, s6
                  sb           s6, 213(sp)
                  sb           t2, 102(sp)
                  lui          s3, 372359
                  add          tp, a7, gp
                  lb           t3, 225(sp)
                  lb           a6, -207(sp)
                  sra          a1, s3, s11
                  sh           gp, -216(sp)
                  srli         s7, gp, 23
                  lb           a2, -80(sp)
                  ori          a1, s11, 1849
                  lbu          s1, -93(sp)
                  lb           gp, -96(sp)
                  lb           s11, 38(sp)
                  nop
                  lw           s10, 236(sp)
                  sb           s4, -55(sp)
                  lb           s0, -250(sp)
                  sh           ra, -98(sp)
                  lb           s10, 50(sp)
                  sb           a0, 101(sp)
                  lhu          s7, 236(sp)
                  sub          s9, t6, s5
                  lbu          s0, -144(sp) #end riscv_load_store_rand_instr_stream_2
                  la           t2, region_1+1155 #start riscv_load_store_rand_instr_stream_1
                  sb           a3, -52(t2)
                  sb           t2, 250(t2)
                  lbu          sp, 94(t2)
                  xor          a3, s8, tp
                  andi         a6, s4, -1373
                  or           t0, s6, zero
                  sw           s2, 85(t2)
                  srli         s11, zero, 0
                  lb           s11, 246(t2)
                  sh           s10, 1(t2)
                  sb           a6, 252(t2)
                  sb           s10, -169(t2)
                  sltiu        s0, t1, 1825
                  lw           s7, 237(t2)
                  sb           t6, 8(t2)
                  andi         t1, ra, 1982
                  xor          a0, s1, t4
                  and          tp, s11, t1
                  srl          a3, s3, s3
                  sb           s7, -52(t2)
                  sh           a1, 101(t2)
                  sltu         gp, s6, ra
                  lb           t3, -20(t2)
                  addi         t3, s9, 1877
                  sb           t5, -93(t2)
                  lb           s9, -46(t2)
                  xor          a5, s9, s5
                  addi         s9, a7, 1118
                  lbu          t1, 102(t2)
                  sub          t5, a3, t2
                  addi         t0, s7, -253
                  lhu          s11, 221(t2)
                  addi         t0, s6, -1499
                  lh           t0, -209(t2)
                  slli         s1, a7, 4
                  lbu          tp, 54(t2)
                  slt          t3, a2, s10
                  sb           a7, 55(t2)
                  sb           a1, 179(t2)
                  lbu          t6, -69(t2)
                  sra          a1, a4, a6
                  lb           t5, -147(t2)
                  lbu          s11, 151(t2)
                  lbu          s10, -53(t2)
                  srli         s9, s9, 8
                  sw           s4, -183(t2) #end riscv_load_store_rand_instr_stream_1
                  andi         s4, s8, -132
                  slt          s1, s3, s2
                  and          s9, zero, ra
                  sltu         s0, tp, t1
                  ori          zero, t6, -1835
                  slli         s11, a5, 13
                  sll          gp, a7, t2
                  bge          s3, s1, 10f
                  blt          t6, a3, 23f
                  xor          a7, t0, s4
10:               sll          s7, a7, s10
                  sra          zero, sp, a7
                  lui          s3, 984518
                  sltiu        s11, s10, -1827
                  srl          t3, t1, t0
                  sltiu        s9, s7, -1991
                  beq          t3, t2, 22f
                  xori         s9, gp, 1561
                  slli         t3, s8, 2
                  srli         s10, t2, 30
                  auipc        s4, 85979
                  add          s6, tp, sp
22:               nop
23:               beq          sp, t4, 41f
                  nop
                  bge          s1, a7, 37f
                  ori          gp, s7, -926
                  blt          a2, s0, 45f
                  srai         a2, a0, 20
                  bge          a2, sp, 44f
                  xori         s11, a6, -45
                  sll          a6, t4, a1
                  addi         a2, zero, 2025
                  sll          a7, s4, s8
                  nop
                  sub          ra, sp, t3
                  bltu         t2, s11, 45f
37:               sll          a5, s1, s5
                  add          s3, a5, t2
                  sltiu        t6, a4, 1627
                  sub          a5, a0, a3
41:               nop
                  srli         s3, a1, 15
                  or           a5, t1, s5
44:               sll          t4, tp, ra
45:               beq          t3, a0, 63f
                  addi         s8, sp, -812
                  bltu         s7, a5, 58f
                  lui          a2, 1021327
                  srai         s6, ra, 25
                  nop
                  ori          zero, a0, 1363
                  bltu         s1, s9, 68f
                  srl          tp, t5, tp
                  bne          zero, s11, 71f
                  sltu         a0, s0, a3
                  sll          ra, s7, t4
                  addi         tp, a6, 1945
58:               blt          sp, s3, 74f
                  xori         s10, tp, -627
                  addi         a1, a7, -1648
                  or           s4, t1, a2
                  srai         s0, tp, 6
63:               beq          a3, a4, 74f
                  addi         sp, s9, 247
                  lui          s8, 390704
                  beq          t5, a0, 71f
                  nop
68:               addi         t2, t0, -637
                  slti         a2, s7, 79
                  srl          s6, s9, s6
71:               srl          s1, a5, s11
                  slli         ra, a2, 6
                  addi         t1, t1, 1180
74:               or           s6, a0, sp
                  add          a7, ra, t1
                  or           s10, s4, a7
                  sltiu        t3, gp, -1664
                  slt          gp, a7, s3
                  bgeu         tp, sp, 86f
                  blt          s6, a4, 91f
                  slli         s0, s11, 13
                  bltu         gp, s4, 99f
                  or           s10, a7, s9
                  andi         s4, s8, 1413
                  bge          s3, tp, 97f
86:               sra          s11, t5, t4
                  sub          s10, s7, a0
                  sltu         s0, s0, a7
                  bgeu         s8, s6, 95f
                  bltu         a2, t0, 99f
91:               slli         s6, s8, 7
                  sltu         s11, s4, s7
                  sll          t5, t0, s6
                  lui          ra, 380420
95:               ori          a6, s5, -1700
                  blt          zero, s3, 100f
97:               slt          t0, s4, tp
                  sra          t0, s3, ra
99:               or           a7, s4, t1
100:              slt          tp, a3, s11
                  slti         a6, a1, -1779
                  xori         s0, s2, 1894
                  slli         t0, s10, 10
                  or           gp, t4, a7
                  slt          t2, a6, t3
                  ori          a1, s2, -1268
                  srai         gp, a1, 9
                  slti         s0, t3, -1512
                  ori          gp, a6, 676
                  sra          t0, a2, t4
                  srli         s9, s5, 7
                  srai         ra, sp, 22
                  sra          a7, s9, tp
                  slt          t5, a0, s1
                  xor          t1, s1, ra
                  xori         ra, tp, 1619
                  and          s9, s2, s7
                  beq          a5, a4, 124f
                  slti         sp, s3, -501
                  beq          a3, a4, 131f
                  srl          t3, a4, a2
                  nop
                  andi         s8, t3, -236
124:              sub          s6, a3, t6
                  xori         t6, a5, -1338
                  bne          t4, a0, 141f
                  bltu         s11, s5, 133f
                  or           a5, a6, t2
                  ori          a3, s8, -286
                  sltiu        tp, t0, -1098
131:              addi         t0, t0, 1353
                  sltu         s8, s9, s1
133:              srl          a7, t1, s10
                  xori         s4, t3, 928
                  bltu         tp, a3, 142f
                  andi         s7, gp, 1023
                  sra          s9, t3, gp
                  xor          t1, t6, s9
                  sltiu        t0, ra, 1411
                  add          t2, a6, s4
141:              blt          t2, gp, 148f
142:              and          a0, s2, a5
                  sub          s7, s8, zero
                  andi         t4, t6, -207
                  bne          a2, s3, 157f
                  andi         s9, t2, -1700
                  srli         a5, s3, 27
148:              bne          s7, t4, 150f
                  addi         s9, t3, -1232
150:              nop
                  xori         s3, s8, -31
                  and          s11, a1, s0
                  xori         gp, a3, 139
                  srli         sp, s3, 19
                  slt          gp, a2, s6
                  auipc        a1, 396088
157:              bge          tp, t3, 168f
                  auipc        a5, 612177
                  andi         s4, tp, 579
                  sll          t5, s11, s8
                  auipc        a1, 1045360
                  blt          t5, t3, 173f
                  nop
                  sltiu        a6, s4, 511
                  sub          ra, s10, t2
                  sra          t3, s8, sp
                  addi         t5, t5, -1377
168:              auipc        s9, 240651
                  xor          s9, a4, s1
                  bge          a3, s4, 173f
                  sltu         t4, sp, gp
                  bge          a2, zero, 189f
173:              bltu         zero, s11, 180f
                  addi         t0, a3, -1723
                  bgeu         s6, s4, 181f
                  srli         s1, tp, 21
                  or           t2, s4, a3
                  sltiu        a0, a6, 1265
                  bge          t4, a0, 197f
180:              xor          a0, s0, t4
181:              bge          s5, ra, 197f
                  bne          t4, s0, 191f
                  sra          a2, a0, t2
                  xori         s1, s8, 1612
                  blt          s7, t5, 191f
                  nop
                  bne          t3, s3, 198f
                  lui          a1, 412972
189:              bltu         a2, a0, 206f
                  and          t0, a2, a6
191:              xori         s6, s10, 1288
                  sub          s11, a1, t5
                  sll          zero, zero, a5
                  nop
                  sub          s7, s4, t6
                  bne          a7, a5, 207f
197:              bltu         a6, t2, 212f
198:              slti         s0, a7, -1096
                  slti         s0, t0, -1979
                  nop
                  bgeu         s9, s9, 219f
                  sll          t4, s3, t1
                  bge          t2, t0, 207f
                  auipc        t1, 232768
                  slt          a7, s3, s1
206:              srai         a7, s4, 9
207:              sub          ra, a4, t4
                  addi         s0, gp, 1074
                  xor          zero, zero, gp
                  sltu         a3, tp, s4
                  bgeu         gp, t4, 223f
212:              add          zero, s8, a3
                  andi         a0, s3, -22
                  auipc        zero, 717902
                  sll          s10, s7, t3
                  sltiu        a5, gp, 1272
                  andi         s0, a4, -1305
                  lui          s0, 423711
219:              sub          ra, tp, s11
                  srl          s10, a2, t5
                  sll          s3, t2, t2
                  andi         a1, s10, -889
223:              sll          s9, a5, zero
                  beq          gp, s10, 236f
                  srli         a7, s2, 23
                  and          a1, t3, s6
                  sra          s10, s10, ra
                  xori         s11, s1, -1532
                  xor          s3, s10, tp
                  sltiu        s11, a0, -1788
                  andi         t0, a7, -1342
                  srl          a2, t1, s8
                  blt          a0, a1, 239f
                  sltiu        s9, s0, 1372
                  beq          s3, a3, 242f
236:              sub          tp, s9, s6
                  nop
                  xor          s1, a2, s9
239:              bne          s1, ra, 254f
                  or           a7, gp, s7
                  bne          s1, a5, 250f
242:              slti         s6, a3, 38
                  and          s1, s4, gp
                  beq          a7, t6, 251f
                  sll          s9, t3, zero
                  or           a6, a0, s2
                  nop
                  and          t5, s1, s11
                  sub          gp, s2, a6
250:              beq          t1, s3, 268f
251:              bgeu         a0, t6, 267f
                  xori         a0, a7, -479
                  and          zero, a6, a3
254:              sll          s3, s9, s0
                  bne          s1, s11, 270f
                  add          t6, a2, s2
                  add          a3, a2, s2
                  beq          a6, sp, 263f
                  la           sp, region_0+88 #start riscv_load_store_rand_instr_stream_0
                  add          zero, s0, a0
                  sw           a0, 12(sp)
                  and          a7, a7, s10
                  lh           a1, 6(sp)
                  lb           s8, 11(sp)
                  sltu         a1, s9, zero
                  and          s6, a6, s7
                  xori         t1, a6, 113
                  lw           s10, -8(sp)
                  sb           s0, -12(sp)
                  auipc        a2, 916712
                  sb           t1, -7(sp)
                  lbu          s3, -3(sp)
                  sub          s8, a6, a1
                  slt          s3, a7, a3
                  or           a0, s11, a3
                  sb           a0, -3(sp)
                  lbu          a1, -15(sp)
                  srli         s8, s9, 21
                  srli         s3, t3, 0
                  slli         s1, zero, 16
                  lbu          zero, 12(sp)
                  xori         s8, s2, 970
                  and          t6, ra, a5
                  sub          a2, a5, a6
                  slt          t4, t1, s2
                  sb           t3, 11(sp)
                  srl          s7, a5, t1
                  lbu          s10, 15(sp)
                  sll          t5, s7, s8
                  sb           s8, 13(sp)
                  lhu          tp, 14(sp) #end riscv_load_store_rand_instr_stream_0
                  auipc        s11, 152451
                  srli         a5, t4, 5
                  beq          a0, t1, 263f
                  bne          s6, s9, 268f
263:              slli         s0, t6, 25
                  bgeu         s11, tp, 276f
                  bge          sp, s5, 268f
                  ori          a6, a5, 784
267:              srl          s10, t2, s1
268:              sltu         s0, s11, a2
                  sltu         s11, a5, ra
270:              sra          gp, s4, s11
                  srl          s0, s6, s11
                  slt          s11, s1, s5
                  blt          ra, a6, 280f
                  bgeu         a0, a6, 289f
                  andi         a0, s8, 420
276:              sra          a7, s0, a4
                  slti         s8, sp, -1242
                  nop
                  or           t4, t4, zero
280:              bne          a3, s10, 298f
                  and          s4, tp, s3
                  xori         t2, zero, -789
                  beq          sp, a6, 290f
                  bge          sp, a5, 290f
                  beq          a3, t6, 297f
                  srli         tp, sp, 22
                  sll          s0, zero, a6
                  srli         ra, zero, 14
289:              bne          s5, a3, 305f
290:              sll          s11, a1, a7
                  beq          t6, s8, 309f
                  bgeu         a2, t2, 297f
                  bge          t6, ra, 302f
                  srli         a3, a6, 15
                  slt          zero, tp, ra
                  nop
297:              bltu         s6, s3, 303f
298:              sltiu        ra, s5, 276
                  srli         s8, s0, 11
                  bne          tp, a1, 316f
                  bltu         ra, a2, 310f
302:              or           zero, s11, zero
303:              addi         t0, a2, -1022
                  sltiu        sp, s6, 667
305:              lui          s10, 227477
                  srai         sp, s3, 5
                  sra          s4, s10, s11
                  or           t3, s8, s6
309:              add          sp, s1, a5
310:              bne          a0, gp, 322f
                  srai         ra, s6, 12
                  srli         zero, s10, 26
                  sra          t2, a4, s9
                  srl          t6, t5, s11
                  slt          t6, t2, s0
316:              sltiu        s9, t0, 1206
                  andi         gp, t1, 1220
                  sll          t5, s0, t1
                  slt          a3, a7, ra
                  beq          a3, s1, 324f
                  sltu         a5, a6, a0
322:              or           gp, s10, s9
                  xori         s0, t0, -943
324:              addi         s1, t5, 169
                  bne          a0, t6, 340f
                  nop
                  nop
                  bne          a5, s3, 330f
                  add          s6, s4, t6
330:              sltu         a6, t6, a2
                  xor          t5, s2, t6
                  bge          t4, t5, 347f
                  srl          t0, a5, s4
                  srli         s1, t4, 10
                  srl          t1, s9, s0
                  lui          s10, 518065
                  blt          a3, gp, 354f
                  and          t4, s7, a3
                  ori          sp, s6, -758
340:              blt          t6, t5, 351f
                  blt          a5, a1, 359f
                  add          a3, gp, t5
                  or           s0, t5, a0
                  bge          t6, t3, 355f
                  and          a7, a1, a0
                  sll          t6, a6, a0
347:              xor          s0, a5, a3
                  bne          s8, a6, 359f
                  slli         tp, t5, 17
                  xor          a1, s11, s4
351:              bltu         s6, a6, 363f
                  sra          s10, s2, s0
                  add          s7, s5, sp
354:              ori          a3, t3, 1320
355:              bne          t5, s4, 361f
                  srli         t5, t4, 9
                  sub          s11, s4, s3
                  addi         a0, s6, 618
359:              and          s7, a2, s6
                  slti         s6, s3, 1348
361:              srli         a3, gp, 12
                  slti         a3, sp, 1903
363:              sll          a1, a6, gp
                  andi         s10, a2, -627
                  beq          s8, sp, 382f
                  slt          t0, a4, t3
                  bgeu         zero, sp, 374f
                  srai         a0, sp, 22
                  ori          s8, s3, -1779
                  and          s1, zero, zero
                  sltu         a5, s11, s4
                  sra          s0, t6, ra
                  ori          t1, a4, 399
374:              slli         sp, s10, 23
                  slti         t6, s3, 166
                  slt          s10, t3, t2
                  srai         s6, sp, 2
                  beq          s5, a6, 384f
                  sll          t5, s5, s2
                  srai         zero, s0, 29
                  ori          s7, sp, 702
382:              bge          s11, a4, 393f
                  sll          s1, t2, t4
384:              bgeu         a1, a2, 401f
                  slt          sp, t4, a0
                  addi         a6, s0, 2041
                  slti         a5, t6, 1755
                  or           s11, a4, s1
                  sra          gp, a7, a5
                  srai         s3, s8, 21
                  ori          a3, s3, 215
                  add          s4, t6, gp
393:              bne          a3, s6, 399f
                  srai         t6, t6, 8
                  srli         s11, ra, 24
                  slt          s0, a0, s3
                  sltu         s7, zero, s11
                  bne          gp, s2, 409f
399:              slti         a6, a6, -360
                  sra          s9, zero, t4
401:              sll          s8, t6, ra
                  add          t1, s10, t6
                  auipc        s0, 454089
                  andi         tp, a0, -16
                  srai         s10, a3, 14
                  sra          s10, s7, gp
                  andi         t5, gp, -1212
                  auipc        gp, 896984
409:              blt          a0, gp, 411f
                  nop
411:              ori          s11, s5, 1836
                  sll          t3, t3, s0
                  bgeu         s10, gp, 429f
                  addi         t1, s7, -1086
                  srl          s9, a1, s2
                  beq          t4, s1, 431f
                  sll          s10, a4, a3
                  addi         s9, a5, 1018
                  sra          a0, a4, t2
                  sub          s7, a4, a6
                  andi         t6, s0, -1608
                  sll          a2, s8, t2
                  and          a7, t3, t5
                  slt          a1, a5, s6
                  sra          a6, a7, s1
                  lui          s11, 3890
                  bge          ra, a0, 444f
                  bge          t4, ra, 443f
429:              sra          s10, t4, s0
                  bge          a3, t0, 442f
431:              beq          s3, t0, 446f
                  sll          s10, t1, a4
                  sub          s0, s8, t0
                  srli         s10, s2, 31
                  ori          zero, gp, -1673
                  bltu         s8, zero, 452f
                  bge          a0, s7, 449f
                  bne          a5, a4, 447f
                  srl          a7, s4, zero
                  sltu         s10, a5, a4
                  auipc        a7, 810490
442:              srli         a6, s7, 20
443:              xori         t5, s4, 1502
444:              sltu         a2, t4, ra
                  add          s6, s8, t2
446:              add          ra, a4, a4
447:              bltu         s10, s7, 453f
                  srl          t3, s7, s3
449:              auipc        t3, 513992
                  nop
                  sra          a6, s9, t2
452:              addi         a0, t4, -1092
453:              addi         s9, s6, 289
                  andi         a3, s7, -1896
                  andi         s6, s1, 1539
                  bne          a6, a5, 467f
                  sll          t6, a5, t1
                  slli         sp, a1, 19
                  auipc        t6, 563807
                  ori          s11, a6, -900
                  nop
                  xor          t1, t5, s4
                  bge          s4, s11, 469f
                  or           t4, s8, a5
                  nop
                  slli         t2, s6, 29
467:              slli         a0, s9, 6
                  or           a3, a2, s2
469:              xor          s1, a1, s11
                  slli         tp, s2, 4
                  sltiu        t4, t6, 1171
                  slti         t3, s5, 1484
                  sll          t3, ra, s1
                  nop
                  la           sp, sub_8
                  slti         s10, s4, 751
                  addi         sp, sp, 803
                  or           s4, a5, tp
                  sltiu        s0, a5, -1179
                  srai         a3, s11, 6
                  bltu         a1, s0, sub_7_j11 #branch to jump instr
                  or           s6, zero, a1
sub_7_j11:        jalr         ra, sp, -803 #jump sub_7 -> sub_8
                  beq          sp, t1, 493f
                  ori          s6, t4, -2031
                  bge          s0, s7, 495f
                  ori          a2, sp, 1651
                  sltu         s6, s8, gp
                  bgeu         s1, s4, 483f
                  addi         a6, zero, 214
                  sll          s8, s11, s4
483:              sll          t0, s9, tp
                  xor          s7, s10, s4
                  bne          a5, gp, 490f
                  sll          a7, a7, s2
                  bge          t3, ra, 493f
                  bge          gp, tp, 500f
                  srli         t6, s1, 5
490:              srl          t2, a4, t6
                  bge          t3, a1, 509f
                  sltiu        ra, s7, -742
493:              blt          s3, t1, 500f
                  bltu         s4, tp, 503f
495:              add          a1, s8, t5
                  bge          s6, tp, 507f
                  auipc        ra, 388015
                  bgeu         s7, sp, 505f
                  slli         sp, ra, 3
500:              beq          s8, a5, 511f
                  sra          t1, s9, t5
                  slti         sp, a2, 1367
503:              addi         s8, tp, -880
                  sra          s4, sp, t0
505:              slt          sp, sp, t1
                  sub          t4, s4, s5
507:              beq          sp, s5, 514f
                  auipc        s6, 582313
509:              srli         t4, a3, 15
                  sub          a5, s10, ra
511:              beq          t5, t1, 515f
                  srai         sp, ra, 1
                  srai         s8, a6, 30
514:              slt          s10, s10, t2
515:              and          a2, s6, s2
                  and          s10, t4, zero
                  xor          t1, tp, s8
                  bge          t6, s7, 522f
                  andi         s9, s5, 72
                  nop
                  sltu         t1, t1, t0
522:              srai         a0, t0, 28
                  nop
                  srai         t0, sp, 21
                  addi         s8, t1, 474
                  auipc        sp, 154119
                  srli         s10, s8, 26
                  and          s6, zero, a7
                  slt          t6, s8, t1
                  bne          t0, a5, 533f
                  slli         t5, a0, 24
                  slli         s9, s11, 9
533:              sll          tp, a6, s3
                  blt          ra, a2, 545f
                  bne          s0, t3, 542f
                  sltiu        a2, a1, -1142
                  or           sp, s7, s10
                  sra          tp, a3, s4
                  bltu         a3, s2, 555f
                  or           t1, s11, ra
                  sltiu        tp, s10, -1408
542:              or           a1, t1, s11
                  sltiu        s8, s11, 1669
                  srl          a0, s10, s10
545:              add          a0, a4, tp
                  auipc        t6, 613705
                  sltu         s6, a1, s5
                  bge          t0, s5, 559f
                  bge          a4, s7, 556f
                  slt          t3, t3, s0
                  auipc        a3, 947835
                  slti         tp, a2, -1484
                  bge          s6, a0, 571f
                  srl          t0, zero, t5
555:              blt          t3, sp, 567f
556:              or           ra, a1, s9
                  nop
                  sub          t0, s4, s11
559:              auipc        t6, 995681
                  andi         t6, s2, 2046
                  or           s3, ra, a5
                  slti         t3, zero, 1865
                  slt          s4, a6, tp
                  bge          a5, a0, 580f
                  sltu         s4, s10, a1
                  slt          tp, t5, t1
567:              srai         s0, s7, 22
                  srl          tp, t2, t1
                  sra          tp, s5, s8
                  andi         t1, t3, 2012
571:              nop
                  srai         zero, tp, 25
                  bge          s10, s0, 584f
                  sll          s10, t6, s10
                  nop
                  ori          s0, s2, -364
                  sub          zero, s1, a6
                  andi         t4, gp, 894
                  add          a0, s10, s11
580:              xori         a7, t4, -669
                  sltu         s7, a7, a5
                  sltiu        s8, a3, -1302
                  lui          ra, 777428
584:              ori          s11, t5, 660
                  srai         s10, a0, 16
                  lui          s10, 417485
                  lw           ra, 4(a4)
                  and          t5, sp, t6
                  xor          a0, gp, t4
                  lui          t2, 872664
                  addi         a4, a4, 20
                  sltiu        a7, a7, -1692
                  srli         s11, t5, 19
                  srl          a6, t1, sp
778:              addi x19, x1, 0
778:              jalr x19, x19, 0
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
                  add x21, x14, zero
                  csrr x25, 0x300 # MSTATUS
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 31
                  bne x25, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x25, 0x341 # MEPC
                  csrr x25, 0x342 # MCAUSE
                  li x9, 0x3 # BREAKPOINT
                  beq x25, x9, ebreak_handler
                  li x9, 0x8 # ECALL_UMODE
                  beq x25, x9, ecall_handler
                  li x9, 0x9 # ECALL_SMODE
                  beq x25, x9, ecall_handler
                  li x9, 0xb # ECALL_MMODE
                  beq x25, x9, ecall_handler
                  li x9, 0x1
                  beq x25, x9, instr_fault_handler
                  li x9, 0x5
                  beq x25, x9, load_fault_handler
                  li x9, 0x7
                  beq x25, x9, store_fault_handler
                  li x9, 0xc
                  beq x25, x9, pt_fault_handler
                  li x9, 0xd
                  beq x25, x9, pt_fault_handler
                  li x9, 0xf
                  beq x25, x9, pt_fault_handler
                  li x9, 0x2 # ILLEGAL_INSTRUCTION
                  beq x25, x9, illegal_instr_handler
                  csrr x9, 0x343 # MTVAL
                  1: la x18, test_done
                  jalr x1, x18, 0

ecall_handler:    
                  la x25, _start
                  sw x0, 0(x25)
                  sw x1, 4(x25)
                  sw x2, 8(x25)
                  sw x3, 12(x25)
                  sw x4, 16(x25)
                  sw x5, 20(x25)
                  sw x6, 24(x25)
                  sw x7, 28(x25)
                  sw x8, 32(x25)
                  sw x9, 36(x25)
                  sw x10, 40(x25)
                  sw x11, 44(x25)
                  sw x12, 48(x25)
                  sw x13, 52(x25)
                  sw x14, 56(x25)
                  sw x15, 60(x25)
                  sw x16, 64(x25)
                  sw x17, 68(x25)
                  sw x18, 72(x25)
                  sw x19, 76(x25)
                  sw x20, 80(x25)
                  sw x21, 84(x25)
                  sw x22, 88(x25)
                  sw x23, 92(x25)
                  sw x24, 96(x25)
                  sw x25, 100(x25)
                  sw x26, 104(x25)
                  sw x27, 108(x25)
                  sw x28, 112(x25)
                  sw x29, 116(x25)
                  sw x30, 120(x25)
                  sw x31, 124(x25)
                  la x18, write_tohost
                  jalr x0, x18, 0

instr_fault_handler:
                  add x14, x21, zero
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
                  add x14, x21, zero
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
                  add x14, x21, zero
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
                  csrr  x25, 0x341
                  addi  x25, x25, 4
                  csrw  0x341, x25
                  add x14, x21, zero
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
                  csrr  x25, 0x341
                  addi  x25, x25, 4
                  csrw  0x341, x25
                  add x14, x21, zero
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
                  csrr  x25, 0x300 # MSTATUS;
                  csrr  x25, 0x304 # MIE;
                  csrr  x25, 0x344 # MIP;
                  csrrc x25, 0x344, x25 # MIP;
                  add x14, x21, zero
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
