.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x26, h0_start
jalr x0, x26, 0
h0_start:
                  li x18, 0x40000100
                  csrw 0x301, x18
kernel_sp:        
                  la x16, kernel_stack_end

trap_vec_init:    
                  la x18, mtvec_handler
                  ori x18, x18, 1
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
                  li x0, 0x0
                  li x1, 0xf6080c7c
                  li x2, 0xd
                  li x3, 0xf1866aff
                  li x4, 0xe
                  li x5, 0x80000000
                  li x6, 0x6f07e00a
                  li x7, 0x91d7d1a9
                  li x8, 0x80000000
                  li x9, 0xcade31fe
                  li x10, 0x97b25bf8
                  li x11, 0x4a56e45a
                  li x12, 0x80000000
                  li x13, 0xa
                  li x14, 0x80000000
                  li x15, 0x0
                  li x17, 0x80000000
                  li x18, 0xf6cf7141
                  li x19, 0x80000000
                  li x20, 0x80000000
                  li x21, 0x80000000
                  li x22, 0x2ea494cc
                  li x23, 0x0
                  li x24, 0xce65c2cf
                  li x25, 0x9de24685
                  li x26, 0x80000000
                  li x27, 0x80000000
                  li x29, 0x80000000
                  li x30, 0x80000000
                  li x31, 0xcaf8aab0
                  la x28, user_stack_end
main:             la           t4, region_1+1735 #start riscv_load_store_rand_instr_stream_5
                  sltu         gp, s2, s2
                  add          s7, sp, zero
                  lh           a0, -3(t4)
                  sb           s2, 8(t4)
                  lbu          a7, -11(t4)
                  lbu          a3, -8(t4)
                  xor          s5, a4, s0
                  sh           s4, 3(t4)
                  lbu          s0, 8(t4)
                  srai         t1, s5, 25
                  sb           a2, 0(t4)
                  srl          s8, t3, tp
                  slt          s1, s9, t4
                  lb           s5, -10(t4)
                  lui          s1, 674214
                  addi         t1, t3, 898
                  lb           s3, -3(t4)
                  sb           zero, 14(t4)
                  andi         s3, t6, 774
                  slt          s3, a7, a2
                  xori         s9, s7, -1346
                  sb           a6, 2(t4)
                  xor          tp, a3, s5
                  lbu          s7, 12(t4)
                  lh           a3, 11(t4)
                  lw           zero, -7(t4)
                  srl          a0, t1, a3
                  add          s11, s10, t4
                  sltiu        s7, s4, -629
                  addi         s11, a4, -1574
                  andi         s3, s3, -138
                  sltiu        s7, a4, 765
                  auipc        s7, 266075
                  sltu         t2, a2, t3
                  lbu          a0, -16(t4)
                  srl          s3, a4, s6
                  sb           s5, 2(t4)
                  nop
                  xor          s0, s2, tp
                  auipc        sp, 698417
                  srai         s9, t0, 6
                  and          t0, s9, sp
                  ori          a0, a6, -1071
                  sub          s11, s3, t0
                  lbu          a3, -11(t4) #end riscv_load_store_rand_instr_stream_5
                  la           sp, region_1+16 #start riscv_load_store_rand_instr_stream_7
                  lui          s9, 862402
                  slt          a4, t6, s7
                  or           a0, t6, a5
                  sll          tp, t1, s5
                  andi         s1, a1, 300
                  nop
                  lhu          t1, 168(sp)
                  sra          s4, t2, a6
                  lb           zero, 123(sp)
                  xor          tp, a6, a7
                  lb           s6, 26(sp)
                  sub          t6, s0, a3
                  lhu          s11, 252(sp)
                  slti         t6, a7, -1129
                  lhu          gp, 142(sp)
                  lbu          a4, 249(sp)
                  lw           s1, 220(sp)
                  xori         tp, s0, -392
                  srl          tp, s9, s10
                  xor          s11, tp, s2
                  lbu          s7, 244(sp)
                  xor          t6, s6, t2
                  sub          s6, s3, tp
                  ori          zero, sp, -1193
                  addi         a7, tp, 1566
                  sb           t0, 165(sp)
                  sb           t3, 161(sp)
                  slli         t2, ra, 28
                  lbu          t1, 187(sp)
                  lbu          t2, 93(sp)
                  sb           t5, -10(sp)
                  srl          a4, s4, t6
                  srai         s5, s2, 1
                  ori          s7, a5, 1026
                  sb           t4, 33(sp)
                  sb           s6, 241(sp) #end riscv_load_store_rand_instr_stream_7
                  la           sp, region_0+790 #start riscv_load_store_rand_instr_stream_3
                  sll          zero, s0, s1
                  lb           ra, -109(sp)
                  xori         a7, s6, -1739
                  and          zero, s9, tp
                  xor          s6, s5, gp
                  srl          t2, zero, a3
                  sb           t2, 148(sp)
                  lb           a1, -199(sp)
                  sh           s8, 54(sp)
                  lh           s0, 46(sp)
                  addi         a4, s7, 432
                  slli         s2, zero, 0
                  lh           a7, -138(sp)
                  sb           a3, -225(sp)
                  lb           a7, -9(sp)
                  slti         t1, t0, -63
                  sb           s10, 157(sp)
                  lbu          a1, 153(sp)
                  srl          a2, a1, s3
                  sb           a3, 25(sp)
                  sh           s5, 20(sp)
                  andi         s0, gp, -1494
                  srai         a2, a4, 23
                  lbu          a3, -37(sp)
                  sh           a3, 198(sp)
                  and          a1, s8, t0
                  lbu          s6, 20(sp)
                  sra          t6, s2, zero
                  lb           a3, -7(sp)
                  auipc        s7, 972494
                  sb           s3, 224(sp)
                  sll          s6, a6, t4
                  sb           s4, 78(sp)
                  srli         s2, s0, 20
                  sub          s6, a7, s5
                  slli         s8, a6, 9
                  lh           a5, -232(sp) #end riscv_load_store_rand_instr_stream_3
                  la           sp, region_0+1156 #start riscv_load_store_rand_instr_stream_1
                  sb           zero, 11(sp)
                  sw           a6, 0(sp)
                  lbu          tp, -16(sp)
                  lb           a7, 7(sp)
                  lbu          s3, -1(sp)
                  sltiu        t2, a7, 302
                  sll          t6, a1, t0
                  addi         a1, s2, -1092
                  lb           zero, 14(sp)
                  sll          t6, s7, gp
                  ori          s1, s4, 329
                  sltiu        s6, s10, 1959
                  lb           t6, -15(sp)
                  sh           s0, -2(sp)
                  lbu          s6, 3(sp)
                  lb           s5, 8(sp)
                  sub          s11, t6, a7
                  lb           s4, 6(sp)
                  lh           s3, 12(sp)
                  lhu          s7, 0(sp)
                  sb           s0, 15(sp)
                  sb           s2, -13(sp)
                  lb           t0, -1(sp)
                  lhu          s6, -14(sp)
                  slt          t1, s0, a5
                  sh           zero, -6(sp)
                  sb           t0, -9(sp)
                  sw           t6, 4(sp)
                  lb           s7, 0(sp)
                  xori         a7, s9, 566
                  sb           zero, -15(sp)
                  sub          tp, t4, a0
                  lbu          zero, 9(sp)
                  sb           a1, 1(sp)
                  sb           a3, -11(sp)
                  slli         s8, a2, 11
                  sltu         a2, t2, a1
                  lbu          a7, -13(sp)
                  lhu          s11, 8(sp) #end riscv_load_store_rand_instr_stream_1
                  la           s7, region_0+1970 #start riscv_load_store_rand_instr_stream_4
                  sra          s4, s7, s5
                  lh           zero, 12(s7)
                  sw           s8, -162(s7)
                  sh           s10, -168(s7)
                  nop
                  sra          a5, ra, s9
                  lb           a7, -5(s7)
                  or           a3, t0, a1
                  lbu          t1, -41(s7)
                  lbu          a4, -57(s7)
                  andi         a3, s6, 1212
                  lb           s11, -85(s7)
                  sh           s0, 4(s7)
                  andi         sp, a7, -433
                  lb           t2, -226(s7)
                  auipc        s5, 455469
                  srai         t6, s2, 27
                  sb           sp, 21(s7)
                  lb           a5, -176(s7)
                  lui          a0, 587396
                  lw           t5, -110(s7)
                  lb           s5, -125(s7)
                  lhu          t0, -130(s7)
                  lb           t4, -238(s7)
                  sh           s8, -144(s7)
                  lh           t2, -44(s7)
                  sb           a2, -99(s7)
                  or           ra, t5, s8
                  lb           a5, -133(s7)
                  xori         t2, s3, -125
                  sb           ra, -27(s7)
                  srl          s5, s5, a6
                  slti         a0, a7, 1011
                  srl          t2, s9, t6
                  lb           a3, -139(s7)
                  srli         tp, s0, 7
                  lbu          a4, -183(s7)
                  lbu          a7, -59(s7)
                  add          zero, t2, s0
                  xori         s11, s8, 1968
                  srai         a7, s2, 1
                  sb           s10, -201(s7)
                  sll          s4, s0, a0
                  lh           gp, -106(s7)
                  lb           a0, -31(s7)
                  andi         a7, s3, 1629
                  sra          a4, s9, t3
                  xor          a2, s4, t6
                  addi         tp, a0, 301
                  slt          a3, t2, t3
                  sltu         s1, a7, tp
                  sltu         a5, sp, a5
                  lh           a3, -112(s7) #end riscv_load_store_rand_instr_stream_4
                  la           s6, region_1+514 #start riscv_load_store_rand_instr_stream_0
                  slt          a5, t0, a7
                  lb           gp, -33(s6)
                  slli         s5, t1, 5
                  and          t5, s9, a0
                  srli         a5, s4, 27
                  and          s7, t5, tp
                  sll          t1, t2, a4
                  lb           a4, -215(s6)
                  lb           s11, -10(s6)
                  sb           s9, 121(s6)
                  or           s4, s8, t4
                  lb           t2, -181(s6)
                  lb           a3, 53(s6)
                  ori          a3, s3, 738
                  sb           tp, -99(s6)
                  xori         s4, s10, 879
                  xori         gp, a3, -1536
                  sll          s7, a1, a1
                  and          s0, t2, a6
                  and          s7, a2, a0
                  lbu          zero, -246(s6)
                  lb           t2, -249(s6)
                  add          t5, t2, t5
                  sb           s0, 134(s6)
                  sb           s9, 9(s6)
                  lui          t5, 619805
                  sra          s7, a7, tp
                  sb           s6, -104(s6)
                  slli         s3, a1, 17
                  addi         zero, a6, 790
                  slti         a7, t4, 1717
                  slt          a0, t5, gp
                  sb           a7, 177(s6) #end riscv_load_store_rand_instr_stream_0
                  la           a3, region_0+771 #start riscv_load_store_rand_instr_stream_6
                  lui          t1, 536297
                  lb           a7, -11(a3)
                  lb           s1, -13(a3)
                  srli         s7, a4, 7
                  sb           s2, 3(a3)
                  ori          t5, a2, -1471
                  xor          t0, ra, s4
                  srli         s6, a0, 11
                  lbu          s6, 4(a3)
                  lbu          a0, 7(a3)
                  sb           a4, 12(a3)
                  lbu          sp, 0(a3)
                  add          t6, s6, a6
                  sltu         a7, t3, s4
                  add          sp, t2, s6
                  sltiu        sp, t4, 1046
                  sb           s3, 8(a3)
                  lhu          s5, 7(a3)
                  lb           t2, -14(a3)
                  auipc        s8, 1024566
                  sw           a7, 13(a3)
                  sb           s10, 9(a3)
                  sh           s1, 11(a3)
                  lbu          t6, -10(a3)
                  slli         s2, s5, 23
                  sb           a4, 12(a3)
                  lhu          a0, -11(a3)
                  sb           t1, 16(a3)
                  lb           s4, 16(a3)
                  lh           s1, -11(a3) #end riscv_load_store_rand_instr_stream_6
                  la           t6, region_1+1479 #start riscv_load_store_rand_instr_stream_8
                  lbu          tp, -30(t6)
                  andi         ra, tp, 1419
                  lb           a4, 57(t6)
                  lbu          s9, -20(t6)
                  lb           s0, 36(t6)
                  sltiu        a7, sp, -1292
                  sb           t5, -47(t6)
                  sltu         zero, a0, a3
                  srli         s0, t3, 22
                  slti         zero, t4, 1820
                  add          s3, s9, sp
                  sw           a6, -7(t6)
                  lbu          a1, 46(t6)
                  add          s5, a5, s5
                  sh           s9, -29(t6)
                  sb           t6, -16(t6)
                  sra          s9, s7, t2
                  auipc        t4, 753483
                  lhu          tp, 31(t6)
                  lb           s11, -10(t6)
                  lb           t0, -6(t6)
                  slli         t1, a4, 20
                  srai         s4, ra, 7
                  sb           a3, 33(t6)
                  lbu          a5, 16(t6)
                  sub          t5, s4, s5
                  sb           s9, 48(t6)
                  srli         tp, s8, 24
                  nop
                  lb           ra, 62(t6)
                  and          t0, t4, s0
                  lh           a7, 21(t6)
                  lbu          zero, 37(t6)
                  lw           s8, 5(t6)
                  lb           a4, -50(t6)
                  lbu          a4, -36(t6)
                  nop
                  sb           tp, -24(t6)
                  sw           s2, -27(t6)
                  lbu          s6, -1(t6)
                  ori          s11, s5, -447
                  lbu          t1, -30(t6)
                  lb           ra, 57(t6) #end riscv_load_store_rand_instr_stream_8
                  sub          s9, t1, a2
                  sltiu        t1, ra, -859
                  sra          s1, s11, a0
                  xor          a2, s10, sp
                  ori          a2, t4, 1251
                  bge          s9, a3, 18f
                  srli         s0, t6, 17
                  sll          s3, s8, a7
                  nop
                  sltu         t0, ra, a4
                  slt          a5, t2, t6
                  or           ra, t4, s3
                  xori         a3, s0, 1098
                  auipc        a5, 445072
                  slti         a2, a2, 1209
                  bne          a0, tp, 22f
                  slli         s6, s5, 18
                  beq          s8, a7, 24f
18:               xori         s9, s1, 613
                  andi         s4, s10, -1336
                  sltiu        a4, s5, -1879
                  xori         a2, s8, 157
22:               sltiu        s7, s7, 1640
                  ori          s3, s8, 1079
24:               bge          t1, a2, 41f
                  xori         ra, a2, -13
                  sra          a7, t2, tp
                  slt          tp, a4, t0
                  beq          s7, t2, 32f
                  blt          a5, a1, 45f
                  add          a0, s6, s10
                  srai         t1, s11, 10
32:               srai         t5, a4, 17
                  bgeu         a3, a1, 53f
                  xori         s9, t1, -1878
                  srl          a3, ra, s8
                  lui          s6, 734513
                  bge          s5, t2, 44f
                  bne          sp, a0, 48f
                  slt          a3, s7, s3
                  bne          t4, s3, 60f
41:               xor          t2, a3, sp
                  blt          t6, t5, 60f
                  srli         s0, a1, 5
44:               and          s2, s5, a0
45:               sra          a5, gp, sp
                  srai         s5, a7, 3
                  or           s2, a4, s4
48:               lui          a4, 379585
                  nop
                  nop
                  auipc        s8, 637357
                  slli         a3, s0, 11
53:               nop
                  bne          s11, tp, 69f
                  or           s11, s9, t2
                  sltu         s7, s5, t4
                  sra          ra, tp, s5
                  srl          t4, s8, s6
                  andi         s2, s7, -1479
60:               bne          s9, t6, 76f
                  nop
                  bltu         t6, s1, 68f
                  bge          s4, a0, 79f
                  auipc        sp, 923596
                  nop
                  xor          t4, a3, s1
                  ori          tp, s4, 1643
68:               andi         a1, a5, 905
69:               bltu         s2, a5, 83f
                  and          t5, tp, s0
                  blt          a3, s1, 72f
72:               andi         a5, a0, 101
                  andi         t6, s3, -912
                  sltiu        s3, a1, -97
                  bge          a6, a7, 80f
76:               add          gp, a5, t6
                  add          a1, s2, sp
                  sll          a5, s1, t2
79:               slt          s2, s1, t2
80:               srai         t0, gp, 8
                  xor          s7, a1, a2
                  xor          t5, t6, s0
83:               ori          t1, s9, 1709
                  sub          t0, a3, s5
                  slli         a4, s2, 22
                  bgeu         t4, s11, 93f
                  srli         ra, a1, 2
                  sltu         ra, ra, sp
                  auipc        ra, 582031
                  lui          t4, 309713
                  sll          s9, zero, a0
                  bltu         s2, zero, 103f
93:               addi         tp, a1, 278
                  add          s0, s6, t5
                  lui          zero, 268150
                  bltu         a1, zero, 99f
                  beq          tp, s4, 114f
                  bltu         sp, tp, 105f
99:               blt          a3, s2, 105f
                  auipc        t0, 46739
                  sltu         t0, tp, a7
                  bgeu         s6, s9, 104f
103:              bge          a6, t3, 119f
104:              xori         a0, a2, -1199
105:              lui          a0, 379167
                  auipc        gp, 226851
                  beq          s6, t5, 118f
                  slli         s1, s4, 25
                  beq          zero, s10, 119f
                  bge          tp, zero, 119f
                  add          s1, s11, s6
                  slli         s6, s10, 30
                  andi         zero, s11, 1588
114:              blt          s5, ra, 124f
                  slt          sp, s6, a0
                  beq          gp, t3, 125f
                  lui          t2, 397670
118:              sltiu        a3, s0, -1754
119:              sub          t2, s7, a2
                  add          a0, t1, s9
                  blt          ra, s4, 139f
                  sra          t4, gp, gp
                  bge          a7, a3, 137f
124:              srl          t6, t3, s9
125:              and          s6, s4, t1
                  sub          tp, t3, t2
                  lui          t5, 265356
                  sub          zero, a6, s2
                  lui          s1, 542445
                  sub          s6, s11, s6
                  sltiu        s3, a4, -962
                  slt          s3, s1, t3
                  add          s0, t1, s4
                  sltu         s7, t0, zero
                  srai         zero, zero, 16
                  andi         s8, a7, -1262
137:              sltiu        a7, sp, -294
                  bltu         a6, a2, 153f
139:              nop
                  sra          s4, s1, sp
                  nop
                  srl          ra, t0, s1
                  add          s11, a3, a0
                  slt          t2, gp, s11
                  bgeu         s8, gp, 161f
                  bne          s9, t0, 157f
                  addi         t1, s9, 1543
                  beq          s0, a0, 158f
                  bge          t5, s4, 152f
                  andi         t6, zero, -1660
                  sltu         sp, s2, sp
152:              srai         t0, a4, 4
153:              nop
                  sub          t2, s0, a4
                  add          t1, s6, t2
                  xor          s11, s11, s11
157:              andi         a4, s0, 40
158:              slt          t5, s6, t0
                  auipc        a0, 1007127
                  add          t0, s6, a4
161:              bltu         t2, s4, 174f
                  bge          a7, a4, 169f
                  lui          t4, 781354
                  slli         s1, t2, 14
                  srl          sp, tp, a5
                  slt          ra, zero, s0
                  sra          a3, s8, s5
                  sub          a5, s0, s10
169:              sll          t0, ra, zero
                  auipc        zero, 588689
                  xori         a4, s0, -1820
                  auipc        a7, 767003
                  xori         s4, a7, 1020
174:              lui          s5, 490707
                  sub          ra, sp, t4
                  xori         s1, a2, -265
                  add          s1, s3, a2
                  lui          t6, 873609
                  sll          a5, s6, a0
                  sra          t4, t5, a2
                  and          s9, s1, t0
                  lui          s3, 700293
                  add          tp, s7, a1
                  slt          t0, s10, s8
                  slt          t5, s5, s1
                  lui          ra, 779974
                  blt          t2, s10, 198f
                  sll          s0, tp, a3
                  add          s0, a7, sp
                  auipc        s1, 570076
                  bltu         gp, s7, 198f
                  bgeu         t5, s9, 209f
                  sub          sp, t0, s7
                  bge          t0, s0, 211f
                  srli         tp, t0, 23
                  bne          t3, t6, 202f
                  slti         a5, s0, 193
198:              bltu         s9, zero, 214f
                  auipc        a0, 498085
                  andi         t6, t6, 1056
                  lui          ra, 343066
202:              slli         sp, a3, 16
                  addi         ra, a3, 1761
                  bgeu         a2, s10, 220f
                  add          t2, a3, s3
                  srai         s6, s5, 18
                  sltiu        gp, ra, -988
                  bgeu         a4, a7, 215f
209:              sltu         ra, s9, s8
                  bne          sp, s8, 212f
211:              auipc        gp, 834752
212:              xori         tp, a3, -1839
                  slli         t6, s5, 3
214:              bgeu         s2, t5, 218f
215:              bgeu         s3, s1, 235f
                  auipc        s7, 272278
                  add          s5, zero, a4
218:              andi         s2, a2, 1907
                  andi         s0, sp, -1454
220:              sra          s8, t3, s5
                  blt          t5, t3, 237f
                  beq          tp, s1, 228f
                  ori          sp, a5, 999
                  xor          s7, t4, s4
                  xori         t5, t2, -1715
                  srai         s8, s11, 2
                  sub          tp, s11, a6
228:              slli         a2, tp, 21
                  xori         s2, t0, 322
                  bgeu         a7, t3, 237f
                  sra          s8, a0, a4
                  srai         t1, a2, 27
                  or           s6, a2, sp
                  srli         a0, ra, 19
235:              or           t1, t6, sp
                  sub          a1, s8, a6
237:              bge          s1, s4, 242f
                  addi         s5, s9, -1730
                  auipc        t5, 418893
                  nop
                  lui          tp, 37488
242:              addi         t2, ra, -116
                  bne          s6, t1, 253f
                  srai         s11, s2, 27
                  slti         s7, s11, 58
                  nop
                  addi         s11, s1, -1080
                  nop
                  bne          a1, gp, 250f
250:              xor          t6, t4, s5
                  sltu         s9, t3, s5
                  sltiu        s8, t6, 881
253:              auipc        t5, 489830
                  add          a5, a0, a3
                  srli         s3, a2, 28
                  bltu         s0, s9, 266f
                  addi         a4, a0, -1631
                  addi         s11, s5, -1276
                  srai         s6, s10, 28
                  xori         a5, t1, -916
                  add          a1, a6, t5
                  auipc        sp, 491649
                  bgeu         a1, a2, 270f
                  sub          s9, sp, a2
                  ori          t4, s6, -1987
266:              slli         a2, s2, 8
                  bgeu         t4, zero, 287f
                  sub          tp, t3, a5
                  sub          t2, zero, tp
270:              lui          sp, 952288
                  beq          s3, s7, 287f
                  sub          s7, a2, ra
                  sll          s5, a6, s5
                  bltu         zero, a4, 281f
                  slli         s5, s2, 20
                  slti         s2, s4, 523
                  blt          s5, zero, 291f
                  xor          sp, a2, s6
                  xori         a5, t6, 1656
                  sltiu        t1, s4, -1993
281:              srai         s6, t1, 22
                  lui          ra, 783870
                  srai         zero, s7, 25
                  lui          t5, 567195
                  blt          s9, s4, 295f
                  bgeu         tp, tp, 303f
287:              auipc        ra, 103754
                  slt          s8, s11, gp
                  sltu         a5, s5, t3
                  xor          s8, t0, s11
291:              bne          s0, t6, 309f
                  beq          s9, sp, 299f
                  xor          s5, a6, s11
                  bltu         zero, t6, 297f
295:              srl          gp, tp, gp
                  nop
297:              srai         a5, s1, 7
                  blt          a6, s11, 304f
299:              beq          s6, s10, 319f
                  srl          s6, a5, a4
                  srli         s4, s2, 15
                  bgeu         s1, sp, 313f
303:              beq          ra, a5, 310f
304:              lui          a5, 443916
                  sra          ra, zero, s2
                  bltu         a1, s11, 317f
                  srai         a3, s9, 20
                  auipc        a5, 868700
309:              slli         t2, a1, 22
310:              srli         tp, a7, 18
                  and          t4, s6, t0
                  srl          s8, s7, s1
313:              blt          tp, s3, 314f
314:              sra          s8, s8, s2
                  slti         zero, tp, 103
                  bltu         s6, sp, 329f
317:              slli         s1, s6, 17
                  srli         s9, t3, 1
319:              slti         s8, t2, 370
                  slt          a2, a7, a4
                  slti         s0, s2, -275
                  sra          s1, s6, t5
                  slli         s1, s1, 11
                  srli         a1, t5, 31
                  lui          s3, 824130
                  blt          s9, sp, 336f
                  andi         s3, a7, -1529
                  and          t1, s8, t6
329:              sra          a3, s0, a6
                  bgeu         s3, a7, 336f
                  ori          zero, s3, 1366
                  srl          s9, t3, a3
                  bltu         s10, t1, 335f
                  beq          t3, s3, 338f
335:              andi         t1, t3, -598
336:              add          ra, s4, t5
                  xori         t0, sp, 1285
338:              addi         t2, t6, -392
                  bne          s4, t0, 355f
                  or           tp, t0, tp
                  or           s7, a0, s6
                  bne          a6, ra, 359f
                  beq          sp, gp, 358f
                  srli         s4, s9, 14
                  or           tp, a4, sp
                  bltu         t2, tp, 351f
                  srli         tp, s1, 20
                  auipc        a4, 598259
                  or           s9, s7, t5
                  xor          t5, a5, s4
351:              bne          tp, t1, 371f
                  slt          a3, s9, s9
                  xor          a3, t1, gp
                  sll          a2, s2, s4
355:              srli         t5, a6, 0
                  addi         t2, a7, -1810
                  sub          s0, s5, t3
358:              lui          a7, 696658
359:              addi         s11, a0, -755
                  nop
                  auipc        s1, 669918
                  bge          zero, a2, 378f
                  blt          s5, t0, 370f
                  andi         a5, t4, -556
                  sra          s7, t1, t4
                  andi         tp, s3, 1427
                  add          zero, s2, a0
                  beq          a4, s3, 378f
                  nop
370:              or           t5, tp, zero
371:              sltu         a0, t2, gp
                  srli         t4, s4, 11
                  nop
                  sll          s9, t0, a5
                  bgeu         a4, s9, 382f
                  sra          a2, s7, s1
                  slti         a0, s9, 1399
378:              sltu         a7, s2, s4
                  srl          a7, s6, s9
                  bltu         s0, zero, 389f
                  sll          s11, s8, s6
382:              srli         s7, s6, 15
                  add          a3, gp, gp
                  sltiu        s8, t4, 18
                  sra          s5, s0, gp
                  add          a1, t5, a4
                  sltu         s0, s2, s2
                  nop
389:              sll          ra, a5, a7
                  and          s0, zero, s2
                  andi         a1, t1, 495
                  xori         s1, s2, 1348
                  ori          t5, t6, -1810
                  xor          s1, ra, tp
                  bgeu         gp, s6, 411f
                  bne          s1, tp, 413f
                  sll          a2, a5, t3
                  sll          ra, s10, t6
                  slti         t0, t6, 1802
                  srai         s1, t6, 22
                  sltiu        t1, s10, -686
                  sra          tp, a2, gp
                  xori         s3, a7, -2025
                  xori         s4, s4, -584
                  sub          s6, sp, s6
                  blt          ra, s8, 416f
                  sub          t5, s4, a4
                  bne          a3, a7, 423f
                  sra          t0, s0, t1
                  and          s3, s1, s6
411:              srai         s4, t1, 22
                  bge          s11, a5, 422f
413:              addi         sp, ra, -283
                  srl          t0, s6, s5
                  bge          t4, t1, 433f
416:              bne          t1, t2, 422f
                  sub          s2, s9, a7
                  slli         s2, s1, 6
                  auipc        sp, 913976
                  sub          s9, t1, t4
                  nop
422:              xor          s2, s11, sp
423:              srai         s11, s2, 3
                  ori          sp, zero, 1291
                  nop
                  addi         s11, s0, 1921
                  sra          s6, a5, t3
                  srai         s4, a3, 9
                  add          s0, s1, a7
                  nop
                  srli         t0, a2, 10
                  sltiu        ra, a6, -1739
433:              sub          a5, t5, a6
                  xori         s11, s1, -1017
                  sra          tp, s9, sp
                  sub          s6, a2, s6
                  bne          a1, s7, 451f
                  slli         sp, tp, 30
                  bne          t4, s3, 455f
                  sra          t2, a5, t1
                  bgeu         t6, t4, 461f
                  add          a7, t2, s5
                  add          s9, s6, sp
                  ori          s9, ra, 1679
                  lui          zero, 744079
                  andi         t6, a2, -132
                  bltu         a2, tp, 464f
                  bgeu         s0, s0, 459f
                  bge          t5, s6, 456f
                  slti         t5, s9, 1711
451:              sra          a2, s10, sp
                  blt          a1, s6, 459f
                  addi         s0, a2, 1184
                  srl          s5, a3, s0
455:              sub          s1, t0, t4
456:              bge          a2, t0, 461f
                  srl          s2, t2, a2
                  bltu         a1, s1, 471f
459:              xori         s5, a7, 1501
                  srai         a2, a3, 9
461:              xor          s1, a1, s4
                  bne          s7, zero, 464f
                  bgeu         s10, t4, 470f
464:              srli         a3, t5, 2
                  andi         s2, t1, 311
                  auipc        a0, 314307
                  add          zero, s7, s11
                  bgeu         t5, a6, 475f
                  add          a5, a7, a0
470:              lui          a0, 732727
471:              slt          s8, t0, t2
                  nop
                  add          t2, t2, t2
                  bge          t6, s11, 485f
475:              sll          a7, ra, s8
                  or           t5, s6, s1
                  srli         zero, s3, 8
                  srli         a4, sp, 19
                  sub          s11, a0, a4
                  sll          sp, t0, a0
                  bge          s3, a4, 490f
                  srl          ra, t5, a6
                  bne          s8, a1, 487f
                  beq          s5, s10, 485f
485:              lui          a4, 187399
                  bltu         s2, t3, 506f
487:              or           s1, a2, a6
                  xor          a2, s10, s10
                  bltu         t1, a7, 492f
490:              add          a1, t6, t6
                  bltu         s7, t4, 507f
492:              and          a1, sp, gp
                  addi         a7, t5, -1583
                  slli         a1, tp, 13
                  la           sp, region_0+412 #start riscv_load_store_rand_instr_stream_9
                  addi         tp, s4, 1491
                  sra          t6, a7, s10
                  lb           a1, -17(sp)
                  auipc        ra, 774368
                  xor          s4, zero, gp
                  lbu          t0, -5(sp)
                  nop
                  lbu          s6, -41(sp)
                  slt          s6, s8, gp
                  nop
                  andi         a5, a3, 683
                  lb           a2, -27(sp)
                  auipc        gp, 1029720
                  xor          t5, s9, a5
                  lb           a3, -63(sp)
                  lbu          a7, 45(sp)
                  sub          s6, ra, tp
                  lhu          t5, 54(sp)
                  sw           s3, -20(sp)
                  add          s11, t3, ra
                  nop
                  and          a5, t5, a5
                  sra          s8, a1, s0
                  add          t5, s6, a3
                  lb           s5, 62(sp)
                  ori          t5, t4, -1486
                  andi         s0, a6, -1264
                  sltu         s0, a2, a0
                  and          t0, gp, s9
                  addi         s1, s10, -413
                  xori         s4, t3, -844
                  xor          a1, t4, a5
                  sb           s10, -22(sp)
                  lb           tp, 39(sp)
                  nop
                  lui          t5, 375883
                  sb           t2, 11(sp)
                  andi         s4, a0, 638
                  add          s5, s7, a0
                  sltiu        a4, s7, -564
                  lbu          t4, -3(sp) #end riscv_load_store_rand_instr_stream_9
                  addi         s9, tp, 1616
                  bltu         s11, zero, 512f
                  bne          s0, t1, 504f
                  blt          a2, t4, 508f
                  sltu         s4, s8, s6
                  sltiu        s4, a1, 1531
                  xori         t0, ra, 1292
                  auipc        a5, 974309
                  blt          s9, s10, 509f
504:              slt          t4, a6, s9
                  xori         s11, gp, 1158
506:              sltiu        t1, t0, -903
507:              bltu         a2, s4, 523f
508:              bgeu         s10, s10, 515f
509:              add          s2, s5, s4
                  blt          a2, a0, 520f
                  slt          a2, t4, s1
512:              add          t5, t1, a7
                  bge          a5, t4, 519f
                  andi         s0, t6, 1840
515:              bne          t1, tp, 516f
516:              slli         a4, s5, 17
                  nop
                  sub          s11, sp, s5
519:              slt          a2, s10, s2
520:              srai         s7, s11, 16
                  add          s6, s6, s2
                  addi         s7, a5, -1936
523:              sub          t6, gp, s10
                  xori         s8, a3, -1061
                  bge          s1, s9, 527f
                  add          s4, t2, t0
