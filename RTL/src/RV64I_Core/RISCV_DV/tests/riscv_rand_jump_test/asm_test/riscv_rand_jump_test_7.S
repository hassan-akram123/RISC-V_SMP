.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x12, h0_start
jalr x0, x12, 0
h0_start:
                  li x7, 0x40000100
                  csrw 0x301, x7
kernel_sp:        
                  la x26, kernel_stack_end

trap_vec_init:    
                  la x7, mtvec_handler
                  ori x7, x7, 0
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
                  li x0, 0x2
                  li x1, 0x9
                  li x2, 0xffb9061a
                  li x3, 0x15c5dd11
                  li x4, 0x9f3fec65
                  li x5, 0xd
                  li x6, 0xf2296053
                  li x7, 0xf046a321
                  li x8, 0xf9aab664
                  li x9, 0x8f50d740
                  li x10, 0xf
                  li x11, 0x2ffb795c
                  li x12, 0x0
                  li x13, 0x4
                  li x14, 0xf6bac65b
                  li x16, 0xfbb65aea
                  li x17, 0x0
                  li x18, 0x15f8c75f
                  li x19, 0xb
                  li x20, 0xf6390e13
                  li x21, 0xf6b01573
                  li x22, 0x80000000
                  li x23, 0x9
                  li x24, 0xae55f23a
                  li x25, 0x408eb476
                  li x27, 0xf
                  li x28, 0x2
                  li x29, 0x80000000
                  li x30, 0xd
                  li x31, 0xa
                  la x15, user_stack_end
main:             la           t6, region_1+122 #start riscv_load_store_rand_instr_stream_3
                  sh           s9, 564(t6)
                  lbu          t4, 203(t6)
                  srli         sp, tp, 26
                  xor          t1, s11, t2
                  srli         t3, s10, 16
                  sltu         gp, s1, t0
                  sll          t3, gp, s10
                  lh           s11, 1554(t6)
                  addi         sp, s6, -1302
                  and          sp, a2, gp
                  addi         t2, a4, 1346
                  sltiu        a1, ra, 1741
                  sw           s5, 990(t6)
                  lhu          s11, 36(t6)
                  sb           gp, 714(t6)
                  addi         t0, a2, -1723
                  lb           t3, 1435(t6)
                  add          s0, s8, a1
                  xori         t4, s6, 781
                  srli         a0, t5, 9
                  sltu         a0, t6, sp
                  sb           tp, 981(t6)
                  lb           s9, 827(t6)
                  sb           s2, 1010(t6)
                  sh           t2, 1416(t6)
                  slt          a4, t1, s6
                  nop
                  lbu          ra, 734(t6)
                  andi         a6, s4, 351
                  addi         a7, s0, -1804
                  addi         a3, s9, 1343
                  sb           t3, 1726(t6)
                  sw           t4, 1414(t6)
                  lui          s2, 149984
                  lb           a7, 729(t6) #end riscv_load_store_rand_instr_stream_3
                  la           t2, region_1+237 #start riscv_load_store_rand_instr_stream_6
                  ori          a0, t4, -254
                  nop
                  sb           s4, 128(t2)
                  lh           t6, 197(t2)
                  lb           s1, 53(t2)
                  lb           s6, 138(t2)
                  sb           s11, -90(t2)
                  sh           s2, 37(t2)
                  sh           s6, 139(t2)
                  lbu          s4, -184(t2)
                  lbu          a4, 244(t2)
                  lb           s3, 250(t2)
                  ori          t4, t3, 823
                  lbu          a3, -152(t2)
                  sh           t2, 149(t2)
                  sh           s4, -217(t2)
                  slli         zero, a1, 13
                  lhu          a4, 99(t2)
                  sb           s0, 32(t2)
                  andi         t6, a4, 1298
                  sh           t0, 19(t2)
                  lb           t1, 210(t2)
                  sb           s1, 116(t2)
                  srai         s11, s5, 30
                  sra          a6, a7, t1
                  sb           a0, 14(t2)
                  sb           t1, 66(t2)
                  sra          s11, t6, s0
                  sltu         s3, a0, s5
                  xor          s9, ra, a4
                  add          s2, s2, t3
                  xori         s3, a0, -1080
                  lbu          a4, 70(t2)
                  lbu          a3, -133(t2)
                  lbu          s0, 12(t2)
                  sb           t6, 256(t2)
                  slt          s9, ra, s5
                  sltiu        a7, s3, -330
                  lbu          t3, 50(t2)
                  lb           a6, -62(t2) #end riscv_load_store_rand_instr_stream_6
                  la           sp, region_1+1098 #start riscv_load_store_rand_instr_stream_7
                  slli         s11, a7, 1
                  sll          s5, s3, s6
                  srli         a0, s2, 8
                  lbu          s9, -3(sp)
                  auipc        s1, 72628
                  slli         s2, s11, 25
                  lh           t2, 2(sp)
                  or           t0, t4, tp
                  lbu          t2, 11(sp)
                  ori          gp, s1, -550
                  srai         s8, s5, 0
                  sh           a7, -6(sp)
                  lui          a7, 140725
                  addi         a3, s8, 1762
                  sb           t3, 14(sp)
                  slti         s7, t5, 894
                  or           gp, s0, a4
                  add          t4, s6, a0
                  sll          s8, a7, s5
                  lbu          t6, 15(sp)
                  lbu          a0, -12(sp)
                  slti         gp, s2, 232
                  lhu          s0, -8(sp)
                  lbu          s4, -13(sp)
                  lui          t5, 838901
                  sh           s4, -16(sp)
                  lb           tp, -15(sp)
                  and          zero, a2, s3
                  srli         zero, s8, 14
                  lui          gp, 366992
                  sltu         s9, s10, a5
                  lw           a3, -2(sp) #end riscv_load_store_rand_instr_stream_7
                  la           sp, region_1+1185 #start riscv_load_store_rand_instr_stream_4
                  lh           gp, 11(sp)
                  lbu          t4, 0(sp)
                  andi         s11, s11, -478
                  lbu          s4, -11(sp)
                  sh           t6, -9(sp)
                  lh           a0, 15(sp)
                  lh           s0, -13(sp)
                  slti         a7, s1, 1404
                  add          t4, a3, s8
                  add          s6, s1, s11
                  lb           s7, -10(sp)
                  sb           s10, -10(sp)
                  sltiu        s3, s4, 411
                  sb           s7, 2(sp)
                  srai         s1, t0, 26
                  sra          t1, sp, t4
                  lb           t4, 4(sp)
                  lb           s7, 0(sp)
                  lbu          a7, -14(sp)
                  lbu          t5, 4(sp)
                  sltiu        a3, a2, -842
                  sll          t5, a0, a1
                  lh           a4, -3(sp)
                  xor          t6, t1, t6
                  srli         s7, a1, 6
                  lbu          s5, -12(sp) #end riscv_load_store_rand_instr_stream_4
                  la           sp, region_1+594 #start riscv_load_store_rand_instr_stream_1
                  lb           t2, 7(sp)
                  or           a0, t1, tp
                  srli         t0, s5, 8
                  sh           ra, -16(sp)
                  slti         s6, a5, -1614
                  lb           t6, -12(sp)
                  sb           a1, 1(sp)
                  lb           a1, 12(sp)
                  sb           s0, 11(sp)
                  ori          s3, t5, -491
                  or           zero, s11, a6
                  sh           s2, 2(sp)
                  sll          t5, t1, s2
                  sb           a2, -4(sp)
                  lbu          t2, 5(sp)
                  sb           t4, 4(sp)
                  srli         s2, s5, 21
                  lbu          s1, -13(sp)
                  lbu          t1, -4(sp)
                  lh           s9, 10(sp)
                  lbu          tp, 15(sp)
                  sw           t5, 2(sp)
                  lhu          t5, 6(sp)
                  sub          t6, ra, s3
                  lb           t1, -2(sp)
                  lbu          a6, -15(sp)
                  lw           s4, -6(sp)
                  lb           s8, 11(sp)
                  ori          a4, s8, -786
                  lbu          gp, 16(sp)
                  sw           s7, 10(sp)
                  sltu         t1, s6, s3
                  sh           s0, -14(sp)
                  sub          a4, s1, s11
                  sb           gp, -7(sp)
                  lbu          a1, 11(sp)
                  lb           t4, -2(sp)
                  sb           t1, -4(sp)
                  lbu          a4, -14(sp) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_0+1975 #start riscv_load_store_rand_instr_stream_8
                  lb           s1, -301(sp)
                  sb           a1, -1497(sp)
                  sb           s5, -1720(sp)
                  xori         t6, s5, 1860
                  nop
                  lhu          s6, -619(sp)
                  add          s0, a2, t1
                  srl          s9, t1, s9
                  lw           s7, -1347(sp)
                  srli         s4, s10, 8
                  sh           t5, -859(sp)
                  sw           t6, -31(sp)
                  slt          s8, t5, a1
                  slti         s7, a1, -1338
                  sb           t6, -1410(sp)
                  slt          a4, t4, t2
                  lhu          s0, -1505(sp)
                  auipc        a7, 205141
                  lb           s5, -29(sp)
                  slti         a1, a4, 922
                  or           t2, s6, a5
                  lhu          t0, -349(sp)
                  lb           t3, -52(sp)
                  sra          a0, t2, a1
                  sh           s8, -1717(sp)
                  add          t2, gp, a1
                  ori          t3, s7, 1108
                  srl          s3, s3, zero
                  sll          a3, t0, s11
                  lui          s8, 308106
                  sltiu        gp, s2, -1324
                  lb           s3, -1765(sp)
                  srl          a0, t2, t4
                  sltiu        t3, t4, 1325
                  lbu          a7, -1666(sp)
                  slt          a0, a1, sp
                  lh           s1, -1401(sp)
                  lb           t2, -662(sp)
                  sb           gp, -1832(sp)
                  srli         gp, a6, 25
                  sb           t5, -1304(sp)
                  ori          s6, s5, 1456
                  lb           t0, -654(sp) #end riscv_load_store_rand_instr_stream_8
                  la           s5, region_0+1728 #start riscv_load_store_rand_instr_stream_0
                  lh           a1, -954(s5)
                  nop
                  srli         tp, gp, 7
                  lh           s1, -1088(s5)
                  ori          a1, zero, 1503
                  and          a6, a5, s2
                  sll          t6, s7, sp
                  sll          s7, s0, s3
                  sb           t0, -514(s5)
                  sw           s4, -1136(s5)
                  lb           s4, -156(s5)
                  xor          a0, a3, s9
                  xor          ra, s10, s11
                  sb           t0, -801(s5)
                  sub          a7, a0, t4
                  lh           a6, -1630(s5)
                  or           t2, gp, a6
                  slt          a3, s3, t3
                  or           a6, a7, zero
                  or           s7, s10, s8
                  sub          t3, a1, t3
                  lui          a6, 336824
                  lb           s4, -1483(s5)
                  nop
                  lb           a1, 154(s5)
                  lui          s4, 280076
                  and          t1, t5, a5
                  sltiu        t0, sp, 2038
                  sll          a1, a1, gp
                  sltu         zero, a1, gp
                  auipc        a3, 782461
                  sb           a1, -1267(s5)
                  addi         s4, s10, -1500
                  andi         t4, s4, 387
                  and          a0, t6, zero
                  slt          s0, s3, s7
                  xor          s9, zero, t0
                  and          tp, a7, s2
                  lb           s9, -1663(s5)
                  or           gp, t5, a6
                  lb           s6, -779(s5) #end riscv_load_store_rand_instr_stream_0
                  sll          a1, a0, tp
                  bgeu         a4, t2, 15f
                  xori         s4, s5, -1768
                  bgeu         ra, tp, 9f
                  bltu         t5, s2, 10f
                  srl          s1, zero, s8
                  sltiu        tp, t3, -1858
                  srai         s4, s2, 15
                  ori          t6, a2, -529
9:                xori         t3, s10, 1716
10:               sll          sp, t6, s0
                  bne          s6, sp, 29f
                  or           s11, s2, t4
                  slli         ra, a2, 30
                  and          tp, s3, a0
15:               xor          a6, s10, t6
                  or           s7, t4, tp
                  xori         s3, a1, 26
                  andi         s3, t2, 1681
                  blt          a4, a0, 22f
                  add          t3, s8, a7
                  auipc        t3, 899703
22:               blt          t6, s10, 26f
                  srai         a6, s11, 24
                  sll          t5, t3, a7
                  bltu         a4, a2, 40f
26:               xori         s11, t3, 103
                  or           t1, s1, s4
                  lui          s7, 202308
29:               beq          a5, gp, 37f
                  xori         sp, s11, -689
                  bne          tp, s9, 47f
                  andi         tp, s2, 311
                  andi         s8, t2, -589
                  srl          ra, ra, s9
                  sra          t2, a1, s11
                  addi         t2, t6, -888
37:               bgeu         a6, s3, 49f
                  blt          a3, ra, 57f
                  srl          a1, s7, t2
40:               sltu         s2, tp, s8
                  xor          sp, zero, s3
                  xor          a3, a0, t2
                  bge          a1, a0, 45f
                  xor          tp, s4, s3
45:               add          s11, s11, gp
                  bge          a4, t1, 47f
47:               nop
                  blt          ra, s1, 55f
49:               slt          s9, s6, s7
                  bgeu         s5, s11, 67f
                  xori         s7, a1, 94
                  addi         a1, a6, 9
                  srai         s11, a7, 6
                  auipc        t6, 717446
55:               sltu         s9, s6, t1
                  slti         s0, s0, 1760
57:               auipc        t5, 140531
                  sra          tp, a5, tp
                  beq          tp, tp, 63f
                  addi         s6, sp, -918
                  srli         s3, t5, 0
                  srl          a3, zero, t4
63:               xor          t6, a4, a1
                  blt          s7, s6, 79f
                  addi         sp, s10, -1503
                  and          gp, a5, tp
67:               ori          ra, zero, -673
                  lui          sp, 24066
                  blt          a5, s3, 71f
                  and          t4, a7, a0
71:               xori         t4, t4, 707
                  auipc        t6, 375824
                  bne          s2, a6, 80f
                  andi         s8, a3, 1735
                  srai         gp, s4, 19
                  bltu         a4, a6, 90f
                  bltu         s9, s3, 88f
                  lui          t6, 898837
79:               slt          a3, s3, a7
80:               bne          s11, a4, 91f
                  sltiu        s4, t4, 898
                  add          a7, s9, a0
                  andi         t3, s11, 1113
                  lui          t1, 930875
                  bltu         s3, t6, 96f
                  or           a3, a5, t2
                  sra          t1, t0, s6
88:               srai         tp, s2, 9
                  sll          t2, zero, s7
90:               addi         a1, t5, 541
91:               slli         t3, s8, 20
                  sra          t6, s4, s11
                  sra          s0, a4, ra
                  nop
                  sra          s9, ra, t0
96:               slli         sp, s9, 11
                  srai         t4, s11, 27
                  srli         gp, s4, 17
                  slti         t0, a0, -698
                  auipc        t3, 949106
                  bne          t2, s4, 105f
                  slli         t2, s6, 6
                  ori          gp, s11, -264
                  addi         s4, s2, 1909
105:              blt          s9, s2, 108f
                  slli         t4, a7, 16
                  andi         a3, a3, 1011
108:              srli         s0, a6, 9
                  beq          s10, gp, 112f
                  slti         s5, gp, -1994
                  sll          sp, zero, s1
112:              ori          s1, s2, 277
                  bge          a1, s2, 119f
                  slli         a6, s5, 11
                  bne          t4, t1, 124f
                  nop
                  ori          tp, s1, 1809
                  sll          s5, t5, a1
119:              srli         ra, a2, 8
                  andi         zero, a1, 845
                  slt          sp, a1, a3
                  slt          s5, s4, gp
                  sub          s4, s0, a5
124:              ori          sp, t2, 1770
                  bltu         t1, a6, 142f
                  slli         s5, a5, 18
                  sra          a0, t1, t5
                  blt          a2, s3, 132f
                  bne          t2, s11, 143f
                  bge          t5, ra, 141f
                  sltu         a1, s7, s2
132:              add          s9, s4, a7
                  srai         zero, s9, 6
                  xori         s7, s4, -1458
                  addi         a1, t3, 397
                  bne          s7, s3, 139f
                  xori         a6, zero, -695
                  slt          s0, a5, a6
139:              bgeu         a5, s8, 141f
                  srli         ra, a1, 31
141:              xori         t2, zero, 1577
142:              andi         a0, t0, -922
143:              sll          s1, s11, a2
                  srli         s4, a2, 16
                  bge          zero, t4, 149f
                  andi         ra, ra, -747
                  auipc        a4, 374212
                  and          t0, ra, t5
149:              srai         s2, t3, 7
                  beq          ra, t0, 161f
                  sll          s3, a5, s11
                  srli         a7, a6, 22
                  addi         t5, a7, 357
                  ori          tp, s4, 13
                  auipc        a4, 447260
                  beq          a3, s4, 167f
                  ori          s2, s3, 1644
                  xori         t6, s10, 1024
                  and          s0, s8, s9
                  bgeu         s9, ra, 166f
161:              bne          t6, t0, 173f
                  xori         t1, ra, -1224
                  srai         t5, s9, 29
                  xor          zero, t5, t2
                  auipc        a7, 902191
166:              bne          s10, s3, 181f
167:              nop
                  andi         t5, s5, 1932
                  srli         t4, zero, 10
                  auipc        a6, 274376
                  srai         a7, s0, 8
                  slli         sp, a6, 29
173:              and          t1, s5, s7
                  andi         s4, t4, 156
                  sll          s0, sp, a5
                  ori          s1, tp, -679
                  sub          s6, s3, ra
                  auipc        t5, 193540
                  beq          a3, t3, 186f
                  ori          ra, t1, 1970
181:              andi         a1, a2, 227
                  add          zero, a6, t1
                  bltu         s10, gp, 185f
                  sra          s2, t6, gp
185:              andi         t6, a3, -1112
186:              xor          t2, sp, a1
                  sub          t5, t5, ra
                  sltiu        s7, sp, 1489
                  srli         t1, t1, 27
                  bgeu         zero, zero, 205f
                  srl          t5, ra, s4
                  or           t3, t0, s0
                  bne          s8, s8, 211f
                  slti         s11, gp, 521
                  addi         tp, ra, 1521
                  or           ra, t0, zero
                  add          s7, s10, a2
                  bne          s8, s4, 205f
                  xori         a4, s6, 1689
                  nop
                  xor          s9, tp, s4
                  slli         a1, t0, 22
                  sll          s6, s1, s4
                  sub          a3, tp, t6
205:              addi         s9, s9, -1007
                  slt          s3, t2, s6
                  or           a6, s9, a7
                  bltu         a4, t2, 212f
                  nop
                  bgeu         t4, gp, 213f
211:              srai         t4, a5, 31
212:              addi         a3, s8, 299
213:              sll          a0, a5, s1
                  slt          t4, s1, t5
                  xori         t2, t1, 317
                  blt          s4, sp, 220f
                  or           s8, s8, s9
                  bne          t2, s1, 224f
                  add          s6, t0, s8
220:              sltu         t2, a5, s0
                  slti         s6, ra, -1537
                  bge          a3, tp, 226f
                  or           t6, a2, t3
224:              sltu         t4, s6, s7
                  srai         s9, s8, 24
226:              sltu         t2, sp, tp
                  beq          s1, s2, 235f
                  ori          s7, ra, 1451
                  or           s7, a2, t5
                  or           a7, a7, s10
                  sltiu        a0, a4, -73
                  or           s11, s9, s0
                  add          s8, a2, sp
                  addi         a3, s10, -1677
235:              bge          a5, s4, 238f
                  lui          s3, 669562
                  lui          a6, 568889
238:              bltu         s9, t2, 244f
                  bge          t5, s1, 240f
240:              bgeu         s11, s4, 257f
                  blt          s2, s2, 260f
                  slti         a0, s0, -734
                  srli         s6, a6, 0
244:              lui          s8, 384352
                  sub          t1, s0, t0
                  la           s8, sub_1
                  or           a0, ra, s9
                  srai         zero, a5, 20
                  auipc        a7, 424670
                  xor          a3, t1, a2
                  addi         s8, s8, -631
                  lui          a1, 656559
                  srli         s6, t4, 26
                  sltu         s7, s8, t5
main_j3:          jalr         ra, s8, 632 #jump main -> sub_1
                  sll          s5, ra, zero
                  and          s1, a4, t4
                  or           a0, s5, a0
                  auipc        t5, 713424
                  bltu         s4, a4, 265f
                  bltu         s4, a7, 264f
                  slt          t1, t1, t4
                  auipc        a1, 1014821
                  blt          ra, s2, 262f
                  and          s2, sp, a4
                  lui          t5, 346593
                  bgeu         s11, t4, 273f
257:              or           s6, t0, s1
                  srli         t2, s5, 25
                  bne          a3, s10, 265f
260:              slli         tp, a6, 29
                  lui          s1, 432129
262:              slli         t5, a1, 19
                  bltu         s7, ra, 281f
264:              sltiu        s8, a7, 1497
265:              bltu         t6, a4, 281f
                  slti         s4, t5, -766
                  srli         a6, a7, 14
                  slli         t1, s1, 0
                  bltu         sp, s5, 284f
                  bltu         t2, s8, 281f
                  slti         s11, tp, -1494
                  sll          t1, s3, s0
273:              slti         s11, t1, 1046
                  ori          t5, s1, -790
                  xor          ra, t1, a2
                  bltu         t3, t5, 278f
                  bltu         t5, ra, 280f
278:              xor          s9, zero, t0
                  ori          zero, s4, -1521
280:              and          s1, s0, sp
281:              xor          s0, s6, ra
                  add          t1, s3, a2
                  addi         s0, a5, 595
284:              sra          a3, a5, t5
                  sll          s11, t4, tp
                  slli         t6, s11, 12
                  xori         t6, s11, 1862
                  slli         a0, s0, 13
                  slti         s6, a3, 1914
                  add          gp, s2, a6
                  sltu         t3, a0, s9
                  sra          a1, a6, s5
                  and          s1, sp, a5
                  srai         s11, a7, 10
                  blt          t5, s2, 312f
                  sub          t1, t1, a1
                  srl          s1, zero, s5
                  bltu         s8, t1, 302f
                  bgeu         gp, s11, 307f
                  slt          a1, s1, s7
                  slti         a7, a6, -1338
302:              andi         t3, tp, -455
                  blt          a5, a7, 322f
                  addi         s4, a6, -1593
                  xori         a7, t3, 878
                  beq          sp, a2, 310f
307:              slti         t0, t3, 480
                  lui          s9, 774203
                  and          s8, a2, a4
310:              xor          s5, t0, s4
                  srli         s1, s9, 16
312:              sll          t6, gp, s8
                  sra          zero, a3, s7
                  lui          t1, 895661
                  bge          s9, a2, 318f
                  xori         s1, t1, 875
                  lui          s8, 91776
318:              auipc        s9, 633754
                  slli         a0, a0, 24
                  srai         a0, s7, 13
                  bltu         a0, s6, 325f
322:              bltu         gp, s8, 336f
                  sra          s7, a6, s0
                  bge          a5, t1, 335f
325:              bge          t2, s3, 331f
                  xor          t0, sp, a2
                  blt          s7, a6, 331f
                  srl          a6, ra, s6
                  or           a6, sp, gp
                  beq          zero, s5, 336f
331:              slti         s1, t2, 761
                  add          t0, t5, s7
                  bltu         t6, sp, 350f
                  sltiu        t2, s5, 1915
335:              blt          t3, zero, 338f
336:              sub          s7, s6, a4
                  addi         s0, s4, 1605
338:              sub          gp, s9, s3
                  srli         t1, s6, 3
                  beq          t3, s1, 342f
                  blt          s9, s8, 355f
342:              nop
                  slti         tp, s5, -217
                  bgeu         tp, gp, 351f
                  or           t1, a7, s5
                  nop
                  srli         tp, t2, 20
                  addi         a6, t3, 1158
                  lui          s3, 1014943
350:              sltiu        s1, gp, -1780
351:              blt          s7, gp, 360f
                  ori          a4, t6, -187
                  bge          a6, s4, 360f
                  xori         a1, s2, -932
355:              slt          s5, s4, t6
                  or           s9, t1, s4
                  bltu         ra, gp, 358f
358:              srl          a7, s9, t2
                  auipc        s7, 509918
360:              sltu         a3, s2, s5
                  srai         gp, a7, 22
                  bltu         t6, gp, 377f
                  xor          a3, zero, s5
                  auipc        t1, 834862
                  srli         ra, a2, 19
                  sra          t5, a3, a3
                  ori          tp, s11, 431
                  srl          s1, t5, s8
                  xor          t3, a0, s5
                  ori          gp, a2, -2048
                  slt          s1, s1, a3
                  sltu         t6, t0, t2
                  lui          a1, 316746
                  andi         zero, s8, 346
                  srli         s5, a3, 14
                  srai         a6, ra, 17
377:              slli         tp, ra, 16
                  auipc        t5, 632524
                  add          a6, s3, a2
                  slli         s5, s2, 6
                  addi         a3, t4, -25
                  and          a6, t2, s1
                  and          s6, a2, s7
                  slti         t2, a3, 1562
                  sub          s5, s10, s11
                  sub          t0, s0, a1
                  and          ra, a4, s1
                  addi         t5, a7, 409
                  xor          s7, t0, t1
                  bge          t2, t1, 402f
                  auipc        s0, 940930
                  bltu         s6, s2, 403f
                  nop
                  bge          sp, s5, 397f
                  slti         tp, s7, 392
                  ori          s6, a3, -1795
397:              slt          s6, s9, a3
                  srl          a4, s3, t1
                  andi         t1, s10, 1109
                  andi         tp, a7, -955
                  bgeu         s11, s11, 420f
402:              auipc        s2, 215310
403:              or           gp, t0, gp
                  auipc        sp, 960963
                  sltiu        s2, t5, -1775
                  bltu         a7, s5, 409f
                  bge          ra, t1, 421f
                  andi         t3, t0, -1535
409:              nop
                  ori          t2, s5, -249
                  andi         a7, t1, -891
                  beq          s1, a3, 414f
                  sll          s5, s10, s3
414:              sltu         s11, s3, tp
                  slli         a4, sp, 17
                  auipc        t3, 917703
                  add          s2, t3, s7
                  srl          t0, t1, s6
                  and          t4, s5, a4
420:              auipc        a6, 94627
421:              beq          s2, s6, 425f
                  auipc        a1, 168905
                  bne          t3, s6, 427f
                  ori          a1, a3, 1862
425:              add          s6, s10, s3
                  sub          a7, a6, a6
427:              or           t3, a5, a6
                  srai         a3, s9, 20
                  blt          a7, t1, 440f
                  sub          s9, s3, t4
                  srli         t6, a6, 5
                  ori          s1, a4, 802
                  xori         s0, s7, 1043
                  bne          sp, s3, 445f
                  slli         s11, s6, 18
                  sra          a4, s2, a3
                  nop
                  srai         t2, a2, 23
                  xori         s6, a2, -1444
440:              srai         s4, t3, 5
                  and          a3, a3, t2
                  lui          t3, 356866
                  xor          t6, a4, a6
                  bne          s9, t4, 461f
445:              slti         s1, a2, -806
                  sll          t5, s3, s0
                  sra          t1, tp, s3
                  auipc        s3, 406233
                  bgeu         s3, ra, 455f
                  sltu         s3, a5, t5
                  add          s3, t4, s4
                  srl          sp, s2, t6
                  andi         sp, a0, -1787
                  srai         t2, tp, 16
455:              sltu         t3, t1, t6
                  andi         sp, s7, -1167
                  sltiu        a7, t4, 737
                  sra          a4, a3, s4
                  slti         t2, a5, 1434
                  add          s6, a7, s0
461:              or           s3, t5, s6
                  and          s4, s5, a3
                  bgeu         a5, s10, 479f
                  xor          zero, t5, tp
                  add          tp, zero, a1
                  nop
                  bge          s10, gp, 481f
                  nop
                  blt          t3, a1, 486f
                  bge          s6, t5, 482f
                  bge          s1, a4, 480f
                  bltu         t0, t5, 487f
                  bgeu         a7, t6, 475f
                  sra          s3, s2, s1
475:              slli         a6, sp, 0
                  beq          s0, zero, 482f
                  and          s3, a2, a5
                  beq          a0, s7, 486f
479:              srli         s1, s6, 3
480:              addi         gp, s4, -1016
481:              bne          t6, t0, 487f
482:              slli         s5, t2, 24
                  sub          a0, t5, t3
                  bltu         s6, a0, 502f
                  slti         s1, s4, -1908
486:              beq          t6, t0, 489f
487:              slti         t3, s1, -949
                  beq          a5, t4, 492f
489:              bltu         s10, tp, 496f
                  slli         t1, tp, 27
                  sra          sp, a2, s0
492:              sub          t2, a1, t0
                  and          a4, a1, t5
                  bne          s4, a3, 501f
                  sub          s8, ra, s6
496:              sra          ra, zero, s8
                  and          zero, s5, t4
                  add          s4, a4, a7
                  srl          a7, s11, s4
                  xor          s1, t6, s1
501:              sltiu        a0, s0, -1948
502:              and          sp, tp, t0
                  bgeu         a5, s7, 514f
                  bgeu         a3, s5, 508f
                  slli         t5, a3, 5
                  or           tp, s9, s11
                  nop
508:              addi         s3, s2, -515
                  bltu         s9, s10, 510f
510:              lui          t4, 856966
                  slti         ra, s11, -1376
                  sra          a0, t6, t5
                  blt          s9, t6, 528f
514:              nop
                  bge          a2, t6, 532f
                  andi         s1, s2, -2036
                  beq          s4, ra, 531f
                  bltu         a5, sp, 529f
                  sltiu        t5, zero, -1666
                  bne          t5, s1, 535f
                  blt          s4, s10, 529f
                  sub          s7, t0, s9
                  beq          s11, a6, 539f
                  sll          t4, t0, t1
                  beq          s2, s1, 536f
                  sub          t1, t5, a0
                  la           t4, region_1+1135 #start riscv_load_store_rand_instr_stream_2
                  lbu          s5, -176(t4)
                  xori         t6, sp, -1444
                  lb           a4, -36(t4)
                  or           tp, a6, s11
                  lb           s3, 12(t4)
                  sb           s9, -196(t4)
                  lh           s2, 215(t4)
                  sb           a0, -89(t4)
                  srl          t3, s0, a0
                  andi         s8, a3, 1010
                  lbu          a3, 53(t4)
                  sb           s2, 119(t4)
                  sb           t3, -52(t4)
                  addi         t6, sp, -516
                  lhu          zero, 123(t4)
                  sb           a1, 177(t4)
                  sltu         a0, t3, s2
                  ori          s6, ra, -1477
                  lh           a1, 177(t4)
                  nop
                  lbu          s0, 65(t4)
                  sb           a2, -94(t4)
                  sb           s10, -23(t4)
                  srli         s5, gp, 8
                  sw           s5, 109(t4)
                  sw           s6, 225(t4)
                  add          t6, a3, t6
                  or           zero, gp, s10
                  sb           a4, 20(t4)
                  sw           s10, -231(t4)
                  or           s5, s2, s11
                  andi         s11, zero, 740
                  sb           gp, 76(t4)
                  lw           s1, 153(t4)
                  sh           a1, 49(t4)
                  sll          ra, a6, s0
                  sb           gp, -58(t4)
                  and          t6, t6, a3
                  lw           zero, 49(t4)
                  ori          a3, s3, 1796
                  sb           tp, 207(t4)
                  lhu          t1, 211(t4)
                  or           tp, s5, s7
                  lbu          t2, 211(t4) #end riscv_load_store_rand_instr_stream_2
                  sltiu        a1, s5, 1590
528:              bge          t3, s8, 531f
529:              blt          t3, t2, 532f
                  sra          a0, s8, s8
531:              srl          zero, t2, s9
532:              or           zero, s11, s0
                  srl          ra, a6, s6
                  andi         s5, s5, -1768
535:              ori          s6, gp, -1683
536:              srli         gp, a2, 8
                  sra          s0, t4, s10
                  bge          t3, zero, 541f
539:              bgeu         a3, t4, 558f
                  bltu         a0, s2, 544f
541:              auipc        a3, 665044
                  bltu         s2, a0, 548f
                  bltu         a6, t5, 558f
544:              blt          a5, s4, 546f
                  or           s4, s8, t2
546:              addi         s6, a7, 1725
                  ori          s3, s0, -700
548:              add          s9, a2, s8
                  slti         a0, s10, -1260
                  blt          t0, gp, 551f
551:              slli         s1, ra, 10
                  nop
                  srai         s9, s4, 26
                  srli         t3, a5, 14
                  srai         t1, s5, 28
                  sra          a3, s4, t2
                  sra          s8, tp, t1
558:              xori         a3, a7, 555
                  auipc        t0, 961336
                  bltu         a2, s7, 566f
                  auipc        s8, 705745
                  auipc        t5, 776405
                  sltu         t5, ra, s8
                  xor          t2, a3, s11
                  add          t6, a1, a2
566:              slli         t1, a5, 14
                  ori          s9, a1, 525
                  or           s4, t1, gp
                  beq          t0, t0, 583f
                  bltu         s8, sp, 579f
                  andi         s5, s6, 1999
                  xor          a1, tp, s4
                  nop
                  lui          a0, 599475
                  slti         s4, s8, 1845
                  sll          s8, a6, s8
                  slt          ra, t3, t4
                  sra          s4, a3, a7
579:              blt          t2, s2, 583f
                  ori          s8, s10, 613
                  andi         t0, a3, -1082
                  bgeu         a4, tp, 594f