527:              and          a3, gp, t5
                  sltiu        a5, t0, 1839
                  ori          s3, s11, -947
                  sll          s0, t0, s6
                  and          s9, s2, sp
                  sub          ra, t6, a3
                  sltiu        s0, s0, 650
                  sltiu        a4, s6, -162
                  andi         t1, a3, -520
                  sub          gp, s0, s4
                  and          a3, a5, sp
                  slti         t1, a0, 1847
                  srli         sp, zero, 15
                  ori          a7, a5, 1348
                  lui          t1, 590074
                  sll          a7, s6, sp
                  lui          zero, 866224
                  srl          t6, s10, s5
                  sub          s1, t3, s0
                  sltu         a7, s8, tp
                  la           sp, region_0+531 #start riscv_load_store_rand_instr_stream_2
                  lb           t5, -8(sp)
                  addi         s8, s1, -34
                  lb           a5, -10(sp)
                  lh           s4, -1(sp)
                  sb           s3, -16(sp)
                  sb           a2, 12(sp)
                  lhu          gp, 5(sp)
                  nop
                  sb           s4, -12(sp)
                  lbu          a2, 11(sp)
                  sb           a7, 0(sp)
                  lw           a7, -7(sp)
                  sb           s0, -2(sp)
                  lb           ra, 2(sp)
                  lh           a3, 5(sp)
                  lui          s11, 41790
                  sb           t2, 10(sp)
                  nop
                  sltiu        s9, a7, 1707
                  lb           t0, 4(sp)
                  xori         gp, sp, -572
                  xor          t6, t3, s11
                  lb           s1, -2(sp)
                  lbu          t4, 13(sp)
                  lbu          a0, 4(sp)
                  nop
                  sra          t2, a4, t5
                  sll          s9, t5, s0
                  andi         s11, s8, 300
                  lb           s9, 10(sp)
                  lhu          t0, 15(sp)
                  sll          tp, s3, t5
                  sb           a2, -5(sp)
                  addi         tp, a7, -1286
                  lbu          a4, 6(sp)
                  sub          s1, a6, s3
                  srl          t0, s11, s9
                  lbu          a3, 0(sp) #end riscv_load_store_rand_instr_stream_2
                  sll          t0, a5, t6
                  ori          a5, a6, 692
                  beq          s6, t6, 564f
                  or           t2, s8, a3
                  auipc        a5, 658188
                  auipc        s6, 742636
                  sub          a0, t2, a0
                  slt          s2, a0, s3
                  beq          s6, s4, 562f
                  auipc        s0, 72044
                  beq          t3, t6, 567f
                  blt          t3, s9, 572f
                  ori          s11, a7, -678
                  bgeu         t1, s10, 567f
                  bne          a3, t3, 571f
562:              andi         s6, a2, 567
                  xori         s8, gp, 793
564:              bgeu         t3, a5, 571f
                  lui          s4, 718024
                  srli         s2, s5, 19
567:              blt          gp, s1, 576f
                  nop
                  srl          s5, gp, a7
                  beq          sp, a2, 573f
571:              ori          s0, a0, 443
572:              blt          s11, tp, 588f
573:              andi         a7, tp, 1696
                  bge          t6, t2, 580f
                  lui          tp, 636889
576:              sltu         s7, s3, a2
                  andi         s0, s7, -107
                  sll          s2, s2, gp
                  sltiu        a3, t5, -696
580:              sll          s5, s10, a3
                  slt          a2, sp, s8
                  and          s5, t1, s5
                  andi         tp, a5, -2025
                  xor          a4, s4, tp
                  slti         a3, s10, 1538
                  nop
                  bge          s7, t6, 598f
588:              ori          gp, s2, 1336
                  sra          s1, t2, s4
                  slt          t1, ra, s10
                  sll          a2, t4, s11
                  add          s0, t4, a7
                  lui          zero, 527427
                  beq          s1, s0, 607f
                  xori         t6, a4, 769
                  slli         s8, s10, 8
                  slti         t5, t5, 63
598:              xor          sp, t3, s10
                  and          s1, gp, a2
                  auipc        a5, 468836
                  add          a0, gp, s11
                  srai         a3, a6, 4
                  ori          zero, zero, -1182
                  addi         t2, t1, 1410
                  bge          s1, a6, 610f
                  sltu         t5, s10, t3
607:              sltiu        s2, a2, -1189
                  bge          s8, t4, 628f
                  sltiu        a3, a3, 1818
610:              andi         t4, t5, 534
                  bge          a4, zero, 628f
                  bgeu         t6, t4, 632f
                  lui          a4, 836058
                  bne          a0, s7, 630f
                  slli         a2, t2, 5
                  nop
                  bge          t6, a3, 624f
                  andi         a0, a3, 1736
                  srli         t1, ra, 23
                  srai         tp, tp, 12
                  slt          s2, s10, s6
                  bgeu         t5, s1, 638f
                  nop
624:              xor          gp, s10, zero
                  srl          t6, gp, s6
                  slli         t0, s8, 19
                  andi         ra, t3, 80
628:              bgeu         s8, tp, 645f
                  sra          t2, a0, t0
630:              bltu         s4, s9, 648f
                  beq          s10, t6, 635f
632:              or           a7, s6, s11
                  ori          a0, s6, -349
                  sub          zero, a7, s5
635:              and          s2, t1, t4
                  sub          ra, a3, t0
                  bltu         ra, t2, 648f
638:              ori          s0, a6, -1001
                  or           s2, a3, s0
                  bge          s2, t5, 656f
                  and          t0, s6, a2
                  bne          a0, t1, 652f
                  srai         s3, a3, 18
                  slli         a7, a1, 0
645:              bltu         gp, s4, 662f
                  xori         s5, a3, -65
                  sll          s11, t4, s6
648:              andi         t4, a7, -1156
                  addi         t6, a4, -1426
                  lui          s7, 863226
                  slti         s7, a4, 510
652:              ori          gp, t4, -13
                  nop
                  sltu         s2, s10, s7
                  bge          a6, s11, 665f
656:              addi         a7, t0, -1254
                  xor          sp, s3, a4
                  slti         a3, a5, -1861
                  lui          a5, 415430
                  xori         s11, s2, -766
                  and          t0, a4, s5
662:              andi         tp, s1, -62
                  bltu         s1, s9, 665f
                  srl          a2, gp, t6
665:              slli         t6, s4, 0
                  nop
                  andi         s7, s8, -1227
                  slli         a5, zero, 26
                  sltiu        s2, s0, 624
                  nop
                  slti         s5, a4, 543
                  ori          t0, a0, -149
                  ori          s4, a3, -1594
                  add          a1, a1, tp
                  sub          s9, s8, t6
                  slt          s1, s2, t0
                  bgeu         t4, t1, 684f
                  sra          s0, a3, s5
                  slt          t0, t1, t5
                  srli         a3, a0, 28
                  srai         s7, a7, 19
                  sltu         a5, t2, a7
                  nop
684:              and          s1, a3, a0
                  sltiu        a4, a0, 1442
                  sltu         sp, t3, gp
                  add          s6, t1, gp
                  blt          zero, s8, 695f
                  add          t0, s4, s9
                  sltiu        a3, zero, 1888
                  bgeu         s10, s5, 707f
                  or           t4, a1, s0
                  bne          a2, s0, 702f
                  slli         a5, s11, 5
695:              sll          s7, t1, s8
                  bltu         a7, sp, 709f
                  lui          s2, 224200
                  and          s11, a5, t3
                  sra          a5, a4, s8
                  and          t6, t6, sp
                  blt          zero, s8, 719f
702:              bge          a3, a0, 708f
                  lui          a4, 656100
                  beq          a7, t3, 720f
                  andi         s5, t1, 1543
                  sltu         s9, a5, sp
707:              bltu         a5, a5, 713f
708:              and          s9, t1, s5
709:              beq          sp, t1, 726f
                  bge          a4, t5, 717f
                  nop
                  sltiu        s8, a1, -1138
713:              bgeu         s11, s2, 724f
                  lui          t1, 695569
                  addi         s2, a0, -851
                  andi         sp, t3, 1196
717:              blt          s8, s2, 722f
                  sll          s1, gp, s10
719:              slt          ra, a3, t6
720:              bge          gp, a2, 730f
                  sub          t1, s8, s8
722:              beq          t5, s10, 742f
                  srai         tp, t2, 30
724:              sll          t0, s9, s4
                  xori         zero, s10, -165
726:              or           s2, t5, zero
                  xor          a2, s11, s7
                  sra          a5, a5, t3
                  sra          a2, s6, s0
730:              or           t6, s9, s5
                  sll          s7, t3, a0
                  add          a3, t1, s10
                  auipc        a2, 790748
                  bltu         a0, s11, 735f
735:              blt          t3, a5, 742f
                  addi         a0, t3, 815
                  ori          a5, t4, 1576
                  sll          t0, a2, s2
                  srai         s6, t0, 14
                  ori          t0, s7, 959
                  sltiu        s3, sp, 470
742:              sll          t2, s4, a2
                  slt          a1, a7, a6
                  sra          tp, gp, s8
                  sltu         s11, t0, t1
                  la           s0, sub_1
                  addi         a5, s6, 10
                  slti         s11, s11, 38
                  xor          gp, a3, s5
                  addi         s0, s0, -709
                  sra          a0, t0, s2
                  or           s3, s2, t3
                  beq          t5, a7, main_j1 #branch to jump instr
                  andi         a0, s8, -813
main_j1:          jalr         s4, s0, 709 #jump main -> sub_1
                  slti         a7, s0, -806
                  addi         t0, s1, -1792
                  ori          a0, ra, 1841
                  blt          s7, ra, 761f
                  nop
                  srl          s2, t5, ra
                  sra          s4, a6, a6
                  slti         s2, t4, -54
                  xori         a7, t5, 1569
                  sll          t5, s2, tp
                  bltu         t5, s11, 761f
                  slt          t6, s1, a5
                  sll          a7, a0, t4
                  bltu         sp, a6, 772f
                  srl          a4, s7, t3
                  xor          a0, a6, s11
                  bge          t2, t1, 771f
761:              slt          s2, a4, t5
                  bge          t3, t1, 765f
                  sltiu        s5, s11, -1048
                  sltiu        a4, sp, 366
765:              slli         a7, a2, 10
                  add          tp, a5, t5
                  xori         s4, s11, -63
                  beq          s6, s5, 772f
                  bltu         a5, s0, 785f
                  slli         s0, t3, 17
771:              sltiu        s11, gp, -1835
772:              bltu         a6, a7, 792f
                  sltiu        s2, s1, -1654
                  lui          s3, 487064
                  and          t2, t3, s1
                  bltu         s2, a2, 792f
                  bge          s3, s0, 788f
                  slli         s0, a0, 19
                  xor          tp, a7, t1
                  sltiu        ra, t3, -266
                  bge          s1, t5, 783f
                  srl          s4, s5, t2
783:              lui          s0, 460891
                  slt          a0, a2, t1
785:              blt          t0, t4, 798f
                  beq          a6, t6, 793f
                  slt          tp, t5, t2
788:              bge          s6, t5, 795f
                  bne          a5, a1, 809f
                  srl          t2, s2, t2
                  beq          s0, zero, 798f
792:              srai         a0, tp, 0
793:              bne          s3, ra, 813f
                  bge          s9, gp, 800f
795:              slli         t4, s6, 17
                  sltiu        t5, s7, -1592
                  bge          s7, s5, 813f
798:              nop
                  lui          zero, 492834
800:              beq          a4, a1, 816f
                  xor          s9, s3, s0
                  slt          a5, t5, s9
                  andi         ra, t3, 1734
                  sra          s8, a3, s11
                  bge          a6, a6, 809f
                  slt          s0, a0, sp
                  srl          t6, t3, t3
                  nop
809:              addi         gp, a0, -1654
                  xor          s3, t1, t5
                  xor          t1, a1, sp
                  andi         zero, s1, -1510
813:              lui          a7, 421665
                  sub          t2, t5, t6
                  slli         s0, a5, 0
816:              bne          s9, t6, 819f
                  sltu         s2, t2, s0
                  or           sp, t6, t4
819:              srl          s9, s4, a3
                  andi         s2, s11, 1865
                  sll          s6, s11, t1
                  or           s11, tp, a0
                  sub          t2, t0, a3
                  beq          s2, tp, 840f
                  ori          s2, s3, 1782
                  sub          ra, s9, tp
                  and          a7, t4, s3
                  auipc        s9, 707731
                  sltu         s8, tp, t6
                  bge          a0, s7, 831f
831:              lui          s0, 441846
                  slli         sp, s0, 4
                  bne          t2, a0, 843f
                  bne          s0, t4, 839f
                  ori          a1, a3, -1286
                  beq          a4, s9, 846f
                  bge          a0, t0, 844f
                  slt          s1, s5, t1
839:              slti         s7, a7, -445
840:              slli         sp, s3, 31
                  nop
                  nop
843:              bge          s6, a1, 860f
844:              sra          s1, s5, s11
                  or           s6, gp, a6
846:              or           s0, zero, a0
                  bgeu         a5, s9, 853f
                  srli         t4, sp, 31
                  slli         ra, s4, 15
                  bltu         s5, s0, 859f
                  sltiu        tp, a6, 151
                  sltu         s6, ra, a6
853:              addi         a3, a4, -74
                  and          a2, t1, s8
                  ori          a5, a4, 1437
                  sll          a2, s5, a6
                  bge          s10, sp, 874f
                  slt          t4, s10, a0
859:              sll          s7, s10, a1
860:              bge          t2, s0, 874f
                  slti         s11, s6, 1497
                  bltu         s7, s5, 872f
                  srai         a1, s1, 25
                  xor          t0, s0, s7
                  sll          t0, s3, a2
                  addi         zero, s1, -1144
                  bltu         s9, t3, 882f
                  beq          t1, a0, 884f
                  slli         s7, a2, 5
                  slti         s0, s4, -125
                  srli         gp, s10, 15
872:              blt          s0, t1, 890f
                  andi         s2, t4, -785
874:              slt          s5, s0, t3
                  and          s4, ra, s11
                  sll          t0, s5, a2
                  blt          s0, t3, 888f
                  nop
                  auipc        t2, 340808
                  slt          s8, ra, s7
                  slti         t2, s4, -61
882:              sll          t5, t0, sp
                  beq          t3, s4, 890f
884:              ori          a2, s5, -239
                  srli         a0, a2, 21
                  ori          zero, zero, 1204
                  sltiu        a5, t2, 876
888:              sll          a4, s9, a6
                  blt          sp, s11, 906f
890:              bgeu         t4, s10, 910f
                  srli         t2, a0, 18
                  sra          ra, a2, a4
                  srai         a1, s9, 23
                  or           t0, t4, a7
                  bltu         a5, t2, 910f
                  slti         a5, t5, -823
                  xori         s6, tp, 1236
                  sltiu        s1, a6, 801
                  slti         t1, t1, 1721
                  bgeu         ra, s0, 907f
                  sll          tp, a7, s3
                  bltu         sp, s6, 905f
                  or           s6, t4, s3
                  andi         a1, a6, -1043
905:              bge          t4, s8, 922f
906:              or           s9, t5, a4
907:              bgeu         t4, s5, 917f
                  sll          a3, s9, s6
                  and          s5, s5, s6
910:              srai         a0, a1, 27
                  bne          s7, s10, 931f
                  add          zero, sp, a3
                  and          s11, s2, a0
                  srai         t6, t2, 5
                  beq          t3, s9, 922f
                  beq          tp, s11, 923f
917:              sltiu        s4, t1, -1638
                  sltu         s11, a5, tp
                  bge          a3, t3, 937f
                  sll          t0, t2, a3
                  andi         s2, t2, 1699
922:              blt          a6, a5, 938f
923:              slli         s7, a7, 6
                  and          s7, zero, a1
                  lui          s11, 897043
                  or           gp, a2, a3
                  auipc        a7, 579019
                  srl          a1, a7, a3
                  sltiu        sp, t1, 268
                  sra          gp, t0, ra
931:              beq          a3, s6, 937f
                  srai         s9, gp, 25
                  slli         a7, a4, 22
                  ori          s11, s2, -1524
                  sub          a7, s2, ra
                  sll          s7, tp, t5
937:              bgeu         s2, s6, 948f
938:              slt          a3, a6, t4
                  beq          a2, t1, 950f
                  srli         t0, a6, 10
                  srli         a7, s9, 26
                  sub          zero, ra, s2
                  slti         t5, s0, -597
                  lui          a4, 939425
                  srl          s6, s9, s9
                  and          a7, s5, s5
                  srai         s7, t4, 20
948:              nop
                  srai         a0, gp, 30
950:              xor          a3, t3, s3
                  auipc        s1, 720794
                  bne          s9, s2, 954f
                  slti         s0, t2, -529
954:              xor          ra, sp, tp
                  slt          a4, s11, t2
                  sub          t2, t6, t2
                  xori         s7, zero, -1269
                  nop
                  srai         t4, ra, 23
                  srai         a2, a4, 18
                  bgeu         s7, a0, 971f
                  sra          t5, a6, s8
                  auipc        a3, 931938
                  andi         a2, a3, 1915
                  xori         s0, tp, 1203
                  sub          gp, gp, s3
                  or           a2, t3, s9
                  auipc        t2, 989323
                  beq          sp, a2, 974f
                  nop
971:              xor          s7, t2, s10
                  srl          zero, a1, s11
                  addi         a7, s8, 901
974:              xori         t1, a5, -1852
                  xori         s11, s2, -707
                  or           a2, a4, ra
                  slti         sp, s10, 1942
                  sll          s9, s1, s3
                  sltu         s11, a4, a3
                  slti         s6, a4, -773
                  srli         s11, t6, 25
                  sub          s8, s4, t4
                  and          a0, s5, ra
                  bgeu         a2, t1, 990f
                  lui          a1, 858192
                  sll          t2, ra, s2
                  sltiu        a1, s10, 1837
                  slt          s5, sp, a1
                  slli         s1, s8, 11
990:              srai         tp, s5, 9
                  ori          a3, t4, 1847
                  ori          s1, s11, 1309
                  sll          s5, tp, s11
                  sll          s5, tp, t1
                  auipc        ra, 483004
                  bge          s2, s6, 1000f
                  beq          gp, t0, 1010f
                  beq          s11, t2, 1005f
                  sub          a1, tp, s1
1000:             xor          s1, gp, ra
                  lui          a5, 942031
                  addi         s6, t2, -289
                  sll          s3, t1, a2
                  xori         gp, zero, 1934
1005:             andi         zero, s5, -471
                  slti         s3, sp, -1362
                  slti         s8, t6, 606
                  sub          gp, t6, a5
                  addi         a3, a0, 750
1010:             nop
                  add          a7, t1, a5
                  srai         s2, sp, 29
                  bne          t2, s6, 1029f
                  bne          a5, tp, 1023f
                  bltu         s2, gp, 1025f
                  bge          gp, t3, 1030f
                  bltu         t1, s2, 1024f
                  andi         s2, t2, 2018
                  sub          s2, s7, t5
                  lui          sp, 351477
                  ori          s2, zero, 93
                  bne          s10, s0, 1038f
1023:             srai         s1, a0, 3
1024:             lui          a1, 876936
1025:             bltu         s11, ra, 1026f
1026:             slti         t5, s10, 76
                  slt          t4, s1, s0
                  slli         t2, s11, 2
1029:             srli         s5, a6, 30
1030:             sltu         t1, s8, zero
                  beq          s2, a2, 1047f
                  bgeu         a2, a5, 1041f
                  sub          sp, s2, a2
                  srli         a4, a5, 5
                  slt          s5, s3, s8
                  sra          t2, a2, s3
                  sll          t1, a1, tp
1038:             bne          s11, t4, 1053f
                  or           a0, t4, t6
                  ori          s5, s1, -1235
1041:             add          a5, ra, a2
                  bne          a0, t3, 1048f
                  srai         sp, zero, 9
                  and          t4, a3, s10
                  xor          s7, t3, t3
                  xor          tp, a1, a7
1047:             and          s11, s1, sp
1048:             srl          tp, s5, a6
                  srai         t5, tp, 30
                  blt          a3, zero, 1067f
                  slt          t0, zero, t1
                  bltu         t5, s4, 1062f
1053:             nop
                  or           s6, s6, s5
                  sra          sp, a4, a7
                  slli         t0, s2, 22
                  srl          s1, a3, gp
                  nop
                  or           a4, t2, t2
                  or           s5, t5, s9
                  nop
1062:             bgeu         s7, a6, 1069f
                  bltu         s7, a1, 1083f
                  andi         t5, s7, -251
                  auipc        s1, 173534
                  slti         s6, s11, -970
1067:             nop
                  andi         s6, ra, 233
1069:             slt          gp, a6, s5
                  ori          s7, s1, 814
                  slli         ra, t4, 22
                  and          a0, t0, s1
                  lui          s2, 630138
                  slti         a2, s3, 20
                  sltiu        zero, a0, -213
                  bge          s0, t1, 1090f
                  ori          s3, s5, 1815
                  addi         s2, t5, -2022
                  srl          s6, t1, s1
                  slli         t4, s3, 9
                  addi         zero, s8, -1566
                  bltu         s3, s10, 1083f
1083:             blt          a0, gp, 1087f
                  slti         s6, t0, 1957
                  andi         s3, s2, 1754
                  blt          tp, a0, 1097f
1087:             srli         ra, s5, 4
                  and          a5, a5, zero
                  sub          a2, s2, s10
1090:             srl          sp, a2, s3
                  bge          a5, t0, 1107f
                  bgeu         zero, t6, 1105f
                  xori         s7, s0, -31
                  bge          s11, s5, 1096f
                  beq          s11, sp, 1100f
1096:             sltiu        tp, ra, -1898
1097:             xor          sp, s7, ra
                  xori         s8, t0, 1697
                  addi         t4, s0, 214
1100:             xor          s7, sp, t3
                  lui          s11, 84309
                  add          gp, a6, t4
                  xor          a0, a4, a6
                  or           ra, t0, s7
1105:             andi         t4, t1, 138
                  srai         t2, s10, 4
1107:             addi         s5, a3, -160
                  bge          s7, t6, 1124f
                  bne          a3, s6, 1116f
                  bne          s1, t1, 1117f
                  slli         t5, tp, 27
                  bne          s6, tp, 1129f
                  and          s4, ra, gp
                  sra          s8, t4, gp
                  srai         gp, t3, 8
1116:             slti         s9, s5, 1041
1117:             auipc        s3, 932649
                  sub          t5, s7, tp
                  sltu         a5, tp, a5
                  addi         ra, a4, -246
                  blt          a4, t4, 1124f
                  add          s8, t4, a4
                  bne          t4, a4, 1129f
1124:             or           a4, a1, t0
                  ori          a4, s6, -919
                  bltu         tp, ra, 1142f
                  addi         a0, t6, 1386
                  xori         zero, s8, 892
1129:             lui          t4, 284323
                  lui          s0, 452932
                  and          t1, s5, s6
                  addi         s3, a3, 706
                  nop
                  srli         s5, s7, 21
                  ori          s11, a7, 1826
                  auipc        sp, 511642
                  sra          a7, sp, zero
                  xor          s1, a0, t2
                  slti         a0, t6, 612
                  and          s3, a7, t3
                  and          t5, s5, ra
1142:             sra          a2, a2, s4
                  auipc        t1, 644220
                  sra          a2, s6, tp
                  lui          t2, 471641
                  bne          t2, t3, 1164f
                  srli         tp, s10, 22
                  auipc        a4, 452715
                  and          t2, a5, t0
                  slti         s2, s2, 1366
                  sub          gp, t6, s9
                  sll          s9, s0, s0
                  or           gp, s1, s10
                  blt          a3, tp, 1164f
                  srli         s3, t6, 27
                  sltiu        s7, s1, 590
                  sub          zero, s11, tp
                  sltu         a0, a0, s8
                  sltiu        tp, a0, 16
                  slti         sp, a0, 927
                  slt          a1, s7, s10
                  sll          t1, s5, a3
                  or           s3, tp, t2
1164:             bne          s9, s2, 1184f
                  nop
                  sra          s11, zero, t2
                  ori          s0, s8, 74
                  add          ra, a2, zero
                  auipc        gp, 636310
                  bge          ra, a3, 1180f
                  auipc        s1, 106971
                  beq          s9, s0, 1179f
                  sra          a7, a1, zero
                  srli         ra, a7, 24
                  ori          t2, s3, 614
                  sub          t5, gp, sp
                  lui          zero, 245898
                  sltu         s9, s4, a6
1179:             nop
1180:             xor          a5, ra, a5
                  auipc        a2, 65414
                  slt          s11, s1, s11
                  slli         zero, s5, 16
1184:             srli         s3, s2, 16
                  and          s11, t4, a3
                  sra          t4, s5, t2
                  and          s1, a4, t0
                  ori          s2, t2, 468
                  auipc        t4, 357047
                  bne          zero, sp, 1197f
                  ori          t5, a6, 1516
                  xor          s9, gp, a2
                  sra          a1, a1, a3
                  sltu         s1, a5, t5
                  and          s11, a0, t2
                  slli         sp, t3, 7
1197:             beq          t3, a3, 1213f
                  xori         a3, s6, -1583
                  xori         t2, a0, 1594
                  nop
                  xor          s3, zero, sp
                  nop
                  sltu         s2, s10, a5
                  bne          t1, s7, 1215f
                  and          t2, s5, t1
                  sra          a0, s11, a1
                  blt          sp, tp, 1217f
                  xor          s3, s10, t3
                  auipc        a1, 266235
                  add          t1, s8, a5
                  addi         tp, a6, -1401
                  slt          a5, t5, ra
1213:             slt          a4, a5, a0
                  srai         s9, s2, 0
1215:             and          a2, s10, s3
                  and          a7, s9, a3
1217:             addi         gp, a2, -675
                  xori         a1, s7, 636
                  bltu         a5, a5, 1226f
                  srli         zero, s10, 5
                  and          a3, t6, sp
                  or           s3, s8, zero
                  auipc        s7, 429842
                  beq          s6, tp, 1231f
                  add          sp, t4, a5
1226:             srai         a1, s9, 20
                  sll          s11, s5, sp
                  slti         zero, s6, 1778
                  beq          ra, zero, 1245f
                  bgeu         s7, s0, 1237f
1231:             srl          s11, a7, s3
                  xor          s3, s6, t5
                  and          a0, sp, s11
                  andi         a4, ra, -1258
                  slt          s1, a7, t3
                  srli         t1, a2, 7
1237:             or           tp, t3, a6
                  slli         s1, t4, 19
                  nop
                  or           ra, a5, gp
                  beq          a2, s5, 1243f
                  bltu         s6, a2, 1255f
1243:             sub          s6, a6, t6
                  slt          t1, s8, a5
1245:             and          ra, a3, t0
                  auipc        s5, 739104
                  or           s11, a0, ra
                  lui          t5, 230126
                  blt          s0, t3, 1253f
                  addi         t0, s5, 457
                  beq          a2, t4, 1267f
                  slti         t4, t0, 725
1253:             lui          a7, 1003213
                  srai         a3, ra, 1
1255:             slt          gp, t6, s5
                  sub          gp, a1, a1
                  sltiu        s9, a1, -959
                  srl          s2, s0, a4
                  srl          a0, t1, t2
                  xor          a1, t2, s2
                  sltu         s0, t5, s2
                  bne          a3, a6, 1269f
                  sra          t2, s4, t1
                  or           t0, t6, a2
                  xor          s9, s5, a3
                  sll          a2, s11, s5
1267:             srai         s6, t6, 14
                  bne          a2, s8, 1282f
1269:             lui          zero, 580485
                  sltiu        a3, tp, -1563
                  sub          s7, s9, t1
                  sltiu        s4, t4, 563
                  nop
                  sltu         s5, t5, s0
                  sltu         t1, t4, s2
                  slti         s4, s8, 1942
                  nop
                  or           a4, s0, a7
                  bltu         s0, s4, 1289f
                  bltu         tp, sp, 1291f
                  bgeu         t2, a0, 1287f
1282:             bne          s1, s5, 1285f
                  nop
                  bgeu         s4, s6, 1294f
1285:             add          a5, tp, t3
                  srai         a2, s0, 31
1287:             nop
                  sub          tp, t4, s8
1289:             bltu         s6, t6, 1304f
                  ori          t1, t3, 185
1291:             slti         ra, s9, 485
                  or           s5, s1, a5
                  srl          t4, a6, s8
1294:             bge          a2, t1, 1303f
                  bne          t5, s3, 1301f
                  bne          t1, t1, 1313f
                  sltu         a0, a2, a3
                  srl          s9, s0, a1
                  xor          tp, s2, t0
                  sltu         s1, a6, t3
1301:             slt          zero, t6, a4
                  srl          s0, t1, gp
1303:             srl          t5, a0, t4
1304:             srl          t4, a5, a4
                  and          sp, t5, s7
                  slt          t6, a2, a4
                  nop
                  slt          a7, a5, a5
                  srl          t5, zero, a0
                  xori         s11, a2, -440
                  srl          s1, a2, tp
                  slti         zero, t1, 1859
1313:             slt          s3, t1, s11
                  srl          ra, t3, s0
                  srl          s11, ra, t2
                  srl          a2, s3, zero
                  srl          gp, s11, s9
                  sub          s6, a0, s9
                  sub          s7, s11, s1
                  bgeu         t3, a2, 1321f
1321:             srai         t1, a5, 2
                  or           a7, s1, a4
                  or           ra, t6, t0
                  bltu         s5, a3, 1329f
                  nop
                  add          a0, s3, a5
                  bne          s10, a3, 1332f
                  sll          sp, s9, s10
1329:             lui          s6, 491130
                  srli         s6, a6, 9
                  nop
1332:             sll          s9, ra, t0
                  la x26, test_done
                  jalr x0, x26, 0
test_done:        
                  li gp, 1
                  ecall
sub_10:           andi         t0, sp, 968
                  and          sp, tp, s11
                  addi         t3, t3, -32
                  or           t6, t3, a6
                  sw           s4, 4(t3)
                  sra          ra, a0, s5
                  add          a1, s11, s5
                  slti         a0, t4, 146
                  slt          s8, a1, t4
                  slti         a7, s11, -973
                  andi         gp, s8, -813
                  bge          s4, s3, 25f
                  srl          t2, a4, s6
                  slti         s6, a4, -1159
                  sub          t4, s10, t3
                  beq          t5, t5, 20f
                  lui          s1, 590208
                  addi         t2, t6, -270
                  add          a4, s11, a0
                  xor          t1, s1, s0
                  or           tp, a2, s2
                  slt          s1, s2, s2
                  sll          sp, s11, s5
                  auipc        a2, 717100
                  beq          t1, a7, 33f
                  sll          s0, a4, t4
20:               sltiu        s11, a2, 1220
                  bgeu         a0, a3, 41f
                  add          s4, s8, a3
                  andi         s11, t3, 1648
                  add          ra, gp, a5
25:               auipc        t1, 694029
                  srl          a7, s4, s9
                  sll          s5, s0, t6
                  ori          a4, t2, 1507
                  xor          t1, s4, gp
                  bltu         s10, s8, 50f
                  srai         t0, zero, 14
                  sltu         a2, s11, t4
33:               bltu         ra, t5, 38f
                  srl          gp, zero, a0
                  nop
                  ori          t2, a0, -2035
                  andi         s7, gp, 181
38:               or           a0, t0, a3
                  srli         t4, t5, 4
                  sltiu        s6, s3, 1703
41:               blt          gp, t3, 57f
                  bltu         a1, s7, 59f
                  bne          t6, s2, 51f
                  lui          s1, 511912
                  sltiu        a1, a6, 1042
                  sltu         zero, a2, a1
                  xor          gp, s9, zero
                  and          sp, t4, s2
                  sll          s3, t1, s10
50:               or           s3, a6, gp
51:               slti         s11, s9, -1194
                  blt          s6, a2, 65f
                  srai         a2, sp, 26
                  xor          t4, t0, tp
                  srai         s9, s0, 6
                  slti         a4, a0, 999
57:               slt          s2, s8, s0
                  nop
59:               sltiu        t1, t0, 493
                  slli         s4, s0, 19
                  xori         tp, s11, 686
                  xor          t6, t2, s7
                  sltiu        gp, t0, -508
                  auipc        s8, 10145
65:               andi         a7, s9, -1543
                  sub          s1, s11, a6
                  lw           s4, 4(t3)
                  slt          a3, a4, s1
                  addi         t3, t3, 32
                  slti         a7, t0, 1913
77:               addi x8, x20, 0
77:               jalr x8, x8, 0
sub_2:            bgeu         zero, s6, sub_2_stack_p
                  sltiu        a7, sp, 727
                  srli         s11, t6, 21
sub_2_stack_p:    addi         t3, t3, -20
                  sw           s4, 4(t3)
                  nop
                  srli         a3, s8, 19
                  la           s0, sub_3
                  addi         s0, s0, -1010
                  sra          a4, t1, s5
                  xor          t0, s4, a2
                  slt          s4, s0, s4
                  blt          s11, a7, sub_2_j4 #branch to jump instr
                  slli         s2, s6, 20
                  srli         gp, t2, 6
                  sltu         a1, sp, ra
sub_2_j4:         jalr         s4, s0, 1011 #jump sub_2 -> sub_3
                  sll          a5, t5, t4
                  lui          s6, 681333
                  add          s5, s3, t0
                  bltu         a7, a2, sub_2_j5 #branch to jump instr
                  or           s11, s4, a6
                  add          t0, s11, t2
                  and          a7, a7, t0
                  srl          s5, t1, a0
                  addi         a3, a5, -1004
                  andi         a0, s10, 1660
                  or           t1, a3, s11
sub_2_j5:         jal          s4, sub_4 #jump sub_2 -> sub_4
                  sub          t1, t1, t1
                  bltu         ra, zero, 20f
                  bne          t6, t3, 7f
                  xor          s11, t6, a3
                  nop
                  blt          ra, t5, 14f
                  slli         t4, s3, 18
7:                srl          t6, s11, s4
                  andi         sp, s1, 1280
                  srai         s5, a6, 19
                  sltiu        a5, t6, -1738
                  nop
                  lui          ra, 868477
                  bgeu         t3, ra, 17f
14:               and          a5, zero, s4
                  bltu         s2, zero, 19f
                  addi         s7, t1, -1585
17:               bge          a1, s9, 32f
                  slt          s7, sp, t4
19:               xor          s4, a2, s5
20:               xor          s7, s5, s4
                  beq          s11, s9, 32f
                  srl          sp, tp, s6
                  sltu         a7, s0, s9
                  bgeu         a3, t3, 42f
                  blt          t3, s7, 39f
                  beq          t1, s8, 38f
                  bne          s3, t2, 37f
                  slt          t6, s0, t4
                  bgeu         t1, s3, 39f
                  xor          zero, zero, sp
                  nop
32:               ori          a7, sp, -1026
                  lui          s0, 1027868
                  sltiu        s4, s10, -1705
                  bgeu         s6, s1, 49f
                  addi         s8, t1, 873
37:               bge          t3, s2, 50f
38:               beq          s1, t2, 40f
39:               slli         s8, t1, 15
40:               blt          gp, s5, 43f
                  lui          t2, 910864
42:               beq          s3, s5, 59f
43:               slt          a1, a4, t3
                  slli         s2, s8, 21
                  xori         t0, s10, 1834
                  nop
                  bge          s10, s1, 48f
48:               and          t4, ra, t6
49:               sll          a3, t2, s6
50:               auipc        s5, 402729
                  and          s7, a4, s2
                  srai         a0, s10, 3
                  xor          sp, a0, a2
                  sll          a0, t0, ra
                  bgeu         ra, s1, 68f
                  nop
                  blt          a7, t0, 76f
                  sra          s11, sp, s7
59:               blt          t0, sp, 61f
                  or           s11, s9, s1
61:               sltu         t1, a2, s6
                  bge          s0, s3, 74f
                  sll          t2, a7, t6
                  or           a5, s11, t0
                  or           s0, a1, tp
                  auipc        a3, 1039055
                  bge          s5, s8, 74f
68:               xor          s11, s7, s11
                  bltu         a3, s8, 79f
                  sra          t0, t6, ra
                  add          a7, a2, s8
                  srl          s0, t6, s1
                  or           t2, s1, a7
74:               sltiu        sp, s11, 725
                  or           s3, tp, a1
76:               beq          s7, s3, 86f
                  srai         sp, ra, 13
                  sll          t2, t5, s4
79:               ori          t1, ra, -347
                  sltiu        a7, t6, -1128
                  sll          a0, t6, t1
                  auipc        s0, 548958
                  srl          s8, a6, t1
                  auipc        s9, 563567
                  auipc        t2, 211422
86:               bne          t1, a1, 89f
                  sll          s5, s9, a6
                  ori          s4, s1, -1050
89:               srli         s9, a6, 0
                  slti         s9, t2, 894
                  srai         tp, t4, 3
                  srli         zero, zero, 18
                  xor          zero, t3, s3
                  auipc        zero, 280279
                  sltu         sp, a0, s11
                  lw           s4, 4(t3)
                  addi         t3, t3, 20
                  srli         s8, t0, 5
                  srl          s7, s3, t4
129:              addi x17, x20, 1
129:              jalr x17, x17, 0
sub_8:            and          zero, s0, a2
                  addi         t3, t3, -64
                  and          t1, t6, s8
                  addi         s0, s7, 557
                  sw           s4, 4(t3)
                  srai         a3, s1, 25
                  la           s6, region_1+287 #start riscv_load_store_rand_instr_stream_1
                  sltu         t2, s11, s9
                  and          t6, a4, a6
                  or           t2, s5, a3
                  xori         s1, a5, -1532
                  or           s3, t5, s4
                  andi         a2, s2, 1758
                  addi         a0, a5, 1688
                  lb           t4, -15(s6)
                  nop
                  sb           s3, 13(s6)
                  lbu          sp, 0(s6)
                  add          ra, a0, t1
                  lb           t5, -13(s6)
                  srai         t6, gp, 22
                  lb           s1, -15(s6)
                  slli         s5, t3, 29
                  lui          zero, 1013634
                  srai         ra, s3, 16
                  lbu          s5, -2(s6)
                  auipc        s9, 581530
                  add          s2, s9, ra
                  srai         t0, a6, 16
                  srl          t2, sp, zero
                  lb           s9, 15(s6)
                  sb           zero, 3(s6)
                  lh           a3, -5(s6)
                  sltu         s3, t4, s11
                  srai         t4, s11, 26
                  lui          t2, 173803
                  nop
                  add          zero, t3, t3
                  lw           s5, 5(s6)
                  sh           s11, 9(s6)
                  auipc        ra, 596319
                  ori          a4, a4, -597
                  slti         s5, a1, -328
                  lbu          zero, 12(s6)
                  auipc        s2, 37025
                  sll          gp, s9, t1
                  lb           s0, 5(s6) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_1+60 #start riscv_load_store_rand_instr_stream_0
                  sra          s4, s4, s11
                  slti         s5, s2, 1828
                  slt          t2, t6, s11
                  srai         s8, s2, 15
                  lui          s11, 101614
                  sub          t2, t0, s4
                  sb           s5, 195(sp)
                  sub          zero, s11, t4
                  xori         s9, zero, 424
                  srl          s2, t5, t1
                  slti         t2, s8, -26
                  lbu          t5, -1(sp)
                  sb           a2, 195(sp)
                  srai         zero, a5, 22
                  lb           s7, 213(sp)
                  and          s9, t0, s2
                  sra          s1, s2, s9
                  sw           t5, 44(sp)
                  slti         gp, ra, -1379
                  or           a2, gp, zero
                  lui          s3, 623635
                  srli         s7, t5, 31
                  lb           a4, 14(sp)
                  xori         t0, s0, -143
                  lbu          a7, -13(sp)
                  sltiu        s11, s9, 433
                  sra          s6, a2, a0
                  lb           s6, 138(sp)
                  lbu          t6, 13(sp)
                  lb           a7, 147(sp) #end riscv_load_store_rand_instr_stream_0
                  la           t4, region_0+477 #start riscv_load_store_rand_instr_stream_3
                  lbu          s6, 12(t4)
                  lb           s4, -14(t4)
                  or           s9, s4, a2
                  lhu          t1, 5(t4)
                  lbu          a0, -9(t4)
                  lbu          a0, 0(t4)
                  lbu          s0, -3(t4)
                  or           t2, t3, s5
                  lbu          ra, 15(t4)
                  ori          t5, s11, -667
                  lhu          s11, 13(t4)
                  sb           s0, 1(t4)
                  sb           a1, 4(t4)
                  lbu          t2, -2(t4)
                  sll          a5, a5, s10
                  srli         s9, sp, 21
                  andi         s9, t3, -1720
                  sra          a1, t4, t5
                  srl          s3, s9, a7
                  sb           t1, -8(t4)
                  lb           a4, -9(t4)
                  lbu          s11, -1(t4)
                  lb           gp, 12(t4)
                  addi         a3, a1, 2040
                  lhu          s1, 1(t4)
                  sll          s7, t5, a5
                  xor          s2, a2, s7
                  lb           s5, 7(t4)
                  lb           t1, 3(t4)
                  sh           a5, -3(t4) #end riscv_load_store_rand_instr_stream_3
                  blt          t5, s9, 8f
                  andi         t2, t4, -1290
                  add          a2, a7, s7
                  add          s2, s5, a1
                  slli         t4, zero, 16
                  sltiu        s0, t5, 643
                  slti         s4, s4, 1990
                  sub          t4, a1, a5
8:                slti         s11, a1, -689
                  auipc        a4, 908328
                  or           s8, s10, gp
                  addi         t6, s9, -962
                  addi         t0, gp, 1869
                  srli         a7, a6, 19
                  sra          t1, t1, a1
                  add          a4, ra, a7
                  bltu         a4, a7, 33f
                  sltiu        a0, a0, 533
                  addi         s4, s11, 1915
                  xori         s6, a1, 1574
                  la           sp, region_1+1614 #start riscv_load_store_rand_instr_stream_2
                  sltiu        s5, s4, -196
                  sb           sp, 29(sp)
                  lh           ra, 152(sp)
                  lb           a2, -240(sp)
                  srl          t2, a3, ra
                  sltiu        s6, s7, 1458
                  ori          s9, a2, -1469
                  lbu          s1, 240(sp)
                  lb           s4, -235(sp)
                  add          s6, a2, ra
                  add          s7, a4, s2
                  lh           s9, 184(sp)
                  lb           t5, 121(sp)
                  lb           a7, 83(sp)
                  srli         s9, a5, 7
                  sb           s9, -96(sp)
                  srai         a3, t3, 4
                  slti         t6, s4, 1901
                  sub          s5, gp, t6
                  slt          s6, a5, t0
                  ori          a0, a0, -1501
                  slt          s5, s6, t1
                  sb           a6, 159(sp) #end riscv_load_store_rand_instr_stream_2
                  blt          s2, t1, 31f
                  nop
                  auipc        gp, 684161
                  srai         t1, a7, 7
                  bge          t0, s0, 38f
                  bne          a2, t1, 37f
                  bne          s2, t3, 46f
                  xor          s9, s8, a0
                  bge          t6, t1, 46f
                  beq          s1, t2, 38f
                  beq          tp, s8, 41f
31:               slti         t0, s6, -228
                  slt          a0, a1, s2
33:               addi         s5, a7, -223
                  or           s6, s11, a4
                  beq          t1, gp, 38f
                  slt          ra, s8, s9
37:               xor          s3, t3, a1
38:               and          a1, s1, s2
                  sra          s8, s8, s10
                  nop
41:               srai         a7, s3, 0
                  lui          s8, 710606
                  sra          ra, s6, s9
                  bge          a2, s0, 58f
                  slti         s8, a2, 1746
46:               srl          s2, t0, sp
                  slli         a3, ra, 9
                  bne          s6, a1, 64f
                  srli         s3, a3, 1
                  slti         s4, s8, -1157
                  sll          s1, t3, a5
                  sltu         sp, a7, s6
                  srli         s3, s6, 6
                  ori          s8, s8, -1943
                  sub          t1, s7, s2
                  ori          t4, s4, -193
                  bge          s7, t2, 71f
58:               and          s9, a1, t2
                  bltu         t2, a2, 61f
                  and          t0, t0, s8
61:               lui          a0, 959369
                  blt          a5, s9, 77f
                  srl          gp, t1, sp
64:               sltiu        s0, t2, 1434
                  nop
                  lui          ra, 371020
                  nop
                  xori         a3, s8, 884
                  srai         t4, s1, 15
                  sub          s6, s3, s5
71:               sltu         tp, s1, s1
                  and          s8, sp, a6
                  andi         a3, s4, 92
                  blt          gp, t5, 77f
                  srli         a1, s11, 18
                  xori         a1, t0, 75
77:               auipc        gp, 667072
                  auipc        s5, 32005
                  sra          s2, zero, s11
                  lui          s0, 690888
                  addi         zero, gp, -544
                  sll          a1, s6, t0
                  xor          t4, t3, s1
                  sltu         a7, a0, s2
                  slti         a2, s2, -1479
                  addi         a1, tp, -369
                  slt          ra, t1, s8
                  add          t0, a4, a3
                  slli         t0, t6, 1
                  bge          zero, s10, 104f
                  or           s8, a5, t1
                  sltu         t1, t0, t3
                  nop
                  srli         a4, a2, 6
                  bge          s11, a4, 99f
                  srl          s8, a5, s6
                  xori         a0, a1, -1017
                  lui          ra, 753217
99:               xori         s9, s2, 1029
                  xori         s5, a6, 1232
                  nop
                  sll          t6, a1, t0
                  sltiu        a4, s3, -1432
104:              sltu         t0, s5, s4
                  and          t1, t4, s2
                  bgeu         t3, a6, 116f
                  blt          ra, s3, 109f
                  blt          t3, a5, 126f
109:              bne          a2, tp, 128f
                  blt          s5, s4, 115f
                  bne          sp, a5, 117f
                  andi         tp, s1, 562
                  slli         s9, s3, 25
                  or           s8, s8, t3
115:              bge          tp, s6, 124f
116:              andi         a2, a4, 93
117:              xori         ra, s9, 1756
                  auipc        s1, 121237
                  slt          s9, t2, s10
                  xori         a3, zero, 552
                  sub          s7, sp, s6
                  srai         a0, ra, 11
                  slti         s6, t3, 270
124:              lui          s8, 727410
                  beq          t3, s11, 132f
126:              sub          a1, gp, a5
                  nop
128:              addi         t5, t4, 1027
                  slli         s5, s2, 9
                  bltu         sp, s10, 147f
                  sra          t6, s7, a0
132:              slti         t4, a7, -756
                  slti         s0, a4, -1315
                  add          t0, a2, s8
                  slti         s7, a6, -562
                  sra          s4, s1, s7
                  srai         s7, s5, 15
                  sltu         t2, a6, gp
                  slti         a3, a3, 139
                  addi         t2, s3, -666
                  bgeu         a0, zero, 145f
                  sltiu        s5, a0, 1149
                  slt          a7, t4, s6
                  bgeu         t4, s5, 150f
145:              addi         a7, a1, -744
                  slti         s0, t6, 1596
147:              slli         t2, ra, 18
                  bge          a3, t0, 168f
                  slli         s6, a6, 13
150:              nop
                  xori         t1, s6, 1830
                  bgeu         t2, ra, 155f
                  nop
                  andi         ra, s0, 1119
155:              blt          s4, a7, 169f
                  sltiu        a1, s9, 501
                  srai         zero, a0, 4
                  addi         s0, s3, -72
                  lui          s9, 429500
                  slt          a1, a4, s8
                  xor          s11, t0, t2
                  slli         a4, s9, 10
                  xori         t6, s4, 384
                  srai         t0, s8, 16
                  bgeu         gp, t6, 177f
                  sll          gp, s10, t4
                  nop
168:              slli         a0, s0, 22
169:              sra          sp, t0, s11
                  xor          s5, t3, s7
                  add          t4, s7, t5
                  or           tp, zero, a7
                  add          s5, tp, sp
                  bltu         sp, a5, 188f
                  bge          a3, s3, 184f
                  blt          s6, zero, 178f
177:              or           a0, ra, a6
178:              xor          sp, s4, t5
                  lui          s2, 849759
                  srli         a2, sp, 28
                  andi         t2, a3, -929
                  slt          s0, s3, s10
                  sub          ra, s4, a1
184:              srl          a3, s5, s5
                  ori          ra, t1, -1995
                  ori          a2, tp, 1988
                  xori         s3, s1, -70
188:              sltiu        t2, t3, 478
                  bgeu         s1, gp, 193f
                  slli         sp, t3, 5
                  bne          tp, a2, 196f
                  bne          t6, tp, 198f
193:              blt          s5, t3, 210f
                  andi         s5, s9, -227
                  slli         a3, a7, 29
196:              addi         s4, a4, 923
                  xor          t1, t1, ra
198:              slli         t1, s1, 29
                  srl          s8, s3, s1
                  srai         s8, s8, 26
                  addi         a4, tp, 259
                  nop
                  srl          a4, t4, sp
                  bne          t5, t3, 224f
                  add          a5, s3, s10
                  slli         s5, ra, 28
                  slt          s0, a1, t4
                  sltu         s6, a1, t3
                  blt          a5, a7, 227f
210:              bltu         s8, s2, 212f
                  srl          t4, t4, s9
212:              ori          s5, sp, 585
                  lui          s1, 270345
                  sll          s0, a5, a2
                  xori         s8, a2, 406
                  sll          s0, t0, s1
                  sltu         t0, s11, s0
                  srl          zero, s5, ra
                  sltu         t1, a7, a0
                  andi         tp, sp, -236
                  andi         a3, s5, -615
                  auipc        s3, 319392
                  bge          t5, a1, 243f
224:              bge          s5, a4, 234f
                  ori          gp, sp, -351
                  add          t4, a1, s4
227:              slti         ra, s3, 241
                  addi         a5, gp, -1383
                  bne          s6, t2, 237f
                  add          ra, t1, gp
                  auipc        s6, 688505
                  srli         t2, t0, 13
                  srl          t2, t5, t6
234:              ori          a0, zero, 10
                  slli         a3, t5, 22
                  slti         s9, s5, -1694
237:              addi         t5, s2, -619
                  bltu         s0, s7, 242f
                  and          s11, s2, s11
                  sra          s9, s2, t2
                  bltu         s9, t2, 247f
242:              srl          t5, t2, zero
243:              sltu         ra, t0, t4
                  or           zero, a4, a5
                  sll          sp, s11, ra
                  slti         gp, t0, -374
247:              bne          s7, sp, 265f
                  blt          s1, a1, 263f
                  nop
                  sltu         a7, t4, ra
                  ori          s6, t2, 1764
                  slli         a0, zero, 12
                  bge          tp, s5, 260f
                  srli         a4, s8, 20
                  srai         tp, t2, 5
                  bltu         t1, a7, 275f
                  ori          t2, s7, -906
                  srli         t4, s8, 4
                  slti         s1, tp, -1214
260:              beq          zero, a2, 277f
                  nop
                  sltu         a0, zero, t6
263:              or           t6, t2, s0
                  bne          sp, s4, 275f
265:              beq          s7, tp, 279f
                  andi         a3, a6, -235
                  srl          s2, s7, s5
                  addi         a3, tp, -550
                  sltiu        a3, a6, 738
                  slli         ra, a2, 31
                  bgeu         a7, t1, 285f
                  srl          a7, s8, t2
                  and          s4, t4, s9
                  sll          a1, t5, tp
275:              srai         s4, t2, 2
                  addi         a7, s2, 1150
277:              blt          t1, t5, 288f
                  xori         a7, s11, 1762
279:              bltu         s2, a3, 282f
                  bltu         zero, a2, 296f
                  srli         s4, t5, 14
282:              beq          ra, tp, 291f
                  and          s5, a0, a5
                  bne          s9, t0, 298f
285:              srl          a5, s10, s5
                  srli         a0, t2, 25
                  sra          a1, t1, t0
288:              xor          t4, ra, a6
                  beq          a2, s10, 307f
                  bltu         s9, s11, 293f
291:              blt          s6, gp, 295f
                  srai         s4, zero, 28
293:              add          s8, t1, s3
                  slt          a7, s3, s7
295:              lui          s2, 578724
296:              auipc        t5, 751500
                  slt          s6, s6, ra
298:              ori          s8, s9, 99
                  andi         gp, t5, -394
                  srai         a5, a4, 25
                  slti         a2, s6, -375
                  bgeu         s10, t2, 319f
                  bne          a3, s8, 323f
                  blt          t4, t5, 318f
                  auipc        s2, 362795
                  sub          t4, a5, a3
307:              sll          a2, s3, s5
                  bge          ra, s11, 314f
                  xori         s2, s1, 836
                  bge          sp, a0, 326f
                  bge          s6, a2, 319f
                  bge          s6, s9, 322f
                  slt          t0, a2, t0
314:              and          t4, s10, a4
                  slt          tp, s1, s6
                  sll          a1, t1, a7
                  slli         s11, s1, 6
318:              sll          a1, s0, s6
319:              slti         s8, t4, -1941
                  nop
                  bne          gp, sp, 339f
322:              srli         sp, tp, 10
323:              bge          s4, a0, 337f
                  nop
                  sltu         t0, s10, s1
326:              ori          t5, ra, 1679
                  slti         t0, a2, 416
                  beq          s4, sp, 330f
                  bltu         s7, t2, 348f
330:              add          s3, a6, t1
                  and          ra, s6, s6
                  sub          s1, s1, s3
                  slli         t0, a7, 11
                  sll          ra, a5, a1
                  slt          a7, s0, a5
                  srli         a3, t1, 13
337:              blt          t3, t6, 343f
                  slt          gp, s9, s2
339:              or           s5, t4, s11
                  addi         sp, a7, 1914
                  blt          s8, a3, 350f
                  bge          t5, t6, 345f
343:              sltu         s3, a0, s4
                  srai         t0, a7, 18
345:              slt          zero, gp, zero
                  sltiu        t2, t3, 1436
                  bgeu         s4, s7, 356f
348:              andi         s8, ra, -1914
                  sll          t0, t3, s9
350:              add          a3, ra, a2
                  nop
                  bne          s2, a4, 354f
                  bgeu         zero, a3, 368f
354:              nop
                  sll          t0, a6, s0
356:              sltiu        a4, t6, 1382
                  srl          t2, s6, s2
                  sll          s4, s7, t1
                  xor          a4, s4, tp
                  lui          s6, 341054
                  sltu         a1, gp, s5
                  blt          a3, t1, 366f
                  or           s2, a1, a2
                  beq          ra, t1, 375f
                  sll          s5, a6, s5
366:              add          t6, t2, s1
                  addi         a4, t2, 619
368:              nop
                  sll          s8, t2, s4
                  srai         a5, a7, 3
                  and          a1, t3, s2
                  sltu         zero, ra, s4
                  bgeu         t2, zero, 387f
                  add          s7, s11, s6
375:              addi         t0, a7, -650
                  xor          t6, a3, s2
                  xor          t1, tp, s11
                  bltu         t6, a4, 389f
                  bgeu         gp, s4, 399f
                  bltu         a6, t4, 385f
                  bgeu         a1, s1, 398f
                  slt          s11, t3, t4
                  bgeu         a6, s7, 390f
                  slti         a5, a1, 1481
385:              blt          tp, tp, 397f
                  sra          tp, s0, a0
387:              addi         s2, s3, -1976
                  xori         s4, t1, 680
389:              bge          s7, s11, 403f
390:              andi         a7, s10, 1197
                  auipc        s4, 215992
                  blt          s7, t5, 403f
                  ori          a5, ra, 642
                  or           s4, t2, tp
                  sltu         t5, t0, s4
                  auipc        a5, 616338
397:              srai         t5, a2, 17
398:              srli         gp, s5, 26
399:              sub          a7, t5, gp
                  auipc        sp, 458485
                  ori          t5, a7, -669
                  sub          sp, a7, t2
403:              and          s7, t1, a2
                  sra          s8, s10, t5
                  xor          a4, s9, zero
                  sra          s7, t4, s10
                  bgeu         t3, s8, 413f
                  sltiu        sp, t4, 1939
                  blt          tp, t0, 417f
                  sltu         a5, s7, a2
                  sltiu        s2, ra, -917
                  and          s6, s4, t2
413:              bne          a2, ra, 432f
                  andi         a3, tp, -1976
                  sub          t6, a3, gp
                  bne          t4, s0, 436f
417:              xori         s0, s3, 1582
                  auipc        t4, 762850
                  srai         s5, t5, 22
                  andi         t5, a4, 229
                  ori          s7, a7, -1491
                  slti         zero, tp, 77
                  bltu         s4, s9, 437f
                  sra          sp, s0, zero
                  bne          zero, t1, 435f
                  add          gp, t4, s4
                  or           s8, a5, tp
                  bgeu         t3, t3, 431f
                  sub          a0, s9, a2
                  addi         a2, a6, 1579
431:              bne          s5, s11, 442f
432:              srli         a4, a3, 7
                  andi         sp, a0, 1462
                  and          tp, s8, t4
435:              beq          a4, sp, 444f
436:              sub          s8, s4, t6
437:              srl          s7, a0, a2
                  sll          t4, s8, t1
                  add          t5, s2, sp
                  slli         s4, s9, 7
                  nop
442:              slli         s3, a4, 6
                  sub          t6, a3, a3
444:              or           a2, t3, s3
                  slli         tp, s4, 14
                  lui          t1, 1016579
                  beq          a0, t3, 453f
                  sll          s9, a1, a2
                  nop
                  bltu         t6, gp, 465f
                  sltiu        zero, zero, 1195
                  lui          a4, 575408
453:              slt          t2, t0, gp
                  beq          t1, s7, 471f
                  slti         a2, t0, -762
                  andi         t2, ra, 805
                  ori          ra, zero, 1462
                  srli         s2, zero, 10
                  sub          a7, t1, a5
                  sll          t4, s11, t0
                  sltu         s5, a3, s1
                  bgeu         t6, gp, 476f
                  slt          s9, a5, t1
                  srai         tp, ra, 13
465:              add          a3, t1, t3
                  xori         s3, a0, -1227
                  blt          a1, sp, 472f
                  srai         s3, tp, 28
                  sll          s2, s8, t0
                  sltu         t5, t5, a2
471:              sub          tp, a2, s3
472:              xor          t5, ra, s5
                  sltu         a7, s6, a1
                  andi         s7, s5, -108
                  or           a1, s2, a2
476:              srai         t5, s4, 12
                  addi         ra, a0, 328
                  auipc        s5, 369333
                  xori         tp, s6, 1610
                  andi         tp, s7, 423
                  or           s2, gp, t4
                  bltu         a0, a6, 489f
                  andi         s3, s8, -1910
                  and          s11, a4, s8
                  auipc        t4, 177446
                  sll          s7, sp, t4
                  sltiu        s1, a3, 1500
                  bge          s2, s6, 492f
489:              srai         a4, t4, 29
                  slli         t2, s1, 27
                  bne          gp, s8, 503f
492:              bne          s1, s5, 503f
                  bne          a2, s1, 503f
                  xori         s8, s7, 1884
                  addi         s0, a2, -1751
                  bltu         s5, t2, 503f
                  auipc        a3, 901286
                  nop
                  bne          a5, a7, 503f
                  bne          a5, a6, 502f
                  ori          a4, s7, 1103
502:              xori         s4, a6, 1097
503:              lui          a0, 399469
                  auipc        t2, 656080
                  lw           s4, 4(t3)
                  lui          s0, 918569
                  xor          a2, s4, t1
                  addi         t3, t3, 64
                  sra          sp, s6, s2
643:              addi x30, x20, 0
643:              jalr x30, x30, 0
sub_1:            bgeu         t4, s11, sub_1_stack_p
                  or           a2, t4, s10
                  xor          t0, zero, sp
sub_1_stack_p:    addi         t3, t3, -64
                  sra          sp, t0, s4
                  sltu         s8, a3, a1
                  srl          s7, s2, a7
                  srl          tp, a2, s4
                  sra          ra, s6, a3
                  srli         a1, gp, 7
                  sw           s4, 4(t3)
                  and          a4, s1, tp
                  addi         sp, s5, -1464
                  or           s8, s2, a5
                  addi         s3, a1, -1197
                  andi         s9, a7, 1887
                  slt          a4, s8, s2
                  sltu         s0, t4, t5
                  srl          a5, s7, t0
                  srli         t2, zero, 11
sub_1_j3:         jal          s4, sub_2 #jump sub_1 -> sub_2
                  la           s1, region_1+630 #start riscv_load_store_rand_instr_stream_2
                  ori          a5, s7, 1347
                  andi         t0, a0, 74
                  xori         a3, t4, 521
                  slt          s2, s5, a2
                  lbu          s8, 55(s1)
                  lbu          a2, 43(s1)
                  lbu          t0, -50(s1)
                  ori          t2, t1, 1449
                  lb           sp, 9(s1)
                  sll          s2, t1, t1
                  lbu          a5, -23(s1)
                  add          t4, a0, s7
                  sll          t4, a4, t0
                  sll          zero, ra, t0
                  lb           a5, -35(s1)
                  lb           a1, 21(s1)
                  sb           t3, 27(s1)
                  slt          a4, s8, gp
                  and          a0, s5, a5
                  lbu          a5, 21(s1)
                  lui          t5, 288343
                  sll          s9, a2, a7
                  lbu          a4, -60(s1)
                  xor          tp, s1, a4
                  lb           a0, -51(s1)
                  or           s8, a2, a7
                  sub          a4, a0, t2
                  and          t6, t6, a1
                  slti         a7, t6, -415
                  addi         a4, a4, -1098
                  lw           s6, -10(s1)
                  lbu          a4, -48(s1)
                  sb           s6, 51(s1)
                  addi         a1, a2, -1183
                  lw           s3, 54(s1)
                  and          a2, s2, t1
                  andi         s6, s1, -1600
                  ori          a1, a2, 94
                  lh           sp, -42(s1)
                  ori          t0, t1, 879
                  sh           s11, -50(s1)
                  nop
                  lbu          s5, -27(s1)
                  addi         s9, a2, 1977
                  lbu          t6, 25(s1)
                  lh           s8, 58(s1)
                  lw           t6, -38(s1)
                  slt          a2, s1, ra
                  lb           s5, -44(s1)
                  sltu         a4, a7, sp
                  sb           a1, 11(s1)
                  and          ra, a6, t4
                  sb           sp, -5(s1)
                  lbu          zero, 50(s1)
                  sw           t0, -18(s1)
                  sb           zero, 39(s1) #end riscv_load_store_rand_instr_stream_2
                  la           s0, region_0+742 #start riscv_load_store_rand_instr_stream_1
                  andi         a4, s9, 1872
                  sltiu        s7, a4, -754
                  sh           a2, 540(s0)
                  sltiu        s2, t6, -1405
                  lh           s8, -332(s0)
                  xor          a2, s2, t6
                  lb           s9, 472(s0)
                  add          s3, s6, s0
                  srai         zero, a5, 30
                  slti         gp, s8, -449
                  auipc        a0, 1043193
                  ori          s2, t4, 1422
                  nop
                  lbu          s11, -681(s0)
                  sra          s6, s8, t0
                  auipc        t2, 124539
                  lbu          s1, 998(s0)
                  lb           a7, 123(s0)
                  sb           a4, -560(s0)
                  slti         ra, t5, -781
                  sb           t5, -379(s0)
                  lb           s6, 1255(s0)
                  lh           zero, 888(s0)
                  add          t1, t3, s6
                  sb           t2, 777(s0)
                  lb           ra, -445(s0)
                  slli         t1, s5, 27
                  sb           s4, 774(s0)
                  sltiu        s6, zero, 1369
                  or           a1, s1, s9
                  auipc        t6, 638417
                  lb           t1, 1027(s0) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_0+251 #start riscv_load_store_rand_instr_stream_0
                  sb           t5, -8(sp)
                  lw           s7, -3(sp)
                  lhu          s8, 15(sp)
                  lbu          s1, -3(sp)
                  and          s6, t2, t0
                  lb           s6, 16(sp)
                  sll          zero, s4, s2
                  lbu          t2, -6(sp)
                  andi         s5, zero, 1133
                  sra          t2, t5, s8
                  lbu          s7, 2(sp)
                  lh           ra, 15(sp)
                  lbu          t0, 9(sp)
                  sb           ra, 15(sp)
                  sltiu        t2, a2, -1090
                  lh           s6, 15(sp)
                  lbu          s3, -13(sp)
                  lbu          s8, -4(sp)
                  lbu          t0, 14(sp)
                  lbu          s4, 2(sp)
                  srli         gp, t3, 12
                  lb           t6, -11(sp)
                  lh           t1, -7(sp)
                  sb           tp, 2(sp)
                  lbu          a1, 11(sp)
                  lbu          a4, 12(sp)
                  lh           s1, 13(sp)
                  sltiu        s3, a6, -1011
                  lbu          a1, 6(sp)
                  sw           s3, 9(sp)
                  and          s7, t4, ra
                  lbu          t2, 1(sp)
                  sb           s10, -14(sp)
                  lbu          t6, 3(sp)
                  sb           s9, -4(sp)
                  or           a4, a4, s3
                  xori         s6, sp, 395
                  sll          t5, t4, a2
                  lbu          t2, 5(sp)
                  sb           t1, -7(sp) #end riscv_load_store_rand_instr_stream_0
                  add          s7, s7, sp
                  and          tp, s1, t2
                  or           t1, t0, a1
                  srai         s0, gp, 8
                  srli         t6, s6, 15
                  add          sp, s2, ra
                  bne          a4, t3, 7f
7:                sra          a0, ra, t2
                  xor          ra, s1, t2
                  or           s3, s7, a4
                  slli         s7, s6, 31
                  nop
                  bge          s2, zero, 23f
                  blt          t3, tp, 27f
                  beq          ra, s5, 15f
15:               nop
                  srli         t6, t6, 9
                  auipc        s4, 896469
                  auipc        s0, 650557
                  auipc        a4, 738319
                  sltiu        ra, s2, -513
                  srl          gp, s3, s4
                  sltu         t4, a3, tp
23:               add          a4, ra, a3
                  slti         zero, s10, 336
                  beq          sp, t6, 33f
                  sltiu        tp, a1, -1793
27:               slli         a3, ra, 21
                  auipc        gp, 748302
                  slti         a4, t6, 297
                  sra          s5, a2, a4
                  beq          t2, s9, 51f
                  sra          s6, s4, s5
33:               sltu         sp, t2, s10
                  srl          t4, s10, a5
                  xori         t4, s4, -107
                  sra          s8, a0, gp
                  sll          t6, tp, s9
                  sra          s5, a1, tp
                  srli         s6, a5, 4
                  sltu         s3, a4, tp
                  bltu         a6, s2, 54f
                  xori         s2, a0, 1128
                  blt          ra, t2, 54f
                  ori          a5, a7, 1840
                  blt          t0, sp, 49f
                  sub          t0, a3, t5
                  slti         s11, a2, 1179
                  slti         s0, t1, 1293
49:               bltu         zero, s11, 57f
                  and          t0, s8, s2
51:               addi         s11, s6, 903
                  addi         t1, a5, 1071
                  andi         s2, s10, 980
54:               add          a7, t2, s2
                  bltu         a1, a0, 68f
                  bltu         s11, t1, 61f
57:               blt          a4, a3, 60f
                  bltu         t3, a3, 69f
                  srai         t2, s6, 9
60:               sltu         a4, a4, s1
61:               beq          s0, s11, 74f
                  auipc        a3, 823306
                  nop
                  sra          t2, s1, a4
                  slli         t0, s7, 0
                  sltiu        t4, s5, -288
                  bne          sp, a3, 82f
68:               blt          ra, s8, 72f
69:               nop
                  blt          a5, s0, 75f
                  and          s2, t5, a2
72:               auipc        s5, 969129
                  srai         s7, s11, 9
74:               slti         ra, t4, -1754
75:               blt          s7, t6, 87f
                  sra          s7, s1, s3
                  or           s2, t5, a5
                  bge          t2, s8, 86f
                  xor          s11, t1, s5
                  slt          a1, gp, ra
                  sra          t2, s4, sp
82:               srai         s9, tp, 18
                  srli         ra, s11, 5
                  lui          s3, 910827
                  ori          a1, s7, -670
86:               auipc        t0, 660827
87:               blt          s2, t6, 94f
                  lui          t2, 546985
                  srai         a7, t2, 24
                  slt          a5, s2, s6
                  andi         t5, a0, 496
                  sltu         s7, a5, a4
                  srai         a2, a3, 25
94:               or           s11, a1, sp
                  auipc        t4, 417969
                  xor          sp, t4, a7
                  slli         a2, t1, 18
                  srli         zero, s1, 31
                  sltu         s0, ra, a6
                  slti         a3, t6, -1440
                  sll          t4, gp, a6
                  auipc        s7, 428748
                  xor          a5, a7, s0
                  bgeu         s7, s7, 109f
                  xor          a3, t2, s5
                  lui          a4, 16495
                  and          ra, sp, s7
                  ori          a7, s1, 45