583:              bltu         a2, t0, 601f
                  slti         ra, s8, -443
                  nop
                  auipc        t1, 571640
                  sll          s11, a3, a0
                  sra          s0, t5, tp
                  slti         sp, t2, -1707
                  sra          a0, gp, a6
                  and          s9, a6, s7
                  beq          a3, s3, 603f
                  slti         s1, a6, -299
594:              nop
                  sltu         s7, a1, sp
                  slli         s0, s0, 24
                  auipc        s3, 566359
                  addi         s6, t0, -2035
                  sltiu        s2, t0, 402
                  slli         a1, a2, 2
601:              srli         a1, a0, 30
                  blt          t3, s0, 619f
603:              slli         s5, s3, 9
                  add          s1, a5, s2
                  add          t5, a4, s1
                  slt          t2, a2, a0
                  lui          s6, 500336
                  add          sp, s4, a4
                  srai         tp, s9, 16
                  andi         s2, a7, -1233
                  beq          t5, t5, 618f
                  ori          t6, s2, -334
                  srli         a0, t1, 14
                  sra          s0, t5, t4
                  slti         s5, gp, -957
                  srl          t1, a7, t6
                  srl          t3, zero, s9
618:              sltiu        s1, s0, 1609
619:              blt          ra, s10, 626f
                  blt          tp, a7, 624f
                  sub          a6, a2, s1
                  srai         t4, s2, 16
                  xor          s6, s8, s1
624:              sltu         gp, sp, s10
                  ori          a0, s9, 282
626:              add          s9, sp, s4
                  ori          s0, t4, -444
                  bgeu         s3, a1, 634f
                  srl          t6, s8, s5
                  bltu         a6, s8, 634f
                  auipc        t4, 517203
                  slt          gp, s9, a5
                  sll          s5, s4, s10
634:              lui          ra, 187102
                  slli         a0, t2, 1
                  andi         a0, t1, -1332
                  bgeu         t6, s1, 639f
                  nop
639:              add          t4, s0, ra
                  slli         a7, s9, 28
                  slt          s6, a7, t2
                  bne          t6, s0, 646f
                  auipc        s0, 788148
                  addi         s6, a6, 1555
                  beq          t2, s3, 651f
646:              slti         a6, s11, -626
                  blt          a7, s11, 658f
                  beq          s7, s8, 663f
                  beq          a3, zero, 658f
                  and          sp, s9, a5
651:              andi         a1, s1, -1693
                  sltiu        tp, sp, 1211
                  sub          s3, t0, tp
                  la           a1, sub_1
                  andi         s5, s5, 401
                  addi         a1, a1, 454
                  xori         s8, s1, -505
                  beq          gp, s10, main_j4 #branch to jump instr
                  slt          s7, t6, sp
                  sra          a3, s7, a3
                  sra          t5, a0, t5
main_j4:          jalr         ra, a1, -453 #jump main -> sub_1
                  srai         s7, s11, 13
                  sll          s3, ra, gp
                  or           zero, s7, a7
                  slli         gp, t3, 11
658:              andi         a1, t1, 1234
                  auipc        t2, 22044
                  slli         t0, s3, 20
                  xori         sp, s3, -1894
                  bne          a2, s5, 666f
663:              sltiu        s2, a1, 324
                  bgeu         t4, a3, 668f
                  bltu         a3, a4, 669f
666:              bge          t5, a3, 683f
                  sra          s11, s1, ra
668:              sll          ra, a1, a3
669:              xor          s3, gp, t4
                  sub          t0, t6, a0
                  nop
                  xori         s9, a7, 1680
                  or           s0, a3, a4
                  sltiu        a7, s8, 1565
                  beq          s6, a3, 678f
                  slli         zero, s6, 28
                  slt          s11, ra, a7
678:              sll          t5, t2, t5
                  sub          t4, gp, sp
                  blt          s7, a7, 682f
                  andi         a0, s3, -1410
682:              srai         s4, s0, 21
683:              lui          tp, 419033
                  auipc        a3, 943684
                  bltu         gp, s1, 692f
                  blt          t2, s8, 704f
                  xor          s7, t1, s4
                  lui          s5, 354677
                  beq          s5, a4, 695f
                  sltiu        ra, tp, -1302
                  or           s6, s5, t5
692:              slli         s2, sp, 18
                  xori         t3, a7, -359
                  sltu         s5, s3, s9
695:              bne          s2, a6, 698f
                  sra          tp, t4, s1
                  nop
698:              xori         s0, sp, 430
                  bgeu         s5, a6, 710f
                  sub          a1, t5, t3
                  add          t4, ra, s5
                  bltu         sp, a3, 714f
                  xori         s3, t4, 245
704:              beq          t2, t4, 707f
                  bge          gp, s2, 719f
                  andi         a7, s3, -1448
707:              sltu         zero, a7, s5
                  slt          tp, s1, s2
                  add          s11, tp, a2
710:              add          t1, a7, gp
                  sltu         a7, t3, a2
                  srli         s0, sp, 9
                  sltu         t2, a4, t6
714:              xori         a7, a5, -1487
                  and          s1, a1, s3
                  sll          a4, a7, a7
                  ori          t2, s9, 214
                  sltiu        sp, a1, 371
719:              auipc        t4, 3835
                  lui          s9, 540782
                  beq          a2, t6, 729f
                  srai         s3, a6, 11
                  addi         s8, s0, 1282
                  sra          s9, s6, a6
                  bltu         a1, s6, 741f
                  and          sp, a1, s0
                  blt          a0, a5, 744f
                  sub          s11, a2, a2
729:              ori          a1, s9, -440
                  add          a0, s0, t0
                  blt          s0, a3, 742f
                  add          s3, s3, a7
                  bltu         s0, a4, 739f
                  and          a3, t3, t6
                  bltu         t0, s10, 754f
                  ori          a7, s2, 516
                  bge          a7, t5, 752f
                  sll          t4, tp, a5
739:              xor          s9, tp, a4
                  srl          t3, s0, t0
741:              xor          t6, a5, s6
742:              add          s6, a0, s9
                  slli         ra, sp, 4
744:              slt          t2, s10, a1
                  slt          tp, s3, s4
                  sltiu        tp, gp, 562
                  srli         s11, t4, 27
                  bne          t6, a5, 755f
                  sub          s8, t2, s1
                  srl          zero, s11, t2
                  xori         tp, s3, -1379
752:              sltu         t3, s8, sp
                  auipc        s5, 908458
754:              or           s4, a1, ra
755:              add          s0, a0, s10
                  srai         s11, a1, 26
                  auipc        a1, 1047808
                  bltu         s4, s2, 772f
                  sltu         tp, s10, t3
                  srl          t5, a0, zero
                  sll          s9, s0, s9
                  sll          a1, t1, t1
                  srai         a3, s10, 18
                  and          t2, a4, a4
                  addi         s5, zero, 660
                  lui          a4, 718493
                  beq          s10, s10, 769f
                  slli         s5, a7, 11
769:              add          zero, a3, s5
                  sub          s5, s9, t4
                  beq          s6, s1, 772f
772:              slt          a7, ra, t4
                  addi         s4, s3, 178
                  lui          s2, 138792
                  sub          ra, s11, a5
                  srl          t5, sp, a2
                  and          s11, sp, a1
                  srai         a3, s4, 11
                  sltiu        s0, s8, 250
                  blt          a0, t2, 784f
                  bge          s3, a2, 784f
                  sra          a0, a1, s4
                  add          a7, s11, s7
784:              andi         s8, ra, -1595
                  slti         s4, s11, 1807
                  sltiu        zero, s4, -765
                  bgeu         t1, s1, 791f
                  andi         a4, ra, -54
                  sub          tp, t3, s2
                  beq          t2, s2, 804f
791:              slti         t0, s0, 1430
                  xori         t1, s10, 66
                  slti         t1, a1, -29
                  beq          s1, gp, 805f
                  blt          s9, tp, 804f
                  srai         a4, gp, 17
                  ori          ra, s10, 884
                  addi         sp, s0, 755
                  beq          s2, a2, 818f
                  or           t4, t3, s11
                  auipc        sp, 168747
                  sra          a6, ra, t3
                  addi         s1, s4, -1327
804:              bne          t2, a7, 808f
805:              xor          a0, s3, gp
                  bgeu         a7, t1, 812f
                  xori         s0, t1, 1439
808:              bge          s4, a5, 826f
                  slli         s0, t1, 19
                  beq          t4, t5, 813f
                  slli         t6, a0, 25
812:              bgeu         s9, s2, 816f
813:              sll          s1, t5, s7
                  blt          a5, a1, 828f
                  add          s1, s11, t4
816:              bltu         gp, s1, 819f
                  addi         s1, ra, -1375
818:              sltu         s7, s0, a3
819:              srai         sp, s3, 3
                  bge          zero, t6, 826f
                  sub          s11, s6, a6
                  slli         zero, a1, 28
                  srai         s5, s4, 14
                  srli         t0, a5, 1
                  blt          t1, sp, 836f
826:              sra          s7, t4, s9
                  addi         t4, a2, 1586
828:              nop
                  sub          s8, s10, ra
                  xori         a0, s2, -1289
                  sra          s7, s9, s5
                  addi         sp, s7, 1884
                  sra          s9, s3, t4
                  slli         s6, t5, 2
                  sll          a1, gp, s1
836:              bltu         s0, sp, 853f
                  srli         tp, t3, 4
                  andi         a0, t1, 1670
                  or           sp, t5, sp
                  sltu         t2, s11, a3
                  sub          a3, s11, ra
                  slti         s3, a7, -1375
                  xor          s3, t2, a7
                  srli         a6, t1, 15
                  or           t0, s10, a7
                  addi         a3, s3, -1846
                  beq          s8, s6, 848f
848:              sra          s8, t5, t4
                  bne          sp, s11, 860f
                  and          s7, t4, a2
                  sltu         t2, a4, a4
                  and          s8, a6, a3
853:              lui          s9, 11207
                  bne          zero, s10, 861f
                  beq          a7, sp, 862f
                  beq          ra, s4, 858f
                  or           s7, s10, s0
858:              srai         a4, s3, 19
                  bltu         s5, s11, 871f
860:              sub          s5, t1, gp
861:              lui          s8, 464102
862:              sll          a7, sp, t3
                  addi         s2, a4, -104
                  bgeu         t1, t1, 879f
                  sll          a0, t1, s0
                  srai         s9, t3, 26
                  sll          s6, s3, a4
                  lui          a7, 201788
                  or           t4, a4, a7
                  bltu         t6, t6, 872f
871:              blt          s6, s5, 888f
872:              lui          s8, 448287
                  srl          zero, s11, s11
                  or           s11, gp, s0
                  bltu         a7, a3, 890f
                  sub          sp, a5, s1
                  sra          s3, tp, tp
                  addi         a4, s10, -930
879:              addi         t1, t3, -743
                  blt          a5, t4, 886f
                  sub          gp, s6, s7
                  sltiu        t5, s7, 1027
                  lui          t5, 391814
                  nop
                  xor          t6, a1, s0
886:              and          gp, t2, t1
                  bgeu         a2, a0, 903f
888:              slt          a1, s10, t0
                  sll          s0, s3, tp
890:              nop
                  slti         t0, a7, -1830
                  slt          t5, s10, t3
                  beq          s4, a6, 901f
                  xori         s3, a1, 53
                  nop
                  sub          s1, s5, t5
                  slt          a0, t4, s11
                  bltu         sp, tp, 907f
                  andi         tp, s11, -391
                  srl          t0, t4, s6
901:              xor          zero, tp, t0
                  sltiu        s2, a0, 45
903:              addi         t0, a6, 590
                  sll          a7, a2, s10
                  slli         s5, t1, 9
                  lui          s4, 316682
907:              slt          zero, a2, a3
                  beq          a7, s3, 925f
                  slli         t2, a3, 31
                  sub          s6, t4, a4
                  xori         t0, a6, -1738
                  sll          a6, sp, t6
                  ori          s7, s4, 1841
                  xori         t2, a2, 1147
                  add          t3, s7, t3
                  blt          s9, t3, 932f
                  slli         a1, s6, 14
                  sll          a7, a7, s5
                  lui          s11, 1031043
                  srl          t5, s9, a1
                  beq          tp, t5, 936f
                  add          a1, tp, t5
                  bltu         t1, s10, 942f
                  sra          s7, s5, s5
925:              sub          s2, s11, s9
                  bge          a6, a1, 932f
                  blt          s0, s0, 928f
928:              beq          t2, s1, 934f
                  xori         s4, s3, -313
                  bge          tp, s10, 934f
                  or           s11, a0, s9
932:              sltu         ra, tp, s3
                  slt          a4, s11, s9
934:              bltu         a1, s7, 942f
                  srli         zero, a5, 2
936:              xori         s4, t5, -1664
                  or           s1, s1, t2
                  srai         s3, s4, 16
                  blt          a1, s7, 950f
                  sra          t3, s2, a2
                  nop
942:              bne          t2, a0, 946f
                  addi         zero, s7, -1625
                  auipc        a7, 929846
                  ori          sp, a6, -876
946:              srl          gp, t0, a5
                  sra          s1, a6, s7
                  blt          s4, gp, 955f
                  and          s3, s8, t6
950:              slt          s11, a2, a5
                  auipc        s0, 722123
                  sltiu        zero, a2, 202
                  add          s7, sp, a4
                  add          t2, t5, s7
955:              bltu         s9, s10, 969f
                  srai         s11, a0, 18
                  srl          t1, a6, t2
                  beq          t0, a6, 962f
                  beq          s11, s10, 961f
                  srai         t6, a7, 30
961:              beq          s4, a7, 965f
962:              slt          a4, s3, t3
                  ori          t0, a4, -1076
                  bgeu         s3, zero, 979f
965:              andi         a0, a0, 315
                  blt          t1, t3, 969f
                  bne          a0, a4, 974f
                  nop
969:              bgeu         s1, s3, 972f
                  addi         t0, gp, -529
                  ori          a6, a7, -1073
972:              bltu         ra, a5, 978f
                  blt          s6, s1, 985f
974:              xori         sp, t6, 528
                  slti         s6, t1, 1009
                  addi         s5, t2, 1999
                  srli         s2, a1, 18
978:              srl          a6, t6, a6
979:              slti         zero, t5, -445
                  bne          s5, t3, 991f
                  sltu         t4, t6, t0
                  srai         s9, s10, 7
                  bne          s4, s10, 985f
                  nop
985:              andi         s8, s0, -1629
                  slti         s6, s5, 1981
                  sltiu        ra, s10, 82
                  srai         gp, t2, 23
                  blt          s7, ra, 992f
                  andi         t1, s5, 700
991:              blt          t3, a6, 1008f
992:              bltu         s9, a5, 1003f
                  ori          t0, s8, -825
                  lui          a6, 594108
                  sltu         t1, a0, s3
                  ori          a7, s2, 1193
                  sltiu        t3, s1, -786
                  slti         s0, s2, 987
                  srli         t3, a5, 12
                  slt          t4, s4, s11
                  la           tp, sub_3
                  auipc        t5, 332836
                  addi         tp, tp, -655
                  slt          s9, s3, s10
                  or           s7, s6, a6
                  sltu         t2, a0, s11
main_j1:          jalr         ra, tp, 655 #jump main -> sub_3
                  beq          s4, a1, 1012f
                  lui          s3, 652617
                  lui          gp, 103765
                  srl          t1, a2, s1
                  sltu         gp, s11, gp
1003:             xor          s7, zero, t4
                  la           sp, region_0+1731 #start riscv_load_store_rand_instr_stream_5
                  srai         a4, a4, 18
                  sra          s1, a5, s1
                  lb           s9, 148(sp)
                  sb           a5, 225(sp)
                  lbu          s5, -140(sp)
                  sltu         t0, s10, s9
                  srai         t4, t3, 2
                  slti         zero, gp, -937
                  lbu          t4, 109(sp)
                  lbu          s9, -123(sp)
                  sh           s9, -253(sp)
                  sub          s8, t2, a6
                  slt          s5, t0, t2
                  lw           a1, -251(sp)
                  lbu          zero, 190(sp)
                  addi         a6, s1, -348
                  lb           t0, -22(sp)
                  sh           s8, -243(sp)
                  srai         t4, zero, 25
                  nop
                  lhu          a7, -27(sp)
                  lh           tp, 73(sp)
                  lbu          a3, -108(sp)
                  srl          a7, s6, gp
                  slti         t0, s10, -563
                  addi         s2, s11, 1119
                  sb           t6, -160(sp)
                  sh           a1, -229(sp)
                  slti         s0, s4, -335
                  sb           a4, -131(sp)
                  and          a0, a4, a2
                  sb           s11, 104(sp)
                  add          zero, a2, sp
                  sra          s0, a2, s7
                  lhu          s9, -49(sp)
                  sltu         a0, a5, s1
                  lbu          t3, 52(sp)
                  sra          a1, a4, t0
                  slti         tp, a4, -554
                  xori         tp, s6, 1476
                  lh           s8, 87(sp)
                  sb           s4, 4(sp)
                  lbu          s5, 236(sp) #end riscv_load_store_rand_instr_stream_5
                  srai         t1, a1, 10
                  bge          s11, s3, 1023f
                  sra          s9, tp, t3
                  add          t3, t3, t3
1008:             sll          t0, t6, a6
                  xor          t1, s6, s2
                  sltiu        gp, t4, 1202
                  sltiu        a6, t2, -1728
1012:             sub          sp, t2, s11
                  sltiu        ra, a3, 831
                  beq          s5, s4, 1021f
                  sra          t3, s10, s11
                  bltu         s3, s10, 1027f
                  sra          s11, a1, s11
                  bgeu         a6, s2, 1035f
                  beq          s11, a0, 1023f
                  sltu         s9, t3, t0
1021:             bgeu         s7, a3, 1028f
                  bltu         s10, a5, 1038f
1023:             add          a1, s10, s5
                  sub          a3, s5, sp
                  auipc        s2, 166976
                  xori         s6, s6, 454
1027:             add          zero, t0, a1
1028:             bgeu         a3, s7, 1031f
                  sub          ra, s6, a3
                  add          t4, t2, s10
1031:             bltu         a3, s4, 1050f
                  nop
                  slti         s11, a3, 1209
                  bltu         t4, s11, 1043f
1035:             sub          sp, s10, t0
                  bgeu         s2, s4, 1053f
                  sll          a0, s6, s3
1038:             and          t4, tp, s0
                  xor          a4, s11, t0
                  add          s3, a6, s11
                  lui          s11, 1017845
                  srai         zero, s1, 24
1043:             bgeu         a6, a7, 1046f
                  srl          s4, s11, gp
                  or           s1, t3, s5
1046:             add          sp, s1, a7
                  srl          s7, t4, s7
                  bltu         a0, ra, 1054f
                  slt          s11, s0, t2
1050:             srl          t4, s11, a1
                  bgeu         t6, ra, 1062f
                  andi         s4, t5, 476
1053:             bne          s4, s3, 1059f
1054:             sll          t1, t3, a1
                  sub          tp, s7, a4
                  sra          s2, a0, s10
                  sltu         s1, s4, s8
                  beq          s0, gp, 1062f
1059:             slli         a4, s3, 10
                  blt          s7, s0, 1062f
                  sra          s7, a4, t6
1062:             nop
                  slt          s0, s4, s5
                  nop
                  blt          t6, s8, 1076f
                  srai         tp, a1, 24
                  sub          a1, t6, a6
                  nop
                  ori          t5, a0, -1445
                  add          t5, a1, a2
                  andi         t4, t0, 1654
                  sra          s4, s4, ra
                  bltu         t1, s8, 1087f
                  sra          a0, t5, s5
                  srai         s6, s10, 17
1076:             sltu         s0, s9, s1
                  la           s5, sub_2
                  slli         t6, zero, 16
                  slti         s9, t3, 1946
                  addi         s5, s5, -699
                  sltiu        a3, s0, -1969
                  add          sp, a7, s7
                  xori         s7, gp, 1250
                  sltiu        ra, s0, 911
                  or           s6, s2, t1
                  and          sp, zero, s7
                  add          a4, a7, zero
                  slti         a1, a0, -926
main_j2:          jalr         ra, s5, 699 #jump main -> sub_2
                  auipc        t3, 730215
                  srl          a1, s3, zero
                  lui          t6, 791258
                  sll          t2, t0, tp
                  sltu         t4, tp, s0
                  sltu         s11, s8, s7
                  nop
                  sltu         a1, sp, a2
                  andi         s8, t5, -57
                  sltiu        s2, s0, -931
1087:             bne          t4, s7, 1091f
                  add          s11, a1, s2
                  xori         gp, t4, 940
                  addi         ra, s7, 521
1091:             sltu         s6, zero, s2
                  and          s7, s10, s7
                  bge          t2, sp, 1096f
                  andi         s3, s10, 175
                  ori          t3, s10, 769
1096:             sub          t4, t3, s5
                  nop
                  blt          t5, s9, 1110f
                  blt          t1, s1, 1114f
                  andi         a4, s8, -107
                  or           ra, gp, s3
                  add          a7, tp, t1
                  addi         t0, s10, 2021
                  sll          tp, a2, gp
                  srl          t4, a1, gp
                  blt          s7, t2, 1107f
1107:             and          gp, a3, a6
                  nop
                  lui          zero, 839263
1110:             beq          gp, a1, 1116f
                  andi         tp, s0, 1980
                  sll          ra, a2, s8
                  auipc        s7, 997150
1114:             sub          a3, s4, s1
                  xori         s11, sp, 1890
1116:             sra          s3, t5, a7
                  srai         s3, a1, 22
                  bltu         t0, s5, 1136f
                  and          a1, sp, sp
                  addi         t0, gp, 489
                  srl          a0, t5, gp
                  slli         t0, s4, 25
                  andi         a3, a1, -592
                  blt          s2, s8, 1126f
                  xor          a4, tp, s2
1126:             beq          s3, a7, 1140f
                  add          zero, t4, t1
                  bge          a1, gp, 1143f
                  nop
                  srl          a7, sp, s10
                  nop
                  bgeu         zero, s4, 1136f
                  lui          t0, 1031804
                  and          s2, t5, s2
                  nop
1136:             slli         t4, s7, 31
                  slti         t0, t3, 508
                  xori         a4, gp, 443
                  or           ra, a0, t2
1140:             srl          tp, s11, s0
                  xor          t6, s6, t1
                  or           s4, t1, a0
1143:             sltu         sp, s0, s4
                  andi         t4, a6, 22
                  bltu         a5, a6, 1153f
                  addi         a4, s8, -1686
                  lui          tp, 884684
                  sltu         t3, a5, a0
                  bge          s8, tp, 1153f
                  bge          a1, t2, 1156f
                  addi         t2, a5, -1157
                  or           gp, s4, t0
1153:             srl          a0, gp, s11
                  blt          a7, a5, 1171f
                  auipc        s0, 344747
1156:             auipc        s7, 150877
                  srl          tp, sp, t3
                  blt          s3, s4, 1160f
                  slli         s11, s7, 16
1160:             lui          t1, 277133
                  sll          s2, s3, a3
                  blt          s0, t2, 1169f
                  srai         t1, s3, 23
                  auipc        s0, 370094
                  xor          s4, t1, a4
                  bge          a0, t5, 1180f
                  bne          a1, s9, 1178f
                  bge          t0, a4, 1180f
1169:             beq          s8, t1, 1180f
                  srli         t2, s7, 20
1171:             xori         s5, s6, -431
                  bge          s6, zero, 1191f
                  bne          t6, sp, 1177f
                  bgeu         a1, t5, 1180f
                  andi         a7, a1, -1924
                  xor          ra, s11, a3
1177:             nop
1178:             blt          t6, a7, 1193f
                  or           t1, gp, s0
1180:             xori         a0, a0, -1916
                  sll          s7, s6, a0
                  sltiu        tp, s4, -1514
                  lui          sp, 458174
                  srai         a4, t0, 21
                  auipc        s5, 743733
                  xor          s7, t5, a3
                  srli         t6, s6, 7
                  add          s0, t6, a0
                  bltu         s4, t6, 1193f
                  sltiu        t0, s5, 947
1191:             sltiu        s3, tp, 907
                  bgeu         s4, t2, 1195f
1193:             srli         s8, t5, 29
                  lui          a0, 111652
1195:             xor          gp, s7, tp
                  ori          a0, s2, -1646
                  srli         a3, a0, 27
                  nop
                  bltu         a6, ra, 1205f
                  andi         s4, s1, -1468
                  srl          s4, a7, a7
                  add          s5, a4, s10
                  ori          s4, a6, -1215
                  nop
1205:             slli         t0, t6, 9
                  sltiu        s1, a6, -1637
                  slli         t5, sp, 7
                  andi         s5, s1, 1931
                  auipc        t2, 861916
                  slti         s3, a5, -168
                  slti         s3, s0, -584
                  lui          a3, 167592
                  srl          a0, s1, s7
                  bge          s5, s7, 1224f
                  slti         s7, s9, -464
                  srai         a0, tp, 26
                  bltu         t5, s0, 1224f
                  sltu         gp, a1, a4
                  and          s0, s4, t5
                  or           a1, s5, t3
                  addi         s7, s2, 931
                  bgeu         a4, s2, 1224f
                  srl          ra, a1, s5
1224:             or           t0, s9, a7
                  la x12, test_done
                  jalr x0, x12, 0
test_done:        
                  li gp, 1
                  ecall
sub_4:            slti         s0, a4, 1057
                  srai         a3, s2, 4
                  sub          t3, t1, a1
                  addi         a5, a5, -40
                  sw           ra, 4(a5)
                  slt          s1, s4, s8
                  slti         a0, t5, -1341
                  addi         s3, s6, -1626
                  sub          t0, a1, s6
                  andi         t4, t0, 743
                  xori         tp, s7, 1248
                  sub          gp, t1, s2
                  sltiu        a6, t2, 1171
                  sltu         s8, s7, s1
                  srli         s7, a6, 17
sub_4_j7:         jal          ra, sub_5 #jump sub_4 -> sub_5
                  la           sp, region_1+1545 #start riscv_load_store_rand_instr_stream_1
                  lbu          a7, 15(sp)
                  xor          s9, t4, a4
                  sra          a6, a1, t0
                  lbu          a3, 12(sp)
                  sra          s0, t2, s5
                  lbu          s8, 0(sp)
                  sb           gp, 13(sp)
                  sb           t1, 2(sp)
                  lh           t1, -7(sp)
                  lbu          s1, 16(sp)
                  lbu          s3, -9(sp)
                  slti         a6, a0, -469
                  nop
                  andi         a7, sp, -339
                  lb           s8, -1(sp)
                  lbu          ra, 12(sp)
                  lbu          s2, -16(sp)
                  srai         t1, s7, 4
                  lbu          a1, -4(sp)
                  andi         s5, s6, -310
                  lbu          s3, 1(sp)
                  srai         s7, s9, 17
                  andi         t0, s6, 817
                  lbu          a4, 6(sp)
                  sb           a3, -12(sp)
                  sb           s2, 15(sp)
                  lbu          a3, -2(sp)
                  srl          gp, s7, t4
                  lbu          s1, -2(sp)
                  ori          t1, s9, -1199
                  lb           tp, -8(sp)
                  sltu         a0, a5, a1
                  and          s9, t3, t2
                  add          a1, s4, s4
                  addi         s2, s0, 730
                  lhu          s8, 15(sp)
                  lui          ra, 62681
                  sltiu        s7, t6, 1362
                  slti         s3, s4, -1243
                  slti         s5, s2, 81
                  nop
                  lb           s9, -10(sp)
                  lui          zero, 66543
                  sltiu        a4, s6, 1392
                  sb           t1, -2(sp)
                  lh           s7, -15(sp)
                  lb           zero, 8(sp)
                  sub          a1, s11, a6
                  slt          a1, t0, s1
                  nop
                  srli         t6, zero, 18
                  lbu          t5, 16(sp) #end riscv_load_store_rand_instr_stream_1
                  la           a7, region_0+298 #start riscv_load_store_rand_instr_stream_2
                  and          t6, s1, s11
                  lb           s11, 19(a7)
                  lui          tp, 241685
                  lbu          s5, -51(a7)
                  and          s0, a4, gp
                  sb           s1, -47(a7)
                  lbu          t3, 41(a7)
                  lb           s4, 13(a7)
                  lh           zero, 42(a7)
                  lbu          sp, -18(a7)
                  addi         s3, t0, 1820
                  sb           ra, -28(a7)
                  srli         s3, s8, 9
                  addi         tp, s8, 1649
                  lh           t3, -28(a7)
                  sb           s0, -52(a7)
                  sra          zero, s11, s4
                  sb           s11, 4(a7)
                  nop
                  sb           s7, -63(a7)
                  lbu          ra, 23(a7)
                  lbu          s0, 24(a7)
                  lhu          s9, -18(a7)
                  sh           s11, -48(a7)
                  sb           s5, -5(a7)
                  lb           s5, -18(a7)
                  sw           s4, 26(a7)
                  slt          t2, s8, t3
                  sb           s5, 25(a7)
                  slt          s7, t1, a3
                  sb           s5, -44(a7)
                  srli         s8, zero, 14
                  lb           a4, -3(a7)
                  lh           s11, 40(a7)
                  sb           s0, -61(a7)
                  lb           s5, 1(a7)
                  lb           a4, -8(a7)
                  lbu          a1, 29(a7)
                  lbu          t4, 54(a7)
                  lbu          s8, 15(a7)
                  lbu          s11, 18(a7) #end riscv_load_store_rand_instr_stream_2
                  beq          t2, t3, 4f
                  srl          s6, zero, t2
                  blt          t5, s3, 16f
                  or           t3, t6, s4
4:                srl          zero, a4, s11
                  beq          s10, zero, 17f
                  slli         s8, t4, 24
                  andi         s1, s1, 1820
                  srl          a7, a5, s6
                  sltu         s6, s2, a3
                  srl          a4, s3, a0
                  nop
                  addi         t4, t3, 879
                  auipc        zero, 854310
                  srl          s1, s6, t3
                  srai         t1, a0, 5
16:               add          t0, s9, s11
17:               auipc        s3, 898811
                  lui          s4, 714544
                  and          a7, ra, a7
                  or           a7, s10, s9
                  sll          s4, zero, tp
                  srai         t3, t3, 17
                  xor          t2, s9, t3
                  beq          s4, t4, 35f
                  andi         s4, s5, -1171
                  slti         s3, t5, -993
                  sltu         s11, t3, gp
                  srli         t4, s6, 8
                  blt          tp, s6, 44f
                  sub          a4, sp, a1
                  srli         s3, s2, 12
                  or           a4, s11, s1
                  slti         t3, a3, -1611
                  srai         t3, a4, 11
35:               slt          s5, s2, t1
                  nop
                  sll          s11, t0, a6
                  lui          s3, 920481
                  nop
                  beq          s9, t4, 51f
                  bne          s8, ra, 55f
                  sub          t6, a7, t3
                  srl          a6, s7, s2
44:               srai         s6, a4, 9
                  slt          sp, s6, s1
                  andi         t6, s0, 154
                  ori          a7, s2, -1682
                  bgeu         a2, s8, 67f
                  sra          s1, s4, s10
                  slli         a7, t5, 2
51:               slti         zero, s2, -2047
                  sltiu        t6, t2, 36
                  andi         s1, t0, -1889
                  bltu         a2, a0, 60f
55:               srl          gp, a1, a4
                  addi         gp, s2, -973
                  lui          s8, 62232
                  sra          a6, zero, t4
                  auipc        s9, 856333
60:               ori          a7, t2, 850
                  srl          gp, t0, s3
                  beq          a7, s10, 69f
                  beq          t1, s11, 71f
                  srli         t2, s0, 15
                  blt          s8, s1, 74f
                  slti         s1, s7, 1801
67:               slti         s4, zero, -620
                  and          a6, s10, a1
69:               slli         s8, s2, 28
                  bge          ra, t2, 80f
71:               xori         s3, gp, 485
                  slti         s0, s11, -436
                  or           t0, t2, t3
74:               bgeu         s2, s11, 81f
                  ori          s8, ra, -988
                  blt          s6, s2, 90f
                  andi         s11, t2, -1908
                  sltiu        a3, a0, 1829
                  lui          a3, 577211
80:               srl          a7, a0, zero
81:               xor          t2, s8, t3
                  addi         gp, sp, -730
                  or           s0, a0, t0
                  srli         s0, a7, 21
                  auipc        t2, 393601
                  sltu         s1, ra, a4
                  srai         s5, tp, 13
                  beq          s8, t1, 100f
                  addi         a3, s10, -1879
90:               sll          s3, s1, s0
                  sra          s9, a3, s8
                  bgeu         s5, gp, 104f
                  sll          t2, t3, t3
                  auipc        t5, 7305
                  slt          s3, a0, zero
                  xori         tp, t4, -1839
                  sll          sp, a3, t0
                  blt          s9, tp, 114f
                  slli         s9, gp, 17
100:              bne          gp, t1, 103f
                  sltiu        a3, t0, 170
                  beq          a7, s3, 108f
103:              auipc        tp, 445085
104:              beq          s3, tp, 119f
                  ori          s5, t1, -830
                  sltiu        a7, gp, -853
                  xor          s7, a6, s1
108:              sub          a6, tp, s7
                  or           s5, s9, s1
                  sub          s0, sp, t4
                  ori          s11, s11, -783
                  add          a7, t4, sp
                  sub          ra, s2, s7
114:              nop
                  xori         a1, s4, 110
                  slti         s2, t2, -143
                  xor          a1, sp, t0
                  sltiu        s5, t6, 473