109:              addi         s4, s2, 103
                  sltu         s5, s8, tp
                  bge          t2, a5, 122f
                  xor          tp, t3, a0
                  sltu         gp, t2, a0
                  xor          s2, a3, a1
                  bge          a3, s3, 122f
                  andi         t5, s2, -1523
                  sll          a4, t5, s9
                  srli         a3, t2, 7
                  bgeu         a2, t4, 136f
                  bne          t5, a3, 134f
                  nop
122:              and          s0, a5, a0
                  bltu         s9, t3, 139f
                  slt          s11, zero, a7
                  nop
                  bne          s8, t5, 142f
                  or           sp, s3, sp
                  beq          a5, ra, 135f
                  lui          zero, 367049
                  slt          a2, a2, t1
                  beq          s9, s3, 147f
                  slti         a3, s10, -865
                  slti         s6, s9, 85
134:              slli         s9, s11, 29
135:              beq          t1, t5, 142f
136:              slt          a0, t5, s6
                  lui          a1, 533592
                  bge          s11, s8, 149f
139:              bgeu         s8, t6, 147f
                  ori          s2, s11, -194
                  xor          s4, t5, t3
142:              sll          s8, a1, ra
                  sltiu        a2, s1, 804
                  sra          t0, t2, zero
                  srl          s2, a1, t0
                  sra          s6, a3, a5
147:              andi         tp, s8, 674
                  bltu         a0, s1, 161f
149:              bltu         a7, s10, 163f
                  add          t0, s2, a4
                  sltiu        a7, s7, 2004
                  bge          t4, s9, 163f
                  sltiu        a3, a2, 603
                  slli         a4, a0, 8
                  srl          s11, s1, s6
                  slti         t6, t0, -1559
                  auipc        s9, 809608
                  xor          a1, s1, ra
                  bgeu         s9, a2, 164f
                  or           a7, s6, ra
161:              sra          t6, a4, t3
                  bltu         t1, a1, 182f
163:              lui          a0, 733161
164:              slt          t1, t4, gp
                  addi         ra, a2, -51
                  nop
                  sltu         t1, a7, a4
                  auipc        t4, 773083
                  auipc        a7, 845349
                  bge          s2, t6, 184f
                  andi         zero, s6, 35
                  bltu         s4, a6, 183f
                  srli         t2, s4, 13
                  sltu         s11, s3, t2
                  srai         a7, t1, 12
                  ori          sp, a0, 1161
                  srli         s7, ra, 15
                  slli         t5, s9, 19
                  addi         s1, t2, 1264
                  andi         s9, t4, -185
                  blt          a7, a7, 189f
182:              lui          t4, 969711
183:              srai         zero, a4, 18
184:              addi         s5, t4, -1549
                  sltiu        t0, t2, 12
                  lui          a1, 234861
                  bne          s0, t4, 203f
                  nop
189:              sll          gp, sp, zero
                  or           ra, s1, s8
                  ori          s0, a0, 1178
                  sra          s7, t4, s3
                  and          s7, a0, s0
                  sra          t1, t1, t4
                  auipc        ra, 691783
                  bltu         a3, gp, 209f
                  xor          s11, s5, t1
                  srai         s9, s7, 9
                  andi         t4, s8, 1046
                  and          tp, s11, a7
                  addi         t5, a5, -1834
                  ori          a1, s11, 1472
203:              nop
                  add          a7, a4, zero
                  ori          s9, tp, -1735
                  slt          a7, a4, a6
                  slli         t0, a0, 20
                  or           t0, zero, s2
                  sltiu        s2, s6, -314
                  lui          s9, 653077
                  xori         tp, a4, 1570
                  sub          a2, gp, t5
                  blt          a2, ra, sub_1_j2 #branch to jump instr
                  lui          a1, 254643
                  srl          a4, s1, t5
                  nop
                  sltiu        ra, t5, 1690
sub_1_j2:         jal          s4, sub_2 #jump sub_1 -> sub_2
                  srl          s11, t5, s5
209:              bltu         a5, zero, 212f
                  andi         a1, s11, 235
                  srl          s5, a7, s6
212:              xor          s11, s10, gp
                  addi         t2, sp, 1890
                  sll          a7, s5, s0
                  slli         t1, a7, 17
                  and          a3, s10, sp
                  sltu         s8, a3, t4
                  lui          t2, 59845
                  xori         ra, a0, 1879
                  xori         s9, a7, 1490
                  add          s1, t1, zero
                  srli         t1, t2, 12
                  addi         t0, s10, -370
                  slt          s8, s5, a5
                  srai         a3, s10, 10
                  sra          s11, t6, t1
                  sub          a1, t1, a5
                  sra          s7, a5, t3
                  sltu         t0, s2, a1
                  beq          t3, s7, 241f
                  xor          ra, tp, s5
                  blt          a3, gp, 249f
                  blt          s0, tp, 246f
                  beq          a3, zero, 239f
                  slt          t6, sp, a1
                  ori          ra, s6, 1645
                  bltu         s3, s6, 242f
                  bltu         t4, s3, 239f
239:              slli         s5, s11, 7
                  bltu         a5, t4, 247f
241:              slli         s9, t0, 22
242:              andi         s9, gp, -695
                  srli         gp, s4, 17
                  srai         a5, s0, 11
                  xor          a5, t2, s8
246:              and          t6, s4, a3
247:              sltu         sp, t2, s0
                  sra          a0, s5, a4
249:              srl          a0, s6, s5
                  srli         t2, gp, 12
                  xori         a4, s2, -36
                  srli         s8, s6, 29
                  and          a5, t1, s5
                  bgeu         s1, tp, 270f
                  sltiu        s6, a2, 147
                  srl          s4, a4, s4
                  srl          s1, zero, t2
                  srli         a5, a5, 5
                  bne          s8, tp, 271f
                  xor          sp, a4, s4
                  add          t2, a6, t2
                  srli         s11, s0, 7
                  lui          t4, 109396
                  srl          s0, s10, zero
                  bgeu         t6, a6, 269f
                  sll          s11, t3, s0
                  sra          s2, a4, s5
                  auipc        a1, 276457
269:              add          s3, tp, t5
270:              sra          t5, t6, s11
271:              beq          s7, t5, 275f
                  add          a2, tp, s5
                  andi         a2, s5, 950
                  srai         a0, a3, 11
275:              sub          a5, t0, a7
                  beq          a4, s10, 291f
                  addi         s0, a0, 1577
                  blt          s9, a7, 286f
                  xor          sp, t4, s6
                  slt          s0, t3, s4
                  srl          s11, s6, t2
                  addi         s11, s11, 1644
                  and          a2, t0, sp
                  slli         tp, t6, 25
                  slt          sp, tp, t5
286:              bne          a5, a0, 293f
                  lui          s0, 357661
                  xor          t2, t4, a1
                  nop
                  add          t5, t5, a4
291:              sra          a2, t3, t5
                  xor          s6, s10, a6
293:              sll          sp, ra, a5
                  xor          t5, t4, s2
                  srl          s3, t6, a0
                  srli         s5, ra, 10
                  andi         s8, a2, -1238
                  blt          t4, s0, 314f
                  slti         a1, s4, -1292
                  andi         a4, a2, 47
                  bge          s7, s6, 302f
302:              bltu         a5, s10, 309f
                  slt          a5, s2, s3
                  ori          s3, t4, -1664
                  srl          t4, s11, s8
                  ori          s4, t6, 1515
                  slt          a3, s2, t1
                  lui          s2, 592111
309:              xor          s1, ra, s11
                  slli         s1, zero, 17
                  add          s0, s5, t6
                  auipc        s11, 245719
                  sltiu        zero, s11, 1068
314:              bge          t3, s4, 317f
                  srl          t6, a1, a7
                  srli         t6, s1, 30
317:              srli         s2, a7, 23
                  slli         s5, s3, 18
                  sltiu        sp, s11, -1578
                  srl          s5, t0, s1
                  bge          s5, t0, 325f
                  auipc        t2, 499539
                  xori         t4, t5, 277
                  addi         a0, sp, -1710
325:              slt          s9, t0, t4
                  addi         sp, ra, 1437
                  xor          a0, s7, t2
                  sltiu        t0, sp, 2007
                  srl          t4, s10, s7
                  bgeu         s10, s11, 331f
331:              bgeu         s8, s5, 347f
                  nop
                  bne          a1, s2, 337f
                  sltu         s5, a4, s11
                  beq          s6, a3, 355f
                  nop
337:              add          s9, t0, s8
                  bge          t3, s8, 345f
                  sltiu        a1, s9, 433
                  bgeu         t2, s6, 351f
                  srli         t2, s8, 6
                  xori         gp, t2, 407
                  or           a5, s9, s1
                  and          s2, a7, a3
345:              or           s5, t5, s4
                  bgeu         s0, tp, 357f
347:              sltiu        s6, a7, 1972
                  xor          t1, s0, s1
                  bgeu         t4, t2, 354f
                  addi         s1, s6, 1828
351:              sltiu        s4, ra, -246
                  slti         s3, t3, -1590
                  nop
354:              blt          a2, ra, 361f
355:              lui          s0, 790334
                  nop
357:              auipc        gp, 479220
                  srl          tp, t0, t5
                  nop
                  sll          a0, gp, ra
361:              xori         a5, sp, -1239
                  blt          t0, s9, 375f
                  bgeu         gp, t5, 379f
                  bge          s0, t3, 378f
                  bgeu         s5, a2, 370f
                  sltu         a1, tp, s9
                  srli         ra, a6, 1
                  auipc        s6, 483713
                  auipc        a4, 38442
370:              andi         a1, t1, -931
                  add          s9, a2, t6
                  slti         a5, s11, -517
                  slt          t4, t6, a3
                  xor          tp, gp, s7
375:              srl          a1, a0, a6
                  blt          a4, a1, 384f
                  bgeu         t3, s11, 389f
378:              beq          t1, a7, 395f
379:              nop
                  xori         s7, s1, -896
                  sll          a3, gp, a5
                  srli         t1, s7, 21
                  beq          s6, t1, 391f
384:              slti         t5, gp, -539
                  sltu         sp, zero, s5
                  blt          a6, s5, 402f
                  bge          t2, s0, 388f
388:              slt          a2, s11, s6
389:              add          tp, tp, a1
                  slt          sp, a7, t2
391:              sltu         s9, a0, t4
                  slt          t5, a5, sp
                  bgeu         sp, zero, 403f
                  auipc        a3, 495285
395:              andi         t1, s9, -1204
                  blt          a1, zero, 403f
                  sll          a1, t2, a4
                  sll          tp, s6, t3
                  sub          t2, a4, t0
                  blt          s0, s4, 403f
                  slti         t6, t0, 658
402:              andi         s1, s7, -171
403:              add          t1, s1, a1
                  lui          a4, 482507
                  xori         sp, t1, 97
                  slli         s9, s2, 23
                  lw           s4, 4(t3)
                  slt          zero, s1, gp
                  xori         tp, a0, -848
                  andi         s6, a7, -1712
                  addi         a5, t1, -1661
                  addi         t3, t3, 64
                  srai         s5, s9, 23
                  sll          s1, s10, t3
                  slli         t1, t2, 8
579:              addi x9, x20, 1
579:              jalr x9, x9, 0
sub_9:            bne          t6, s1, sub_9_stack_p
sub_9_stack_p:    addi         t3, t3, -20
                  xor          a4, t2, a5
                  xor          s8, sp, t0
                  lui          a0, 36780
                  sll          ra, s8, a6
                  sw           s4, 4(t3)
                  sub          gp, a3, a1
                  la           sp, region_0+1361 #start riscv_load_store_rand_instr_stream_13
                  and          s11, t6, t6
                  slt          s0, s6, zero
                  slt          s9, a7, sp
                  slli         s8, s5, 15
                  lb           t5, -8(sp)
                  sra          t6, s9, t6
                  lbu          a4, 52(sp)
                  slli         s1, s11, 16
                  lbu          s4, 64(sp)
                  lui          t6, 834748
                  lb           gp, -52(sp)
                  sb           s2, 13(sp)
                  sb           s8, -16(sp)
                  sra          tp, zero, s4
                  lh           a7, 33(sp)
                  sb           a7, -22(sp)
                  add          a5, s7, s7
                  srli         s11, zero, 11
                  add          t6, sp, s5
                  slli         s1, a3, 6
                  srl          s3, s4, s3
                  sw           t2, -37(sp)
                  sb           t5, 52(sp)
                  sll          s9, t6, a0
                  sra          t4, a3, s5
                  sltiu        t5, ra, -662
                  lb           t2, 4(sp)
                  lb           tp, -46(sp)
                  ori          t5, s9, 728
                  lbu          s6, -14(sp)
                  sb           a5, -23(sp) #end riscv_load_store_rand_instr_stream_13
                  la           s3, region_1+1363 #start riscv_load_store_rand_instr_stream_6
                  or           a5, a0, s0
                  srai         t6, a2, 6
                  sltiu        a1, gp, 1108
                  lb           a2, -1355(s3)
                  sltiu        ra, a0, 874
                  auipc        ra, 897577
                  or           s6, a6, a4
                  lb           s4, -550(s3)
                  sltiu        s7, a1, 1970
                  sb           t5, 425(s3)
                  lhu          s7, 601(s3)
                  xori         tp, a7, -1752
                  srli         t2, s2, 20
                  lui          a4, 387833
                  or           s11, s8, sp
                  lb           s7, -149(s3)
                  addi         t5, t5, -1023
                  sra          s1, a3, t6
                  sll          a2, a0, s3
                  sll          s11, s8, s3
                  lbu          s9, -78(s3)
                  or           t5, a4, a6
                  lh           t6, -297(s3)
                  lbu          s2, 206(s3)
                  sub          sp, s10, s0
                  lh           ra, -1181(s3)
                  add          ra, s11, s1
                  sb           s1, -110(s3)
                  ori          s11, a3, 425
                  lbu          s7, -536(s3)
                  lui          a0, 942282
                  slli         t4, zero, 29
                  lb           s5, -1131(s3)
                  nop
                  add          s11, t5, s11
                  xori         t1, a4, -1372
                  or           s0, t3, a7
                  lbu          s2, -536(s3)
                  lh           a0, 515(s3)
                  lw           t0, -1231(s3) #end riscv_load_store_rand_instr_stream_6
                  la           sp, region_1+612 #start riscv_load_store_rand_instr_stream_4
                  andi         s1, a1, -511
                  lbu          s1, -247(sp)
                  sb           s6, -85(sp)
                  sb           s8, -29(sp)
                  sll          gp, s11, s11
                  sra          s2, tp, s1
                  xori         ra, a2, -858
                  slt          ra, s1, s8
                  srl          s2, a5, a1
                  auipc        t0, 879803
                  lb           s3, -119(sp)
                  lb           s5, 119(sp)
                  slli         s9, t2, 2
                  lui          ra, 379331
                  lb           a4, 219(sp)
                  addi         s11, s5, 1625
                  and          s5, sp, t1
                  sb           t3, 121(sp)
                  lbu          a0, -247(sp)
                  lhu          s3, 218(sp)
                  lb           a2, 164(sp)
                  lbu          zero, 127(sp)
                  slli         a1, t5, 24
                  lb           s0, -173(sp)
                  lw           tp, 176(sp)
                  and          s0, s10, s10
                  xori         s0, t4, 1830
                  lbu          s9, -177(sp)
                  sh           t0, 120(sp)
                  lb           t1, -55(sp)
                  lbu          t0, 156(sp)
                  lbu          tp, 239(sp)
                  lui          t2, 176065
                  xor          s11, s6, s4
                  lb           a0, -92(sp)
                  or           gp, s8, s11
                  sra          s1, s4, zero
                  lbu          s3, -23(sp)
                  lb           t4, -163(sp)
                  xor          s8, a1, tp
                  sb           a5, -149(sp)
                  andi         a0, s8, 6
                  lhu          s8, 192(sp)
                  andi         s11, zero, 1493
                  lbu          a7, 207(sp) #end riscv_load_store_rand_instr_stream_4
                  la           sp, region_0+1671 #start riscv_load_store_rand_instr_stream_2
                  sra          t1, s11, s5
                  sltu         s6, a3, sp
                  or           s3, a4, a5
                  addi         t6, t0, 640
                  or           a1, a1, a6
                  slli         t5, sp, 6
                  sltiu        a3, a6, -154
                  sra          tp, s9, sp
                  lbu          s7, -950(sp)
                  lh           s0, -61(sp)
                  slt          s1, tp, s7
                  srl          ra, s4, a2
                  slt          s3, s3, s9
                  lbu          s4, -206(sp)
                  sh           a7, -1147(sp)
                  lb           a4, -49(sp)
                  auipc        a4, 511565
                  sh           t5, 209(sp)
                  lb           tp, -672(sp)
                  sb           t4, -923(sp)
                  lb           zero, -711(sp)
                  srl          a1, a5, t5
                  sw           sp, -751(sp)
                  or           s11, s11, a6
                  sb           gp, -1352(sp)
                  lb           a3, -519(sp)
                  slt          a2, gp, s1
                  and          tp, a7, a1
                  nop
                  lui          s4, 651477
                  lbu          s3, -1220(sp)
                  sh           s7, -1439(sp)
                  lb           a5, 59(sp)
                  lh           s11, -259(sp)
                  xori         t1, tp, -879
                  slli         t4, gp, 21
                  add          s4, t3, s7
                  lbu          t6, -165(sp)
                  ori          a3, s0, 1212
                  sll          t6, t3, gp
                  xori         t4, t1, -1661
                  sb           s5, 160(sp)
                  sb           t0, 18(sp)
                  slli         t4, t6, 29
                  sll          t4, t3, t6
                  slt          t1, t0, s8
                  sub          a5, s4, sp
                  lhu          s2, -1273(sp)
                  srli         a1, t1, 19
                  lb           s9, 10(sp) #end riscv_load_store_rand_instr_stream_2
                  la           s1, region_0+1607 #start riscv_load_store_rand_instr_stream_12
                  lbu          s11, -1064(s1)
                  sb           s6, -372(s1)
                  lui          s9, 36959
                  lb           s8, -770(s1)
                  sltu         s2, s4, s2
                  sb           a2, -130(s1)
                  lh           ra, -1413(s1)
                  xor          s0, a3, s3
                  lhu          s11, -821(s1)
                  sb           s4, 213(s1)
                  sll          a7, a3, s9
                  slt          t4, zero, t0
                  lui          t4, 173167
                  srl          a0, s10, a2
                  slt          t0, t0, s3
                  lbu          s0, -984(s1)
                  lb           tp, 386(s1)
                  sltiu        s0, a1, 968
                  sb           s9, -766(s1)
                  sw           s5, -743(s1)
                  slli         t1, s0, 13
                  auipc        t4, 1036615
                  lb           s7, 146(s1)
                  lui          s8, 425771
                  lh           ra, -295(s1)
                  sb           t3, -1371(s1)
                  lbu          s9, -1318(s1)
                  lbu          t2, -1234(s1)
                  lb           s6, -1134(s1)
                  lb           s7, -1423(s1) #end riscv_load_store_rand_instr_stream_12
                  la           sp, region_1+1170 #start riscv_load_store_rand_instr_stream_3
                  slt          a4, a2, t5
                  xori         a7, s7, -1433
                  add          a0, ra, tp
                  and          a5, t6, t1
                  slli         s1, s4, 12
                  lbu          a0, 7(sp)
                  auipc        s0, 554746
                  sh           s9, -14(sp)
                  slli         s0, t3, 4
                  sb           t4, -16(sp)
                  sh           sp, -6(sp)
                  sb           t4, 15(sp)
                  sb           zero, -2(sp)
                  lb           s1, -7(sp)
                  lb           s4, -7(sp)
                  lui          t2, 548440
                  xor          ra, s11, t6
                  srli         s7, tp, 19
                  ori          s4, sp, 1071
                  lbu          t2, -7(sp)
                  slli         s0, s7, 18
                  sra          s5, tp, s0
                  or           s11, t5, s10
                  lh           s2, -8(sp)
                  srai         s2, zero, 25
                  slt          s9, tp, a3
                  lh           s0, -8(sp)
                  srai         s0, s8, 7
                  srai         s6, s1, 10
                  lb           a1, 1(sp)
                  sra          a5, s0, s8
                  nop
                  auipc        s9, 971896
                  nop
                  sb           s8, 12(sp) #end riscv_load_store_rand_instr_stream_3
                  la           sp, region_1+408 #start riscv_load_store_rand_instr_stream_0
                  srli         s6, a6, 5
                  lhu          t5, -16(sp)
                  sh           t2, -10(sp)
                  sb           tp, 13(sp)
                  sll          ra, s7, s4
                  lbu          s6, 5(sp)
                  xor          a1, s0, a4
                  sra          ra, t2, s7
                  addi         s4, ra, 937
                  srli         gp, s8, 20
                  auipc        a5, 855765
                  andi         a0, sp, -1540
                  lbu          s1, 10(sp)
                  srai         t5, a3, 14
                  lhu          s5, -14(sp)
                  srli         a1, a4, 27
                  slti         t0, t0, -1241
                  sb           s3, -5(sp)
                  sltu         s8, s4, t3
                  sb           s11, -9(sp)
                  lhu          a0, -10(sp)
                  lb           a1, -15(sp)
                  lhu          s8, 14(sp)
                  xor          s3, tp, tp
                  slt          s5, s6, a5
                  slt          t5, t1, gp
                  sw           t3, -16(sp)
                  sh           s4, 8(sp)
                  lb           t5, -1(sp)
                  sub          t1, a4, a6
                  or           s8, s5, s10
                  lbu          ra, 11(sp) #end riscv_load_store_rand_instr_stream_0
                  la           t0, region_0+1579 #start riscv_load_store_rand_instr_stream_9
                  lb           s11, 10(t0)
                  lbu          s9, -24(t0)
                  and          tp, gp, a3
                  addi         s1, s6, -515
                  sb           t3, -30(t0)
                  and          zero, s11, tp
                  lhu          s1, -5(t0)
                  lbu          s9, 62(t0)
                  sltu         sp, s6, t3
                  lb           s8, -6(t0)
                  lb           t6, -40(t0)
                  lhu          s6, -45(t0)
                  sb           tp, 12(t0)
                  lb           s11, 36(t0)
                  sltiu        s4, s0, -1293
                  or           a7, a2, s3
                  sb           t2, -25(t0)
                  sw           t1, -55(t0)
                  sw           t4, -11(t0)
                  sb           gp, -10(t0)
                  lh           s7, -1(t0)
                  srai         s9, s10, 12
                  lui          a4, 669008
                  lb           s11, 27(t0)
                  or           t4, a5, t5
                  lb           s7, -47(t0)
                  auipc        sp, 646953
                  addi         t2, t3, 1260
                  sb           s2, 36(t0)
                  sh           ra, 63(t0)
                  srli         tp, gp, 24
                  lbu          a4, -49(t0)
                  sh           tp, -49(t0)
                  sb           s2, -40(t0)
                  and          t2, s2, zero
                  sb           a1, -2(t0)
                  lb           a4, -6(t0)
                  slli         a2, s6, 7
                  lb           s6, -3(t0) #end riscv_load_store_rand_instr_stream_9
                  la           a3, region_0+260 #start riscv_load_store_rand_instr_stream_14
                  lh           s2, 4(a3)
                  andi         s3, t3, 950
                  lbu          a5, 1(a3)
                  addi         a1, s0, 960
                  nop
                  sh           a0, 6(a3)
                  auipc        t6, 867906
                  lb           s5, -7(a3)
                  sltiu        s3, tp, 1579
                  lb           a1, 1(a3)
                  lb           s6, 10(a3)
                  ori          s3, s8, 1885
                  lbu          t4, 16(a3)
                  lb           t5, 16(a3)
                  sb           s1, -11(a3)
                  lbu          gp, -5(a3)
                  sra          t6, s8, a6
                  lbu          a4, 5(a3)
                  xor          a1, t4, s2
                  slti         t5, a1, -460
                  addi         s3, a5, -1919
                  lb           a2, -9(a3)
                  and          s7, t1, s9
                  lbu          s0, 2(a3)
                  auipc        s7, 653121
                  lbu          sp, -16(a3) #end riscv_load_store_rand_instr_stream_14
                  la           sp, region_0+1314 #start riscv_load_store_rand_instr_stream_1
                  add          a3, s3, s1
                  sh           t3, 10(sp)
                  lbu          t0, 8(sp)
                  ori          s1, s11, 1604
                  srai         s9, a6, 4
                  lbu          tp, -41(sp)
                  srl          s4, a4, zero
                  or           a7, s7, t3
                  lb           a0, -57(sp)
                  sb           s0, -54(sp)
                  lw           s6, -14(sp)
                  lb           s5, -28(sp)
                  add          s9, s11, s1
                  lw           s7, -42(sp)
                  srai         gp, ra, 21
                  and          zero, sp, s10
                  xori         zero, a1, 1662
                  lbu          tp, 55(sp)
                  or           gp, s11, t2
                  lb           zero, -44(sp)
                  lbu          a0, -16(sp)
                  sb           s3, -23(sp)
                  nop
                  lhu          a7, 60(sp)
                  lhu          tp, -58(sp)
                  sra          ra, s1, s9
                  lb           a2, -30(sp)
                  lh           a0, -14(sp)
                  sh           a0, -62(sp)
                  lb           ra, 5(sp)
                  ori          s6, t6, -1503
                  lb           t1, 41(sp)
                  lbu          t1, 7(sp)
                  lb           s4, -33(sp)
                  sltu         a4, tp, s11
                  lui          s3, 49691
                  lbu          a0, -43(sp)
                  lw           ra, -58(sp)
                  sll          ra, a4, s7
                  lh           s8, -32(sp)
                  sb           s2, 20(sp)
                  andi         a1, t6, 984
                  sb           s2, -46(sp)
                  or           zero, a0, zero
                  sll          tp, a2, a2
                  sltu         s4, t6, s1
                  xori         s6, a3, -1855
                  sb           a0, -55(sp)
                  lhu          a7, -14(sp)
                  sw           s5, 54(sp) #end riscv_load_store_rand_instr_stream_1
                  la           s2, region_1+1384 #start riscv_load_store_rand_instr_stream_10
                  xor          a5, a0, a6
                  lbu          ra, 2(s2)
                  lb           a2, 7(s2)
                  lh           t4, -4(s2)
                  lb           s11, 15(s2)
                  lbu          zero, -9(s2)
                  nop
                  lhu          t4, 10(s2)
                  lbu          a7, 6(s2)
                  sb           ra, -13(s2)
                  lui          t0, 495820
                  lbu          a2, -3(s2)
                  nop
                  lb           s5, -10(s2)
                  auipc        t0, 500718
                  nop
                  lb           sp, 2(s2)
                  lb           s6, -15(s2)
                  lb           s7, -9(s2)
                  lb           s7, -4(s2)
                  sh           s0, -16(s2)
                  lb           s3, 5(s2)
                  sb           s9, 11(s2)
                  sll          s1, s5, s10
                  sw           t1, 0(s2)
                  lb           a1, -6(s2)
                  sw           a1, -16(s2)
                  addi         ra, t1, 405
                  slli         t6, t0, 2
                  nop
                  ori          ra, gp, -295
                  sb           t3, 16(s2)
                  sh           a6, -6(s2)
                  lbu          s6, -15(s2) #end riscv_load_store_rand_instr_stream_10
                  sltiu        s9, t1, 109
                  xori         a0, t3, -361
                  blt          s11, s7, 3f
3:                bltu         zero, s0, 13f
                  sub          gp, a2, zero
                  beq          a1, s6, 9f
                  sltu         a3, s10, a0
                  srli         gp, t6, 10
                  bltu         a7, a6, 27f
9:                sltu         a5, s0, s4
                  nop
                  lui          tp, 413922
                  srli         a0, zero, 24
13:               add          s3, s5, t1
                  beq          t5, s4, 22f
                  bltu         t6, a3, 31f
                  bgeu         s2, t3, 32f
                  sra          a5, t6, t3
                  bge          gp, a1, 26f
                  or           a2, a3, t2
                  slti         a1, t1, 522
                  nop
22:               bgeu         s7, a5, 36f
                  blt          s1, s1, 39f
                  sll          s3, t3, a1
                  sra          s1, s9, a4
26:               and          a7, a5, s3
27:               add          ra, a5, s8
                  srli         s9, a6, 21
                  slt          a1, t4, s0
                  srl          s9, ra, t3
31:               sll          t2, a2, zero
32:               sltiu        s8, s11, -1135
                  sra          s11, s8, t6
                  sltu         s2, sp, s2
                  nop
36:               slt          t4, s1, t6
                  sll          sp, tp, a3
                  srli         s3, zero, 5
39:               bge          s1, a7, 43f
                  and          t5, s3, tp
                  srli         s1, s0, 17
                  srai         s1, zero, 1
43:               auipc        a5, 338762
                  slt          s6, t0, t1
                  and          sp, t0, s6
                  addi         s7, t0, 937
                  bltu         t0, s0, 50f
                  and          s7, s5, s8
                  lui          t0, 53091
50:               sra          s2, t6, s3
                  sltiu        a1, s6, -1473
                  andi         t5, s7, 1818
                  bltu         s11, tp, 68f
                  addi         s0, t3, -879
                  addi         t2, a3, 1875
                  srli         t4, s5, 13
                  beq          s3, s6, 65f
                  srl          t0, a5, t6
                  andi         a2, s3, -1957
                  and          s6, zero, t3
                  sltiu        s3, s11, -758
                  slti         s4, s0, 857
                  sll          s7, s6, a6
                  slti         s6, s5, -1059
65:               ori          t6, a3, 841
                  sub          a1, gp, s11
                  blt          gp, t6, 84f
68:               auipc        ra, 505901
                  bne          a6, t0, 84f
                  or           a1, s0, s10
                  xori         ra, t5, 608
                  sra          a7, ra, s10
                  bne          s6, t2, 89f
                  bgeu         t0, sp, 89f
                  and          gp, s0, a3
                  bne          t3, t6, 79f
                  bltu         s2, a7, 86f
                  bne          s3, s0, 79f
79:               srli         a1, a4, 22
                  sll          zero, t6, s11
                  auipc        s11, 121026
                  slti         a5, tp, -12
                  bge          a6, t3, 96f
84:               slt          ra, a0, a7
                  and          ra, tp, t5
86:               blt          s8, a4, 105f
                  add          s6, a3, s4
                  srl          s0, ra, a2
89:               or           t4, s1, t3
                  sltiu        a3, s9, 1225
                  bge          a5, ra, 103f
                  and          a7, t5, a5
                  srl          gp, sp, zero
                  sltu         a0, gp, t2
                  srai         a7, s6, 15
96:               or           s9, s11, s1
                  bltu         a6, a6, 117f
                  ori          a1, s3, 892
                  slti         t0, s8, -1519
                  beq          tp, s4, 107f
                  bge          t2, a7, 107f
                  sltiu        a4, t3, -796
103:              bne          a2, s7, 115f
                  slli         s7, s11, 24
105:              sra          gp, s8, t1
                  slt          s2, t6, a1
107:              sra          s8, s2, s4
                  xor          s5, s1, s9
                  addi         s7, t5, -562
                  sra          s2, s7, s4
                  slti         a1, a6, 1014
                  and          s2, a7, a7
                  srli         s1, a6, 25
                  srai         s8, t6, 31
115:              and          t5, s8, a3
                  beq          a0, a0, 121f
117:              xor          s0, s11, a6
                  sra          s11, s0, s1
                  xor          s3, ra, a6
                  auipc        s3, 680905
121:              bgeu         s2, t6, 125f
                  xor          tp, a4, a3
                  bge          s3, s1, 131f
                  beq          a7, s9, 136f
125:              blt          t1, a5, 129f
                  ori          s7, s4, -515
                  sltiu        s9, zero, -1316
                  xor          t2, s8, t4
129:              sll          zero, s3, s3
                  srai         a2, a4, 26
131:              sra          t0, s9, a2
                  xor          a3, a2, t4
                  slti         t4, s2, 1542
                  srai         s6, a6, 15
                  lui          t2, 774481
136:              bne          a2, sp, 155f
                  and          a0, s8, zero
                  beq          t3, zero, 145f
                  auipc        s2, 150903
                  xori         t2, a2, 1657
                  addi         a5, s11, -1661
                  lui          t4, 626205
                  sltiu        s3, t1, 1913
                  and          s2, t0, s0
145:              and          gp, t2, s8
                  blt          s10, s2, 162f
                  bgeu         s0, a4, 150f
                  xori         s6, s1, -538
                  andi         s8, gp, -663
150:              bgeu         a1, t3, 153f
                  or           t1, a1, t5
                  sra          s11, t5, s3
153:              srai         a3, a3, 5
                  sub          s9, a3, a3
155:              sra          s7, t1, a7
                  blt          t1, s8, 164f
                  addi         sp, s2, -923
                  slli         t1, s5, 24
                  and          s5, t2, gp
                  bge          tp, s7, 161f
161:              beq          t5, s5, 175f
162:              or           a4, a7, s6
                  slli         s6, ra, 5
164:              srl          t0, t1, t0
                  sll          s4, s8, s6
                  sll          a3, t5, zero
                  srai         a4, t2, 21
                  sub          ra, s6, s0
                  bgeu         t5, zero, 173f
                  xori         s8, s6, 1908
                  bge          s2, s1, 191f
                  slt          t6, a0, s6
173:              bgeu         s2, ra, 185f
                  sub          t2, s6, t3
175:              srli         a0, tp, 11
                  and          ra, a0, a4
                  slti         s3, s11, 1304
                  add          sp, tp, t3
                  add          s7, a2, gp
                  andi         t1, a5, 1297
                  srl          a0, s4, a0
                  bltu         s5, a4, 192f
                  addi         a7, a7, 1999
                  sltiu        s7, a0, -2015
185:              bgeu         t4, a0, 186f
186:              beq          s9, t2, 195f
                  sra          a2, t4, s11
                  auipc        t0, 431345
                  slt          s2, sp, a4
                  andi         s1, s3, -690
191:              add          a5, s1, s6
192:              bltu         a2, t3, 205f
                  nop
                  add          a0, tp, t0
195:              andi         s11, s8, 547
                  or           a7, s9, tp
                  sltiu        t4, sp, 1336
                  nop
                  ori          zero, s5, 710
                  sll          t0, a7, t6
                  beq          t6, s9, 206f
                  and          s4, t6, s8
                  add          zero, s1, s9
                  sll          t1, s2, s2
205:              sub          gp, a2, ra
206:              ori          a0, a2, 1906
                  or           t4, t2, s6
                  or           t6, t6, s6
                  slt          s8, s0, s3
                  or           a5, s5, t0
                  sll          s11, s5, t6
                  beq          tp, a0, 228f
                  beq          t0, ra, 221f
                  sll          a7, s4, s2
                  addi         a3, a6, 1403
                  xori         s8, s7, -1049
                  sra          s6, s4, zero
                  nop
                  beq          s4, t4, 234f
                  sltiu        a0, s5, -70
221:              srai         s0, a5, 17
                  addi         t6, ra, -113
                  sub          s8, s10, a1
                  add          a3, a7, a6
                  beq          s4, a2, 241f
                  lui          t0, 774423
                  andi         t6, ra, 102
228:              sltiu        s0, a5, -1302
                  sll          gp, t0, a7
                  blt          a4, s3, 245f
                  blt          t6, tp, 247f
                  srl          a1, ra, s11
                  bge          t0, t1, 239f
234:              slli         a3, s11, 16
                  bltu         ra, t0, 239f
                  srli         a7, t6, 8
                  andi         s11, ra, -281
                  auipc        a3, 764802
239:              bltu         s0, t0, 254f
                  sltiu        s1, s5, -440
241:              beq          s7, a3, 260f
                  ori          a7, s2, 1436
                  sub          s8, a3, t4
                  nop
245:              or           a5, s4, t1
                  ori          s4, t4, 1932
247:              addi         s8, tp, -685
                  auipc        gp, 937648
                  bne          t4, s7, 266f
                  slli         t5, s4, 4
                  bgeu         t4, tp, 254f
                  srl          s7, s5, s3
                  bge          s11, s4, 261f
254:              bge          t4, ra, 269f
                  slt          zero, s1, sp
                  sub          a3, s10, t4
                  slli         s8, s6, 8
                  beq          gp, s3, 274f
                  sra          s0, t6, s6
260:              srli         s0, sp, 7
261:              addi         s7, t2, 1211
                  xor          t2, s0, s5
                  bgeu         zero, s2, 271f
                  or           gp, a0, a4
                  auipc        sp, 429253
266:              srl          s3, a7, s5
                  slt          sp, s8, ra
                  sub          s2, zero, s6
269:              xori         s3, gp, -832
                  bne          s10, a1, 277f
271:              bne          zero, a1, 276f
                  add          s7, a0, sp
                  sltiu        s2, gp, -1393
274:              add          t6, a7, s7
                  srl          a4, t0, t1
276:              sltiu        t1, a1, -270
277:              sll          t2, t1, a0
                  srli         sp, gp, 20
                  or           s6, s7, t4
                  sll          s1, t6, a3
                  and          s1, a2, a6
                  andi         t4, s3, 1237
                  ori          a0, a5, 613
                  or           a1, a3, t6
                  addi         a1, a5, -1086
                  beq          s2, t1, 301f
                  bgeu         a7, s0, 303f
                  nop
                  slli         s7, t1, 2
                  lui          s4, 937411
                  or           s4, s3, t0
                  sll          t1, s1, a1
                  xor          s0, a1, s9
                  xor          a7, ra, a3
                  bgeu         s11, t1, 309f
                  bne          a3, s7, 299f
                  xor          ra, t0, t3
                  sub          t0, s10, t3
299:              bltu         t6, a0, 311f
                  sltu         a4, a1, a7
301:              or           s2, tp, a5
                  beq          a7, s9, 314f
303:              srli         s3, t4, 27
                  srai         a5, a2, 13
                  bgeu         t5, sp, 325f
                  addi         sp, s9, -263
                  bltu         a1, s9, 311f
                  sltiu        s5, t3, -996
309:              xor          t1, a6, t6
                  bltu         a5, a7, 325f
311:              bltu         a1, s4, 315f
                  xor          t6, zero, sp
                  xori         s1, s0, -767
314:              sub          a7, s9, t4
315:              srai         a4, a6, 1
                  sub          s4, a1, t5
                  bne          zero, sp, 318f
318:              bltu         s6, gp, 335f
                  addi         s2, s9, 1787
                  andi         s0, s9, 648
                  add          a0, t4, t1
                  or           s11, tp, t2
                  bne          s3, t6, 333f
                  slli         s1, a6, 10
325:              andi         tp, t4, 1652
                  srai         s2, a6, 1
                  bge          s6, s7, 336f
                  addi         a1, s8, 608
                  add          a2, t0, t1
                  sll          s3, a4, t0
                  slti         a3, t1, -392
                  bgeu         a6, s0, 348f
333:              bge          t5, t0, 334f
334:              sltu         zero, s2, s10
335:              auipc        t0, 857849
336:              slli         a7, tp, 6
                  lui          s9, 921445
                  beq          s1, s6, 346f
                  blt          zero, s8, 345f
                  sub          t5, sp, zero
                  slli         t4, s1, 19
                  sltiu        sp, s8, 1027
                  or           ra, t0, gp
                  slt          a7, s11, a0
345:              add          t5, s11, sp
346:              slt          s3, t4, a0
                  bltu         a4, s6, 351f
348:              sra          s3, s6, gp
                  srai         t0, s3, 30
                  srli         zero, gp, 17
351:              nop
                  ori          t6, t2, -1180
                  beq          a5, tp, 372f
                  ori          a1, t2, -83
                  xori         s6, sp, -261
                  xori         a5, gp, 1210
                  and          s3, s1, s2
                  nop
                  and          s4, ra, s10
                  lui          s1, 889658
                  andi         t6, t6, -699
                  srli         s8, t2, 4
                  beq          a2, a2, 379f
                  srli         s6, s3, 30
                  nop
                  and          a4, s0, s7
                  srli         a4, a0, 7
                  srli         t1, s7, 9
                  andi         s1, t6, -156
                  sra          a0, a0, t2
                  sll          s6, sp, zero
372:              slti         t5, t5, -1630
                  sltu         s6, ra, t6
                  addi         a3, a0, -983
                  beq          a5, a0, 394f
                  srai         a3, ra, 21
                  slli         s3, a5, 7
                  bltu         t0, s3, 391f
379:              bgeu         zero, s4, 395f
                  or           s8, a0, sp
                  bltu         t6, a5, 396f
                  slti         gp, a1, -1384
                  auipc        a3, 942238
                  ori          s2, sp, -15
                  sra          tp, tp, a0
                  lui          s4, 209925
                  bgeu         s8, t1, 403f
                  auipc        s11, 534467
                  bgeu         tp, s9, 390f
390:              bltu         s9, s8, 409f
391:              or           tp, s5, gp
                  addi         ra, a5, 469
                  srli         a0, tp, 30
394:              and          a1, a7, s0
395:              beq          s2, s9, 402f
396:              or           a1, s9, t5
                  or           s5, s0, t5
                  xori         a5, t0, 786
                  add          t6, s11, t6
                  lui          ra, 178836
                  bge          s9, s9, 404f
402:              sll          s3, t2, s1
403:              and          a5, s4, t2
404:              auipc        a4, 268887
                  ori          ra, s1, 1796
                  blt          s3, s9, 422f
                  lui          a5, 116807
                  sltiu        s9, s4, -1746
409:              addi         t1, zero, 295
                  ori          t1, t5, 1299
                  nop
                  bne          ra, t4, 422f
                  andi         s11, zero, 894
                  xori         t4, a0, 1405
                  srai         s5, s4, 9
                  xor          t0, sp, s8
                  slti         a4, t1, -1945
                  sltu         s11, t2, t5
                  xori         a3, s4, 1492
                  sltiu        a5, t0, -327
                  sltu         s11, t4, t4
422:              sltu         s2, t3, sp
                  xor          a5, s9, a5
                  bgeu         t6, a5, 428f
                  bltu         s7, a5, 441f
                  blt          a1, s6, 441f
                  bltu         s11, s11, 440f
428:              xor          t0, a6, a0
                  lui          t6, 836838
                  lui          s8, 999997
                  bge          s5, a3, 434f
                  lui          s9, 660447
                  srl          s8, t0, a0
434:              sra          t6, ra, sp
                  srl          t6, s11, a7
                  lui          gp, 838577
                  xor          s6, a2, a4
                  sltiu        s2, s9, 476
                  andi         t0, a7, -1080
440:              nop
441:              auipc        s2, 990488
                  addi         a0, a5, 2014
                  srli         a4, s3, 24
                  blt          s4, ra, 456f
                  auipc        t4, 176704
                  nop
                  slti         t6, s0, 1448
                  srai         t0, gp, 6
                  sll          s9, a4, zero
                  andi         tp, a0, -1266
                  lui          gp, 312167
                  xori         t0, a4, 1691
                  sub          tp, a5, ra
                  beq          s3, s4, 455f
455:              srl          t2, s10, s2
456:              srai         t5, zero, 25
                  srai         gp, s4, 24
                  bltu         s2, t3, 473f
                  xor          s2, ra, zero
                  slli         s9, s10, 11
                  xor          s1, a0, a0
                  nop
                  or           s9, s6, s2
                  sll          a5, s9, s3
                  bge          s11, s4, 473f
                  sltu         a7, s9, a1
                  sll          s7, s3, s3
                  bne          t2, a6, 487f
                  add          t1, s7, t4
                  bge          a0, t0, 478f
                  bge          a1, t0, 479f
                  srai         s5, a7, 29
473:              bne          t5, t3, 490f
                  bgeu         a5, a1, 488f
                  nop
                  beq          a0, s8, 480f
                  addi         s11, a2, 1091
478:              srl          t6, zero, a0
479:              beq          s2, t6, 484f
480:              slli         zero, a4, 17
                  bge          s8, s8, 493f
                  addi         t1, t3, 1998
                  sltu         t2, gp, sp
484:              srai         a0, s5, 7
                  beq          s9, gp, 494f
                  bgeu         s4, s6, 490f
487:              and          zero, s1, s11
488:              lui          t6, 298305
                  bgeu         a0, t4, 495f
490:              bge          t2, t2, 510f
                  and          s7, s9, s1
                  slli         s0, a3, 7
493:              add          s4, s0, s11
494:              slt          a5, t2, a4
495:              nop
                  lui          a7, 199035
                  nop
                  bltu         t1, t6, 518f
                  add          t6, a3, a4
                  ori          t0, s8, -298
                  sra          tp, a2, t6
                  slli         t0, a1, 16
                  addi         s7, s3, -1587
                  and          t6, sp, s11
                  xori         t0, gp, -1503
                  lui          t4, 304264
                  sltu         a2, s10, s9
                  blt          s11, a5, 520f
                  bne          s1, t4, 513f
                  la           a2, region_0+1599 #start riscv_load_store_rand_instr_stream_8
                  lbu          a5, -1487(a2)
                  lbu          t0, 315(a2)
                  lb           s2, -1170(a2)
                  lbu          a5, 292(a2)
                  lbu          t1, -814(a2)
                  lh           ra, -1077(a2)
                  lh           s8, 313(a2)
                  xori         s11, s8, 412
                  lbu          t1, -477(a2)
                  lb           a4, -135(a2)
                  lbu          a0, 326(a2)
                  addi         s3, a0, 1986
                  ori          s8, a7, -436
                  andi         s9, s8, 1726
                  lh           t6, -37(a2)
                  lh           s11, -1273(a2)
                  and          s6, s5, a1
                  sub          s4, t1, tp
                  sb           zero, -855(a2)
                  sub          s0, zero, a1
                  add          s4, s6, s4
                  lb           s6, -550(a2)
                  sh           t3, -863(a2)
                  lw           a3, -1263(a2)
                  lb           t5, 211(a2)
                  lbu          zero, -518(a2)
                  andi         t6, tp, 1782
                  lhu          t5, -1313(a2)
                  slt          a7, s0, ra
                  lbu          s8, 239(a2)
                  srli         t2, s7, 15
                  srli         sp, s7, 1
                  lbu          a4, -1134(a2)
                  lb           s8, -1120(a2)
                  sh           t4, -677(a2)
                  andi         t4, t5, -142
                  andi         s2, t0, -2026
                  auipc        sp, 428726
                  srai         t1, a6, 30
                  sb           a6, 322(a2)
                  sb           t5, 50(a2)
                  auipc        s2, 596647
                  sw           sp, -123(a2)
                  srl          a3, a4, t1
                  lb           a4, -478(a2) #end riscv_load_store_rand_instr_stream_8
510:              srl          gp, zero, a4
                  auipc        s5, 499654
                  bne          a2, s6, 528f
513:              xori         s9, s6, -1392
                  lui          a2, 948353
                  xori         sp, t4, 729
                  bne          s8, s11, 525f
                  bltu         s7, s9, 536f
518:              bne          s5, t6, 537f
                  and          t4, a2, a4
520:              bltu         a4, tp, 525f
                  srai         t2, s4, 26
                  add          a7, t3, t1
                  slli         ra, s8, 23
                  and          zero, t0, a0
525:              andi         a3, a5, -644
                  or           a3, t1, sp
                  or           s2, s4, sp
528:              slti         ra, s11, -588
                  sra          t2, s0, t1
                  sltu         zero, a4, a5
                  add          a1, s9, t0
                  sub          t5, t1, s11
                  sltu         ra, s5, a1
                  slt          zero, t3, t3
                  andi         a4, t3, -21
536:              andi         s3, a1, -433
537:              or           s4, t0, s10
                  xor          a3, s7, ra
                  or           s3, s6, s10
                  xori         t4, s10, 1882
                  lui          s1, 655749
                  bne          t3, s10, 552f
                  addi         s4, a5, 1314
                  sltu         a0, a4, a2
                  or           t4, t2, s3
                  auipc        s2, 102611
                  sltu         t5, s9, gp
                  xori         zero, sp, 987
                  bgeu         a7, a1, 563f
                  blt          a5, t5, 558f
                  blt          s3, t0, 555f
552:              beq          sp, s9, 567f
                  addi         s7, s3, 47
                  sub          s4, a5, s2
555:              slli         s6, a1, 6
                  xori         s7, a2, -1402
                  bltu         t6, s8, 574f
558:              slt          t0, gp, a4
                  srai         t4, t5, 29
                  slt          tp, a1, s5
                  srli         a4, a0, 6
                  slt          s5, gp, tp
563:              slti         sp, gp, -138
                  bgeu         a0, tp, 568f
                  bne          s8, t5, 577f
                  ori          t5, zero, -673
567:              nop
568:              blt          a5, s8, 584f
                  sub          s11, s8, s3
                  add          gp, t6, s9
                  addi         tp, t4, -1631
                  or           a1, a0, a3
                  ori          s5, t0, 1628
574:              sra          s3, tp, a7
                  add          tp, sp, gp
                  ori          a2, s7, -1927
577:              bltu         a4, a7, 593f
                  auipc        t5, 866866
                  addi         zero, s5, -521
                  xor          ra, t1, t0
                  slli         a2, t4, 11
                  slt          t5, ra, a5
                  sll          t2, a3, s6
584:              xori         s8, s2, -2042
                  srl          a5, a3, s7
                  sra          t0, s4, a5
                  and          a7, s6, a6
                  sub          zero, s7, s6
                  srli         a4, a7, 12
                  or           s8, a0, s9
                  or           t2, a2, s1
                  nop
593:              and          s4, s4, a3
                  and          sp, s3, s8
                  srai         s9, ra, 2
                  bgeu         t6, a2, 609f
                  bgeu         s3, t4, 612f
                  srli         s11, zero, 10
                  andi         s9, s0, 346
                  nop
                  ori          a0, s10, -774
                  bne          t5, ra, 605f
                  bltu         a2, zero, 604f
604:              sltiu        s8, gp, -1113
605:              bltu         s11, a6, 606f
606:              sltiu        a1, a4, -765
                  addi         s4, a6, 632
                  nop
609:              slt          s8, s6, s6
                  or           a4, s5, s0
                  slti         a4, t2, -280
612:              sra          t0, a7, s6
                  blt          s4, a2, 629f
                  srl          gp, t4, s11
                  addi         s1, s4, 1415
                  add          gp, a2, t1
                  and          t6, t6, s3
                  bne          t3, s8, 625f
                  sltu         s5, s11, s7
                  or           t5, a5, sp
                  lui          zero, 512656
                  and          sp, t1, t2
                  auipc        a0, 623160
                  or           a1, t6, s10
625:              nop
                  sub          s2, s10, s4
                  and          t1, s3, s4
                  srli         s1, a3, 23
629:              and          s3, t3, a4
                  bltu         a3, s8, 645f
                  sltu         a0, a1, s7
                  sltiu        gp, a5, 1777
                  andi         a3, s11, 305
                  slti         s2, s6, 641
                  addi         s1, t5, 1893
                  srl          s2, s0, t2
                  add          tp, s5, t5
                  add          a1, t4, t0
                  addi         tp, t5, 112
                  srai         s9, gp, 16
                  addi         a7, s6, 1309
                  lui          a2, 393430
                  slli         a5, zero, 9
                  and          s4, t2, a1
645:              and          s9, s2, a7
                  sltiu        s2, s7, -1825
                  srl          s8, t0, s8
                  andi         s0, s2, -1514
                  sub          s4, t2, t6
                  blt          t6, ra, 658f
                  slt          t4, a0, t2
                  andi         s7, t4, -1579
                  nop
                  sub          a5, s2, a4
                  srai         gp, a4, 24
                  bge          s6, s9, 659f
                  sltu         t2, a0, tp
658:              slti         s11, gp, -482
659:              or           t0, s11, tp
                  beq          t1, zero, 668f
                  lui          t1, 218336
                  srl          t1, sp, s0
                  sra          s11, s4, a7
                  blt          s5, s4, 670f
                  sra          t6, tp, s6
                  slti         tp, s2, 1876
                  bltu         t0, a0, 680f
668:              sra          s2, s2, sp
                  add          sp, a5, t2
670:              auipc        s11, 738247
                  or           s8, s4, s0
                  blt          a1, s8, 691f
                  srai         tp, t0, 9
                  bne          gp, a5, 686f
                  addi         s0, gp, -980
                  andi         s1, t4, -1742
                  xor          a5, t0, s6
                  ori          t6, t6, -205
                  blt          s9, t4, 693f
680:              srl          s0, ra, a7
                  ori          t6, a0, 1065
                  sltiu        s3, ra, -1544
                  auipc        s8, 858546
                  sub          a2, a7, a6
                  add          s6, s10, a5
686:              auipc        s11, 609933
                  bltu         a1, t1, 703f
                  bge          a4, s11, 691f
                  ori          t4, s5, 1240
                  or           t1, t5, zero
691:              sltu         zero, t5, t0
                  sll          s0, s11, t3
693:              bgeu         zero, a5, 708f
                  bltu         a5, zero, 709f
                  bgeu         s3, a4, 698f
                  bltu         t5, s4, 712f
                  srli         s8, t1, 22
698:              addi         s3, s0, -1512
                  sub          t5, a1, s6
                  bltu         a2, ra, 715f
                  sll          s1, sp, t3
                  bltu         zero, s6, 703f
703:              sltu         t6, zero, a3
                  slti         t0, a4, 1858
                  add          s8, a7, t1
                  nop
                  srai         zero, t4, 4
708:              addi         a4, t2, 1751
709:              sltu         t2, t1, s11
                  bltu         a4, t1, 726f
                  bne          t0, sp, 719f
712:              sltiu        s5, t5, 382
                  slli         a5, ra, 20
                  nop
715:              xori         a1, gp, -1323
                  beq          a6, tp, 728f
                  auipc        a5, 275313
                  or           s6, t6, t0
719:              bge          s7, a2, 727f
                  ori          zero, a6, 46
                  sltu         s2, a2, sp
                  xor          a0, s1, tp
                  bgeu         s6, a4, 739f
                  xori         sp, s4, -1918
                  beq          t4, s2, 742f
726:              andi         gp, a5, -1252
727:              or           s2, t5, sp
728:              srai         a0, s10, 5
                  slt          s4, a3, ra
                  add          s1, gp, s8
                  or           t4, s8, t2
                  sltiu        t1, a2, -916
                  and          a0, gp, t2
                  bltu         s8, s8, 739f
                  auipc        s5, 731529
                  sll          tp, t6, a1
                  auipc        gp, 1022343
                  andi         s0, t0, 947
739:              sltiu        t5, a0, -616
                  slli         t2, t5, 16
                  add          ra, a6, s7
742:              sltiu        zero, sp, 873
                  bgeu         s0, a5, 747f
                  sltu         s7, t4, s11
                  sub          a0, a0, s9
                  bne          zero, t5, 766f
747:              ori          t6, s6, 743
                  xor          s1, t2, s9
                  sll          s3, a1, tp
                  sll          a2, s8, s5
                  srai         ra, a0, 0
                  addi         t2, a6, 1719
                  beq          s7, t4, 760f
                  slt          s2, t2, sp
                  slt          a2, a1, s0
                  nop
                  beq          a6, t1, 767f
                  slt          t6, s1, gp
                  auipc        t5, 941749
760:              lui          t2, 125611
                  srl          s1, a0, gp
                  sltiu        sp, s2, 1437
                  blt          a2, a1, 772f
                  srl          s4, a5, a0
                  sub          a0, tp, a3
766:              auipc        s3, 822728
767:              sltiu        t6, a0, -538
                  beq          t4, s11, 772f
                  auipc        a0, 63398
                  sub          a1, t4, s8
                  andi         s7, zero, 884
772:              beq          gp, s6, 778f
                  srl          s8, a3, tp
                  or           a5, t6, s7
                  sltiu        gp, s5, 487
                  bge          t2, a0, 795f
                  nop
778:              sub          a2, s4, s2
                  sltiu        a5, s7, -613
                  sltu         a1, t2, tp
                  sra          t1, s7, s6
                  lui          t1, 747536
                  beq          t1, sp, 791f
                  andi         s6, s8, -576
                  srl          ra, ra, a6
                  slt          s3, a2, tp
                  sub          a2, t2, s8
                  add          a0, s3, a7
                  ori          s3, s2, 1229
                  bltu         a4, a3, 791f
791:              sltu         zero, s1, t2
                  bne          a0, ra, 796f
                  sll          s11, s1, tp
                  or           t1, a1, s9
795:              sll          a1, s1, s2
796:              andi         gp, a4, 746
                  srai         s5, s5, 6
                  auipc        ra, 639276
                  xori         gp, ra, 1541
                  andi         zero, s7, 919
                  bgeu         a4, s2, 816f
                  sll          a3, a2, t0
                  ori          a1, t5, -1416
                  slli         s6, zero, 10
                  blt          a2, s8, 809f
                  addi         s7, t0, -1274
                  bge          a3, t1, 813f
                  srl          s5, s7, tp
809:              ori          a1, s1, 49
                  sltiu        a2, a1, 1255
                  nop
                  srai         t0, s10, 22
813:              sltiu        s1, tp, 1991
                  nop
                  lui          t1, 1009888
816:              srl          a1, s0, a0
                  xor          a7, s1, t2
                  sll          tp, a3, t5
                  xor          zero, t0, s10
                  nop
                  srl          s1, a2, s1
                  nop
                  la           sp, region_0+271 #start riscv_load_store_rand_instr_stream_7
                  ori          tp, s0, 1685
                  sb           s10, -2(sp)
                  lbu          ra, -52(sp)
                  sltu         a2, a6, t5
                  andi         a3, s5, 817
                  sb           s10, -199(sp)
                  srai         a2, a4, 19
                  lb           zero, -247(sp)
                  xori         t0, tp, 1001
                  addi         t4, t0, -676
                  sb           s1, -121(sp)
                  xor          zero, s8, t5
                  sll          t2, ra, s6
                  and          s4, s10, s0
                  lhu          a1, 23(sp)
                  srai         s1, s9, 30
                  and          a1, a3, t1
                  slti         s11, zero, 2032
                  slt          a3, a0, t3
                  srai         s7, tp, 24
                  andi         s1, a3, -1225
                  sra          a0, s7, s9
                  xori         zero, t5, 477
                  auipc        s11, 802963
                  andi         zero, a2, 1959
                  or           a0, t4, zero
                  slli         s5, t4, 25
                  xori         s1, t0, 305
                  xor          a3, s10, t3
                  slli         s7, t4, 30
                  lb           a3, -182(sp)
                  sh           s10, -173(sp)
                  lbu          t0, 62(sp)
                  lbu          ra, -16(sp)
                  sltiu        tp, s9, -1771
                  sb           t3, -180(sp)
                  andi         s11, a2, 1961
                  lbu          t1, 202(sp)
                  lb           t4, 18(sp) #end riscv_load_store_rand_instr_stream_7
                  blt          a7, tp, 831f
                  bgeu         t1, a5, 843f
                  sll          s0, a6, s11
                  sub          s3, a7, s3
                  bltu         s7, a1, 835f
                  sra          t5, s0, t5
                  srl          t2, zero, zero
                  ori          ra, s5, -2
831:              slt          s5, t2, t2
                  slli         tp, s8, 24
                  nop
                  slt          ra, s6, a0
835:              sltu         tp, sp, s4
                  nop
                  addi         s9, s9, -574
                  addi         sp, s0, -957
                  lui          gp, 947632
                  auipc        tp, 212804
                  srli         s5, s1, 1
                  blt          s4, t5, 854f
843:              sll          a5, s6, t1
                  sub          s6, a7, s8
                  bge          s6, a3, 846f
846:              add          t4, t2, t4
                  bltu         s2, t3, 867f
                  auipc        s5, 664370
                  bne          a2, gp, 865f
                  bgeu         s7, s1, 864f
                  sra          t5, tp, sp
                  beq          s6, gp, 871f
                  srl          sp, s2, a3
854:              add          s2, t6, a4
                  and          t6, t0, t1
                  beq          a4, t3, 872f
                  beq          s8, s4, 860f
                  slt          s4, s1, a0
                  add          a0, s6, s9
860:              add          a7, s10, a6
                  nop
                  xor          a2, s11, t4
                  sltiu        s2, sp, -1391
864:              bgeu         t0, a1, 869f
865:              xori         t4, s8, -1930
                  sra          sp, a5, s8
867:              andi         a5, a4, 1143
                  add          a5, s6, s5
869:              andi         ra, s2, -200
                  and          a7, s6, s11
871:              bltu         s0, s11, 883f
872:              slt          t6, s10, s11
                  bge          a3, s8, 889f
                  srai         s8, ra, 1
                  srai         s4, s4, 17
                  ori          s8, s11, 479
                  sub          s11, a2, t5
                  srli         s0, s6, 13
                  ori          s0, tp, 162
                  lui          a7, 999666
                  lui          a2, 276131
                  slti         t1, s8, 1605
883:              xor          s4, t3, s3
                  ori          t1, s8, 1310
                  beq          s0, s5, 886f
886:              bne          s11, s6, 889f
                  ori          s9, zero, 115
                  auipc        t5, 343301
889:              lui          a7, 874201
                  beq          t2, a0, 898f
                  srli         t6, s2, 27
                  srli         s7, s2, 16
                  add          s7, t6, t5
                  sll          t4, s3, s11
                  slli         gp, sp, 2
                  andi         a2, s3, -873
                  blt          s10, s1, 901f
898:              sltiu        tp, a3, -1006
                  andi         t6, s7, -572
                  srai         s8, a0, 2
901:              srl          t1, a6, s9
                  sltiu        s1, s10, -954
                  nop
                  srli         s8, a4, 10
                  and          t0, a5, a0
                  bltu         t1, t3, 913f
                  sub          a4, a0, s11
                  lui          s3, 715835
                  bgeu         s11, t1, 918f
                  xori         s2, s6, -2022
                  bne          s6, a1, 921f
                  srli         s2, s0, 9
913:              slli         a4, a0, 8
                  addi         s5, t0, -970
                  xor          a2, s11, a5
                  xor          a4, a5, gp
                  sra          t4, tp, a4
918:              ori          s2, ra, 271
                  sll          s2, s4, s6
                  auipc        t6, 185085
921:              auipc        s5, 199603
                  xor          a2, s1, ra
                  sltiu        a5, a7, 400
                  lui          s1, 769716
                  slti         gp, t0, 1834
                  ori          s6, s6, -1679
                  beq          a1, gp, 931f
                  lui          s3, 119967
                  sltu         ra, a2, s9
                  andi         ra, s0, -818
931:              srai         s1, s8, 30
                  and          s7, a3, t3
                  bltu         t5, t3, 946f
                  sll          s5, s8, t5
                  sll          a1, s6, s10
                  nop
                  lui          tp, 723848
                  nop
                  and          a4, s6, s3
                  or           zero, s2, ra
                  blt          t2, a6, 956f
                  sra          t1, a6, a6
                  andi         s2, a1, -577
                  xor          s5, a2, a0
                  bne          t6, s6, 960f
946:              ori          t1, s4, -1786
                  sltu         a5, ra, s6
                  slti         a0, tp, -1995
                  bltu         t0, s4, 966f
                  ori          a1, t2, -357
                  bge          tp, s6, 967f
                  sltu         a5, s6, t3
                  bgeu         a5, t5, 957f
                  nop
                  xor          s2, s4, s4
956:              beq          s5, a7, 971f
957:              nop
                  blt          a4, sp, 964f
                  slli         t6, s11, 1
960:              slti         s2, s4, -630
                  or           s3, a2, gp
                  sra          t2, s4, s11
                  ori          sp, a2, 1057
964:              slli         a0, a4, 28
                  slti         s1, a7, 155
966:              and          a5, s5, t3
967:              lui          s11, 216578
                  or           s5, s5, s1
                  ori          s5, s6, -1640
                  srli         a3, t5, 29
971:              nop
                  nop
                  nop
                  blt          gp, s10, 982f
                  sra          s11, s6, t3
                  sltu         zero, s8, t3
                  blt          t3, s1, 984f
                  slt          gp, sp, t5
                  xori         s3, s8, -2001
                  xori         t6, t2, -159
                  beq          a6, t4, 1000f
982:              or           s5, s11, t2
                  and          a1, a3, t5
984:              slti         t1, a1, -2047
                  srai         s0, a4, 12
                  nop
                  add          tp, s1, s5
                  or           s1, a7, gp
                  sltu         a4, a7, a1
                  and          t2, s1, s6
                  lui          s3, 517899
                  slt          a0, s5, a1
                  slli         s3, a2, 11
                  lui          s11, 968196
                  andi         gp, s4, -992
                  srli         s6, s7, 14
                  srli         t1, a3, 14
                  slti         t4, s0, 898
                  or           t5, t3, t1
1000:             srli         s0, a7, 21
                  and          a3, s9, s10
                  bgeu         t1, t0, 1018f
                  andi         t4, sp, 242
                  add          a7, s5, t4
                  srli         a0, t3, 28
                  xor          a2, s1, a3
                  xor          s9, a2, t5
                  nop
                  bltu         a6, s11, 1026f
                  sra          a3, s7, s10
                  srli         t2, zero, 14
                  sltu         s2, t5, s2
                  xori         s2, gp, -1413
                  sltu         ra, t3, a4
                  srai         t5, a1, 15
                  bgeu         a1, a7, 1029f
                  and          zero, s10, s5
1018:             slti         a7, s2, 549
                  nop
                  slli         t6, s6, 26
                  srli         s1, t2, 21
                  or           a7, a6, a0
                  or           s1, a1, t2
                  bne          ra, s9, 1039f
                  and          a4, s9, a5
1026:             bgeu         s0, ra, 1029f
                  slli         t6, t6, 18
                  sltu         s7, s1, a7
1029:             sltiu        t2, s3, -56
                  srli         s9, t2, 30
                  lui          a0, 968306
                  sub          gp, s6, t2
                  xori         zero, a7, 541
                  sltu         s0, s6, sp
                  bgeu         s7, a0, 1044f
                  or           s6, s0, t3
                  sub          a7, s1, t2
                  beq          a0, t2, 1058f
1039:             slt          s4, a0, s9
                  addi         t5, a5, 1959
                  sll          gp, ra, a3
                  bltu         gp, zero, 1046f
                  sltiu        tp, a4, 1164
1044:             andi         ra, s4, -145
                  auipc        a1, 622427
1046:             slli         s0, s9, 23
                  xori         sp, a5, -1941
                  beq          a5, s8, 1067f
                  sll          s7, a6, s8
                  and          s8, s9, a5
                  srl          s8, gp, ra
                  bltu         a4, s7, 1067f
                  nop
                  bltu         s7, s1, 1070f
                  srli         a0, a4, 9
                  sltiu        tp, a2, 1642
                  bge          a2, sp, 1069f
1058:             or           a4, t4, a7
                  xori         s6, t4, -959
                  slt          s1, s2, gp
                  bgeu         s0, tp, 1069f
                  xor          a4, zero, s7
                  beq          a0, t0, 1077f
                  xor          t1, s0, s2
                  auipc        t4, 508826
                  xori         t5, s7, 216
1067:             bgeu         a4, a0, 1068f
1068:             slt          t4, s3, t4
1069:             srl          s4, a4, s6
1070:             slt          a5, t0, ra
                  bltu         s8, t3, 1087f
                  srli         s7, t4, 1
                  sltiu        t5, t0, -1691
                  bgeu         a3, s3, 1086f
                  bgeu         a6, a0, 1078f
                  srai         s7, s0, 4
1077:             slt          s5, zero, t3
1078:             blt          tp, t6, 1094f
                  srai         s3, ra, 24
                  xori         sp, a2, 1254
                  sra          sp, s1, a5
                  addi         a1, a5, -1878
                  bne          a0, t6, 1093f
                  srai         s7, s7, 13
                  bgeu         s7, t4, 1086f
1086:             bltu         s8, a0, 1091f
1087:             ori          s0, a1, 1828
                  srai         s6, s7, 9
                  and          t6, s4, t0
                  or           a7, s2, a0