119:              sltiu        s8, s8, 836
                  addi         s9, s7, -1930
                  bltu         tp, s11, 129f
                  srli         s5, t6, 21
                  addi         t3, s4, 1443
                  addi         a7, ra, 1446
                  bge          t2, t4, 135f
                  addi         s1, gp, 459
                  sra          s4, a3, zero
                  sub          t6, a5, zero
129:              nop
                  slli         s6, s5, 14
                  bltu         s5, a3, 140f
                  bgeu         a0, a4, 137f
                  sltu         t5, t5, t1
                  bltu         s10, ra, 151f
135:              and          s11, s8, s0
                  srli         s11, s3, 1
137:              ori          a1, s2, -964
                  bgeu         a3, a5, 146f
                  auipc        s0, 1023171
140:              bge          gp, s8, 157f
                  auipc        t6, 422520
                  srli         sp, ra, 23
                  ori          ra, a6, 17
                  auipc        a7, 891803
                  lui          s2, 332968
146:              or           a6, s8, s0
                  xori         gp, s4, 1222
                  sll          gp, a5, s5
                  slt          tp, s7, s9
                  slti         s5, a2, -1684
151:              slti         s1, a3, -572
                  sub          s4, s4, s11
                  xor          s1, t6, a7
                  lui          s3, 830137
                  add          s8, a4, a2
                  auipc        s11, 383102
157:              ori          gp, t2, 406
                  bge          a4, t2, 170f
                  xor          zero, t2, s6
                  and          a0, a0, s3
                  bge          a4, s1, 167f
                  sltu         a3, s5, a7
                  xori         s9, s3, -1208
                  xori         a0, t4, -95
                  sltu         s1, s11, a4
                  sub          s11, s1, a1
167:              andi         tp, s6, 1062
                  lui          s7, 471002
                  lui          t1, 734152
170:              andi         ra, t2, -1937
                  slti         a6, s1, -1178
                  ori          a6, a7, -1549
                  ori          tp, s7, -208
                  or           ra, t6, a5
                  sra          s5, t4, s9
                  auipc        s9, 44441
                  sltu         s7, a7, zero
                  slt          sp, t4, a1
                  bgeu         s7, s7, 190f
                  or           t5, s11, s9
                  srl          s11, t6, t4
                  bge          s5, s9, 194f
                  sltiu        s2, s6, 1590
                  bltu         a1, a4, 187f
                  slli         t2, gp, 4
                  xor          t6, s7, a5
187:              slt          t6, a1, a6
                  blt          s9, sp, 197f
                  srl          a4, s11, s3
190:              beq          s9, s0, 207f
                  bltu         a1, a3, 200f
                  bne          s10, t4, 198f
                  slli         t0, t3, 1
194:              auipc        a3, 72132
                  beq          s2, s5, 212f
                  srli         s6, s3, 9
197:              xori         a3, tp, 1171
198:              xor          a0, a1, s2
                  addi         t3, t3, -314
200:              slt          a4, a2, s3
                  andi         zero, s7, -1570
                  sub          ra, a5, t2
                  slt          a7, s0, s7
                  sltiu        a6, s3, -489
                  slti         t4, ra, -418
                  bge          t1, s8, 214f
207:              auipc        s1, 760470
                  slli         a3, a6, 28
                  addi         tp, a5, -1162
                  beq          a1, a0, 214f
                  andi         a3, s10, 924
212:              slt          t4, a7, s8
                  slt          s6, s5, t4
214:              bltu         s4, t5, 224f
                  and          t2, s2, s8
                  beq          t5, t4, 224f
                  srli         s9, t6, 24
                  slli         a1, t2, 17
                  bltu         t2, a2, 235f
                  add          s9, t3, s5
                  or           t4, s1, a5
                  ori          s0, zero, -1447
                  slti         ra, s9, -643
224:              srli         a3, s4, 23
                  srli         s3, a6, 11
                  xor          s9, s7, gp
                  srai         a0, a2, 1
                  nop
                  slt          a3, t0, s7
                  blt          a4, s5, 238f
                  bgeu         a2, s4, 236f
                  ori          s5, ra, 53
                  slti         ra, s2, -1679
                  slli         s4, s9, 31
235:              blt          sp, t5, 250f
236:              xor          s2, a4, t1
                  xori         t0, s10, -1373
238:              bltu         s2, s6, 244f
                  bne          t2, a7, 253f
                  blt          s1, s6, 254f
                  bltu         s11, a5, 248f
                  addi         s1, a5, 1861
                  blt          gp, t5, 255f
244:              xori         s0, ra, -1182
                  bge          s10, s4, 251f
                  la           a6, region_0+621 #start riscv_load_store_rand_instr_stream_3
                  srai         zero, s5, 6
                  addi         t6, t4, 896
                  sb           t4, 542(a6)
                  or           t2, s3, a5
                  lh           ra, 79(a6)
                  nop
                  sll          s9, t3, a6
                  ori          tp, t2, -1633
                  sb           t3, 128(a6)
                  slt          s11, sp, s3
                  lb           tp, 192(a6)
                  sltu         s0, a0, s0
                  sltiu        s0, t3, -138
                  andi         t3, t6, -695
                  nop
                  auipc        t0, 207288
                  sb           a2, 992(a6)
                  lh           zero, 607(a6)
                  lw           a4, 1079(a6)
                  lhu          t3, -341(a6)
                  lhu          tp, -233(a6)
                  add          gp, s0, s3
                  lb           s6, 1297(a6)
                  addi         s6, s9, -1210
                  slli         s3, a5, 13
                  slt          t0, ra, s5
                  sb           a2, 212(a6)
                  xori         a4, a7, -606
                  sll          t6, s8, a5
                  sb           s6, 68(a6)
                  nop
                  addi         s5, a2, -2028
                  nop
                  sub          t0, gp, a7
                  andi         s1, s10, -1188
                  lw           t6, -561(a6)
                  slli         ra, gp, 14
                  srai         s6, s4, 24
                  addi         t0, t3, -1830
                  lbu          t4, 603(a6)
                  slt          s1, s8, s8
                  sb           t5, 707(a6)
                  or           tp, t3, t1
                  sub          ra, a4, a6
                  lhu          sp, 29(a6)
                  lh           s0, -201(a6)
                  srli         sp, s6, 4
                  sh           a2, 1123(a6) #end riscv_load_store_rand_instr_stream_3
                  bltu         a0, t6, 256f
                  srai         t2, a5, 3
248:              slt          s11, s6, s8
                  sub          t4, t3, t3
250:              beq          zero, a1, 261f
251:              bltu         a4, gp, 265f
                  sub          s7, a2, s7
253:              slt          s2, s0, sp
254:              bltu         a1, a1, 261f
255:              bgeu         t6, s9, 270f
256:              bltu         s0, s9, 268f
                  auipc        t4, 471697
                  sltu         s7, a2, a1
                  blt          t4, s4, 278f
                  andi         s9, s4, -312
261:              srl          a0, tp, a4
                  lui          t0, 871622
                  sll          a6, a6, s2
                  bgeu         a0, a6, 276f
265:              slt          a4, s9, t2
                  nop
                  bgeu         a1, a2, 286f
268:              add          t2, s9, a7
                  bge          gp, a2, 276f
270:              sll          a3, a4, gp
                  nop
                  slti         sp, t6, 1847
                  slti         s0, t4, -1587
                  slt          sp, s0, a1
                  bne          s10, s6, 284f
276:              bltu         a4, s3, 285f
                  bne          s4, s4, 294f
278:              sltu         a0, gp, a7
                  bltu         t2, a1, 294f
                  slli         s11, ra, 22
                  srl          sp, a7, t4
                  bne          t5, gp, 296f
                  blt          a7, a2, 291f
284:              bge          tp, a4, 295f
285:              xori         a6, s7, -651
286:              sll          a4, t4, t5
                  ori          zero, t3, -607
                  sub          a7, a4, a0
                  bgeu         s7, s10, 294f
                  lui          a0, 99645
291:              bltu         t5, t1, 305f
                  bne          t3, s6, 308f
                  bne          t4, s7, 299f
294:              or           a3, t6, t2
295:              sltu         a1, s7, s7
296:              bgeu         s1, tp, 311f
                  auipc        s4, 247074
                  xori         t4, s11, -1236
299:              bge          a7, t3, 305f
                  sll          a7, zero, s9
                  slli         a3, t2, 1
                  andi         a1, a3, 1122
                  blt          a1, a6, 315f
                  beq          s1, t5, 316f
305:              bne          s10, ra, 317f
                  bgeu         a2, t5, 312f
                  srai         zero, s2, 29
308:              lui          a1, 600594
                  or           s1, t1, t0
                  srl          t2, s6, gp
311:              bne          s7, a6, 328f
312:              xori         s2, t5, 498
                  beq          a7, t3, 316f
                  bgeu         a0, a5, 325f
315:              xori         gp, s5, -372
316:              ori          s11, a0, -998
317:              beq          a2, a3, 324f
                  slt          a7, a1, s3
                  addi         a3, a5, -1516
                  auipc        t0, 47885
                  xor          s9, a6, s1
                  bne          a0, t6, 332f
                  addi         a4, a0, 281
324:              blt          s0, t4, 328f
325:              bltu         a7, t6, 333f
                  srai         tp, t4, 20
                  or           t5, gp, a3
328:              andi         t0, s11, -839
                  blt          a7, a6, 343f
                  and          tp, a3, sp
                  or           s1, a5, s3
332:              auipc        s3, 390652
333:              sub          s8, gp, zero
                  slli         t0, t1, 18
                  xor          sp, a0, a7
                  auipc        s9, 281174
                  lui          s11, 757750
                  sub          t2, t6, a5
                  bge          a5, sp, 351f
                  sll          a6, s4, t5
                  bne          s2, a0, 351f
                  auipc        s0, 625191
343:              slli         t4, a5, 2
                  beq          s2, s3, 352f
                  or           a3, s5, a5
                  nop
                  srli         sp, a2, 29
                  ori          t0, zero, 176
                  bne          a2, t4, 358f
                  bgeu         s8, a0, 360f
351:              xori         t1, a0, 1031
352:              bne          t5, s9, 371f
                  or           t0, tp, s11
                  bgeu         t6, s9, 361f
                  sra          t4, a2, t0
                  ori          s8, a0, -348
                  sub          t5, s3, t5
358:              lui          t2, 786358
                  or           a4, t4, s10
360:              sltiu        a6, gp, -528
361:              xor          s3, t4, a0
                  add          t4, t3, a0
                  sll          s11, s3, a7
                  bne          t0, s11, 376f
                  srl          t3, s9, a5
                  lui          t5, 385787
                  add          gp, a1, a6
                  add          s8, s0, s4
                  bge          t5, s3, 381f
                  lui          a0, 484861
371:              slt          t1, t0, s2
                  sra          s3, tp, zero
                  srl          a7, s5, s7
                  bltu         a5, a2, 382f
                  andi         t6, s0, -895
376:              slt          s8, tp, tp
                  sll          s9, t1, t5
                  blt          t3, t2, 389f
                  bgeu         s0, s2, 386f
                  xor          t2, a0, a4
381:              srl          t6, sp, s0
382:              xori         s9, s11, 2037
                  slli         a7, s1, 26
                  lui          t3, 519588
                  slt          sp, t1, a4
386:              andi         s1, a6, 1561
                  and          gp, s11, s2
                  sub          gp, t5, s1
389:              slt          s8, a7, tp
                  slli         a0, t5, 29
                  lui          s11, 657288
                  xor          t0, ra, a2
                  sll          zero, sp, s10
                  bne          sp, s4, 406f
                  andi         a6, a4, -1486
                  bne          a5, a4, 411f
                  andi         t4, t4, 66
                  srai         s2, s3, 21
                  srl          t5, a6, s5
                  bge          s1, a4, 406f
                  and          s7, s8, t4
                  slti         zero, a6, 739
                  sltiu        a6, s1, 2027
                  xori         t3, s11, 1150
                  lui          t6, 836434
406:              bge          a5, gp, 418f
                  slt          t6, s5, a3
                  xor          t2, a2, s10
                  bge          s2, t5, 420f
                  srl          a4, t2, a3
411:              xor          gp, s7, a2
                  xor          gp, ra, gp
                  auipc        a7, 467459
                  bltu         s4, a1, 428f
                  sltu         a7, t0, zero
                  add          a6, s7, t3
                  bltu         t3, s5, 423f
418:              add          t2, s4, s2
                  srl          s3, s10, s11
420:              add          s6, s2, a7
                  xori         sp, ra, 1490
                  sll          s6, a1, a4
423:              sltu         t6, ra, s3
                  srl          s8, a7, t2
                  srl          s11, s10, t6
                  bge          s7, a5, 431f
                  lui          a4, 882436
428:              ori          t3, a0, -1286
                  sub          t5, s10, t3
                  slli         t5, t6, 18
431:              srai         s7, a6, 25
                  or           s3, t5, gp
                  ori          a7, t1, 1736
                  ori          s7, a7, 426
                  blt          s5, sp, 443f
                  add          s11, s10, s3
                  srai         t0, s3, 17
                  beq          gp, s7, 452f
                  srai         s7, s4, 26
                  andi         t5, t1, -1004
                  sltu         s7, s8, tp
                  lui          s6, 670108
443:              slti         s7, a4, 72
                  andi         a0, a5, -1226
                  srli         a6, s1, 0
                  xori         gp, a7, -148
                  andi         a3, tp, 1700
                  bgeu         t2, s7, 456f
                  slli         s11, s1, 9
                  slti         t0, s1, 1950
                  and          s7, t4, ra
452:              slli         t0, t6, 17
                  addi         s3, s8, 112
                  sub          t3, tp, s11
                  bgeu         s9, zero, 471f
456:              srli         a0, t3, 17
                  sltu         t2, s6, a1
                  beq          s0, a2, 467f
                  addi         t2, t0, -46
                  srli         ra, a0, 31
                  lui          a0, 158137
                  lui          t0, 792890
                  sub          t6, t5, a3
                  xori         s7, gp, -1663
                  ori          a1, s5, -1916
                  auipc        gp, 87815
467:              andi         s3, s5, -1493
                  andi         sp, a2, -1730
                  bne          s6, a0, 484f
                  slti         a0, a3, 396
471:              auipc        s6, 218019
                  and          t3, s7, s4
                  la           s9, region_1+1593 #start riscv_load_store_rand_instr_stream_0
                  sb           s4, -1186(s9)
                  lbu          s4, 343(s9)
                  lbu          t0, -1127(s9)
                  sh           a7, -1279(s9)
                  and          t0, s11, s11
                  andi         s2, s4, -1626
                  sub          s3, a2, s4
                  sb           t6, 238(s9)
                  lb           zero, -227(s9)
                  sb           s3, -286(s9)
                  srai         a0, a5, 28
                  sb           a1, -1172(s9)
                  lui          a0, 964494
                  and          a4, a5, s8
                  sb           a3, -635(s9)
                  auipc        t6, 315568
                  sh           s11, -923(s9)
                  lbu          s1, -797(s9)
                  auipc        s5, 265674
                  sh           a2, -303(s9)
                  lbu          sp, -209(s9)
                  lbu          tp, -1357(s9)
                  lbu          t1, -2(s9)
                  lb           s8, -392(s9)
                  lh           s4, -275(s9)
                  sh           s10, -547(s9)
                  sb           a4, -647(s9)
                  srai         s0, s9, 16
                  sltiu        s11, a7, 1941
                  lbu          s0, -944(s9)
                  lbu          a0, 171(s9)
                  lb           a7, -162(s9)
                  lbu          t3, 237(s9)
                  lhu          zero, -1161(s9)
                  sb           a1, -302(s9)
                  lw           a4, -1237(s9)
                  sb           gp, -1467(s9) #end riscv_load_store_rand_instr_stream_0
                  sub          tp, t4, t5
                  addi         s0, sp, 1199
                  srai         a0, t5, 8
                  bgeu         a7, t4, 486f
                  sltiu        s9, t5, -1166
                  slti         t1, s9, -1807
                  sll          zero, s10, a6
                  slt          zero, a7, s6
                  sltu         s4, s1, a1
                  srai         a4, s4, 5
                  auipc        gp, 222027
484:              bgeu         s11, a5, 501f
                  sra          a7, t0, t3
486:              srai         a7, s4, 15
                  beq          t2, zero, 493f
                  and          t0, t0, s7
                  sra          tp, s6, a6
                  sltu         a0, ra, ra
                  sltu         s9, t5, sp
                  nop
493:              andi         sp, ra, 625
                  ori          a1, a3, -448
                  lui          s11, 531655
                  bgeu         t2, t5, 513f
                  or           s7, s1, t4
                  srai         s6, sp, 3
                  bge          t3, zero, 503f
                  or           s11, a0, t1
501:              sltiu        sp, tp, 1994
                  srai         zero, s1, 12
503:              auipc        s11, 54082
                  blt          s5, gp, 507f
                  sra          a7, tp, a0
                  slti         ra, s8, -1333
507:              srl          t6, t2, a5
                  or           a1, zero, t4
                  lui          s9, 863110
                  sltiu        a1, s10, 589
                  addi         s5, s4, 1446
                  sltiu        a6, t6, 1864
513:              sll          a7, a4, s10
                  slli         s2, a6, 21
                  bge          sp, zero, 529f
                  bge          zero, s8, 533f
                  andi         s11, a5, 476
                  bge          a7, a7, 529f
                  xor          s5, sp, t0
                  addi         s6, t6, -766
                  slt          s1, s3, s11
                  bne          s11, a4, 535f
                  xor          s1, s2, s11
                  slt          s0, t0, t0
                  blt          s8, a6, 535f
                  lui          t6, 821757
                  ori          zero, zero, 171
                  and          sp, a1, s6
529:              bltu         s8, a5, 535f
                  sll          a1, s11, s5
                  srai         s7, s1, 5
                  sltu         a6, s8, s0
533:              beq          s5, s6, 535f
                  bge          a2, s6, 535f
535:              or           ra, s8, gp
                  nop
                  srl          s2, s9, gp
                  lw           ra, 4(a5)
                  xori         t5, s9, 501
                  addi         a5, a5, 40
                  xor          t6, a6, s10
740:              addi x1, x1, 1
740:              jalr x1, x1, 0
sub_6:            addi         a5, a5, -56
                  srai         t5, s2, 21
                  slt          s11, s0, t5
                  xor          t6, t3, sp
                  sw           ra, 4(a5)
                  auipc        gp, 62121
                  xor          a0, a3, a4
                  and          s3, t5, s5
                  andi         sp, ra, -1586
                  andi         s0, t1, -665
                  add          s5, s1, s10
                  srl          a6, a6, s3
                  la           s7, sub_9
                  slti         t1, t2, 121
                  addi         s7, s7, -688
                  sltiu        s8, t4, -55
                  or           s3, s1, a7
                  and          s4, sp, a2
sub_6_j11:        jalr         ra, s7, 688 #jump sub_6 -> sub_9
                  la           sp, region_0+884 #start riscv_load_store_rand_instr_stream_3
                  ori          t0, s3, -534
                  slli         s6, zero, 19
                  sb           t0, -37(sp)
                  sb           s6, -15(sp)
                  sb           t3, -5(sp)
                  lbu          t4, -33(sp)
                  and          t4, t3, s10
                  lb           s8, -43(sp)
                  srli         s4, a6, 3
                  addi         a6, t0, 368
                  srai         tp, s0, 10
                  andi         t6, a4, -1516
                  and          s5, s2, t2
                  slti         t1, t2, 1724
                  slt          s7, t3, t2
                  xor          a0, t6, t5
                  sll          s8, t4, a5
                  xor          s2, a2, s1
                  srli         a6, s10, 0
                  ori          s11, a3, -157
                  sub          a6, a1, a3
                  xor          t5, t6, zero
                  auipc        t5, 700316
                  lbu          tp, 11(sp)
                  lh           s3, 38(sp)
                  lbu          t5, 49(sp)
                  and          zero, s10, a3
                  srli         s5, sp, 10
                  srai         zero, s10, 11
                  sb           s4, -3(sp)
                  lw           t4, 32(sp)
                  sh           t3, -18(sp)
                  lui          a4, 20830
                  sltiu        gp, t2, -1563
                  slt          s1, t0, a1
                  auipc        s0, 604594
                  add          s6, s4, s1
                  lb           t3, 1(sp)
                  lh           s4, -64(sp)
                  lb           t2, 5(sp)
                  srli         s4, s1, 9
                  sh           a5, 62(sp) #end riscv_load_store_rand_instr_stream_3
                  la           sp, region_1+1053 #start riscv_load_store_rand_instr_stream_2
                  andi         t4, t1, -1975
                  sub          s0, a2, a3
                  lbu          t3, 44(sp)
                  sb           t6, -76(sp)
                  add          s4, t5, a0
                  lh           t1, 161(sp)
                  sw           s6, 131(sp)
                  lh           s7, 247(sp)
                  lui          a0, 237908
                  sb           s1, 169(sp)
                  sw           tp, -9(sp)
                  lui          t2, 1005496
                  lhu          a4, -15(sp)
                  lbu          tp, -162(sp)
                  lb           a6, 178(sp)
                  lb           t5, 35(sp)
                  sb           s7, 192(sp)
                  sltu         a3, a0, s2
                  srai         s3, tp, 23
                  sb           sp, 128(sp)
                  lb           s2, -164(sp)
                  sb           ra, 141(sp)
                  auipc        tp, 317321
                  sb           a4, 222(sp)
                  lb           a6, -154(sp)
                  lhu          t3, 23(sp)
                  sra          t0, s1, s10
                  xori         a1, t4, 1137
                  addi         zero, t0, -931
                  lb           s2, 174(sp)
                  lb           t1, -63(sp)
                  lb           s1, 250(sp)
                  andi         s11, ra, 1149
                  lw           t2, 31(sp)
                  slti         tp, zero, -185
                  lb           t6, 175(sp)
                  or           tp, sp, a5
                  add          s7, t6, s4
                  lbu          zero, 224(sp)
                  lui          s4, 72467
                  srl          t0, a7, a0
                  sb           s6, 253(sp) #end riscv_load_store_rand_instr_stream_2
                  la           s2, region_0+939 #start riscv_load_store_rand_instr_stream_4
                  slt          t5, t1, s11
                  sltu         s4, s5, s7
                  slli         ra, s4, 18
                  add          tp, ra, s9
                  lb           gp, -714(s2)
                  lb           a7, 434(s2)
                  sltu         a6, a1, t1
                  lb           a4, -124(s2)
                  slt          t4, gp, ra
                  lbu          s9, 914(s2)
                  slti         gp, zero, 1500
                  lbu          t4, 273(s2)
                  lbu          a6, -32(s2)
                  slli         a6, gp, 26
                  lb           s8, 1026(s2)
                  and          t0, a0, a2
                  lbu          t4, -339(s2)
                  lbu          a1, 121(s2)
                  lb           s1, 755(s2)
                  lbu          tp, -713(s2)
                  lb           t4, 593(s2)
                  auipc        t0, 1029947
                  lbu          s11, -633(s2)
                  lhu          tp, -761(s2)
                  slti         s6, s0, 783
                  slli         t4, t0, 15
                  lb           s11, -4(s2)
                  sh           a4, 335(s2)
                  sra          t0, s4, t6
                  sll          zero, a2, a7
                  xor          s6, t4, s1
                  add          t5, t3, zero
                  lbu          sp, 296(s2)
                  lb           zero, 847(s2)
                  srli         t6, s10, 10
                  sb           tp, 236(s2)
                  lui          s0, 917228
                  srl          s7, a4, s4
                  sb           t3, -106(s2)
                  sb           t6, -666(s2)
                  ori          s6, s9, -1468
                  srl          a1, s1, t1
                  lbu          s4, 350(s2)
                  lbu          s8, 694(s2)
                  or           a7, s7, t4
                  or           s3, t0, s8
                  sltiu        sp, t5, -1623
                  lbu          sp, -906(s2)
                  lb           t0, 186(s2)
                  lhu          a3, 639(s2)
                  lh           a4, -293(s2)
                  or           t3, s0, s8
                  lb           tp, 668(s2) #end riscv_load_store_rand_instr_stream_4
                  la           sp, region_1+1387 #start riscv_load_store_rand_instr_stream_1
                  sll          s2, ra, t0
                  srl          s2, a6, t4
                  xor          t6, a5, s10
                  slli         s11, t2, 12
                  srl          gp, a5, s5
                  sub          zero, s6, s8
                  xori         a7, t5, 355
                  ori          s3, a3, -52
                  lbu          s2, -8(sp)
                  lw           s0, 1(sp)
                  xor          s1, s6, s6
                  sll          s7, t4, s11
                  srai         t4, t3, 9
                  lb           t3, 16(sp)
                  lbu          s0, -14(sp)
                  slt          t2, a6, ra
                  lb           zero, 16(sp)
                  sb           s4, 1(sp)
                  sra          zero, ra, a1
                  addi         a1, a5, 1398
                  sh           s8, 1(sp)
                  slt          t0, s10, s10
                  or           a7, s9, s6
                  lui          a3, 636292
                  lbu          t5, 15(sp)
                  lbu          s6, 1(sp)
                  andi         zero, t6, -1264
                  lbu          a6, -1(sp) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_0+293 #start riscv_load_store_rand_instr_stream_0
                  xori         zero, s7, -1050
                  andi         t6, t5, 496
                  lb           ra, -40(sp)
                  lbu          s6, -4(sp)
                  slti         a7, s3, 756
                  sll          a6, a7, a7
                  lbu          s3, -42(sp)
                  lb           a6, 14(sp)
                  srai         s9, s3, 5
                  ori          t3, s3, -1391
                  addi         t3, s6, -339
                  slti         s1, s9, 195
                  addi         t5, s6, -1210
                  sb           gp, 21(sp)
                  lh           ra, 9(sp)
                  ori          a1, tp, 811
                  lb           a7, 36(sp)
                  sra          tp, t0, a7
                  lb           s5, 28(sp)
                  lbu          s9, -14(sp)
                  lb           s3, -29(sp)
                  srli         t5, s4, 6
                  lbu          s8, 36(sp)
                  slti         a4, a3, -20
                  lh           t1, -1(sp)
                  slt          zero, t4, t4
                  ori          a4, zero, -1158
                  xori         s8, t4, -377
                  lb           s8, 36(sp)
                  xor          a1, a6, s0
                  sb           t4, -11(sp)
                  lbu          t3, 54(sp)
                  lb           t6, 24(sp)
                  sb           a3, 38(sp)
                  srai         tp, a6, 7
                  add          s9, s6, a7
                  lbu          t2, -27(sp)
                  xori         t4, s11, -2012
                  andi         s1, t1, -1063
                  slti         ra, a0, 1764
                  lui          t4, 583694
                  lh           ra, -21(sp)
                  slt          s9, a5, s10
                  sltiu        a4, s2, 0
                  sb           t0, -24(sp)
                  sra          t0, s2, s9
                  sll          s5, t0, zero
                  sb           t1, 6(sp) #end riscv_load_store_rand_instr_stream_0
                  and          t5, s3, s2
                  addi         s7, s0, -1290
                  sll          s11, zero, a1
                  and          s11, s2, s0
                  andi         a6, a1, -344
                  srai         tp, s11, 10
                  bgeu         s4, sp, 12f
                  addi         a4, s10, -881
                  bltu         s5, s8, 24f
                  xor          t6, a0, s9
                  blt          s10, gp, 25f
                  or           t5, s4, s9
12:               xori         s6, t6, 588
                  srl          zero, ra, s0
                  xori         s9, s7, -334
                  srli         s11, s7, 27
                  andi         t6, s0, 708
                  auipc        s9, 881650
                  and          t6, s2, a1
                  sra          sp, t5, s11
                  and          sp, t4, a5
                  addi         t1, a7, 448
                  slt          t5, s6, a2
                  sra          s4, s11, t0
24:               beq          s11, s11, 40f
25:               auipc        t6, 404059
                  blt          s10, t3, 32f
                  addi         t1, s6, 216
                  blt          a3, a5, 39f
                  nop
                  slli         s8, a4, 12
                  srl          a4, a6, s7
32:               and          t6, s5, a7
                  andi         a6, a2, -1717
                  xor          a4, s5, s4
                  or           s7, a3, a0
                  xori         s3, s4, 1992
                  and          s9, s11, gp
                  sltiu        a3, t1, 1500
39:               addi         t6, a0, 365
40:               sltu         s7, s4, a7
                  andi         t0, t6, -1539
                  ori          gp, tp, -1495
                  sub          zero, t2, s11
                  bgeu         s3, a0, 45f
45:               nop
                  xor          t5, t5, a6
                  beq          a7, a2, 48f
48:               blt          s5, s6, 53f
                  srl          s2, a7, a4
                  auipc        s0, 118152
                  ori          s11, a7, 55
                  slli         tp, ra, 18
53:               sub          s8, s2, zero
                  bgeu         a6, gp, 66f
                  bne          a2, s6, 59f
                  bltu         t3, s4, 70f
                  slli         s11, a1, 28
                  xor          s11, t6, a3
59:               slti         s7, t6, 319
                  slt          gp, a4, a0
                  bltu         t6, a4, 76f
                  nop
                  or           tp, s2, t6
                  and          s9, sp, s8
                  bgeu         a4, s7, 69f
66:               bgeu         t1, a5, 85f
                  or           a4, s10, t0
                  nop
69:               bge          s4, s3, 74f
70:               blt          s9, s9, 90f
                  blt          a4, a4, 84f
                  sltiu        a7, gp, -1187
                  bltu         s8, t1, 89f
74:               slli         sp, gp, 27
                  addi         a4, t0, 714
76:               slli         t4, a2, 22
                  bgeu         s10, t1, 92f
                  sll          t1, a3, s1
                  lui          s5, 130280
                  slli         ra, s11, 4
                  xor          s3, s3, t0
                  srl          s3, a5, s7
                  slli         zero, s5, 25
84:               add          ra, t2, s11
85:               beq          s5, a7, 101f
                  andi         t1, s10, -1814
                  srai         s4, s4, 26
                  bne          s4, t3, 106f
89:               ori          s5, s2, -274
90:               bltu         t6, t5, 94f
                  srli         a6, s1, 2
92:               andi         a1, t0, 803
                  sltu         t4, t4, s7
94:               sltiu        s11, s6, 5
                  slli         s5, s9, 2
                  xori         t6, a6, -239
                  srli         t1, s6, 17
                  xori         s11, s3, 941
                  and          s0, s0, zero
                  srli         s0, s6, 3
101:              andi         s1, ra, -581
                  lui          a0, 632288
                  bltu         a2, a0, 123f
                  auipc        t0, 328553
                  bgeu         s10, a1, 116f
106:              lui          t2, 491684
                  and          ra, sp, gp
                  or           s9, s7, s2
                  addi         t1, sp, 1089
                  bge          a3, t0, 115f
                  srli         a6, s9, 9
                  bgeu         a6, s4, 122f
                  addi         a6, s7, 777
                  bne          a7, s11, 131f
115:              xor          s6, s10, s5
116:              sltu         t4, s10, t3
                  srl          s6, t3, a0
                  or           tp, s4, a5
                  and          s6, t5, a3
                  bne          a1, a4, 135f
                  slti         s4, zero, 1684
122:              add          t0, t4, zero
123:              auipc        a6, 95192
                  sltiu        t2, s7, 1736
                  xori         s1, s7, -508
                  srai         a0, s8, 8
                  sltiu        s5, s9, -1887
                  slli         s0, s1, 0
                  sltu         a0, a2, a2
                  blt          a6, t3, 146f
131:              sltiu        t0, t1, 333
                  sltiu        s9, s9, -1321
                  srli         a1, a4, 4
                  or           s11, a7, t6
135:              ori          t3, zero, 1229
                  beq          s0, t3, 151f
                  addi         t6, s7, 928
                  sub          s11, a7, t1
                  or           s7, s8, t3
                  sltiu        s1, s5, 1914
                  nop
                  sll          gp, a4, t0
                  add          s0, s6, a4
                  bne          ra, s7, 158f
                  nop
146:              addi         a4, t2, 918
                  add          t2, s10, a4
                  or           tp, s7, gp
                  sltiu        a3, a2, -1899
                  sub          tp, sp, tp
151:              sltiu        zero, t0, -621
                  blt          t0, s3, 158f
                  bge          t3, a1, 169f
                  auipc        a4, 103340
                  sra          tp, s5, a2
                  slli         a1, s7, 12
                  slt          s5, s6, s8
158:              bgeu         a5, s3, 164f
                  bne          s10, s10, 163f
                  srli         s3, s11, 31
                  or           s9, t2, s11
                  slli         a3, t2, 27
163:              sltiu        ra, t6, -521
164:              blt          t6, t1, 184f
                  xori         s8, s10, 24
                  srl          s6, a1, a4
                  and          s3, s7, s5
                  srl          s7, s9, a4
169:              and          s8, s6, s3
                  slti         s11, a0, 1924
                  lui          zero, 723308
                  ori          t1, s1, 1640
                  sltiu        zero, a4, 1570
                  srai         t4, a3, 3
                  srli         s2, t2, 2
                  srl          a1, s1, t3
                  xor          s8, t1, zero
                  slli         t5, a7, 19
                  bltu         s4, s1, sub_6_j10 #branch to jump instr
                  xor          t2, t0, t4
sub_6_j10:        jal          ra, sub_10 #jump sub_6 -> sub_10
                  srl          t2, s3, a6
                  sltiu        s1, a7, 2041
                  bne          t5, s4, 188f
                  lui          ra, 855650
                  bge          s6, sp, 175f
175:              sll          a0, a1, a5
                  sltiu        zero, sp, 1456
                  addi         t3, s11, -960
                  slli         ra, t2, 26
                  bge          s9, a3, 189f
                  sltu         t4, s5, sp
                  srai         a3, zero, 13
                  slli         s11, a1, 28
                  bltu         gp, a5, 195f