1091:             or           s4, t0, s7
                  lui          s0, 343285
1093:             auipc        t5, 340504
1094:             bgeu         t0, a2, 1102f
                  sub          s2, t2, t3
                  ori          gp, t1, 1946
                  ori          t0, t6, 380
                  slt          a2, a7, s8
                  addi         tp, a3, 743
                  sltiu        t4, a3, -646
                  and          s2, a4, a6
1102:             and          s11, s3, t5
                  xori         zero, tp, 1580
                  xor          s5, s0, a4
                  add          a0, a2, t2
                  nop
                  auipc        a5, 206709
                  xor          s8, tp, s6
                  slt          gp, t1, s5
                  beq          t0, t2, 1114f
                  sll          t6, a2, s8
                  add          gp, a4, s1
                  srai         a4, t3, 12
1114:             xor          t2, a7, t5
                  add          tp, a3, a4
                  slt          t5, t0, a7
                  addi         t2, t2, -1920
                  slli         tp, ra, 28
                  beq          s0, s7, 1136f
                  xor          s5, s4, t2
                  bne          ra, t4, 1133f
                  blt          s1, sp, 1142f
                  srai         t5, t5, 28
                  slli         a3, sp, 14
                  add          s2, gp, s0
                  lui          a5, 523306
                  bgeu         a5, s11, 1134f
                  blt          s8, ra, 1144f
                  sll          a7, a6, a3
                  andi         tp, zero, -1369
                  srl          t5, s4, t2
                  sra          a0, t4, t4
1133:             auipc        s0, 243576
1134:             and          t4, tp, s0
                  andi         s0, zero, 266
1136:             andi         t4, a1, -970
                  srai         s5, t5, 12
                  slti         t0, a1, -420
                  and          sp, s3, a6
                  add          s8, t2, s3
                  xor          s0, a6, sp
1142:             or           s5, s10, s11
                  la           a4, region_0+1175 #start riscv_load_store_rand_instr_stream_11
                  sltu         s4, t4, t4
                  xor          a2, tp, gp
                  sh           a0, 7(a4)
                  lh           ra, 9(a4)
                  sh           s9, -13(a4)
                  lbu          s4, 14(a4)
                  andi         s9, s0, -1942
                  sra          t1, s8, s4
                  lhu          ra, -3(a4)
                  sub          t5, s11, t0
                  or           t1, t5, s11
                  lhu          t5, 7(a4)
                  sb           a5, -2(a4)
                  lw           a5, -3(a4)
                  sra          s5, s0, s7
                  nop
                  lb           s5, -14(a4)
                  or           s0, t5, a4
                  lbu          s0, -12(a4)
                  lui          tp, 1015559
                  lb           tp, -6(a4)
                  slli         t1, s2, 20
                  auipc        s7, 411393
                  add          sp, a0, s5
                  slt          t1, t5, s10
                  add          a1, t1, a6
                  sltiu        t1, tp, 1226
                  ori          a7, s6, -81
                  slti         tp, t4, 1193
                  lh           s8, -9(a4)
                  slli         s7, s6, 0
                  lb           gp, 4(a4)
                  or           ra, t3, t1
                  srli         t0, ra, 19
                  lw           t5, -15(a4) #end riscv_load_store_rand_instr_stream_11
                  bne          t1, a4, 1162f
1144:             sltu         t5, s7, t4
                  srli         t1, t1, 27
                  ori          s2, s7, 790
                  andi         s2, a1, 893
                  srli         a0, s0, 16
                  auipc        t4, 521061
                  or           t1, a0, t0
                  sra          gp, s7, s7
                  or           a4, s0, a2
                  slli         a3, a4, 16
                  slt          a2, t2, t6
                  blt          s2, a5, 1159f
                  nop
                  add          gp, s4, a7
                  slt          a5, a7, t0
1159:             srl          s4, gp, t1
                  bge          t1, ra, 1164f
                  sltiu        s6, s5, 1004
1162:             sltiu        a7, zero, -1598
                  slti         s4, s3, 535
1164:             xori         t5, a6, -706
                  srai         a5, s2, 17
                  xor          gp, a2, sp
                  slt          tp, s6, t3
                  srli         t1, t1, 30
                  sltu         s11, gp, a1
                  sub          s2, t6, t1
                  sltu         s8, t1, ra
                  slli         a4, s6, 5
                  sltiu        s7, s8, -155
                  srli         s11, a0, 16
                  andi         t4, s1, 76
                  xori         t2, zero, 1922
                  sltiu        s4, sp, -1660
                  lui          s0, 140443
                  srli         s4, a0, 21
                  srai         t5, a5, 31
                  xor          s5, s5, s10
                  bltu         s1, gp, 1195f
                  sltiu        s4, t2, 1330
                  slt          s5, t6, a4
                  bgeu         zero, s10, 1186f
1186:             blt          s0, s2, 1194f
                  slli         a0, a5, 1
                  xor          s11, ra, s4
                  xor          t0, a3, a5
                  beq          s9, s6, 1191f
1191:             bne          ra, s11, 1199f
                  beq          s11, t1, 1208f
                  ori          a1, s3, -1176
1194:             bgeu         s10, a0, 1209f
1195:             beq          t0, gp, 1199f
                  addi         s11, sp, -131
                  addi         a0, s11, 1973
                  bgeu         t1, a0, 1214f
1199:             bge          a6, t2, 1209f
                  slt          t5, s10, gp
                  srl          s11, ra, a6
                  beq          a5, s3, 1217f
                  bltu         t1, gp, 1218f
                  srai         sp, s6, 17
                  srli         s1, s4, 2
                  and          a0, a4, s7
                  xor          a7, s1, ra
1208:             bge          t2, s7, 1222f
1209:             slli         s1, t0, 23
                  beq          s1, a0, 1226f
                  nop
                  or           t2, a7, sp
                  slt          s3, t3, s6
1214:             xori         s1, ra, -442
                  beq          ra, t3, 1221f
                  andi         s5, a0, -1919
1217:             srli         a3, t3, 17
1218:             and          a0, a6, s8
                  slti         tp, t1, 1473
                  bne          s3, t3, 1232f
1221:             srai         t1, s6, 29
1222:             andi         a0, s2, -1475
                  ori          t5, s2, -295
                  sltu         a1, t1, s10
                  andi         ra, t5, -1328
1226:             sll          a1, ra, sp
                  nop
                  xori         s8, a3, 1149
                  bge          s4, s5, 1234f
                  xor          a0, s10, s5
                  bne          t4, s3, 1234f
1232:             sltu         sp, s5, s3
                  addi         a5, s6, -1553
1234:             sltiu        s5, tp, -1234
                  or           a5, a6, s8
                  and          s1, sp, s8
                  sll          t2, s11, s10
                  andi         t4, t4, -778
                  andi         s1, t3, -1250
                  bge          s1, s4, 1249f
                  sltu         s9, a4, s9
                  bge          zero, zero, 1245f
                  sub          s5, t0, s4
                  xori         a5, s2, 61
1245:             nop
                  addi         a3, a2, -1604
                  beq          s3, gp, 1255f
                  add          a3, t3, s2
1249:             bne          t1, a1, 1268f
                  nop
                  beq          s5, t2, 1267f
                  bgeu         t2, s4, 1260f
                  sll          t1, sp, t6
                  beq          t1, a2, 1266f
1255:             bgeu         t3, s0, 1264f
                  bltu         a2, s0, 1263f
                  blt          t6, s6, 1261f
                  or           a0, a4, s2
                  slti         tp, a4, 98
1260:             lui          a5, 355700
1261:             slti         sp, t5, 152
                  ori          s3, t3, -1982
1263:             slti         ra, tp, 69
1264:             lui          s4, 433931
                  srl          a1, gp, sp
1266:             xor          zero, t0, s8
1267:             sltu         tp, s5, t0
1268:             sltiu        t6, s10, -832
                  lui          gp, 411786
                  slt          a3, s8, s5
                  auipc        t0, 383589
                  slli         s7, zero, 22
                  addi         a0, t1, -1216
                  and          t5, a2, s10
                  slli         s1, s10, 4
                  srai         gp, t2, 29
                  bne          a0, s1, 1280f
                  xor          s7, s4, t0
                  bne          a5, t4, 1293f
1280:             sub          zero, sp, a6
                  and          s0, s0, tp
                  blt          s1, s4, 1283f
1283:             sll          s2, zero, s0
                  bltu         a6, a3, 1287f
                  srai         s3, t2, 13
                  bge          a6, t0, 1301f
1287:             sub          a2, s3, s6
                  or           ra, s11, sp
                  sub          s4, s0, gp
                  andi         s11, tp, 341
                  auipc        s2, 822302
                  nop
1293:             and          a1, a0, s7
                  srai         a1, a3, 15
                  slti         s8, a0, -1596
                  srli         gp, s0, 13
                  xori         a5, a7, -854
                  sub          s1, a0, t2
                  add          s0, t5, s9
                  andi         a1, s6, -1716
1301:             bltu         t6, gp, 1317f
                  sub          t0, sp, s9
                  srli         a0, s8, 5
                  auipc        s11, 238505
                  srai         a7, t4, 7
                  addi         a2, a0, -1331
                  slli         t1, t4, 29
                  ori          tp, ra, -625
                  add          zero, zero, s4
                  and          tp, sp, t2
                  blt          a3, a2, 1319f
                  xori         a0, a1, 1968
                  bne          t1, s4, 1321f
                  auipc        t0, 209849
                  auipc        tp, 458096
                  sltu         ra, s1, s11
1317:             sub          a7, s2, a0
                  or           s9, t4, gp
1319:             beq          a2, s4, 1331f
                  or           s4, a1, ra
1321:             slt          a2, a5, s2
                  ori          a7, gp, -185
                  sltu         zero, s9, a0
                  bgeu         s5, a0, 1330f
                  bltu         s2, t3, 1340f
                  bltu         ra, a2, 1327f
1327:             bgeu         s10, a4, 1340f
                  auipc        tp, 79106
                  lui          t0, 103907
1330:             xori         t2, s8, -629
1331:             nop
                  addi         zero, s10, -1124
                  nop
                  or           gp, s5, t3
                  slli         t0, a0, 2
                  ori          t2, a1, -1069
                  srli         s3, a3, 11
                  auipc        s2, 81727
                  srl          a4, s11, a3
1340:             and          a1, s5, sp
                  srl          s5, s10, s9
                  bgeu         s6, zero, 1362f
                  addi         a0, ra, -1225
                  bgeu         t2, s6, 1349f
                  add          tp, s3, s2
                  slti         a7, a2, -1078
                  sltiu        a5, s2, -1462
                  add          s8, sp, s9
1349:             beq          s6, s9, 1365f
                  sltu         s3, zero, t5
                  blt          zero, a7, 1368f
                  nop
                  slti         zero, sp, 507
                  bge          t3, s2, 1369f
                  bgeu         s10, a5, 1374f
                  srli         t5, t6, 4
                  xor          s4, a3, s5
                  blt          s2, a0, 1374f
                  slt          s1, a7, s1
                  or           a4, t0, t3
                  andi         t5, t2, 1217
1362:             bltu         t4, t4, 1366f
                  addi         t1, s3, 1413
                  lui          a7, 1042076
1365:             auipc        s3, 639212
1366:             andi         a0, a3, 1866
                  blt          a0, s4, 1386f
1368:             nop
1369:             bge          s4, s8, 1373f
                  xori         s4, ra, 1136
                  bltu         a2, zero, 1381f
                  blt          t6, s11, 1392f
1373:             and          s1, t5, s9
1374:             bge          s1, s0, 1381f
                  beq          s4, a2, 1394f
                  sll          s1, t0, s3
                  andi         a1, gp, -1479
                  bne          s3, t4, 1392f
                  sra          a1, sp, a0
                  addi         gp, sp, -1445
1381:             add          a4, s3, t6
                  slti         s0, s5, 175
                  blt          a0, zero, 1391f
                  sub          sp, t1, t1
                  sub          ra, a6, tp
1386:             ori          t6, t2, 396
                  bgeu         t1, zero, 1403f
                  slt          gp, t5, t0
                  andi         gp, s6, 1098
                  xor          a3, s6, sp
1391:             sra          s7, ra, zero
1392:             nop
                  addi         a5, a3, -1365
1394:             sltiu        t1, t1, 311
                  slti         gp, t0, -1973
                  bltu         t4, a2, 1406f
                  sub          t2, s8, s5
                  bne          s5, s11, 1402f
                  lui          a7, 137054
                  blt          s6, s8, 1401f
1401:             sub          s7, a2, a6
1402:             nop
1403:             slli         a7, a0, 11
                  nop
                  bge          s3, s3, 1420f
1406:             bgeu         t0, a4, 1410f
                  slti         s3, t2, -1356
                  srl          t1, s1, t6
                  beq          s9, ra, 1421f
1410:             bge          gp, tp, 1426f
                  or           a0, s11, t2
                  blt          a4, t0, 1428f
                  sltiu        a7, a1, 1807
                  srl          t4, s10, s11
                  or           s1, t1, zero
                  slli         t5, t2, 23
                  add          t6, tp, s6
                  bge          s8, t6, 1419f
1419:             or           t1, a5, t3
1420:             addi         s2, s10, -1558
1421:             xor          t2, a1, sp
                  slli         zero, s3, 10
                  lui          s8, 313129
                  sub          s3, tp, s11
                  sltu         s5, s9, s11
1426:             slli         s8, s9, 19
                  bltu         gp, ra, 1444f
1428:             bltu         ra, s11, 1444f
                  slli         zero, gp, 7
                  srai         s0, t4, 24
                  slt          a4, t4, a5
                  sll          a7, gp, s0
                  and          s1, a0, gp
                  or           t2, ra, t0
                  xor          s7, a4, gp
                  bne          s9, s2, 1440f
                  slt          gp, t1, s2
                  slti         t1, s3, 1957
                  sub          s2, a2, tp
1440:             or           ra, a5, a2
                  sub          a4, t0, sp
                  sltiu        a2, s5, 362
                  and          tp, s4, s9
1444:             blt          t3, s4, 1459f
                  sll          s7, s10, t0
                  auipc        a4, 335925
                  srai         a3, s8, 5
                  blt          t1, a5, 1454f
                  slti         s7, s2, 460
                  srai         s4, a7, 7
                  andi         s4, t1, -1858
                  sltiu        tp, s1, -495
                  blt          s8, t1, 1458f
1454:             srai         t4, t3, 30
                  blt          a7, sp, 1463f
                  srl          ra, s3, gp
                  blt          s5, s1, 1465f
1458:             lui          a1, 850772
1459:             and          s8, gp, s1
                  sltu         t1, a3, ra
                  sub          a3, s3, a1
                  beq          s10, a3, 1471f
1463:             slli         s4, a7, 3
                  addi         ra, tp, 1752
1465:             blt          sp, s1, 1477f
                  bgeu         s6, s0, 1481f
                  bgeu         a3, s7, 1480f
                  xori         s0, a3, -1115
                  srai         t6, t4, 7
                  addi         s7, s9, 413
1471:             slti         zero, s0, -1777
                  ori          s6, s11, 1446
                  srl          a2, a7, t1
                  srl          a0, t3, s9
                  slti         a4, s9, -912
                  srl          t5, t4, s9
1477:             beq          t4, s10, 1480f
                  andi         s0, tp, -999
                  addi         t6, gp, 1575
1480:             beq          a5, s5, 1483f
1481:             srl          a4, a3, tp
                  slti         a5, a2, 28
1483:             beq          s9, a0, 1502f
                  blt          s0, a5, 1497f
                  sub          s8, a1, t4
                  slti         a2, s9, 548
                  and          zero, a5, zero
                  nop
                  nop
                  bge          s4, t6, 1494f
                  slti         s1, zero, -1391
                  andi         s1, gp, -258
                  sra          s0, s2, t6
1494:             sra          a1, ra, a0
                  sll          s4, s7, s4
                  bne          s8, t0, 1508f
1497:             sub          s9, sp, t3
                  slti         s6, tp, 1105
                  beq          s11, s7, 1506f
                  xor          t5, t4, t4
                  bltu         s8, s7, 1516f
1502:             slti         a4, t0, -286
                  srli         s2, tp, 26
                  srli         t0, t3, 24
                  sra          s9, s10, t1
1506:             auipc        s6, 499068
                  xor          t2, s9, tp
1508:             sra          s6, zero, s9
                  ori          t4, s1, -397
                  slli         gp, s11, 30
                  xor          t1, s2, a0
                  nop
                  bltu         a2, gp, 1528f
                  slt          gp, a5, s3
                  bgeu         s9, s4, 1519f
1516:             bltu         a7, t0, 1524f
                  xor          s8, ra, s1
                  blt          t2, gp, 1519f
1519:             and          t2, s2, s2
                  bge          zero, s0, 1529f
                  nop
                  slti         gp, a6, 1889
                  nop
1524:             xori         s4, a5, -733
                  sll          s6, s0, t2
                  beq          t2, s11, 1541f
                  sub          s0, t1, s1
1528:             or           s0, s9, zero
1529:             ori          t4, tp, 1983
                  auipc        a1, 95477
                  sltu         a3, s11, t6
                  nop
                  andi         a2, gp, 139
                  bge          t4, a6, 1548f
                  sltu         s1, t1, s1
                  xor          gp, t1, s7
                  ori          a2, tp, 507
                  auipc        a5, 13612
                  slli         s7, s5, 0
                  slti         a7, a3, -1628
1541:             bge          s0, t2, 1542f
1542:             bgeu         tp, s2, 1545f
                  bne          a3, a5, 1559f
                  bltu         a3, zero, 1563f
1545:             sltu         t4, t4, a1
                  sra          t6, a3, s4
                  nop
1548:             and          s1, t1, a2
                  auipc        s1, 1010421
                  bgeu         s2, a1, 1569f
                  lui          s3, 445876
                  addi         zero, t0, -999
                  bne          s4, a2, 1573f
                  slli         t5, s8, 22
                  sra          gp, s0, a2
                  xori         gp, s4, 233
                  bgeu         ra, a2, 1573f
                  sll          s2, a7, s0
1559:             and          ra, s4, a4
                  srli         a1, s7, 8
                  sltu         a0, a3, s11
                  srli         s11, t5, 5
1563:             slti         a0, s5, -1071
                  sll          a1, s1, t5
                  srli         s4, s7, 22
                  or           a5, s11, s6
                  sll          s4, a2, a0
                  sub          a3, t0, s0
1569:             slt          a3, sp, tp
                  sra          t2, s9, s1
                  or           tp, a0, gp
                  andi         ra, t3, -233
1573:             bne          a4, zero, 1583f
                  addi         s0, gp, -2004
                  blt          a0, s11, 1592f
                  ori          s1, gp, 147
                  or           t1, ra, s2
                  or           t1, s3, s1
                  ori          t1, s8, -733
                  or           zero, a2, gp
                  auipc        s8, 811058
                  lui          s5, 442448
1583:             nop
                  beq          s4, a2, 1592f
                  sra          t0, s7, t6
                  bne          s0, zero, 1602f
                  slt          s1, s7, s6
                  auipc        s0, 618539
                  andi         t6, t6, 1420
                  sub          a4, s11, s11
                  add          a5, s1, s6
1592:             bge          ra, a4, 1604f
                  or           sp, zero, gp
                  srli         a7, ra, 15
                  sll          t2, s9, s10
                  or           t6, s4, a1
                  nop
                  srai         ra, s1, 20
                  bne          a5, ra, 1602f
                  slti         a7, a0, 1350
                  bge          a4, tp, 1607f
1602:             sll          gp, ra, s6
                  lui          a4, 200236
1604:             sll          t4, ra, a4
                  beq          zero, t4, 1610f
                  addi         zero, a2, 550
1607:             lui          t2, 132258
                  add          sp, s8, t5
                  slt          t1, ra, t1
1610:             nop
                  sra          t6, s2, s11
                  ori          zero, s7, -107
                  ori          s4, a2, -836
                  nop
                  add          tp, t1, a7
                  ori          s2, s0, -1158
                  addi         tp, t1, 703
                  srai         s11, a0, 11
                  andi         s3, s11, 482
                  xori         zero, s1, -958
                  auipc        s11, 664248
                  xor          a0, a4, s9
                  sra          ra, a0, tp
                  slti         t6, gp, 1171
                  sra          tp, s4, a0
                  slli         s7, a3, 8
                  blt          s9, s9, 1643f
                  slt          a1, a3, s9
                  bge          gp, s4, 1637f
                  sra          t6, t4, a2
                  srl          a2, zero, s8
                  andi         t2, s4, -985
                  ori          a2, t3, -693
                  sub          t5, t2, t4
                  slli         t2, tp, 18
                  add          t0, s0, a6
1637:             bgeu         s4, t1, 1641f
                  andi         s1, s8, 893
                  or           a4, sp, zero
                  bltu         tp, a3, 1653f
1641:             nop
                  auipc        sp, 590822
1643:             slt          a0, t5, s4
                  and          gp, a6, ra
                  xor          s8, t5, a3
                  slt          a0, s7, a0
                  andi         t1, gp, -438
                  auipc        tp, 748301
                  nop
                  sub          s5, s5, t2
                  beq          s6, t0, 1665f
                  xor          t6, t2, s0
1653:             xori         t4, a7, 1984
                  nop
                  add          s2, s3, s1
                  andi         gp, a1, 471
                  srli         s2, sp, 7
                  srl          zero, s0, sp
                  xori         s7, s4, -445
                  auipc        gp, 645331
                  sll          s3, t5, sp
                  srai         s4, s10, 11
                  lui          t6, 522761
                  srai         s3, a7, 6
1665:             sll          a5, sp, gp
                  srai         ra, t1, 7
                  beq          s0, tp, 1677f
                  slti         a1, ra, -1729
                  addi         t2, t3, 65
                  bltu         a3, a0, 1673f
                  bltu         a5, t6, 1675f
                  slt          s8, sp, a0
1673:             andi         t2, t2, 418
                  xori         s7, t2, -215
1675:             srl          zero, a2, a5
                  add          tp, s8, tp
1677:             bge          s7, s4, 1696f
                  bne          a0, t1, 1693f
                  srl          a2, s1, s6
                  sltu         s3, t4, s7
                  nop
                  bge          s2, s8, 1698f
                  and          s9, s5, s10
                  auipc        a5, 943102
                  ori          s5, t3, 1929
                  sltiu        a3, a3, -1125
                  nop
                  sub          a7, s3, s3
                  andi         s6, s3, 1883
                  auipc        s11, 189540
                  bgeu         t0, a0, 1706f
                  addi         s4, t6, -689
1693:             sltu         t5, t5, gp
                  sltiu        zero, s9, -916
                  lui          t6, 676385
1696:             andi         gp, s11, 624
                  sll          s5, s1, s2
1698:             sll          s3, s8, s2
                  srai         s2, s8, 8
                  ori          t0, a7, -1660
                  srli         s8, t2, 28
                  or           s8, t4, a3
                  sll          t5, s4, a5
                  bgeu         t1, s2, 1719f
                  blt          tp, s10, 1710f
1706:             andi         s8, s3, 1643
                  sra          ra, s7, s5
                  xori         s7, s8, -1343
                  sll          s7, sp, tp
1710:             bge          s5, s7, 1718f
                  xor          zero, s8, a4
                  and          a0, a2, s4
                  blt          ra, zero, 1729f
                  and          s1, t1, t6
                  srl          t2, s10, a3
                  bne          a4, s2, 1735f
                  ori          s1, s2, -107
1718:             sltiu        s4, sp, -1458
1719:             bgeu         a0, s2, 1720f
1720:             beq          s6, a7, 1723f
                  addi         t5, a5, 1282
                  bgeu         a3, a3, 1738f
1723:             xori         a7, s8, -1396
                  xor          s1, t2, a2
                  auipc        s5, 176444
                  auipc        a2, 119739
                  and          s11, t2, tp
                  xor          s5, s9, t3
1729:             nop
                  xor          s8, ra, t2
                  srli         t5, t0, 13
                  bltu         s10, a6, 1739f
                  bgeu         s1, sp, 1753f
                  and          a1, s8, s8
1735:             bge          s1, a3, 1752f
                  lui          ra, 694291
                  slli         a1, s7, 18
1738:             blt          a7, s6, 1750f
1739:             xori         t2, s8, 1892
                  sra          s11, t1, s3
                  sra          a1, s8, s5
                  ori          s2, t2, -627
                  sltu         t2, a1, s6
                  bgeu         s5, s6, 1745f
1745:             slti         zero, s11, 723
                  blt          s3, s7, 1750f
                  andi         a0, t1, -1249
                  blt          s6, s3, 1752f
                  auipc        t2, 703905
1750:             srli         t2, s8, 8
                  or           s4, t3, s7
1752:             srli         t2, t6, 12
1753:             srai         zero, tp, 8
                  nop
                  bgeu         t6, t1, 1767f
                  srai         a0, tp, 0
                  auipc        t6, 55877
                  blt          s5, gp, 1767f
                  bge          t3, sp, 1765f
                  srai         sp, s6, 11
                  srai         ra, a7, 1
                  srli         t5, a2, 18
                  slli         gp, gp, 1
                  sltiu        s6, t2, -467
1765:             and          t1, t0, s3
                  ori          zero, s10, -498
1767:             srli         t4, t6, 19
                  beq          s8, t2, 1776f
                  beq          a1, t4, 1785f
                  bgeu         s7, sp, 1778f
                  slli         a2, zero, 4
                  lui          a5, 633786
                  bltu         sp, t3, 1785f
                  beq          tp, a7, 1782f
                  sltiu        s8, s5, -1987
1776:             bge          a7, a3, 1796f
                  srl          a1, a0, t5
1778:             slli         t4, s9, 31
                  beq          t1, t2, 1798f
                  bltu         tp, gp, 1783f
                  srl          a7, s7, a5
1782:             bltu         s9, a7, 1785f
1783:             lui          s11, 141717
                  sra          zero, a6, s8
1785:             and          s3, gp, s7
                  sltu         s2, a7, gp
                  ori          a0, s6, 1597
                  and          s0, t6, gp
                  slti         t1, a3, -24
                  ori          s3, a5, 360
                  and          gp, a0, zero
                  andi         s9, s8, -1197
                  ori          s8, s1, 227
                  slli         sp, a0, 30
                  sub          tp, t4, sp
1796:             srl          a1, sp, s11
                  auipc        zero, 109687
1798:             lui          a4, 98673
                  srli         gp, a2, 2
                  sra          t6, sp, s8
                  beq          t4, s2, 1807f
                  bltu         tp, s0, 1819f
                  blt          s11, s3, 1812f
                  slli         a4, s6, 5
                  bge          a4, a0, 1820f
                  sltiu        t0, a3, -1569
1807:             nop
                  andi         sp, gp, 261
                  auipc        s11, 135709
                  nop
                  slli         a2, s5, 23
1812:             auipc        s9, 13964
                  xori         s9, a2, 26
                  slti         t4, t6, 2037
                  beq          s10, tp, 1831f
                  auipc        s2, 802232
                  sra          t0, s7, t5
                  ori          t5, t5, -123
1819:             slt          s0, zero, a0
1820:             or           s8, zero, s9
                  or           a5, gp, tp
                  srli         t2, a6, 1
                  srai         a4, s6, 3
                  bltu         a5, s3, 1840f
                  auipc        s3, 355689
                  beq          a0, t2, 1840f
                  bne          s10, s2, 1835f
                  blt          a6, s8, 1829f
1829:             srai         s6, s5, 16
                  and          t6, t3, s7
                  la           s1, region_0+460 #start riscv_load_store_rand_instr_stream_5
                  sb           t6, -441(s1)
                  lh           t5, 862(s1)
                  auipc        a2, 335921
                  sub          sp, s11, s3
                  sb           a7, -445(s1)
                  lh           a2, 348(s1)
                  andi         s4, a0, 1458
                  lb           a7, 577(s1)
                  srai         a0, t4, 26
                  sltu         a3, s6, t4
                  lh           zero, 826(s1)
                  lhu          s11, -280(s1)
                  and          s2, s10, s2
                  lhu          zero, 1172(s1)
                  add          t4, s2, zero
                  lb           a1, 1425(s1)
                  slli         t2, t2, 17
                  lb           s2, -229(s1)
                  sra          ra, t4, s4
                  lbu          a5, -17(s1)
                  lbu          zero, -446(s1)
                  slli         ra, s2, 24
                  add          a4, s5, t1
                  lbu          t6, 221(s1)
                  addi         t4, s1, -499
                  sw           a1, 1464(s1)
                  sb           a7, 376(s1)
                  lb           s2, -142(s1)
                  lb           a3, 603(s1)
                  sh           a6, 950(s1)
                  lbu          t6, 935(s1)
                  sra          t4, s11, a5
                  add          gp, s5, s6
                  slli         s3, gp, 23
                  slli         a0, t2, 3
                  sw           s3, 1128(s1)
                  sb           t5, 244(s1)
                  lh           a7, 706(s1)
                  nop
                  auipc        s9, 635468
                  sltu         s2, sp, s9
                  sb           sp, 167(s1)
                  lbu          s2, 1185(s1)
                  lbu          s7, -327(s1)
                  sw           tp, 1164(s1)
                  lbu          a2, -159(s1)
                  sw           a1, -140(s1) #end riscv_load_store_rand_instr_stream_5
1831:             add          t6, s3, s1
                  bgeu         s9, a4, 1848f
                  slti         s3, s0, -1315
                  ori          s2, a7, 958
1835:             ori          a4, t5, -1951
                  srli         t1, a6, 17
                  slti         a0, a0, 1230
                  and          s6, s4, s1
                  bltu         s3, t1, 1855f
1840:             beq          s11, t3, 1852f
                  bge          s6, s3, 1854f
                  sltiu        tp, a1, 403
                  sub          s4, a0, t6
                  slti         a4, a6, 629
                  bne          t6, sp, 1849f
                  slli         a0, s5, 1
                  xor          s8, t6, a5
1848:             or           tp, s3, a0
1849:             addi         s2, s10, 1303
                  sll          s6, s0, a4
                  srl          zero, s6, zero
1852:             ori          s8, s7, -1631
                  sll          t1, t1, s3
1854:             sll          a0, sp, s2
1855:             sltu         a3, a5, t1
                  srli         s3, gp, 30
                  slti         a1, s9, -1427
                  ori          tp, t0, -1887
                  slli         t2, a0, 5
                  bltu         a1, zero, 1870f
                  or           s1, s9, t6
                  add          s7, t6, s4
                  lui          a1, 847938
                  bgeu         s2, a4, 1883f
                  srl          a4, s9, s9
                  blt          s6, a6, 1874f
                  and          t1, a2, t6
                  sltu         a3, a6, s10
                  lui          t2, 189174
1870:             lui          ra, 981926
                  slli         t4, zero, 8
                  auipc        a3, 445248
                  xori         gp, t5, 371
1874:             slt          t0, t2, s3
                  sub          s6, s4, sp
                  nop
                  sltu         a4, t1, s7
                  andi         t6, s2, 1751
                  and          a7, s6, s6
                  lui          sp, 745052
                  sll          a2, s2, a3
                  addi         a0, t5, -634
1883:             srl          a0, a1, a3
                  srai         tp, s1, 6
                  andi         s3, s3, -1135
                  srl          s11, t2, s3
                  xor          a7, t0, t3
                  sltu         a5, gp, s11
                  auipc        a0, 201106
                  lw           s4, 4(t3)
                  slti         s3, s7, 65
                  addi         t3, t3, 20
                  lui          t0, 14294
                  lui          s7, 374814
                  nop
2497:             addi x18, x20, 1
2497:             jalr x18, x18, 0
sub_6:            addi         t3, t3, -64
                  slli         a2, sp, 14
                  sw           s4, 4(t3)
                  sll          s11, s11, t4
                  slt          a7, a2, a5
                  la           t2, sub_7
                  addi         t2, t2, 196
                  sll          sp, s7, t5
                  addi         t4, a7, 803
                  nop
                  add          tp, s2, a7
                  auipc        a1, 31320
                  bgeu         s4, s5, sub_6_j9 #branch to jump instr
                  sra          ra, s9, s3
                  slt          a5, s5, s6
                  sra          s7, s11, s3
                  srl          t0, t1, a5
sub_6_j9:         jalr         s4, t2, -195 #jump sub_6 -> sub_7
                  srl          s7, s7, a0
                  sltiu        s0, a7, 1758
                  sltu         s8, s10, s6
                  sra          s0, ra, a3
                  and          a2, s10, a3
                  slli         a3, t2, 6
                  bltu         s6, zero, 24f
                  xor          zero, s3, t5
                  srl          s3, a7, t6
                  srl          a2, s5, s11
                  addi         t5, zero, -1509
                  lui          gp, 421988
                  slti         a1, s5, -186
                  add          s2, a1, a1
                  srai         t2, s3, 26
                  xor          s1, t4, s4
                  bgeu         a3, s5, 21f
                  ori          a7, ra, -1909
                  add          s1, a2, t0
                  auipc        s2, 542688
                  slti         a7, s6, 1922
21:               sub          s4, a5, a4
                  nop
                  and          t5, t6, a1
24:               sltu         s11, t2, a5
                  slti         s1, gp, -1093
                  slli         t1, a5, 17
                  andi         gp, s2, 1232
                  lw           s4, 4(t3)
                  sub          a5, t6, t3
                  srai         a4, s11, 29
                  and          zero, s4, zero
                  addi         t3, t3, 64
                  auipc        t4, 877433
                  auipc        s9, 511291
                  andi         sp, s0, 30
54:               addi x9, x20, 1
54:               jalr x9, x9, 0
sub_7:            nop
                  addi         t3, t3, -12
                  nop
                  slt          s5, a6, s1
                  srai         a3, gp, 27
                  nop
                  sll          s1, s9, t6
                  sw           s4, 4(t3)
                  srl          ra, t6, s3
                  andi         t4, ra, 1356
                  addi         t4, sp, -1338
                  srli         t5, s8, 18
                  sub          s6, s9, a4
                  or           t6, sp, s10
                  bge          t0, tp, sub_7_j10 #branch to jump instr
                  sltiu        zero, s5, 1251
                  auipc        a0, 473710
                  ori          s5, s7, 1436
                  xori         t0, s5, -348
                  addi         s1, gp, 1583
                  andi         tp, zero, -1528
                  slli         gp, s3, 9