184:              or           a4, t1, tp
                  sltu         s1, a5, s2
                  sll          a1, a3, a1
                  srai         t0, ra, 28
188:              blt          t6, s11, 203f
189:              blt          ra, a7, 200f
                  bne          s3, s3, 206f
                  srai         zero, t3, 1
                  ori          zero, a4, 1163
                  srl          t6, a3, a4
                  srai         s6, gp, 29
195:              sub          s7, a6, s3
                  auipc        t5, 530800
                  slli         t5, t6, 0
                  srai         sp, s10, 24
                  bge          s1, s4, 210f
200:              or           a6, s1, t6
                  bge          s8, s10, 206f
                  and          t2, s1, s9
203:              slt          t1, a4, s5
                  andi         ra, a4, -688
                  bgeu         s4, sp, 206f
206:              slt          s7, t1, a4
                  sll          s0, a4, a7
                  andi         gp, t1, 1537
                  slli         t3, gp, 29
210:              lui          a0, 125593
                  addi         a0, t5, 661
                  slt          s6, s9, sp
                  srai         s5, s8, 22
                  srai         s4, tp, 7
                  ori          s11, sp, -929
                  sub          s9, a2, a2
                  and          gp, s5, a2
                  nop
                  sltiu        s9, s2, -781
                  addi         s5, sp, 1371
                  nop
                  slti         a3, s4, -1172
                  sltu         t6, s9, a0
                  auipc        s9, 340478
                  srli         ra, gp, 24
                  nop
                  sltu         s11, tp, a7
                  sll          tp, s1, t4
                  sltiu        ra, a5, -175
                  or           s0, a0, zero
                  addi         s6, s10, 495
                  addi         s0, t6, -76
                  slli         s11, t5, 25
                  bne          s10, zero, 253f
                  slli         t5, gp, 29
                  xor          t1, ra, t2
                  srli         a0, a4, 16
                  blt          s7, sp, 256f
                  sra          a4, a2, a4
                  beq          a6, t6, 245f
                  sltu         a1, s4, t0
                  blt          a3, t4, 259f
                  slli         t6, zero, 28
                  blt          t2, sp, 260f
245:              sub          s2, t3, s6
                  ori          s9, s9, -1791
                  bge          s3, a7, 251f
                  beq          t3, zero, 253f
                  srai         tp, t3, 6
                  bltu         s0, t2, 266f
251:              beq          ra, gp, 271f
                  sub          s6, ra, a5
253:              sltiu        a4, s11, -162
                  lui          a0, 533803
                  slli         s9, s9, 8
256:              sub          a1, s0, a1
                  andi         a4, a3, 1333
                  ori          a1, a7, 5
259:              srl          t5, a1, ra
260:              slti         s11, t6, -145
                  sltiu        t0, a0, 982
                  xor          a1, ra, a5
                  srl          a0, t2, t5
                  sub          s5, t6, s3
                  slli         t4, a6, 1
266:              sltiu        tp, a1, 460
                  bne          s9, s11, 271f
                  auipc        a0, 242646
                  and          a6, t6, t3
                  lui          a7, 945156
271:              blt          a7, a3, 284f
                  sltu         sp, s4, tp
                  andi         s1, gp, -1703
                  sltiu        t4, t2, -1789
                  xori         a0, a4, -723
                  or           tp, t5, t3
                  xor          gp, a4, s4
                  beq          t4, a5, 293f
                  slli         t0, ra, 3
                  blt          s4, a0, 295f
                  sub          s11, a1, s7
                  bge          s11, t4, 286f
                  andi         t0, a1, -949
284:              srli         s4, t3, 6
                  sltiu        s11, a2, 2036
286:              sub          s7, tp, s6
                  bge          sp, s3, 306f
                  sltiu        t2, s0, 334
                  xor          s11, a0, t2
                  add          s0, t0, s5
                  sltu         t3, a4, s2
                  slli         t6, s2, 7
293:              srl          gp, s3, zero
                  srai         a3, a0, 0
295:              xor          s8, s3, s6
                  sub          t3, a5, ra
                  srai         a7, a1, 1
                  lui          s0, 757488
                  xori         s3, s0, 573
                  slli         s6, s0, 12
                  slti         t5, t0, -1824
                  addi         s7, s3, 1847
                  xori         s6, s5, -602
                  addi         tp, s10, -999
                  sra          t2, a0, s6
306:              srli         t3, t5, 2
                  andi         s0, s9, -1186
                  beq          t6, a6, 325f
                  auipc        t2, 794071
                  sll          s5, sp, s4
                  slt          a6, s9, s7
                  srl          s11, s7, s11
                  srli         s11, a0, 16
                  xor          a0, a4, s4
                  andi         t4, a0, 452
                  slti         gp, t3, -1777
                  sltiu        a0, s6, -637
                  beq          s4, t1, 323f
                  sltu         a1, s3, a1
                  or           ra, t3, s5
                  or           sp, a5, sp
                  sltu         t5, t6, tp
323:              and          s2, t4, a6
                  bge          t2, s11, 335f
325:              sra          gp, t0, t2
                  addi         t4, sp, -1717
                  add          s2, s2, s11
                  lui          t5, 937635
                  and          t3, s2, s4
                  auipc        sp, 410642
                  ori          a4, t4, -159
                  and          a6, a6, s4
                  and          gp, t6, s5
                  ori          t1, a3, -2011
335:              bne          s2, a5, 351f
                  srl          t1, ra, a7
                  slli         s5, a0, 26
                  bge          s7, t0, 353f
                  sll          s8, zero, s8
                  sra          a6, a2, gp
                  or           a4, t1, s10
                  slli         t4, a7, 0
                  xor          gp, t6, s10
                  or           s1, s1, a0
                  slli         t3, t1, 5
                  nop
                  xor          sp, a4, t2
                  slli         t1, t1, 11
                  slli         s3, t0, 19
                  srai         t5, zero, 18
351:              nop
                  ori          a4, s11, 682
353:              sra          s8, tp, s7
                  slti         t4, s11, 1285
                  beq          a1, s6, 361f
                  add          t0, t6, s0
                  bgeu         a0, a3, 367f
                  srli         sp, s0, 19
                  xor          t0, a2, a4
                  beq          zero, t5, 380f
361:              sll          tp, s5, zero
                  auipc        t5, 860661
                  bltu         s11, s3, 379f
                  lui          t5, 165029
                  slti         a4, t5, 725
                  blt          s11, tp, 379f
367:              bltu         t5, t5, 378f
                  srl          s1, s7, s3
                  slli         a1, s6, 0
                  slti         s3, t3, 1552
                  nop
                  xor          s9, a4, a2
                  xor          t5, t5, s5
                  xori         zero, s8, -757
                  addi         t3, s0, 1807
                  sltiu        sp, s0, 445
                  add          s2, a5, s4
378:              and          ra, t5, a2
379:              slt          t4, s8, sp
380:              slli         t0, a7, 1
                  bgeu         s3, s7, 395f
                  lui          s9, 291773
                  blt          t2, a2, 389f
                  bge          a4, s7, 404f
                  slt          t2, a4, a0
                  or           t0, s9, s7
                  srl          t2, sp, a5
                  xori         a0, tp, -635
389:              and          t4, t2, a1
                  xor          t2, a0, a3
                  slt          s0, s1, t0
                  sltiu        a4, a4, 1711
                  or           a3, s4, s7
                  ori          s4, a5, 343
395:              sltu         a7, s6, s11
                  xor          gp, s8, a5
                  bgeu         t0, s4, 413f
                  srl          t0, s8, sp
                  andi         t0, t3, 2002
                  xor          t6, t5, s7
                  add          a7, s6, s8
                  sltu         s9, t4, a5
                  srai         s1, t0, 7
404:              srai         s6, t6, 8
                  slt          t0, s3, s10
                  srai         s11, s9, 23
                  and          a6, s5, t4
                  andi         gp, s7, -912
                  bne          t0, s1, 414f
                  xori         t1, gp, 1042
                  sltiu        s7, a5, -1662
                  ori          gp, s7, -1442
413:              bge          sp, s11, 428f
414:              bne          a7, a4, 419f
                  beq          t5, s0, 419f
                  bgeu         t4, sp, 431f
                  beq          s6, s2, 432f
                  srai         t4, s11, 12
419:              and          a0, ra, tp
                  slli         ra, s9, 7
                  auipc        a6, 371785
                  sltiu        t5, s4, -1210
                  sra          gp, s3, t6
                  bltu         t3, a6, 428f
                  sra          zero, a3, sp
                  xori         t1, t6, -857
                  sltu         a4, t0, s5
428:              and          s7, s6, ra
                  sub          t6, t2, a4
                  add          s7, s8, a3
431:              sll          ra, t4, s2
432:              or           s9, s4, ra
                  blt          a2, s7, 445f
                  slt          s5, s9, ra
                  sltu         t5, a7, s5
                  nop
                  srl          a7, t3, s9
                  bge          a3, tp, 454f
                  srai         s8, a3, 24
                  bgeu         a4, s0, 458f
                  sub          a0, a2, a0
                  lui          s4, 596680
                  bne          a3, t4, 459f
                  sra          a4, t0, sp
445:              srl          s5, s2, a1
                  bge          s5, s6, 447f
447:              bne          tp, tp, 448f
448:              sltu         s0, a3, a7
                  slt          t2, a4, s2
                  sltu         t2, a4, s3
                  bne          s11, a0, 456f
                  or           a3, gp, s8
                  sll          zero, gp, s5
454:              bne          s3, s8, 467f
                  lui          s9, 141668
456:              bltu         s3, s2, 466f
                  bltu         a4, a0, 463f
458:              sra          s6, ra, gp
459:              sltiu        gp, t4, -1305
                  bge          gp, t5, 476f
                  slt          t4, s4, s1
                  xori         t4, s0, 95
463:              beq          t3, a7, 474f
                  addi         tp, t3, -1362
                  xor          s9, a4, a3
466:              sltu         t1, zero, a5
467:              add          s2, s11, zero
                  addi         t5, t5, -80
                  srli         ra, a3, 23
                  addi         s2, s11, 1399
                  and          gp, a7, t4
                  andi         t1, s6, 1555
                  bgeu         s0, t5, 488f
474:              srli         t6, s4, 1
                  slt          s11, s9, zero
476:              lui          a6, 341234
                  andi         s8, s10, 1877
                  srli         t6, t2, 8
                  bltu         s11, t2, 483f
                  ori          gp, t1, 148
                  or           a1, a3, t5
                  add          s6, s8, s11
483:              sltu         t5, s11, zero
                  sltiu        s11, a6, 412
                  ori          a0, a4, -881
                  bge          a7, t3, 497f
                  sra          s8, a0, s3
488:              srai         t4, a0, 1
                  blt          sp, a5, 505f
                  sltu         s4, gp, a3
                  xor          zero, a1, s4
                  srli         t3, s1, 30
                  blt          t6, ra, 513f
                  sltiu        s1, a0, 82
                  slt          s1, gp, s10
                  beq          t6, s5, 500f
497:              slt          s3, s7, a5
                  add          tp, s11, t5
                  sra          t4, gp, a1
500:              sltiu        s7, s9, 323
                  sub          s5, s9, s11
                  blt          a4, s6, 518f
                  slti         s2, ra, -1431
                  andi         gp, s7, -405
505:              srai         s3, gp, 4
                  sll          s3, t6, s2
                  sll          a0, a0, s1
                  sub          t0, t1, ra
                  ori          s2, a4, 1307
                  srli         s5, a1, 12
                  add          t4, s7, s8
                  ori          s9, t0, 740
513:              bgeu         gp, ra, 533f
                  slt          a7, t2, gp
                  bgeu         ra, a4, 534f
                  beq          a4, s4, 520f
                  addi         a0, t2, 706
518:              sll          s2, a0, a1
                  sub          s0, s1, a0
520:              srai         gp, gp, 21
                  sltiu        t6, s7, -1903
                  sra          s3, ra, t0
                  auipc        s6, 1003346
                  srl          t5, gp, t3
                  blt          t4, t2, 537f
                  bltu         a6, a0, 544f
                  sltu         a1, t1, t6
                  auipc        s6, 770058
                  addi         zero, a7, 460
                  andi         s3, t5, 98
                  sltiu        zero, a2, 423
                  bltu         s8, s10, 548f
533:              srl          s4, tp, t0
534:              sll          s7, s7, s4
                  slti         s1, sp, -1652
                  sltu         t0, zero, t1
537:              or           sp, t1, a5
                  beq          s4, s11, 554f
                  addi         s1, zero, 780
                  sra          sp, t5, t6
                  lui          a6, 346517
                  sltu         t5, t6, s11
                  sltu         sp, t0, t6
544:              blt          a2, a0, 561f
                  addi         s6, s5, 806
                  xori         a6, s8, -837
                  slt          s5, a2, zero
548:              andi         t4, s7, -361
                  add          t3, s3, a2
                  addi         t1, s11, -470
                  srli         t0, a6, 8
                  or           a4, ra, ra
                  bge          t2, s8, 568f
554:              xor          zero, t5, s11
                  auipc        s6, 202306
                  addi         sp, s0, -66
                  andi         t5, s1, 1898
                  sltiu        t6, sp, 1933
                  xor          a1, s3, s3
                  addi         a4, s3, -40
561:              ori          s3, s3, 141
                  ori          t5, a1, -1667
                  add          s9, s0, sp
                  slti         a4, s11, -1287
                  bne          a2, zero, 580f
                  nop
                  bltu         a0, s3, 572f
568:              xor          t0, t1, sp
                  bgeu         a7, a1, 570f
570:              slti         a1, a1, 1204
                  slli         tp, t0, 28
572:              sll          t2, a4, a2
                  ori          a6, a5, -284
                  bgeu         t6, t5, 580f
                  add          t1, t0, sp
                  auipc        s2, 522280
                  add          s5, a1, a4
                  sll          tp, a0, a0
                  blt          t1, tp, 593f
580:              auipc        s9, 302807
                  slli         t4, s0, 3
                  beq          t0, a3, 587f
                  andi         t4, zero, 1080
                  blt          t1, zero, 599f
                  and          s9, a6, a6
                  add          s3, s3, a3
587:              ori          ra, a0, 1811
                  bltu         s1, zero, 589f
589:              sub          zero, a2, gp
                  xor          tp, s10, a7
                  xori         t6, s2, -1529
                  srl          a4, s11, t0
593:              bgeu         a0, a3, 599f
                  beq          t4, a5, 604f
                  slt          s2, a5, s7
                  sll          s8, a4, ra
                  or           a1, gp, a6
                  bne          s3, s11, 610f
599:              add          t6, a2, sp
                  srai         s1, t2, 17
                  slt          a7, a0, t4
                  xor          ra, t4, s1
                  srai         t3, a2, 12
604:              nop
                  or           s0, sp, a6
                  sltiu        s0, ra, -702
                  srl          t0, a0, s3
                  ori          a0, t6, -990
                  srli         a7, s6, 9
610:              slli         a0, s2, 23
                  slti         s6, tp, -1573
                  lui          s1, 98572
                  beq          ra, a0, 628f
                  nop
                  andi         zero, s10, 514
                  bne          sp, tp, 632f
                  lui          sp, 22150
                  or           zero, zero, a1
                  blt          s3, s0, 625f
                  ori          s11, s2, -1354
                  srai         s9, a6, 19
                  sltu         s11, a3, s6
                  bgeu         t4, s5, 638f
                  slli         a6, sp, 4
625:              and          t3, t1, t5
                  bltu         a0, a6, 627f
627:              slt          s6, s3, s9
628:              sll          t3, a7, a1
                  srl          gp, s2, s11
                  sltiu        s11, a7, 689
                  xori         t6, s4, 1440
632:              srai         s5, a2, 26
                  slt          zero, sp, s10
                  slti         sp, a3, 1459
                  slt          t1, a7, t4
                  add          a0, s10, s2
                  xor          t3, a0, s3
638:              srli         s9, s8, 18
                  bne          t2, s5, 655f
                  xor          t6, gp, t2
                  add          a4, a1, zero
                  sra          a3, s2, s11
                  slli         s9, a6, 3
                  bltu         s2, s2, 649f
                  xor          s4, t1, a4
                  addi         a1, t4, -1094
                  blt          s2, a0, 648f
648:              ori          t3, s10, 1037
649:              sltu         t1, t5, a0
                  bltu         a1, t3, 661f
                  sra          t0, t1, gp
                  sltu         a4, t6, s3
                  beq          a4, t6, 657f
                  bltu         gp, t1, 669f
655:              sll          s1, t0, s6
                  sltu         s4, a2, a6
657:              beq          a5, a0, 670f
                  srai         ra, a2, 5
                  lui          a6, 513178
                  or           s2, s5, zero
661:              slli         s1, t6, 25
                  bgeu         a3, sp, 682f
                  srai         s0, tp, 28
                  bltu         s4, s1, 680f
                  andi         a4, zero, -447
                  nop
                  addi         s2, t0, -1934
                  auipc        a1, 818077
669:              srli         a6, t2, 24
670:              srli         s9, s6, 5
                  beq          a5, s7, 676f
                  bne          a2, sp, 689f
                  sltu         s11, t1, t3
                  ori          a6, a1, 1212
                  srli         a4, s4, 4
676:              nop
                  bgeu         a4, t2, 682f
                  ori          gp, s10, 1452
                  addi         a7, a5, 1886
680:              srai         s1, t4, 26
                  srli         s1, a7, 9
682:              nop
                  sltiu        s7, t3, -90
                  slt          s6, s3, t0
                  srl          a1, ra, s11
                  sltu         tp, a4, s8
                  srl          a3, ra, s6
                  sltu         s6, ra, t6
689:              bgeu         ra, a0, 705f
                  srl          s1, t5, s10
                  blt          ra, t5, 710f
                  sub          t1, s11, a5
                  slli         a3, s3, 20
                  ori          a3, a1, -1683
                  blt          sp, a3, 711f
                  sll          gp, t5, gp
                  add          tp, s5, s6
                  sub          a4, a5, s3
                  lui          a4, 239358
                  or           a0, a3, a3
                  srai         s9, ra, 21
                  srai         s5, t0, 24
                  and          t2, tp, a1
                  bge          t0, s9, 719f
705:              ori          s2, t3, 836
                  xori         t1, a4, 2047
                  sltu         s3, a3, t2
                  sub          s1, tp, tp
                  srl          sp, s0, s1
710:              and          t1, ra, a6
711:              sll          s5, tp, t6
                  slt          zero, s2, a2
                  srli         s0, a4, 30
                  srai         t1, zero, 22
                  nop
                  bgeu         s1, s4, 726f
                  slt          s4, a0, s0
                  sub          t6, t1, a0
719:              bltu         s3, zero, 723f
                  bltu         s2, s11, 726f
                  xori         tp, s4, 191
                  add          t1, a2, a3
723:              sub          s7, a0, zero
                  srl          t3, t5, s2
                  xori         zero, t3, 274
726:              slli         t5, t0, 29
                  xor          t3, t4, a5
                  srai         a1, a7, 5
                  lw           ra, 4(a5)
                  slti         t5, ra, 250
                  addi         a5, a5, 56
                  auipc        a3, 1009919
                  slt          a6, ra, tp
983:              addi x14, x1, 0
983:              jalr x14, x14, 0
sub_7:            sra          s1, t3, zero
                  addi         zero, ra, 1093
                  auipc        t6, 246906
                  sra          s6, s1, sp
                  sltiu        a3, t6, 1863
                  sll          t3, t5, a1
                  addi         a5, a5, -40
                  sltu         s9, s1, sp
                  sw           ra, 4(a5)
                  auipc        t0, 194061
                  srai         tp, a7, 5
                  slt          t3, gp, s2
                  addi         tp, a7, -710
                  sll          s4, a3, a4
                  add          a1, s1, a0
                  sltiu        t2, a6, 2021
                  sra          s2, tp, s8
sub_7_j12:        jal          ra, sub_8 #jump sub_7 -> sub_8
                  la           sp, region_1+434 #start riscv_load_store_rand_instr_stream_0
                  sw           s6, -6(sp)
                  sh           t5, -6(sp)
                  slli         a0, s5, 15
                  slti         t3, s2, -888
                  sltu         s2, a2, t2
                  sra          s0, s10, t5
                  lbu          s3, 7(sp)
                  sb           gp, -10(sp)
                  xor          a0, s5, t2
                  add          t6, t4, t0
                  sb           tp, -7(sp)
                  lbu          s2, -9(sp)
                  ori          zero, s4, 670
                  ori          s2, a0, -1039
                  sltu         t0, a3, a2
                  sb           s9, -1(sp)
                  lui          s3, 978141
                  addi         s3, t1, -1990
                  lbu          t2, 3(sp)
                  lhu          t6, 0(sp)
                  srai         t4, s9, 23
                  lb           s0, 13(sp)
                  xor          s8, t4, a6
                  add          s0, a6, s7
                  lb           a6, 11(sp)
                  lui          s1, 204293
                  xori         tp, a7, 83
                  sra          gp, t4, s5
                  and          a7, t3, s10
                  sb           t3, 11(sp)
                  sra          a1, s2, t6
                  lhu          t6, -8(sp)
                  auipc        s8, 839100
                  sll          s11, s10, a3
                  lbu          a3, -3(sp)
                  xor          s3, a3, tp
                  sb           a1, -9(sp)
                  lbu          a7, 3(sp) #end riscv_load_store_rand_instr_stream_0
                  slli         t5, t0, 16
                  srl          s11, sp, s4
                  add          s4, a0, s1
                  and          s5, s1, ra
                  sltiu        zero, s7, -1941
                  blt          a0, t1, 24f
                  auipc        a7, 251472
                  bne          s6, t5, 15f
                  auipc        t0, 720593
                  bne          a2, s1, 11f
                  xori         t6, ra, -2025
11:               sltiu        a6, ra, 1056
                  blt          t4, zero, 30f
                  ori          s7, s9, 981
                  xori         s7, sp, -1704
15:               xor          t6, s5, s9
                  sll          sp, s2, t6
                  slti         tp, t3, 749
                  blt          s2, a7, 26f
                  beq          a4, a4, 32f
                  lui          a4, 598323
                  lui          t3, 444509
                  xor          t3, t5, s10
                  add          t1, ra, s8
24:               bge          t4, s0, 36f
                  sub          a6, t1, a3
26:               nop
                  lui          gp, 620171
                  slli         t3, s1, 10
                  bne          t6, s9, 41f
30:               blt          s8, gp, 37f
                  sll          t3, t5, a7
32:               and          a6, a3, a5
                  lui          a0, 64006
                  xori         zero, t2, -640
                  addi         s11, s10, 1338
36:               nop
37:               sll          s2, t0, s9
                  addi         a6, s10, -735
                  auipc        t0, 916481
                  sub          a7, s2, a0
41:               addi         s2, sp, 2002
                  nop
                  andi         t5, s9, -2031
                  sltu         gp, t1, t5
                  srl          s11, a5, s7
                  sltu         t6, s4, t5
                  sltu         a7, a0, a3
                  ori          s8, s8, 1556
                  bltu         s0, s11, 69f
                  slti         s1, a6, 283
                  slti         sp, s2, 2043
                  beq          gp, t1, 54f
                  ori          a6, gp, -937
54:               slli         t6, s6, 6
                  sll          t4, s11, s1
                  bgeu         a5, s2, 59f
                  srai         a3, s2, 30
                  or           t0, s5, a4
59:               beq          a7, zero, 72f
                  bge          s10, s6, 68f
                  slt          a3, sp, s5
                  and          s3, ra, s8
                  srl          s5, zero, gp
                  sra          ra, a2, a3
                  blt          t1, s3, 74f
                  lui          s9, 1028780
                  sll          s6, t1, s4
68:               and          s1, s5, ra
69:               slti         a7, s4, -1817
                  and          a4, sp, gp
                  sltiu        s11, zero, -646
72:               sll          t1, t4, s1
                  bge          t0, a0, 78f
74:               ori          s3, t5, 106
                  bge          t0, sp, 78f
                  sub          a0, a6, zero
                  slt          gp, s11, s11
78:               srai         s8, t3, 18
                  srai         s4, s8, 24
                  xori         t4, a1, 1603
                  ori          tp, s4, 859
                  nop
                  auipc        s2, 438585
                  add          s0, a1, t2
                  lui          a4, 1024420
                  lui          a0, 1034483
                  add          s8, s9, t2
                  slt          a7, t0, t4
                  or           zero, s5, ra
                  and          t2, a2, a7
                  xori         ra, ra, 587
                  nop
                  or           a1, s4, zero
                  srli         zero, s1, 19
                  slt          t6, t5, t5
                  bltu         s2, s9, 114f
                  and          sp, s4, a2
                  srai         ra, a0, 3
                  sltu         a1, s11, a6
                  sub          t3, t1, a1
                  srli         t1, s8, 21
                  xori         s1, t2, -1383
                  and          a6, gp, a2
                  srli         t3, t2, 14
                  xori         ra, gp, 554
                  andi         a3, a1, -1558
                  andi         sp, sp, -1399
                  auipc        s6, 141354
                  nop
                  lui          a1, 246207
                  blt          a2, t6, 125f
                  bge          t6, a2, 115f
                  sll          s7, tp, a5
114:              bltu         s7, t3, 123f
115:              andi         t2, ra, -1038
                  andi         a4, a2, -809
                  sra          s1, s11, t1
                  srli         ra, sp, 15
                  bge          a4, a4, 125f
                  ori          gp, a0, -674
                  beq          t0, a3, 125f
                  xor          s7, t2, s6
123:              slti         t6, sp, 533
                  slt          t1, s2, a4
125:              slti         s5, ra, -406
                  sra          a3, ra, a0
                  lw           ra, 4(a5)
                  srl          t6, a1, s8
                  addi         a5, a5, 40
                  xori         t0, s5, -1782
188:              addi x30, x1, 1
188:              jalr x30, x30, 0
sub_3:            bge          s10, a2, sub_3_stack_p
                  slti         s8, a3, -405
sub_3_stack_p:    addi         a5, a5, -16
                  and          t5, s10, a0
                  sw           ra, 4(a5)
                  srli         s2, s5, 29
                  srai         s5, s0, 27
                  la           s4, region_1+351 #start riscv_load_store_rand_instr_stream_2
                  lb           t6, -74(s4)
                  sh           t1, -191(s4)
                  lb           ra, 170(s4)
                  andi         tp, s8, 482
                  ori          tp, s8, 541
                  lb           s5, -24(s4)
                  auipc        zero, 82300
                  lb           s6, -45(s4)
                  lb           s5, -62(s4)
                  lbu          s5, -91(s4)
                  lbu          sp, -28(s4)
                  sub          s0, s7, zero
                  lhu          s5, 173(s4)
                  sb           s1, -80(s4)
                  sb           a3, -249(s4)
                  sltiu        t3, a2, 327
                  sb           s3, -63(s4)
                  lb           s5, 116(s4)
                  ori          t5, s8, -529
                  sb           gp, 165(s4)
                  add          a0, t2, t1
                  lb           t5, 100(s4)
                  sb           s3, -62(s4)
                  sb           s0, 84(s4)
                  auipc        s11, 717147
                  lbu          a3, 84(s4)
                  lw           t0, 181(s4)
                  lbu          a3, -244(s4)
                  and          t3, s5, t1
                  sb           s10, -150(s4)
                  sb           a3, -132(s4)
                  sb           s0, 214(s4)
                  lh           s6, 81(s4)
                  xori         a7, t5, -48
                  lbu          t0, -72(s4) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_1+1603 #start riscv_load_store_rand_instr_stream_1
                  sb           gp, -267(sp)
                  lh           a0, 371(sp)
                  slti         s9, s8, 1991
                  add          s6, t6, s2
                  sb           a4, -1058(sp)
                  xor          a7, sp, s7
                  slli         a4, t5, 29
                  lbu          s7, -1512(sp)
                  auipc        s5, 183284
                  slli         t0, s8, 1
                  lh           t2, -333(sp)
                  ori          s7, a1, 1356
                  sra          s11, s8, s3
                  or           gp, s1, s1
                  sb           ra, -1482(sp)
                  auipc        t6, 762985
                  sh           s2, -1273(sp)
                  lhu          t6, 395(sp)
                  sra          t3, a3, s7
                  nop
                  lbu          t1, -1048(sp)
                  srli         s3, t6, 15
                  sll          s3, ra, t2
                  sb           zero, -856(sp)
                  lh           t1, -1167(sp)
                  andi         t6, a1, 751
                  nop
                  sub          a0, a6, t6
                  sw           s6, 389(sp)
                  slt          tp, s8, s3
                  lb           t2, -1354(sp)
                  ori          ra, tp, 941
                  sb           a0, -1392(sp)
                  sll          t5, a4, s6
                  sb           a4, 394(sp)
                  srai         a3, t3, 10
                  addi         s1, t0, 346
                  sltiu        t2, t0, 1435
                  lb           gp, -1130(sp)
                  lb           t4, -71(sp)
                  lhu          a6, -1529(sp)
                  lbu          a0, -850(sp)
                  lbu          a1, -1600(sp)
                  slt          a6, s2, a5
                  nop
                  lbu          s2, -1594(sp)
                  srai         s8, sp, 23
                  lbu          gp, -1564(sp)
                  sb           a6, -346(sp)
                  lb           zero, -450(sp)
                  sb           s6, -184(sp)
                  sll          t5, t5, a2
                  sb           s11, -644(sp)
                  lhu          a4, -749(sp)
                  sb           sp, -353(sp)
                  ori          a6, a6, 718
                  sb           a2, -762(sp)
                  lw           s8, -711(sp) #end riscv_load_store_rand_instr_stream_1
                  la           a1, region_0+545 #start riscv_load_store_rand_instr_stream_0
                  srli         a0, s0, 14
                  ori          t2, s4, 965
                  and          t2, t0, t0
                  sra          t3, a3, ra
                  xori         a3, t4, -1679
                  lui          s2, 173103
                  sb           s8, -135(a1)
                  sw           s7, -177(a1)
                  sh           s2, -11(a1)
                  auipc        s8, 207336
                  and          t3, s8, s2
                  lhu          t6, 43(a1)
                  slt          a4, s11, t5
                  nop
                  lb           a0, 206(a1)
                  lb           s0, -72(a1)
                  sb           s4, 201(a1)
                  sb           a3, -172(a1)
                  sb           t1, -80(a1)
                  lh           t3, -219(a1)
                  lbu          t4, 122(a1)
                  lh           gp, -17(a1)
                  sltiu        t3, t5, -1786
                  auipc        tp, 641447
                  lbu          t3, 221(a1)
                  add          s5, s11, a0
                  sh           s0, 63(a1)
                  lb           a7, 169(a1)
                  addi         t0, zero, 1966
                  slti         a3, a2, -808
                  sb           s0, 77(a1)
                  lh           a0, -103(a1)
                  nop
                  sll          s7, t5, a1
                  sb           s3, -10(a1)
                  srl          t0, t0, s4
                  slti         tp, a2, 1195
                  lb           a6, 45(a1)
                  srli         zero, t4, 11
                  ori          zero, s10, -334
                  sb           gp, -198(a1) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_1+1920 #start riscv_load_store_rand_instr_stream_3
                  slt          s7, a6, a7
                  lb           t4, 45(sp)
                  sb           t4, -61(sp)
                  nop
                  srli         t3, s6, 1
                  add          gp, a1, gp
                  lb           a4, -51(sp)
                  lb           s6, 55(sp)
                  slli         t6, ra, 30
                  sb           s5, 18(sp)
                  and          a6, a1, s11
                  lw           a6, -56(sp)
                  lhu          t4, -12(sp)
                  lbu          s7, 45(sp)
                  slli         a1, gp, 29
                  auipc        s8, 932308
                  xor          s6, t5, s9
                  lb           s1, -7(sp)
                  lh           s8, -10(sp)
                  nop
                  ori          tp, s0, 1940
                  lbu          a1, -15(sp)
                  sb           s11, 27(sp)
                  slti         a3, a0, -1324
                  lb           s7, 37(sp)
                  auipc        s6, 340606
                  srli         s6, a6, 5
                  srai         ra, s10, 14
                  srl          s0, a6, t2
                  sb           s11, 1(sp)
                  lb           s2, -6(sp)
                  and          s5, a2, s10
                  lbu          t0, -57(sp)
                  andi         t5, t6, -611
                  lw           a7, -8(sp)
                  lhu          zero, -26(sp)
                  andi         t5, t4, 1985
                  slli         a4, tp, 26
                  lhu          a3, 40(sp)
                  sb           a4, 12(sp)
                  andi         a3, a0, 1318
                  sltiu        tp, s11, -1940
                  lb           t4, 11(sp)
                  lui          gp, 333193
                  lbu          a4, -30(sp)
                  lb           t5, -39(sp)
                  sb           s2, -41(sp)
                  sb           s10, 47(sp)
                  lhu          zero, 58(sp)
                  lb           t2, -49(sp)
                  sltu         a7, t4, s1
                  slt          s8, s3, t5
                  sub          ra, a3, s10
                  lbu          s4, -43(sp) #end riscv_load_store_rand_instr_stream_3
                  nop
                  add          t0, gp, s7
                  bltu         t6, zero, 7f
                  or           t0, ra, s4
                  bne          a2, t5, 12f
                  sll          s6, s6, t4
                  lui          tp, 25572
7:                xori         s5, a0, 1619
                  or           s9, s10, s8
                  slt          a7, s11, t6
                  xori         t6, t1, -1495
                  ori          s6, t1, -1657
12:               xori         s0, t2, -267
                  auipc        t0, 74715
                  srli         zero, t4, 9
                  xor          tp, a0, s4
                  and          t2, s1, a5
                  bgeu         s10, t0, 20f
                  bgeu         s11, a7, 27f
                  lui          a1, 1033214