sub_7_j10:        jal          s4, sub_9 #jump sub_7 -> sub_9
                  or           s2, s1, t3
                  srl          a2, sp, a7
                  nop
                  and          zero, ra, tp
                  sltiu        tp, s4, 1655
                  or           s0, a3, tp
                  xor          a5, s3, t6
sub_7_j11:        jal          s4, sub_10 #jump sub_7 -> sub_10
                  xori         a7, s9, 1336
                  srli         s6, a4, 17
                  slli         a7, tp, 1
                  add          zero, t1, s7
                  srl          s9, s6, tp
                  blt          sp, t3, 14f
                  sltu         s4, t5, s9
                  slti         a3, s8, 1487
                  beq          s5, s7, 23f
                  sltu         t0, a0, t3
                  blt          sp, s4, 24f
                  bge          s3, s4, 13f
                  or           tp, s5, a6
13:               bgeu         t4, s11, 21f
14:               andi         zero, s5, 297
                  sub          zero, a6, sp
                  beq          s1, t0, 21f
                  xor          a1, s2, s11
                  ori          t0, t6, 688
                  sub          a7, s2, s4
                  and          a3, s6, gp
21:               xor          s7, s2, a0
                  lui          t2, 434975
23:               bgeu         s11, s11, 31f
24:               bgeu         a0, a7, 31f
                  lui          a7, 868715
                  nop
                  bgeu         a3, s11, 31f
                  xor          gp, s3, s0
                  sltiu        sp, s8, -1916
                  addi         a3, ra, -962
31:               xor          s0, t0, a7
                  slli         a3, s10, 17
                  sltu         t5, s11, a7
                  lw           s4, 4(t3)
                  xori         s9, s1, -1137
                  srli         t4, sp, 11
                  addi         t3, t3, 12
                  andi         a4, a0, 448
                  sll          a4, zero, s9
                  and          s2, t2, s6
                  lui          s2, 733593
                  xor          gp, s0, s5
74:               addi x6, x20, 0
74:               jalr x6, x6, 0
sub_3:            xor          s1, tp, s2
                  xor          s1, t2, gp
                  xori         sp, s2, 380
                  bne          s3, s3, sub_3_stack_p
                  sltiu        a4, s2, -2003
                  lui          t5, 132114
sub_3_stack_p:    addi         t3, t3, -32
                  sw           s4, 4(t3)
                  ori          a4, gp, -1029
                  xor          t5, s2, t3
                  sltiu        s7, s1, -444
                  nop
                  add          s11, s7, s6
                  slti         a7, t6, 657
                  addi         s4, a3, 1977
                  slt          a0, zero, t2
                  slli         sp, s3, 4
                  ori          a4, a3, 778
                  sll          zero, t3, s2
                  ori          tp, s8, 520
                  auipc        s9, 1020525
                  sll          gp, a3, s6
                  sltiu        a2, s3, -1960
                  bne          a0, s10, 19f
                  bltu         s7, s9, 19f
                  slli         t4, s8, 17
                  or           s7, a4, tp
                  or           ra, t3, t2
19:               lui          a2, 1007733
                  xori         tp, a4, -1676
                  xori         s0, t0, 1075
                  and          s11, gp, a5
                  sra          t5, s10, s0
                  slli         gp, sp, 10
                  and          s2, s8, t0
                  or           tp, s5, s3
                  lw           s4, 4(t3)
                  addi         t3, t3, 32
                  sll          s9, a6, tp
                  srai         s8, t2, 24
40:               addi x1, x20, 0
40:               jalr x1, x1, 0
sub_5:            or           s8, sp, a7
                  xor          t6, s1, t0
                  slli         s2, s3, 11
                  sub          t6, a1, s0
                  addi         s0, t4, -1768
                  andi         a5, s3, 1843
                  addi         t3, t3, -48
                  sltiu        zero, a4, 661
                  and          a3, s0, s6
                  sw           s4, 4(t3)
                  nop
                  add          ra, a3, s6
                  nop
                  la           tp, sub_8
                  slt          sp, a5, zero
                  sll          s11, s2, s8
                  addi         t6, t6, 1806
                  addi         a0, t4, -594
                  srai         t0, a5, 6
                  addi         tp, tp, -933
                  bge          s7, t1, sub_5_j8 #branch to jump instr
                  slt          t2, a4, a1
sub_5_j8:         jalr         s4, tp, 933 #jump sub_5 -> sub_8
                  la           a0, region_1+1234 #start riscv_load_store_rand_instr_stream_0
                  lbu          s8, 45(a0)
                  lbu          t6, -21(a0)
                  sb           s9, 26(a0)
                  sb           s7, -47(a0)
                  lbu          t4, -39(a0)
                  slt          s1, s3, t6
                  slti         s3, a0, -1543
                  lb           tp, -57(a0)
                  lb           a5, -33(a0)
                  xor          sp, t1, t2
                  srai         a1, s10, 16
                  lbu          ra, -22(a0)
                  lbu          sp, -41(a0)
                  lui          t2, 506491
                  lbu          s11, 17(a0)
                  lb           a5, -37(a0)
                  sw           t5, -46(a0)
                  xori         s11, s8, 1079
                  sll          t4, a3, a0
                  lbu          gp, 29(a0)
                  lbu          s7, -63(a0)
                  ori          sp, a7, -597
                  slli         t0, tp, 15
                  lh           a4, -4(a0)
                  sra          t4, a0, s2
                  sb           t0, -19(a0)
                  slt          a2, s5, s8
                  sh           sp, -4(a0)
                  lbu          t2, -61(a0)
                  nop
                  andi         s4, s7, 1008
                  add          a3, t1, a2
                  sb           a1, -31(a0)
                  lbu          a4, 16(a0)
                  lbu          a3, 16(a0) #end riscv_load_store_rand_instr_stream_0
                  slli         a4, t0, 19
                  srai         a7, s8, 12
                  sub          s4, s4, t5
                  srli         a3, s9, 15
                  add          t6, ra, t6
                  add          s1, sp, ra
                  bltu         a5, s2, 17f
                  auipc        tp, 144479
                  bgeu         a0, t6, 26f
                  or           a3, a6, s6
                  slti         a7, t3, -782
                  bne          sp, s11, 24f
                  sll          a3, t0, s4
                  or           s9, a3, t1
                  sltu         a5, zero, a1
                  lui          s6, 858166
                  sltu         t0, t2, sp
17:               sub          s2, s3, s1
                  sltu         t5, t4, a2
                  nop
                  sra          t1, a0, t6
                  xor          s3, s5, s3
                  sll          s2, a4, t2
                  and          a0, s10, s11
24:               add          s7, a1, s1
                  sltu         ra, a6, s6
26:               sra          a5, a1, t3
                  bne          zero, s5, 33f
                  sll          s2, s6, a5
                  xori         a4, a2, 803
                  xor          s7, s9, s11
                  srli         t4, s11, 2
                  addi         s8, s8, 950
33:               xor          a1, gp, sp
                  or           s8, t6, s4
                  lui          s0, 196742
                  addi         a4, a6, -1215
                  srli         a2, s3, 27
                  sll          gp, s8, s9
                  or           t1, s10, s2
                  bgeu         zero, zero, 44f
                  srai         a3, a0, 8
                  nop
                  slli         t4, s9, 17
44:               blt          a7, s11, 59f
                  andi         t6, s3, -1619
                  sub          s11, t5, a7
                  bne          a6, zero, 63f
                  add          s11, s6, s8
                  srai         s8, a5, 17
                  bge          t6, s7, 63f
                  nop
                  blt          a2, a5, 64f
                  bgeu         t4, t5, 68f
                  srli         s8, s10, 2
                  sub          s9, t3, t5
                  add          ra, a0, t1
                  sra          s6, sp, sp
                  nop
59:               or           gp, s2, t0
                  srai         s5, gp, 2
                  andi         s5, zero, -535
                  bgeu         s3, s4, 66f
63:               srli         ra, t1, 22
64:               sub          s11, tp, t0
                  andi         s1, t6, 1606
66:               add          t4, a2, s4
                  bltu         s5, a7, 80f
68:               blt          s7, s0, 86f
                  srai         a0, s9, 29
                  lui          s0, 510605
                  sltiu        s2, tp, 334
                  xori         t4, a0, 1369
                  addi         s8, ra, 1080
                  sltiu        s11, a3, 1691
                  sltu         a2, t1, s10
                  sra          a5, zero, a2
                  slli         s8, s9, 8
                  blt          a1, ra, 92f
                  or           s5, s2, a6
80:               auipc        ra, 71232
                  sltu         t6, a0, t1
                  sub          zero, s0, s6
                  srli         s0, s6, 20
                  xor          a7, a6, a5
                  srli         tp, s3, 16
86:               and          t0, zero, a5
                  bne          t3, s4, 106f
                  auipc        s9, 1022395
                  sltu         s11, s4, t2
                  nop
                  and          a0, t0, s0
92:               addi         t0, s9, -1061
                  or           zero, s3, s2
                  auipc        a0, 932754
                  add          a2, a2, zero
                  bgeu         a1, s11, 109f
                  add          a2, sp, t3
                  and          a2, a0, s4
                  slli         s11, s6, 8
                  sra          s2, t4, a5
                  add          s9, s6, a4
                  sltu         t0, s6, ra
                  sub          s5, a1, t2
                  sub          t2, s10, s9
                  ori          s9, s4, 172
106:              lui          t1, 369263
                  sra          s8, t1, zero
                  xor          a2, s2, a2
109:              sra          tp, t0, zero
                  auipc        s0, 404447
                  auipc        s8, 31669
                  slt          s0, s6, s3
                  xor          a0, sp, s0
                  slti         ra, sp, -342
                  bne          a7, s3, 132f
                  sltiu        t1, t4, 242
                  srli         a5, s1, 20
                  srai         a7, t3, 31
                  sll          s11, s0, gp
                  slli         s0, s8, 12
                  sll          t6, t0, s8
                  srli         t4, s2, 25
                  slt          t0, t3, t1
                  slt          a1, t3, gp
                  xori         s3, s6, 321
                  addi         a3, t4, -720
                  srai         s3, a5, 8
                  add          sp, t3, a3
                  sltu         s8, a0, sp
                  srli         t5, a4, 23
                  bne          s6, s8, 145f
132:              blt          sp, a1, 140f
                  slt          s4, a3, s5
                  xori         t1, s6, 1637
                  ori          a1, s3, 460
                  bge          s10, sp, 147f
                  auipc        s3, 579636
                  add          a4, tp, s3
                  slt          s8, s2, a5
140:              nop
                  srl          t0, ra, s9
                  bltu         a3, s3, 159f
                  slti         s5, s2, 533
                  srai         t2, s4, 12
145:              bne          t0, s6, 147f
                  auipc        t4, 265525
147:              andi         a4, a0, -1891
                  sra          zero, tp, s4
                  xori         s2, gp, 975
                  bgeu         a3, a4, 159f
                  bltu         t6, a5, 168f
                  bge          tp, s0, 161f
                  xor          s3, a5, a1
                  slli         s3, a2, 15
                  xori         s1, a6, 102
                  xori         a5, t2, -1012
                  bgeu         tp, a7, 176f
                  xor          t1, a1, t2
159:              sub          s7, s2, sp
                  nop
161:              nop
                  auipc        t6, 976240
                  beq          t6, a1, 176f
                  sra          sp, s11, s8
                  lui          t6, 406629
                  add          a4, a6, t2
                  andi         gp, s4, 401
168:              ori          s6, s7, 1046
                  slli         s1, t4, 6
                  srl          zero, t0, a5
                  xori         s2, zero, 816
                  or           s1, tp, s5
                  ori          s6, t1, 435
                  blt          s10, ra, 176f
                  sltu         a1, s8, s10
176:              blt          sp, t5, 180f
                  sltiu        s5, t4, 867
                  slt          gp, s9, s9
                  blt          a2, s1, 188f
180:              slti         a1, s4, -51
                  srli         t4, t2, 31
                  auipc        s6, 1026527
                  sra          s1, t2, t5
                  sub          s11, gp, s10
                  blt          a5, a2, 199f
                  auipc        a7, 832368
                  slli         t2, gp, 31
188:              ori          tp, a2, 368
                  bge          a0, a3, 202f
                  sra          ra, s8, a0
                  srai         a3, sp, 28
                  srl          a7, t5, s8
                  bltu         t2, s10, 204f
                  blt          zero, s5, 204f
                  ori          s0, sp, -574
                  ori          s7, t6, -524
                  auipc        zero, 741692
                  andi         s6, t4, -750
199:              srai         t4, s11, 18
                  slti         s8, s8, -1765
                  bne          a6, s1, 204f
202:              slt          t6, s10, t6
                  auipc        t4, 3786
204:              sub          t4, s10, t2
                  lw           s4, 4(t3)
                  sll          zero, sp, s11
                  slli         s3, s8, 17
                  addi         t3, t3, 48
                  sub          gp, t2, s9
                  add          a0, s11, zero
                  xor          a7, a3, t1
                  and          s2, a7, a7
                  sltu         a1, a7, s8
                  lui          s1, 685863
274:              addi x2, x20, 1
274:              jalr x2, x2, 0
sub_4:            srai         t2, s9, 25
                  sltu         zero, t0, s9
                  bltu         s6, s8, sub_4_stack_p
sub_4_stack_p:    addi         t3, t3, -8
                  lui          s9, 693861
                  slli         a1, s5, 20
                  and          s6, s1, s0
                  auipc        a4, 172299
                  sw           s4, 4(t3)
                  auipc        a3, 746626
                  and          t2, t6, a7
                  andi         a4, gp, -969
                  la           a5, region_0+1221 #start riscv_load_store_rand_instr_stream_0
                  xori         s3, a1, 1675
                  sll          t1, a6, t4
                  lb           gp, 48(a5)
                  or           s7, ra, a3
                  ori          a7, t3, -1620
                  andi         ra, t1, 1404
                  lhu          s6, -15(a5)
                  srl          s8, s9, s9
                  addi         a4, s10, -2046
                  slti         s9, t1, 1753
                  slt          a7, s9, t1
                  slti         a2, a4, 1432
                  addi         s8, a4, 4
                  sltu         s3, sp, s1
                  sb           s10, -8(a5)
                  nop
                  addi         t1, a4, -1184
                  sltiu        s0, s3, 836
                  sltu         a3, t2, zero
                  auipc        t4, 233602
                  nop
                  lbu          t5, -2(a5)
                  lb           s8, -7(a5)
                  lhu          a0, 39(a5)
                  xori         s6, s6, -1894
                  sra          s7, a5, gp
                  sw           zero, -1(a5)
                  auipc        t2, 592440
                  lbu          s2, 2(a5)
                  lbu          t4, 23(a5)
                  sltu         s0, tp, a0
                  lb           s1, 47(a5)
                  lbu          s1, -46(a5)
                  sll          t4, t5, a1
                  lb           s6, -33(a5) #end riscv_load_store_rand_instr_stream_0
                  ori          sp, t1, -425
                  bltu         sp, a2, 15f
                  slli         zero, a4, 29
                  beq          s6, ra, 9f
                  andi         s3, s7, 1317
                  nop
                  slti         a5, s5, 135
                  bge          a7, a5, 16f
                  slt          s6, t1, s9
9:                xori         sp, s9, -738
                  sltiu        t1, s1, 1979
                  sll          t6, s10, a2
                  srli         s5, s2, 28
                  xor          s11, s7, s1
                  sra          s1, t0, a5
15:               nop
                  la           t4, region_1+1227 #start riscv_load_store_rand_instr_stream_2
                  or           a4, s9, s4
                  or           t0, t5, tp
                  lbu          ra, -761(t4)
                  and          s5, s3, s4
                  srli         a1, s11, 30
                  slli         t5, a4, 21
                  sb           a2, -902(t4)
                  sub          gp, s2, a1
                  lhu          s9, -355(t4)
                  sb           gp, -838(t4)
                  nop
                  sltiu        s8, a1, -1231
                  sub          gp, s1, t6
                  and          t6, s9, s9
                  slli         a7, gp, 26
                  lb           gp, -812(t4)
                  srli         a2, t0, 15
                  sub          t6, t0, t3
                  lbu          s1, 368(t4)
                  addi         s5, a2, -1720
                  lbu          s1, -165(t4)
                  lbu          t1, 700(t4)
                  sltiu        a0, s11, 1532
                  lbu          t0, -1212(t4)
                  lw           a3, 437(t4)
                  sb           t3, -388(t4)
                  lhu          a5, 255(t4)
                  sltiu        s0, s4, 1346
                  lbu          a2, 378(t4)
                  lbu          s9, -466(t4)
                  srai         t5, s5, 8
                  sb           s10, 308(t4)
                  sb           s8, -36(t4)
                  lh           t6, -61(t4)
                  slli         s7, s3, 20
                  lb           a7, -1134(t4)
                  sltiu        zero, t3, -744
                  sb           s6, 684(t4)
                  or           a3, t3, t2
                  xori         a2, zero, 464
                  add          ra, s2, a3
                  addi         s9, s8, 219
                  lbu          s6, -232(t4)
                  slti         s3, a0, 581
                  andi         s5, s0, 1008
                  lb           s6, -812(t4)
                  lbu          ra, 377(t4)
                  add          s0, s11, s0
                  lb           t0, -220(t4)
                  lhu          a0, -227(t4)
                  lw           gp, -1027(t4)
                  sb           t2, -534(t4)
                  lui          t6, 424033
                  lb           s3, 192(t4)
                  lbu          t1, -673(t4) #end riscv_load_store_rand_instr_stream_2
16:               slt          s1, a7, s9
                  sltu         s3, s5, zero
                  sub          ra, s5, zero
                  bgeu         s2, t5, 38f
                  andi         s0, t6, -1753
                  srli         s0, t4, 24
                  sll          ra, t0, s1
                  andi         t5, tp, -1831
                  auipc        t5, 833539
                  bge          t3, t3, 44f
                  srl          a1, s3, s3
                  srai         gp, a6, 2
                  ori          t6, s4, -509
                  sltu         s0, s0, a1
                  nop
                  slli         s2, s5, 28
                  blt          s7, t0, 44f
                  ori          a1, a5, 1063
                  sll          s4, t2, a6
                  bne          s10, s4, 41f
                  blt          a7, t5, 41f
                  auipc        s1, 318985
38:               sra          s5, sp, a4
                  blt          a6, t2, 52f
                  bltu         gp, a7, 44f
41:               sltiu        a7, s4, -659
                  bltu         t3, a5, 56f
                  srl          t2, s0, t2
44:               addi         s2, s1, 294
                  bge          sp, a1, 58f
                  slli         gp, s7, 29
                  bgeu         s9, a0, 66f
                  andi         a0, ra, 646
                  add          t2, s3, s4
                  sltiu        tp, t0, 637
                  slt          t6, a6, t4
52:               sltu         s9, a5, a3
                  srai         s6, zero, 13
                  andi         a3, t1, 98
                  sltiu        a2, t6, 1651
56:               sltiu        zero, s4, 1134
                  addi         s8, ra, 107
58:               addi         s6, zero, -546
                  srl          a7, t0, s2
                  and          t4, s9, gp
                  ori          s3, a7, -1524
                  nop
                  xori         s0, t0, 240
                  nop
                  slt          t4, s0, t5
66:               bne          s5, a6, 69f
                  sltiu        a1, a7, 1301
                  sra          t1, a7, t6
69:               slt          gp, t6, s10
                  addi         s8, t1, 59
                  srli         s2, a0, 14
                  xori         a0, s0, -429
                  slti         ra, tp, 802
                  slli         a4, tp, 10
                  auipc        s5, 766107
                  addi         gp, t5, 334
                  srai         a4, gp, 9
                  lui          t2, 938765
                  bgeu         gp, s10, 82f
                  srl          zero, s8, a3
                  nop
82:               bge          t5, a0, 84f
                  bgeu         zero, t3, 102f
84:               or           s2, s2, s5
                  bne          sp, a0, 100f
                  xor          t0, t0, s5
                  slli         a1, a3, 30
                  srli         a7, gp, 26
                  beq          s1, a4, 95f
                  xor          s7, s11, gp
                  andi         s2, a7, 94
                  addi         tp, s10, -537
                  sll          t5, a7, s6
                  slli         t0, s6, 31
95:               lui          s4, 382118
                  sub          t4, t5, a5
                  bne          t1, s4, 103f
                  srl          s7, ra, t4
                  slt          s0, t0, t2
100:              addi         s9, a1, -190
                  srli         s7, s0, 9
102:              add          s9, a3, s4
103:              srli         zero, a0, 13
                  ori          t6, s10, -342
                  slt          gp, a0, s9
                  beq          a4, tp, 122f
                  ori          a1, tp, 1831
                  srl          s2, s10, s0
                  sll          s5, s7, t3
                  bne          a2, a1, 114f
                  blt          s9, a4, 122f
                  beq          s8, s9, 120f
                  slli         t6, s3, 30
114:              sub          a5, zero, ra
                  sra          t2, s1, t5
                  srai         s8, s2, 11
                  bge          a1, a3, 127f
                  srl          t2, sp, s5
                  nop
120:              slt          s4, tp, s10
                  bltu         s8, s8, 131f
122:              beq          t1, s10, 129f
                  sltiu        zero, a7, -1986
                  srai         t5, s2, 28
                  sra          zero, s1, a4
                  xori         t4, s6, -720
127:              slt          s4, sp, s0
                  lui          a4, 598116
129:              srl          a5, a0, s11
                  xor          a3, tp, tp
131:              bne          t2, t1, 151f
                  or           tp, sp, sp
                  blt          s11, t6, 141f
                  xori         s2, a3, 532
                  xori         a4, s3, 655
                  sll          s8, s4, s2
                  blt          zero, a7, 149f
                  auipc        t0, 914748
                  slti         a0, t5, 1629
                  add          a0, t0, s11
141:              auipc        ra, 891328
                  slti         t2, s2, 1238
                  ori          a7, t6, 330
                  bgeu         t1, a6, 160f
                  slti         a3, t6, -555
                  bltu         a3, a1, 148f
                  sltiu        s1, a5, -1772
148:              srai         t5, tp, 21
149:              slli         t2, s1, 12
                  andi         sp, ra, -1142
151:              xor          ra, zero, t3
                  beq          s10, a3, 161f
                  andi         sp, t3, -70
                  bne          zero, t2, 164f
                  and          s3, ra, t3
                  lui          t6, 134828
                  sub          a1, t0, s6
                  ori          s6, tp, 2046
                  blt          a2, gp, 163f
160:              xor          a0, a4, t0
161:              sll          tp, zero, s6
                  bltu         a7, s1, 165f
163:              bge          s2, s1, 169f
164:              slli         s5, sp, 5
165:              nop
                  bgeu         sp, t1, 173f
                  srl          a3, t4, t2
                  ori          s0, a3, -1766
169:              ori          s2, s2, -1010
                  srl          s0, s2, s7
                  addi         s11, a3, 490
                  slti         s8, t1, 64
173:              slli         t2, a6, 27
                  blt          s0, s3, 180f
                  srl          gp, a3, s8
                  or           s9, s7, t6
                  sltu         t1, a6, zero
                  xor          t5, t6, a5
                  srl          t2, t6, s6
                  xor          s2, ra, s8
                  slli         s0, s2, 28
                  andi         s9, a2, -1407
                  nop
sub_4_j6:         jal          s4, sub_5 #jump sub_4 -> sub_5
                  auipc        s4, 802711
180:              and          gp, s6, t0
                  sltiu        a0, gp, 370
                  or           tp, zero, a0
                  and          s8, t5, s5
                  slli         s4, t2, 6
                  lui          s11, 138559
                  add          s8, a0, zero
                  bge          t4, s10, 201f
                  or           s5, tp, a2
                  srli         t5, a0, 8
                  sltiu        s5, t2, -381
                  srli         s5, s11, 18
                  xori         s11, a2, 1250
                  blt          s3, t4, 197f
                  nop
                  lui          s1, 524493
                  add          s3, s8, s6
197:              srl          zero, a4, a6
                  bltu         ra, t3, 213f
                  lui          s8, 719407
                  lui          a4, 286086
201:              add          a3, a2, t0
                  blt          a7, s3, 215f
                  sltu         t1, t3, gp
                  sll          t1, tp, s7
                  andi         s0, t6, -2014
                  bge          t1, s1, 225f
                  sll          s3, a3, t4
                  addi         t0, a7, -1641
                  xor          s6, t4, sp
                  or           s11, a1, s8
                  slti         s0, a5, -751
                  bltu         s5, a7, 226f
213:              sll          t6, s4, a4
                  bltu         t1, s9, 226f
215:              beq          tp, a2, 223f
                  auipc        s9, 593758
                  andi         gp, s2, -763
                  srli         t2, s8, 8
                  ori          s9, s9, 1922
                  or           a7, t6, a0
                  xor          s0, a4, s0
                  slt          gp, s4, a1
223:              lui          sp, 793295
                  sltu         gp, t1, s9
225:              bge          s1, a5, 244f
226:              srai         a2, t4, 15
                  lui          s8, 316691
                  auipc        s9, 598655
                  sll          t5, s2, a0
                  beq          a3, a5, 241f
                  srl          s11, t3, s7
                  bge          s7, t5, 237f
                  add          s9, s9, s9
                  bne          s10, a4, 246f
                  beq          zero, s7, 238f
                  or           t4, a2, s5
237:              add          t2, s7, t5
238:              srl          a1, s1, a3
                  sub          s4, t2, t2
                  xor          a7, t5, t5
241:              auipc        a4, 1027084
                  blt          a0, s0, 250f
                  and          tp, gp, t0
244:              ori          s4, s6, -509
                  auipc        a0, 644698
246:              or           s9, t1, s3
                  nop
                  slti         s1, t5, 452
                  xor          t2, t0, t4
250:              sll          zero, zero, t4
                  bgeu         ra, a5, 257f
                  blt          s9, tp, 258f
                  bge          t1, ra, 273f
                  andi         zero, s7, 547
                  bltu         t3, a4, 274f
                  slt          a4, s2, gp
257:              auipc        a5, 628416
258:              bge          ra, a3, 271f
                  ori          s7, t5, 1660
                  beq          a0, t1, 279f
                  slti         ra, t1, -857
                  xor          a4, zero, zero
                  bgeu         a0, tp, 273f
                  bltu         tp, a5, 269f
                  blt          a3, s3, 280f
                  and          sp, a1, s5
                  and          a2, s3, a6
                  slt          s9, s4, s3
269:              slli         a3, t1, 10
                  srli         a5, t0, 8
271:              addi         a7, s3, 370
                  bgeu         ra, s8, 291f
273:              beq          sp, s4, 280f
274:              bltu         s4, zero, 286f
                  and          t2, s0, s5
                  bgeu         a0, ra, 295f
                  sltiu        a3, s9, -1596
                  sltu         s11, s2, tp
279:              add          s11, a4, s7
280:              slli         t5, t0, 20
                  bge          t3, tp, 284f
                  srl          s4, s6, s10
                  slti         s0, ra, -640
284:              srai         a0, t4, 4
                  bltu         a4, a1, 288f
286:              bne          t1, a3, 288f
                  sub          s7, ra, tp
288:              srl          t0, s1, ra
                  xor          a4, t3, t6
                  xori         s11, s9, -1401
291:              slt          a0, s9, tp
                  slli         t0, t2, 9
                  beq          sp, t4, 307f
                  addi         a1, a4, 1648
295:              slti         s1, a7, -851
                  andi         zero, sp, -502
                  sub          s5, t1, a5
                  sltu         s4, a1, t5
                  xori         s5, gp, 602
                  or           tp, s9, s8
                  lui          tp, 836776
                  auipc        t2, 653568
                  bgeu         t3, t5, 322f
                  add          s5, s5, s4
                  sub          ra, s5, t3
                  nop
307:              srli         s1, t2, 11
                  beq          s0, s2, 318f
                  xor          s0, a3, s6
                  slti         tp, s2, -694
                  add          s3, a1, s2
                  bne          s1, t2, 324f
                  bne          s6, a0, 319f
                  beq          sp, a6, 327f
                  lui          t1, 167140
                  ori          a0, t1, 501
                  blt          s1, zero, 323f
318:              bne          t2, a3, 324f
319:              beq          t4, a3, 325f
                  addi         t6, tp, 673
                  auipc        t6, 719525
322:              bltu         s9, a7, 331f
323:              addi         t1, t3, 1001
324:              srli         t0, t5, 6
325:              srli         s9, s0, 11
                  add          gp, gp, ra
                  and          s3, s5, a6
                  sub          t5, s0, sp
                  sltu         a1, a6, s10
                  sll          s11, s3, a6
                  ori          s9, a5, -935
sub_4_j7:         jal          s4, sub_6 #jump sub_4 -> sub_6
327:              andi         t4, sp, -80
                  blt          s7, s5, 332f
                  sltu         t5, a1, t1
                  slli         s11, a5, 5
331:              and          s3, a6, a4
332:              xori         a4, s0, -1153
                  srli         s11, t2, 10
                  lui          s3, 882711
                  sltiu        a2, a1, -1100
                  beq          s3, s8, 356f
                  andi         t0, gp, -649
                  bgeu         a2, a3, 354f
                  sll          ra, t6, gp
                  srli         a3, s7, 20
                  sltiu        s9, ra, 1437
                  srl          a7, a3, s6
                  or           s2, s8, s7
                  add          s2, a4, t5
                  bgeu         a1, t3, 353f
                  auipc        a4, 933853
                  add          tp, t4, sp
                  bne          s0, s10, 358f
                  addi         gp, t2, 1296
                  auipc        a1, 200373
                  srl          a3, a4, a7
                  bne          a6, ra, 366f
353:              xor          t4, s3, s9
354:              slti         tp, s10, 1437
                  bgeu         s5, t6, 374f
356:              nop
                  bge          s1, zero, 361f
358:              bge          a5, t4, 369f
                  bge          s0, tp, 372f
                  srli         s7, s8, 5
361:              beq          s5, t3, 369f
                  xori         t2, s11, 1514
                  ori          a7, s9, 1909
                  andi         s4, s10, -1048
                  nop
366:              ori          a5, s1, 1518
                  ori          t4, a5, 1448
                  bgeu         s8, sp, 387f
369:              srli         ra, s1, 27
                  blt          a7, a0, 378f
                  srai         a7, zero, 9
372:              bne          t1, s6, 378f
                  srli         t0, a0, 29
374:              sub          a4, a5, t6
                  auipc        s2, 747774
                  la           sp, region_1+533 #start riscv_load_store_rand_instr_stream_1
                  srli         s8, a4, 18
                  srli         s7, a1, 30
                  srl          s4, a3, a3
                  lw           a4, 535(sp)
                  sltu         s2, a7, s0
                  sltiu        t6, s3, 583
                  sltiu        s9, a5, -1832
                  xori         a4, t4, 608
                  srl          t6, a0, t6
                  sltiu        s4, s1, 915
                  sb           a7, 1284(sp)
                  lb           s8, 1322(sp)
                  and          s8, a4, s2
                  slli         s0, s5, 17
                  lbu          a3, 1004(sp)
                  or           s7, a0, a6
                  sb           s10, 802(sp)
                  lhu          t5, 245(sp)
                  lb           s6, 222(sp)
                  sh           a0, -75(sp)
                  sltu         s0, s3, zero
                  sltiu        s5, t0, -158
                  sh           s4, 329(sp)
                  sub          tp, sp, s10
                  lbu          s3, 496(sp)
                  lb           t2, 120(sp)
                  sb           t5, 662(sp)
                  xor          s1, t1, t2
                  sh           s0, 1297(sp)
                  slt          ra, a5, a1
                  lb           a4, 1120(sp)
                  andi         a3, t5, -488
                  lb           a1, 370(sp)
                  lb           s9, 879(sp)
                  srli         t6, t6, 19
                  xor          a7, t2, a1
                  sb           t6, 1182(sp)
                  lb           a4, 373(sp) #end riscv_load_store_rand_instr_stream_1
                  beq          a5, a4, 389f
                  bgeu         t4, s4, 387f
378:              slli         a3, a6, 20
                  slti         t1, sp, 1081
                  bgeu         tp, t0, 389f
                  sltiu        a2, a5, -377
                  xori         s9, t0, 1497
                  ori          tp, s4, -1414
                  beq          a7, a0, 403f
                  sltu         t6, a4, tp
                  blt          tp, t4, 398f
387:              lui          s3, 501710
                  sltu         s11, s6, a1
389:              xor          t5, s7, a4
                  srai         t5, a5, 13
                  srl          tp, s11, a3
                  srl          s2, zero, tp
                  sltu         a5, a0, s7
                  sub          s4, tp, t6
                  xor          t2, t3, s10
                  xor          t1, a1, s6
                  and          ra, s6, t4
398:              srai         zero, tp, 21
                  bgeu         s3, a6, 405f
                  xor          sp, tp, ra
                  slli         t1, t1, 22
                  sra          gp, s2, a1
403:              or           s11, zero, gp
                  blt          a6, s10, 407f
405:              srai         zero, a6, 31
                  and          ra, s8, s4
407:              add          a3, sp, a7
                  sub          a5, a7, a2
                  srl          s4, s0, s5
                  slli         t2, a6, 13
                  sra          a0, tp, t3
                  or           sp, s1, a7
                  beq          s10, s0, 419f
                  sltu         a3, t0, s4
                  sra          s8, a2, a5
                  xor          a1, t4, s11
                  sub          zero, t4, a6
                  beq          s10, a7, 428f
419:              andi         t4, s2, -1915
                  bne          s9, t0, 424f
                  sub          t0, a3, s0
                  sll          s7, t1, t0
                  andi         s0, a3, -1126
424:              ori          a5, a3, -197
                  blt          tp, t6, 428f
                  auipc        t4, 832818
                  srl          a4, a1, t2
428:              nop
                  slt          a7, a7, tp
                  srai         a0, t2, 3
                  xori         s2, t1, 993
                  lw           s4, 4(t3)
                  slli         s9, t0, 8
                  addi         t3, t3, 8
                  sub          a3, a1, t5
591:              addi x17, x20, 1
591:              jalr x17, x17, 0
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
.word 0x3f6d5d6f, 0x1393bc7f, 0x44d374a8, 0xab00190e, 0x8353ebb2, 0x81dd71cc, 0x016a33b6, 0x20731fec
.word 0xbd4f9483, 0xdd015074, 0xc44f1a5a, 0xac6aa7f0, 0xe13a1bc3, 0xbd1af2c4, 0x848d402c, 0xeb4e2a75
.word 0xf4df31e0, 0x3d533b04, 0xee6aad4c, 0x30ee2b2d, 0x0638f06c, 0x73481055, 0xcc282a82, 0x20bd02ad
.word 0x4f7dda3c, 0x32a98309, 0x7e50a746, 0xc77f039c, 0xa78ec568, 0x96bcbd74, 0x9af53f08, 0x4281fafb
.word 0x5f0fa7ac, 0xdd34a1de, 0xe9faf568, 0xfa41a224, 0x0cf3df1b, 0x7b8c91ec, 0x1a09376d, 0x10e21632
.word 0x087c6b5a, 0x6dbfe720, 0x1a44ac5c, 0x244d358b, 0xd0948686, 0x9633455e, 0x6328b719, 0x7c8caa66
.word 0x0f6b812e, 0x0efca432, 0xe3fb59f1, 0xe3d0cc33, 0x405d203a, 0x12903bb4, 0x62093595, 0xc6a2ee28
.word 0xa908732a, 0xfc414d42, 0x9444cdf9, 0xb181b456, 0xe2ded9fd, 0xc189f943, 0x11badb91, 0x8ecec3f6
.word 0x66925c46, 0x7ca6fd43, 0xad62108c, 0x855ffd4e, 0x543a6809, 0x078227d7, 0x89901d54, 0x37fe166b
.word 0xdc615af0, 0x78b361d8, 0x694f28d8, 0x19586abe, 0x65c9f178, 0xfdfa39e7, 0xed173dce, 0x96402b0e
.word 0xffabaa51, 0x4ae2db65, 0xb320040b, 0xa1d3190b, 0xe62c7100, 0x693a1a51, 0xc78b7a25, 0xfcadc254
.word 0x8b2cdcb8, 0x78035c43, 0x821ec77d, 0x55c19b33, 0xfa94c49d, 0x0eb3cdaf, 0xf6b0b340, 0x215e7a6b
.word 0xd10896e2, 0xe0c903d2, 0x5adbb9d3, 0xac3f32d4, 0x3210db2e, 0x13f72ae1, 0x192a72cb, 0xb0638af9
.word 0xe3d08fee, 0x23f423e1, 0xa6ef4c4a, 0xd23d5217, 0x0ff37ae3, 0x3bbebd7d, 0x712f42d8, 0xf44308d6
.word 0x4ba57438, 0x09d09fd1, 0x79cb671d, 0xeb09335b, 0xc37f6b6d, 0x61b08441, 0x0d128b90, 0x7ae837fe
.word 0x41f1b21b, 0xc62c968b, 0xa226406c, 0x901069a2, 0x156a436a, 0x8f92874c, 0x8c3e3422, 0xcb978ffb
.word 0x693468e3, 0xce44f59e, 0x25282af8, 0xe49d9dd5, 0x6da7e78a, 0xdae9a13d, 0x59bccb98, 0xc6224910
.word 0x2cff21d7, 0xb9d175b4, 0x61447f81, 0x39379296, 0x66c8397b, 0xc1ae205f, 0xdd06704a, 0xe438a176
.word 0xf5b5c1b1, 0x360bbd99, 0x768235fa, 0xf5e6b35e, 0x5df9b4be, 0x2fa95e25, 0x0b59a4e5, 0xcf5a87c3
.word 0xa7fec4d7, 0x94464595, 0xe3fc9005, 0x42140d8d, 0x989fab43, 0x7ea3df69, 0xa633d524, 0xbadf23a1
.word 0x37baca3a, 0x6a833009, 0xf448214d, 0x8b5579c4, 0x7bc762d5, 0x05c45403, 0x6a15e925, 0x143e8b2b
.word 0xc0fa86dc, 0xd0038010, 0xdafb3c26, 0xc0134c66, 0x4f4eeeda, 0x7691b46c, 0x61ccc7f1, 0x2e3e141e
.word 0x23d5381c, 0x3cee848b, 0x46e7f96f, 0x4268c44a, 0x85057bee, 0x5c671666, 0x63ed0600, 0x33193833
.word 0x719588d6, 0x42efd38a, 0x077fc9bf, 0x9a42e23d, 0xc5120e5f, 0x97617383, 0x6878a1da, 0x3a8c4277
.word 0x4cff9638, 0xb68d0e95, 0xc332ca92, 0x29da92b9, 0x4a1fe3f2, 0xde035820, 0xbcf7dfb6, 0x9c5ea4d1
.word 0x99a565e5, 0x2e21e807, 0x6b815ca7, 0xff3efa2a, 0x6b016bcd, 0x26aff8f9, 0x9051701c, 0x2ca567ad
.word 0xb0673af6, 0x12e10d48, 0x5b6f77bd, 0x9188c22b, 0x3c544f6e, 0x559d7439, 0x9b908d4c, 0x104ac457
.word 0x7aca9f52, 0x67cd3c21, 0xbdceffc0, 0x63219ada, 0x503e43ee, 0x3b57b4cc, 0xdd69686c, 0x3a84faa6
.word 0xea101450, 0x36df76b9, 0x8fb6e3e6, 0xda9b5107, 0xc409632d, 0xea44c0bc, 0xe6d1262e, 0xa9b4058b
.word 0xa6453519, 0x354870e3, 0x22f5cc82, 0x0649a8bc, 0x62739f56, 0x0f29e916, 0xd417552e, 0x42513670
.word 0x729ed5c4, 0x49993b41, 0xd1cb4ede, 0x79b5f67f, 0x1170dae9, 0xa38920b6, 0x72677525, 0x6a345903
.word 0x9b828ce6, 0x7d5c337c, 0xa8c08350, 0xfd1c710b, 0x08db3bb9, 0x1ca0e651, 0x55e36cab, 0xf746913e
.word 0x057d1756, 0x6637cb87, 0x3f2bf58c, 0x87bb961b, 0x00761623, 0x0a625f3d, 0x892d41f9, 0x0ceb8a6d
.word 0xa623bfdf, 0x4d39bf39, 0xc339cb61, 0x6c50b3ab, 0x28b977da, 0x92963890, 0x12db85fa, 0xf489e3e2
.word 0xfcbc5c8d, 0x75b3a92b, 0x6a7253f0, 0x68d0295c, 0x6520df53, 0xf525241f, 0x74ab756f, 0x9e5a9e78
.word 0x68ee8d58, 0x68329744, 0x287d6592, 0x8c788394, 0x2b5c9011, 0x10f1dab4, 0xdcdc41f5, 0x1be5db69
.word 0xd69b7a1c, 0xb4fa7632, 0x62172ba2, 0xbad38bba, 0xe6658f70, 0xaff9ea29, 0x9a5a36a0, 0xa558769e
.word 0x2b50aedf, 0x132d4528, 0xe758af83, 0xce75ba61, 0x28db44b4, 0x71d848aa, 0xeb1a7f09, 0xa1daa022
.word 0xa66a18a0, 0x157d08bb, 0x23cd7ae4, 0xab480dd4, 0xc2934033, 0xcc5af7b4, 0xca14cb75, 0x1538dbb8
.word 0xae050d16, 0xdc18da21, 0xa110e6c1, 0x85235ad1, 0x8c7896df, 0x061a5043, 0xd16a0031, 0xdaceb2c7
.word 0xd996a7c0, 0x08808da8, 0x4afb7f33, 0xb8ee4b04, 0xd12ffede, 0x962d4a81, 0x198b2ad2, 0x0cce2822
.word 0x8532f846, 0x0527d300, 0x98930f22, 0xa90b2e9c, 0x10e05790, 0x00295ad8, 0xe61c9672, 0xc7848fee
.word 0x3427ee8d, 0x12ddd011, 0xd2a796ea, 0x862ee955, 0xae73535c, 0x135b1ae8, 0x877efbe4, 0x89a1c784
.word 0x0e832a08, 0xac48272a, 0xecd86259, 0x9ac2262c, 0x694c681c, 0xdf84bbd6, 0xf905c994, 0x3e555729
.word 0xe75234a6, 0x30c18408, 0xb02b18e9, 0x476a868c, 0x06b735cc, 0xbba91b83, 0xadda6e8a, 0x9498a02b
.word 0x269019e0, 0xa1c39c82, 0x6395bdbd, 0x2634c2e0, 0xb819f526, 0x15531efc, 0xc7f57ac7, 0x494df666
.word 0x86d28d18, 0x2855a350, 0xc99a2944, 0x09eb600b, 0xf890c9b6, 0x7355a737, 0x139eca17, 0x0440a881
.word 0x8e3ab8d6, 0xd8610f01, 0xf03dd34f, 0xbe87ff3c, 0xcdff9494, 0xe32c2734, 0x47279159, 0x687b6621
.word 0x4c28b56a, 0xa8269889, 0x0933bb4f, 0x3ba8ca2d, 0xf7350f34, 0xa6c2b8fe, 0x1b65da1f, 0xdbe07732
.word 0x48467c46, 0x055d417f, 0x3ae4653a, 0x1a1df7c4, 0x1f7e1a4e, 0xa8594557, 0x96e97df8, 0x75f98e67
.word 0x9e969604, 0x25ee3c13, 0x3ee2d7f1, 0xec0a3c1a, 0xbd838ad2, 0x946f50ae, 0xb5b9150b, 0x5912a685
.word 0x97dd7bb2, 0x52ed4620, 0x25a698af, 0x65b35a4d, 0x332315a8, 0xd4c35125, 0x7fc9ea8c, 0xbf2593a9
.word 0xf094ee04, 0xed383de0, 0xf812c2b1, 0xa1299f02, 0x1d9b8b56, 0x91019889, 0x6d923751, 0xafce5bd7
.word 0xea993640, 0x71515a70, 0xb30bd036, 0xd2fcea4c, 0x71c0fd28, 0x2ddef1a1, 0x49cbad74, 0x8bf682b7
.word 0x4765f6d7, 0x881b36f5, 0xdac075a2, 0xb7d3776c, 0x7629c270, 0x85179d37, 0x159318de, 0x60b47786
.word 0xbbd75656, 0x7e1c0338, 0x88ba6b14, 0xcce7a167, 0x65ae3049, 0x49a1e898, 0x31710399, 0xf3a277ca
.word 0x0e19c3c4, 0xd3f5304d, 0xc7030f59, 0xa239a284, 0xfbdda099, 0x951438e3, 0x8813f9fb, 0x3f109439
.word 0x111297ab, 0xdbbe3115, 0xff4e75e5, 0x235c4ca9, 0x7b6d332c, 0x14eabfe2, 0x31e7b2a2, 0x7b78a0fe
.word 0x9c0713d4, 0x257195cf, 0x7c204fc4, 0x528a2849, 0xe55c0c07, 0x76de461f, 0x93f11be7, 0x34caf2b7
.word 0xf0c0f1a4, 0x680721bb, 0xd2a9a0b7, 0x626b1b64, 0x05aa887b, 0xb6d6f7f0, 0xc92834e5, 0x6a909bb2
.word 0x99e3de9f, 0xaddb621a, 0xfef704a8, 0x40ba201e, 0x329d4864, 0x6cfb1311, 0x2a9b99d1, 0xbbf29611
.word 0xe5952151, 0xf2ab3525, 0xfbb5c0d4, 0xe3f1880a, 0x19547664, 0xad136270, 0x1d5488ba, 0x3a844a73
.word 0x60752315, 0x59afc4c4, 0xddae2a11, 0x9befe258
.section .region_1,"aw",@progbits;
region_1:
.word 0x2970d181, 0x2c219332, 0xfe2fd031, 0x96d4f95b, 0xc5b5929b, 0xa50678e9, 0xf2bfed3a, 0xdedddbfc
.word 0x97a98d96, 0xda74841f, 0x3a4fd350, 0x549dbc0f, 0x553149bf, 0xbe55b6c8, 0x93a36df8, 0x528cda9a
.word 0xde0e3426, 0xe62ca88b, 0x195f9021, 0x6783bae6, 0x0c7bb491, 0x2459fd0a, 0x9e9e163f, 0xf54f2851
.word 0xfe98ddb8, 0x25149d0d, 0x11333f46, 0x931cf5ff, 0x8e5a34eb, 0x4707555c, 0x26eb808f, 0x4cb2d065
.word 0x22058ca7, 0x3e1e6553, 0x5f8fccf1, 0xfcb07c8d, 0xb178f0be, 0x3b557cb6, 0x519f6655, 0x1754b0df
.word 0xa448b97a, 0x7bebc74b, 0x24176b0d, 0xf6e94c8a, 0xa0c83ce5, 0x3a2fcf38, 0x986d40da, 0x103cbc4d
.word 0x621c3007, 0x4e2be202, 0xc71d6da2, 0x9cfd60ce, 0x2527cf27, 0x8b7889fb, 0x46e67d23, 0xe5033e32
.word 0xfa60094c, 0xba7e21ed, 0x9fcbe318, 0x29c5bd40, 0xd0044a4d, 0xe0e3e5f9, 0x6f17ae98, 0x67b9f63a
.word 0xab48b773, 0x48ac0084, 0x52ef592b, 0x30ca3afc, 0x83992109, 0xb5a67610, 0x708ec01c, 0x9e5e0993
.word 0x8172b323, 0x308c4f76, 0x948150c5, 0xcf90ef50, 0x96f5656a, 0x20876333, 0x6332b002, 0xf4c5dfb4
.word 0xddb9b487, 0x9041da4e, 0xbabf81ce, 0x657c8774, 0xdb54139b, 0x2a995243, 0xaa2bfd24, 0x6f314ffc
.word 0x970b4238, 0x22deadb6, 0x4937826a, 0x5a5c795f, 0x4247333a, 0x8cfbfc8a, 0xf94199c2, 0x44a7157a
.word 0x9a09529d, 0x8004bade, 0x7554b8d2, 0x41ad5113, 0x3868d94a, 0x134a3b19, 0x2879c13e, 0x0afc0dcb
.word 0x64e0adaa, 0x119d0026, 0x3b61d595, 0xa8897705, 0x3752297c, 0x5770f0e8, 0xc00329ac, 0x312a417a
.word 0xe4253384, 0xdb46a8fa, 0xdd21f765, 0x41d98f50, 0xbe2f654f, 0x2728a04d, 0xcce7f309, 0x20bc95f3
.word 0xf0e7b7dd, 0x80cb1b40, 0x5ff3e1fa, 0x8ea1880c, 0x4a28e345, 0x2955c0ca, 0x8cebb0da, 0x168eaecf
.word 0xf9a6163a, 0x5be253a8, 0x2276c5c7, 0x84d8392e, 0x9d36b788, 0xc68956ae, 0xdec8795a, 0xb7451e77
.word 0x4692c402, 0xb86ce09a, 0x63a7188a, 0x065244bf, 0x73b5453e, 0xe945f70b, 0xbfc193ca, 0xca9ec720
.word 0xa4baf857, 0xb26f1446, 0x4ea55418, 0xfaa9961c, 0x7a77316c, 0x5bdabba2, 0x48703449, 0x259f0d85
.word 0xa9470998, 0x89e02fbc, 0x201f8cf3, 0x039589c6, 0xc0de2871, 0xc755b47e, 0xb6dd7357, 0x824e8b7a
.word 0x54915967, 0xeda1c8f0, 0x11f43f31, 0x66f4d49e, 0x8dc73c2a, 0x5c21e3b4, 0xc949c546, 0x89e0706b
.word 0x443bc70e, 0xc6ccd553, 0x551788f1, 0x188ed4f2, 0xae837dd0, 0xc92b73a0, 0x8f27b5e2, 0x4422c802
.word 0x5847779d, 0xf45a1950, 0x96ee4369, 0xfeab8452, 0x93927f93, 0x19112dc5, 0x9530a6ee, 0xc58cd63b
.word 0x7171dd91, 0xf264cfb3, 0x814a3f8a, 0xde1bf535, 0xb8cd25cc, 0x01bfb170, 0x58e1151f, 0xff36531f
.word 0x19a30717, 0xcf1edc7b, 0x45ed6d94, 0x28e3780a, 0x3c61fd2a, 0xde219cbd, 0x5e5c2afa, 0x6affe57c
.word 0x1817eb58, 0xec13ca95, 0x132a581c, 0x5be56ca5, 0xc8a2e51b, 0x3418f9c3, 0x0afc4463, 0xa5c237b3
.word 0x93df177a, 0x315a0a62, 0x26cbe8a0, 0x54808f09, 0xdb3b7874, 0x7aaea289, 0x9d3a4e33, 0x8123ccb6
.word 0x8746781d, 0x6cadd548, 0xee27a3f1, 0x20cdd735, 0xc12c4781, 0x4ea59b65, 0x123c7487, 0x0efce176
.word 0xbc73601a, 0x4caaf4e6, 0xd0d96497, 0x26552785, 0x459b1c1c, 0x22ad588f, 0x67a83ac9, 0xb09b347e
.word 0xf5a70ce4, 0x45356764, 0x903b658c, 0x1446f8f0, 0x93fc609d, 0x979a3be5, 0xeb83930a, 0x6d197252
.word 0xed7c044d, 0x51c5a45f, 0xe9097540, 0x5a4b480d, 0xdd8e21a1, 0xaad13a5b, 0x8e799aec, 0xbb9cf04b
.word 0x4f5fc157, 0x249eff01, 0x29702320, 0x33ab7f69, 0x861e6f8a, 0xf23b342e, 0x17bd42a9, 0x61196736
.word 0x71e36d2f, 0xb4cf6413, 0x60881729, 0xd1771de3, 0xf3d07196, 0xfc7c03d2, 0xde100832, 0x9bcc874a
.word 0x3747f918, 0xcd5cb9ac, 0xd8af8d39, 0x3932c486, 0x753ea199, 0xc8b516c9, 0xbb353aa8, 0x1555d529
.word 0x16c48262, 0x376ce96d, 0x74ab94fb, 0x79b1314b, 0x5eb9ce4a, 0x65e4f602, 0xdaf33706, 0x6ae53da2
.word 0x7c86349e, 0x467e49b7, 0xabbe450e, 0x3c6def2a, 0xe0f303bf, 0x332fc85c, 0x7c93a050, 0xa2af2f88
.word 0x7615e48a, 0x44315c93, 0x33bcc49d, 0xffda0fac, 0xbaf68413, 0xdfa33402, 0x84464869, 0xbef4a477
.word 0x29bdb5a1, 0x51505691, 0x5dcbda06, 0x6ac212d1, 0x3ac3856e, 0x72d34021, 0x29bfbd1d, 0x18bece86
.word 0x82d41f1e, 0xc0b5b890, 0xe35fad72, 0xdc42a8b3, 0x9bcc55fc, 0xd4ce3793, 0x789d8806, 0x3d4eeffa
.word 0x9b92e74b, 0x08265f0a, 0x7f6ef8d0, 0x266e840a, 0x7d575f46, 0xae4af443, 0x062e4ba3, 0x03576839
.word 0xfd82a26a, 0x297a787b, 0x02800093, 0x3c954c0f, 0xae9f1fa9, 0xf6e9920d, 0x7c02a991, 0x148de901
.word 0xabf59903, 0xbd8e5da2, 0xc8fd4493, 0x6686ab3e, 0xd3433b2b, 0xe5a64fe8, 0xeb4b08b3, 0x827d3380
.word 0x56ba8b7b, 0x0e96b2e1, 0xd3b7ffb6, 0x82fb6164, 0x20d2f095, 0x55286fd4, 0x1db9d7dd, 0x2466161d
.word 0x8f830d76, 0x9a52d8d8, 0xd81bd449, 0x14239323, 0xab96f75d, 0xc33642e8, 0x7c1f1018, 0xebc057c7
.word 0xf69dfb29, 0x8a9c7d2d, 0x65f2b5b0, 0x100e37b1, 0xfb59981b, 0x9ae32a0b, 0x85823c97, 0x8f81cdcb
.word 0x99f8f4ef, 0x6bd91e7f, 0xf67f782d, 0xa410b28f, 0x53fc4a22, 0x93e98577, 0xf46b34fe, 0xceffecea
.word 0x9c8ad3a6, 0xfebac2e2, 0x23ced58e, 0xd91f1686, 0xe55144dc, 0x380b617e, 0xb6b7698c, 0xd7bf995f
.word 0x3560e904, 0x94f29100, 0x0798e344, 0x8ebf8290, 0x7a75e00d, 0x27e4fa95, 0x681799d9, 0x1da837cd
.word 0xe04809c9, 0x73d66b39, 0x838e248d, 0x6028ba60, 0xfa83c73c, 0xee63229f, 0xeda5441c, 0x77472847
.word 0x74ea9f77, 0xc57871b8, 0xd9dee01f, 0xf82cdd51, 0xa1673f59, 0x2a24f4d8, 0x60e6e235, 0x65197829
.word 0x007663e5, 0xbd740e0b, 0x0e97b058, 0xd8a36267, 0x7abff0e1, 0xf309e668, 0xabff940e, 0xfc8ec768
.word 0x179546a6, 0xb00b8096, 0xe354e09c, 0x8a88690c, 0x0863dbac, 0xc44ad403, 0xe02d7107, 0x42367774
.word 0x71d31335, 0xe3fd9751, 0x6b3557d3, 0x9fef10f3, 0xd4bca9dc, 0x9c900866, 0x7503ec6d, 0x52c5e188
.word 0xe2f22952, 0x2daf9992, 0x7fe0b7ab, 0x25e3c0fd, 0x9b29348e, 0x0324bdc5, 0x233e2793, 0x75836556
.word 0x38c72d18, 0xd58c632a, 0x0c288903, 0xe7acfdf5, 0x3b8d6121, 0x27a609c7, 0x87f7ce83, 0xce29b587
.word 0x5a0d5e25, 0xa33ce1ab, 0x0e3ad0be, 0xeaa4b469, 0x2993b98e, 0xe0621975, 0x22d352c8, 0x4e6d5cf5
.word 0x10251607, 0x0d2ece5f, 0xf2b359f0, 0x43bf5aed, 0xaae4acb9, 0xc5b81778, 0xd389943b, 0x6ece7309
.word 0xeb15b5d0, 0x9e7d7bfa, 0x83f780d5, 0x3aca3a31, 0x606cd01f, 0x9d38e3b3, 0x6e0e1d61, 0xce26f8f4
.word 0x9a33217a, 0x603cc416, 0x95126fde, 0x9a1bcbb2, 0x4fc72c7d, 0x6d4f9561, 0xad71e1c4, 0xeb373ce2
.word 0x9e650054, 0xce9cfbec, 0x3aa51bdc, 0x098014a1, 0x6410f7dc, 0x8adfebf7, 0x8ce2996f, 0x5c0aa67a
.word 0x9539bc47, 0x43e03320, 0x078c596d, 0x35ead8f8, 0x5c1a39ec, 0x80a6c35c, 0x79285ba0, 0x50f7af70
.word 0x818f8e62, 0x15e3a2ba, 0x1ebf9887, 0xbb1ab36d, 0x1bd014f2, 0xc8e1a94a, 0x3005c619, 0x007b6fab
.word 0x0130d331, 0xbe4ebfb3, 0x9aed1485, 0x4bd6c218
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
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x16, x28, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_2:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x16, x28, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_3:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x16, x28, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_4:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x16, x28, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_5:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x16, x28, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_6:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x16, x28, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_7:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x16, x28, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_8:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x16, x28, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_9:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x16, x28, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_10:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x16, x28, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_11:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x16, x28, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_12:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x16, x28, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_13:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x16, x28, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_14:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x16, x28, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

mmode_intr_vector_15:
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x16, x28, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x26, test_done
                  jalr x0, x26, 0

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
                  addi x28, x28, -128
                  sw  x1, 4(x28)
                  sw  x2, 8(x28)
                  sw  x3, 12(x28)
                  sw  x4, 16(x28)
                  sw  x5, 20(x28)
                  sw  x6, 24(x28)
                  sw  x7, 28(x28)
                  sw  x8, 32(x28)
                  sw  x9, 36(x28)
                  sw  x10, 40(x28)
                  sw  x11, 44(x28)
                  sw  x12, 48(x28)
                  sw  x13, 52(x28)
                  sw  x14, 56(x28)
                  sw  x15, 60(x28)
                  sw  x16, 64(x28)
                  sw  x17, 68(x28)
                  sw  x18, 72(x28)
                  sw  x19, 76(x28)
                  sw  x20, 80(x28)
                  sw  x21, 84(x28)
                  sw  x22, 88(x28)
                  sw  x23, 92(x28)
                  sw  x24, 96(x28)
                  sw  x25, 100(x28)
                  sw  x26, 104(x28)
                  sw  x27, 108(x28)
                  sw  x28, 112(x28)
                  sw  x29, 116(x28)
                  sw  x30, 120(x28)
                  sw  x31, 124(x28)
                  add x16, x28, zero
                  csrr x18, 0x341 # MEPC
                  csrr x18, 0x342 # MCAUSE
                  li x9, 0x3 # BREAKPOINT
                  beq x18, x9, ebreak_handler
                  li x9, 0x8 # ECALL_UMODE
                  beq x18, x9, ecall_handler
                  li x9, 0x9 # ECALL_SMODE
                  beq x18, x9, ecall_handler
                  li x9, 0xb # ECALL_MMODE
                  beq x18, x9, ecall_handler
                  li x9, 0x1
                  beq x18, x9, instr_fault_handler
                  li x9, 0x5
                  beq x18, x9, load_fault_handler
                  li x9, 0x7
                  beq x18, x9, store_fault_handler
                  li x9, 0xc
                  beq x18, x9, pt_fault_handler
                  li x9, 0xd
                  beq x18, x9, pt_fault_handler
                  li x9, 0xf
                  beq x18, x9, pt_fault_handler
                  li x9, 0x2 # ILLEGAL_INSTRUCTION
                  beq x18, x9, illegal_instr_handler
                  csrr x9, 0x343 # MTVAL
                  1: la x26, test_done
                  jalr x1, x26, 0

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
                  la x26, write_tohost
                  jalr x0, x26, 0

instr_fault_handler:
                  add x28, x16, zero
                  lw  x1, 4(x28)
                  lw  x2, 8(x28)
                  lw  x3, 12(x28)
                  lw  x4, 16(x28)
                  lw  x5, 20(x28)
                  lw  x6, 24(x28)
                  lw  x7, 28(x28)
                  lw  x8, 32(x28)
                  lw  x9, 36(x28)
                  lw  x10, 40(x28)
                  lw  x11, 44(x28)
                  lw  x12, 48(x28)
                  lw  x13, 52(x28)
                  lw  x14, 56(x28)
                  lw  x15, 60(x28)
                  lw  x16, 64(x28)
                  lw  x17, 68(x28)
                  lw  x18, 72(x28)
                  lw  x19, 76(x28)
                  lw  x20, 80(x28)
                  lw  x21, 84(x28)
                  lw  x22, 88(x28)
                  lw  x23, 92(x28)
                  lw  x24, 96(x28)
                  lw  x25, 100(x28)
                  lw  x26, 104(x28)
                  lw  x27, 108(x28)
                  lw  x28, 112(x28)
                  lw  x29, 116(x28)
                  lw  x30, 120(x28)
                  lw  x31, 124(x28)
                  addi x28, x28, 128
                  mret

load_fault_handler:
                  add x28, x16, zero
                  lw  x1, 4(x28)
                  lw  x2, 8(x28)
                  lw  x3, 12(x28)
                  lw  x4, 16(x28)
                  lw  x5, 20(x28)
                  lw  x6, 24(x28)
                  lw  x7, 28(x28)
                  lw  x8, 32(x28)
                  lw  x9, 36(x28)
                  lw  x10, 40(x28)
                  lw  x11, 44(x28)
                  lw  x12, 48(x28)
                  lw  x13, 52(x28)
                  lw  x14, 56(x28)
                  lw  x15, 60(x28)
                  lw  x16, 64(x28)
                  lw  x17, 68(x28)
                  lw  x18, 72(x28)
                  lw  x19, 76(x28)
                  lw  x20, 80(x28)
                  lw  x21, 84(x28)
                  lw  x22, 88(x28)
                  lw  x23, 92(x28)
                  lw  x24, 96(x28)
                  lw  x25, 100(x28)
                  lw  x26, 104(x28)
                  lw  x27, 108(x28)
                  lw  x28, 112(x28)
                  lw  x29, 116(x28)
                  lw  x30, 120(x28)
                  lw  x31, 124(x28)
                  addi x28, x28, 128
                  mret

store_fault_handler:
                  add x28, x16, zero
                  lw  x1, 4(x28)
                  lw  x2, 8(x28)
                  lw  x3, 12(x28)
                  lw  x4, 16(x28)
                  lw  x5, 20(x28)
                  lw  x6, 24(x28)
                  lw  x7, 28(x28)
                  lw  x8, 32(x28)
                  lw  x9, 36(x28)
                  lw  x10, 40(x28)
                  lw  x11, 44(x28)
                  lw  x12, 48(x28)
                  lw  x13, 52(x28)
                  lw  x14, 56(x28)
                  lw  x15, 60(x28)
                  lw  x16, 64(x28)
                  lw  x17, 68(x28)
                  lw  x18, 72(x28)
                  lw  x19, 76(x28)
                  lw  x20, 80(x28)
                  lw  x21, 84(x28)
                  lw  x22, 88(x28)
                  lw  x23, 92(x28)
                  lw  x24, 96(x28)
                  lw  x25, 100(x28)
                  lw  x26, 104(x28)
                  lw  x27, 108(x28)
                  lw  x28, 112(x28)
                  lw  x29, 116(x28)
                  lw  x30, 120(x28)
                  lw  x31, 124(x28)
                  addi x28, x28, 128
                  mret

ebreak_handler:   
                  csrr  x18, 0x341
                  addi  x18, x18, 4
                  csrw  0x341, x18
                  add x28, x16, zero
                  lw  x1, 4(x28)
                  lw  x2, 8(x28)
                  lw  x3, 12(x28)
                  lw  x4, 16(x28)
                  lw  x5, 20(x28)
                  lw  x6, 24(x28)
                  lw  x7, 28(x28)
                  lw  x8, 32(x28)
                  lw  x9, 36(x28)
                  lw  x10, 40(x28)
                  lw  x11, 44(x28)
                  lw  x12, 48(x28)
                  lw  x13, 52(x28)
                  lw  x14, 56(x28)
                  lw  x15, 60(x28)
                  lw  x16, 64(x28)
                  lw  x17, 68(x28)
                  lw  x18, 72(x28)
                  lw  x19, 76(x28)
                  lw  x20, 80(x28)
                  lw  x21, 84(x28)
                  lw  x22, 88(x28)
                  lw  x23, 92(x28)
                  lw  x24, 96(x28)
                  lw  x25, 100(x28)
                  lw  x26, 104(x28)
                  lw  x27, 108(x28)
                  lw  x28, 112(x28)
                  lw  x29, 116(x28)
                  lw  x30, 120(x28)
                  lw  x31, 124(x28)
                  addi x28, x28, 128
                  mret

illegal_instr_handler:
                  csrr  x18, 0x341
                  addi  x18, x18, 4
                  csrw  0x341, x18
                  add x28, x16, zero
                  lw  x1, 4(x28)
                  lw  x2, 8(x28)
                  lw  x3, 12(x28)
                  lw  x4, 16(x28)
                  lw  x5, 20(x28)
                  lw  x6, 24(x28)
                  lw  x7, 28(x28)
                  lw  x8, 32(x28)
                  lw  x9, 36(x28)
                  lw  x10, 40(x28)
                  lw  x11, 44(x28)
                  lw  x12, 48(x28)
                  lw  x13, 52(x28)
                  lw  x14, 56(x28)
                  lw  x15, 60(x28)
                  lw  x16, 64(x28)
                  lw  x17, 68(x28)
                  lw  x18, 72(x28)
                  lw  x19, 76(x28)
                  lw  x20, 80(x28)
                  lw  x21, 84(x28)
                  lw  x22, 88(x28)
                  lw  x23, 92(x28)
                  lw  x24, 96(x28)
                  lw  x25, 100(x28)
                  lw  x26, 104(x28)
                  lw  x27, 108(x28)
                  lw  x28, 112(x28)
                  lw  x29, 116(x28)
                  lw  x30, 120(x28)
                  lw  x31, 124(x28)
                  addi x28, x28, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x18, 0x300 # MSTATUS;
                  csrr  x18, 0x304 # MIE;
                  csrr  x18, 0x344 # MIP;
                  csrrc x18, 0x344, x18 # MIP;
                  add x28, x16, zero
                  lw  x1, 4(x28)
                  lw  x2, 8(x28)
                  lw  x3, 12(x28)
                  lw  x4, 16(x28)
                  lw  x5, 20(x28)
                  lw  x6, 24(x28)
                  lw  x7, 28(x28)
                  lw  x8, 32(x28)
                  lw  x9, 36(x28)
                  lw  x10, 40(x28)
                  lw  x11, 44(x28)
                  lw  x12, 48(x28)
                  lw  x13, 52(x28)
                  lw  x14, 56(x28)
                  lw  x15, 60(x28)
                  lw  x16, 64(x28)
                  lw  x17, 68(x28)
                  lw  x18, 72(x28)
                  lw  x19, 76(x28)
                  lw  x20, 80(x28)
                  lw  x21, 84(x28)
                  lw  x22, 88(x28)
                  lw  x23, 92(x28)
                  lw  x24, 96(x28)
                  lw  x25, 100(x28)
                  lw  x26, 104(x28)
                  lw  x27, 108(x28)
                  lw  x28, 112(x28)
                  lw  x29, 116(x28)
                  lw  x30, 120(x28)
                  lw  x31, 124(x28)
                  addi x28, x28, 128
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