20:               blt          a1, t6, 34f
                  nop
                  beq          t2, s7, 31f
                  slti         a4, s5, 1962
                  xor          s11, gp, t1
                  sll          s0, s5, t6
                  srli         t4, sp, 0
27:               add          s4, t2, s5
                  sltu         a4, s9, s11
                  sub          a7, a0, gp
                  bgeu         t6, s5, 41f
31:               beq          ra, a2, 32f
32:               sra          s5, a6, a3
                  slt          s8, zero, a3
34:               sub          t3, gp, sp
                  bne          t4, s8, 50f
                  sll          s5, s5, s4
                  auipc        t4, 349789
                  bgeu         a7, s6, 48f
                  xori         s0, gp, -858
                  srai         t3, tp, 31
41:               blt          zero, s7, 55f
                  beq          a5, s5, 49f
                  srli         t2, s5, 18
                  sra          t0, sp, s4
                  andi         s6, t2, 1695
                  xor          s2, a4, a6
                  sltu         s1, s5, s7
48:               sra          s6, t2, s0
49:               bgeu         sp, a2, 53f
50:               sub          t3, t6, tp
                  xor          t5, ra, s1
                  srl          s2, s5, t4
53:               srli         t4, t3, 7
                  xori         t6, gp, -1256
55:               slti         a6, a3, -45
                  srl          ra, s5, a3
                  or           s6, t6, a1
                  blt          s3, gp, 67f
                  ori          gp, t6, -852
                  addi         t0, a7, -672
                  sll          zero, s11, t5
                  bgeu         t3, a2, 64f
                  add          a7, t3, gp
64:               nop
                  addi         a6, sp, -802
                  blt          t0, s11, 86f
67:               bgeu         s10, t4, 69f
                  and          zero, t0, a0
69:               slt          tp, s6, s5
                  sltiu        s8, sp, 728
                  sra          s11, s4, s8
                  lui          s11, 146800
                  ori          s7, t6, 16
                  srai         t3, s4, 6
                  add          s0, s11, s4
                  sltiu        a6, a3, -1999
                  beq          s3, s1, 88f
                  and          s1, a6, s3
                  ori          gp, a0, -549
                  slti         s1, a3, 1527
                  xori         t6, a5, -218
                  slli         a7, a0, 2
                  bgeu         s2, t6, 98f
                  sltu         zero, s11, s0
                  beq          s6, s10, 101f
86:               bne          a6, t1, 92f
                  srai         s0, s11, 2
88:               xor          s3, a3, s3
                  bltu         s5, a7, 107f
                  nop
                  bne          s5, s0, 109f
92:               andi         t1, t1, -1010
                  or           s8, sp, t4
                  slti         t5, s4, 948
                  or           a0, a7, s4
                  addi         gp, ra, -1402
                  slti         s6, s2, -1347
98:               or           tp, t2, a5
                  addi         s4, s7, -1217
                  or           gp, a4, t0
101:              srli         s3, tp, 15
                  bge          t4, sp, 121f
                  srli         t0, a5, 14
                  xori         tp, a6, 922
                  bne          s6, a3, 107f
                  blt          t2, s10, 110f
107:              xor          s4, zero, ra
                  andi         s6, sp, 1990
109:              sub          s4, s11, s2
110:              bltu         a5, t0, 125f
                  add          s2, s9, s9
                  addi         s11, a1, -1702
                  bge          t3, t1, 116f
                  blt          a1, s9, 123f
                  xori         zero, s1, 857
116:              or           a7, a7, s0
                  srli         s3, tp, 0
                  bne          t3, s2, 136f
                  srai         s7, s2, 21
                  beq          sp, t4, 125f
121:              slti         zero, t0, 1386
                  xori         a3, t5, 116
123:              srli         sp, s3, 8
                  xori         s1, s6, -1426
125:              andi         t1, s10, 42
                  sra          s0, t1, s6
                  sltu         s6, s1, a0
                  sub          s4, sp, s5
                  slli         t4, t2, 22
                  or           t0, s0, t5
                  slt          a1, t2, s6
                  bne          s0, s8, 146f
                  bge          s4, s5, 143f
                  sub          a1, s7, tp
                  or           t3, s1, a2
136:              sub          s6, s1, s2
                  sra          a7, a2, a6
                  beq          t6, a1, 153f
                  blt          zero, t6, 142f
                  bge          s10, a3, 156f
                  xor          t2, a5, zero
142:              sra          a0, s8, a4
143:              sub          s4, t1, t1
                  add          s7, s2, t0
                  and          s11, s6, s2
146:              xori         tp, t2, 1596
                  bne          t6, s2, 154f
                  beq          a1, s9, 163f
                  nop
                  addi         s1, a4, 945
                  add          s9, s0, s7
                  srli         s6, s8, 28
153:              bgeu         a4, a4, 164f
154:              beq          s11, a7, 163f
                  sub          s8, s4, s6
156:              slli         s7, t2, 17
                  sra          s0, t1, s11
                  add          s3, s9, a0
                  sra          gp, gp, s3
                  sll          s2, t2, s0
                  beq          s5, gp, 162f
162:              sub          s7, s6, ra
163:              srai         gp, s2, 6
164:              slli         s5, s4, 18
                  xori         sp, a3, -176
                  nop
                  blt          ra, s4, 175f
                  srai         t3, s5, 13
                  or           t0, a2, a1
                  srai         t1, s9, 27
                  bgeu         s10, a1, 180f
                  nop
                  slti         s3, s1, -1948
                  srai         s9, ra, 22
175:              bge          s10, zero, 190f
                  auipc        s11, 149989
                  sltiu        gp, a1, 1647
                  srai         a4, a4, 0
                  srl          s7, t1, t4
180:              sll          t2, s11, s7
                  add          t0, s5, s5
                  auipc        s1, 484036
                  auipc        a3, 576628
                  auipc        s0, 923600
                  xor          ra, t4, t6
                  bltu         s11, ra, 200f
                  srli         t5, a2, 2
                  andi         t6, s4, 625
                  sub          a4, s6, a3
190:              slti         a6, s5, 1173
                  nop
                  auipc        t6, 1048259
                  xori         s1, s7, -1663
                  or           a0, sp, tp
                  andi         tp, zero, -1536
                  sltu         t3, s6, s4
                  slt          t2, s1, s2
                  bge          a5, t2, 201f
                  sltiu        zero, a5, 94
200:              srai         t4, t4, 9
201:              and          tp, ra, a2
                  ori          s3, s2, 163
                  slt          a4, s6, ra
                  srli         a3, t2, 26
                  slt          a6, t1, a5
                  sltu         s8, gp, s11
                  and          a1, s6, t6
                  auipc        a7, 408220
                  ori          a4, a7, 121
                  sra          a6, s2, s9
                  bgeu         t0, gp, 220f
                  slli         t4, ra, 29
                  addi         t0, tp, 1956
                  bge          t2, zero, 234f
                  slli         t2, a1, 17
                  nop
                  and          s5, a6, t2
                  srai         a7, a3, 18
                  sll          t4, s0, zero
220:              or           s6, a7, a2
                  srli         s2, s0, 16
                  addi         t3, a6, 174
                  slti         s8, s11, -1569
                  lui          a3, 231515
                  bne          s8, s0, 243f
                  sltiu        t2, a6, -1328
                  blt          s7, tp, 238f
                  bne          s1, a0, 234f
                  bltu         t4, s0, 231f
                  addi         s6, t3, 1493
231:              add          tp, a0, s10
                  sltiu        s3, t6, -1657
                  ori          s9, a7, -1206
234:              srli         t3, ra, 21
                  add          t3, zero, t6
                  bne          s8, a1, 255f
                  srli         s1, s7, 24
238:              bne          t6, s6, 240f
                  slt          a0, sp, s7
240:              andi         t2, t1, 639
                  sltiu        s6, t6, 1862
                  bltu         t1, a6, 260f
243:              xori         s5, a4, -440
                  blt          sp, a7, 248f
                  bltu         s2, t0, 254f
                  srai         a6, gp, 24
                  lui          t4, 533821
248:              lui          a6, 85465
                  sra          gp, a6, gp
                  lui          a0, 409066
                  auipc        t4, 4174
                  lui          t2, 816316
                  slli         sp, t5, 5
254:              sra          s0, t6, s6
255:              sltu         t5, s3, a1
                  srli         t0, t0, 27
                  slli         t5, s7, 19
                  add          t3, tp, gp
                  bgeu         a3, t0, 277f
260:              andi         sp, s8, 1276
                  and          t4, s9, a6
                  bge          a0, t6, 266f
                  slli         t4, s11, 29
                  bgeu         t4, tp, 266f
                  lui          s1, 607853
266:              srl          t2, s10, a2
                  lui          s8, 907331
                  sll          t6, t2, sp
                  slli         s5, s6, 24
                  ori          ra, t0, -114
                  xor          a3, t1, a1
                  bge          a2, t2, 290f
                  blt          t1, a4, 291f
                  bge          t4, s11, 285f
                  lui          s3, 580208
                  addi         t0, a6, -421
277:              beq          s2, s2, 280f
                  nop
                  bltu         s4, zero, 298f
280:              bltu         s8, tp, 288f
                  bne          a4, tp, 283f
                  slt          a0, s10, t6
283:              xor          tp, a3, t1
                  srai         s1, s5, 22
285:              add          s7, s11, s10
                  sltiu        s4, t6, 1537
                  lui          t3, 785572
288:              sra          t3, a3, a1
                  slli         tp, t1, 14
290:              auipc        s3, 693951
291:              sltiu        sp, s1, 540
                  xor          a4, t4, s4
                  xor          tp, s0, ra
                  sltiu        t5, a2, 163
                  bne          a0, s0, 304f
                  nop
                  sra          s11, s8, s1
298:              sub          t6, a5, a5
                  blt          a7, ra, 310f
                  bge          s11, s5, 305f
                  sub          s6, t2, a4
                  xori         t4, t2, 1739
                  sltiu        t2, t3, -1094
304:              lui          s6, 670990
305:              andi         a0, s2, 1666
                  bltu         s5, t1, 316f
                  slli         a6, s4, 19
                  bgeu         t4, s1, 323f
                  slti         t2, t4, 90
310:              or           s1, t6, a1
                  auipc        s6, 313734
                  ori          a4, s5, 1639
                  srl          s4, sp, s2
                  nop
                  srli         t2, sp, 15
316:              xor          sp, s1, s2
                  or           sp, t2, t0
                  add          s8, t6, a4
                  andi         a0, s8, 1464
                  beq          a3, t3, 334f
                  bge          s5, t4, 327f
                  ori          ra, a1, 627
323:              xor          t0, s2, t0
                  nop
                  srai         a7, s5, 27
                  bge          t1, a4, 346f
327:              bgeu         a2, s3, 330f
                  sltu         s6, s11, a2
                  srai         zero, a7, 3
330:              ori          s3, t0, 1176
                  ori          gp, a0, 570
                  auipc        a1, 431398
                  bgeu         t4, a7, 348f
334:              bltu         tp, s10, 349f
                  auipc        s11, 871314
                  auipc        gp, 870865
                  xor          s7, s1, t5
                  beq          s5, t0, 342f
                  and          t3, a4, a3
                  and          sp, ra, a4
                  blt          a5, s9, 343f
342:              blt          s9, s2, 360f
343:              sltiu        sp, a2, -1764
                  lui          s2, 591121
                  srai         s2, s11, 19
346:              srl          s9, s1, s5
                  xor          gp, s6, s6
348:              and          t2, s4, s2
349:              slti         sp, t6, -470
                  sll          s1, a2, s11
                  sub          ra, t1, t1
                  or           s3, s9, t3
                  andi         s0, s8, -320
                  or           s5, sp, t5
                  sub          s1, a0, t3
                  srl          sp, tp, sp
                  or           a3, s2, s1
                  bltu         sp, a3, 374f
                  sltu         t0, s6, tp
360:              blt          a5, s11, 369f
                  bltu         a6, gp, 370f
                  beq          s7, s3, 376f
                  add          a3, a7, a7
                  bge          t3, t1, 365f
365:              bgeu         s6, t2, 369f
                  slli         s7, s9, 25
                  bge          gp, a7, 376f
                  add          t5, a2, a6
369:              sub          sp, a5, s3
370:              sltiu        a7, s6, 940
                  sra          tp, a5, a0
                  sltu         s3, s9, ra
                  srl          a6, tp, t3
374:              add          s5, s10, a7
                  nop
376:              and          t1, t6, s9
                  blt          a1, tp, 379f
                  lui          a6, 715457
379:              sll          a7, a7, t6
                  xor          sp, a3, sp
                  sltiu        a6, t4, -611
                  bge          t3, s8, 389f
                  bgeu         a2, tp, 393f
                  srai         s7, s2, 23
                  addi         t6, a6, -867
                  andi         a1, s4, -1120
                  sra          a3, s9, a2
                  srl          t0, a7, gp
389:              ori          s5, a5, 217
                  slt          s4, t4, t0
                  add          s8, s1, t5
                  and          s3, t2, t3
393:              sltiu        a1, t6, 1398
                  ori          s2, a7, 0
                  srl          s7, a7, t5
                  nop
                  srl          t4, a2, a1
                  bne          s3, s8, 413f
                  bne          t4, s11, 419f
                  xori         a7, a3, -1742
                  sll          a3, a4, s1
                  bne          s1, a3, 405f
                  nop
                  slt          s0, t0, s4
405:              bne          s6, t1, 419f
                  sll          t2, t1, s2
                  bltu         a2, a3, 422f
                  bge          s0, s6, 424f
                  xori         s0, a1, 1107
                  xori         t5, s3, 717
                  bne          s1, s7, 413f
                  bne          s1, s6, 430f
413:              add          s11, a1, a0
                  sll          s5, a1, s8
                  xor          s7, s8, ra
                  bltu         s2, s6, 421f
                  and          tp, s9, a4
                  xor          gp, s4, t5
419:              and          a0, t5, s2
                  bge          tp, s4, 438f
421:              bgeu         s3, s10, 430f
422:              slti         t2, a5, -1406
                  xori         t0, a7, -1953
424:              addi         s7, a3, 267
                  xori         t6, tp, 1005
                  sll          s7, sp, t1
                  bgeu         a4, t0, 438f
                  bne          s4, s3, 436f
                  add          s1, t6, t2
430:              sltiu        t0, s3, 916
                  bgeu         s0, tp, 437f
                  slli         zero, t0, 12
                  and          t0, a2, s6
                  sra          s7, a2, a7
                  srli         t5, ra, 12
436:              bltu         s0, sp, 440f
437:              ori          a3, s5, -1730
438:              sll          s2, t1, a2
                  bgeu         a6, t5, 446f
440:              xor          zero, t0, s8
                  blt          t0, s2, 452f
                  bltu         s5, s9, 446f
                  or           sp, t0, a6
                  bge          s1, a5, 446f
                  lui          sp, 107600
446:              bne          t1, a5, 449f
                  srai         a3, ra, 26
                  xori         a0, t2, 1127
449:              sltu         a6, a3, s1
                  bge          a2, a0, 465f
                  auipc        a6, 6139
452:              add          t6, s1, t6
                  xor          a4, s4, ra
                  slti         t1, t2, -1568
                  slti         t6, a0, 1781
                  bltu         s0, s2, 474f
                  andi         s1, s7, -734
                  bne          s8, a6, 467f
                  sra          s1, s1, t0
                  srl          a6, t3, s1
                  srai         t6, a1, 15
                  addi         a0, t3, 363
                  srai         s2, s8, 21
                  andi         a6, a4, -1745
465:              srl          s11, a3, s9
                  sll          a7, s11, t4
467:              slti         s8, a7, 899
                  bgeu         a0, s11, 477f
                  auipc        t4, 503024
                  srl          s4, ra, s9
                  and          t6, s5, t2
                  blt          a2, a4, 473f
473:              andi         t3, s8, 684
474:              sltiu        tp, ra, -1333
                  or           s3, t4, a2
                  sltu         t0, a0, s1
477:              beq          s6, tp, 496f
                  srl          a1, t6, s1
                  sltu         a4, s7, s6
                  sll          s6, a4, s6
                  auipc        a0, 644648
                  sltiu        t3, t5, -1260
                  blt          a4, a7, 485f
                  nop
485:              srli         s5, s0, 30
                  nop
                  sltiu        t0, a5, 1710
                  sra          s0, s8, a2
                  and          a6, s5, a6
                  auipc        t0, 909857
                  sra          a3, s2, s5
                  and          a3, s11, t2
                  or           gp, t0, a1
                  bgeu         tp, s11, 503f
                  sub          s7, t5, zero
496:              srli         s3, zero, 19
                  bne          t6, s4, 511f
                  sll          t0, a2, t0
                  bgeu         a7, t2, 508f
                  nop
                  sltu         t2, a0, t4
                  slti         tp, s3, -952
503:              slli         a1, zero, 20
                  srai         a1, tp, 23
                  addi         t6, s3, 2039
                  ori          t3, s6, 190
                  lui          a7, 169848
508:              bge          s4, s5, 523f
                  srl          s9, ra, t3
                  sltiu        gp, a0, 335
511:              xori         t5, ra, 510
                  auipc        s7, 163354
                  and          t3, a2, s2
                  bgeu         s6, ra, 524f
                  andi         t2, s7, -1832
                  add          t6, s4, a7
                  slti         s2, s4, -1623
                  bge          s10, s5, 521f
                  sub          a3, a5, a7
                  sub          zero, a4, t3
521:              or           s6, t5, a5
                  xori         a1, tp, -1352
523:              bne          a1, a7, 524f
524:              xori         gp, sp, 1235
                  and          s8, s3, a4
                  lw           ra, 4(a5)
                  srai         a0, a3, 23
                  addi         a5, a5, 16
                  or           t2, t0, a4
                  sltu         s4, tp, a6
                  sub          s7, t0, s5
                  addi         t4, s10, 41
732:              addi x30, x1, 1
732:              jalr x30, x30, 0
sub_9:            bgeu         gp, gp, sub_9_stack_p
sub_9_stack_p:    addi         a5, a5, -20
                  sw           ra, 4(a5)
                  sra          t4, tp, s0
                  add          s9, s9, s4
                  xori         a1, s4, -868
                  srli         s2, t2, 5
                  srl          s6, s10, s4
                  sra          t1, a7, s7
                  la           a1, region_1+1461 #start riscv_load_store_rand_instr_stream_9
                  lhu          ra, -13(a1)
                  sw           s7, 11(a1)
                  xori         t5, t0, -983
                  ori          s2, sp, 1290
                  lb           t0, -8(a1)
                  sltu         s3, t3, s9
                  lb           s11, 2(a1)
                  lhu          a6, -15(a1)
                  addi         sp, t3, -1754
                  auipc        t6, 622434
                  slli         s9, a6, 3
                  srl          a3, s10, t0
                  add          s2, t0, tp
                  lh           t6, 13(a1)
                  sb           a5, 4(a1)
                  nop
                  lbu          a0, 8(a1)
                  sra          a3, s3, s10
                  sb           s3, -2(a1)
                  xor          t6, s7, zero
                  lbu          a4, 16(a1)
                  or           a0, s0, a3
                  sltiu        a4, t2, 354
                  xor          s2, ra, sp
                  auipc        s1, 493472
                  srai         s9, a4, 22
                  lb           s0, -4(a1)
                  lb           a3, 5(a1)
                  xori         t3, s8, 1033
                  nop
                  srai         t0, tp, 8
                  lbu          t3, -5(a1)
                  lhu          t4, 11(a1)
                  sll          tp, s1, s4
                  lhu          zero, 11(a1)
                  lb           s9, -7(a1)
                  addi         a0, t0, 907
                  lbu          a3, 12(a1)
                  slti         s11, s0, -1753
                  srai         s4, s0, 5
                  ori          t4, t1, 282
                  sb           sp, -12(a1)
                  sb           s9, 13(a1)
                  and          ra, t2, t2
                  addi         s8, ra, 1896
                  slli         a0, t0, 20
                  addi         gp, a0, -1503
                  lhu          s2, -7(a1)
                  lui          tp, 748798
                  sub          s9, s4, s5
                  lhu          a7, -15(a1) #end riscv_load_store_rand_instr_stream_9
                  la           sp, region_1+236 #start riscv_load_store_rand_instr_stream_8
                  srli         t4, t3, 18
                  or           t3, zero, s10
                  ori          gp, s2, -751
                  sltu         s3, s5, a0
                  lbu          t0, -37(sp)
                  lhu          s1, 16(sp)
                  and          gp, tp, t0
                  sb           a6, 8(sp)
                  lh           zero, 18(sp)
                  lui          t1, 105782
                  ori          a4, a0, 758
                  srli         s11, a5, 20
                  sb           s3, -11(sp)
                  or           t1, a2, s10
                  auipc        gp, 1028302
                  addi         s8, gp, 1757
                  sh           s2, -22(sp)
                  srl          tp, t0, t6
                  auipc        gp, 74547
                  sll          a4, s0, t5
                  slt          s3, s2, a6
                  lb           s3, -45(sp)
                  sra          s9, a5, t6
                  lbu          s3, 13(sp)
                  andi         s0, s1, -313
                  lui          s8, 207774
                  add          tp, s7, t5
                  auipc        s1, 108089
                  slt          a6, zero, s7
                  sll          t5, a4, s3
                  and          t4, a5, t1
                  slti         s11, s7, 27
                  sb           s9, 35(sp)
                  lh           t1, -18(sp)
                  lbu          s11, -43(sp)
                  ori          s9, s8, -1162
                  lui          t0, 82322
                  slti         a4, t0, -496
                  sb           s6, 25(sp)
                  sltu         t6, s0, tp
                  lb           s11, -14(sp) #end riscv_load_store_rand_instr_stream_8
                  la           sp, region_1+298 #start riscv_load_store_rand_instr_stream_11
                  lb           t4, 19(sp)
                  addi         gp, s3, 1948
                  sh           t1, 58(sp)
                  sb           s7, 5(sp)
                  sw           t4, 10(sp)
                  sh           a5, -18(sp)
                  lb           s7, 32(sp)
                  sb           t2, -57(sp)
                  lh           zero, 36(sp)
                  sll          t5, a1, s10
                  andi         s8, t4, -1094
                  lbu          a3, -18(sp)
                  sb           s7, 58(sp)
                  sh           s8, -16(sp)
                  andi         t5, a2, 80
                  slli         s7, s8, 6
                  sub          a7, s10, s10
                  add          ra, t6, t5
                  slli         s1, zero, 4
                  lhu          gp, 28(sp)
                  lbu          s7, -59(sp)
                  andi         s3, s4, 1669
                  sra          t2, s1, s8
                  sltu         a1, zero, s9
                  sll          t3, s9, tp
                  lb           t6, 27(sp)
                  sltu         s8, s2, t0
                  xor          a3, a2, s9
                  lh           a0, -36(sp)
                  lb           a1, 54(sp)
                  sltu         a3, a1, a1
                  sw           zero, -62(sp)
                  sltu         a6, zero, s11
                  lb           s4, 11(sp)
                  lb           s6, -57(sp)
                  slti         s3, t5, -1479
                  auipc        a4, 722506
                  sb           gp, 7(sp)
                  lbu          s4, -25(sp)
                  addi         a6, s6, -844
                  lb           tp, -45(sp)
                  lbu          ra, 50(sp)
                  lbu          t1, -61(sp)
                  sub          a4, tp, t4
                  lbu          a7, 34(sp) #end riscv_load_store_rand_instr_stream_11
                  la           s1, region_0+599 #start riscv_load_store_rand_instr_stream_4
                  lbu          s7, 652(s1)
                  sw           t2, -323(s1)
                  sw           t5, 1381(s1)
                  lh           t1, 1351(s1)
                  nop
                  lbu          sp, 1080(s1)
                  and          s0, s3, tp
                  sra          s6, s11, a2
                  andi         s3, a1, 1301
                  xori         a1, s3, 403
                  auipc        t0, 834088
                  sh           t0, 827(s1)
                  sra          t3, a2, t6
                  slti         s0, t5, -1860
                  lb           a6, -458(s1)
                  lbu          t1, 496(s1)
                  sra          a3, a4, a2
                  sb           a7, 270(s1)
                  sub          a3, tp, gp
                  sb           a4, 813(s1)
                  lb           sp, 318(s1)
                  sh           a2, 1363(s1)
                  sltu         a6, s5, s2
                  sra          t4, t4, s5
                  xori         s6, a6, -1698
                  lh           gp, 1343(s1)
                  xor          a3, s5, s0
                  lbu          s3, 130(s1)
                  and          s4, sp, a2
                  lbu          s4, 260(s1)
                  lbu          a0, 1196(s1)
                  sh           a1, 1021(s1) #end riscv_load_store_rand_instr_stream_4
                  la           a1, region_0+118 #start riscv_load_store_rand_instr_stream_12
                  lbu          s8, 144(a1)
                  sltu         s7, s11, a1
                  lh           a4, 78(a1)
                  sll          s11, t1, s10
                  slti         a0, tp, 1636
                  xori         s2, ra, 1976
                  sll          s1, s7, s3
                  xor          t4, a5, a3
                  sb           zero, 249(a1)
                  lbu          t5, -91(a1)
                  lb           tp, 100(a1)
                  lbu          a0, 123(a1)
                  srai         s4, s11, 14
                  and          ra, a3, a0
                  lw           a4, 230(a1)
                  srli         a7, s2, 1
                  lbu          s1, 30(a1)
                  slti         t2, sp, 162
                  sb           a6, -45(a1)
                  xor          gp, gp, s2
                  or           s8, ra, a6
                  xor          a3, a7, s2
                  lb           s7, 47(a1)
                  add          s11, t2, a7
                  xor          t4, a7, s11
                  andi         s4, s11, 1756
                  slli         s1, s3, 4
                  addi         s4, s3, -797
                  slt          sp, s7, tp
                  auipc        t5, 400094
                  lbu          s5, 252(a1)
                  slti         t5, tp, -854
                  lh           s5, 44(a1)
                  or           gp, a3, t6
                  xori         t4, tp, 1203
                  lbu          ra, 201(a1)
                  sub          t2, a1, s2
                  lbu          t6, 49(a1)
                  srai         s11, a5, 31
                  sb           a4, 219(a1)
                  andi         a0, zero, 460
                  andi         a7, s4, 797
                  slti         a0, t4, -1790
                  lb           s11, 184(a1)
                  sw           s9, 154(a1) #end riscv_load_store_rand_instr_stream_12
                  la           a3, region_1+74 #start riscv_load_store_rand_instr_stream_3
                  lhu          s5, 16(a3)
                  sra          sp, s5, t0
                  sll          a0, sp, t2
                  or           s0, sp, s9
                  sb           s2, -10(a3)
                  lui          gp, 247248
                  sub          a1, gp, t6
                  slt          tp, t2, s10
                  sb           s0, -13(a3)
                  sb           s9, -3(a3)
                  xori         t1, sp, 138
                  sll          ra, a0, a0
                  srai         tp, t0, 17
                  lb           s3, 7(a3)
                  sb           a1, 2(a3)
                  sltiu        t4, sp, -1036
                  sra          s11, s4, s6
                  lbu          t0, 14(a3)
                  lbu          s11, 7(a3)
                  slti         a7, a6, 433
                  auipc        s2, 481595
                  lbu          s9, -3(a3)
                  slti         s0, s3, -1594
                  lui          t1, 131334
                  lbu          gp, -8(a3)
                  and          t5, t5, zero
                  lhu          t0, 8(a3) #end riscv_load_store_rand_instr_stream_3
                  la           sp, region_1+873 #start riscv_load_store_rand_instr_stream_7
                  sb           s11, 183(sp)
                  sw           a6, -565(sp)
                  auipc        s0, 949546
                  or           ra, t4, zero
                  lw           t4, -69(sp)
                  and          s3, a1, sp
                  sll          a4, a7, s5
                  srai         s11, a5, 0
                  lh           ra, 111(sp)
                  lb           s9, 316(sp)
                  sltiu        s1, s6, -1994
                  ori          s3, s6, 679
                  srai         s2, s4, 16
                  lbu          t3, 725(sp)
                  nop
                  sb           a7, 570(sp)
                  nop
                  sb           s9, -696(sp)
                  sltu         t1, s10, tp
                  lui          t4, 985559
                  add          a0, a6, s1
                  nop
                  slt          t2, s0, s11
                  lb           s5, 550(sp)
                  lb           tp, 191(sp)
                  lh           t5, -775(sp)
                  sw           a4, 499(sp)
                  lui          t5, 492163
                  slt          a0, t5, s5
                  lbu          s5, 294(sp)
                  lbu          ra, 647(sp)
                  auipc        t0, 603435
                  sll          t3, t1, t0
                  slli         a7, gp, 11
                  sltiu        s7, t6, -97
                  lbu          s8, -280(sp)
                  sh           s5, -61(sp)
                  slt          s5, gp, t6
                  sh           t2, 501(sp)
                  lb           t2, -638(sp)
                  lh           gp, -327(sp)
                  sltiu        s11, t1, 396
                  sb           a2, -132(sp)
                  addi         t1, s3, 614
                  sb           s1, 404(sp)
                  lb           t0, 299(sp) #end riscv_load_store_rand_instr_stream_7
                  la           sp, region_0+22 #start riscv_load_store_rand_instr_stream_5
                  srli         t5, a2, 26
                  srli         s4, gp, 5
                  lb           a3, -7(sp)
                  xor          t6, t1, s6
                  auipc        a4, 485886
                  andi         s11, s4, 1308
                  sb           a3, -1(sp)
                  xor          tp, gp, t4
                  srl          tp, t4, s1
                  lbu          a0, -13(sp)
                  lui          s0, 602582
                  sra          t0, gp, a2
                  sb           s3, 4(sp)
                  nop
                  slti         s2, s2, 345
                  sra          s2, s9, t6
                  xor          s8, s1, t3
                  add          a0, s6, zero
                  xor          a1, s0, t0
                  andi         a1, s0, 623
                  andi         a6, ra, 943
                  sb           s9, -7(sp)
                  lb           t2, -9(sp)
                  xori         s3, t5, -295
                  slt          s1, t0, t0
                  slti         t1, t4, 756
                  addi         a6, a5, -1533
                  lbu          a3, -13(sp)
                  lb           t2, 8(sp)
                  slli         a6, zero, 1
                  slli         t6, t6, 13
                  or           zero, a2, a2
                  slt          s6, zero, t4
                  lb           gp, -15(sp)
                  lbu          gp, 13(sp)
                  srli         s5, a0, 24
                  srai         s8, s7, 21
                  lw           s11, 14(sp)
                  lbu          a4, -7(sp) #end riscv_load_store_rand_instr_stream_5
                  la           sp, region_1+1485 #start riscv_load_store_rand_instr_stream_2
                  sb           tp, -28(sp)
                  sb           s8, -50(sp)
                  slti         zero, a3, -1591
                  slli         a3, s11, 2
                  slli         s4, t0, 21
                  sh           s10, -3(sp)
                  slli         t3, t5, 0
                  nop
                  sw           a3, 63(sp)
                  lw           s9, 43(sp)
                  sb           t3, -37(sp)
                  sltu         s9, t6, s10
                  srai         zero, a0, 13
                  srl          t1, t3, a7
                  lbu          s5, -16(sp)
                  lb           tp, -2(sp)
                  lh           t2, 33(sp)
                  lbu          t0, -54(sp)
                  sb           s3, -1(sp)
                  xor          a4, t5, s4
                  lhu          a0, -31(sp)
                  srai         s8, a7, 31
                  sub          s3, s7, t3
                  sb           s10, 45(sp)
                  lb           s1, 15(sp)
                  lbu          s0, -3(sp)
                  lbu          s8, -24(sp)
                  sb           s11, 49(sp)
                  sra          tp, s2, a2
                  sb           a6, 12(sp)
                  add          a3, t6, s5
                  lbu          gp, 24(sp)
                  srl          a6, t0, t5
                  sltiu        s5, a0, 1345
                  sb           a6, 5(sp)
                  sb           gp, -60(sp)
                  lb           a1, 32(sp)
                  sb           ra, -17(sp)
                  lb           a4, -4(sp)
                  or           s11, zero, a6
                  lb           s1, -22(sp)
                  lhu          tp, 13(sp)
                  lb           s6, 25(sp)
                  srl          ra, s8, s1
                  sltu         s3, s3, t4
                  lw           ra, -13(sp) #end riscv_load_store_rand_instr_stream_2
                  srai         t0, s4, 29
                  bltu         a2, s1, 19f
                  add          s2, t2, a3
                  slt          a0, s5, s4
                  sll          s11, s4, t6
                  addi         t4, t4, 1722
                  nop
                  xor          s4, sp, s1
                  srai         gp, s6, 28
                  auipc        s0, 610465
                  bge          t4, s1, 17f
                  srl          s3, s8, s6
                  bltu         s0, zero, 13f
13:               slti         ra, a1, 1267
                  slt          s6, s11, t4
                  andi         s4, t2, -1588
                  bgeu         t5, sp, 33f
17:               sll          gp, s4, a2
                  srli         gp, s11, 10
19:               blt          t5, tp, 23f
                  bge          sp, t1, 26f
                  lui          t2, 600059
                  or           a3, s4, zero
23:               slti         t1, s9, 1812
                  sll          ra, s6, s1
                  slti         sp, s9, -706
26:               xori         t2, s9, -1639
                  add          t3, a4, tp
                  slli         a4, sp, 8
                  xor          t2, a3, ra
                  slli         s6, s4, 22
                  bge          s1, a2, 33f
                  add          s6, s4, t4
33:               slt          s8, t5, t5
                  xori         s8, s11, -1012
                  sltu         s4, gp, gp
                  lui          s8, 426439
                  bgeu         tp, s2, 44f
                  addi         s2, a2, -271
                  srli         a7, t4, 27
                  and          s1, a1, s11
                  ori          zero, s0, -1359
                  bgeu         s10, t0, 50f
                  and          gp, a0, zero
44:               lui          s8, 174850
                  srl          s9, ra, t0
                  bltu         tp, t4, 52f
                  andi         tp, s4, -279
                  andi         a4, a5, 1928
                  beq          s0, a4, 50f
50:               and          t6, a4, a7
                  srl          t0, s0, s9
52:               bne          a2, zero, 55f
                  add          s5, t1, s7
                  beq          t0, s1, 64f
55:               sra          s1, t2, s11
                  sltiu        s5, s5, -205
                  bge          sp, t2, 75f
                  bltu         zero, s2, 72f
                  ori          s11, s11, 1485
                  add          t5, tp, s7
                  sra          t4, ra, t3
                  bltu         a5, a2, 67f
                  ori          s8, s7, -874
64:               bne          t6, a2, 83f
                  beq          s2, s3, 76f
                  ori          s0, ra, -1566
67:               bne          s2, t4, 68f
68:               sltu         s3, s9, s10
                  or           s4, s3, s8
                  slti         s2, tp, -1135
                  sltiu        s9, gp, 370
72:               nop
                  xor          t0, s5, s2
                  andi         t4, zero, -1156
75:               bge          t2, a1, 83f
76:               srai         t1, zero, 29
                  srai         tp, s9, 31
                  andi         gp, t5, -1222
                  bne          a1, s8, 99f
                  slti         t1, s0, -1483
                  add          a4, t5, s1
                  slli         s0, s8, 12
83:               sll          t3, t6, t6
                  srl          a4, t5, t4
                  ori          s5, ra, -359
                  bne          t0, a1, 101f
                  add          t5, t2, s4
                  srai         s6, a2, 16
                  bltu         t2, a6, 92f
                  bne          s5, s4, 104f
                  slt          s8, a3, t3
92:               srl          zero, s1, t3
                  sll          gp, a1, s1
                  xori         s2, a4, 1056
                  auipc        s1, 846810
                  andi         t1, s8, 646
                  srai         sp, t2, 20
                  blt          a3, s0, 117f
99:               auipc        ra, 301743
                  nop
101:              beq          a0, zero, 120f
                  srli         gp, s10, 15
                  ori          t1, a4, 1264
104:              bne          s0, t0, 123f
                  xori         a7, t0, -1401
                  bne          a2, gp, 114f
                  auipc        t5, 258519
                  sll          t2, gp, s8
                  sub          s2, zero, sp
                  addi         a0, s2, 346
                  ori          zero, s2, -532
                  srl          s1, t3, s5
                  srl          tp, s2, t6
114:              xori         s5, t4, -1175
                  xor          a7, t5, s9
                  bge          a6, ra, 134f
117:              bne          t0, t4, 126f
                  srl          t2, s3, t1
                  xori         t0, s8, -1018
120:              blt          t3, zero, 130f
                  blt          s4, s1, 129f
                  bge          a0, a3, 136f
123:              srai         s9, a7, 8
                  srli         t4, s8, 1
                  bne          gp, tp, 143f
126:              slli         s11, s7, 2
                  sll          a1, a6, a1
                  sltu         a4, zero, s0
129:              add          s8, t4, s11
130:              slt          a1, s6, s9
                  nop
                  bne          t5, a0, 135f
                  ori          a4, s8, 1093
134:              blt          t0, s7, 143f
135:              srai         a1, zero, 8
136:              sltu         t0, s1, s5
                  sltiu        t4, s4, 725
                  bge          ra, t5, 157f
                  auipc        a3, 128043
                  bltu         t1, a3, 154f
                  lui          t0, 346650
                  lui          t2, 626097
143:              xori         t2, t5, 837
                  or           t5, s3, s1
                  auipc        t4, 51007
                  bgeu         t0, sp, 154f
                  slti         s9, t0, 443
                  srl          s3, zero, s9
                  and          a6, s9, s5
                  ori          s5, s11, -1435
                  slli         s1, s8, 22
                  xori         s11, a4, 806
                  lui          t0, 111424
154:              bltu         t5, s11, 173f
                  xor          zero, a4, s4
                  slli         a4, a6, 22
157:              lui          t5, 976581
                  sltiu        a6, s10, -973
                  or           a6, s9, t6
                  bne          ra, t2, 161f
161:              srl          s5, t3, tp
                  xori         gp, s8, 847
                  slti         a7, s4, -799
                  slti         t0, t3, 284
                  andi         t0, a6, 619
                  andi         s3, a0, 1518
                  bgeu         t0, a3, 185f
                  xori         s5, a3, -584
                  sub          a7, a5, t2
                  slti         s5, s8, -422
                  srli         t3, t3, 15
                  auipc        gp, 956902
173:              srl          t1, t5, s7
                  bgeu         t4, sp, 181f
                  bge          a3, a6, 177f
                  lui          gp, 389311
177:              slti         s1, s8, -355
                  slli         t0, a5, 24
                  srli         a7, t2, 28
                  or           s6, t1, a7
181:              auipc        t1, 347380
                  xor          s4, t5, s11
                  beq          s7, s1, 189f
                  ori          s7, a0, -1505
185:              blt          s10, s5, 200f
                  xor          a7, zero, a3
                  srai         a1, a6, 20
                  or           s5, sp, s1
189:              bgeu         zero, a4, 195f
                  lui          a3, 532636
                  bltu         s4, a6, 192f
192:              auipc        t0, 711115
                  nop
                  bne          s7, t6, 199f
195:              xor          a6, t1, ra
                  or           s7, t3, s9
                  or           a7, s6, t5
                  sub          s9, a1, s0
199:              andi         a4, s1, 1098
200:              beq          s3, t1, 211f
                  auipc        a1, 496165
                  xor          t0, a3, s7
                  auipc        a0, 629863
                  sltu         s8, s3, s1
                  slti         t6, t2, -664
                  or           t5, a6, s6
                  slt          t4, tp, a7
                  sltiu        s2, a2, -2048
                  andi         s8, t6, -804
                  ori          t0, t4, -1259
211:              sll          a0, s11, a5
                  bge          tp, s9, 213f
213:              slti         t4, s8, -462
                  bge          t2, tp, 233f
                  xori         gp, ra, 586
                  bge          s11, sp, 223f
                  or           a4, a0, t2
                  lui          s2, 224771
                  addi         s6, s8, -721
                  slti         t4, s10, -1546
                  slti         a3, s8, -1156
                  sltu         t0, a2, s6
223:              bgeu         s0, a5, 241f
                  sll          t4, a6, t3
                  addi         a3, s5, 511
                  slli         t0, a1, 9
                  slti         t2, a6, 119
                  bge          s8, sp, 236f
                  bge          s10, t3, 233f
                  add          a3, s9, s3
                  bne          s3, s6, 250f
                  slli         tp, s5, 5
233:              sltiu        s6, s2, 1200
                  bgeu         s8, s11, 237f
                  xori         s11, s11, -314
236:              sltiu        t6, tp, -1186
237:              ori          a7, s0, -279
                  andi         a6, s4, 1884
                  sltu         s5, sp, tp
                  beq          s3, t5, 260f
241:              bltu         a6, tp, 258f
                  blt          s11, a4, 261f
                  add          s8, s9, s1
                  xori         s0, s0, 462
                  nop
                  sltiu        s0, t6, -1155
                  bgeu         s6, s1, 266f
                  and          t4, sp, gp
                  and          t0, a5, s3
250:              beq          s8, s4, 253f
                  slti         s0, s5, -1599
                  or           a1, s3, a5
253:              lui          ra, 87769
                  nop
                  lui          s2, 575985
                  srai         s7, a5, 20
                  or           s5, t5, a3
258:              and          s5, a5, s4
                  sll          t2, s2, sp
260:              srli         s8, t2, 7
261:              beq          s6, tp, 281f
                  srli         t0, t2, 20
                  ori          s8, s5, -479
                  beq          ra, a4, 271f
                  srl          s6, s11, gp
266:              ori          s11, t6, -2005
                  sra          gp, a5, t4
                  bne          sp, a0, 274f
                  and          s9, s2, a1
                  andi         s7, t4, 761
271:              ori          a0, s6, 28
                  bltu         s6, s9, 280f
                  or           s2, zero, t5
274:              bltu         s8, a6, 281f
                  sll          s1, ra, a0
                  nop
                  sra          s2, s6, t2
                  ori          a7, sp, -426
                  sll          s5, a5, t6
280:              slti         t3, a5, 1250
281:              xori         ra, a3, 1365
                  sub          t2, tp, s7
                  slti         a3, a5, -1758
                  sub          t4, s1, a7
                  beq          t0, ra, 287f
                  slt          a7, tp, t4
287:              sltiu        s6, a1, -1678
                  addi         tp, t3, -377
                  or           a3, ra, s7
                  bge          t6, t5, 291f
291:              sll          gp, s3, s8
                  auipc        t5, 865314
                  nop
                  blt          s1, s9, 302f
                  addi         s9, a0, -493
                  slti         t5, s9, 560
                  bge          s4, ra, 300f
                  xor          a6, t0, t2
                  nop
300:              bltu         s8, a5, 305f
                  auipc        s0, 821844
302:              srli         s0, s8, 17
                  sra          sp, s1, s5
                  bne          s9, s9, 312f
305:              bltu         a1, s8, 323f
                  and          t2, gp, zero
                  slt          gp, a5, a2
                  srl          s7, s1, gp
                  slli         t4, s3, 25
                  ori          s9, s7, -904
                  slt          a7, s5, t1
312:              andi         a4, s7, 1344
                  sub          s7, a0, sp
                  sub          s6, s1, s11
                  andi         gp, s1, -1635
                  sltiu        s7, sp, 13
                  and          ra, s4, zero
                  srli         a4, a7, 21
                  sub          t5, a7, s10
                  slti         s1, a7, 564
                  or           t2, s7, s4
                  blt          t1, t5, 341f
323:              blt          t2, s11, 340f
                  bltu         s7, s2, 343f
                  lui          t3, 783071
                  bne          a5, s10, 337f
                  and          s3, a3, t1
                  or           tp, s3, tp
                  ori          s8, a6, 45
                  lui          s3, 633609
                  addi         a3, s8, 216
                  ori          s3, a5, -762
                  sltu         s7, a5, t4
                  sll          sp, s9, s5
                  xor          a4, s8, s0
                  bgeu         t3, tp, 351f
337:              andi         a3, s5, -1060
                  and          a0, s9, gp
                  srl          t3, t5, zero
340:              srli         s2, s2, 21
341:              sll          a3, s11, zero
                  bltu         s6, a4, 360f
343:              and          s0, ra, a3
                  lui          t4, 520620
                  bltu         s10, s11, 363f
                  sltu         s3, s7, a0
                  andi         t2, s11, -154
                  bge          sp, t0, 354f
                  xor          t6, a5, t1
                  srl          a1, t5, t5
351:              bgeu         s1, t4, 365f
                  bgeu         s9, a2, 366f
                  and          s0, s6, t6
354:              bne          s1, a1, 355f
355:              srl          s8, s1, ra
                  sra          ra, a2, a0
                  add          s9, s6, t4
                  slli         a4, s1, 23
                  slli         s1, zero, 18
360:              xori         t4, a4, 1032
                  nop
                  sltu         s8, a7, a4
363:              slt          s6, s2, s9
                  nop
365:              xor          s7, s2, ra
366:              sub          zero, s7, a1
                  slti         s6, a5, -921
                  slti         sp, s2, 1148
                  bge          s9, s6, 378f
                  auipc        a1, 811151
                  auipc        s8, 547482
                  srai         gp, ra, 29
                  xor          a6, s4, s9
                  addi         t4, s0, -313
                  sltiu        tp, s5, 1481
                  sltu         s6, s6, gp
                  sltu         s0, tp, tp
378:              sll          s6, t3, tp
                  srl          gp, s5, s4
                  slli         t2, t5, 21
                  slt          t4, s6, a1
                  add          s11, s5, a7
                  sltiu        sp, a0, -847
                  bgeu         s1, a1, 394f
                  bne          a3, t4, 389f
                  slt          gp, gp, t6
                  nop
                  sra          s5, a2, a2
389:              bgeu         ra, a1, 390f
390:              andi         s11, s6, 1024
                  beq          a6, s3, 392f
392:              sltiu        a0, s1, 209
                  srl          t6, s10, ra
394:              auipc        t2, 389372
                  slli         t1, t6, 31
                  bgeu         t2, s8, 401f
                  ori          s1, zero, -414
                  slli         a7, t3, 2
                  or           s3, s9, t2
                  xor          s1, s3, zero
401:              andi         a1, t4, -1400
                  srl          a0, s11, a1
                  slti         s7, t4, -1941
                  srai         s5, s5, 18
                  slti         t6, s2, -210
                  and          s2, tp, a2
                  srli         gp, tp, 22
                  bge          gp, s1, 422f
                  srai         t1, ra, 27
                  addi         tp, a6, -1843
                  srli         a7, a4, 9
                  and          s11, a5, t4
                  sub          a4, s9, s0
                  sub          a1, s11, a6
                  sltiu        s8, a5, -1422
                  sltu         gp, a7, a1
                  xor          zero, a2, gp
                  andi         a3, ra, -948
                  bgeu         a1, tp, 422f
                  and          s4, s6, ra
                  sltu         a3, s11, s9
422:              sltu         s11, a1, a1
                  sltu         s3, a5, zero
                  slt          t4, t0, a2
                  lui          s3, 262786
                  slti         t6, t4, -1292
                  sra          s3, s9, tp
                  andi         s3, s0, -656
                  ori          s9, s1, -945
                  slli         s6, t3, 1
                  xor          t4, a1, s0
                  bltu         t1, t1, 451f
                  sll          s0, a7, s11
                  sltiu        s5, s2, 1930
                  slt          sp, a4, s2
                  addi         a4, s5, -1048
                  blt          a5, sp, 438f
438:              slt          a3, t4, t6
                  addi         s5, s7, -350
                  slti         ra, t0, 318
                  bltu         t1, a5, 460f
                  or           a6, s6, s5
                  sltiu        s2, s3, -960
                  lui          s6, 480520
                  sub          sp, s2, s7
                  ori          t2, s7, 105
                  lui          s11, 506947
                  and          s4, a1, t4
                  bltu         a7, s8, 457f
                  blt          t2, s5, 457f
451:              srai         s9, t6, 12
                  srai         s5, a2, 23
                  add          ra, s9, a2
                  sra          s6, tp, s0
                  and          t4, s10, s8
                  beq          s10, zero, 459f
457:              sub          s0, a3, a0
                  bltu         s0, s8, 469f
459:              xor          a0, s5, a2
460:              bgeu         s10, a5, 478f
                  bltu         t6, s0, 468f
                  srai         s0, a4, 0
                  andi         a0, s10, 117
                  srai         s9, a4, 31
                  nop
                  la           sp, region_0+1794 #start riscv_load_store_rand_instr_stream_1
                  slt          a3, s3, a7
                  or           a4, tp, ra
                  lb           s1, -842(sp)
                  sb           a4, -1047(sp)
                  lbu          s9, -977(sp)
                  lhu          zero, -1534(sp)
                  slli         a7, tp, 20
                  sb           t0, -123(sp)
                  addi         s9, a3, -142
                  lbu          s4, -1709(sp)
                  sb           a6, -395(sp)
                  lbu          t0, -1057(sp)
                  slt          s2, ra, sp
                  lh           t1, -382(sp)
                  lbu          t3, -645(sp)
                  sh           t1, -234(sp)
                  andi         s2, t3, 543
                  sh           s7, -420(sp)
                  slt          s9, a1, gp
                  addi         zero, a3, -1238
                  sltiu        s11, s0, -1501
                  ori          s11, a7, -402
                  srai         t6, t0, 9
                  nop
                  slt          t0, zero, s9
                  lb           a0, -167(sp)
                  lh           s9, -420(sp)
                  lb           a0, -893(sp)
                  lhu          zero, 78(sp)
                  add          s5, a1, gp
                  lb           s0, -1268(sp)
                  lbu          a0, -1131(sp)
                  lbu          a6, -1429(sp) #end riscv_load_store_rand_instr_stream_1
                  lui          t4, 387645
                  and          a1, a6, t1
468:              sltu         s6, s8, s7
469:              or           s0, gp, tp
                  ori          s6, t6, 1484
                  ori          t0, a5, -1088
                  xor          s7, s10, s3
                  and          s2, a5, a3
                  srli         a0, t2, 13
                  bltu         a5, s7, 484f
                  nop
                  beq          t3, s3, 479f
478:              sltu         t5, s5, sp
479:              srl          s8, tp, a1
                  slt          s0, s10, s8
                  bge          zero, s10, 500f
                  auipc        s7, 35546
                  lui          a7, 910459
484:              srl          t0, a6, a5
                  bltu         tp, t2, 505f
                  lui          t4, 315390
                  sub          t6, s10, a7
                  slli         s8, a5, 14
                  ori          s2, s3, 735
                  srli         zero, s10, 16
                  sra          s2, gp, s6
                  and          t1, a0, a2
                  sra          s2, t6, ra
                  sll          t3, s7, a1
                  xori         s4, a3, 57
                  srl          tp, s9, zero
                  or           a0, t4, t5
                  sltu         s4, gp, s5
                  bgeu         s5, a4, 509f
500:              xor          t4, s2, sp
                  bltu         t2, a7, 509f
                  srl          t6, s7, t1
                  bgeu         t4, s11, 522f
                  sll          s6, t1, s7
505:              slt          sp, a3, t5
                  andi         a7, t0, 1747
                  sltu         s8, t0, s6
                  srl          s7, t3, a0
509:              or           t2, a4, sp
                  bge          gp, a6, 516f
                  sra          s2, t0, gp
                  xori         tp, a3, 1145
                  sltiu        s8, a2, 1322
                  addi         zero, a2, 895
                  add          s5, a1, t0
516:              bne          a4, s1, 533f
                  sltiu        s0, s4, 34
                  xori         t6, t5, 491
                  slt          s6, gp, s11
                  nop
                  nop
522:              slti         a6, s3, -1012
                  add          s5, a6, t4
                  bgeu         a7, a1, 539f
                  bne          sp, a2, 531f
                  sra          s8, t0, t4
                  bltu         s3, a3, 528f
528:              srli         s5, a2, 0
                  srl          a3, zero, s0
                  slti         zero, s3, 1621
531:              sll          sp, s1, s3
                  and          s2, ra, zero
533:              or           a0, s9, t1
                  bge          s9, ra, 538f
                  slli         zero, s5, 11
                  sub          s0, t5, ra
                  slli         s1, t6, 16
538:              ori          s1, s1, 46
539:              srai         s5, s4, 15
                  slli         s4, s5, 13
                  beq          s2, ra, 555f
                  addi         a1, sp, -1230
                  ori          zero, t6, 589
                  bltu         s5, t0, 552f
                  or           s4, ra, s11
                  slli         s0, s6, 19
                  sra          t2, t2, s8
                  addi         s11, t2, -1432
                  bge          s0, s11, 567f
                  bne          s3, s7, 568f
                  ori          ra, a0, -1845
552:              srl          a7, a4, zero
                  srai         s4, a5, 30
                  sll          s1, s6, s0
555:              sll          s8, s3, s4
                  srli         t4, tp, 26
                  sll          s6, t2, ra
                  srai         a4, s10, 12
                  sltiu        s11, s11, 1153
                  blt          a7, a4, 568f
                  slli         s1, tp, 0
                  ori          a3, a5, -1993
                  srli         s11, t5, 31
                  blt          s3, a6, 571f
                  lui          s1, 124540
                  beq          s6, t0, 569f
567:              bge          t0, s7, 586f
568:              sub          s0, s0, s11
569:              bne          sp, sp, 587f
                  bge          s6, s9, 572f
571:              bne          gp, a7, 591f
572:              srl          zero, a7, ra
                  slli         s0, s2, 16
                  add          s2, t6, s2
                  srli         s8, s1, 8
                  beq          a3, t0, 583f
                  add          s2, a7, s8
                  sra          s3, s3, s10
                  ori          sp, a6, 1294
                  and          a0, a4, s7
                  sltiu        s7, s7, 757
                  xor          zero, a2, a6
583:              andi         tp, s1, 439
                  slt          s9, s11, s10
                  sltu         s0, t1, t0
586:              auipc        s1, 865605
587:              bge          sp, sp, 590f
                  slti         s7, s1, 867
                  sll          s3, s3, t0
590:              sra          gp, s3, a0
591:              slt          s3, s7, sp
                  and          a4, s1, s2
                  bgeu         a7, s10, 611f
                  blt          a5, zero, 595f
595:              sll          sp, s2, t1
                  sltiu        a0, a0, -1612
                  xor          t3, tp, a5
                  add          s2, a7, t0
                  bge          t3, s4, 605f
                  add          sp, s3, a1
                  slt          gp, s1, t0
                  bgeu         s0, a1, 621f
                  sll          s5, s11, s0
                  bge          s11, a2, 623f
605:              srai         s7, a3, 23
                  xor          s8, t5, s10
                  sltu         s6, t4, s0
                  beq          tp, sp, 626f
                  xor          a3, sp, s3
                  slli         s3, t0, 5
611:              bltu         s0, a4, 619f
                  nop
                  addi         a1, s0, 1390
                  add          s6, t2, gp
                  bltu         a4, s7, 620f
                  srai         zero, s6, 5
                  slt          s0, t0, t4
                  sltu         s9, t5, s9
619:              srli         tp, s9, 30
620:              bne          s8, gp, 621f
621:              sll          s1, s4, s1
                  xor          gp, sp, t2
623:              lui          t1, 264811
                  or           t4, s8, a3
                  addi         s11, t4, -477
626:              xor          t2, a1, t1
                  lui          ra, 555510
                  addi         s5, a7, 2012
                  srli         a7, s1, 10
                  sll          a0, a7, ra
                  bgeu         t3, zero, 642f
                  bltu         s10, a1, 649f
                  xori         tp, ra, -1774
                  blt          a2, tp, 649f
                  sra          t5, a5, s1
                  sltu         a3, zero, t0
                  beq          t4, t2, 641f
                  sltu         a7, s10, t1
                  addi         s8, a5, 977
                  nop
641:              sub          s5, a3, s2
642:              add          s2, a1, s5
                  sltu         s11, tp, s8
                  slti         s2, s0, -964
                  bgeu         s10, a1, 651f
                  ori          s1, s3, -1364
                  sra          s2, s9, t5
                  nop
649:              bne          s6, s5, 663f
                  srli         t5, s8, 31
651:              bltu         s1, s7, 652f
652:              lui          a3, 45367
                  bgeu         t3, s4, 661f
                  and          a6, s9, s11
                  addi         tp, zero, 583
                  slti         a0, zero, 2008
                  bltu         t5, s4, 666f
                  nop
                  slli         t0, a7, 18
                  andi         t0, t2, -566
661:              bne          s0, a0, 680f
                  nop
663:              blt          t1, gp, 677f
                  srli         ra, a0, 26
                  add          s4, s8, t5
666:              auipc        t5, 315095
                  sra          s11, sp, gp
                  and          s6, a2, t3
                  andi         s11, a4, 1870
                  srli         tp, s7, 21
                  srl          s2, t3, t6
                  xor          a0, s7, s4
                  nop
                  lui          s2, 1000962
                  sra          a4, t3, s3
                  sltu         a3, a5, t0
677:              add          a6, a0, a5
                  sltu         s4, t4, t4
                  sub          zero, t5, t0
680:              xori         t4, a0, -268
                  sltu         s2, t3, s5
                  or           tp, a1, s6
                  ori          zero, t3, -660
                  bgeu         s0, tp, 694f
                  bgeu         zero, a6, 703f
                  srli         a4, a7, 16
                  slli         ra, s10, 8
                  sub          a1, sp, gp
                  andi         s6, a2, 1805
                  bge          a4, s2, 691f
691:              xor          s7, a5, a4
                  sltu         s5, t0, tp
                  sll          tp, s8, a3
694:              auipc        a4, 502717
                  or           t6, a3, s9
                  srl          s3, tp, tp
                  srai         s11, a3, 12
                  lui          t4, 456790
                  beq          t0, s9, 718f
                  slt          t5, t1, a3
                  or           tp, sp, a4
                  bgeu         zero, s3, 721f
703:              slti         s2, s9, 1480
                  slt          tp, gp, s8
                  bltu         s8, s11, 707f
                  auipc        s8, 596269
707:              srli         zero, s7, 4
                  andi         sp, s2, 345
                  or           s11, sp, a4
                  xor          s6, sp, s6
                  bge          a0, s11, 716f
                  beq          s6, s5, 721f
                  slli         s8, a1, 12
                  nop
                  andi         s4, a5, 386
716:              sll          s1, t5, a4
                  blt          t5, s8, 725f
718:              slt          a0, ra, s1
                  bltu         t0, t3, 733f
                  bgeu         a2, gp, 721f
721:              srai         s5, a7, 23
                  andi         t3, t6, -1197
                  sra          s5, a2, s2
                  beq          t5, zero, 730f
725:              bltu         s10, s10, 729f
                  sll          s11, t1, s9
                  sra          s0, a2, sp
                  and          t0, a4, s3
729:              bltu         a4, s0, 740f
730:              slti         a6, a4, -342
                  blt          s8, s9, 732f
732:              bne          s6, t1, 740f
733:              andi         t2, a0, 287
                  sltu         s8, s10, a5
                  bge          s0, s8, 754f
                  bne          t0, ra, 743f
                  srai         t6, ra, 22
                  slli         s5, s5, 26
                  xor          gp, a3, ra
740:              xor          s3, a3, ra
                  xori         s0, zero, 904
                  sll          s3, s3, s9
743:              sub          s7, t4, s9
                  sra          a7, s0, t2
                  blt          a5, s2, 764f
                  xor          ra, s6, s9
                  srl          a6, s4, s4
                  slti         s4, a5, -1995
                  and          t0, a4, s7
                  auipc        s1, 51707
                  sltiu        s11, gp, 1324
                  bgeu         s11, a0, 759f
                  and          s6, s11, t3
754:              xori         t0, s10, -1255
                  bne          a2, sp, 761f
                  xor          t2, s6, s2
                  slti         t3, s10, 1032
                  sub          gp, s2, a0
759:              sltiu        zero, zero, 525
                  sll          s9, s5, s11
761:              bge          t1, t3, 776f
                  lui          t0, 500321
                  or           a4, sp, a4
764:              blt          tp, s1, 784f
                  lui          t1, 626561
                  bge          s1, tp, 784f
                  srl          s3, s2, a7
                  auipc        s0, 229510
                  andi         s4, s4, 138
                  ori          t1, s6, 660
                  blt          s9, s2, 785f
                  blt          a0, a6, 775f
                  auipc        a6, 463027
                  addi         t4, t1, 1265
775:              xori         t0, s2, -1973
776:              beq          s10, t0, 779f
                  srli         s5, t4, 27
                  nop
779:              or           s6, s3, s5
                  slt          s0, s1, t6
                  sra          s5, ra, s6
                  beq          s8, a7, 792f
                  sub          gp, t4, s0
784:              bne          t4, ra, 792f
785:              slti         t5, s9, -513
                  sra          a6, s6, t5
                  srli         s1, s9, 15
                  xori         s8, t2, -1721
                  sltiu        s9, s3, 713
                  sra          s2, t1, s11
                  bgeu         s4, s8, 808f
792:              or           a7, s9, t6
                  beq          a3, s2, 811f
                  slti         a0, a0, 1482
                  auipc        t3, 922276
                  srl          s8, t4, t1
                  or           a6, t2, s8
                  bltu         s2, zero, 812f
                  add          t2, s9, a2
                  srli         t4, s8, 22
                  srli         t5, t2, 22
                  slti         t2, t6, -656
                  xori         t1, s10, 1335
                  bge          s7, sp, 815f
                  add          s8, t2, s10
                  nop
                  and          t1, t5, t4
808:              sltiu        t4, a3, 1780
                  addi         gp, s11, -395
                  sltiu        tp, t6, -306
811:              ori          a0, t5, -1788
812:              or           s4, a1, a5
                  bge          ra, tp, 814f
814:              srai         s7, t6, 16
815:              srl          s7, t3, s0
                  sltiu        a7, a1, -1965
                  blt          a4, t3, 836f
                  bge          s7, a1, 826f
                  bgeu         s3, s2, 838f
                  or           t5, t3, a1
                  nop
                  bge          t0, s0, 840f
                  add          s9, t0, gp
                  xori         a4, t0, 1968
                  slt          s3, a5, s5
826:              slli         t1, a2, 29
                  beq          s7, ra, 841f
                  nop
                  lui          s1, 378038
                  beq          s10, gp, 838f
                  sra          t1, gp, t2
                  sltu         a6, a0, zero
                  add          sp, a4, s1
                  sltu         s6, s7, s1
                  sltu         t0, a0, s0
836:              beq          t3, a0, 844f
                  add          gp, s5, s11
838:              beq          a0, s2, 842f
                  add          t3, s6, t1
840:              beq          a1, a2, 847f
841:              beq          sp, t2, 850f
842:              bge          s2, s0, 861f
                  addi         s7, t1, 793
844:              beq          t4, t0, 849f
                  sra          t3, a6, s6
                  ori          t6, a5, 1457
847:              slt          ra, a6, t0
                  nop
849:              bltu         a2, t0, 852f
850:              bltu         a1, t6, 860f
                  and          s2, t1, s5
852:              srli         s3, zero, 20
                  nop
                  xor          s4, zero, t6
                  sltu         sp, ra, a4
                  xor          a6, tp, a3
                  beq          a5, a6, 874f
                  andi         t0, s7, 1286
                  bne          t4, s3, 865f
860:              add          s3, s1, t1
861:              srai         s11, s10, 4
                  slli         tp, tp, 11
                  ori          a0, t4, -251
                  beq          s4, s0, 883f
865:              bge          s6, t2, 885f
                  add          a0, t6, s9
                  sll          a1, s3, t3
                  xori         s8, s4, -1713
                  or           s2, zero, tp
                  blt          a5, s9, 877f
                  addi         tp, a7, 1160
                  auipc        zero, 285238
                  sub          a4, t1, a2
874:              xori         s11, t6, 1206
                  xor          a4, a7, s4
                  bne          t5, a1, 882f
877:              srli         zero, s11, 23
                  lui          t4, 129040
                  add          t1, a5, gp
                  sltu         s5, s0, s5
                  srli         tp, t6, 5
882:              beq          s5, t2, 884f
883:              addi         s5, a6, -898
884:              auipc        t6, 587518
885:              srli         s7, s2, 9
                  sltu         t6, t1, s6
                  xori         s1, t2, 1444
                  bltu         sp, s10, 906f
                  bge          s0, t3, 892f
                  sll          s2, a3, a2
                  sra          s8, s5, a5
892:              sra          s8, s1, s1
                  sub          t6, a1, a7
                  add          s7, a7, s7
                  auipc        s5, 394957
                  slti         s11, t5, -709
                  blt          t5, gp, 898f
898:              blt          s8, sp, 916f
                  blt          s5, a1, 914f
                  andi         a0, t5, 1059
                  sltu         s1, a0, s1
                  slt          a6, a6, s6
                  srai         s3, s2, 22
                  srli         t0, gp, 22
                  andi         t3, s0, 447
906:              addi         s9, ra, 188
                  sltu         t5, s11, t5
                  xori         s3, t3, 1677
                  sll          s7, s8, t4
                  bge          a5, a0, 911f
911:              slt          s1, t3, a5
                  srli         s3, a6, 2
                  ori          t6, gp, 1857
914:              bltu         a1, t0, 932f
                  sltiu        zero, s7, -498
916:              sra          t3, tp, gp
                  srli         t1, t5, 19
                  or           t3, a1, a5
                  sltiu        s0, s6, 1704
                  lui          a1, 828262
                  ori          s9, s2, -1561
                  slti         a7, tp, 1934
                  sll          t0, s7, a3
                  beq          sp, s5, 941f
                  blt          t4, s4, 943f
                  andi         s6, a1, -990
                  srli         t0, a6, 16
                  lui          gp, 320633
                  bge          t3, s0, 938f
                  bltu         a4, s7, 931f
931:              andi         a0, s1, -505
932:              bltu         s0, a5, 935f
                  slli         s3, s2, 24
                  ori          ra, a2, -447
935:              bge          a4, s11, 939f
                  sltiu        s7, t6, 1446
                  xor          t4, a5, t6
938:              sltu         t4, s11, s8
939:              sub          s3, a0, s9
                  sltiu        s11, t6, -1951
941:              sltiu        gp, s3, -1358
                  sll          a4, a0, t2
943:              bltu         s1, tp, 946f
                  sll          ra, t5, s3
                  or           tp, a5, s3
946:              slt          t4, t6, a5
                  sltu         s3, sp, sp
                  bgeu         tp, s6, 953f
                  or           s11, sp, a0
                  and          s7, a1, a5
                  xor          t6, a7, ra
                  slli         s2, s5, 6
953:              slli         t0, t0, 30
                  srl          s4, zero, t6
                  slli         zero, s3, 28
                  sltu         s4, a0, s9
                  bltu         t3, s4, 975f
                  xor          ra, t2, tp
                  addi         s2, s9, -1531
                  bne          a3, sp, 967f
                  andi         t1, s5, 565
                  bgeu         a5, s2, 968f
                  add          t1, sp, s1
                  sll          a3, a7, t0
                  slli         s1, zero, 10
                  ori          s1, s2, 375
967:              srli         s5, s9, 9
968:              xori         s1, s7, -981
                  bge          tp, ra, 980f
                  xor          gp, ra, a2
                  add          s8, gp, t3
                  srli         s1, t4, 17
                  add          zero, s11, a4
                  bgeu         t4, a3, 994f
975:              sub          a3, a0, t0
                  ori          a6, a5, 165
                  sltiu        a4, s10, -224
                  add          ra, a1, a2
                  srli         s4, t0, 8
980:              bge          a1, s1, 988f
                  sll          t4, sp, zero
                  srl          s1, sp, t5
                  slt          s1, a2, a4
                  beq          s4, t3, 992f
                  xor          a6, s2, a7
                  bltu         s9, a6, 1001f
                  nop
988:              sltu         t3, a2, t2
                  slt          sp, s0, s3
                  or           a4, s8, s3
                  addi         a0, t5, -1229
992:              sll          a1, a3, a6
                  sra          t6, t5, gp
994:              srl          t4, sp, a6
                  add          s7, a6, tp
                  sltu         a6, t4, s0
                  nop
                  sltiu        s9, s5, 1568
                  beq          ra, s8, 1013f
                  srl          a4, t0, zero
1001:             sra          s6, a7, s7
                  srai         a1, a4, 8
                  ori          a6, tp, -1486
                  or           t1, s8, zero
                  sltu         tp, t3, a0
                  slt          sp, a3, a3
                  srai         ra, gp, 30
                  lui          s2, 708137
                  blt          t6, s9, 1028f
                  slt          t5, t5, t0
                  slti         t5, gp, 1632
                  beq          a3, t0, 1026f
1013:             srai         a0, t0, 7
                  add          s0, s5, tp
                  xor          s1, s2, t3
                  beq          s3, t4, 1017f
1017:             slti         a4, gp, 1414
                  sub          tp, sp, t5
                  add          a1, t6, s2
                  add          a0, s3, a2
                  srai         t0, s0, 16
                  nop
                  slt          a1, s3, s9
                  andi         t4, ra, -294
                  bge          s1, a7, 1044f
1026:             blt          s5, s9, 1033f
                  sub          s3, s6, s1
1028:             lui          t5, 594785
                  andi         zero, s0, 1202
                  sll          t5, s8, gp
                  sltiu        s5, a3, 1918
                  sra          zero, a4, s10
1033:             add          s11, a6, t5
                  and          a1, s8, s6
                  slt          t1, a1, s2
                  blt          s6, ra, 1037f
1037:             sll          t2, a1, t1
                  bge          zero, gp, 1040f
                  srai         s6, t4, 14
1040:             nop
                  andi         s1, t0, -1959
                  lui          tp, 211488
                  auipc        t1, 323660
1044:             beq          a2, s5, 1063f
                  andi         a1, s11, -201
                  srli         zero, t5, 0
                  bgeu         s4, a3, 1055f
                  srl          t6, t5, a0
                  or           sp, ra, s7
                  slti         s11, a4, 41
                  xor          ra, s6, t6
                  sltu         s0, s11, a6
                  sll          t4, t2, t5
                  sltu         a6, s11, t3
1055:             bge          t6, gp, 1061f
                  add          t0, s6, s8
                  bne          zero, s4, 1076f
                  lui          t5, 128148
                  slti         s6, s8, -88
                  srli         t5, t1, 7
1061:             add          s2, s2, s1
                  add          s7, s6, a6
1063:             bgeu         a6, s10, 1073f
                  bge          s3, t2, 1082f
                  auipc        a0, 682885
                  ori          t6, s8, 600
                  srli         a1, t1, 18
                  ori          t1, s5, 1765
                  beq          s8, s0, 1075f
                  andi         t1, t6, -267
                  auipc        zero, 682650
                  sub          s11, ra, s0
1073:             xor          gp, s8, t4
                  sub          t5, s2, a5
1075:             sll          s4, t4, tp
1076:             srl          sp, zero, t1
                  addi         t3, ra, -1834
                  srai         a3, t2, 25
                  blt          a4, a2, 1094f
                  xor          s3, a5, s11
                  addi         s0, s7, -1740
1082:             slti         a1, t3, -1321
                  bne          s0, t4, 1091f
                  sltu         s7, a2, zero
                  sra          zero, t2, a1
                  or           s1, a3, gp
                  or           s9, s8, t2
                  ori          t0, s5, -334
                  srai         s1, sp, 28
                  bge          a1, t1, 1098f
1091:             slli         t0, s4, 8
                  sltiu        s6, zero, 1939
                  beq          t6, a0, 1102f
1094:             sra          s0, s7, zero
                  blt          s11, t5, 1103f
                  sra          s6, s9, t1
                  sltiu        a3, s6, 1487
1098:             srl          ra, a6, a4
                  srli         gp, s1, 17
                  nop
                  sub          s5, ra, t3
1102:             bge          a6, a2, 1103f
1103:             bne          s11, s7, 1113f
                  bgeu         a1, s10, 1118f
                  slt          a7, s3, s6
                  bltu         s6, sp, 1123f
                  lui          t3, 203870
                  add          s9, s3, gp
                  or           gp, s8, a1
                  bge          a2, a6, 1129f
                  or           a1, gp, s3
                  sltiu        t3, a3, -737
1113:             slti         tp, a0, 219
                  auipc        s11, 325833
                  bne          ra, s5, 1133f
                  add          s9, s3, t3
                  and          t5, s10, ra
1118:             sltiu        s1, a4, -1049
                  srl          a0, s4, sp
                  auipc        s6, 317099
                  andi         zero, ra, -1100
                  bne          ra, sp, 1125f
1123:             bltu         sp, s11, 1143f
                  or           s11, ra, ra
1125:             xor          a0, s3, sp
                  and          t0, t4, a4
                  or           s1, tp, s3
                  blt          s11, a4, 1129f
1129:             or           s3, gp, s0
                  srai         a0, s3, 10
                  sltu         s8, t2, s0
                  slti         s9, a6, -141
1133:             and          t6, s9, s4
                  slt          zero, a4, a5
                  slli         a7, sp, 23
                  sra          t3, t6, t5
                  or           s9, t6, t4
                  bgeu         zero, t6, 1152f
                  andi         s5, a5, -1978
                  sub          s0, sp, a2
                  lui          s7, 513467
                  srai         t5, s5, 1
1143:             bgeu         tp, ra, 1162f
                  bltu         s11, s9, 1145f
1145:             bltu         s11, tp, 1148f
                  bne          a6, t4, 1157f
                  sub          t1, a1, s11
1148:             ori          s8, ra, 48
                  nop
                  or           s1, s6, s2
                  sltiu        s3, s3, -619
1152:             bltu         t0, sp, 1157f
                  blt          ra, ra, 1171f
                  nop
                  and          s0, t5, a6
                  bne          zero, s11, 1158f
1157:             addi         s1, t2, -150
1158:             sltiu        ra, s8, 2015
                  bge          s11, ra, 1178f
                  sub          s5, s11, s3
                  xori         tp, a5, -18
1162:             sltiu        s7, s5, 1009
                  bltu         tp, tp, 1167f
                  auipc        zero, 565948
                  bne          t5, t0, 1172f
                  srli         a1, s6, 30
1167:             xor          s0, t4, gp
                  xori         a1, ra, -1282
                  xor          t0, s5, s1
                  or           s4, t4, t6
1171:             and          a7, s7, a4
1172:             slti         t1, a7, 224
                  andi         s4, s8, 1066
                  nop
                  xor          a0, s0, s2
                  ori          t3, a5, 863
                  beq          t4, s9, 1183f
1178:             slti         s6, t3, -1243
                  xori         a6, a6, 909
                  and          gp, a7, s8
                  and          s9, s11, t4
                  srl          a3, t5, tp
1183:             bltu         s4, s2, 1202f
                  nop
                  beq          s7, gp, 1192f
                  and          s3, sp, t3
                  sltiu        s5, t5, -97
                  sub          zero, a1, tp
                  lui          a0, 121478
                  sltu         s5, a6, s5
                  and          sp, zero, s1
1192:             slti         s7, zero, -1033
                  andi         s1, a0, -1757
                  lui          a1, 307568
                  and          t0, s4, t0
                  ori          t5, a6, -580
                  sltiu        a7, a3, 1430
                  sltu         t3, gp, a5
                  sltiu        s3, gp, -1287
                  sll          s4, t1, s0
                  srai         s1, s9, 11
1202:             slti         s5, t3, -1108
                  srai         a6, ra, 28
                  slli         t0, gp, 30
                  srl          t4, sp, tp
                  srl          s8, s8, s7
                  auipc        t4, 147542
                  bge          s0, t3, 1227f
                  slt          a7, zero, s8
                  sll          tp, a2, a6
                  xori         s5, a0, 877
                  lui          t0, 843974
                  sra          s0, s2, s0
                  blt          s0, t3, 1228f
                  slti         zero, gp, -560
                  slti         t5, s1, -633
                  auipc        s8, 225056
                  xor          a6, a5, s4
                  bne          sp, s9, 1237f
                  addi         s3, sp, 754
                  bne          s9, s2, 1232f
                  sll          s4, t6, t3
                  blt          t2, s11, 1229f
                  bge          a3, t2, 1238f
                  xor          a4, s5, s4
                  sll          t2, t6, a0
1227:             slt          a3, t4, t1
1228:             add          zero, a5, t3
1229:             or           s4, t4, a2
                  sra          s9, s1, s10
                  xor          a3, s9, a3
1232:             add          ra, t0, t0
                  andi         t0, a6, -295
                  beq          a5, t3, 1242f
                  sltu         s9, a2, a3
                  srli         s11, ra, 29
1237:             beq          s5, t0, 1243f
1238:             bltu         t3, t6, 1248f
                  srl          ra, t6, tp
                  sra          s8, s11, a2
                  or           s1, t1, a2
1242:             xori         a0, t4, 1457
1243:             slli         a6, sp, 8
                  auipc        a0, 736302
                  sltu         s7, a2, s7
                  sltu         s11, t1, ra
                  bne          s2, a0, 1262f
1248:             xori         s1, t6, -1290
                  slli         a3, s9, 19
                  sra          s11, a3, s5
                  auipc        t2, 55124
                  add          t2, zero, a7
                  bgeu         s2, a7, 1255f
                  andi         s6, t0, 186
1255:             or           ra, a3, s9
                  xori         s6, s2, -3
                  slti         ra, sp, -1769
                  slli         s2, t5, 8
                  bge          gp, t2, 1262f
                  andi         a6, t2, 239
                  slli         t4, s9, 5
1262:             srai         a4, t5, 6
                  slti         t5, a4, 774
                  lui          s11, 234646
                  sra          t1, t5, t0
                  blt          a7, tp, 1270f
                  sra          s1, zero, a0
                  lui          t1, 161023
                  lui          t6, 547928
1270:             srli         ra, s9, 1
                  bgeu         a3, s1, 1288f
                  bge          t5, s6, 1275f
                  xori         s2, ra, 728
                  sra          a6, s3, s0
1275:             nop
                  srli         a0, s6, 17
                  xor          a7, tp, a2
                  lui          s4, 41976
                  sll          ra, a5, s1
                  addi         ra, s11, 249
                  xor          s0, t5, ra
                  auipc        s7, 245119
                  bge          ra, t5, 1291f
                  sltu         t5, s6, s11
                  auipc        s11, 89624
                  nop
                  xor          a4, s11, t6
1288:             and          a3, ra, ra
                  sltiu        zero, sp, -1901
                  addi         tp, t4, 1343
1291:             beq          s2, a7, 1296f
                  xor          gp, a0, a0
                  xor          a4, a0, t4
                  slli         a3, t5, 4
                  nop
1296:             or           t5, a2, a1
                  auipc        a3, 43375
                  srli         s5, t2, 8
                  sltu         s1, s3, ra
                  srli         a0, a5, 31
                  andi         s0, s8, 1063
                  srli         s5, a5, 26
                  blt          s0, s0, 1310f
                  add          a6, a1, a2
                  sltu         s3, t3, sp
                  slli         a1, gp, 17
                  sra          s11, ra, s3
                  sll          t3, ra, ra
                  bne          a6, gp, 1327f
1310:             nop
                  lui          s7, 132021
                  or           t5, s3, s4
                  sra          t4, a2, s6
                  xori         t1, a4, 755
                  add          t3, t2, a6
                  srli         s5, s6, 31
                  blt          a0, a5, 1318f
1318:             addi         s9, t5, -819
                  sltu         t4, a3, t5
                  xori         s4, s7, 744
                  sltu         s3, a0, s8
                  sra          s6, t5, s4
                  sll          ra, t2, t1
                  bne          a1, a5, 1343f
                  sub          s11, zero, sp
                  srl          tp, t3, gp
1327:             xor          s9, t0, t2
                  sll          t2, a0, s2
                  addi         t5, s2, -689
                  bne          s0, t1, 1350f
                  srl          s1, a1, t0
                  bne          a4, s5, 1339f
                  srl          s3, s9, t6
                  bge          t4, a7, 1353f
                  srai         s4, t0, 0
                  srli         t6, tp, 20
                  sltu         t4, tp, s0
                  addi         ra, s8, -1160
1339:             and          tp, a7, t1
                  auipc        s8, 756222
                  addi         t4, s10, -1313
                  add          t2, s8, t6
1343:             xor          s8, t6, t3
                  bge          a3, s2, 1352f
                  srli         t3, a2, 30
                  or           s2, t3, a7
                  sub          gp, gp, a5
                  bge          a2, a2, 1367f
                  bge          gp, t5, 1358f
1350:             and          t0, a5, a2
                  slli         t0, s3, 22
1352:             xor          t1, tp, t2
1353:             or           a6, s8, t6
                  sltiu        a7, a4, -584
                  or           s3, t3, zero
                  sra          s5, a6, tp
                  andi         a1, s5, -1520
1358:             slt          gp, s2, s0
                  or           t0, t2, s9
                  and          tp, s11, s1
                  bge          a6, a0, 1362f
1362:             ori          s11, a6, 1409
                  addi         s9, t4, -749
                  slli         zero, sp, 7
                  bge          tp, t3, 1366f
1366:             or           gp, tp, a6
1367:             sra          s4, t2, s1
                  sll          t1, s4, t1
                  sub          t2, s5, a2
                  sltiu        s5, s9, -1130
                  blt          a5, s2, 1389f
                  srai         s1, s6, 7
                  blt          s6, tp, 1383f
                  sub          a6, t1, t1
                  addi         s0, t0, -371
                  slt          s9, t0, s8
                  srai         a3, s10, 12
                  srli         a3, a1, 0
                  srai         s1, zero, 31
                  addi         a3, gp, -983
                  srli         t0, s7, 29
                  bge          s1, s11, 1401f
1383:             sub          t3, t3, a1
                  slt          a1, t4, gp
                  andi         t0, gp, -685
                  or           a7, a6, a3
                  srli         t5, t0, 19
                  xor          zero, tp, t3
1389:             bne          zero, t6, 1398f
                  nop
                  slli         s6, ra, 30
                  sll          zero, s7, s0
                  and          t1, s4, a5
                  bge          a3, t0, 1400f
                  sll          tp, t0, s10
                  sltu         s9, t0, sp
                  or           t3, t1, a2
1398:             nop
                  srai         s1, a5, 31
1400:             auipc        s9, 201354
1401:             sltiu        t1, s10, 605
                  add          a3, s8, a1
                  and          s4, a5, a0
                  bgeu         t5, zero, 1412f
                  sll          s3, a5, s10
                  or           tp, sp, s8
                  xori         s6, gp, -1753
                  slt          zero, t2, a7
                  sltu         sp, s11, a5
                  andi         tp, s5, 645
                  sll          ra, s1, t0
1412:             sltiu        s0, a7, -1801
                  slti         s2, tp, -68
                  slti         s4, a6, 1295
                  sub          sp, s7, s7
                  slt          s11, t3, t4
                  nop
                  ori          ra, a2, -1677
                  auipc        s9, 913118
                  lui          s8, 708099
                  auipc        a1, 279958
                  and          s1, zero, s6
                  ori          gp, t2, 1583
                  bltu         s2, s11, 1425f
1425:             auipc        s8, 257252
                  sll          s0, s7, a7
                  slt          t1, a5, ra
                  sll          a6, sp, s7
                  sub          s1, t2, t0
                  or           t6, t0, s5
                  slti         s1, t4, -195
                  sub          t2, s1, a6
                  and          ra, a7, a4
                  sra          a1, s9, t6
                  beq          a7, sp, 1440f
                  sub          t5, a2, a0
                  slti         a0, a7, -275
                  sll          s0, a5, s1
                  sll          s3, t5, a2
1440:             sltu         a3, a2, a3
                  slt          ra, s5, a3
                  srai         s0, a0, 18
                  sub          s3, s1, a7
                  ori          s7, s0, 1117
                  blt          s8, s1, 1464f
                  srai         s6, t0, 20
                  bgeu         t3, s5, 1454f
                  xor          a1, a0, s1
                  and          s3, sp, t0
                  slli         s1, s9, 26
                  andi         s6, t1, -1481
                  or           zero, t1, a7
                  sub          s7, s4, s7
1454:             bltu         s8, t6, 1471f
                  srli         t4, s11, 4
                  xor          ra, s4, sp
                  bne          s2, a4, 1476f
                  slt          s9, s8, s11
                  bge          s6, s4, 1467f
                  xori         a3, t3, -829
                  or           zero, t1, s11
                  ori          t2, t0, -1794
                  slli         t6, sp, 1
1464:             nop
                  bge          a0, gp, 1469f
                  sltiu        a6, s2, 1410
1467:             sra          zero, ra, a2
                  slti         a4, ra, 1793
1469:             sra          s6, ra, a0
                  srli         s6, gp, 18
1471:             xor          gp, t3, a2
                  xor          s4, s2, a3
                  blt          t3, s9, 1492f
                  lui          t5, 20207
                  la           a3, region_1+287 #start riscv_load_store_rand_instr_stream_0
                  lbu          a6, -20(a3)
                  xori         a4, a7, -589
                  sltu         ra, ra, s1
                  lui          s7, 1031711
                  sb           s7, -14(a3)
                  sb           a1, -12(a3)
                  lb           s5, -52(a3)
                  or           s2, a7, s0
                  sb           t4, -9(a3)
                  auipc        t4, 420506
                  sb           tp, 43(a3)
                  sh           s11, -61(a3)
                  sub          s2, a4, a4
                  lh           s4, -31(a3)
                  sb           s2, 18(a3)
                  slli         s0, s0, 18
                  sb           a5, -62(a3)
                  sltiu        a4, s5, 1948
                  lb           tp, 16(a3)
                  sh           a6, 47(a3)
                  lw           s1, 1(a3)
                  lbu          a1, 4(a3)
                  lw           s11, -11(a3)
                  auipc        zero, 471923
                  lb           s8, -4(a3)
                  lhu          a6, -15(a3)
                  lh           s5, 7(a3)
                  srai         s0, s5, 30
                  auipc        t1, 888283
                  lb           tp, -17(a3) #end riscv_load_store_rand_instr_stream_0
                  slli         ra, s3, 15
1476:             or           a0, gp, s11
                  bne          s4, s0, 1478f
1478:             addi         ra, tp, 1158
                  slti         t0, a4, 56
                  xor          s5, t2, s10
                  srai         a0, s4, 28
                  and          zero, a7, t1
                  bge          s4, s8, 1489f
                  ori          t4, s8, 409
                  xori         t5, a0, -157
                  srli         sp, a6, 0
                  andi         a3, zero, -1414
                  bge          s10, s9, 1508f
1489:             sub          s1, t3, tp
                  ori          s1, s9, 728
                  xor          t5, t5, ra
1492:             lui          a6, 827892
                  bge          a6, t5, 1496f
                  la           s7, region_0+1627 #start riscv_load_store_rand_instr_stream_6
                  sll          s5, t6, a0
                  srl          t6, s1, zero
                  add          a7, a0, s4
                  sh           s9, -169(s7)
                  sra          a4, t6, t2
                  lui          sp, 999989
                  addi         t5, s6, -1134
                  lb           s11, -188(s7)
                  lb           a4, 222(s7)
                  ori          t6, a0, -67
                  ori          ra, s5, 560
                  lb           a1, 0(s7)
                  lb           s4, -48(s7)
                  lh           zero, 161(s7)
                  srai         sp, tp, 4
                  sub          s9, ra, s11
                  xor          ra, t2, s5
                  slli         s4, gp, 31
                  xori         s3, tp, 1953
                  sb           a1, -115(s7)
                  lb           s6, -78(s7)
                  slti         t4, a3, -395
                  lhu          s11, -185(s7)
                  lhu          a1, -35(s7)
                  sb           a0, -136(s7)
                  andi         a6, s5, -778
                  lb           t3, -240(s7)
                  slt          s4, a2, s6
                  lb           s4, 88(s7)
                  sll          t6, t5, s0
                  sltu         s6, t3, a5
                  xor          sp, t2, a5
                  lbu          t6, 14(s7)
                  slt          t1, t6, a2
                  lb           t6, -45(s7)
                  sll          a3, s5, a0
                  xori         s2, s11, -1873
                  and          a1, a7, a6
                  sltiu        a0, s5, 604
                  nop
                  sb           s11, 79(s7)
                  xor          s0, a5, sp
                  lb           tp, 158(s7)
                  sra          a7, a7, t1
                  sw           t4, 17(s7)
                  slti         s0, s0, -1668
                  slt          a3, s0, a2
                  or           s4, a6, s0
                  lh           a3, -243(s7) #end riscv_load_store_rand_instr_stream_6
                  slli         s4, t3, 8
                  ori          a7, s0, -252
1496:             xor          t1, s3, a4
                  slt          s6, t2, s8
                  bge          s7, s9, 1512f
                  sra          ra, t5, a2
                  add          s5, s2, s5
                  sltiu        s0, t4, -701
                  slt          t6, gp, tp
                  nop
                  bge          tp, s8, 1522f
                  nop
                  beq          s9, ra, 1524f
                  slli         a0, a5, 21
1508:             srl          ra, s10, t6
                  add          a3, a1, s6
                  lui          a7, 333204
                  slti         s6, t1, -1980
1512:             nop
                  and          ra, sp, sp
                  sub          t1, a0, t2
                  slt          s2, s10, t6
                  addi         a1, s8, -2025
                  sub          t1, s1, a4
                  bne          a5, sp, 1520f
                  or           s8, t5, a5
1520:             andi         s2, s1, -59
                  xor          s8, a6, zero
1522:             sll          ra, s3, a2
                  addi         a1, ra, 1061
1524:             beq          a2, t6, 1531f
                  bne          s6, s1, 1539f
                  ori          s7, s10, -1974
                  srli         t4, s3, 7
                  srai         t3, s10, 30
                  bgeu         s0, t4, 1547f
                  sub          s0, t4, a1
1531:             bgeu         t1, a4, 1532f
1532:             srl          sp, sp, a3
                  andi         s6, tp, 651
                  bge          a6, s4, 1542f
                  la           a6, region_0+1655 #start riscv_load_store_rand_instr_stream_10
                  sb           a5, -234(a6)
                  srai         t6, sp, 28
                  lbu          t4, -186(a6)
                  andi         a0, s6, -239
                  lb           tp, 70(a6)
                  lbu          t6, -162(a6)
                  sltiu        t2, s1, 1335
                  nop
                  addi         gp, sp, 283
                  and          t5, t2, gp
                  sb           zero, -177(a6)
                  lh           a3, 55(a6)
                  lbu          s7, -194(a6)
                  lbu          t2, -17(a6)
                  lbu          s7, 105(a6)
                  slti         t3, s7, 62
                  lbu          ra, 142(a6)
                  lb           s5, 246(a6)
                  lui          ra, 179345
                  lb           a1, -241(a6)
                  or           s6, s2, a0
                  sb           a4, -255(a6)
                  slt          s7, s3, t5
                  lb           a4, 96(a6)
                  srl          t2, a2, a5
                  sb           a2, -110(a6) #end riscv_load_store_rand_instr_stream_10
                  blt          s8, s1, 1550f
                  bge          t2, ra, 1539f
                  srl          zero, s0, a0
                  srai         t6, a2, 27
1539:             bgeu         a4, s8, 1550f
                  slli         t3, t5, 18
                  srli         s9, s8, 11
1542:             xor          t6, a5, t4
                  sltu         sp, t3, ra
                  bge          s9, s10, 1564f
                  auipc        tp, 567487
                  lui          a1, 985545
1547:             srli         gp, s7, 24
                  bgeu         a3, s3, 1549f
1549:             srl          s6, t5, t4
1550:             sra          t1, s1, a4
                  blt          s1, t2, 1570f
                  add          s11, s7, sp
                  srl          s0, t1, s10
                  lui          a3, 1007278
                  sltiu        gp, zero, -1309
                  nop
                  addi         t2, t6, 1104
                  beq          s5, s5, 1576f
                  slt          a1, ra, t3
                  srli         tp, t0, 31
                  xor          s2, a5, sp
                  bgeu         s7, s10, 1581f
                  sra          a3, t6, a3
1564:             xor          s7, tp, s4
                  slt          t5, ra, s8
                  xor          s7, a5, a0
                  srl          s9, s8, t4
                  bge          s4, s5, 1582f
                  sll          s6, t6, t1
1570:             sra          zero, tp, t3
                  xor          s3, s4, a1
                  and          gp, s6, t2
                  and          t0, s7, s11
                  srli         a1, s3, 27
                  slti         a7, a3, 834
1576:             blt          s11, t5, 1577f
1577:             bgeu         s9, s8, 1578f
1578:             blt          tp, a2, 1595f
                  sltiu        t5, t6, -1081
                  sltu         s3, t4, t2
1581:             xor          s11, a2, ra
1582:             blt          ra, s8, 1601f
                  srl          s11, s6, s0
                  addi         s11, s1, -928
                  srl          s0, a4, s3
                  slt          a6, s6, zero
                  add          a3, t0, gp
                  slli         s6, t3, 11
                  sltiu        t0, gp, -1272
                  ori          s5, a7, 1026
                  or           t5, a5, zero
                  andi         s2, s5, -1615
                  xori         t2, s4, -931
                  srl          s9, tp, zero
1595:             slti         s9, s1, -1372
                  ori          t0, a1, -2041
                  beq          a6, ra, 1599f
                  bne          tp, a0, 1605f
1599:             sll          s11, ra, t4
                  sll          s5, a1, ra
1601:             slti         s2, zero, 306
                  auipc        t6, 782607
                  beq          a7, s11, 1621f
                  andi         t1, a0, 182
1605:             add          s9, t5, a2
                  srai         s3, t0, 21
                  ori          s0, s2, 1588
                  slli         gp, zero, 31
                  slt          zero, sp, a7
                  sltu         t5, a1, t3
                  bgeu         a3, t6, 1619f
                  srai         a7, tp, 8
                  sub          s4, s2, a6
                  slt          s8, s0, s4
                  sra          a3, t2, t2
                  srli         t1, s10, 18
                  xor          a4, a2, s8
                  auipc        t2, 425143
1619:             srai         s1, s3, 21
                  xor          s2, zero, gp
1621:             nop
                  bltu         gp, zero, 1626f
                  bltu         a7, ra, 1641f
                  add          s8, s7, a7
                  slt          t6, a5, t6
1626:             sra          s9, s4, t4
                  auipc        a3, 902070
                  srli         s9, t2, 7
                  bltu         s3, t0, 1635f
                  or           s6, ra, t5
                  bne          a0, a5, 1650f
                  or           s1, s4, s0
                  blt          s6, t6, 1642f
                  bltu         sp, a6, 1637f
1635:             bne          t6, zero, 1650f
                  sll          a1, sp, s7
1637:             sll          t5, s5, t3
                  bltu         s5, s9, 1645f
                  bne          s7, ra, 1644f
                  bne          s6, gp, 1643f
1641:             sltiu        t4, a6, -1945
1642:             andi         s1, a7, -1050
1643:             bltu         s5, t0, 1651f
1644:             sltiu        t0, s0, -238
1645:             bge          a0, sp, 1655f
                  xori         s6, s0, 56
                  auipc        s4, 257863
                  sra          s0, a7, a2
                  beq          t6, t5, 1657f
1650:             add          t0, s6, t3
1651:             ori          s9, t6, 1882
                  and          t4, s7, zero
                  sll          tp, sp, t2
                  bge          t2, a5, 1665f
1655:             sub          s0, t1, a7
                  and          s0, s6, t5
1657:             ori          a0, tp, 159
                  beq          s8, t2, 1666f
                  sltiu        t4, s0, -1182
                  srai         s2, a7, 12
                  sra          s9, t3, s7
                  bgeu         a6, s6, 1666f
                  sltiu        a0, s8, -429
                  slti         a3, zero, 677
1665:             slli         t2, s8, 10
1666:             srli         t4, a7, 2
                  sra          s6, s2, t4
                  slti         a6, t4, -2002
                  slli         s6, s4, 5
                  lw           ra, 4(a5)
                  ori          t1, tp, -1374
                  addi         a5, a5, 20
                  srl          s5, t4, a1
2206:             addi x5, x1, 0
2206:             jalr x5, x5, 0
sub_8:            auipc        a6, 428510
                  bgeu         s6, s0, sub_8_stack_p
                  xori         s7, t2, -261
                  andi         gp, s4, 1362
                  and          s11, sp, ra
sub_8_stack_p:    addi         a5, a5, -56
                  sw           ra, 4(a5)
                  slt          t0, t2, t6
                  ori          gp, s4, -1776
                  xori         t3, t3, 1247
                  sltiu        s1, a4, -335
                  auipc        s5, 572943
                  sltiu        a4, t5, -1352
                  sll          s5, a7, ra
                  ori          t0, s6, 1754
                  bne          t3, s7, 18f
                  bltu         s3, s4, 9f
                  ori          t3, s10, -1483
                  slli         a0, s8, 0
9:                lui          s4, 196850
                  sltiu        a6, s7, -703
                  sra          t4, s11, s0
                  bgeu         s9, s7, 18f
                  or           zero, a5, a5
                  xori         t3, s8, 1335
                  bgeu         ra, s11, 18f
                  bne          a2, a7, 18f
                  srai         t2, gp, 1
18:               srl          s6, s11, s9
                  slli         zero, s9, 25
                  lw           ra, 4(a5)
                  auipc        gp, 575182
                  srli         s11, a1, 22
                  addi         a5, a5, 56
                  xor          s0, s10, s6
35:               addi x11, x1, 1
35:               jalr x11, x11, 0
sub_1:            blt          s10, gp, sub_1_stack_p
                  sra          s6, t4, s8
sub_1_stack_p:    addi         a5, a5, -12
                  sw           ra, 4(a5)
                  lui          a4, 693585
                  xori         a6, t3, 541
                  blt          a6, sp, 16f
                  bltu         ra, s9, 8f
                  auipc        tp, 95548
                  ori          a0, s1, -311
                  auipc        s8, 8390
                  sra          t2, s4, t2
                  sra          t5, tp, s6
                  sll          s0, t6, s5
8:                bgeu         s7, t0, 16f
                  blt          zero, t4, 16f
                  sll          t1, ra, s9
                  slt          a3, s5, a1
                  sub          s0, s0, gp
                  lui          s1, 1022442
                  and          s3, s0, zero
                  srl          s3, a0, a5
16:               slli         s1, s1, 28
                  srli         s6, a6, 31
                  lw           ra, 4(a5)
                  and          s4, a7, a5
                  auipc        t5, 254416
                  slti         t1, a6, -1671
                  xor          s11, ra, t1
                  addi         a5, a5, 12
                  slli         t1, t0, 6
                  nop
                  sltu         a0, s4, a1
33:               addi x1, x1, 1
33:               jalr x1, x1, 0
sub_2:            blt          a0, s5, sub_2_stack_p
                  srai         t2, t0, 28
sub_2_stack_p:    addi         a5, a5, -32
                  sltiu        a0, s11, 528
                  sw           ra, 4(a5)
                  ori          s2, s2, 755
                  and          s11, a3, s2
                  lui          t3, 683023
                  nop
                  la           t1, sub_4
                  sltu         a6, a0, s6
                  slli         t4, ra, 31
                  addi         t1, t1, -318
                  sltu         gp, t0, s9
                  sll          t4, sp, s6
                  sub          zero, s1, a2
sub_2_j5:         jalr         ra, t1, 319 #jump sub_2 -> sub_4
                  srai         tp, t6, 11
                  srai         t2, t0, 8
                  or           s7, t2, s11
                  addi         a7, t6, 667
                  addi         s7, ra, -1508
                  addi         t4, a7, 100
sub_2_j6:         jal          ra, sub_4 #jump sub_2 -> sub_4
                  sltiu        s2, t6, 699
                  bge          a7, t5, 13f
                  sub          s3, a5, s4
                  bge          s6, s11, 13f
                  nop
                  addi         t5, s8, -1279
                  nop
                  or           s0, a6, t3
                  slt          ra, t3, s9
                  xor          t2, t1, s7
                  xor          t2, gp, zero
                  sll          s7, t6, s7
                  andi         s7, s5, -1680
13:               nop
                  sltu         s11, tp, tp
                  srai         a3, gp, 3
                  slt          s7, a4, t4
                  lw           ra, 4(a5)
                  xor          t0, s5, ra
                  andi         s7, a5, 1759
                  addi         a5, a5, 32
                  srai         t4, sp, 11
46:               addi x19, x1, 1
46:               jalr x19, x19, 0
sub_5:            sub          a3, t4, zero
                  addi         a5, a5, -60
                  xori         s1, t3, 1317
                  lui          zero, 765476
                  sw           ra, 4(a5)
                  slli         a6, s6, 7
                  sltu         s2, s9, s0
                  sll          gp, t6, a6
                  sltiu        gp, s5, -1810
                  la           t0, sub_6
                  addi         t0, t0, -798
                  xor          a6, s8, a2
                  ori          t5, s10, 885
                  addi         a7, a7, 62
                  xori         sp, a0, 984
                  sltu         t2, sp, s0
                  xori         a7, s5, -1268
sub_5_j8:         jalr         ra, t0, 799 #jump sub_5 -> sub_6
                  addi         sp, a0, 1862
                  bge          a4, s11, sub_5_j9 #branch to jump instr
                  xori         t0, a3, 14
                  sltiu        gp, a3, 710
                  sra          tp, a3, sp
                  srai         t5, t4, 6
                  xori         s11, a0, -887
sub_5_j9:         jal          ra, sub_7 #jump sub_5 -> sub_7
                  sltiu        ra, t0, -878
                  andi         t2, s7, 1375
                  bltu         t2, s0, 10f
                  and          s5, a5, gp
                  add          a7, tp, s3
                  lui          a0, 18301
                  bne          a0, s11, 10f
                  bltu         s6, t2, 10f
                  andi         s4, zero, 1066
                  beq          s8, s4, 10f
10:               and          t5, t6, t4
                  lw           ra, 4(a5)
                  xori         tp, t1, 1677
                  sltu         s9, t2, t2
                  slli         t5, a7, 7
                  addi         a5, a5, 60
                  srl          t0, s4, t0
                  xori         s1, s6, -842
44:               addi x27, x1, 1
44:               jalr x27, x27, 0
sub_10:           addi         a5, a5, -12
                  ori          gp, tp, -922
                  xor          gp, s9, a6
                  xor          tp, t6, a7
                  add          a0, a6, a6
                  sw           ra, 4(a5)
                  and          s6, s6, a3
                  la           sp, region_1+1861 #start riscv_load_store_rand_instr_stream_0
                  lbu          t5, -2(sp)
                  sltu         s7, s1, s7
                  sltu         t3, t4, t1
                  and          t3, a6, a2
                  sll          s11, a2, s2
                  lb           s8, -55(sp)
                  lw           s0, 11(sp)
                  lb           a0, 10(sp)
                  lb           t2, 60(sp)
                  auipc        s8, 379803
                  sll          s11, s10, a3
                  srli         a3, tp, 23
                  sltiu        s7, zero, -1626
                  sb           t3, -26(sp)
                  ori          t2, ra, 26
                  lbu          a7, -2(sp)
                  srl          s4, a3, a7
                  lbu          a3, -38(sp)
                  sra          s0, sp, a3
                  xor          t1, s2, t3
                  sltu         s3, a4, s8
                  lbu          a0, -6(sp)
                  sll          t3, a0, s1
                  slli         ra, a0, 2
                  lb           t6, -59(sp)
                  sltiu        s2, s6, -242
                  xor          s1, ra, t4
                  sh           a0, -11(sp)
                  sb           s3, 64(sp)
                  lhu          a6, -23(sp)
                  slt          a3, s8, s3
                  xori         s8, s6, -1186
                  sltu         t0, t4, a1
                  addi         t5, t2, 624
                  sb           s8, 4(sp) #end riscv_load_store_rand_instr_stream_0
                  nop
                  and          t4, a2, s11
                  and          a4, a1, s7
                  srl          s5, sp, a6
                  blt          tp, t3, 13f
                  sub          s9, s1, s10
                  sll          a6, s9, zero
                  slli         s1, s11, 18
                  xori         t3, t0, -1596
                  nop
                  sltu         a3, t1, a0
                  sltiu        t0, t2, -566
                  sll          t1, zero, s10
13:               lui          s1, 546564
                  slti         t0, s11, 710
                  bgeu         t5, a2, 32f
                  auipc        a1, 58147
                  bgeu         zero, s3, 22f
                  sub          s7, ra, s6
                  slt          a0, a2, s10
                  add          ra, s6, s1
                  bge          s5, s7, 33f
22:               bne          t2, s7, 24f
                  xori         a3, s4, 1776
24:               slti         t5, t4, -34
                  bgeu         s5, s4, 39f
                  and          t6, s2, a1
                  sltu         t0, a2, s6
                  sltiu        t5, s5, 474
                  sltu         a7, s0, a7
                  bltu         a4, s1, 41f
                  sltu         a3, t2, a2
32:               addi         t6, s3, -710
33:               ori          a7, a4, 1832
                  andi         s6, zero, -295
                  sra          s0, a1, a3
                  sub          s11, s10, a3
                  addi         s8, s11, -1581
                  and          tp, zero, a3
39:               bgeu         s10, t1, 44f
                  and          t3, t0, s5
41:               sub          a0, s4, t3
                  nop
                  bgeu         t2, ra, 49f
44:               or           a6, t1, a3
                  slti         zero, tp, 929
                  sltiu        gp, s8, -185
                  xori         ra, a4, 233
                  beq          a3, t1, 50f
49:               xori         a3, s3, -979
50:               bgeu         s4, a1, 59f
                  bgeu         t4, a1, 63f
                  ori          a3, s11, 488
                  xor          sp, t1, a1
                  addi         t5, t6, -1906
                  bltu         a5, s1, 62f
                  srl          t0, s10, s3
                  and          a0, s10, s5
                  add          t2, s11, t0
59:               ori          t3, s6, 133
                  srai         tp, t6, 27
                  nop
62:               addi         s2, t2, 310
63:               slli         s2, a5, 13
                  sra          s7, a2, a2
                  auipc        sp, 558528
                  sra          t1, t6, s5
                  srai         s8, t3, 27
                  ori          sp, ra, 710
                  sltiu        zero, t0, -1905
                  bltu         a1, t4, 72f
                  nop
72:               srai         a7, s4, 31
                  ori          zero, t5, -1240
                  lui          a7, 983320
                  xori         ra, s10, 1968
                  slt          a1, t4, s6
                  bltu         a7, s0, 81f
                  andi         a7, t0, 996
                  andi         s9, t4, -1358
                  and          a0, a6, a1
81:               sll          s8, s10, s1
                  bne          s6, s6, 86f
                  srai         t3, a2, 12
                  xori         s0, zero, -451
                  sltiu        a6, s10, 651
86:               srai         sp, s11, 18
                  srai         t6, t2, 29
                  blt          s10, t0, 107f
                  beq          s4, a1, 90f
90:               ori          gp, s6, -711
                  nop
                  ori          t2, t4, 227
                  srli         s2, t0, 23
                  bne          s5, s8, 97f
                  beq          zero, s11, 106f
                  auipc        s8, 1009043
97:               auipc        a1, 382559
                  srai         s11, s1, 28
                  slt          t0, a5, s10
                  addi         s11, s5, -91
                  sll          t4, s5, a0
                  slti         s3, s7, -1369
                  beq          zero, gp, 120f
                  slli         s4, t5, 11
                  auipc        a7, 969772
106:              bgeu         t4, s4, 112f
107:              andi         a3, s10, -629
                  slti         t6, t0, 2026
                  xori         s7, a3, -280
                  blt          a3, s7, 120f
                  sra          t1, a5, s0
112:              srl          s11, a0, s4
                  slt          t2, s6, t5
                  sra          t6, a3, t1
                  sltiu        s0, s0, 1255
                  ori          s0, a2, 660
                  slt          t0, s7, a6
                  or           s8, t3, t3
                  sra          s3, s9, a0
120:              or           s3, s10, t3
                  addi         a7, s4, -667
                  srl          s4, s1, t0
                  slti         s1, sp, 141
                  and          s3, a4, a0
                  add          gp, s2, a0
                  bge          s3, t5, 132f
                  bge          s5, t5, 132f
                  slti         s8, t1, -1575
                  nop
                  bge          a4, t4, 132f
                  and          s7, t3, s0
132:              and          tp, t5, zero
                  lw           ra, 4(a5)
                  slt          sp, a1, a0
                  sltu         s3, a1, s0
                  andi         a6, s9, -1114
                  addi         a5, a5, 12
                  nop
                  xori         a4, t5, -840
                  auipc        s4, 609581
                  srai         sp, s9, 9
185:              addi x30, x1, 0
185:              jalr x30, x30, 0
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
.word 0x60bc6803, 0xfd0d3e99, 0x4f50411b, 0x8081cb16, 0xb71bbf53, 0x076ebaf5, 0xb9145ae8, 0x08bcfd0f
.word 0xaff2d75a, 0x8aad1859, 0x0e129146, 0x41b63d5b, 0x278ebf68, 0x9b8bfcbd, 0x4467c4c4, 0x5792ea97
.word 0x7c639514, 0xa01420f5, 0xa1cbed95, 0x9521c4f1, 0xa1b7f1a7, 0xd2098d80, 0x08995299, 0x907c2ee5
.word 0x66c02ed8, 0xc9f66898, 0x0b1863f3, 0x3461c255, 0x15ec63d8, 0xd68df15a, 0x909bde80, 0xf8d88b2a
.word 0xfc77be39, 0x4db24080, 0x423e5c23, 0x72a6dcd3, 0x332e5fea, 0xcf0da268, 0x231a6c22, 0x6a2b5ce4
.word 0xd640b5c2, 0xc3fa81ff, 0x2448c211, 0x5e95e85c, 0x0f19fd4c, 0x5e10fd5f, 0x194a380a, 0xb6f85117
.word 0x60f95370, 0x5a77ad5f, 0xc82705f8, 0xf6a9caa5, 0xa95ee953, 0xd3b554f2, 0xaedfa0fa, 0x8c56f868
.word 0x559497f0, 0xba7332ae, 0xf6cbf82f, 0x26c906a5, 0xb1d22457, 0xfa570065, 0x5972345b, 0xd399baa3
.word 0xf48bee76, 0x0ca70af5, 0x9547e84f, 0x08e48d81, 0x34b4224a, 0x12c21480, 0x5bd5d885, 0xdc10d106
.word 0xebd3288f, 0xf9a5111a, 0x505ae073, 0x26fd1e4f, 0xc4c82ac4, 0x4a64fd0f, 0x1a2f39d6, 0xc2ab061a
.word 0x48689901, 0x5b4f93d0, 0x6813a6b4, 0xa067e630, 0xfd3a197e, 0xadb50547, 0x0f9cc8c2, 0xa4ca8822
.word 0xc000b937, 0x05c1fe67, 0xb7756cf1, 0x7217d2b7, 0xb7667d9c, 0x93267c0d, 0x393e5b7c, 0xc0a18e82
.word 0x5eaa7c49, 0x5afb22b1, 0x3c48e443, 0xff4e27cd, 0x6b52fa4e, 0x9086c798, 0x9c0302fe, 0x20784410
.word 0xbd32def5, 0x94e59739, 0x0c76a9d1, 0xd7894f8b, 0x386077bf, 0xdf69b6e9, 0x637f9ab7, 0x660bb35c
.word 0x08795198, 0x5ba582a6, 0xafbb8f24, 0xb1c14213, 0xf31c591f, 0xae1572ec, 0x0e6ccc63, 0x584ff536
.word 0x9642a153, 0xc8590861, 0x6c2843a2, 0xffcf0b2e, 0x03e43ddd, 0x5a6680d4, 0x3f5ece7a, 0x4a9a74d4
.word 0xea16cd36, 0x43d08a19, 0xe3a35075, 0x94c6a4d1, 0xc517d04a, 0x6fcf2dea, 0x0d3ee2ad, 0xae7ca53d
.word 0xa1b63905, 0xe71d7799, 0x8b8fd758, 0x24e46e41, 0x75f6f71a, 0xfb62f1b8, 0x8f6a09e1, 0xb725e231
.word 0xd38c958b, 0xfc409306, 0x7d5b0a92, 0xa453cdb7, 0x65000ef2, 0x18736c48, 0x80c648a6, 0x8e6380d1
.word 0xbf985e45, 0x7dafa20c, 0x3254f83b, 0x68379f11, 0x97f30437, 0xf6b05d7a, 0x38aad719, 0x2aa5d2ab
.word 0xc291bcc8, 0x45383c8a, 0x5908bc86, 0x8e42b3ce, 0x12df0983, 0xddaa3b35, 0xc4593331, 0x6e17fad6
.word 0xe1d1e13f, 0xd4666e95, 0xff412066, 0xd6e8e60e, 0x0219cf2a, 0xc8d1cdb0, 0x404f3806, 0x180065dc
.word 0x0a848e6f, 0x6a388b76, 0x4c501fad, 0x01e76ce2, 0xb396a59f, 0x8fe4c9dc, 0x1783e8f7, 0x1a64a546
.word 0xb6ddb47a, 0xf2417d6b, 0x544fe06f, 0xadc7803a, 0xecd478bd, 0xb88e3562, 0x6a0dbdca, 0xaa0d8092
.word 0x4589921f, 0x13ab3321, 0xf0b4db58, 0x69708038, 0xbc17279c, 0xe418e9df, 0xe9d4489d, 0xaba0a694
.word 0x22e62b41, 0xf533c7a5, 0x73569724, 0x04456b23, 0x52d62b3e, 0x373c2d67, 0x31ca7356, 0xc999b570
.word 0xc11fc8d3, 0x91cd0a77, 0x76d1bf43, 0xc6a50941, 0xcaaaae08, 0xdaad984c, 0x45e5ca53, 0xa1e82e27
.word 0x792ae9b9, 0xf5609612, 0x26a45c7f, 0x81396236, 0x8ccdd071, 0x1afc1faa, 0x92c10c29, 0xd621908a
.word 0xfb3c39b1, 0x918e5203, 0xb8612695, 0xda961cc8, 0x6609fd66, 0x43079752, 0x0b1bb028, 0x47af3b6c
.word 0x5c5625dd, 0x156dc5a5, 0x93d81d80, 0x704c0242, 0xa57792de, 0x534da8e8, 0xf41a05ba, 0x6af5fbae
.word 0xb08f89fc, 0x10addf0c, 0xa7a1129b, 0xc48bede2, 0x73799450, 0xbe85bc12, 0xfedae352, 0x8c1399c4
.word 0x2b1e2afa, 0xb93597b8, 0xd64fe6cf, 0x7fb85b40, 0x2cef5e7c, 0x18764af1, 0x92ac2faa, 0xc14561b4
.word 0x0a3989bc, 0x6cf1eca6, 0x0f6617e2, 0xae16b81a, 0x3da28e8f, 0x2fe7ecf2, 0xa57324e0, 0x0d32bc62
.word 0xb9d6affb, 0xa04d0807, 0xb58a3d97, 0xd4a6bf18, 0x6cc45380, 0x6ee65347, 0x7e44e415, 0xfe3eca96
.word 0x0653c0a4, 0xa55bcd95, 0x76cc2a98, 0x6a77a650, 0x42a5343b, 0x9bbb72bf, 0x53a79cb6, 0x4e0f0f58
.word 0xba8bb801, 0xefb69981, 0x03401403, 0x4f8a0252, 0x003c8d15, 0x05f2885e, 0x516a9660, 0x3a820df0
.word 0x49c104c5, 0x0bc28575, 0x7a82f608, 0x78eb1d77, 0x1b3f0af6, 0xdca5b1a5, 0xbbeac4e5, 0x7a6ee6de
.word 0x903f716c, 0x04716758, 0x71c68b4f, 0x1e418fb4, 0x53c8f187, 0x075a9465, 0xf0c756c2, 0xd20f22f9
.word 0xab9ecac3, 0x4d9831ce, 0x6dccd39f, 0xac387a04, 0x42781bbe, 0x8297119b, 0x83df9cfa, 0x8e21764a
.word 0x38b6437a, 0x5087573f, 0x3933e8df, 0x9dd3ebd7, 0x6e014c22, 0xac301dd1, 0x4ce97fa9, 0x05538994
.word 0x36b42669, 0x92a0dee3, 0x6571d5c1, 0x86b3c355, 0xe7d769a2, 0x92266970, 0xc28c84ef, 0x106cebc1
.word 0x3ad763b3, 0x9b546e02, 0x2d4296d4, 0xf1c97ea8, 0xc1c301c1, 0x9c3733b8, 0x6da214c7, 0xaefeb247
.word 0x980ba487, 0x6bf279e0, 0xc09eaf07, 0xf935907c, 0x30558644, 0x92e78a6e, 0xc1dfba24, 0x37af6eb4
.word 0x00032d3d, 0xe9c0ee27, 0x4058cf5f, 0x676a3762, 0x33c71dfe, 0xce2bd9ef, 0xe23b7c50, 0x0c0f1d0c
.word 0x3891a96e, 0x33a30768, 0x4221ab13, 0x50dab11e, 0x1450d76f, 0x3d95fcff, 0xf7fe7f1e, 0x3c4a2c29
.word 0x8bec896e, 0xfa66a793, 0xe1f78b77, 0x5f3aa0e9, 0x3a24c6a4, 0x951150d2, 0xc1ec7bae, 0x8e9ea9d6
.word 0x8717fba5, 0xff6adc24, 0x1362dc0f, 0xefd1709b, 0x91a3515c, 0xc86006c0, 0x552cf77d, 0xfedf50b8
.word 0x613263d1, 0xba6a19c7, 0x5078c317, 0x5475007b, 0x1cadc124, 0xe6b5dc54, 0xf46c4c17, 0x63f15b3f
.word 0x024c7be2, 0x5363d640, 0x5d6bc92c, 0x236cbcd1, 0xe1bd7f24, 0x3b07b404, 0xbd7a15ef, 0xd7b645de
.word 0xa193eeaa, 0x479c2031, 0x98366aba, 0x55b5288f, 0x32643eb1, 0xa58b1784, 0x6e572617, 0xc8fd7942
.word 0x6fe7c5e5, 0x82f0e14a, 0x01d2e135, 0xf1d68f1a, 0xe2165192, 0x7fdfbb2b, 0xf0f645f5, 0x315a2790
.word 0xa0266717, 0xc172b003, 0x0127e912, 0x0c2aebbe, 0x728cdb0f, 0x16a4c428, 0x6ba00edd, 0xa184f06c
.word 0x2120ea7b, 0x5813e4a8, 0x2abcbe26, 0x63953b38, 0x43b967cf, 0xc77fd812, 0x61d0c64a, 0xeaac87c0
.word 0xed016f69, 0xf0d0af35, 0x10a8579a, 0x2173748e, 0x46f12513, 0xecc7d7a6, 0x03c4285e, 0x91abeac3
.word 0xe0738aac, 0xe7a6c391, 0xfc7e41b8, 0x704375ad, 0x08fd07da, 0x2779c90f, 0x86b7a37f, 0xc057886b
.word 0xb89e1832, 0x8d5388bb, 0xb09267f2, 0x09e1eee8, 0xedd6d83c, 0xf3e4a69e, 0x6a5a271f, 0xde5583d9
.word 0xb4188727, 0x891f9ee6, 0x69e3ae51, 0x68be7131, 0x404b9bde, 0x6a9e0080, 0x1646f183, 0x47c4cb9a
.word 0x880d29af, 0xc60b08db, 0xf73daf7a, 0x67d01259, 0x5d9a4d2e, 0x827197fa, 0xafc565e3, 0x7e744c75
.word 0x484d1898, 0x1bab6286, 0x6e8fe210, 0xe2261495, 0xe5b3f473, 0x98093bc7, 0x0059bd49, 0xc1a67a6c
.word 0xd6276bf6, 0x833a4365, 0x3f4cd420, 0x79e7623b, 0x9cb06e49, 0x7682f4af, 0x568aea5f, 0x08a2a79c
.word 0xe46f6d49, 0x00bcf81e, 0x08c84020, 0x0e1615d7, 0x4bb80188, 0x361ccaf1, 0x98b0fa71, 0x37922fde
.word 0xb4030f30, 0x0e6e64b2, 0x1ef7edc5, 0x57ace6e6, 0x72cd2a19, 0xc38a34e8, 0x73d82c80, 0x3c7707df
.word 0x861d85e6, 0xbc69c6c1, 0x767f438d, 0xe9b18410
.section .region_1,"aw",@progbits;
region_1:
.word 0xaa603618, 0x4ffc1b1b, 0x40e42f01, 0xd4d791fc, 0xda20d020, 0x00f3a734, 0x226bccf5, 0x19f2f527
.word 0x1a3faf02, 0xf5907c5e, 0x8dd03c85, 0x1f9f199a, 0x99b84f6c, 0x5f26d08e, 0x170d12cd, 0xd66ad05f
.word 0x02039b1d, 0x213b14fb, 0xee8d6635, 0x2ebe3e0c, 0xf061367d, 0xbdd2c23b, 0xb104cf89, 0x1707d124
.word 0xdcbfa04c, 0xb64ae617, 0xef0236c6, 0x0353f016, 0x67014ab9, 0xb13654b1, 0x10aa1184, 0x836c8fb6
.word 0xce4f8bbd, 0x0c813066, 0x879c8683, 0x0288f77a, 0xc09fdfe0, 0x1e2dd342, 0x2bf07af6, 0x5a8e280b
.word 0x4b3ba1dd, 0x2807b624, 0x9561fbdd, 0x0f84e0e0, 0xd06f4b7e, 0x233b0bca, 0xb9f1be39, 0x5c019a3c
.word 0xdc5dd639, 0xad43f233, 0x2da71558, 0x7fdde7be, 0xc9ea65aa, 0x491bdad4, 0xa3c27f80, 0xe1a38e13
.word 0xfb004769, 0x2250f7af, 0x35997152, 0x7a1ce386, 0x5d9a2873, 0x54d52afe, 0x7d600244, 0xc0784c00
.word 0xf9590e97, 0xb6afa8bd, 0xe6408573, 0xa1a0ee05, 0x8751b5e7, 0xe68a9301, 0x8c09dfd1, 0xc29cfbf3
.word 0xb5b05b5e, 0xe735d9fa, 0x5b3c46e4, 0xc66a61d0, 0xaf2810fa, 0x4657f95f, 0x1f77806a, 0x3444d68c
.word 0xe684c292, 0x30eb8e23, 0x470e7493, 0xc09eb9a5, 0xce323047, 0x0b85e6ea, 0x29e58395, 0xd7ba2781
.word 0xec045ae0, 0xa91adffc, 0x6a55f021, 0x83f5fa19, 0x07b0d421, 0x9ae268f2, 0x161567ba, 0x05ceb543
.word 0xe0b6d3b3, 0x555a8e19, 0x361c35b3, 0xf7bfca3b, 0x2944887b, 0x97398c3b, 0x847fe1af, 0xf3c9cc42
.word 0x4886489f, 0x1aa9be65, 0x51676bcb, 0xf501be9f, 0x0755b3cb, 0xc344019d, 0x5e1b9d59, 0x9f1ecc71
.word 0x3abc69c3, 0x61f14929, 0xf4e0d860, 0x13538c4a, 0xc0358367, 0x293e6723, 0x85a533f8, 0xc777214c
.word 0xd484ef9e, 0x28e52138, 0xd7c19c4a, 0x937e1389, 0xa9695f92, 0x0de9b6c8, 0xc9cb7186, 0x7a28affb
.word 0xbd20dca8, 0x75361ebe, 0x8f0ea0d2, 0x6380ef6d, 0xe7297f32, 0x7a9ccf0d, 0x6a1725db, 0x3dd3b3f9
.word 0x6f606f58, 0xc7d2c982, 0x1eb71ebd, 0x00f5ddea, 0x3d37aca3, 0xd5c82de3, 0xb8d7309d, 0x7245cb3c
.word 0x1bc4c1e5, 0x831b7a9e, 0x0a921410, 0xd7277c42, 0xe3b82ed7, 0xd6529346, 0x36b3beca, 0x3d079b33
.word 0xbf917ee9, 0xb782edfc, 0x72cfacee, 0x523557a1, 0x3102e396, 0x98598b45, 0x2eeac3f6, 0x7db3a46e
.word 0x9e77177c, 0x5209c00e, 0x8211e996, 0xf2fd8235, 0x818452f6, 0x3e5d1915, 0x60e48dae, 0x14cd92a0
.word 0x8f0fdf2d, 0x54887b03, 0x517efab0, 0xb28c24b3, 0x61c6bd95, 0x88448af2, 0xca457dfc, 0x50fead39
.word 0x5b12023d, 0xf88ed450, 0xc1d39ddb, 0xa076b1ff, 0xb5d92134, 0x53d612b8, 0xcfc9fd7b, 0x17ddfeb7
.word 0x7f16191f, 0x6b0a2039, 0x169a1cc9, 0xadd70fb8, 0xb0ab242c, 0x78353055, 0xe46c735f, 0xadf5245b
.word 0xf9f1af25, 0x555b48f3, 0x31096df2, 0x78aa2baa, 0x37a72436, 0x72084182, 0x2b6b81ad, 0x870c5868
.word 0x48e76335, 0x42d973d1, 0x09fd4991, 0x4ef8ab34, 0x478a51e3, 0xf9d2613d, 0xd733ee83, 0xd6264ac0
.word 0x2521da19, 0x699376c5, 0xd3dced64, 0xe178b15f, 0x91a52db8, 0x7d299513, 0xbbae387a, 0x96c53190
.word 0xd710681a, 0xc9d84793, 0xbf913a73, 0xc6a23d71, 0x07803993, 0xa7ab0638, 0xf21e1f9c, 0xd264124a
.word 0x8e109fa7, 0x5eb6f602, 0xfab4fdbc, 0xd6858962, 0x8b8515f9, 0x1d267c5a, 0x50d22836, 0x767672c3
.word 0x5e0c3d8a, 0x29311598, 0xeacc9cef, 0x0550420c, 0x0f44c46b, 0x05931b51, 0x5a0c1631, 0xaa0460bb
.word 0x9dad5470, 0x8b089eb9, 0x44baaa17, 0x49ea3e3b, 0xe607e54e, 0xe20707fc, 0xd2198b03, 0x5c7ad317
.word 0xdb3605d3, 0x162bff5c, 0x0d90936a, 0xf1013aec, 0xa1cfbf56, 0x5b1e8f63, 0xcb52e89c, 0xb0f36854
.word 0xfccab910, 0xeeb00793, 0xed0d3d21, 0x36daa48d, 0x8f6b2014, 0x7fee7ef5, 0x81815f6f, 0x605e3d22
.word 0x62db0a1f, 0xbd38017e, 0x97326541, 0x3b6ca89d, 0xa5424f55, 0x70471558, 0x2bcdcbec, 0xc46d7197
.word 0xbece6a49, 0xaeb9e928, 0x4eafafbe, 0x7f157739, 0xe5247269, 0x179db754, 0x95d2599a, 0x6d218cd4
.word 0x3db78c4f, 0x4662f034, 0xd729ab11, 0x86e23d9b, 0xd092d9fc, 0xf57a0871, 0x52a0fcf0, 0x3c2b43ed
.word 0x471e2c57, 0xd7155103, 0x069e075c, 0x71a6f8d4, 0xecdd103a, 0x5f672db7, 0xfc6b40ca, 0xdb7a56e2
.word 0x4bcd5e59, 0xa00b7d8e, 0x9e35d405, 0x511d6725, 0xb408d1e2, 0xd54f2152, 0x7d7e0057, 0xd4b83d81
.word 0x3eacf349, 0x24596dde, 0xdfbd4721, 0x3bdae436, 0xd262c467, 0x144140a2, 0x3d9cfae9, 0x1b9b2e13
.word 0xeded62e0, 0x720100d2, 0xa5e01e3a, 0x7236d40c, 0xa909c605, 0x22ec9ffe, 0xc4a474d0, 0xb5f1b23d
.word 0x511f8158, 0x0340f92c, 0x28eac266, 0x84f72d55, 0xebc51f99, 0xf83b0cd0, 0x969e0c85, 0xeb12d093
.word 0xd68e8003, 0x0fa9ce26, 0x1becc614, 0xbed63e9f, 0x4513743b, 0x032e712c, 0x2e9b77e7, 0x48d05225
.word 0xc2652239, 0x5d28ce56, 0x41a807db, 0x6d9b86f0, 0x5e6f9f27, 0x34d01fe6, 0xa868e92f, 0x84058aa4
.word 0xe18a6a06, 0x8df0b36e, 0x94380852, 0x098cf604, 0x495b7392, 0x6674430a, 0x5d9ebd9d, 0x45e5938d
.word 0x636605b0, 0xca80995d, 0x64b4096e, 0x4f741b7b, 0xffc6c809, 0xa43934b3, 0x6acf1627, 0x8ecc4285
.word 0x7db5b3e7, 0xfdc62938, 0x8fb91c6a, 0x3dfe0404, 0x035a8134, 0xfbaa1d51, 0xf101b593, 0xc1e3c5d9
.word 0xeebe79b3, 0x50eb743f, 0x3123be49, 0x40de85f7, 0x94f6e6aa, 0x355732d1, 0xf07b9351, 0x166c3d73
.word 0xea20e9de, 0x54830443, 0x17b23a45, 0xbf7577bb, 0x29319467, 0xd21715a7, 0x9e6774bb, 0xe17218a3
.word 0x89b29fa3, 0x0ace1b4f, 0x582eda7d, 0x8c4c9e41, 0x225a30b1, 0xce32883f, 0xc3a9330f, 0x7a4ed4fd
.word 0x6e65909f, 0x8a86cffe, 0xeecff291, 0xa6959bee, 0x4c222231, 0x25ca25aa, 0x4e3db7b4, 0x6c0526a2
.word 0x13bf97e8, 0xf296b4f7, 0xb1fbf31f, 0x1d7a21b4, 0xc8dfddf8, 0xa2f15f12, 0x7227a990, 0xf7fcc227
.word 0x21c0d53e, 0x60309303, 0x97ffd6b2, 0xae37cecb, 0x240ad639, 0x8d6ac0f0, 0x1b0b1474, 0x37d99d37
.word 0x9c7bef59, 0x6f25b682, 0x56a11794, 0x6d9f656d, 0xbad8ba07, 0xba52dae8, 0xc1375353, 0x38b7fafd
.word 0x31e2a8a9, 0xc504c68a, 0xcc29cbbf, 0x3c308952, 0xcec57d80, 0x7dc71dbe, 0x4471a480, 0x2a1e657f
.word 0xe4ee1bfb, 0xdcf9ce9b, 0x5dc299fe, 0x3251d77d, 0x5844d14c, 0xd72a827a, 0x403e8f24, 0x7af0349b
.word 0x7b02cca3, 0xe4b34945, 0xee33bc4d, 0x4e878409, 0x84864f70, 0x24d0288c, 0xf8f102d5, 0x8e755b23
.word 0x2295814b, 0x416c8b97, 0x483d7e95, 0x4bd0c8fa, 0x5a680138, 0xc1826253, 0x19b6814c, 0xebd24ec6
.word 0x0fa8ff74, 0x5e9a2412, 0xba26a845, 0x1945b5df, 0xee93345f, 0xaf8b27da, 0x04305348, 0x07660df0
.word 0xebddb68b, 0x3d323497, 0x81a73ba0, 0xc04f83ea, 0x3b353034, 0x80b84d40, 0x03fdf49e, 0x05b4eb63
.word 0x4430d066, 0xd390e723, 0x2f5e9a1a, 0x6f3ee20e, 0xcafd4145, 0x8eb51133, 0x34809316, 0x71437d22
.word 0xbb332efa, 0x94f8730a, 0x3ce1cda0, 0x07cb5ac8, 0xe159abbf, 0x757e6e83, 0xa30697a0, 0x6c252b1e
.word 0xebefc2cc, 0xb26cee40, 0x2b235cb4, 0x3bf61169, 0xc812cc11, 0x6f6d1ae8, 0x93e4008a, 0xd96d9c3d
.word 0x4cc03196, 0x0fdb8991, 0x06a37dbe, 0x6c75c8da
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
                  add x26, x15, zero
                  csrr x7, 0x300 # MSTATUS
                  csrr x7, 0x342 # MCAUSE
                  srli x7, x7, 31
                  bne x7, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x7, 0x341 # MEPC
                  csrr x7, 0x342 # MCAUSE
                  li x9, 0x3 # BREAKPOINT
                  beq x7, x9, ebreak_handler
                  li x9, 0x8 # ECALL_UMODE
                  beq x7, x9, ecall_handler
                  li x9, 0x9 # ECALL_SMODE
                  beq x7, x9, ecall_handler
                  li x9, 0xb # ECALL_MMODE
                  beq x7, x9, ecall_handler
                  li x9, 0x1
                  beq x7, x9, instr_fault_handler
                  li x9, 0x5
                  beq x7, x9, load_fault_handler
                  li x9, 0x7
                  beq x7, x9, store_fault_handler
                  li x9, 0xc
                  beq x7, x9, pt_fault_handler
                  li x9, 0xd
                  beq x7, x9, pt_fault_handler
                  li x9, 0xf
                  beq x7, x9, pt_fault_handler
                  li x9, 0x2 # ILLEGAL_INSTRUCTION
                  beq x7, x9, illegal_instr_handler
                  csrr x9, 0x343 # MTVAL
                  1: la x12, test_done
                  jalr x1, x12, 0

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
                  la x12, write_tohost
                  jalr x0, x12, 0

instr_fault_handler:
                  add x15, x26, zero
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
                  add x15, x26, zero
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
                  add x15, x26, zero
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
                  csrr  x7, 0x341
                  addi  x7, x7, 4
                  csrw  0x341, x7
                  add x15, x26, zero
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
                  csrr  x7, 0x341
                  addi  x7, x7, 4
                  csrw  0x341, x7
                  add x15, x26, zero
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
                  csrr  x7, 0x300 # MSTATUS;
                  csrr  x7, 0x304 # MIE;
                  csrr  x7, 0x344 # MIP;
                  csrrc x7, 0x344, x7 # MIP;
                  add x15, x26, zero
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
