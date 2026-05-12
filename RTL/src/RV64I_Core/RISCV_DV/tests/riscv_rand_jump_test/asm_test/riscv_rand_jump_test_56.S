.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x7, h0_start
jalr x0, x7, 0
h0_start:
                  li x18, 0x40000100
                  csrw 0x301, x18
kernel_sp:        
                  la x12, kernel_stack_end

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
                  li x0, 0x4
                  li x1, 0xfe31fce2
                  li x2, 0xf44ba45c
                  li x3, 0x0
                  li x4, 0xc1b8d753
                  li x5, 0xf5bbff22
                  li x6, 0x62110129
                  li x7, 0x0
                  li x8, 0x0
                  li x9, 0xf27c9e96
                  li x10, 0xa
                  li x11, 0x80000000
                  li x13, 0x0
                  li x14, 0x0
                  li x15, 0x50d1adc4
                  li x16, 0x80000000
                  li x17, 0xf3a0e882
                  li x18, 0x0
                  li x19, 0x7
                  li x20, 0xf5e2bb4d
                  li x21, 0x10ba00b8
                  li x22, 0xfcd63266
                  li x24, 0x2
                  li x25, 0x0
                  li x26, 0x5d71231a
                  li x27, 0xf3fc16ea
                  li x28, 0x18067b2b
                  li x29, 0xa
                  li x30, 0x74c3d504
                  li x31, 0xee70dcec
                  la x23, user_stack_end
main:             la           s0, sub_2
                  sltu         zero, s8, t5
                  addi         s0, s0, -266
                  sra          s4, s10, t3
                  add          s6, s4, a5
                  and          s4, t1, t4
                  srl          s11, a6, s1
                  sll          a6, sp, ra
                  addi         s2, zero, -1497
                  addi         t0, t6, -484
                  slli         zero, s5, 7
                  or           a1, s10, tp
main_j3:          jalr         t1, s0, 267 #jump main -> sub_2
                  la           sp, region_0+1952 #start riscv_load_store_rand_instr_stream_5
                  lui          s1, 961852
                  xori         a0, zero, -428
                  lhu          a7, -792(sp)
                  srli         t5, s1, 20
                  xori         a5, a5, 1947
                  sh           s1, -716(sp)
                  auipc        a3, 901806
                  srai         s11, s8, 12
                  srai         t3, s11, 3
                  lbu          s11, -798(sp)
                  lb           a3, -751(sp)
                  sb           t6, -847(sp)
                  ori          a7, sp, 349
                  sw           s3, -12(sp)
                  lbu          s8, -627(sp)
                  lw           t1, -196(sp)
                  xori         a5, t5, -1806
                  ori          s9, a6, -444
                  nop
                  lbu          s2, -1744(sp)
                  lh           t4, -1434(sp)
                  lw           s10, -752(sp)
                  lbu          t0, -246(sp)
                  lbu          a1, -1246(sp)
                  slt          a4, s5, a1
                  or           s2, s10, a5
                  sra          gp, a0, s4
                  add          zero, s3, t4
                  auipc        a3, 77620
                  lb           gp, -1705(sp)
                  lb           a1, -1916(sp)
                  nop
                  sh           t2, -1414(sp) #end riscv_load_store_rand_instr_stream_5
                  la           sp, region_1+1287 #start riscv_load_store_rand_instr_stream_9
                  ori          s0, zero, 279
                  lbu          ra, 121(sp)
                  srl          zero, s9, s3
                  srai         s10, gp, 15
                  sw           t3, 201(sp)
                  ori          s5, t5, 1212
                  lb           a6, 252(sp)
                  lbu          a1, 8(sp)
                  andi         t5, t0, -884
                  sb           s0, 241(sp)
                  srl          t4, t6, s2
                  ori          s3, sp, 248
                  srai         zero, a7, 9
                  lb           a5, 210(sp)
                  addi         a1, a0, -413
                  ori          zero, t4, -292
                  sh           a6, 197(sp)
                  xor          tp, s8, ra
                  lui          s1, 895211
                  srai         s10, t1, 5
                  sb           t4, -170(sp)
                  lhu          t1, 135(sp)
                  slti         s11, s8, -1357
                  lbu          t1, -70(sp)
                  lb           ra, -193(sp)
                  lbu          a3, 84(sp)
                  ori          gp, s0, 496
                  lb           a5, 124(sp)
                  slt          s5, s6, a3
                  lhu          tp, -247(sp)
                  lbu          t0, -211(sp)
                  nop
                  sh           s3, -63(sp)
                  lb           gp, 82(sp)
                  lb           s2, -112(sp)
                  lb           a5, -159(sp)
                  and          a1, a0, s9
                  lh           t4, -109(sp)
                  lbu          t1, 176(sp)
                  lh           a0, 97(sp)
                  ori          t4, a6, 1855
                  sll          s6, s8, s4
                  lui          t1, 982368
                  sltu         a5, tp, a7
                  lb           t5, -22(sp)
                  lh           a1, 235(sp)
                  sra          a5, s0, s3
                  sb           s0, -125(sp)
                  srai         zero, s1, 24
                  nop
                  sb           t2, 26(sp) #end riscv_load_store_rand_instr_stream_9
                  la           sp, region_1+103 #start riscv_load_store_rand_instr_stream_2
                  srai         t4, s0, 4
                  lbu          a4, -31(sp)
                  sw           s11, 61(sp)
                  andi         zero, gp, 1079
                  lh           s10, -19(sp)
                  or           s9, a4, a5
                  lbu          s11, -60(sp)
                  lb           a7, 44(sp)
                  and          ra, s6, s5
                  or           s3, s10, ra
                  lbu          a5, -47(sp)
                  lbu          a0, 52(sp)
                  lw           t1, -3(sp)
                  sb           s4, -46(sp)
                  lui          a4, 138657
                  slt          s11, a0, s2
                  ori          t5, t2, 65
                  lb           s4, 62(sp)
                  auipc        s0, 853423
                  addi         s3, s1, 1146
                  andi         a0, s9, -1467
                  sb           s2, -15(sp)
                  sltiu        s4, s1, 1548
                  sb           s4, -28(sp)
                  lbu          a7, 7(sp)
                  lb           s4, 63(sp) #end riscv_load_store_rand_instr_stream_2
                  la           t3, region_0+1008 #start riscv_load_store_rand_instr_stream_7
                  sltiu        gp, t2, -698
                  slti         s8, gp, 1518
                  lbu          sp, 5(t3)
                  lh           sp, 14(t3)
                  lh           a4, 54(t3)
                  lhu          s9, 46(t3)
                  lb           a4, 40(t3)
                  and          a3, s4, s1
                  or           s1, s4, s10
                  lhu          s6, -58(t3)
                  slt          a7, tp, t5
                  sub          a7, gp, s0
                  lb           s8, 43(t3)
                  lbu          tp, 61(t3)
                  lb           ra, -4(t3)
                  sb           s6, 55(t3)
                  lbu          t4, 49(t3)
                  andi         t0, s2, -1479
                  sb           t1, 5(t3)
                  sb           a1, -55(t3)
                  slli         tp, s2, 18
                  lbu          tp, -47(t3)
                  sb           gp, -64(t3)
                  lw           s9, 8(t3)
                  sb           s4, -26(t3)
                  sb           ra, -26(t3)
                  sub          s6, a1, s10
                  lbu          s0, -59(t3)
                  lhu          t1, -10(t3)
                  srai         s2, t0, 8
                  sll          s3, s11, s0
                  lh           ra, -38(t3) #end riscv_load_store_rand_instr_stream_7
                  la           sp, region_0+285 #start riscv_load_store_rand_instr_stream_10
                  addi         s6, a2, -115
                  sb           t1, 1424(sp)
                  add          s2, t5, a6
                  lbu          a0, 748(sp)
                  sh           gp, 353(sp)
                  srai         tp, t2, 27
                  lb           s0, -144(sp)
                  or           a3, s7, t1
                  slli         s0, sp, 19
                  srai         zero, t3, 21
                  sb           s8, 988(sp)
                  srli         s5, t1, 3
                  lui          t1, 439251
                  ori          tp, s11, 1502
                  lh           s10, 1421(sp)
                  addi         t4, a2, 1570
                  lb           s0, 760(sp)
                  lb           a0, 252(sp)
                  sub          tp, s6, s5
                  srl          tp, s3, t6
                  lb           t4, 387(sp)
                  auipc        a6, 279003
                  lui          t5, 936112
                  sra          a0, s2, t1
                  srli         tp, t2, 21
                  sub          s11, s3, s8
                  lb           a6, 1636(sp)
                  slt          s4, t3, tp
                  sub          t0, t0, s7
                  lhu          t5, 1713(sp)
                  lb           s4, -188(sp)
                  sb           a7, 998(sp)
                  auipc        gp, 879943
                  addi         s2, a7, 1253
                  xori         t4, s3, -347
                  addi         s8, ra, 429
                  sb           a4, 1545(sp)
                  slti         a1, a3, -60
                  srli         a4, tp, 21
                  lb           a6, 1484(sp)
                  sb           s4, 1604(sp)
                  sb           t1, 1223(sp)
                  nop
                  lb           s8, 36(sp)
                  lbu          s1, 887(sp)
                  lhu          a3, 1169(sp) #end riscv_load_store_rand_instr_stream_10
                  la           sp, region_1+596 #start riscv_load_store_rand_instr_stream_8
                  sb           a2, 14(sp)
                  lb           s8, 12(sp)
                  srli         a3, t1, 22
                  sh           gp, -2(sp)
                  srl          s10, s3, s11
                  sw           sp, 8(sp)
                  lbu          t4, 11(sp)
                  srl          a0, s6, s1
                  sb           tp, -5(sp)
                  sltu         s6, t1, s11
                  lbu          a1, -11(sp)
                  auipc        s3, 997872
                  xor          a0, tp, a2
                  sltu         t0, t2, a1
                  or           t3, gp, gp
                  srai         t1, s8, 19
                  and          ra, s6, ra
                  sb           ra, -13(sp)
                  lbu          s11, 5(sp)
                  lb           t6, -2(sp)
                  lbu          t6, 9(sp)
                  sb           s2, -15(sp)
                  lb           gp, -3(sp)
                  sub          t6, t6, a3
                  or           t5, a4, tp
                  slt          a4, a5, a3
                  sub          a4, t1, s6
                  lbu          s6, 1(sp)
                  sra          s8, t1, s6
                  slli         s1, sp, 5
                  lb           s3, 5(sp)
                  add          a1, t4, t5
                  lbu          t6, 13(sp)
                  addi         s10, t3, 75
                  andi         a1, t4, -669
                  sra          s11, a2, s7
                  slt          t4, t5, s11
                  addi         a1, t6, -1255
                  and          a1, tp, a2
                  lbu          a7, -15(sp)
                  sub          a3, s5, a2
                  lb           zero, 0(sp) #end riscv_load_store_rand_instr_stream_8
                  la           s3, region_1+991 #start riscv_load_store_rand_instr_stream_4
                  lhu          s9, 27(s3)
                  lb           zero, -5(s3)
                  sra          s10, zero, a7
                  lui          s0, 799017
                  lb           s2, 166(s3)
                  lh           t4, -219(s3)
                  sb           a3, -141(s3)
                  lb           t6, 76(s3)
                  lb           s0, 194(s3)
                  lb           a7, 63(s3)
                  lbu          t6, 256(s3)
                  lbu          a5, -74(s3)
                  lui          s6, 601872
                  lbu          s1, -100(s3)
                  slt          ra, s5, s3
                  lb           s6, -254(s3)
                  xor          a7, s5, a6
                  sb           a5, -248(s3)
                  auipc        s8, 679083
                  sub          a5, a4, a3
                  addi         a1, a1, -1722
                  sub          s5, t2, a5
                  sb           a4, 256(s3)
                  lhu          s2, 203(s3)
                  lbu          s1, 219(s3)
                  lbu          ra, 4(s3)
                  nop
                  lb           tp, 154(s3)
                  lbu          t5, -181(s3)
                  sw           tp, -103(s3)
                  lbu          t4, 136(s3)
                  lb           s8, 19(s3)
                  sb           a2, 58(s3)
                  lb           s9, 152(s3)
                  lb           ra, 251(s3)
                  lb           t0, 48(s3) #end riscv_load_store_rand_instr_stream_4
                  la           t3, region_1+375 #start riscv_load_store_rand_instr_stream_0
                  lb           s6, 905(t3)
                  slli         ra, a0, 18
                  lh           a0, 137(t3)
                  lhu          a7, 969(t3)
                  auipc        s4, 362949
                  lbu          s11, -296(t3)
                  addi         a0, s4, 676
                  sb           t5, -329(t3)
                  lbu          s1, 1000(t3)
                  lb           s10, 56(t3)
                  ori          a3, a0, -1594
                  lbu          s8, -211(t3)
                  lbu          s6, -128(t3)
                  lbu          s9, 1225(t3)
                  auipc        s6, 436310
                  lh           t4, 509(t3)
                  sb           a1, 1244(t3)
                  add          s1, a1, a5
                  lb           s1, 134(t3)
                  lb           t1, 900(t3)
                  lb           sp, 928(t3)
                  or           s11, t5, t3
                  sb           s2, 1108(t3)
                  sb           a5, 304(t3)
                  sub          t1, sp, s8
                  sb           a5, 1239(t3)
                  sh           s5, 679(t3)
                  lhu          a4, 447(t3)
                  sltiu        s4, t5, 1009
                  sh           a4, -333(t3)
                  lhu          gp, 337(t3)
                  sltiu        t0, t1, 764
                  lb           zero, 957(t3)
                  lui          s9, 892083
                  sub          a5, a5, s6
                  lui          tp, 290149
                  lh           a6, -15(t3)
                  sra          a0, s7, a0
                  srli         a7, a0, 17
                  lbu          t1, 904(t3)
                  auipc        gp, 162313
                  srai         s5, t3, 4
                  lhu          t5, 1007(t3)
                  lbu          a7, 178(t3)
                  sb           gp, 1268(t3) #end riscv_load_store_rand_instr_stream_0
                  la           a7, region_0+1807 #start riscv_load_store_rand_instr_stream_6
                  lbu          s2, 22(a7)
                  srl          t6, ra, t6
                  or           t6, t1, a1
                  srl          t5, t4, a2
                  sb           t5, -144(a7)
                  sb           s11, 188(a7)
                  lui          t3, 1042624
                  lb           s3, 13(a7)
                  or           s2, t1, s11
                  lh           t4, -69(a7)
                  slli         a6, t3, 4
                  lbu          t6, -202(a7)
                  lbu          s5, 107(a7)
                  or           sp, t6, a6
                  sra          t6, s0, zero
                  lh           s10, 155(a7)
                  sltu         s11, s11, t4
                  lbu          s9, -238(a7)
                  or           gp, t1, s9
                  or           s3, t6, s7
                  sltiu        s4, t1, -1767
                  lbu          sp, -141(a7)
                  auipc        t5, 596483
                  sb           s10, -144(a7)
                  nop
                  lbu          a3, 136(a7)
                  auipc        s1, 433319
                  sb           s6, 114(a7)
                  lb           a3, 11(a7)
                  slli         zero, t6, 21
                  lbu          s10, -51(a7)
                  nop
                  add          s11, zero, s6
                  lb           zero, -100(a7)
                  lb           a4, -230(a7)
                  and          ra, s10, gp
                  lb           t6, 120(a7)
                  lhu          t3, -249(a7) #end riscv_load_store_rand_instr_stream_6
                  srl          gp, t4, a4
                  srl          s10, s11, s9
                  bge          a3, t1, 15f
                  sra          t6, t3, s3
                  add          a0, a4, a1
                  bltu         a0, a3, 18f
                  slt          a7, t1, tp
                  auipc        a5, 716977
                  srai         a3, s6, 3
                  bge          a2, a1, 26f
                  bge          sp, tp, 24f
                  xori         gp, s9, -396
                  xori         a1, sp, -124
                  srl          t1, a1, t0
                  slt          sp, a3, sp
15:               add          s6, s7, s11
                  slli         a5, s8, 14
                  slli         ra, s8, 15
18:               beq          gp, a3, 38f
                  slti         a5, s2, -938
                  bltu         a5, s3, 37f
                  andi         zero, s4, 1094
                  nop
                  and          a3, s4, zero
24:               slt          a6, s1, a3
                  srl          zero, s4, s6
26:               bltu         t2, s0, 44f
                  bge          sp, tp, 37f
                  sltu         gp, t1, t1
                  sll          s1, s6, a6
                  addi         t0, t2, -1808
                  sra          t1, zero, gp
                  slt          tp, s11, s11
                  and          t1, s8, t5
                  beq          s9, a5, 54f
                  ori          s6, s11, -751
                  and          zero, a4, s6
37:               sltu         s0, t1, a2
38:               slli         a5, t1, 28
                  srai         a1, a4, 24
                  bge          sp, s9, 46f
                  sltiu        s8, s9, -1654
                  add          s10, s11, a1
                  srai         s5, t4, 6
44:               slli         s6, a1, 29
                  bltu         s9, s1, 58f
46:               sll          ra, sp, gp
                  beq          t1, a5, 56f
                  srai         a1, a6, 10
                  sub          t3, ra, s0
                  srai         t5, t2, 14
                  blt          zero, a7, 55f
                  auipc        sp, 697370
                  sll          a6, zero, a4
54:               xor          a6, s9, t6
55:               sltu         sp, a2, s11
56:               bgeu         t0, s5, 75f
                  nop
58:               ori          t4, a7, -1093
                  bne          t4, a5, 78f
                  blt          a4, s10, 69f
                  srai         s1, a2, 19
                  srl          s4, a6, t5
                  sll          a0, s0, s4
                  bgeu         a6, s6, 75f
                  andi         a0, s5, 1826
                  sll          s1, tp, tp
                  sltiu        a6, ra, -1948
                  sra          s6, s9, s2
69:               bltu         s0, t2, 82f
                  sltu         sp, t0, s0
                  xori         t1, sp, 378
                  lui          t5, 154741
                  sub          gp, a6, t6
                  beq          t4, t5, 93f
75:               ori          t5, s10, 259
                  xori         s3, s8, 1306
                  blt          t6, s1, 86f
78:               beq          ra, s1, 91f
                  nop
                  ori          zero, a5, 299
                  sub          a5, s6, a3
82:               sltiu        zero, t6, -1550
                  nop
                  nop
                  sll          t6, zero, s4
86:               srl          s1, sp, gp
                  slli         t1, ra, 30
                  bltu         t3, t3, 103f
                  xori         a3, t4, 1734
                  add          zero, a2, s5
91:               ori          s5, a0, -721
                  srl          sp, s10, zero
93:               sltu         a5, a4, s5
                  bne          s3, a2, 100f
                  add          s0, sp, s2
                  and          s0, a3, sp
                  auipc        zero, 676345
                  or           s0, s2, a5
                  auipc        t0, 282457
100:              sll          ra, a6, a4
                  ori          a5, s4, -53
                  addi         s2, t2, -1852
103:              bne          a6, s9, 110f
                  andi         a5, s10, 1254
                  blt          t6, a6, 110f
                  or           s10, t3, ra
                  blt          zero, s11, 112f
                  sub          t4, ra, a5
                  addi         s6, s7, 658
110:              sub          t6, s7, s9
                  andi         t0, s5, -445
112:              slti         a7, t0, -647
                  nop
                  bltu         ra, a3, 123f
                  nop
                  beq          s4, t6, 135f
                  srl          t6, ra, a0
                  add          a0, tp, t3
                  bne          s5, s6, 124f
                  sltiu        a1, s1, 1721
                  andi         t6, zero, 280
                  nop
123:              srl          s9, t3, a4
124:              beq          s4, s2, 133f
                  or           s6, a1, s9
                  and          s4, s9, t5
                  sltu         a3, sp, t4
                  bltu         t1, s4, 137f
                  sra          t5, a7, a6
                  and          t5, a2, tp
                  bltu         t0, s4, 136f
                  and          tp, a6, t2
133:              slli         t1, a7, 3
                  bge          t4, sp, 153f
135:              bgeu         gp, a1, 144f
136:              sub          s0, s3, t5
137:              or           s11, s6, t3
                  andi         s0, s0, -1139
                  addi         t3, a1, -876
                  or           a5, t3, t3
                  blt          a7, s1, 161f
                  nop
                  slli         ra, a6, 26
144:              bgeu         s9, s8, 164f
                  srai         s8, zero, 12
                  sltu         t6, t5, tp
                  srl          a4, a2, t3
                  srl          a3, a1, sp
                  srl          a1, t3, s10
                  lui          t3, 693516
                  andi         s0, s4, -235
                  nop
153:              and          s8, a6, ra
                  blt          a3, a7, 172f
                  beq          t5, tp, 160f
                  sra          t6, a0, ra
                  lui          s4, 408204
                  slti         t3, s2, -1714
                  ori          a7, t5, -1428
160:              or           s11, a6, tp
161:              slti         a7, a7, -770
                  bgeu         a7, zero, 168f
                  bge          tp, a3, 170f
164:              addi         t5, s1, 1777
                  addi         a5, s7, -1572
                  sra          t3, t6, tp
                  sll          s10, s8, t3
168:              andi         s1, gp, -1547
                  bge          s9, s4, 188f
170:              add          a7, a3, a2
                  srli         a3, a4, 1
172:              srai         s6, a2, 31
                  add          tp, s0, t1
                  srli         sp, s6, 19
                  bge          t3, a0, 180f
                  slti         sp, s1, -138
                  sltiu        ra, a1, 999
                  srl          s8, tp, s4
                  and          s3, a5, t3
180:              bgeu         s2, s7, 189f
                  sll          zero, t0, ra
                  blt          s7, s8, 199f
                  blt          a3, s4, 200f
                  addi         a4, a3, -824
                  srli         s8, s1, 21
                  sra          a7, t5, s2
                  blt          t1, t1, 201f
188:              lui          s9, 406544
189:              addi         s11, t5, 1019
                  nop
                  xor          s8, s10, t2
                  slti         s8, zero, -1407
                  sub          s10, s5, ra
                  nop
                  sll          s3, s11, a2
                  and          sp, s0, a6
                  or           sp, gp, t3
                  slti         s8, s5, -1659
199:              xor          t3, a3, t0
200:              sra          s4, tp, t3
201:              sll          t4, sp, zero
                  srl          gp, s1, gp
                  bgeu         a4, s3, 213f
                  slli         t3, a2, 14
                  bne          a0, a7, 218f
                  or           s10, t5, t5
                  slli         a4, tp, 9
                  add          s6, s8, gp
                  add          s3, a7, a4
                  slt          a5, tp, sp
                  blt          s8, s6, 230f
                  slt          zero, a7, gp
213:              nop
                  sltu         gp, s6, gp
                  srl          t4, s10, a1
                  sltu         s8, s0, s11
                  slt          s2, s10, s3
218:              xor          a5, sp, s6
                  sra          a0, t5, t4
                  slli         s9, a2, 6
                  sra          s9, a0, s3
                  beq          a3, s0, 235f
                  addi         t0, s6, -1005
                  add          s2, s4, ra
                  or           t6, t4, ra
                  or           ra, s2, t1
                  slti         s10, a1, -859
                  slti         a7, t1, -1768
                  bge          tp, a5, 242f
230:              srl          a3, sp, s0
                  nop
                  add          s2, t2, gp
                  beq          a4, s8, 242f
                  bne          s8, a4, 238f
235:              srli         sp, a0, 6
                  addi         t5, a6, -1303
                  srli         t6, a4, 21
238:              xori         a4, s11, 765
                  srl          ra, t1, tp
                  sltiu        t3, t4, 465
                  sra          s5, zero, s3
242:              bltu         a0, s8, 248f
                  sub          a1, a2, s11
                  bge          a2, s0, 257f
                  add          a1, s4, s10
                  srli         a0, t1, 28
                  addi         s10, a6, 742
248:              nop
                  and          t5, a0, t3
                  nop
                  blt          gp, a2, 270f
                  add          a1, s4, t2
                  sltiu        tp, s3, 1604
                  xori         a5, s4, 226
                  and          s2, gp, t3
                  srai         t5, s2, 9
257:              andi         t6, s11, 1524
                  sltiu        a4, a3, -844
                  andi         s9, s0, -1315
                  sll          s3, t1, t5
                  blt          s8, gp, 276f
                  slti         t5, s2, 1075
                  or           t5, sp, s4
                  bgeu         t2, s10, 277f
                  slli         s9, t3, 22
                  srai         t3, a6, 27
                  sll          s9, s5, t3
                  slt          t1, t2, s9
                  srl          s1, s0, s8
270:              srai         s8, s6, 13
                  xor          a1, ra, t2
                  and          t3, t2, t1
                  srl          t0, t6, zero
                  andi         t6, a1, 1380
                  beq          a4, t6, 286f
276:              lui          tp, 569625
277:              srli         s6, t4, 5
                  andi         s1, t3, -535
                  sll          a6, s3, t6
                  lui          a6, 520808
                  srli         t6, t2, 28
                  srai         sp, a7, 8
                  and          s1, s2, a0
                  slli         s8, t3, 31
                  or           s2, s9, s1
286:              xori         sp, tp, 1834
                  lui          s3, 168244
                  bne          t4, t0, 297f
                  lui          s2, 884399
                  bltu         t5, a3, 295f
                  sll          t3, s2, t5
                  xor          s5, t5, s6
                  bltu         t3, s1, 297f
                  srai         t6, s9, 4
295:              beq          s6, s3, 308f
                  and          tp, s4, s7
297:              srl          t5, a3, s11
                  or           t1, s8, s5
                  addi         s10, t6, 1758
                  sltiu        s11, s1, -1888
                  srai         s9, t3, 21
                  slti         t0, s11, -1663
                  sltiu        t3, s1, 1396
                  sll          a4, a6, a4
                  srl          s9, sp, s9
                  and          a4, s3, zero
                  blt          t3, s3, 320f
308:              andi         t1, a6, 1165
                  srai         s6, a3, 22
                  bltu         s9, a0, 329f
                  bge          a6, a0, 328f
                  slti         a4, s11, -1810
                  andi         s9, s10, 420
                  beq          a4, t6, 334f
                  sltu         s4, s8, s9
                  bge          s8, a4, 325f
                  add          s0, t0, s9
                  blt          a7, s5, 328f
                  sra          a5, s5, tp
320:              or           ra, s5, tp
                  lui          s4, 471506
                  addi         t4, s11, -442
                  add          s1, t6, s5
                  srli         t4, t6, 28
325:              xor          s10, t6, a2
                  and          gp, s6, s7
                  sub          s0, s10, a2
328:              srli         s0, a7, 9
329:              addi         s10, a1, 744
                  srli         s0, a6, 1
                  lui          t3, 513839
                  slli         a7, s11, 5
                  add          gp, a4, s8
334:              slt          a3, a7, t3
                  sltiu        s6, zero, 79
                  add          a0, t6, s10
                  xori         a3, ra, 532
                  slli         s1, tp, 6
                  bgeu         t6, t2, 356f
                  andi         s9, ra, -1873
                  xor          s1, s4, ra
                  srl          a1, a2, s7
                  andi         zero, s4, 318
                  add          s2, s11, zero
                  slt          s4, tp, t5
                  bltu         s2, a6, 352f
                  xori         gp, t1, 1373
                  xor          s0, t0, a5
                  srl          sp, t3, t5
                  and          s10, t4, s2
                  andi         s3, a5, -1466
352:              bne          s5, ra, 357f
                  bltu         s10, s2, 366f
                  slli         t4, tp, 4
                  srai         s10, t5, 17
356:              srai         s8, gp, 11
357:              xor          a4, t0, s8
                  auipc        a6, 876389
                  bne          a1, s11, 373f
                  sll          a3, zero, t1
                  srli         ra, a3, 22
                  sll          t5, s10, a7
                  add          t0, t2, s7
                  bge          gp, s3, 377f
                  sra          s11, t4, a7
366:              slli         t0, s2, 30
                  slti         s9, t1, -1225
                  sub          a4, a6, s10
                  and          zero, ra, s4
                  beq          gp, gp, 390f
                  bne          tp, t1, 376f
                  addi         a1, tp, -1647
373:              bltu         a2, sp, 392f
                  srl          s11, a3, s5
                  bge          a6, t5, 384f
376:              lui          a7, 593133
377:              bge          t6, s11, 383f
                  ori          t1, tp, 490
                  bgeu         a3, s3, 392f
                  and          s3, t0, s6
                  sll          t0, s4, tp
                  srl          t0, s8, a7
383:              andi         t5, s3, -1079
384:              sltu         s1, t3, t3
                  or           zero, a7, t4
                  and          a3, a4, t1
                  xor          s6, a0, a0
                  srli         s1, s11, 29
                  xor          t6, t0, gp
390:              bltu         t3, t6, 409f
                  la           sp, region_1+627 #start riscv_load_store_rand_instr_stream_1
                  lb           ra, -119(sp)
                  and          zero, zero, a5
                  sra          t1, t2, s8
                  xori         s4, s4, -976
                  lb           s10, -65(sp)
                  lb           ra, 125(sp)
                  srl          a0, s1, a4
                  lb           s10, 14(sp)
                  sub          t0, sp, s6
                  nop
                  srli         t1, a0, 18
                  sub          t3, s2, t6
                  and          t6, t5, s6
                  and          gp, s11, s4
                  lb           tp, -6(sp)
                  ori          t3, s11, 2028
                  ori          s11, s7, -57
                  lui          s10, 89769
                  lh           tp, 233(sp)
                  lbu          s5, 213(sp)
                  slt          gp, t1, t0
                  slti         t3, s1, 572
                  srli         s2, s4, 30
                  sb           sp, -222(sp)
                  andi         t6, s0, -247
                  add          a1, s6, t4
                  sltu         s2, s9, a3
                  slti         a7, tp, -1758
                  lb           t3, -187(sp)
                  andi         a6, s5, 1593
                  nop
                  lbu          t4, -160(sp)
                  lh           ra, 97(sp)
                  sb           ra, 148(sp)
                  auipc        s5, 324932
                  sb           zero, 84(sp)
                  sub          a1, s5, s10
                  sltiu        t1, ra, 299
                  sb           a4, 132(sp)
                  slt          gp, a2, s2
                  lbu          s3, 196(sp)
                  lui          t4, 811523
                  add          t0, s5, s2
                  slti         t1, s1, -840
                  sltu         s8, a1, s2
                  sw           s8, 17(sp) #end riscv_load_store_rand_instr_stream_1
                  beq          sp, a7, 409f
392:              srl          t4, s2, s1
                  lui          a4, 697491
                  or           s4, a2, t0
                  sub          a6, t0, s9
                  lui          s5, 250236
                  lui          zero, 745819
                  or           s10, a6, a2
                  slt          s3, a1, s10
                  srai         t3, s5, 0
                  nop
                  xor          gp, a2, a3
                  bltu         t6, sp, 412f
                  slli         gp, t5, 4
                  blt          a2, ra, 424f
                  bne          s6, sp, 417f
                  srli         sp, s0, 9
                  addi         a4, s8, -1597
409:              slti         zero, a7, 451
                  srl          s0, t1, a3
                  auipc        a4, 1007768
412:              sub          s5, a2, a1
                  nop
                  bltu         s5, t4, 429f
                  andi         s8, s10, 1591
                  srl          a5, a2, t4
417:              slt          ra, s11, a7
                  bge          zero, zero, 425f
                  blt          s9, a2, 428f
                  slt          s9, a5, s7
                  bltu         zero, tp, 430f
                  bltu         a0, a3, 435f
                  addi         gp, a3, -1676
424:              slli         a3, s1, 21
425:              and          s6, t4, sp
                  bgeu         zero, tp, 431f
                  lui          s3, 630467
428:              slli         s1, tp, 11
429:              sll          t6, ra, t0
430:              addi         t0, a3, 1411
431:              xor          t1, t1, t5
                  and          s1, a2, sp
                  slt          gp, s0, s1
                  sub          s6, s7, a3
435:              srai         gp, a4, 13
                  sra          a7, a2, zero
                  srai         t3, s8, 4
                  la           s9, sub_3
                  addi         s10, gp, -1619
                  sltiu        s10, s7, 583
                  andi         tp, t4, -1116
                  addi         s9, s9, -867
                  sra          s4, a3, zero
                  srli         a0, t1, 7
                  bne          t5, a0, main_j1 #branch to jump instr
                  auipc        s11, 366193
main_j1:          jalr         t1, s9, 868 #jump main -> sub_3
                  add          t4, s10, s4
                  add          a6, t6, t6
                  sub          s4, s11, t6
                  sltu         t4, s10, s0
                  sra          sp, a1, sp
                  beq          sp, s4, 455f
                  sll          t6, t0, a7
                  sltiu        a1, s6, -1645
                  or           s5, s8, t0
                  add          t4, zero, sp
                  bgeu         s1, a7, 454f
                  srli         sp, a3, 18
                  sra          t3, s3, zero
                  blt          a5, s8, 470f
                  add          a1, a4, a1
                  lui          t5, 4414
                  sub          a7, s9, s6
454:              auipc        t0, 285928
455:              slt          s0, tp, s9
                  or           s5, s9, gp
                  or           t5, s10, s3
                  sll          a7, t5, s8
                  srl          s1, a2, t3
                  ori          t3, t4, -1513
                  la           t1, sub_2
                  slti         t0, s8, 1733
                  addi         t1, t1, 845
                  srli         s10, t3, 12
                  add          t4, t4, s2
                  bltu         s6, t5, main_j2 #branch to jump instr
                  sub          zero, sp, t0
                  or           s10, t3, t2
                  srli         s4, t1, 17
                  sltiu        s8, a5, 22
main_j2:          jalr         t1, t1, -845 #jump main -> sub_2
                  andi         s1, tp, 1178
                  blt          s6, gp, 478f
                  xori         s9, t6, 2019
                  slt          t1, t0, s5
                  bgeu         a2, s3, 483f
                  sltu         s4, s10, s11
                  slli         a3, s0, 31
                  slti         a0, s6, 423
                  srli         a5, t5, 5
                  sub          a4, t1, s4
470:              sra          t0, sp, gp
                  andi         s2, s8, -240
                  ori          s0, zero, -1711
                  or           a7, t3, s1
                  addi         s9, a6, -1493
                  bltu         s4, s9, 488f
                  add          t6, s2, s3
                  sll          t4, s0, ra
478:              sll          a0, a4, s7
                  nop
                  addi         tp, a2, -843
                  bge          s9, s8, 486f
                  sltiu        a0, t4, -29
483:              sltu         s9, sp, a3
                  bgeu         t1, s4, 503f
                  xor          ra, s6, s1
486:              bgeu         s4, sp, 501f
                  bge          s11, a3, 505f
488:              bgeu         a4, tp, 497f
                  sra          s0, a4, a0
                  sra          ra, a5, t0
                  sra          s1, s11, s6
                  bltu         t2, t5, 502f
                  srli         a4, s5, 12
                  sltiu        t3, s0, -1727
                  slt          t1, s8, a7
                  sub          t1, s5, a7
497:              sll          ra, t6, a4
                  and          a6, a0, a0
                  xor          a7, a4, a3
                  addi         t4, t3, -299
501:              srli         s6, s4, 24
502:              beq          tp, s11, 519f
503:              beq          sp, t4, 512f
                  slt          zero, sp, a1
505:              beq          t2, a5, 525f
                  lui          s9, 46802
                  add          s11, a7, s2
                  and          s0, zero, s5
                  xori         t3, t2, 1970
                  sll          s1, s2, s7
                  sll          a7, s2, a7
512:              slti         a3, s0, 1730
                  bge          ra, s10, 532f
                  srai         tp, t5, 13
                  slti         t1, s9, -553
                  slli         t6, t3, 17
                  and          s8, s3, s2
                  bgeu         a1, a3, 537f
519:              bge          s2, a3, 528f
                  slli         s9, ra, 8
                  slt          a5, sp, ra
                  sltu         t6, s8, zero
                  slli         s4, t4, 21
                  bne          s6, a0, 537f
525:              addi         t6, t1, -1961
                  bge          s3, s10, 537f
                  bgeu         a0, a1, 540f
528:              xori         zero, s9, 205
                  and          s10, s11, a2
                  srai         s10, a0, 6
                  add          sp, s9, tp
532:              ori          t4, sp, -1723
                  blt          a0, t5, 547f
                  srai         t6, a3, 25
                  blt          sp, a3, 541f
                  bge          s6, a2, 540f
537:              bgeu         a6, t2, 542f
                  sra          s1, s4, s8
                  xori         tp, t6, -12
540:              andi         t3, s11, 888
541:              xor          tp, a6, ra
542:              bgeu         a4, a6, 548f
                  auipc        s1, 722493
                  or           s11, t6, ra
                  srl          ra, s10, t4
                  xori         s11, s2, 348
547:              sltiu        a1, a7, -1178
548:              bltu         a0, tp, 557f
                  sltu         s9, t0, a7
                  lui          s0, 265133
                  sll          s2, a3, a3
                  xor          s2, s10, t1
                  srai         a6, a4, 9
                  sub          t0, t1, s2
                  beq          s4, s10, 564f
                  ori          t1, s1, -1475
557:              sub          s2, s2, tp
                  blt          t5, a0, 567f
                  slli         s11, s3, 24
                  xor          tp, t0, t5
                  bne          t5, s9, 572f
                  bgeu         s5, s1, 581f
                  sra          a3, t4, t6
564:              srai         tp, a0, 0
                  blt          s4, a3, 585f
                  sra          s9, t6, a1
567:              auipc        s3, 100635
                  xori         s3, s1, 1234
                  beq          t4, a4, 576f
                  sub          t0, a1, a4
                  bgeu         s4, a1, 575f
572:              slli         s11, s11, 15
                  addi         t3, a7, -991
                  sltu         s5, s11, s5
575:              srai         s8, a2, 17
576:              slt          s0, sp, a3
                  sra          a0, s3, s11
                  sltu         a1, t6, a0
                  and          t6, t1, t4
                  sltu         sp, zero, s5
581:              ori          s6, t5, -1714
                  xor          tp, s9, t1
                  blt          s2, s3, 602f
                  bne          ra, s11, 597f
585:              srai         ra, s3, 26
                  lui          a7, 174448
                  bltu         t4, s8, 593f
                  bgeu         s10, t4, 601f
                  slli         s11, zero, 4
                  and          s9, t1, s11
                  beq          tp, a1, 601f
                  and          a4, t0, s7
593:              sra          s4, t1, s8
                  srl          s9, s9, a3
                  nop
                  srai         a3, s8, 31
597:              sra          t1, s5, ra
                  bgeu         s2, s0, 607f
                  and          t6, a1, s3
                  and          a1, a2, a2
601:              ori          a7, tp, 1753
602:              slti         s9, s8, 783
                  sltu         s11, s2, s8
                  sub          a4, t5, s10
                  andi         t3, s10, 1236
                  lui          s1, 764903
607:              srli         s9, t0, 4
                  auipc        gp, 88816
                  bltu         s8, t6, 614f
                  slti         s0, t5, -1922
                  and          a4, s2, t2
                  slli         s9, a5, 26
                  bgeu         a2, s7, 622f
614:              xori         s6, t2, -628
                  bne          s10, a3, 634f
                  sra          s5, s11, a5
                  sltu         s1, a2, zero
                  srai         s11, ra, 13
                  andi         zero, t2, 2042
                  xor          ra, t1, t1
                  srli         s9, a2, 1
622:              bge          tp, a6, 640f
                  bge          a0, s7, 640f
                  slti         t6, a7, -101
                  auipc        t0, 703884
                  slti         tp, gp, -901
                  bltu         a7, s2, 644f
                  slt          s3, a7, s7
                  bltu         sp, a1, 648f
                  ori          tp, ra, -1659
                  andi         gp, s10, 58
                  ori          s0, a5, 1603
                  and          s8, s7, a4
634:              xor          zero, sp, gp
                  xor          t4, s1, a7
                  bgeu         t1, gp, 650f
                  andi         a3, s3, 1664
                  bge          s10, s6, 658f
                  sub          t3, a7, s0
640:              srai         s1, s6, 3
                  slt          s5, s10, a4
                  auipc        a0, 135121
                  slti         s9, s9, 73
644:              srli         sp, a1, 18
                  nop
                  xori         s2, s5, 698
                  sll          t6, s6, s3
648:              andi         sp, a3, -1987
                  or           zero, s6, t3
650:              xori         t1, t5, 415
                  ori          s6, sp, -1864
                  srai         gp, a6, 27
                  sltu         a0, a7, sp
                  bne          a4, s1, 667f
                  bltu         s5, t0, 664f
                  nop
                  auipc        s6, 843076
658:              srai         ra, t4, 28
                  sub          t0, t6, t2
                  srli         t1, a7, 31
                  nop
                  addi         a3, t2, 1321
                  sll          t4, sp, s10
664:              sll          gp, t1, s4
                  and          s9, s0, t5
                  add          a3, s9, s0
667:              sra          a0, gp, s6
                  sll          a3, a0, zero
                  srli         t6, s1, 1
                  sub          a5, s0, t4
                  slt          s8, s10, zero
                  bne          t5, a6, 687f
                  beq          s10, t1, 686f
                  bne          a5, a3, 679f
                  bgeu         s9, t5, 688f
                  bge          t3, a4, 685f
                  bltu         s1, a3, 683f
                  bne          s10, s8, 683f
679:              sltiu        a7, a4, 74
                  auipc        s5, 870772
                  auipc        s0, 36199
                  and          s0, a5, t1
683:              blt          s4, s8, 689f
                  sltu         t6, ra, gp
685:              srai         t1, t6, 1
686:              lui          a5, 931605
687:              sltiu        gp, t4, 2024
688:              blt          s2, t0, 707f
689:              beq          s4, t2, 698f
                  beq          a7, t3, 699f
                  bne          t6, zero, 710f
                  xori         s8, s2, 1791
                  nop
                  bgeu         s9, a6, 699f
                  slti         s4, s0, -863
                  sltiu        zero, a6, -1014
                  or           s8, a1, sp
698:              slt          t5, gp, a2
699:              xor          s6, s0, t6
                  nop
                  sll          gp, s4, s9
                  add          ra, s6, s10
                  slt          s11, s5, s3
                  add          s4, t4, s1
                  sltiu        a3, s3, -629
                  xor          t1, a3, s3
707:              blt          t6, tp, 720f
                  xori         t3, t4, 1245
                  srli         t1, a5, 29
710:              bge          s0, s11, 721f
                  sll          t1, s5, s7
                  ori          s8, s9, -1859
                  xor          s2, s2, s3
                  sltiu        a0, tp, 124
                  nop
                  slt          s4, t2, a2
                  andi         s0, t0, 257
                  sra          s3, s0, s3
                  bge          tp, a6, 734f
720:              add          a0, s6, a2
721:              andi         t6, s5, -946
                  beq          a5, t6, 736f
                  sltiu        a1, t5, -461
                  slti         a3, t5, -347
                  sra          s9, a3, tp
                  srli         t3, s8, 16
                  sltiu        t5, a6, -335
                  bltu         t3, a5, 741f
                  xor          tp, a0, t6
                  lui          a7, 392384
                  blt          t3, a7, 737f
                  slli         a6, a4, 25
                  sll          ra, t4, s9
734:              slli         tp, t4, 18
                  srai         t3, a2, 2
736:              sub          tp, s10, s8
737:              and          s3, s3, t5
                  add          s9, a6, t0
                  srl          s11, a3, s1
                  xori         s5, ra, 72
741:              lui          s3, 506477
                  sltiu        s4, a4, 115
                  sra          t5, s6, t2
                  srl          a5, s4, s10
                  slt          t6, s0, s2
                  sub          a0, s9, a1
                  srl          s11, s9, s1
                  addi         a6, s11, -1984
                  slli         s3, ra, 7
                  ori          t1, gp, 1852
                  slt          t0, s4, a1
                  bne          t6, s2, 765f
                  sll          sp, s9, s1
                  bltu         s0, s8, 767f
                  or           t0, s5, t0
                  ori          t1, s1, 1474
                  sltu         zero, t2, gp
                  xor          t5, t2, tp
                  auipc        a5, 372500
                  srli         sp, a3, 26
                  xor          t1, t4, s1
                  blt          sp, t6, 769f
                  sra          a7, a6, s11
                  blt          s11, s6, 784f
765:              slti         a7, s9, -1790
                  ori          sp, t2, 879
767:              slli         a0, s8, 6
                  sub          t3, s10, s6
769:              srli         a0, ra, 5
                  sll          ra, a2, s1
                  sub          a5, s7, tp
                  bge          t5, t1, 782f
                  slti         s3, t3, -1413
                  blt          a1, ra, 791f
                  srai         s3, t3, 19
                  sltu         t4, s10, s0
                  slli         s11, s4, 22
                  bgeu         a0, sp, 797f
                  slli         a5, a5, 25
                  sll          s1, gp, a2
                  andi         tp, zero, -1453
782:              sll          a4, s6, t2
                  beq          a7, t5, 796f
784:              nop
                  sltu         s0, tp, s2
                  andi         s3, a4, 236
                  srl          a7, a0, t2
                  sltiu        t0, t4, -1919
                  andi         s11, t0, 1036
                  slli         t4, a7, 0
791:              addi         tp, zero, -997
                  auipc        t1, 440240
                  sub          s0, zero, s8
                  bltu         s2, s2, 799f
                  blt          a0, s9, 800f
796:              slt          a1, t2, s0
797:              bne          tp, zero, 806f
                  and          s9, a6, a0
799:              or           a0, sp, s4
800:              or           s1, a1, s8
                  xori         t3, a0, -701
                  sra          t0, a3, a7
                  sltiu        s3, s7, -1396
                  nop
                  xor          gp, t1, t4
806:              sltiu        t1, tp, -2034
                  xori         t5, zero, 2037
                  bge          a2, s5, 817f
                  and          a5, s1, a6
                  add          s0, s11, s9
                  slt          a6, a2, a2
                  auipc        s4, 994671
                  bge          a7, s6, 817f
                  slt          a5, s3, a6
                  bltu         s8, ra, 834f
                  srai         zero, s7, 25
817:              bltu         t5, s11, 834f
                  bgeu         t3, s11, 827f
                  sll          a1, a2, s2
                  nop
                  sll          a7, s1, a0
                  ori          zero, s6, -431
                  blt          s1, ra, 843f
                  sra          s9, s7, tp
                  beq          sp, a0, 843f
                  srai         t0, t1, 26
827:              nop
                  bgeu         a4, s1, 845f
                  slt          a1, s11, tp
                  bltu         s0, zero, 843f
                  sub          zero, a7, a1
                  srl          a5, t5, s0
                  sltu         s3, ra, s8
834:              bne          s9, ra, 853f
                  beq          t2, zero, 841f
                  bne          t1, a2, 853f
                  add          a0, a3, s1
                  xor          t3, s1, a1
                  sltu         s8, a4, t4
                  srl          t1, t1, t6
841:              bge          s7, s7, 859f
                  or           s9, s1, a1
843:              auipc        t4, 180037
                  and          s9, s1, a3
845:              sll          ra, s2, a2
                  srl          tp, s3, s9
                  srl          tp, zero, a5
                  auipc        gp, 471769
                  ori          s4, a0, 428
                  blt          a6, t1, 869f
                  sub          sp, a5, s11
                  bge          t6, s1, 865f
853:              add          s1, s4, gp
                  lui          sp, 607405
                  ori          tp, t1, 1716
                  bgeu         t6, a6, 869f
                  sub          a5, t4, s7
                  sltiu        a3, a3, 499
859:              srl          a4, s5, ra
                  bltu         ra, t2, 864f
                  nop
                  xor          s0, t6, a4
                  and          tp, t4, s4
                  la           gp, sub_1
                  auipc        s2, 347122
                  addi         gp, gp, -111
                  and          a6, s1, s5
                  bgeu         s7, t6, main_j4 #branch to jump instr
                  and          a5, a4, s5
                  or           a4, t0, s0
                  slt          t3, gp, ra
                  ori          ra, t2, 269
main_j4:          jalr         t1, gp, 111 #jump main -> sub_1
                  slt          s0, s9, s8
                  auipc        s0, 313039
                  srai         s10, a3, 27
864:              xori         t3, s0, 1403
865:              ori          ra, t3, 960
                  or           ra, a2, sp
                  nop
                  slti         t1, s9, -984
869:              or           s1, s3, s8
                  addi         ra, t3, -776
                  ori          s11, t6, -752
                  srai         s10, a4, 22
                  sra          t3, s1, tp
                  sub          s8, s11, s0
                  bltu         s3, s11, 888f
                  bgeu         s10, a5, 886f
                  sltu         s3, s5, s9
                  xori         t5, s9, 664
                  beq          s10, a7, 885f
                  srli         s10, t3, 24
                  or           a3, t3, a0
                  nop
                  slli         a1, t5, 22
                  or           ra, a0, a5
885:              addi         s1, t0, -221
886:              or           t0, s10, a5
                  slti         t6, a3, 1288
888:              nop
                  bne          a4, t6, 903f
                  sub          s0, zero, a5
                  bge          t6, zero, 896f
                  addi         s5, a1, -1759
                  xor          t0, s7, sp
                  beq          s0, t0, 914f
                  andi         s6, gp, 573
896:              srl          t1, t5, s5
                  andi         a7, t3, -960
                  sltiu        s4, a4, 156
                  srai         s1, s3, 22
                  lui          sp, 188511
                  blt          s0, s8, 910f
                  ori          tp, a7, 1749
903:              slti         a4, s7, -947
                  sub          a1, sp, s9
                  srl          s10, a5, s6
                  slt          a7, s5, s2
                  blt          a0, s1, 916f
                  sra          a6, a3, a2
                  srai         gp, s3, 6
910:              andi         a1, s1, -4
                  or           s8, s2, t6
                  nop
                  blt          a7, a0, 926f
914:              lui          a0, 118118
                  sub          s2, gp, t0
916:              srai         s6, a0, 19
                  slli         zero, s0, 3
                  add          a5, a2, s11
                  slli         s6, a6, 24
                  xor          a6, s11, ra
                  slli         s2, a6, 27
                  bge          a2, t6, 931f
                  lui          a4, 83022
                  and          a3, a4, sp
                  or           ra, s11, tp
926:              beq          s11, a0, 945f
                  srl          s9, tp, s8
                  slt          t0, a5, s10
                  bge          s7, a1, 934f
                  bne          a7, t0, 949f
931:              blt          t2, s8, 936f
                  add          t1, gp, a1
                  slli         s2, t0, 19
934:              sub          t6, gp, a0
                  bne          s5, a4, 955f
936:              or           a6, t2, t4
                  auipc        gp, 602553
                  bltu         s10, a2, 949f
                  sltiu        s0, s0, -1147
                  xori         t1, s2, 1361
                  sltiu        s11, s6, 465
                  sub          a3, s6, t0
                  bne          t0, s5, 950f
                  bgeu         a6, a6, 959f
945:              slti         a5, s0, 1109
                  slt          a5, t0, s0
                  xori         gp, s11, 1024
                  sra          t4, s2, s8
949:              addi         s10, s5, -1814
950:              sltiu        t4, ra, -746
                  andi         t1, a1, 1760
                  slti         a7, s9, -1027
                  lui          t0, 185544
                  srl          a6, a3, s0
955:              sub          gp, a4, s9
                  xor          ra, a2, t0
                  slli         s0, s10, 13
                  srai         s9, t0, 7
959:              and          a3, t6, zero
                  bne          s9, a4, 969f
                  add          s9, s1, ra
                  srli         t6, s8, 22
                  bgeu         s7, gp, 972f
                  xor          a5, ra, s2
                  slli         s5, s8, 29
                  add          t3, a1, a2
                  slt          t0, ra, t2
                  or           t5, gp, s0
969:              slt          zero, s6, s7
                  srai         t5, t6, 20
                  sltiu        a4, a3, 387
972:              ori          a4, a7, 557
                  slt          s5, s7, s6
                  bgeu         t1, zero, 979f
                  slli         a0, s2, 26
                  blt          a5, a1, 993f
                  slli         s5, zero, 30
                  sltiu        s0, s4, 951
979:              bgeu         a2, gp, 993f
                  bgeu         s9, s3, 1000f
                  xori         t6, s1, 1416
                  slli         s11, sp, 8
                  sltiu        s4, t1, -1314
                  auipc        t0, 253306
                  sltu         s4, a2, a1
                  slti         gp, t1, 899
                  sra          s0, a3, zero
                  addi         s8, t4, -1694
                  ori          t0, a2, 464
                  sra          t0, s11, s7
                  bltu         ra, s6, 1000f
                  lui          s2, 362975
993:              srli         t1, a3, 31
                  xori         tp, a6, 867
                  sra          a5, s10, a7
                  bne          s7, s4, 1002f
                  bge          s4, t2, 1016f
                  srai         t1, a3, 17
                  ori          s9, a6, -425
1000:             blt          s3, s4, 1018f
                  sub          zero, a5, s0
1002:             add          gp, a0, a5
                  sra          a1, s6, s5
                  srai         a1, t1, 27
                  blt          t3, s8, 1018f
                  lui          t4, 678769
                  bgeu         t3, t2, 1026f
                  sltiu        a1, t6, -878
                  addi         tp, s11, -751
                  slti         a7, t0, -1572
                  bge          s2, a6, 1022f
                  beq          s4, a3, 1025f
                  slti         s6, s11, -330
                  ori          t3, a2, 174
                  nop
1016:             blt          s7, s9, 1022f
                  bltu         a1, a2, 1030f
1018:             lui          s10, 159055
                  slti         t4, a4, -892
                  sltu         a0, t6, t4
                  sll          t3, gp, t3
1022:             bne          ra, a6, 1026f
                  xori         t6, sp, -1358
                  addi         zero, t3, 1439
1025:             slti         gp, t1, 1493
1026:             bge          s0, ra, 1035f
                  slt          t6, t0, t5
                  andi         a7, a4, -1052
                  xor          s10, t1, ra
1030:             addi         a1, s9, -626
                  add          s9, s4, t6
                  nop
                  slli         ra, t6, 7
                  beq          s7, a1, 1053f
1035:             bge          a1, zero, 1044f
                  nop
                  bltu         s2, t0, 1054f
                  slt          s8, s11, t3
                  slli         a1, s7, 16
                  lui          t0, 132209
                  bltu         s4, zero, 1046f
                  srai         tp, t0, 0
                  or           t4, a6, a5
1044:             add          a6, zero, s2
                  srl          zero, s5, tp
1046:             srai         s9, t2, 11
                  nop
                  addi         t5, a5, 1087
                  sltiu        a7, t5, -1028
                  srl          s5, a5, s10
                  sra          a7, a4, a5
                  sub          zero, t1, s7
1053:             sltu         a6, s3, s8
1054:             beq          tp, t6, 1059f
                  bne          sp, s11, 1068f
                  sltu         s6, a7, a5
                  srl          sp, s10, a7
                  slti         t0, a4, 1696
1059:             auipc        s8, 604217
                  addi         s11, s8, -1050
                  blt          a6, s8, 1074f
                  slt          s6, a6, t5
                  sll          s11, t0, s5
                  bgeu         a6, t3, 1084f
                  sltiu        t3, s2, -765
                  xori         s1, s6, 1175
                  xori         s11, t0, 430
1068:             andi         ra, s7, -1621
                  lui          s3, 594853
                  xori         s6, s1, 1766
                  slti         s5, s10, -189
                  andi         a7, zero, 2018
                  nop
1074:             xori         a1, a3, -33
                  ori          a5, s8, 1354
                  srl          s3, s4, t5
                  sub          t1, s5, a7
                  auipc        zero, 455584
                  sll          a0, t5, t0
                  beq          a1, a3, 1090f
                  and          a1, a3, s0
                  srli         s10, s5, 19
                  and          s1, s2, a5
1084:             ori          s0, sp, -716
                  auipc        s5, 870825
                  ori          s11, t1, -1107
                  srli         t6, t3, 9
                  sub          t6, a0, gp
                  slt          a3, s11, a4
1090:             sltiu        s5, s2, 1572
                  srli         s6, a2, 24
                  slli         zero, a5, 7
                  nop
                  addi         a5, s2, -737
                  add          s11, s4, ra
                  andi         t0, s3, 1782
                  slti         a6, s10, 363
                  beq          s5, s6, 1107f
                  sltu         t3, sp, t5
                  nop
                  sltiu        s5, s7, -573
                  slt          s9, s1, a0
                  lui          a7, 48098
                  srli         a0, s8, 11
                  sra          s6, s3, s10
                  add          sp, t0, zero
1107:             srl          s10, s4, t4
                  slt          s4, a7, s0
                  slli         t1, s11, 26
                  or           s5, s2, s6
                  auipc        ra, 10344
                  addi         s3, a6, -1906
                  bne          s1, s11, 1132f
                  or           gp, s0, t1
                  addi         s3, ra, -1948
                  auipc        sp, 357812
                  sra          sp, t3, tp
                  sll          s1, s6, ra
                  sltiu        s9, s11, 30
                  slti         a6, a1, -1914
                  blt          s4, a0, 1128f
                  auipc        t1, 639819
                  add          t4, t4, s1
                  slt          s5, s6, a2
                  sra          s5, s0, t0
                  srl          a3, tp, a3
                  sltiu        a4, s7, -1880
1128:             nop
                  sltu         s0, gp, t6
                  bne          zero, t3, 1139f
                  or           gp, s8, t5
1132:             slti         t5, a5, -614
                  sltu         a0, s0, s7
                  slti         s5, s5, -1750
                  srli         a7, tp, 28
                  sltiu        s5, s4, -2001
                  nop
                  slti         s10, gp, 1223
1139:             addi         t1, a5, 1708
                  auipc        s10, 300380
                  and          s8, ra, s9
                  slti         s2, a1, 527
                  sra          s0, t4, s0
                  xor          t6, s3, s1
                  add          t3, a1, s11
                  andi         gp, a5, -1503
                  slli         a1, s4, 17
                  bgeu         t5, s2, 1163f
                  srl          t4, t6, a4
                  lui          ra, 1038730
                  lui          t3, 357247
                  andi         s11, s5, -942
                  andi         t0, zero, -1521
                  sltu         a5, a3, s9
                  srli         tp, a2, 12
                  xori         t5, a2, 1562
                  add          a5, a7, t4
                  ori          a4, a7, -1431
                  andi         t6, t2, -1552
                  addi         s9, s3, 258
                  bge          t4, s0, 1179f
                  addi         s1, s11, 405
1163:             bltu         t5, a2, 1176f
                  sltu         a3, sp, a6
                  nop
                  bltu         s7, s0, 1171f
                  blt          s9, t6, 1173f
                  nop
                  slti         t3, s2, 1490
                  bge          t1, a6, 1187f
1171:             or           t6, s8, s11
                  slt          a6, t0, t5
1173:             srli         a1, t6, 22
                  bgeu         t0, t0, 1187f
                  xori         s0, a1, 1916
1176:             addi         gp, a7, 240
                  bgeu         s10, s1, 1190f
                  sltu         s1, s5, t0
1179:             bgeu         s2, tp, 1198f
                  ori          s10, t0, -1587
                  sra          s1, s5, tp
                  bge          s10, s6, 1191f
                  auipc        gp, 400628
                  bge          a5, a1, 1188f
                  ori          a1, a0, -1328
                  nop
1187:             lui          t3, 956571
1188:             bge          a0, a5, 1197f
                  blt          a1, s2, 1208f
1190:             lui          a7, 544924
1191:             bgeu         s8, a5, 1196f
                  andi         t4, a3, 1466
                  add          t4, t3, s5
                  bne          s11, s5, 1203f
                  and          s1, a7, ra
1196:             and          t1, s3, s5
1197:             bgeu         a2, t2, 1212f
1198:             sub          t5, a1, t0
                  auipc        gp, 177823
                  ori          s5, s1, -249
                  bge          s7, a2, 1218f
                  or           tp, tp, t4
1203:             ori          s0, zero, 1060
                  srli         s0, t3, 31
                  bge          ra, t5, 1225f
                  slt          s1, t4, a6
                  andi         a0, t6, 1457
1208:             sra          a0, s1, a7
                  bge          s5, a3, 1228f
                  auipc        a4, 473966
                  andi         zero, s4, 1511
1212:             sltiu        s3, s5, -472
                  sub          s11, t2, s10
                  or           s0, a3, a7
                  sll          a7, s10, t6
                  and          t1, s1, a2
                  nop
1218:             ori          s9, t6, 1874
                  add          a5, a5, t6
                  slti         a0, ra, 1999
                  bge          t6, s1, 1228f
                  sub          a5, s2, s8
                  srai         sp, s1, 19
                  slti         s1, t5, -616
1225:             nop
                  andi         t4, t5, -749
                  auipc        s1, 102390
1228:             nop
                  or           s3, s5, t5
                  bgeu         tp, t4, 1244f
                  bne          s10, s5, 1240f
                  sll          t3, ra, t5
                  bne          sp, a2, 1239f
                  ori          s11, t6, -1596
                  auipc        ra, 1001416
                  sltu         s10, t4, a5
                  slt          s9, a3, s11
                  slt          s8, a2, s4
1239:             bgeu         a3, s9, 1259f
1240:             bltu         a0, a2, 1251f
                  ori          t0, s8, 134
                  xori         a0, s2, 781
                  slli         zero, s2, 28
1244:             bne          gp, a2, 1253f
                  srli         s5, a6, 4
                  sll          t4, t0, s3
                  andi         s9, a1, 552
                  sub          gp, a6, gp
                  bge          s4, a6, 1262f
                  slt          a3, s10, a2
1251:             sra          s4, ra, a0
                  blt          ra, a6, 1271f
1253:             addi         a1, sp, -117
                  slli         a1, a7, 5
                  slt          gp, t5, a6
                  srli         zero, a3, 29
                  srl          ra, a3, s10
                  beq          t4, ra, 1268f
1259:             blt          a3, s7, 1272f
                  sltu         a6, t0, t1
                  ori          t1, t1, -1209
1262:             ori          s8, a3, 728
                  or           a4, t6, s11
                  bne          s0, s1, 1269f
                  blt          a4, ra, 1278f
                  bltu         ra, s7, 1270f
                  and          a6, t4, s9
1268:             xori         s0, a2, 2046
1269:             sub          sp, tp, s10
1270:             beq          s5, sp, 1285f
1271:             srai         t4, a3, 13
1272:             blt          s9, s2, 1281f
                  sltu         s8, s8, s3
                  nop
                  lui          t0, 578303
                  bne          t4, t5, 1281f
                  sub          a6, s0, s9
1278:             beq          s7, a6, 1291f
                  slt          s6, t3, t2
                  sltu         t6, sp, s7
1281:             auipc        ra, 616830
                  sub          ra, t3, t0
                  ori          s1, a2, 2018
                  or           s1, s4, a1
                  la           t3, region_0+1084 #start riscv_load_store_rand_instr_stream_3
                  sh           a4, 62(t3)
                  or           s0, s6, s1
                  lb           s3, 52(t3)
                  lb           s2, 27(t3)
                  srl          t6, sp, s7
                  lbu          a1, -29(t3)
                  sub          t4, s6, a7
                  ori          t6, t6, 1238
                  sb           sp, 5(t3)
                  lb           a1, -19(t3)
                  sra          a7, a7, s3
                  sb           t1, -39(t3)
                  lb           t6, -3(t3)
                  xori         s11, a6, 197
                  nop
                  sb           a7, -64(t3)
                  slti         a5, sp, 554
                  xor          t6, gp, s3
                  sb           s6, 15(t3)
                  sb           t1, -19(t3)
                  lbu          a5, -47(t3)
                  or           t6, a1, t4
                  nop
                  lb           s4, 58(t3)
                  srl          t5, tp, s2
                  lui          s2, 44090
                  slli         t4, s7, 20
                  sb           t2, -42(t3)
                  addi         t4, t3, 257
                  lb           s6, 0(t3)
                  xor          t6, t5, t5
                  auipc        a6, 627299
                  sltiu        s4, a4, 1288
                  lbu          a5, -38(t3)
                  srli         s1, s2, 7
                  sra          s8, a5, s1
                  lbu          s6, -21(t3)
                  lbu          a1, -47(t3)
                  lhu          t5, 30(t3) #end riscv_load_store_rand_instr_stream_3
1285:             blt          t6, t0, 1299f
                  sra          s6, a0, s9
                  slti         s2, a0, -324
                  sll          t0, a7, t6
                  bltu         a7, a5, 1302f
                  slt          t3, t2, s10
1291:             sll          t5, t1, s5
                  lui          t5, 104647
                  bgeu         t0, s9, 1304f
                  slli         s4, t4, 12
                  slli         t5, gp, 30
                  slti         a6, a7, 688
                  lui          s10, 1009297
                  sll          t1, a7, s4
1299:             lui          s4, 719600
                  or           zero, t4, t6
                  sra          sp, t4, t5
1302:             lui          s0, 984881
                  bge          ra, s9, 1316f
1304:             srli         a5, a1, 11
                  srai         a4, zero, 13
                  andi         s1, zero, 683
                  bne          t0, a6, 1324f
                  xori         s2, a1, -1406
                  srai         a5, s7, 16
                  slti         s8, s0, -588
                  or           t6, a3, a3
                  add          t3, t5, a3
                  sub          s10, gp, a0
                  srai         s8, sp, 19
                  xor          t6, tp, a6
1316:             slli         s0, t2, 19
                  blt          a5, s6, 1326f
                  sll          t3, s8, s6
                  nop
                  addi         sp, t1, 1543
                  srl          s5, s2, s7
                  and          s2, s5, t3
                  and          s0, a4, gp
1324:             or           a1, tp, t0
                  lui          a5, 235471
1326:             or           tp, s11, s1
                  andi         sp, s6, -362
                  slti         s10, a1, 350
                  blt          ra, s4, 1339f
                  slli         zero, s9, 3
                  blt          s7, s6, 1350f
                  xori         s2, s9, 1715
                  andi         t5, t4, -671
                  addi         t4, s10, 1914
                  bgeu         t3, tp, 1344f
                  bge          ra, s0, 1342f
                  bge          a4, s11, 1342f
                  srli         s11, s2, 10
1339:             slt          gp, gp, a6
                  slli         a1, a2, 6
                  bge          t0, t5, 1361f
1342:             lui          tp, 783960
                  bgeu         a3, t4, 1360f
1344:             srli         s6, s7, 5
                  srli         t4, s6, 16
                  and          a6, s5, s2
                  nop
                  ori          s8, a4, -1043
                  slt          gp, s10, a1
1350:             beq          t4, a7, 1363f
                  addi         s0, s7, 280
                  srl          s1, a2, gp
                  slt          a5, zero, t5
                  xori         t6, t2, 1575
                  sra          s8, s5, s5
                  addi         a6, a1, 1410
                  nop
                  add          s4, s8, a0
                  srl          t5, t1, s5
1360:             or           s0, t3, s8
1361:             lui          s6, 28356
                  add          s8, sp, sp
1363:             sra          a5, s7, s5
                  bltu         s10, s1, 1370f
                  slti         a5, a6, -1909
                  slti         s4, gp, -1701
                  bgeu         a3, a3, 1386f
                  andi         a1, a1, -1033
                  and          zero, s1, s4
1370:             and          a5, s1, s7
                  slt          gp, a4, zero
                  sra          a3, zero, t2
                  sltu         zero, s7, s4
                  xor          s8, a6, zero
                  slt          s9, s6, sp
                  sra          s11, a1, s10
                  srl          s0, s2, s2
                  srl          a6, s4, s0
                  srai         s1, t4, 10
                  sra          a5, s10, t6
                  srli         s10, s10, 15
                  nop
                  xori         s2, t4, 991
                  ori          a3, t4, -1885
                  ori          s5, a0, -887
1386:             sltu         t6, t5, s9
                  ori          s2, s4, -1306
                  sll          zero, a5, a0
                  la x7, test_done
                  jalr x0, x7, 0
test_done:        
                  li gp, 1
                  ecall
sub_6:            slli         a3, t3, 9
                  bltu         tp, s9, sub_6_stack_p
                  srl          s11, s10, zero
                  nop
                  slti         s10, s3, -715
sub_6_stack_p:    addi         s7, s7, -44
                  xori         a4, s3, -547
                  srl          a0, a4, a1
                  sw           t1, 4(s7)
                  slti         t4, s1, -147
                  sub          s5, s6, s3
                  andi         tp, a1, 448
                  srli         s5, s11, 22
                  slti         s5, a1, 338
                  beq          s11, a0, sub_6_j13 #branch to jump instr
                  srl          t0, s11, zero
                  srli         s11, a5, 5
                  srl          sp, s9, a3
                  slti         t4, a3, 1076
                  add          a3, s6, t2
sub_6_j13:        jal          t1, sub_9 #jump sub_6 -> sub_9
                  bge          t0, a7, 20f
                  srai         a7, t3, 13
                  bne          tp, s2, 13f
                  slt          a4, s9, s0
                  blt          a6, s5, 20f
                  slli         t6, ra, 20
                  sub          s2, s5, tp
                  bne          tp, a1, 20f
                  blt          a5, sp, 18f
                  sub          t6, a3, s0
                  sra          a1, a1, s0
                  nop
                  sra          sp, s10, ra
13:               bltu         t5, s5, 17f
                  bne          s9, s10, 15f
15:               xor          t0, s0, s11
                  and          t4, t6, ra
17:               sll          a6, s2, s3
18:               bne          t4, s0, 22f
                  srli         s2, a4, 11
20:               sll          tp, a6, gp
                  xori         s0, t1, 29
22:               srai         s0, s10, 5
                  beq          s6, a5, 43f
                  auipc        s8, 718643
                  slt          t0, t1, s8
                  andi         s4, a1, 1026
                  and          t0, a5, a0
                  sltu         s9, a5, ra
                  sltiu        sp, tp, -902
                  ori          s2, t0, 963
                  bge          s8, s4, 39f
                  slti         gp, a3, -816
                  bltu         ra, t6, 45f
                  nop
                  add          s2, s0, tp
                  sltiu        tp, s9, 1323
                  bne          a3, s2, 40f
                  or           a1, a7, gp
39:               sub          t6, s0, a7
40:               lui          s2, 965701
                  slli         t3, ra, 30
                  srl          t3, t6, t2
43:               srai         t4, t4, 13
                  bltu         a1, s0, 54f
45:               slt          t4, a0, t1
                  nop
                  or           t6, gp, ra
                  bge          s4, sp, 54f
                  auipc        t5, 193057
                  srli         s6, t5, 9
                  add          s11, tp, s2
                  srai         t0, s2, 26
                  lui          a0, 179005
54:               ori          s11, tp, 1142
                  xori         s3, tp, -112
                  bge          s7, a3, 64f
                  lui          s6, 471243
                  andi         a1, s0, 156
                  slli         s1, s3, 12
                  and          zero, a0, s0
                  slt          s11, a5, s10
                  slti         a7, s10, 885
                  xori         a3, tp, -270
64:               auipc        s0, 587077
                  auipc        a4, 112286
                  beq          a7, zero, 73f
                  beq          t3, s5, 73f
                  or           s8, s7, s6
                  auipc        s4, 507588
                  srl          s6, t5, s5
                  ori          s0, t5, 1801
                  sra          s1, a5, s2
73:               xori         a0, t1, 661
                  xor          zero, a5, t3
                  xori         zero, t3, 1576
                  lw           t1, 4(s7)
                  srli         a0, gp, 25
                  sra          s8, ra, s1
                  addi         s7, s7, 44
                  slti         ra, s2, 1996
102:              addi x22, x6, 0
102:              jalr x22, x22, 0
sub_5:            andi         s3, a1, 857
                  auipc        s10, 1041830
                  bltu         a6, a4, sub_5_stack_p
                  slt          s6, sp, s5
                  lui          ra, 741558
                  srl          s4, s3, a7
sub_5_stack_p:    addi         s7, s7, -52
                  xor          zero, s10, t5
                  ori          gp, sp, -1204
                  sw           t1, 4(s7)
                  sub          t3, t5, s10
                  sltiu        s9, t2, -122
                  xor          s8, zero, t4
                  nop
                  sltiu        t4, ra, -1618
                  or           s6, s1, s0
                  sltu         s11, s11, s4
                  slti         t4, s5, -1505
sub_5_j9:         jal          t1, sub_7 #jump sub_5 -> sub_7
                  nop
                  sltu         s11, s2, t5
                  bgeu         t4, s3, sub_5_j10 #branch to jump instr
                  slti         s1, a7, 1045
                  srai         a7, t6, 5
                  xori         s11, s3, 1120
sub_5_j10:        jal          t1, sub_7 #jump sub_5 -> sub_7
                  slli         a5, s11, 2
                  srl          t1, s11, s3
                  slt          t5, a3, s2
                  slti         t6, sp, -113
                  slli         s4, a6, 6
sub_5_j11:        jal          t1, sub_6 #jump sub_5 -> sub_6
                  sltiu        s3, s2, -1431
                  lui          s8, 303029
                  srai         t3, s11, 18
                  andi         t3, s3, -1399
                  sub          a5, s8, t6
                  la           s6, sub_8
                  andi         ra, t4, -22
                  slti         s0, a7, -965
                  addi         s6, s6, 970
                  addi         s10, s4, -955
sub_5_j12:        jalr         t1, s6, -969 #jump sub_5 -> sub_8
                  sra          t0, s8, t0
                  andi         t1, s10, -102
                  srl          s9, s8, t4
                  srl          ra, a2, s8
                  ori          a7, sp, 749
                  ori          s9, t5, -1627
                  sll          t4, t5, s7
                  sub          sp, a7, a0
                  andi         t3, s4, 460
                  sltu         a6, zero, s6
                  add          s6, a2, t4
                  srai         tp, s10, 25
                  lw           t1, 4(s7)
                  lui          ra, 882547
                  srai         s1, sp, 19
                  and          s4, t1, s3
                  addi         s7, s7, 52
                  addi         t6, a3, -1489
61:               addi x17, x6, 0
61:               jalr x17, x17, 0
sub_8:            lui          ra, 409659
                  sltiu        a1, t1, -24
                  sll          s0, s9, s4
                  slt          sp, gp, zero
                  xor          a7, tp, s9
                  beq          t2, a3, sub_8_stack_p
                  sltu         s4, s4, t4
sub_8_stack_p:    addi         s7, s7, -64
                  sw           t1, 4(s7)
                  sll          a0, a6, s11
                  la           s4, region_0+702 #start riscv_load_store_rand_instr_stream_2
                  sb           s6, -12(s4)
                  xori         s6, a5, 478
                  srli         s10, a7, 17
                  lh           s8, 8(s4)
                  lb           s5, 13(s4)
                  srli         s1, s11, 20
                  sb           t6, 9(s4)
                  slli         s8, zero, 7
                  slli         s11, s7, 7
                  ori          s10, s1, -133
                  sub          s11, t3, s4
                  lhu          s8, -4(s4)
                  lui          t5, 581724
                  add          t0, a2, t4
                  sb           s7, -9(s4)
                  lh           t0, 2(s4)
                  lb           ra, -15(s4)
                  lh           a5, 2(s4)
                  sll          a0, s4, s0
                  lb           t1, -16(s4)
                  lhu          a7, -16(s4)
                  lbu          s3, 15(s4)
                  lh           a5, -10(s4)
                  sb           s7, -15(s4)
                  ori          zero, s7, 1306
                  lbu          s10, -11(s4)
                  lb           s0, -3(s4) #end riscv_load_store_rand_instr_stream_2
                  la           t5, region_0+19 #start riscv_load_store_rand_instr_stream_0
                  sb           a7, 1821(t5)
                  lb           s2, 1012(t5)
                  sb           ra, 856(t5)
                  sltiu        t0, s6, 1502
                  and          s9, s1, s6
                  srl          s3, t0, s8
                  andi         t1, t2, 1523
                  sra          t3, zero, t3
                  and          zero, t3, t3
                  sw           tp, 1(t5)
                  sb           sp, -9(t5)
                  xori         t3, a2, -1318
                  or           a5, a2, sp
                  sb           s8, 1808(t5)
                  lb           a3, 1843(t5)
                  lbu          a1, 949(t5)
                  slti         a3, s9, -619
                  xori         zero, t4, -1866
                  and          t4, t5, s5
                  sw           a2, 565(t5)
                  sub          s0, s7, s5
                  sltiu        s2, s8, -267
                  lbu          s6, 1787(t5)
                  sltiu        a5, t4, 1829
                  srai         t3, s4, 22
                  lbu          t4, 1550(t5)
                  lb           sp, 1372(t5)
                  lbu          t0, 1289(t5) #end riscv_load_store_rand_instr_stream_0
                  and          t1, t4, s9
                  slli         t3, s8, 18
                  auipc        s0, 1038243
                  srl          a0, s10, a2
                  xor          sp, a5, t6
                  sltu         a5, a0, s8
                  sltu         s1, t6, s8
                  xori         a5, a7, 427
                  nop
                  xor          sp, s0, a5
                  sltu         t5, s6, t2
                  lui          zero, 412003
                  bge          t1, a1, 17f
                  srl          a4, s3, s2
                  and          s6, s11, a4
                  auipc        gp, 462713
                  bltu         s10, s2, 26f
17:               addi         sp, t5, 243
                  bgeu         s8, t3, 24f
                  sub          a7, s10, s0
                  bne          zero, a7, 35f
                  beq          s10, ra, 27f
                  slt          t3, a6, s3
                  bge          s10, a0, 37f
24:               sra          a7, s4, t1
                  slti         s3, a3, -445
26:               bgeu         a1, s4, 44f
27:               add          tp, a7, s0
                  bgeu         sp, a1, 31f
                  slt          a4, sp, s6
                  auipc        t6, 882156
31:               sll          a4, s9, a6
                  nop
                  or           s4, s2, t2
                  auipc        a7, 361281
35:               or           t0, s9, s0
                  addi         a0, s0, 892
37:               bgeu         a1, t1, 39f
                  bge          t0, t4, 56f
39:               ori          zero, t4, -852
                  ori          s4, t4, 192
                  beq          s6, a1, 58f
                  bne          s9, ra, 50f
                  srai         s4, s10, 19
44:               lui          a0, 514652
                  srl          a6, s8, s7
                  srl          a3, a7, s2
                  slti         s10, s4, -140
                  bgeu         s8, a0, 68f
                  slli         t6, s1, 27
50:               add          s2, t5, t0
                  sra          a7, ra, t6
                  auipc        s5, 71433
                  sub          a3, t5, s0
                  xor          t1, a7, t2
                  andi         s8, t6, -104
56:               srli         s4, sp, 7
                  srl          a1, a2, a2
58:               addi         a1, t4, 1046
                  or           a7, zero, s4
                  sltu         s1, s8, ra
                  slt          ra, s9, s5
                  sltu         s11, t5, a0
                  addi         ra, a3, -1887
                  lui          t3, 175073
                  xor          a3, ra, zero
                  srli         t6, s4, 20
                  addi         sp, tp, 1971
68:               slli         s1, gp, 18
                  bne          t5, sp, 76f
                  srli         t4, sp, 1
                  lui          s2, 56071
                  slt          t1, s0, t0
                  xor          t6, s10, sp
                  bltu         s4, a4, 84f
                  xori         zero, t4, -824
76:               xori         s11, a3, -71
                  andi         a3, sp, -795
                  sll          s11, gp, s1
                  srai         gp, tp, 18
                  sra          ra, a6, s5
                  lui          s10, 713045
                  nop
                  lui          s10, 570725
84:               bge          a3, s1, 104f
                  blt          t2, tp, 102f
                  bgeu         a0, a2, 102f
                  la           a3, region_0+534 #start riscv_load_store_rand_instr_stream_1
                  ori          t0, s6, 263
                  lb           s3, 171(a3)
                  auipc        s6, 817155
                  sb           t5, 661(a3)
                  sb           a0, 1083(a3)
                  sw           s11, 198(a3)
                  srai         t5, a5, 20
                  or           a4, s3, a3
                  lbu          a1, 1223(a3)
                  sb           a6, 1363(a3)
                  sub          s5, s3, sp
                  lb           a4, 1455(a3)
                  xori         a0, s8, 1570
                  lbu          s3, -192(a3)
                  srl          s1, s5, s10
                  lbu          a7, 795(a3)
                  xori         a6, s10, -106
                  slti         gp, a3, 255
                  ori          s6, sp, 920
                  sltu         s1, s0, t2
                  lbu          a5, 571(a3) #end riscv_load_store_rand_instr_stream_1
                  sll          s2, t5, t3
                  and          s10, t1, s2
                  sltu         s1, s3, t1
                  beq          t2, s8, 100f
                  auipc        t0, 834087
                  and          gp, t4, sp
                  slt          t1, s1, tp
                  bltu         a5, tp, 98f
                  lui          s3, 297972
                  addi         t4, gp, -634
                  sra          s10, gp, s7
98:               lui          a4, 736692
                  srli         s5, t4, 29
100:              sub          a0, s0, a5
                  srai         t6, t2, 22
102:              sll          ra, a3, a7
                  or           zero, s8, a0
104:              bge          s9, tp, 117f
                  slt          t0, s2, t6
                  addi         t5, s4, -555
                  sra          a5, s1, a4
                  andi         s0, a7, 921
                  ori          s9, a2, -1231
                  srl          tp, t0, s11
                  sra          t6, a7, t4
                  sltu         s2, s0, s6
                  sltiu        s9, tp, -734
                  xor          s6, a4, s11
                  blt          s9, a3, 126f
                  bgeu         sp, zero, 128f
117:              slt          t4, s10, s6
                  beq          s9, t0, 128f
                  and          s9, a5, a1
                  lui          zero, 961873
                  ori          zero, t3, 1005
                  auipc        t0, 738679
                  nop
                  auipc        s1, 169159
                  xori         s2, s4, 1947
126:              auipc        a7, 993248
                  srl          t4, s2, s7
128:              ori          s4, s10, 1912
                  xor          a6, s3, a4
                  addi         a6, sp, 1955
                  and          a1, t3, t2
                  slt          tp, s1, s10
                  bgeu         t5, s1, 141f
                  srai         t6, s7, 1
                  sltu         s9, s11, a7
                  and          s1, a6, s0
                  la           a1, sub_10
                  andi         sp, a4, -1725
                  addi         a1, a1, -466
                  slt          t1, s0, a7
                  sub          s5, s5, t6
                  nop
                  slt          a0, t4, t3
                  xor          s8, ra, ra
                  add          t6, zero, t0
sub_8_j14:        jalr         t1, a1, 467 #jump sub_8 -> sub_10
                  addi         t5, a3, -614
                  bgeu         zero, s4, 146f
                  sub          t5, a4, t5
                  sll          s2, a1, s6
141:              slt          s10, s6, s4
                  bgeu         s11, a3, 161f
                  lui          t6, 825745
                  sltu         t3, s1, a1
                  bltu         t0, s2, 164f
146:              and          s4, s9, a1
                  srli         a1, s7, 0
                  bne          s9, s8, 150f
                  xori         t4, t0, -991
150:              addi         ra, t0, 916
                  ori          a6, s4, -1580
                  auipc        s2, 714086
                  xor          s9, s7, s11
                  sub          sp, s1, zero
                  auipc        s8, 245899
                  ori          a4, s2, 616
                  srl          t5, s1, a7
                  bne          s6, s7, 162f
                  sub          t0, ra, t5
                  ori          s3, a0, 149
161:              srai         a6, a6, 16
162:              slti         t3, t6, 1544
                  addi         ra, s4, -321
164:              auipc        s3, 556440
                  nop
                  sltiu        tp, s1, -386
                  bgeu         a6, t5, 177f
                  bne          t3, zero, 185f
                  sltu         s9, zero, a1
                  or           sp, s3, t5
                  bgeu         tp, s10, 179f
                  xori         s0, s7, -891
                  srli         s3, a3, 14
                  bne          tp, t6, 184f
                  and          sp, t4, a1
                  ori          a6, s1, 1734
177:              auipc        t5, 745190
                  nop
179:              srli         gp, s9, 14
                  beq          t2, t1, 184f
                  bgeu         t6, s0, 197f
                  blt          zero, s8, 200f
                  xor          t4, t6, t5
184:              nop
185:              slt          gp, s11, a2
                  slli         s6, t3, 0
                  bgeu         s2, s8, 207f
                  nop
                  xor          zero, zero, t1
                  sub          a1, sp, s2
                  bgeu         s1, a1, 198f
                  xor          s4, ra, s11
                  sltiu        s4, a1, 369
                  bgeu         s2, s9, 199f
                  and          a6, s5, s0
                  sll          s1, a4, s11
197:              sll          a4, sp, a4
198:              srli         a4, tp, 20
199:              andi         s3, s4, 595
200:              beq          t5, t4, 218f
                  sltu         a7, t6, s3
                  slti         s1, t5, 556
                  srl          s2, s9, t1
                  add          t4, s8, s10
                  bne          s6, a1, 211f
                  bltu         a3, t5, 220f
207:              andi         s1, t6, 1009
                  sltu         a0, t5, t4
                  bne          s4, s6, 220f
                  blt          a5, s11, 229f
211:              auipc        t3, 687539
                  or           tp, tp, s11
                  sll          a4, s9, s8
                  sll          s4, s1, t2
                  srli         tp, a1, 26
                  slli         a6, s6, 4
                  srai         s10, a7, 3
218:              srai         a4, a6, 5
                  srl          a0, a5, s10
220:              xori         s11, a7, -372
                  slti         a1, a5, -1072
                  or           zero, t3, s3
                  blt          t1, a7, 229f
                  nop
                  blt          s9, t1, 240f
                  add          t0, a4, s0
                  sll          zero, tp, t2
                  srli         s2, s9, 0
229:              sltiu        t6, s11, 575
                  auipc        a6, 10099
                  add          t3, a5, gp
                  bge          s3, a5, 234f
                  addi         s10, s2, 256
234:              add          a6, t6, t5
                  ori          a5, t3, -1076
                  andi         a4, t6, -152
                  sub          t0, s4, a1
                  srai         t4, a1, 18
                  srli         t6, a0, 26
240:              sltiu        a7, s6, -2
                  addi         s1, a0, 234
                  bgeu         s8, s5, 252f
                  sub          s1, a3, t3
                  bltu         s1, s2, 246f
                  bgeu         s6, a1, 257f
246:              beq          t3, s6, 259f
                  add          ra, t4, sp
                  bgeu         a6, gp, 252f
                  sltiu        a4, gp, -856
                  lui          a0, 180096
                  add          t0, s10, t6
252:              bltu         s1, t2, 260f
                  sll          gp, a4, a4
                  andi         a5, t0, -418
                  bne          s3, ra, 274f
                  sub          s10, t2, a1
257:              srl          s2, s9, s0
                  blt          s0, a7, 261f
259:              srai         zero, a0, 18
260:              bne          s8, t6, 270f
261:              bne          s7, t4, 278f
                  bge          a3, sp, 270f
                  slt          a6, a4, t0
                  srai         a0, t5, 18
                  xor          a1, ra, a7
                  ori          a6, t0, 1902
                  and          t1, a7, a2
                  sltu         s3, s3, s3
                  xor          tp, s9, sp
270:              bne          s5, s3, 290f
                  nop
                  add          t4, s2, a0
                  blt          t1, a0, 280f
274:              or           t6, a4, s5
                  sub          sp, a3, s9
                  bltu         tp, s1, 284f
                  lui          gp, 890738
278:              sll          a7, s8, sp
                  lui          t4, 786914
280:              beq          s4, tp, 297f
                  bne          a7, ra, 296f
                  ori          s10, ra, -579
                  bne          zero, s0, 300f
284:              sll          s8, a6, s8
                  lui          a6, 974353
                  srl          s4, sp, s0
                  nop
                  bgeu         a4, tp, 292f
                  nop
290:              srli         t6, s10, 14
                  xor          t3, s5, a2
292:              bne          a4, s1, 311f
                  xori         a1, a6, 907
                  srai         a3, s0, 14
                  andi         s6, t6, -802
296:              bne          s5, s10, 306f
297:              slli         t1, t4, 10
                  sra          a1, s9, s1
                  bne          t1, zero, 313f
300:              ori          s9, zero, 253
                  srli         a7, s4, 28
                  srai         gp, tp, 23
                  xor          a4, s2, a1
                  sll          t4, a6, a5
                  lui          t0, 1008007
306:              sra          a5, s9, s11
                  sltu         s4, a5, t3
                  srli         tp, s5, 8
                  bge          t2, a7, 319f
                  sll          s4, a5, t3
311:              beq          t2, ra, 313f
                  ori          tp, tp, -9
313:              xor          s9, s8, t3
                  andi         s4, s9, -1316
                  sll          t3, a0, s8
                  beq          s11, a0, 336f
                  srli         t3, s6, 31
                  bne          a3, s7, 336f
319:              and          t0, t1, s0
                  xori         a3, a6, 894
                  bge          t0, s10, 341f
                  auipc        s6, 243992
                  andi         s6, s8, -122
                  slt          s0, t4, t4
                  lui          s6, 195753
                  srl          s5, s2, a4
                  auipc        t1, 750605
                  srai         a6, a3, 6
                  blt          s1, zero, 333f
                  auipc        s5, 98678
                  sll          t5, a1, tp
                  srai         s0, s0, 31
333:              srl          s4, t5, s3
                  ori          ra, s5, 599
                  and          t4, t2, a1
336:              srl          t6, s10, s0
                  nop
                  sll          zero, t2, a3
                  or           t5, s2, a3
                  beq          t0, s6, 350f
341:              sra          s6, s3, s10
                  slli         a3, t1, 22
                  slti         t5, s10, -173
                  sltu         sp, s10, s3
                  lui          a3, 586556
                  and          zero, a1, t2
                  bne          t3, s1, 358f
                  blt          a5, a0, 354f
                  and          gp, a1, a3
350:              bne          tp, s4, 360f
                  sll          zero, s0, s9
                  sltu         t5, s9, t2
                  sll          tp, t3, s2
354:              bltu         s0, t2, 362f
                  slti         a0, gp, 1238
                  bgeu         t6, s11, 361f
                  bge          a5, tp, 363f
358:              xor          a5, s10, s9
                  slti         t5, ra, 1344
360:              slt          a5, a4, a6
361:              nop
362:              slti         s8, t3, 994
363:              sll          t6, s6, t4
                  slti         t0, zero, 368
                  srl          sp, s7, a7
                  bltu         s0, t6, 374f
                  bne          s3, t2, 370f
                  bne          s7, a2, 370f
                  or           a3, t5, sp
370:              bge          s0, gp, 383f
                  bgeu         s6, a2, 390f
                  xori         ra, t6, 449
                  sltu         a3, a5, s2
374:              xori         a4, a4, 772
                  srl          a0, s5, s5
                  ori          t5, t5, 1462
                  slti         t6, a3, -739
                  srai         gp, s5, 21
                  lui          a6, 705708
                  addi         s5, t0, -1095
                  srli         a4, t2, 13
                  sltu         a0, sp, t1
383:              bge          a5, t0, 401f
                  and          a4, t6, a2
                  srai         s9, a2, 0
                  bne          s8, t5, 402f
                  blt          zero, a0, 399f
                  ori          t1, gp, 609
                  xori         a6, t2, 679
390:              srli         t0, t4, 16
                  sra          ra, t6, t4
                  srai         s6, gp, 18
                  add          s8, t3, t2
                  xor          a5, a7, ra
                  blt          s2, t0, 399f
                  bge          s1, a3, 406f
                  bltu         a2, s11, 399f
                  slt          s5, t3, s4
399:              xor          s9, s2, sp
                  bltu         s1, gp, 402f
401:              and          t3, s6, s3
402:              blt          s11, s0, 411f
                  or           t5, t3, s4
                  bge          s11, s4, 411f
                  sra          sp, t6, zero
406:              add          tp, t5, t1
                  beq          a0, a5, 411f
                  srli         a6, ra, 25
                  srl          s3, s2, s5
                  sra          s4, s8, a7
411:              slti         s2, ra, -660
                  lw           t1, 4(s7)
                  nop
                  andi         s1, a3, -907
                  nop
                  addi         s7, s7, 64
                  sltu         t0, s5, a1
517:              addi x18, x6, 0
517:              jalr x18, x18, 0
sub_9:            lui          s8, 812029
                  addi         s7, s7, -20
                  sw           t1, 4(s7)
                  srli         a6, s6, 29
                  or           s9, t5, s8
                  la           s3, region_1+814 #start riscv_load_store_rand_instr_stream_9
                  xori         s11, a3, -220
                  sb           s9, -5(s3)
                  srl          a1, t5, a5
                  lh           s6, -36(s3)
                  lbu          t5, -9(s3)
                  lbu          sp, 48(s3)
                  lhu          s4, -10(s3)
                  lb           a0, -55(s3)
                  slti         a6, t0, 954
                  srai         zero, a3, 30
                  lb           t1, 15(s3)
                  lbu          ra, 39(s3)
                  lbu          s10, -16(s3)
                  lh           zero, 10(s3)
                  addi         a4, t2, 1403
                  lb           a1, 15(s3)
                  sll          gp, zero, t0
                  lb           t6, 47(s3)
                  sh           s5, -42(s3)
                  lbu          zero, 19(s3)
                  sb           s7, 41(s3)
                  lbu          a1, -23(s3)
                  sb           tp, 11(s3)
                  srai         ra, a5, 16
                  lw           s2, -26(s3)
                  sb           s5, 47(s3)
                  slli         s2, ra, 22
                  lhu          t5, 12(s3)
                  sh           s11, -8(s3)
                  or           s8, s1, t6
                  lh           a5, -44(s3)
                  sll          s6, tp, s6
                  lb           s1, -17(s3)
                  sb           s4, 5(s3)
                  sh           a5, -56(s3)
                  slt          s1, t0, s6
                  xor          s0, a6, s0
                  sb           s3, -13(s3)
                  sb           t2, -33(s3)
                  nop
                  lb           gp, -7(s3)
                  srli         s10, gp, 27
                  lbu          t6, -31(s3)
                  sltu         s1, a0, a4
                  sb           a3, -5(s3) #end riscv_load_store_rand_instr_stream_9
                  la           s1, region_0+536 #start riscv_load_store_rand_instr_stream_10
                  lhu          a3, -142(s1)
                  lui          a7, 480419
                  sb           s10, 858(s1)
                  lhu          sp, 788(s1)
                  sw           s5, 820(s1)
                  nop
                  xor          ra, s0, s0
                  lh           s8, 50(s1)
                  sb           a0, 293(s1)
                  lb           t4, 239(s1)
                  auipc        t4, 721765
                  srli         s2, s10, 19
                  xori         ra, s10, -1977
                  auipc        sp, 379606
                  lbu          a7, 1233(s1)
                  lbu          t5, 207(s1)
                  sh           sp, 66(s1)
                  lbu          a3, -110(s1)
                  slli         t4, s7, 11
                  srl          a6, a3, s11
                  srl          a4, s9, a4
                  sb           zero, 1217(s1)
                  sb           a4, -445(s1)
                  lb           a5, 943(s1)
                  sltu         t4, a6, s8
                  lb           gp, -485(s1)
                  and          a1, a3, zero
                  lui          s6, 114808
                  lbu          a5, 1445(s1)
                  and          tp, t5, gp
                  lbu          gp, -281(s1)
                  sh           s7, -32(s1)
                  sb           tp, -35(s1)
                  lbu          a4, 723(s1)
                  lbu          gp, 503(s1)
                  addi         sp, s9, -1112
                  sb           s4, -181(s1)
                  lb           s11, 801(s1)
                  xor          t4, t0, a2
                  lb           s8, -69(s1)
                  slti         gp, a4, 992
                  lbu          s4, -205(s1)
                  sh           t0, 850(s1)
                  and          t3, ra, a4
                  lbu          tp, 1342(s1)
                  sb           s7, 305(s1)
                  lb           s3, 1374(s1) #end riscv_load_store_rand_instr_stream_10
                  la           sp, region_0+1857 #start riscv_load_store_rand_instr_stream_6
                  lui          a7, 652435
                  lui          s1, 972362
                  lw           tp, -405(sp)
                  lh           zero, -1301(sp)
                  or           s2, s11, a5
                  or           s11, a3, s10
                  or           s6, s6, t2
                  xor          t1, a2, s4
                  lbu          gp, -1163(sp)
                  lhu          t3, -1531(sp)
                  nop
                  lb           tp, -1190(sp)
                  slt          a4, t6, t0
                  lb           s3, -1473(sp)
                  sb           a2, -726(sp)
                  sb           t5, -1076(sp)
                  sh           a3, -725(sp)
                  sb           s2, -530(sp)
                  nop
                  sh           s5, -1241(sp)
                  ori          a6, s1, 465
                  lbu          s8, -542(sp)
                  sll          t3, s9, s2
                  lbu          s5, -1108(sp)
                  auipc        s6, 99550
                  lbu          t1, -861(sp)
                  sh           s9, 69(sp)
                  lb           t0, -1152(sp)
                  lb           t3, -259(sp)
                  lb           t4, -582(sp)
                  sb           a4, -672(sp)
                  sb           a5, -1716(sp)
                  lbu          t6, -1688(sp)
                  lbu          s1, -931(sp)
                  lb           s9, -1297(sp)
                  ori          a7, s4, -388
                  lhu          t0, -255(sp) #end riscv_load_store_rand_instr_stream_6
                  la           a7, region_1+631 #start riscv_load_store_rand_instr_stream_11
                  sb           tp, 4(a7)
                  lbu          s9, 52(a7)
                  lb           s10, 26(a7)
                  sltiu        t3, a1, 1987
                  sh           a2, -19(a7)
                  xor          ra, s9, a5
                  and          t5, a2, a3
                  sh           zero, 17(a7)
                  srl          gp, s11, t5
                  lhu          s5, 53(a7)
                  lh           t4, 57(a7)
                  sub          t5, t3, a3
                  lhu          s11, 7(a7)
                  auipc        s11, 412290
                  lb           s11, -20(a7)
                  lbu          zero, -64(a7)
                  auipc        ra, 648899
                  lbu          s9, -46(a7)
                  lhu          a6, 35(a7)
                  lhu          sp, 5(a7)
                  add          ra, a0, t1
                  lhu          s5, 29(a7)
                  sltu         a6, s11, s4
                  lb           a6, -10(a7)
                  add          s9, s3, sp
                  sra          a0, t1, sp
                  xor          s10, a2, zero
                  lbu          s4, 34(a7)
                  sh           a6, -41(a7)
                  sb           s11, 56(a7)
                  sltu         s5, t3, a5
                  or           a1, zero, a7
                  sb           t0, 38(a7)
                  sltiu        s8, a2, -1407
                  sltu         s2, gp, s1
                  lbu          s9, -16(a7)
                  lbu          s0, -57(a7) #end riscv_load_store_rand_instr_stream_11
                  la           t6, region_1+1692 #start riscv_load_store_rand_instr_stream_7
                  slli         a4, s6, 1
                  srli         zero, a7, 10
                  lbu          a7, 21(t6)
                  addi         tp, sp, -131
                  xor          s9, s4, s6
                  lb           s4, -54(t6)
                  nop
                  addi         s0, s8, -1631
                  lb           a7, 6(t6)
                  lhu          zero, 6(t6)
                  lb           a1, -56(t6)
                  sltu         a4, s8, t3
                  sb           ra, -3(t6)
                  sb           t6, -47(t6)
                  sll          t3, s6, s6
                  lw           t5, -60(t6)
                  sw           ra, -12(t6)
                  lbu          t0, 13(t6)
                  lbu          t4, 60(t6)
                  lhu          t3, -62(t6)
                  slti         a4, t0, -1911
                  lb           s3, -43(t6)
                  lbu          s4, -49(t6)
                  lbu          s11, -36(t6)
                  lh           a4, -40(t6)
                  sltiu        sp, a5, -1342
                  lhu          s3, -18(t6)
                  add          s2, s3, s3
                  sb           s6, -45(t6)
                  sra          t0, a5, s1
                  lbu          gp, -48(t6)
                  sb           s3, -1(t6)
                  lbu          s0, 11(t6)
                  or           a0, gp, s9
                  sb           s1, 51(t6)
                  srli         s9, t3, 23
                  sh           t5, 20(t6)
                  lb           s0, 10(t6)
                  lbu          a3, 0(t6)
                  xori         ra, a0, 1700
                  sb           s8, 38(t6)
                  slt          s1, t2, a4
                  lb           a3, 2(t6)
                  lb           zero, 53(t6)
                  sb           t5, -7(t6) #end riscv_load_store_rand_instr_stream_7
                  la           s11, region_1+1200 #start riscv_load_store_rand_instr_stream_5
                  slti         t4, tp, -64
                  srli         a1, s11, 17
                  sw           t4, 708(s11)
                  slti         s0, s8, 419
                  lh           s10, -318(s11)
                  lbu          ra, 794(s11)
                  lw           s1, -508(s11)
                  sb           t3, 349(s11)
                  lbu          a5, -764(s11)
                  srli         t4, t3, 8
                  srl          s3, a3, t1
                  sll          s8, a0, s4
                  sh           t5, -1190(s11)
                  lb           a3, 195(s11)
                  lbu          gp, -732(s11)
                  lbu          a4, -673(s11)
                  sh           t4, 92(s11)
                  lbu          gp, -1077(s11)
                  sll          s3, a4, s10
                  sb           gp, -429(s11)
                  sb           a0, 116(s11)
                  srl          gp, a4, s10
                  srl          s8, t5, a5
                  nop
                  andi         gp, s8, -1724
                  sb           t1, -153(s11)
                  sb           t5, -681(s11)
                  srai         s6, s9, 0
                  sra          t0, s7, a6
                  lbu          gp, 103(s11)
                  lbu          zero, 351(s11)
                  lbu          s10, -525(s11) #end riscv_load_store_rand_instr_stream_5
                  la           a0, region_1+80 #start riscv_load_store_rand_instr_stream_0
                  xori         s0, t3, -1448
                  and          a6, gp, s7
                  add          s5, gp, s6
                  lbu          s8, -65(a0)
                  srli         s1, ra, 2
                  sub          s0, s10, a0
                  lb           s1, 175(a0)
                  andi         s10, a5, -1711
                  sb           s5, 94(a0)
                  sb           a0, -47(a0)
                  slli         t4, s3, 20
                  lhu          s5, 152(a0)
                  add          t1, t6, ra
                  andi         a6, s1, 1340
                  lbu          gp, 129(a0)
                  lb           t3, -29(a0)
                  add          a3, s8, t0
                  sh           t6, 118(a0)
                  auipc        a6, 890371
                  slli         s3, t2, 2
                  sra          s6, s0, s11
                  lbu          a4, 141(a0)
                  sra          s8, gp, a1
                  lbu          a6, -36(a0)
                  lb           t1, 157(a0)
                  sltiu        s1, tp, 1377
                  and          s2, t4, s6
                  nop
                  lbu          s6, -15(a0)
                  xori         t3, zero, -1960
                  ori          s10, t5, 1721
                  sll          t4, s11, tp
                  sra          tp, a3, a1
                  sll          s2, s7, s5
                  xor          ra, zero, t1
                  sltiu        s10, a6, 910
                  or           tp, s6, s9
                  auipc        s9, 800945
                  add          s10, s2, s2
                  sh           a3, -30(a0)
                  lb           s11, 31(a0) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_1+980 #start riscv_load_store_rand_instr_stream_15
                  or           a4, s3, a3
                  slt          ra, s10, ra
                  lbu          zero, -313(sp)
                  sb           t6, -73(sp)
                  xori         a7, s1, -391
                  lhu          t3, 522(sp)
                  lbu          s3, -953(sp)
                  sub          a7, zero, t1
                  slti         s4, gp, 1340
                  lui          s11, 284908
                  sh           t4, -610(sp)
                  lb           tp, -903(sp)
                  slt          s11, t4, s5
                  sh           t3, 946(sp)
                  lui          t0, 200531
                  srl          t0, s4, zero
                  auipc        t3, 273663
                  and          t6, t0, s6
                  sll          a3, s6, s4
                  srl          s3, s8, a1
                  lb           t4, 65(sp)
                  sb           sp, 598(sp)
                  lw           t1, 72(sp)
                  lb           a5, 272(sp)
                  sll          t4, s10, a4
                  sb           a5, -574(sp)
                  lbu          t5, 633(sp)
                  sub          a5, ra, zero
                  sltu         t1, a4, s6
                  srli         t5, a1, 11
                  addi         a5, sp, -1325
                  srl          a1, tp, t6
                  lbu          t6, -955(sp)
                  lb           a7, -172(sp)
                  lui          s4, 794725
                  nop
                  lw           ra, 436(sp)
                  sb           s9, -886(sp)
                  lb           s1, -53(sp)
                  add          s6, a1, sp
                  nop
                  lbu          t5, -117(sp)
                  sub          s2, sp, a4
                  slli         s0, s10, 25
                  slt          s5, t0, a3
                  andi         s4, t1, 749
                  lb           t3, -485(sp)
                  sb           s0, -543(sp) #end riscv_load_store_rand_instr_stream_15
                  la           sp, region_0+42 #start riscv_load_store_rand_instr_stream_2
                  lhu          s0, 248(sp)
                  auipc        a7, 605821
                  and          s2, t4, a4
                  sh           tp, -34(sp)
                  and          a0, s1, a3
                  lb           tp, 207(sp)
                  xor          a4, s3, t4
                  sb           s8, 109(sp)
                  sw           ra, 166(sp)
                  auipc        t1, 271952
                  lbu          t6, 41(sp)
                  lbu          a3, -19(sp)
                  addi         a7, s7, 1986
                  slli         s5, a0, 17
                  and          s2, zero, t5
                  addi         s4, s4, -1970
                  lhu          s11, 182(sp)
                  sltiu        tp, t5, -1693
                  or           t1, t5, s2
                  lb           s10, 82(sp)
                  sb           t5, -32(sp)
                  sub          t0, a7, s1
                  lb           s11, 219(sp)
                  lw           s11, -18(sp)
                  sb           a7, 111(sp)
                  lbu          tp, 91(sp)
                  and          a6, gp, t3
                  sll          a0, s2, s11
                  sll          t0, s2, a1
                  lb           s2, -33(sp)
                  lh           s6, 138(sp)
                  lbu          s5, -24(sp)
                  lb           a4, 17(sp)
                  sb           s0, 81(sp)
                  srl          a7, s0, a3
                  lb           s1, 221(sp)
                  lhu          t1, 198(sp)
                  ori          a4, s7, -15
                  xori         s11, t5, -1067
                  lw           s1, -38(sp)
                  sb           s3, 65(sp) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_1+1215 #start riscv_load_store_rand_instr_stream_4
                  xor          s9, t1, t5
                  lbu          s1, 32(sp)
                  addi         s8, sp, -937
                  sb           a1, 0(sp)
                  addi         s9, a3, -830
                  or           t4, gp, a0
                  srli         s10, t3, 10
                  sll          s4, s2, a2
                  sltiu        a0, t0, 592
                  lui          a5, 945844
                  lbu          t1, -54(sp)
                  slt          t4, s9, s0
                  xor          t5, tp, s10
                  srli         a6, tp, 17
                  sb           t1, 0(sp)
                  andi         s3, s3, -2007
                  xor          s2, s9, s11
                  lbu          s3, -38(sp)
                  slli         t3, s9, 20
                  lbu          a3, 31(sp)
                  lhu          a4, -7(sp)
                  slli         t6, s8, 4
                  srai         t1, s6, 9
                  or           t4, s0, t4
                  addi         s2, s2, 1272
                  sll          tp, a3, a3
                  and          s2, t0, a1
                  sb           t4, 36(sp)
                  or           a5, s4, gp
                  srl          a4, s4, t0
                  slt          t5, s3, s5
                  srl          s8, s1, t5
                  addi         a3, t5, -593
                  slt          t5, a5, t2
                  srli         zero, a4, 5
                  sb           a7, -57(sp)
                  xor          a4, zero, s5
                  lbu          s6, 38(sp) #end riscv_load_store_rand_instr_stream_4
                  la           t6, region_1+572 #start riscv_load_store_rand_instr_stream_1
                  lbu          a4, 87(t6)
                  lh           a1, 172(t6)
                  sb           a7, 13(t6)
                  sltu         s2, a4, sp
                  sb           sp, -2(t6)
                  lh           s4, -110(t6)
                  lbu          ra, 256(t6)
                  sll          s3, a0, s9
                  lbu          ra, 123(t6)
                  sb           s3, -79(t6)
                  nop
                  auipc        a3, 291320
                  addi         ra, a3, -589
                  lbu          a6, -117(t6)
                  slti         a0, t4, -334
                  srl          a4, s1, t4
                  slt          t3, a7, s1
                  xori         t5, zero, -1241
                  nop
                  sh           s6, 94(t6)
                  slti         gp, t3, 87
                  slt          a7, s4, t0
                  srai         t5, s10, 28
                  lbu          s6, -61(t6)
                  lb           a0, 214(t6)
                  lb           t3, -169(t6)
                  sh           s4, -112(t6)
                  sw           s6, 60(t6)
                  and          sp, t2, a7
                  lbu          a0, -193(t6)
                  lb           tp, 119(t6)
                  xori         s5, s7, 1985
                  sb           zero, 106(t6)
                  lhu          s4, 88(t6)
                  nop
                  lbu          t0, -158(t6)
                  lh           a7, 16(t6)
                  or           t0, s1, s6
                  sb           a6, 237(t6)
                  sb           a0, -65(t6)
                  sb           a6, -77(t6) #end riscv_load_store_rand_instr_stream_1
                  la           s11, region_0+1673 #start riscv_load_store_rand_instr_stream_14
                  sb           s6, -22(s11)
                  lb           a1, -60(s11)
                  sltiu        t4, t0, -1926
                  lb           s2, 28(s11)
                  sltu         s8, gp, ra
                  sltu         a1, t3, sp
                  slt          t3, a7, s2
                  srai         s6, a3, 7
                  sb           s6, 43(s11)
                  lb           s9, -21(s11)
                  srli         zero, s5, 26
                  srl          a7, a6, t3
                  lb           s5, -47(s11)
                  nop
                  lb           t0, 26(s11)
                  lbu          t4, -58(s11)
                  srai         t0, a0, 24
                  sltu         a1, sp, t1
                  ori          a3, s0, 1062
                  sra          t1, a3, s5
                  add          s2, gp, s5
                  slti         sp, s2, -1372
                  sb           s9, -14(s11)
                  ori          tp, a6, -763
                  addi         s10, s8, -992
                  lb           a0, -63(s11) #end riscv_load_store_rand_instr_stream_14
                  la           s3, region_0+1031 #start riscv_load_store_rand_instr_stream_18
                  sh           t2, -487(s3)
                  andi         t6, a2, -1213
                  sb           t2, 764(s3)
                  lbu          a6, 958(s3)
                  sb           s7, 801(s3)
                  sb           a4, 374(s3)
                  or           a7, a5, a4
                  sw           a4, 557(s3)
                  lb           t0, -582(s3)
                  sb           t3, -887(s3)
                  srai         s1, t3, 4
                  lb           a4, -923(s3)
                  sll          a3, sp, t3
                  sb           zero, 152(s3)
                  lb           s0, 413(s3)
                  sb           s5, 14(s3)
                  lb           s11, 30(s3)
                  srli         a6, a1, 29
                  ori          sp, s11, -675
                  lbu          s0, -330(s3)
                  xori         a5, t2, -1321
                  nop
                  lh           s6, -901(s3)
                  sh           tp, -413(s3)
                  add          t0, a3, ra
                  lw           s11, -331(s3)
                  sb           s0, 889(s3)
                  xor          tp, a0, zero
                  lbu          t4, -1006(s3)
                  lbu          s11, 726(s3)
                  lb           s0, 838(s3)
                  sh           a5, -315(s3)
                  sh           s3, -43(s3)
                  sw           s6, -939(s3)
                  sb           t0, -382(s3)
                  sh           s8, -847(s3) #end riscv_load_store_rand_instr_stream_18
                  beq          a3, a1, 1f
1:                slt          s0, tp, s3
                  beq          s2, sp, 7f
                  srai         a0, zero, 2
                  sub          t1, t5, tp
                  sltiu        s2, s3, -930
                  bne          s1, zero, 26f
7:                srai         s6, s3, 16
                  bne          t6, t3, 15f
                  bne          s9, ra, 28f
                  bltu         t0, s1, 14f
                  nop
                  srai         t0, t6, 25
                  bne          a3, sp, 20f
14:               xor          s1, t5, s1
15:               srl          t0, t5, s8
                  add          t4, a5, s6
                  srl          s3, t1, s10
                  sll          t0, tp, sp
                  sra          zero, t1, t6
20:               addi         t3, s10, -2008
                  beq          s5, a4, 38f
                  srl          t6, a2, s7
                  lui          s8, 395145
                  slti         a1, a1, -1630
                  andi         s10, a6, -659
26:               bne          a3, s4, 29f
                  xor          t1, t5, s3
28:               auipc        t3, 889712
29:               xor          a4, a1, a5
                  srli         s6, a3, 11
                  slti         zero, s11, -407
                  andi         s8, s3, -1180
                  sll          a4, gp, a7
                  bltu         a6, s10, 46f
                  slli         zero, s10, 15
                  and          t6, a4, ra
                  ori          a6, gp, -1548
38:               and          t1, a5, a2
                  sub          s4, s5, a4
                  sra          t5, a0, s2
                  xor          a4, a1, t4
                  beq          s8, sp, 49f
                  slti         a3, ra, 1294
                  addi         a6, s6, 1405
                  bgeu         sp, s5, 49f
46:               ori          s1, s8, -194
                  sltu         zero, zero, t1
                  bgeu         s0, sp, 52f
49:               bne          a2, sp, 60f
                  bltu         s10, a2, 58f
                  xor          s9, a7, s11
52:               srai         s11, s11, 5
                  sll          s2, s8, a2
                  or           s4, s3, t4
                  or           s10, a2, ra
                  xori         s0, s0, -1729
                  xori         s4, s5, -725
58:               slti         s2, a1, 1399
                  addi         t0, s8, -675
60:               sltu         s4, s5, s10
                  sll          a5, t0, tp
                  slt          t0, a3, t6
                  sub          t5, t6, s3
                  andi         ra, s10, 1108
                  or           t5, a1, s10
                  srl          s4, a7, a0
                  slti         s4, a2, -137
                  blt          a4, s5, 80f
                  blt          s6, s11, 86f
                  or           s0, sp, s4
                  bltu         t1, sp, 77f
                  blt          s11, t0, 92f
                  sltu         tp, a3, s0
                  addi         sp, s4, 1586
                  sltiu        sp, s11, -871
                  bne          s2, s1, 96f
77:               slti         s0, t1, 570
                  lui          s5, 884726
                  ori          t1, a2, -1226
80:               slli         a7, a1, 18
                  slt          a3, s1, gp
                  bge          t3, gp, 89f
                  sltu         ra, a6, ra
                  and          ra, ra, a3
                  andi         s5, a3, 691
86:               sltu         tp, a4, t0
                  sra          s1, t1, t6
                  srli         ra, t5, 6
89:               bge          s2, a7, 108f
                  and          s10, s6, t6
                  slli         s10, s7, 14
92:               xori         s6, s9, -52
                  auipc        gp, 520458
                  bge          s11, s9, 105f
                  sltiu        s9, s1, 433
96:               sub          t5, a3, s1
                  bne          t6, zero, 103f
                  blt          s1, s5, 112f
                  andi         t0, t3, -1238
                  add          tp, s5, t4
                  slti         s1, s7, 384
                  xor          s1, t1, s11
103:              ori          t4, tp, 1954
                  nop
105:              srli         s10, a5, 30
                  xori         ra, t2, -1908
                  add          a3, a3, t1
108:              blt          s0, t3, 124f
                  sll          t4, s8, a4
                  sltiu        a5, s6, 85
                  xori         t1, a7, 1371
112:              sll          s3, t4, ra
                  lui          a6, 941044
                  sub          sp, t5, s4
                  lui          a5, 674668
                  slli         t5, a4, 17
                  srai         s9, ra, 3
                  addi         a1, t0, 194
                  lui          s10, 505536
                  and          gp, s11, a7
                  bgeu         s4, sp, 131f
                  bltu         tp, s2, 127f
                  slti         tp, tp, -17
124:              add          ra, gp, s0
                  sll          t0, s6, a4
                  xor          t3, a0, s7
127:              or           sp, s9, ra
                  slt          s10, t5, s5
                  slt          t4, s0, s11
                  sltu         a7, gp, t1
131:              sub          s0, t5, a2
                  srl          s2, s11, t6
                  sub          t6, a1, sp
                  slti         tp, sp, 1170
                  blt          s0, s6, 140f
                  bge          s0, a4, 140f
                  or           s3, ra, s9
                  slti         s10, a4, 1369
                  bne          s10, a0, 151f
140:              beq          a0, s0, 143f
                  sll          s6, s11, a3
                  srl          a5, t5, tp
143:              xori         t5, a2, 1021
                  bltu         a0, a7, 148f
                  addi         zero, t3, -2008
                  bltu         s4, a6, 150f
                  and          sp, t5, gp
148:              slli         s11, a2, 30
                  blt          s11, s5, 161f
150:              addi         zero, a3, 1601
151:              nop
                  srai         t3, a2, 10
                  xori         a5, a0, 816
                  bltu         a5, a2, 164f
                  addi         s1, s0, -219
                  xori         ra, s0, 352
                  xori         s11, t5, -568
                  xori         s6, s0, -557
                  or           s0, tp, s8
                  nop
161:              ori          s1, s4, 1329
                  sub          s4, s8, s2
                  blt          ra, t3, 174f
164:              and          t6, s5, gp
                  andi         a1, a2, -535
                  blt          s6, s2, 171f
                  auipc        s2, 804927
                  slli         t3, s8, 16
                  auipc        a7, 452979
                  slli         s4, t6, 1
171:              bne          t2, s6, 177f
                  and          ra, t4, t5
                  slt          s10, t4, s6
174:              sltu         s3, ra, a1
                  xor          s5, s2, s8
                  sltiu        a4, s11, -771
177:              sltiu        s2, a7, -162
                  bne          a1, s6, 185f
                  lui          t3, 340211
                  slti         a5, a0, 619
                  blt          s1, s2, 201f
                  add          s8, s11, t3
                  bgeu         t5, ra, 187f
                  bge          gp, a3, 198f
185:              bge          s6, sp, 190f
                  blt          s8, a0, 205f
187:              bne          s10, s11, 204f
                  bgeu         t4, ra, 205f
                  bgeu         t4, a0, 195f
190:              sra          ra, zero, s8
                  slli         a3, tp, 28
                  xori         a3, s4, 1366
                  or           a1, t3, tp
                  xor          t4, s7, a5
195:              bge          a1, t0, 206f
                  addi         t3, s9, 1765
                  nop
                  la           t3, region_1+1117 #start riscv_load_store_rand_instr_stream_17
                  lb           s3, 40(t3)
                  lbu          t4, 6(t3)
                  add          sp, a5, t6
                  lb           s9, 54(t3)
                  sltiu        s11, t6, 1403
                  andi         s0, s0, -221
                  andi         tp, s2, 814
                  and          s9, s10, a2
                  auipc        s2, 764023
                  auipc        s1, 219249
                  lb           s6, -50(t3)
                  lb           a5, -6(t3)
                  lb           sp, 56(t3)
                  lbu          tp, -64(t3)
                  lbu          a7, -8(t3)
                  ori          ra, t4, -207
                  lbu          s9, -17(t3)
                  add          s4, s3, s1
                  lb           s2, 30(t3)
                  lbu          s9, 58(t3)
                  slti         s5, a2, -1996
                  lb           t1, -6(t3)
                  sb           s11, -40(t3)
                  xor          gp, a2, a2
                  xor          t4, s3, gp
                  lbu          tp, 32(t3)
                  andi         s10, a6, 1574
                  lbu          tp, -23(t3)
                  sll          a1, t2, s9
                  sb           s0, -34(t3)
                  xori         s3, s3, -1955
                  andi         a5, sp, 1104
                  sb           s9, 12(t3)
                  sh           s6, -47(t3)
                  sub          ra, s6, tp
                  sltiu        a6, t3, 1799
                  sb           t0, 34(t3)
                  sh           s0, 51(t3)
                  xori         s4, s4, -1394
                  andi         s3, t4, -426
                  sb           s9, 8(t3)
                  lbu          s0, 0(t3)
                  nop
                  sub          s2, gp, a1
                  sw           s8, 11(t3)
                  lb           s11, 61(t3) #end riscv_load_store_rand_instr_stream_17
198:              bge          s10, s10, 205f
                  slli         s9, t6, 25
                  sra          s10, s4, s8
201:              andi         tp, tp, -1847
                  bltu         s11, t3, 222f
                  xor          t1, zero, a3
204:              sltiu        t5, a2, 638
205:              slti         s11, gp, -1143
206:              bne          s11, a4, 222f
                  add          s3, s0, s1
                  auipc        t5, 717180
                  slti         s3, tp, 36
                  sub          s11, t0, a1
                  sub          ra, s3, t5
                  blt          a4, s3, 217f
                  add          s0, s2, t6
                  sra          s10, s2, a2
                  srli         a7, a3, 21
                  slt          t6, t4, t5
217:              bgeu         s6, t6, 237f
                  sll          s11, s5, s5
                  bltu         t5, s0, 226f
                  sll          ra, s9, tp
                  slti         s9, t1, 26
222:              auipc        s6, 769429
                  bge          s0, t3, 230f
                  sltu         t4, t0, s3
                  sub          s0, s8, a3
226:              lui          s1, 215645
                  xori         s1, s9, -804
                  nop
                  bge          s7, a6, 233f
230:              srli         t4, tp, 15
                  slt          t4, s2, t5
                  srai         s11, s9, 11
233:              srai         a4, a6, 30
                  sltu         a1, s4, s11
                  andi         ra, tp, -1621
                  srl          s2, s4, s10
237:              lui          t0, 848202
                  addi         s0, t6, -400
                  beq          t4, a4, 247f
                  sltiu        s2, a5, -1280
                  bge          s2, s5, 242f
242:              nop
                  ori          a6, s2, 618
                  bltu         s6, tp, 263f
                  slti         t6, s0, 1446
                  or           s3, zero, s4
247:              slt          a5, ra, s2
                  bltu         t2, t0, 252f
                  addi         sp, a3, 118
                  or           a7, tp, s10
                  slti         s1, tp, -1690
252:              andi         s1, a7, -6
                  srai         t3, zero, 24
                  srai         s8, s1, 3
                  slti         t1, s2, -647
                  srli         s10, t0, 9
                  xori         t0, s1, 50
                  sra          a5, s3, a2
                  auipc        s9, 887254
                  auipc        t4, 707183
                  slli         s10, ra, 11
                  bge          a7, tp, 282f
263:              xor          s2, a6, t2
                  slt          s10, t4, s3
                  sra          s4, a6, a4
                  sub          a5, s8, t1
                  lui          sp, 45170
                  lui          s10, 835955
                  addi         s9, t6, -1847
                  blt          a7, a2, 277f
                  addi         t6, s11, 911
                  sll          ra, a2, a6
                  bne          t6, a2, 276f
                  or           a3, a1, t5
                  bltu         s9, a7, 279f
276:              sltiu        a6, t5, -1510
277:              addi         s4, s11, 1495
                  slti         t1, s1, -379
279:              bltu         t5, t2, 299f
                  bltu         a4, s11, 299f
                  bne          s6, a1, 293f
282:              sltiu        t5, s3, -1346
                  sltiu        t3, t2, -964
                  sltiu        a7, a7, -1702
                  nop
                  sra          a5, s2, a0
                  sltiu        s5, a2, -800
                  beq          t1, t0, 307f
                  bgeu         s6, s7, 293f
                  bltu         t6, a4, 295f
                  add          sp, a2, s10
                  nop
293:              lui          s1, 210429
                  slt          gp, a2, tp
295:              sub          gp, t2, a7
                  srl          a0, sp, s8
                  srli         t1, t3, 25
                  xori         a3, t0, -1149
299:              slti         ra, sp, 330
                  sltiu        s4, a7, -1290
                  srl          ra, s10, s8
                  sra          a1, a2, a7
                  sub          a1, s7, s5
                  srli         t1, s6, 4
                  nop
                  slli         s3, a1, 14
307:              andi         t1, gp, -140
                  lui          sp, 759305
                  sll          a4, s8, t1
                  slt          s3, a1, t1
                  slti         s11, t3, -165
                  srli         t1, t6, 28
                  sltu         a4, a4, t3
                  beq          t3, t4, 315f
315:              add          ra, a5, a3
                  slt          t1, t5, a6
                  srai         s8, s9, 29
                  slt          a3, zero, a1
                  blt          a5, a5, 323f
                  bgeu         gp, a0, 337f
                  beq          ra, t5, 329f
                  andi         s1, a1, -222
323:              bltu         a7, t6, 335f
                  sltiu        t1, s5, 649
                  srai         sp, s10, 21
                  la           tp, region_0+482 #start riscv_load_store_rand_instr_stream_8
                  sw           s2, -6(tp)
                  sw           s4, 6(tp)
                  lui          s6, 243752
                  sb           a3, 61(tp)
                  andi         a7, s4, 1120
                  lhu          s8, 28(tp)
                  srai         s2, a4, 5
                  lbu          s5, 35(tp)
                  sh           t6, 62(tp)
                  slli         s5, t2, 5
                  auipc        s6, 620581
                  slti         a0, t5, 279
                  srai         a1, s4, 15
                  sb           s1, -7(tp)
                  lhu          zero, -46(tp)
                  sb           s6, -33(tp)
                  sb           s0, 9(tp)
                  lh           a7, -22(tp)
                  lhu          s9, 46(tp)
                  lbu          s8, -39(tp)
                  sh           s2, 38(tp)
                  sb           a2, -25(tp)
                  lhu          s1, 26(tp)
                  ori          s3, ra, 1675
                  lui          a1, 568020
                  auipc        ra, 234966
                  lh           s10, -46(tp)
                  lb           a7, -57(tp)
                  nop
                  lbu          s4, 63(tp)
                  sb           s7, -41(tp)
                  nop
                  slt          a7, s2, a2
                  lh           s9, -10(tp)
                  sb           sp, -61(tp)
                  lb           t1, -21(tp) #end riscv_load_store_rand_instr_stream_8
                  sltiu        a0, s7, 1794
                  beq          a6, s8, 338f
                  sub          a4, s8, a5
329:              bltu         sp, t0, 336f
                  and          s5, a2, t5
                  bgeu         s3, gp, 348f
                  xor          s2, s2, t3
                  slli         a3, s10, 7
                  lui          s5, 399563
335:              nop
336:              xori         a7, a1, 759
337:              lui          tp, 271314
338:              beq          s6, s8, 344f
                  bne          ra, gp, 346f
                  and          s4, a3, zero
                  slt          t4, t5, t4
                  sra          s5, a0, t1
                  bltu         s1, t1, 353f
344:              bgeu         s8, a5, 355f
                  and          t5, a0, s8
346:              bne          t1, a3, 351f
                  srli         s0, a7, 26
348:              srli         t0, s2, 2
                  slt          s8, a0, t1
                  ori          a1, s11, -566
351:              bltu         a3, s8, 356f
                  srl          gp, s3, s2
353:              sltiu        ra, t0, -1379
                  ori          a3, t1, -1122
355:              sra          t0, s2, s6
356:              ori          s0, s0, 568
                  sra          s4, s4, s2
                  xori         s11, zero, 172
                  bne          s7, a5, 365f
                  lui          zero, 439353
                  slti         t4, t0, -88
                  sltiu        gp, zero, 928
                  srai         s8, t0, 23
                  xor          a5, gp, s4
365:              andi         s11, tp, 106
                  xor          t1, gp, s2
                  bltu         a5, zero, 387f
                  srl          s5, sp, s3
                  add          zero, s8, sp
                  slti         a3, a5, -245
                  sub          s11, a2, sp
                  sltiu        sp, t0, -865
                  slti         zero, a5, 1427
                  sub          t1, s10, a3
                  nop
                  sltu         s9, a7, a7
                  beq          s11, sp, 393f
                  nop
                  sltiu        t1, s1, 405
                  slt          t1, t4, t6
                  nop
                  auipc        s0, 675170
                  blt          a3, s5, 390f
                  bge          a3, s9, 398f
                  ori          s0, s2, -1939
                  xor          s8, t0, t2
387:              lui          s8, 64023
                  bge          t2, s0, 407f
                  nop
390:              xori         s4, a5, 119
                  nop
                  bge          s2, s5, 393f
393:              xor          t1, t1, t2
                  sltiu        a3, s1, 695
                  srai         s5, s11, 14
                  or           s1, sp, a5
                  sll          s5, s7, t3
398:              auipc        sp, 456739
                  xori         s1, sp, 41
                  addi         a1, gp, -1045
                  slti         s8, s8, -1211
                  slt          s6, s6, s5
                  ori          sp, s2, 511
                  slt          a1, s0, s4
                  xori         gp, s4, -1183
                  beq          s10, sp, 417f
407:              bge          a0, t3, 419f
                  ori          t6, s4, -1612
                  xor          s10, a5, s9
                  andi         a7, a6, 84
                  ori          s6, s3, -729
                  srl          s1, s2, t1
                  bge          s5, s3, 418f
                  lui          t1, 370927
                  xori         a7, s6, -1387
                  sll          s10, ra, a5
417:              or           s10, a2, a4
418:              slti         zero, s3, -758
419:              sub          t5, a7, s8
                  xori         t3, a4, -224
                  slt          a7, s8, a0
                  andi         s9, s2, -74
                  sltiu        t4, s2, -2
                  addi         s11, t0, -1728
                  sra          s3, ra, t6
                  la           tp, region_0+1874 #start riscv_load_store_rand_instr_stream_3
                  and          t4, t3, s4
                  sb           s3, -87(tp)
                  and          ra, s0, t0
                  slti         s1, tp, 1405
                  lhu          a6, -184(tp)
                  sll          zero, t1, s2
                  sll          t6, tp, s9
                  sb           s1, -92(tp)
                  slli         sp, ra, 21
                  addi         t0, a0, 546
                  xori         a5, a4, 502
                  sb           ra, -104(tp)
                  lw           s0, -198(tp)
                  lhu          s8, 6(tp)
                  lbu          t4, -113(tp)
                  xor          zero, t2, sp
                  auipc        s0, 970601
                  lbu          s2, -111(tp)
                  slli         t4, t3, 20
                  lhu          a1, -64(tp)
                  sll          ra, t6, s9
                  lb           s0, 25(tp)
                  auipc        zero, 605391
                  lbu          s3, -207(tp)
                  sb           s1, -191(tp)
                  lh           a6, 2(tp)
                  auipc        s4, 351286
                  lb           s3, -255(tp)
                  lb           a4, -73(tp)
                  andi         s11, a3, -588
                  lh           a7, 78(tp)
                  lh           a5, 2(tp)
                  slli         t5, s4, 26
                  lbu          s3, -51(tp)
                  srl          t4, s4, a7
                  lb           gp, -196(tp)
                  lb           a6, 27(tp)
                  auipc        a0, 153038
                  sb           a2, -39(tp)
                  lb           s0, -142(tp) #end riscv_load_store_rand_instr_stream_3
                  bge          s1, t0, 438f
                  auipc        t1, 580532
                  xori         zero, a2, -918
                  addi         s1, s5, -309
                  xor          s8, s3, t0
                  bne          s7, t1, 448f
                  srai         t5, t4, 14
                  bgeu         s3, s8, 443f
                  or           s9, a7, s1
                  slti         gp, t3, -1243
                  slt          s11, s6, a5
                  ori          s3, s2, 1218
438:              or           s0, a0, s11
                  auipc        t1, 189207
                  nop
                  ori          s4, s8, -240
                  sltiu        a3, s0, 251
443:              sub          t3, a7, tp
                  srai         gp, a0, 4
                  xori         t3, ra, -377
                  srai         a1, s6, 21
                  addi         a7, s1, -1693
448:              bltu         gp, ra, 452f
                  slt          s11, s3, a6
                  nop
                  slt          t6, tp, s4
452:              bltu         t0, a7, 458f
                  srai         s10, s11, 19
                  slti         s6, s6, -893
                  or           s11, gp, t0
                  beq          a5, sp, 463f
                  or           t3, t3, s6
458:              or           s4, s6, s5
                  auipc        a5, 848233
                  xori         a6, s6, 880
                  sll          a7, s0, t3
                  sra          t6, a4, t6
463:              xor          t1, s0, t4
                  srl          a3, a0, t1
                  sra          a1, s1, s0
                  ori          a7, sp, -1201
                  xori         s8, t6, -1761
                  bge          ra, a1, 484f
                  srl          s2, s9, a1
                  bne          s3, a1, 490f
                  sltu         ra, s11, t4
                  bgeu         zero, s8, 477f
                  ori          a6, a2, 493
                  ori          t0, t5, 1409
                  bltu         tp, tp, 483f
                  sltiu        s5, s6, 654
477:              add          s11, s7, a2
                  bge          s5, t6, 485f
                  srl          zero, tp, a2
                  ori          t1, zero, -1123
                  sltiu        a1, t5, -758
                  blt          s2, a5, 501f
483:              nop
484:              srl          ra, t1, a4
485:              lui          s2, 447
                  andi         gp, a0, -1495
                  bne          ra, tp, 507f
                  slti         a3, a6, 285
                  srli         gp, zero, 21
490:              lui          tp, 289585
                  beq          a5, gp, 495f
                  nop
                  bne          t3, t0, 510f
                  xor          t3, t1, s9
495:              slt          s0, s1, s9
                  sltiu        tp, s7, 616
                  andi         sp, sp, -1119
                  srl          s5, gp, t4
                  sub          t1, t6, s5
                  andi         s11, a7, -1868
501:              srl          zero, a4, t0
                  sll          t3, t0, a0
                  srai         tp, a2, 1
                  or           s8, s0, s9
                  nop
                  addi         s6, s10, -1236
507:              blt          t6, s1, 512f
                  srl          s3, a0, s2
                  bgeu         tp, s7, 529f
510:              sltu         tp, t0, a2
                  beq          a5, t2, 518f
512:              nop
                  bgeu         s8, a3, 520f
                  add          s4, t4, a2
                  bne          a2, ra, 518f
                  add          s6, s7, a3
                  sltiu        sp, s10, -1060
518:              sltu         gp, t4, t1
                  ori          s1, t1, -1318
520:              sub          s6, s7, s0
                  sub          a7, s0, s0
                  sltu         ra, t4, s10
                  sll          t6, a3, s10
                  beq          s2, a7, 528f
                  bltu         s11, s11, 539f
                  sub          s0, ra, a1
                  and          t4, t0, t5
528:              or           a7, a1, a4
529:              sll          s11, t0, s3
                  slli         t5, t1, 25
                  slt          t6, s6, s4
                  bgeu         tp, a3, 536f
                  slt          t5, s3, gp
                  slti         a1, a1, 358
                  xori         t5, a5, -893
536:              auipc        s1, 121936
                  add          gp, t6, a0
                  slli         s9, s10, 12
539:              slt          gp, s3, s5
                  bgeu         s4, t1, 551f
                  lui          a6, 852660
                  add          s2, a5, s10
                  bltu         gp, a1, 549f
                  and          t1, s0, a2
                  srl          s4, a3, t4
                  or           s6, s11, t4
                  addi         tp, s8, -1604
                  sltu         tp, t3, s8
549:              srl          s9, s5, t4
                  beq          t6, s5, 560f
551:              bge          t1, s4, 563f
                  srl          s9, gp, s0
                  auipc        s1, 191313
                  add          s3, zero, a2
                  blt          s0, sp, 561f
                  lui          s9, 835360
                  srli         s3, t5, 19
                  add          t5, t1, t6
                  slli         s2, t5, 24
560:              bne          gp, sp, 561f
561:              sltu         s9, s4, t3
                  slli         zero, a2, 29
563:              or           t3, a2, s2
                  srl          s11, t4, s6
                  sltu         s11, s1, a4
                  addi         sp, s5, -1296
                  bltu         s9, s2, 572f
                  sll          s9, gp, a3
                  srli         a5, s6, 1
                  bltu         gp, s8, 577f
                  srl          tp, s0, t5
572:              sub          s10, zero, t5
                  bne          s11, s1, 580f
                  slli         s9, a6, 1
                  sub          zero, t6, s9
                  bne          tp, a6, 588f
577:              sltiu        t4, s7, 322
                  bne          t0, t0, 589f
                  or           t4, tp, s3
580:              sub          tp, s9, a3
                  add          s4, t4, s5
                  srai         s8, s3, 28
                  srl          sp, s10, a3
                  addi         s9, s8, 742
                  auipc        t0, 897952
                  bne          s11, s9, 590f
                  and          t6, s2, a1
588:              srl          a6, s9, tp
589:              srl          s8, a0, s4
590:              slli         s4, s7, 18
                  sltiu        t6, s2, 1107
                  sra          s2, tp, s9
                  xor          s5, s1, gp
                  andi         a5, s3, -1927
                  or           t4, ra, s8
                  bgeu         gp, t2, 600f
                  sltiu        s2, a5, -75
                  andi         tp, s10, -1257
                  bgeu         tp, s5, 604f
600:              bltu         t6, sp, 620f
                  srl          t6, a0, s11
                  srli         s9, t4, 9
                  sub          s4, t1, t3
604:              bgeu         tp, s0, 611f
                  sltiu        a6, a5, -2029
                  slt          s6, t0, a6
                  addi         a5, sp, -2041
                  nop
                  and          ra, s6, s9
                  srai         s1, ra, 14
611:              and          t0, a6, a1
                  xori         a4, s8, -959
                  andi         s9, s7, 358
                  sra          ra, ra, ra
                  ori          a3, a5, 486
                  srli         s9, a2, 16
                  beq          sp, t6, 636f
                  sra          s8, sp, s8
                  bge          s4, t2, 626f
620:              lui          sp, 635082
                  slt          s6, s11, a0
                  bge          t6, a5, 625f
                  sub          s2, s7, t2
                  slli         a4, s3, 3
625:              xor          a0, ra, s5
626:              slt          t3, t5, a4
                  lui          a0, 807597
                  sltiu        t6, s3, -1881
                  beq          s2, t3, 635f
                  sltu         s8, a7, s4
                  srai         a0, gp, 25
                  sub          s10, s4, t5
                  srl          zero, a2, s2
                  bge          s3, a3, 639f
635:              sll          t6, a7, a1
636:              sltu         a4, s2, s6
                  slt          a7, s2, a0
                  xor          s6, s4, t6
639:              sub          s1, sp, s7
                  and          s4, t1, a6
                  xori         a4, a5, 626
                  bne          a6, a0, 662f
                  andi         tp, s0, 1606
                  auipc        sp, 943443
                  bge          zero, zero, 656f
                  sub          a6, s5, s2
                  slli         s0, t0, 26
                  sra          a6, gp, a3
                  or           t4, s6, s8
                  blt          s8, s3, 658f
                  srl          a6, gp, a5
                  sub          a1, s6, a4
                  sltiu        s2, a6, -403
                  srli         tp, t6, 28
                  add          s1, a7, t0
656:              or           s5, s8, s10
                  srli         a1, a5, 16
658:              slt          a4, s3, t6
                  sra          s10, s0, a3
                  blt          t1, t5, 679f
                  slt          a6, a1, a2
662:              nop
                  slti         zero, s3, 398
                  sll          a1, t3, t5
                  sltu         a4, a0, t1
                  sra          s9, s10, a5
                  blt          t6, s10, 687f
                  sll          s0, a5, ra
                  sub          s3, a0, t0
                  auipc        a1, 376
                  blt          s1, zero, 675f
                  ori          s4, s10, 1893
                  sltiu        gp, s2, 951
                  slti         a0, t3, -2016
675:              auipc        s3, 390428
                  bltu         t6, s5, 693f
                  bne          a4, t2, 694f
                  blt          t6, s4, 692f
679:              sra          ra, a2, t6
                  slti         a6, t2, 810
                  sltu         t5, gp, t0
                  sltiu        a6, a1, 1994
                  bne          s6, s6, 699f
                  bgeu         ra, a6, 688f
                  srai         s6, a4, 4
                  lui          t3, 610187
687:              lui          ra, 1021924
688:              sll          s10, s9, s1
                  srli         s6, a3, 17
                  sltu         a3, t3, t0
                  addi         a0, a0, -1765
692:              srl          s6, a3, s11
693:              srl          a3, tp, a0
694:              ori          s2, ra, -1237
                  bne          t2, a3, 705f
                  srl          t5, a1, s11
                  bgeu         tp, s1, 708f
                  slt          s10, a4, s8
699:              blt          gp, s4, 710f
                  auipc        a7, 716601
                  sub          s10, t5, a7
                  beq          s2, a5, 721f
                  addi         zero, s4, 1798
                  bne          s8, t0, 724f
705:              bgeu         a6, a5, 709f
                  blt          s11, s0, 720f
                  bltu         a3, a1, 715f
708:              sub          s3, gp, t2
709:              srai         a5, sp, 21
710:              bltu         a5, s10, 717f
                  bge          tp, s9, 716f
                  xor          s1, zero, s0
                  bge          sp, t0, 720f
                  sltu         s6, s2, a7
715:              sra          a6, zero, a0
716:              lui          s5, 795322
717:              andi         s11, s9, 1386
                  sltiu        t5, s9, -1123
                  srl          s9, t3, a7
720:              lui          a5, 554434
721:              bgeu         t5, a5, 726f
                  bgeu         a5, s11, 726f
                  bgeu         t4, a6, 724f
724:              bgeu         t0, a6, 744f
                  slt          t0, zero, s2
726:              lui          s4, 869369
                  xor          a5, s8, t4
                  slt          ra, s5, a4
                  slti         sp, t1, 579
                  xori         a6, s8, 1899
                  bge          a4, a7, 735f
                  auipc        gp, 677588
                  lui          t5, 361758
                  sll          s5, s8, s5
735:              slt          zero, t1, s7
                  nop
                  bgeu         ra, a5, 749f
                  ori          sp, t0, 356
                  and          a0, a5, a5
                  add          t0, t5, gp
                  beq          s10, s2, 746f
                  addi         t6, a3, -515
                  sll          s11, tp, t6
744:              bgeu         s2, a2, 763f
                  bne          a4, gp, 762f
746:              srai         s0, a4, 12
                  add          gp, s6, t1
                  xor          a1, s9, a4
749:              slli         s4, a5, 12
                  lui          a0, 1024204
                  xor          t5, s7, a0
                  bltu         t2, zero, 758f
                  slti         t5, a2, 1141
                  bne          t2, s8, 758f
                  ori          s2, a4, -113
                  or           s1, s11, s3
                  andi         a6, a6, -519
758:              nop
                  ori          a6, t2, 1956
                  srai         gp, s4, 23
                  addi         s1, a7, 545
762:              bgeu         t2, a3, 779f
763:              xor          zero, t0, s9
                  sltu         s10, t2, t4
                  bgeu         a3, a2, 785f
                  andi         a1, sp, -1542
                  beq          t0, t0, 783f
                  add          a3, s10, zero
                  ori          t6, t3, 1667
                  xori         t3, s3, 2047
                  bge          a5, s7, 777f
                  addi         s6, s1, 1559
                  ori          zero, t0, 258
                  sltiu        s5, s0, 142
                  sltu         a1, t4, s10
                  slti         zero, a5, -1818
777:              add          s5, t4, a3
                  blt          s11, s4, 781f
779:              srl          s8, t3, t5
                  bgeu         s8, a0, 787f
781:              and          s2, zero, t4
                  or           s9, a5, s2
783:              bne          a6, t1, 790f
                  bne          gp, tp, 796f
785:              sra          a0, s10, s10
                  sll          s8, t2, a5
787:              slli         a1, t0, 15
                  and          s9, a2, s1
                  srl          s1, t1, s1
790:              slli         a6, s11, 30
                  bltu         t4, tp, 795f
                  and          ra, a4, ra
                  srai         a4, a7, 19
                  slti         s10, a4, 1532
795:              xor          t1, s5, a0
796:              auipc        a7, 937914
                  auipc        a5, 72804
                  xor          tp, sp, a4
                  xori         s3, s2, -1789
                  ori          s0, sp, 754
                  andi         s0, a5, 315
                  sra          a5, a4, t0
                  beq          s5, a1, 813f
                  nop
                  or           t6, ra, s9
                  or           a6, s0, a6
                  sll          t4, s3, t1
                  and          s6, s10, a6
                  auipc        s2, 864225
                  ori          s6, t5, 519
                  sll          a0, s5, t6
                  srli         a4, a0, 5
813:              sltu         a6, s1, t3
                  slli         t6, a5, 27
                  and          a4, s5, a4
                  andi         s3, t3, -1720
                  xori         a3, sp, 1062
                  sltiu        t1, zero, 1559
                  srli         a3, s2, 29
                  beq          s2, s2, 823f
                  bltu         gp, s8, 833f
                  lui          a6, 531039
823:              slti         a4, a7, -1907
                  srl          s8, s0, a6
                  andi         s1, s3, 1713
                  nop
                  beq          s1, a3, 832f
                  xori         a3, s0, -1001
                  bgeu         a7, a1, 833f
                  bne          zero, a2, 847f
                  bne          a2, s6, 838f
832:              addi         t4, t2, 1437
833:              ori          t3, s8, 1807
                  slli         a0, s7, 29
                  slt          a1, tp, s10
                  ori          s6, tp, 2004
                  blt          s2, s10, 842f
838:              srli         s11, t2, 15
                  srl          a4, gp, a5
                  xor          s5, t5, a3
                  auipc        a5, 861352
842:              xor          s11, tp, t6
                  or           t1, sp, s7
                  srl          a0, a3, a3
                  xor          t3, a2, s10
                  blt          s11, a4, 853f
847:              bge          a1, t6, 859f
                  xori         s4, s3, -125
                  srli         t6, a2, 17
                  andi         t6, s7, -113
                  srai         t3, zero, 13
                  sub          t4, s4, t5
853:              andi         s9, a6, -1114
                  sltiu        s11, a4, -583
                  lui          sp, 762139
                  andi         tp, s6, -1238
                  lui          t5, 440799
                  blt          a6, gp, 865f
859:              addi         ra, s5, -311
                  sra          s4, s3, a5
                  or           a5, s2, zero
                  addi         s6, a4, -1944
                  srl          s0, zero, s4
                  or           a7, t4, t5
865:              sra          a5, gp, tp
                  or           s11, a0, s6
                  bne          s6, t0, 884f
                  sub          s3, s1, t5
                  sub          t3, s6, s11
                  sra          s10, s1, t2
                  auipc        s4, 762021
                  slli         t4, tp, 2
                  add          s3, a4, s5
                  bne          a0, a3, 875f
875:              auipc        a3, 836673
                  bltu         zero, a3, 887f
                  lui          s2, 445864
                  and          tp, s4, t6
                  slli         s0, t0, 10
                  blt          s11, t4, 885f
                  add          tp, t4, s5
                  xori         ra, s3, -951
                  ori          t3, s5, 646
884:              and          ra, s11, sp
885:              blt          s4, s6, 905f
                  srai         a1, a2, 30
887:              sll          s4, t2, sp
                  slt          t1, s8, a4
                  sltiu        zero, s4, -844
                  slli         sp, s11, 14
                  srli         a0, s6, 15
                  ori          a0, a2, 1077
                  bltu         a3, s3, 897f
                  andi         a0, a7, -1025
                  sub          a7, t0, s7
                  addi         t0, s7, -1981
897:              bltu         s6, s3, 913f
                  bltu         a6, sp, 918f
                  slti         gp, a0, 582
                  slli         a4, a3, 26
                  slli         s8, s6, 29
                  nop
                  bgeu         s8, a0, 907f
                  or           t6, s3, a5
905:              nop
                  add          s5, s0, t2
907:              srai         a6, t3, 3
                  slti         zero, s0, 1825
                  srl          s8, a6, s6
                  bge          a5, a0, 930f
                  xori         a0, t0, 362
                  andi         s3, s1, -948
913:              lui          ra, 84293
                  bltu         s3, t0, 920f
                  srli         s3, a5, 12
                  beq          s8, s11, 930f
                  lui          s1, 115645
918:              xor          s8, tp, s6
                  bne          t4, t5, 926f
920:              bge          a1, a3, 939f
                  beq          t6, s1, 940f
                  xor          s5, a4, a4
                  sltu         gp, s8, t2
                  sltiu        s0, s9, -582
                  andi         s1, s6, -551
926:              srli         a6, a2, 16
                  xor          zero, a5, tp
                  bltu         t4, a4, 934f
                  andi         gp, s1, -153
930:              sll          a7, a6, a1
                  bltu         a7, t5, 939f
                  beq          s11, s5, 943f
                  srl          s0, a2, zero
934:              sub          s5, gp, tp
                  srli         tp, ra, 6
                  and          s9, s3, s0
                  sll          gp, s7, zero
                  bltu         t5, a6, 955f
939:              xori         s9, t4, 1985
940:              sub          s6, s5, s10
                  bge          t3, s0, 949f
                  sra          s0, sp, a0
943:              nop
                  sll          s5, a2, tp
                  xor          ra, s9, s3
                  bltu         a2, s0, 953f
                  sub          gp, s3, t6
                  or           a7, t1, t0
949:              beq          a7, zero, 955f
                  andi         t0, a2, 1958
                  ori          t1, t3, -452
                  xor          s5, t6, t5
953:              bge          ra, t5, 965f
                  bne          s8, s6, 971f
955:              beq          ra, s1, 959f
                  blt          s7, s10, 961f
                  beq          s9, zero, 964f
                  beq          s3, t0, 977f
959:              sub          zero, a6, s9
                  srli         t3, s3, 0
961:              sll          s2, ra, a2
                  srai         a0, s10, 1
                  add          a4, a4, s1
964:              nop
965:              sub          ra, s6, s7
                  auipc        s8, 92170
                  bgeu         t6, zero, 973f
                  beq          s8, a0, 988f
                  beq          a2, a4, 976f
                  slt          a0, zero, t6
971:              srl          s11, gp, t5
                  bge          s2, s0, 982f
973:              andi         zero, t0, 193
                  srli         a0, s6, 4
                  andi         t3, s7, 1172
976:              xori         a6, s10, 1846
977:              sll          t5, ra, t0
                  bltu         sp, s2, 983f
                  ori          a6, s7, 1818
                  add          t4, t0, a5
                  addi         s11, s8, 1090
982:              sub          s4, t6, s5
983:              blt          s0, a0, 994f
                  nop
                  andi         s9, a1, 1242
                  sub          s10, s2, t3
                  slti         a1, t2, -1016
988:              slli         a6, gp, 16
                  srli         tp, t1, 16
                  slt          s5, s11, a0
                  bne          s4, s7, 995f
                  bne          s5, gp, 1012f
                  bgeu         a6, gp, 994f
994:              ori          t6, s3, -1403
995:              nop
                  sub          s5, a4, s9
                  bgeu         a7, s1, 1004f
                  srl          s2, s4, t2
                  bne          tp, s0, 1018f
                  bgeu         s4, s10, 1020f
                  lui          t6, 812312
                  and          s5, a0, s3
                  andi         a5, s9, -1243
1004:             slti         a3, s6, 1479
                  nop
                  sub          t0, a5, a7
                  andi         a4, t6, -1927
                  bne          tp, s9, 1024f
                  slti         s1, a2, 1126
                  bltu         s11, s2, 1022f
                  slt          zero, a1, gp
1012:             beq          t0, s3, 1017f
                  sll          s3, t2, s6
                  srai         s9, s11, 3
                  andi         tp, sp, 1916
                  andi         s3, s8, 63
1017:             srli         s5, s2, 21
1018:             srli         a6, t4, 23
                  lui          s10, 6128
1020:             beq          s3, s7, 1023f
                  and          a3, s1, a7
1022:             bgeu         s9, s4, 1026f
1023:             bge          s8, s10, 1037f
1024:             or           a7, t5, t6
                  addi         a0, s1, -978
1026:             ori          a0, a4, -1968
                  srai         s0, t4, 4
                  bne          t0, a7, 1039f
                  auipc        a0, 1041211
                  blt          gp, s11, 1034f
                  andi         ra, s4, 1677
                  andi         s0, t1, -804
                  srai         s0, s7, 20
1034:             lui          t6, 327175
                  nop
                  la           a5, region_0+972 #start riscv_load_store_rand_instr_stream_19
                  slt          s8, gp, a0
                  sb           t0, -21(a5)
                  lbu          s6, -10(a5)
                  lhu          s4, -24(a5)
                  lb           a3, 14(a5)
                  sb           s9, -53(a5)
                  sltiu        zero, a6, 1394
                  lbu          t3, 1(a5)
                  slli         s6, a5, 4
                  slli         t0, a0, 19
                  sra          s1, a3, s9
                  lbu          a4, -19(a5)
                  xor          sp, t0, tp
                  srli         tp, a0, 5
                  lbu          s2, -14(a5)
                  srli         s5, t5, 12
                  lb           t6, 14(a5)
                  srai         s0, s10, 5
                  lh           s6, 58(a5)
                  srai         zero, t3, 6
                  lbu          t0, 51(a5)
                  sll          s2, s4, s1
                  lhu          s9, 18(a5) #end riscv_load_store_rand_instr_stream_19
                  auipc        s9, 713262
1037:             srli         a6, s1, 17
                  and          gp, s8, t4
1039:             or           a3, zero, t3
                  sub          t4, zero, s4
                  sll          s11, s1, t1
                  sltu         s0, t0, sp
                  sll          s1, zero, s8
                  sltiu        tp, s0, -1126
                  and          s11, a2, s6
                  and          s5, a7, a6
                  xor          s9, s3, s2
                  add          s5, ra, t5
                  srl          s3, a2, s0
                  auipc        s1, 768660
                  add          s8, zero, a2
                  blt          s7, t0, 1058f
                  ori          s4, zero, -545
                  addi         s9, s8, -989
                  addi         t1, a2, 249
                  or           t4, t0, gp
                  lui          s10, 584812
1058:             bgeu         ra, sp, 1074f
                  sltu         s0, ra, s7
                  xor          s1, a7, t5
                  srli         a3, s11, 7
                  slti         ra, s0, 1234
                  beq          t6, s10, 1064f
1064:             bltu         a2, s7, 1074f
                  sra          a3, s1, s9
                  add          a5, a2, a7
                  andi         a0, s10, -975
                  slt          ra, s3, s9
                  sub          s8, a5, sp
                  addi         t4, t5, -1494
                  nop
                  sra          t6, a6, t2
                  sll          ra, s6, s11
1074:             blt          t5, a2, 1077f
                  slli         s10, s5, 14
                  bne          zero, t2, 1080f
1077:             srli         s1, a3, 3
                  bgeu         s10, a1, 1089f
                  srai         s10, s6, 17
1080:             xor          tp, t0, zero
                  bgeu         s2, a7, 1088f
                  ori          t0, s6, 904
                  and          s2, s6, t1
                  bltu         tp, a1, 1088f
                  xori         s1, t4, -1459
                  or           s9, t4, a7
                  bgeu         s5, s5, 1101f
1088:             add          a0, gp, s10
1089:             ori          s11, a2, 1091
                  srai         s10, a1, 16
                  slti         s3, a0, -406
                  blt          s1, s9, 1097f
                  add          a6, s2, s3
                  andi         a3, ra, -1713
                  srli         t5, s11, 26
                  slti         a6, t3, -133
1097:             xori         s3, t3, 1524
                  nop
                  sra          s1, t5, s11
                  addi         s11, s8, 724
1101:             or           t3, s10, s1
                  slti         s5, t3, -699
                  lui          a1, 487960
                  srai         sp, s10, 4
                  sltu         s11, a4, a4
                  sra          s11, a6, s10
                  xor          zero, t5, zero
                  srl          s4, t4, a0
                  blt          s8, s6, 1128f
                  sll          t1, s3, t6
                  xor          zero, s11, a1
                  sltu         a6, s2, a4
                  lui          tp, 535854
                  sra          s6, a7, s8
                  or           gp, s5, t4
                  slli         t6, tp, 29
                  xor          a5, a3, t0
                  slt          a3, a4, a3
                  sra          t4, s8, s2
                  andi         s0, s5, 1689
                  srl          s8, a4, ra
                  sltiu        s2, s5, 163
                  and          a7, s4, a3
                  blt          t0, sp, 1136f
                  ori          ra, a3, -656
                  srl          a3, t0, s8
                  ori          s3, a5, -1343
1128:             blt          a2, t3, 1148f
                  addi         t0, t5, 12
                  beq          s2, a7, 1149f
                  and          s5, a2, gp
                  ori          sp, s7, -1189
                  and          ra, a5, s7
                  slli         a0, s1, 5
                  lui          t3, 850663
1136:             lui          a1, 261001
                  beq          a7, a0, 1148f
                  sltu         ra, s3, s2
                  sra          s4, ra, ra
                  sltu         sp, s6, a6
                  and          t3, a0, s4
                  srl          a7, s10, s1
                  sltiu        a3, a2, 342
                  slt          t5, s9, a0
                  andi         s0, sp, -1395
                  nop
                  sub          s6, s3, gp
1148:             addi         s3, t1, -977
1149:             or           gp, s2, tp
                  sub          s0, gp, s4
                  or           ra, sp, t0
                  beq          t2, s8, 1158f
                  nop
                  bltu         s8, sp, 1158f
                  ori          s0, s7, -181
                  bge          t0, t1, 1160f
                  sltiu        s9, a6, 2013
1158:             slt          s10, s8, s0
                  blt          tp, tp, 1164f
1160:             slt          a3, s9, ra
                  or           a6, t3, t0
                  sra          zero, s8, a5
                  xor          a4, tp, s3
1164:             bge          a1, t2, 1184f
                  bltu         s2, t1, 1172f
                  or           tp, t6, s11
                  lui          a7, 1026383
                  lui          a6, 954707
                  beq          a0, gp, 1189f
                  slt          t4, t5, a2
                  add          tp, a3, a1
1172:             addi         sp, a2, -985
                  bltu         t1, a2, 1178f
                  add          s8, a4, t3
                  bgeu         s8, a5, 1187f
                  add          s4, gp, a3
                  addi         s8, s1, -810
1178:             slti         t5, t1, 1226
                  andi         s6, t5, 1221
                  addi         s3, gp, 55
                  srl          t1, ra, zero
                  and          t3, s1, ra
                  beq          gp, a0, 1200f
1184:             slti         t4, a7, 906
                  nop
                  xori         s8, a3, 428
1187:             andi         a1, s3, -1324
                  sltu         s4, a7, t2
1189:             and          s1, sp, zero
                  ori          s8, a1, -1242
                  srai         s4, s8, 25
                  addi         s8, tp, 1189
                  srai         a7, s3, 4
                  slli         ra, s3, 31
                  sll          a0, t4, s1
                  beq          s5, gp, 1203f
                  sub          s11, t4, s7
                  xori         a0, s5, 208
                  bltu         gp, a3, 1207f
1200:             and          tp, s10, s4
                  addi         ra, s5, 699
                  bgeu         s1, a5, 1219f
1203:             srai         s8, ra, 0
                  addi         t1, zero, -1045
                  add          s4, t0, a3
                  nop
1207:             slt          gp, a2, t5
                  bgeu         a6, t0, 1215f
                  slti         a7, s10, -204
                  sll          t5, s4, zero
                  add          a1, t2, s8
                  add          t6, ra, s11
                  sub          a6, a5, s9
                  srl          a7, a3, ra
1215:             or           s3, a0, a5
                  ori          a6, t5, 1619
                  bltu         s1, s10, 1221f
                  lui          s8, 1040502
                  la           sp, region_1+360 #start riscv_load_store_rand_instr_stream_16
                  lh           s9, -18(sp)
                  lbu          s0, -23(sp)
                  sll          t1, sp, s2
                  lb           t4, 3(sp)
                  lb           s8, 29(sp)
                  or           tp, s2, a0
                  xor          s1, t6, s1
                  sb           s9, -19(sp)
                  and          a5, s2, a6
                  srli         tp, sp, 30
                  ori          a0, a5, 1309
                  srl          a0, s10, t0
                  lbu          zero, -32(sp)
                  sb           s9, 18(sp)
                  slt          a4, a3, s10
                  slti         s11, a0, 597
                  lb           s0, -49(sp)
                  lb           t4, -51(sp)
                  lb           t0, 33(sp)
                  sltiu        a7, s2, -77
                  or           t5, a4, a6
                  lb           s8, -7(sp)
                  srai         s1, t4, 25
                  lh           gp, 62(sp)
                  addi         t1, s9, 1405
                  sh           a4, -54(sp)
                  lbu          a0, -35(sp)
                  auipc        t0, 581377
                  lbu          a7, -9(sp)
                  lb           t5, 30(sp) #end riscv_load_store_rand_instr_stream_16
1219:             xori         a6, a5, -922
                  sltu         s3, gp, a3
1221:             nop
                  nop
                  srl          a0, a6, t3
                  slti         a6, a3, 1677
                  bne          t6, s5, 1228f
                  addi         a3, t4, -210
                  lui          ra, 751057
1228:             slli         s9, s8, 29
                  bge          s1, s5, 1245f
                  add          t0, a5, s8
                  bgeu         s0, s8, 1235f
                  beq          t5, a6, 1251f
                  bge          s11, s6, 1237f
                  nop
1235:             addi         t6, t1, -1391
                  sub          s11, a3, t5
1237:             add          sp, a5, t5
                  xor          t1, zero, s5
                  and          ra, a3, s7
                  or           sp, a3, s10
                  auipc        s9, 139951
                  ori          sp, t1, -612
                  blt          a7, a7, 1249f
                  lui          s11, 509831
1245:             bne          t1, t3, 1256f
                  blt          a2, a5, 1251f
                  sra          s6, a7, a3
                  slt          s5, a3, ra
1249:             slti         a0, t2, 1294
                  srl          s0, s0, s5
1251:             addi         s8, ra, 634
                  add          a5, a2, a5
                  srli         s9, t6, 18
                  srli         t5, t5, 14
                  sltiu        a5, s2, 377
1256:             slli         s6, t3, 20
                  xor          s2, zero, s10
                  bltu         a6, t2, 1275f
                  bgeu         s5, s2, 1267f
                  sra          s4, s1, s0
                  sll          a5, a4, s10
                  bltu         s11, s7, 1263f
1263:             sltiu        a6, ra, -525
                  sltiu        s10, a3, -303
                  sra          s4, t6, s2
                  bgeu         s10, gp, 1278f
1267:             srl          s2, zero, gp
                  srl          s10, t1, a3
                  auipc        s4, 523437
                  lui          ra, 572034
                  andi         s10, a7, 1045
                  slti         s8, s10, -1309
                  srai         a5, s1, 11
                  beq          t2, ra, 1279f
1275:             slt          s2, a5, a1
                  xori         s0, a6, 1706
                  nop
1278:             srai         t6, s7, 29
1279:             bne          s6, a7, 1299f
                  bne          s0, a4, 1287f
                  auipc        tp, 644039
                  sltiu        tp, t2, 1829
                  bne          a7, t5, 1300f
                  sltiu        ra, s10, 1266
                  slli         a1, s9, 25
                  bne          t2, a5, 1305f
1287:             srl          zero, a4, zero
                  and          t0, a7, s3
                  xor          t6, a0, gp
                  add          t4, t4, t0
                  slli         a5, tp, 0
                  xor          s3, t0, t4
                  slli         s6, s10, 24
                  slti         s0, gp, -1867
                  slt          t6, t2, s4
                  slti         s0, t3, 600
                  ori          s0, s9, 1698
                  nop
1299:             srai         a4, a6, 18
1300:             nop
                  srl          s6, s11, gp
                  xor          s2, s10, s6
                  lui          a3, 624137
                  bge          t2, a6, 1324f
1305:             addi         a7, t4, -1656
                  sltu         gp, a6, a0
                  andi         ra, t5, 1175
                  sltu         s8, a7, s5
                  sltu         gp, s6, t0
                  add          s8, a6, s10
                  addi         t6, t1, -1743
                  andi         tp, s2, -1452
                  bltu         a4, s4, 1317f
                  srl          t1, s6, s4
                  lui          s2, 828226
                  nop
1317:             srai         ra, gp, 26
                  bgeu         t2, s7, 1330f
                  bge          a4, a4, 1324f
                  slli         t5, a5, 21
                  andi         a4, t2, 880
                  srl          a7, a3, a4
                  xori         s9, a4, 302
1324:             addi         s9, sp, -280
                  andi         t5, tp, 103
                  slli         tp, s4, 27
                  slli         s6, ra, 15
                  bge          t0, s11, 1335f
                  sra          ra, t5, zero
1330:             nop
                  sll          sp, ra, s10
                  slli         a5, a2, 14
                  srli         a3, s4, 22
                  add          ra, s5, a7
1335:             sltiu        s5, s10, -106
                  ori          gp, a6, -1891
                  and          sp, a0, s1
                  slti         t4, zero, 783
                  auipc        tp, 50991
                  sub          s10, a2, a1
                  sltu         a6, t1, t1
                  slt          a4, a7, t3
                  srai         sp, t1, 17
                  beq          s3, a6, 1358f
                  slt          s3, a5, s1
                  xori         s4, s4, 1306
                  lui          a4, 982822
                  sltiu        s3, gp, -477
                  and          a1, t3, a0
                  ori          sp, t6, 1174
                  sltiu        s6, a2, 1742
                  ori          s5, gp, 376
                  bltu         s2, t5, 1364f
                  beq          t0, s11, 1364f
                  add          t0, s8, tp
                  srli         s5, zero, 31
                  xor          a1, a7, t6
1358:             bgeu         s11, s4, 1365f
                  bgeu         t4, s7, 1379f
                  add          sp, s2, s11
                  bgeu         ra, a1, 1367f
                  sra          t0, s10, t4
                  lui          sp, 892812
1364:             xori         t6, t2, 1478
1365:             or           s4, s5, zero
                  sltiu        t1, a7, -969
1367:             bgeu         s0, s4, 1374f
                  sra          ra, gp, s8
                  blt          s0, t5, 1375f
                  sub          tp, tp, t2
                  sltu         a0, t2, t2
                  ori          a5, s9, 1779
                  sub          tp, s0, a5
1374:             beq          a1, a2, 1377f
1375:             ori          ra, t4, 353
                  sra          s3, t6, ra
1377:             ori          a4, s2, 641
                  srli         t3, s1, 30
1379:             andi         a7, tp, -1064
                  bge          t0, a5, 1388f
                  slt          s11, t2, s0
                  sltu         s4, s1, a4
                  ori          sp, s11, 811
                  andi         t0, t3, -1574
                  srl          a7, s7, s4
                  bne          t1, s2, 1393f
                  sub          s11, s8, t2
1388:             srli         t5, gp, 4
                  beq          a1, a2, 1406f
                  bltu         t1, ra, 1410f
                  or           s8, s7, t1
                  sra          gp, t4, zero
1393:             auipc        s11, 412665
                  sltiu        t6, a3, -1287
                  auipc        s1, 68914
                  add          a6, t4, s1
                  slti         s10, gp, 531
                  or           s9, t4, a2
                  sltu         t0, t6, a3
                  sll          a5, t1, s1
                  beq          tp, s2, 1412f
                  bne          t0, s6, 1421f
                  bgeu         a6, s7, 1408f
                  and          s1, a0, gp
                  ori          a0, t6, -502
1406:             add          s4, zero, t0
                  bne          zero, s3, 1411f
1408:             xor          s0, a3, a7
                  sll          zero, s9, zero
1410:             bge          s0, a3, 1422f
1411:             sltiu        t5, a0, 985
1412:             bltu         ra, t2, 1431f
                  slli         a3, ra, 25
                  auipc        a6, 352778
                  ori          s11, s8, 1828
                  bltu         t5, ra, 1422f
                  lui          s6, 435145
                  slt          t0, t1, a2
                  sra          t1, s6, a0
                  or           s10, tp, t3
1421:             add          a3, t4, gp
1422:             bne          a4, s5, 1423f
1423:             bgeu         s4, t0, 1430f
                  slti         zero, t3, -943
                  nop
                  slli         s4, s0, 28
                  sll          s0, s7, t6
                  and          t4, s8, s2
                  nop
1430:             addi         s1, ra, 1416
1431:             bgeu         gp, t6, 1445f
                  nop
                  and          zero, sp, t5
                  sra          a0, tp, a5
                  auipc        s10, 270856
                  srai         s9, t5, 25
                  lui          a4, 1019788
                  sltu         s3, gp, t1
                  or           a1, a5, sp
                  blt          t6, a3, 1444f
                  sll          t3, t1, s1
                  sub          t0, s10, s9
                  addi         a6, ra, -1979
1444:             or           a7, s2, s9
1445:             slt          t3, s6, s5
                  sll          s8, s2, a3
                  nop
                  bgeu         a7, a4, 1455f
                  slli         t0, zero, 4
                  ori          a6, a1, -566
                  andi         s6, s10, -1279
                  slti         t4, s11, -1367
                  auipc        t3, 669219
                  bge          t3, t4, 1471f
1455:             bne          t3, t3, 1471f
                  lui          t1, 62727
                  bltu         s2, a7, 1462f
                  addi         a7, s0, -1888
                  auipc        s9, 892515
                  srai         s10, s1, 27
                  beq          a6, s5, 1473f
1462:             and          s3, a2, s10
                  andi         s10, tp, -601
                  ori          s10, t5, 1679
                  sra          s6, sp, t5
                  srli         s4, tp, 15
                  bltu         s9, zero, 1474f
                  ori          t4, t0, 51
                  blt          gp, a4, 1489f
                  nop
1471:             sltiu        t5, s10, -1949
                  srl          s8, t3, t1
1473:             and          a7, a2, a3
1474:             nop
                  andi         s8, s9, -1640
                  xor          s0, s9, a6
                  bne          a4, t0, 1481f
                  and          zero, s10, a2
                  bne          t2, t1, 1490f
                  sltu         a6, ra, s0
1481:             srl          s10, a0, s2
                  addi         tp, a5, 690
                  andi         s2, t2, 1720
                  beq          s1, s4, 1488f
                  andi         s6, s10, -555
                  nop
                  andi         s0, s3, -781
1488:             srai         tp, s4, 15
1489:             slt          a5, a3, tp
1490:             srli         t6, s1, 1
                  xor          a1, s3, a3
                  bgeu         a3, gp, 1512f
                  lui          s10, 76955
                  ori          t3, zero, 422
                  and          t0, s7, t6
                  xori         s6, sp, -44
                  lui          t1, 471279
                  slt          s4, zero, a3
                  sltiu        t5, t3, -2009
                  srl          t0, a2, sp
                  sltiu        s3, s1, -1964
                  bne          a1, sp, 1507f
                  bge          t6, ra, 1513f
                  xor          s4, s8, a7
                  srli         a1, tp, 20
                  bge          tp, tp, 1520f
1507:             xor          a1, ra, s10
                  bgeu         t4, s7, 1515f
                  blt          s11, t1, 1520f
                  addi         a7, a4, 1286
                  addi         s2, a7, 884
1512:             slt          a0, s7, t5
1513:             srl          t0, s9, t5
                  slt          a1, s6, s10
1515:             or           s2, gp, a4
                  srli         t0, a6, 9
                  sltiu        s6, t2, -125
                  xor          a4, sp, s6
                  srl          a0, t6, a6
1520:             nop
                  sll          s6, a2, s7
                  andi         a1, a3, 1286
                  addi         s2, s4, -1642
                  auipc        s2, 147450
                  bltu         a4, s3, 1535f
                  sltiu        a0, s0, -1353
                  nop
                  sll          s4, s0, gp
                  bne          s3, s10, 1536f
                  srai         t3, t5, 20
                  slli         a3, a1, 11
                  lui          s1, 911147
                  srli         t5, sp, 19
                  sltiu        s4, s5, -534
1535:             slli         s9, s7, 18
1536:             sub          s6, t1, a6
                  bgeu         s11, sp, 1542f
                  slti         ra, ra, -1588
                  beq          s8, a4, 1555f
                  slli         s3, a2, 26
                  srai         s2, gp, 21
1542:             srai         a3, gp, 11
                  sltiu        a6, a2, 1786
                  bltu         a1, zero, 1555f
                  xori         a1, s6, 1406
                  nop
                  blt          t0, t1, 1567f
                  andi         s2, s9, 1529
                  add          s8, a3, tp
                  sub          s6, s1, s11
                  ori          t1, s11, -1926
                  add          gp, t4, s7
                  sltu         s3, s1, s5
                  bgeu         a2, s0, 1574f
1555:             bne          t3, s1, 1561f
                  ori          t5, s1, -760
                  xor          t5, t2, t4
                  blt          a7, s6, 1562f
                  bgeu         t2, tp, 1564f
                  xori         s1, a3, 1495
1561:             bne          s4, tp, 1573f
1562:             bge          s3, gp, 1582f
                  sll          a1, s8, s5
1564:             xori         s8, s4, -1692
                  sltiu        s0, s5, -862
                  slti         t5, a0, -1674
1567:             sub          a7, s5, s6
                  or           sp, s5, tp
                  ori          t6, ra, 240
                  srai         t0, t5, 31
                  beq          t5, a3, 1578f
                  blt          a4, gp, 1579f
1573:             andi         a4, ra, 1956
1574:             ori          s8, s2, -928
                  andi         t6, s2, 32
                  sll          s6, zero, gp
                  auipc        a0, 657749
1578:             or           s6, s11, t6
1579:             ori          s8, ra, 1199
                  beq          s9, a1, 1599f
                  sra          t3, tp, s3
1582:             beq          a3, s7, 1590f
                  nop
                  addi         sp, a2, 1183
                  and          a5, t4, t6
                  addi         s2, t5, 1119
                  bltu         a4, t6, 1591f
                  ori          a6, a5, 1433
                  auipc        s2, 436163
1590:             sltiu        s5, a7, 863
1591:             sll          a7, s2, a7
                  slt          s2, a6, a0
                  sub          s3, a2, ra
                  nop
                  srl          a5, s9, s8
                  bltu         a0, a3, 1613f
                  andi         t6, t1, 626
                  srl          s2, t1, s1
1599:             srai         t4, tp, 29
                  beq          s10, t5, 1612f
                  nop
                  bgeu         a5, t5, 1606f
                  addi         s5, tp, -1835
                  sub          gp, s2, s10
                  xor          s10, s1, ra
1606:             sra          s8, s9, s8
                  sll          t6, a4, a4
                  sll          s6, t3, s10
                  bge          a4, a2, 1615f
                  ori          s3, t3, -41
                  addi         s11, s2, 1758
1612:             ori          a3, tp, 914
1613:             add          sp, zero, s2
                  or           t0, a1, s3
1615:             srl          s10, s4, t5
                  srai         t4, t5, 17
                  bge          t6, s9, 1618f
1618:             xori         tp, s0, 1677
                  sltu         tp, gp, s4
                  ori          a7, t0, -950
                  sltu         s8, s9, a5
                  sub          gp, sp, s0
                  add          t4, a2, a4
                  nop
                  addi         s11, gp, 933
                  srl          zero, s8, s6
                  srai         a4, a7, 13
                  ori          t4, t1, 1904
                  bgeu         sp, zero, 1632f
                  bgeu         gp, ra, 1649f
                  andi         t0, a6, -267
1632:             addi         a6, s11, -1650
                  sll          t4, s6, gp
                  xor          s0, s10, sp
                  srai         s11, s8, 21
                  addi         t4, s6, 537
                  addi         s5, sp, 1078
                  srli         sp, a3, 16
                  slt          s0, t4, s6
                  sltiu        t6, a1, 2016
                  srai         s8, s11, 20
                  sub          gp, a1, s4
                  beq          t5, t6, 1660f
                  sltiu        a5, t6, -186
                  ori          a4, s10, -174
                  la           sp, region_1+728 #start riscv_load_store_rand_instr_stream_12
                  sh           t5, 12(sp)
                  srai         gp, a4, 28
                  sll          a6, s8, zero
                  add          t4, tp, t0
                  andi         s9, a2, -439
                  or           s1, s9, a5
                  slt          t4, t2, s3
                  lbu          t5, 13(sp)
                  sltu         a3, a4, a1
                  lh           a3, 12(sp)
                  lh           t5, -10(sp)
                  lb           tp, 12(sp)
                  sra          s11, zero, t5
                  lw           a6, -16(sp)
                  sb           t2, 8(sp)
                  lb           t0, 7(sp)
                  lb           t5, -5(sp)
                  slt          t3, s2, s10
                  lh           s1, 2(sp)
                  lb           t3, -7(sp)
                  lb           s9, 14(sp)
                  nop
                  lbu          t4, 9(sp)
                  lh           a6, 8(sp)
                  lb           t4, -1(sp)
                  lhu          s9, 0(sp)
                  sb           s11, 5(sp) #end riscv_load_store_rand_instr_stream_12
                  sll          gp, t5, s1
                  sltu         s8, s7, a0
                  andi         s3, sp, 55
1649:             sltiu        a0, a7, -1932
                  slti         a0, t4, 1652
                  bgeu         a4, s1, 1655f
                  andi         a0, s6, 1323
                  sltu         a1, a1, t2
                  addi         t5, s5, -511
1655:             slli         a5, s10, 4
                  bne          s7, s1, 1661f
                  ori          s8, s10, 333
                  sltiu        s10, t6, -877
                  bltu         s10, a2, 1667f
1660:             slt          a1, s7, t3
1661:             addi         ra, t0, 376
                  bltu         s9, a3, 1673f
                  bge          t5, a1, 1670f
                  bgeu         t4, t3, 1678f
                  bltu         s10, a6, 1669f
                  srl          a5, a3, a3
1667:             auipc        gp, 679154
                  sll          t3, s0, sp
1669:             xor          s2, ra, ra
1670:             sltu         s0, s10, s1
                  srai         t6, t0, 24
                  nop
1673:             slli         s10, a5, 10
                  bgeu         s0, t5, 1680f
                  bge          t6, t4, 1679f
                  sll          s2, a1, s5
                  add          a7, t6, zero
1678:             add          s9, zero, s7
1679:             srli         gp, a2, 29
1680:             or           t0, a4, s3
                  srli         ra, t2, 20
                  beq          sp, s2, 1702f
                  srai         s11, s1, 9
                  srli         a0, s4, 27
                  sltu         t3, s8, a3
                  add          s3, a1, a5
                  and          a7, s9, ra
                  slt          t1, s10, ra
                  srai         s11, s0, 27
                  blt          sp, a3, 1696f
                  nop
                  sra          s3, s6, a4
                  xor          tp, a1, a0
                  beq          s9, s3, 1699f
                  slt          zero, t4, t4
1696:             and          a7, a4, a7
                  bltu         s9, a4, 1704f
                  bgeu         t5, s10, 1699f
1699:             bltu         sp, t3, 1715f
                  xor          s11, t2, zero
                  and          a4, s10, t3
1702:             sub          s5, sp, t0
                  add          a5, t4, s8
1704:             xor          s5, a7, a4
                  sltu         s0, s7, zero
                  ori          t3, a1, 1529
                  srai         gp, s10, 12
                  slt          a0, s11, a1
                  and          a0, a6, t6
                  and          s3, s8, s5
                  andi         a6, a0, -593
                  lui          s11, 160269
                  auipc        a6, 114776
                  sltu         s0, a1, a6
1715:             beq          a7, s2, 1722f
                  bge          a3, zero, 1736f
                  slt          s2, t4, t4
                  nop
                  ori          a0, s0, -1271
                  auipc        t3, 97600
                  blt          tp, a4, 1731f
1722:             bgeu         t2, a4, 1726f
                  ori          ra, s2, 947
                  lui          t4, 51640
                  nop
1726:             srl          ra, s0, s2
                  slli         a7, s7, 27
                  sltiu        a7, ra, 825
                  and          tp, s6, s9
                  auipc        t0, 604831
1731:             srai         s8, a6, 27
                  nop
                  srai         s0, s0, 2
                  addi         ra, s0, -1782
                  slti         t1, s10, -1489
1736:             srai         t6, a1, 31
                  bne          s11, t0, 1754f
                  addi         a4, s0, 394
                  and          s4, t0, t1
                  addi         zero, s10, 1532
                  sltu         a5, s11, s8
                  bge          a4, a6, 1747f
                  slli         s6, a6, 19
                  beq          gp, t0, 1756f
                  blt          s8, s8, 1752f
                  srli         a4, a4, 17
1747:             beq          a6, a6, 1752f
                  sub          s4, zero, s4
                  blt          a3, t0, 1753f
                  add          tp, s10, s1
                  sltiu        s0, a0, -1016
1752:             xor          zero, a1, t2
1753:             sub          t4, t5, s1
1754:             bge          a3, s6, 1771f
                  add          a4, s2, s6
1756:             bltu         a0, t3, 1775f
                  bgeu         s4, t1, 1776f
                  sltu         s8, s3, t5
                  xor          a6, t1, a4
                  sll          a6, s7, zero
                  sra          s2, t6, s0
                  ori          a6, s4, -1022
                  sll          s1, a0, t1
                  blt          a1, s10, 1767f
                  andi         t3, s7, -1543
                  bne          ra, sp, 1777f
1767:             sltu         a0, s0, sp
                  slli         s11, tp, 21
                  xori         t3, a6, -342
                  slli         s4, a2, 18
1771:             ori          t3, ra, -515
                  sub          a3, a2, t3
                  sll          t3, a5, s3
                  bltu         a7, s3, 1786f
1775:             bne          a6, t2, 1795f
1776:             sltu         t5, sp, sp
1777:             sltu         a4, s4, s5
                  and          a0, t3, s7
                  sra          a1, t5, t5
                  bgeu         a2, s10, 1800f
                  sll          a4, s0, s2
                  sll          s6, s0, s9
                  sltiu        gp, a5, 1529
                  xori         s2, s0, -392
                  sltiu        s1, ra, -59
1786:             addi         t5, t6, 1757
                  and          s4, s5, t1
                  auipc        tp, 958623
                  xori         t4, s4, -247
                  bne          a2, s0, 1794f
                  nop
                  sll          zero, s11, t4
                  xori         a3, a2, -1018
1794:             add          a7, s2, a3
1795:             ori          t6, t5, 395
                  bltu         a7, s8, 1803f
                  bge          s0, s4, 1803f
                  xori         a5, t1, 146
                  sub          t1, s2, sp
1800:             srai         tp, s0, 20
                  addi         a0, t3, 35
                  lui          a3, 776483
1803:             xori         t1, s0, 752
                  and          a7, t2, a5
                  bne          t4, t4, 1806f
1806:             or           a5, a5, a2
                  sltu         s1, s10, s5
                  slt          zero, sp, gp
                  xor          sp, t3, s6
                  bltu         s11, t1, 1818f
                  srai         s11, sp, 4
                  bne          a4, a5, 1817f
                  beq          zero, a5, 1820f
                  add          a1, a7, t2
                  sub          s1, t5, t1
                  nop
1817:             bgeu         a2, gp, 1836f
1818:             auipc        a3, 418921
                  sltu         s3, sp, s10
1820:             xori         sp, s9, -771
                  srli         a1, a3, 16
                  bge          tp, t3, 1834f
                  ori          sp, s8, -220
                  beq          a4, gp, 1844f
                  lui          s6, 89031
                  srl          s10, a3, a7
                  blt          t6, t4, 1839f
                  auipc        a4, 10943
                  and          t5, s9, s7
                  srli         a6, a7, 11
                  sltiu        s3, s3, 1905
                  sra          tp, a6, t5
                  or           t6, s3, zero
1834:             slti         s0, s6, -2
                  sltu         s1, sp, s8
1836:             nop
                  auipc        s6, 405611
                  slt          s5, t5, s5
1839:             srai         tp, a2, 8
                  beq          t4, t5, 1847f
                  blt          a6, a7, 1844f
                  addi         t5, s3, 312
                  bne          s9, a6, 1848f
1844:             slli         a7, t4, 19
                  slli         a6, s2, 7
                  slti         t3, a0, -683
1847:             auipc        a7, 121089
1848:             sra          s11, a3, s10
                  xor          t4, s11, a4
                  or           s5, sp, zero
                  lui          s6, 270424
                  nop
                  bltu         a1, s3, 1857f
                  bge          s0, a7, 1870f
                  srai         t1, t4, 29
                  bltu         a4, s5, 1873f
1857:             sra          s11, s6, t6
                  slt          a4, s4, s7
                  bltu         s8, a0, 1865f
                  lui          s10, 144046
                  sub          a6, s8, s0
                  slt          t0, a2, s3
                  srli         gp, t0, 18
                  slti         s4, s11, -1088
1865:             blt          a6, s3, 1869f
                  or           t1, s4, t1
                  blt          s0, s10, 1887f
                  sub          s2, t5, s8
1869:             xori         a7, tp, 220
1870:             bne          t6, t4, 1875f
                  bne          a1, a1, 1890f
                  lui          s2, 1011247
1873:             slti         a5, s9, 1731
                  bne          a2, s8, 1884f
1875:             srl          sp, a6, s7
                  blt          s1, gp, 1880f
                  bgeu         t5, t6, 1884f
                  sltu         a5, s3, tp
                  lui          s6, 163680
1880:             bne          t5, gp, 1891f
                  sra          a3, zero, s9
                  sll          s10, t3, s1
                  sltu         a4, s7, s1
1884:             andi         s4, gp, -1656
                  auipc        s4, 925666
                  andi         s10, a1, 1710
1887:             bgeu         zero, zero, 1901f
                  sltiu        ra, a1, -1714
                  or           sp, a0, a5
1890:             sub          t5, t2, s7
1891:             sltu         s1, t3, a7
                  srl          zero, t6, t1
                  sra          tp, s0, t4
                  xori         a4, s2, -1558
                  bgeu         a4, s1, 1912f
                  andi         s10, s1, -760
                  xor          s10, ra, a6
                  sra          s11, t2, a5
                  slli         t6, a6, 3
                  srli         s10, s6, 15
1901:             slti         s11, gp, -1693
                  sltu         s9, t1, a6
                  sub          sp, t5, a6
                  slti         s11, a3, 1340
                  bltu         s3, s6, 1916f
                  xori         ra, t5, -944
                  bge          t2, a6, 1914f
                  xori         s5, tp, 621
                  ori          tp, s8, 1872
                  beq          s8, s7, 1914f
                  andi         a3, s6, 1860
1912:             bgeu         s5, sp, 1923f
                  bltu         s3, s2, 1932f
1914:             beq          s2, s4, 1933f
                  srli         a6, t5, 27
1916:             add          t1, a7, a5
                  slti         s11, s5, -55
                  sll          s0, t1, t4
                  srli         a3, a5, 16
                  sltiu        tp, t6, -926
                  bgeu         ra, s11, 1927f
                  xori         s8, s1, -889
1923:             srai         a0, t6, 15
                  bltu         s4, s4, 1928f
                  sltiu        s1, s8, -93
                  bge          s3, t0, 1931f
1927:             slti         gp, s6, -1841
1928:             srl          tp, gp, a2
                  auipc        a0, 632857
                  slt          tp, s4, a7
1931:             srai         a6, t3, 24
1932:             slt          a6, a5, s6
1933:             slli         s3, a7, 28
                  beq          s3, s7, 1940f
                  sltiu        s9, sp, -518
                  ori          a3, t6, -1518
                  nop
                  nop
                  or           s9, a1, t3
1940:             beq          t4, t3, 1954f
                  xori         t3, s7, 114
                  sra          s2, a5, tp
                  sll          a1, a2, zero
                  xor          s3, s2, zero
                  sltiu        t1, t6, 466
                  ori          t4, a3, -67
                  bltu         s6, a4, 1967f
                  sltiu        t4, s4, -1890
                  beq          t4, ra, 1957f
                  sra          tp, a3, a3
                  srli         gp, t1, 7
                  andi         s11, t2, 696
                  sra          t1, t0, s3
1954:             nop
                  auipc        s9, 1023369
                  srli         s11, s8, 3
1957:             add          a1, s11, s1
                  slli         t0, s9, 26
                  sra          a7, s0, s11
                  addi         zero, s6, -1727
                  slti         a5, sp, -31
                  auipc        s6, 699959
                  add          s3, s1, t5
                  srl          s6, a3, s8
                  beq          gp, a3, 1970f
                  nop
1967:             slti         t3, s7, -1173
                  srai         s5, t6, 21
                  andi         s1, a7, 1919
1970:             and          s10, s6, s8
                  srli         t5, gp, 27
                  slli         a0, a5, 21
                  sub          t4, s9, gp
                  bge          s10, s4, 1981f
                  addi         sp, s4, 218
                  lui          t0, 675261
                  bne          gp, s5, 1993f
                  and          zero, a1, a1
                  srl          s2, a6, a4
                  ori          a3, a5, 1880
1981:             slt          t1, s4, tp
                  xor          t3, a5, a0
                  andi         t6, a5, -410
                  bltu         s4, zero, 1989f
                  beq          a3, tp, 1988f
                  srli         a5, sp, 11
                  nop
1988:             slt          t6, t0, ra
1989:             sltiu        sp, s11, 1228
                  add          s6, a4, ra
                  beq          s2, t1, 2003f
                  ori          gp, a1, -1323
1993:             auipc        s11, 472060
                  xor          s5, s4, sp
                  ori          s1, t2, 262
                  bge          gp, t4, 2006f
                  sub          s2, t6, s9
                  slt          sp, zero, a2
                  sra          a3, t6, zero
                  ori          tp, s5, 984
                  srl          t0, s2, t2
                  bne          a3, s4, 2006f
2003:             or           t4, t6, a3
                  srl          s11, s8, s4
                  blt          s3, t3, 2009f
2006:             ori          t6, s4, -778
                  slli         t1, a3, 31
                  lui          t0, 420520
2009:             sra          a6, t2, t6
                  srai         a0, sp, 24
                  sltu         t1, t1, ra
                  or           s11, t1, s2
                  srai         a4, s9, 14
                  xor          a1, s6, s8
                  sltiu        s8, t3, 1783
                  slti         a0, ra, -225
                  xori         t6, s7, 1194
                  sll          ra, s6, t3
                  blt          t2, t1, 2026f
                  srai         ra, s1, 13
                  addi         s0, a5, 557
                  srai         t5, a5, 5
                  sra          s3, s9, s6
                  nop
                  add          t5, a7, a0
2026:             slli         t6, s8, 18
                  xor          a3, s11, s5
                  bge          a2, a0, 2045f
                  blt          a3, a3, 2040f
                  sra          t0, sp, s4
                  andi         gp, t0, -161
                  slti         a1, s4, 1239
                  xor          s10, s2, ra
                  addi         a3, a5, -494
                  slti         t6, gp, 723
                  sll          a5, s7, t6
                  beq          t3, a3, 2038f
2038:             andi         s0, s10, 1824
                  addi         a6, t2, 2023
2040:             sra          t3, t5, gp
                  bge          ra, s7, 2058f
                  andi         s6, zero, 1686
                  blt          t1, s5, 2063f
                  nop
2045:             sub          a3, t4, t3
                  slt          t0, t5, t3
                  bge          t3, a2, 2059f
                  sub          s6, s8, s11
                  slli         tp, s8, 10
                  blt          a2, s3, 2070f
                  nop
                  or           s3, t3, gp
                  bltu         s8, s5, 2060f
                  srai         t0, a2, 17
                  slt          s9, t2, s2
                  and          s2, gp, t3
                  ori          a7, s5, 1768
2058:             bltu         s6, s0, 2062f
2059:             nop
2060:             sra          s5, s6, sp
                  xori         t4, a7, 1733
2062:             srai         a7, s6, 0
2063:             sub          s10, sp, a4
                  srl          t1, a7, s4
                  andi         a5, a0, 532
                  andi         tp, t6, -1072
                  slli         s10, s6, 13
                  ori          t3, a7, 1244
                  bltu         a7, s9, 2074f
2070:             srl          t0, s4, tp
                  addi         t5, t0, -147
                  auipc        s6, 200334
                  xor          a3, a1, s1
2074:             sltiu        a4, t0, -258
                  lui          s1, 582976
                  srl          a1, t0, zero
                  xori         t5, t2, 2037
                  bltu         s1, s5, 2095f
                  sltiu        s0, a5, -815
                  bgeu         s3, t1, 2086f
                  slt          tp, s9, s7
                  lui          t1, 936334
                  ori          t6, ra, -146
                  bne          a6, s8, 2091f
                  sltiu        ra, s4, -329
2086:             nop
                  bgeu         s1, gp, 2092f
                  bltu         t4, s0, 2104f
                  add          ra, s1, sp
                  sltiu        t1, t5, 446
2091:             sub          gp, t2, s2
2092:             srl          a7, s7, t5
                  sltu         s10, a4, s4
                  lui          s3, 885168
2095:             sltu         a0, t5, t1
                  blt          ra, s9, 2108f
                  bge          gp, t3, 2108f
                  sra          t6, a2, tp
                  sub          s2, t2, s10
                  andi         a3, tp, 93
                  srai         t4, s7, 24
                  bltu         s6, gp, 2105f
                  auipc        a6, 780969
2104:             slti         tp, a6, 304
2105:             ori          a6, a4, 1718
                  bne          a4, a7, 2125f
                  and          t3, a5, a7
2108:             bltu         s3, t6, 2115f
                  bge          s8, ra, 2113f
                  bgeu         s0, s3, 2124f
                  andi         a6, s9, 114
                  auipc        a3, 113043
2113:             beq          s10, a0, 2117f
                  slli         s6, a0, 24
2115:             bltu         s4, ra, 2120f
                  andi         a6, a2, 449
2117:             and          s5, a1, s7
                  bltu         s1, s10, 2138f
                  ori          sp, s0, 711
2120:             sra          s0, s1, a5
                  xor          s11, s1, s9
                  sll          a1, t1, s7
                  or           s8, s11, a0
2124:             nop
2125:             addi         t6, s8, -33
                  bne          a0, a4, 2133f
                  sltiu        zero, a4, -1437
                  slti         s2, s2, -977
                  and          s2, s11, s10
                  andi         a5, t0, 1904
                  add          a1, s8, s9
                  and          t0, t5, a4
2133:             sll          s10, a6, s11
                  xori         s8, t2, -1197
                  slt          tp, zero, s3
                  bne          t5, s6, 2144f
                  addi         tp, a0, -1478
2138:             sra          s2, s6, a1
                  bltu         s6, s10, 2150f
                  beq          a5, a7, 2159f
                  add          s2, s9, a4
                  addi         t3, a4, 834
                  sltiu        ra, a6, 1441
2144:             auipc        t5, 136830
                  slli         a7, t3, 0
                  sub          t5, gp, s11
                  ori          t3, zero, -1420
                  sub          a1, tp, a5
                  nop
2150:             ori          a4, s5, -924
                  slli         s10, s7, 12
                  bgeu         gp, a4, 2159f
                  sltiu        a1, a6, -1181
                  slti         zero, s0, -1515
                  bgeu         a0, t3, 2161f
                  auipc        a7, 1044455
                  bne          t2, s8, 2174f
                  and          s4, s10, s3
2159:             slt          sp, a7, s1
                  bltu         zero, t1, 2170f
2161:             sub          s0, s7, t4
                  slt          s11, sp, s10
                  xori         s10, a0, 1916
                  andi         s9, s6, -422
                  bgeu         t3, t0, 2177f
                  nop
                  and          s0, sp, t6
                  nop
                  slli         a1, t2, 11
2170:             addi         a5, t3, 560
                  sltiu        zero, zero, 1674
                  bge          zero, a1, 2173f
2173:             srli         gp, a7, 31
2174:             lui          t1, 638721
                  lui          t0, 1005271
                  bgeu         s8, a1, 2180f
2177:             addi         zero, s3, -1283
                  srai         s1, s2, 12
                  xor          a7, s8, s1
2180:             sltu         zero, t3, s0
                  sltu         a5, s10, a3
                  blt          s0, s11, 2202f
                  beq          a0, a3, 2203f
                  sra          a5, s6, s10
                  add          s10, s10, s3
                  add          s11, zero, a6
                  blt          a3, zero, 2198f
                  srai         s11, s1, 8
                  xor          a1, s5, t4
                  lui          s3, 246457
                  slli         s3, a6, 10
                  xori         sp, s1, 1811
                  sltu         s1, s4, t4
                  andi         s5, sp, 1191
                  andi         a1, gp, -20
                  bgeu         sp, sp, 2215f
                  slt          s3, a6, t1
2198:             and          s3, t2, s5
                  addi         a4, gp, 500
                  bgeu         sp, gp, 2220f
                  bltu         s0, a5, 2221f
2202:             beq          s8, tp, 2206f
2203:             beq          s9, s4, 2215f
                  lui          a7, 244070
                  slti         a5, s8, 834
2206:             xor          t5, t6, a6
                  bgeu         t6, s8, 2224f
                  sll          s3, s11, sp
                  srl          s6, a4, a7
                  bgeu         zero, s9, 2216f
                  nop
                  addi         gp, t5, 1763
                  auipc        a5, 82361
                  nop
2215:             sub          a0, t4, t3
2216:             slt          t0, a3, s11
                  la           a1, region_1+1228 #start riscv_load_store_rand_instr_stream_13
                  lb           t6, -564(a1)
                  or           s10, a4, s6
                  ori          gp, sp, 855
                  sb           t6, 762(a1)
                  srli         s9, a2, 28
                  slt          s8, ra, s8
                  lh           s11, -476(a1)
                  sltu         s10, s1, a3
                  lb           s1, -49(a1)
                  or           s5, s2, s3
                  lbu          s3, 407(a1)
                  lb           t6, -1127(a1)
                  sub          zero, a6, s8
                  sll          tp, s5, s7
                  sltu         t0, a2, t1
                  lbu          a0, 445(a1)
                  ori          t0, a2, -524
                  lhu          tp, 176(a1)
                  andi         s3, t6, 2030
                  lbu          s8, -885(a1)
                  addi         s8, s2, 1823
                  nop
                  ori          t1, ra, 445
                  sb           sp, 95(a1)
                  addi         t5, s0, -581
                  lw           a3, 380(a1)
                  sh           s0, -410(a1)
                  lbu          s0, 10(a1)
                  sb           t4, 83(a1)
                  lb           s10, -596(a1)
                  lb           s8, -447(a1)
                  sb           t0, -502(a1)
                  lb           s6, 123(a1)
                  lb           sp, -267(a1)
                  sb           sp, -553(a1)
                  lbu          s0, -828(a1)
                  add          t3, t0, t5
                  sb           s6, -462(a1)
                  sh           a1, 342(a1)
                  sltu         a7, s8, s11
                  andi         gp, s8, 602
                  lb           s9, -905(a1)
                  lbu          s3, 87(a1)
                  xori         s0, t3, 913
                  sb           s3, -17(a1) #end riscv_load_store_rand_instr_stream_13
                  xor          a6, s7, s2
                  srli         s4, t2, 22
                  xor          gp, a5, t3
2220:             addi         zero, t1, 94
2221:             xor          s0, s7, s2
                  add          tp, t5, s4
                  blt          t1, s9, 2237f
2224:             bne          t5, t3, 2228f
                  xori         t3, s3, 614
                  sra          t0, s1, zero
                  slt          a3, s4, s2
2228:             andi         a4, t2, -45
                  andi         t1, a2, 193
                  and          ra, t5, zero
                  nop
                  andi         gp, s1, 1431
                  xori         a4, s2, -235
                  ori          ra, sp, -529
                  sll          t1, s8, a3
                  blt          t6, s8, 2241f
2237:             nop
                  sltiu        a0, s9, 1516
                  and          a6, t6, a4
                  sltu         s8, t2, tp
2241:             srli         sp, s2, 10
                  auipc        a6, 840520
                  addi         gp, s1, -1225
                  sltiu        t5, sp, -72
                  sub          s0, a5, tp
                  beq          s5, s2, 2249f
                  bge          sp, a1, 2253f
                  sll          a0, sp, t2
2249:             sll          t1, s3, s0
                  bne          a6, t3, 2267f
                  lui          sp, 175655
                  or           a4, t1, s6
2253:             sltu         t1, s6, s9
                  xor          s9, s9, a6
                  sub          s2, t2, s4
                  bge          s9, t4, 2272f
                  bltu         t6, gp, 2269f
                  ori          s5, tp, 1088
                  sll          a1, sp, zero
                  ori          a7, t3, 1552
                  addi         a3, s6, -1930
                  slt          sp, s0, s6
                  bltu         a2, a1, 2270f
                  addi         s1, t4, -600
                  slti         t6, a7, 1560
                  sra          s8, a4, a2
2267:             bge          s0, a1, 2268f
2268:             and          t3, a6, a2
2269:             sub          s4, t5, s5
2270:             sub          t3, s1, tp
                  nop
2272:             bltu         a0, a6, 2280f
                  and          s11, sp, t2
                  slti         tp, s2, -509
                  bgeu         sp, s0, 2295f
                  slti         a3, s7, -1508
                  srl          s1, s10, s5
                  bgeu         gp, t2, 2285f
                  bgeu         s9, s10, 2286f
2280:             xori         s9, s10, 64
                  beq          s0, a4, 2300f
                  sltiu        sp, a0, -1914
                  blt          a7, s7, 2288f
                  auipc        s1, 979977
2285:             xor          tp, a0, s11
2286:             xor          a3, s6, s9
                  sub          s8, zero, s11
2288:             beq          s7, t0, 2295f
                  bgeu         t3, s7, 2294f
                  srai         a1, a0, 6
                  sltu         s11, sp, s7
                  xor          a4, s0, a7
                  sra          s0, gp, t4
2294:             blt          a4, s2, 2298f
2295:             sub          gp, s8, s0
                  add          s9, a6, s9
                  auipc        t0, 47818
2298:             sub          s2, ra, s0
                  srl          s4, s7, s2
2300:             blt          t0, s0, 2304f
                  srli         a5, s2, 13
                  srli         t6, t4, 31
                  addi         sp, s10, -487
2304:             bltu         a0, s2, 2315f
                  srai         a0, s6, 13
                  bne          gp, s11, 2316f
                  bne          a7, a6, 2323f
                  add          s2, ra, s4
                  nop
                  lui          a5, 662575
                  bge          a3, t1, 2331f
                  xori         a4, s1, 558
                  sltu         s5, s11, s8
                  lui          t4, 1007352
2315:             sra          s6, a5, s8
2316:             srai         a4, a3, 22
                  sll          s3, a2, s3
                  sub          s1, a2, s0
                  srl          t0, zero, s3
                  ori          s5, tp, -1209
                  beq          s11, ra, 2328f
                  ori          s11, a7, -718
2323:             srl          s4, t6, t3
                  xor          s1, s0, s5
                  sltu         a6, s11, s2
                  sltu         a1, s7, t5
                  slli         t4, s7, 18
2328:             blt          t2, a6, 2332f
                  slti         ra, s6, -1693
                  sub          s11, zero, t6
2331:             xor          t0, a4, s3
2332:             or           t5, a5, a5
                  xori         a7, s3, -307
                  sll          s5, gp, s3
                  andi         s1, t2, -249
                  auipc        a7, 869870
                  and          a5, t0, t1
                  sltu         tp, zero, a0
                  bge          s10, s11, 2346f
                  bge          t6, tp, 2346f
                  srli         s2, a2, 26
                  slti         s9, s0, 657
                  auipc        ra, 95026
                  sltiu        s10, s1, 1003
                  and          tp, s6, ra
2346:             sra          s2, a6, s10
                  auipc        t5, 113316
                  beq          a4, t1, 2359f
                  addi         s6, a7, 220
                  slli         s10, s9, 10
                  ori          gp, t1, 583
                  nop
                  ori          a4, t3, -794
                  sra          s0, a1, a2
                  slt          t1, sp, s0
                  sll          zero, a1, a6
                  beq          zero, s1, 2377f
                  nop
2359:             beq          a6, s5, 2365f
                  sltiu        s9, t4, -1312
                  sltiu        a3, s7, 1537
                  sll          gp, s4, s10
                  srli         a5, a6, 3
                  andi         s8, t6, -745
2365:             bge          t6, t0, 2385f
                  slti         a0, t5, -1107
                  slti         gp, t2, -1038
                  srai         s4, a5, 28
                  add          a6, a2, tp
                  srl          gp, s3, a3
                  andi         a4, s9, 1344
                  srli         t0, tp, 31
                  or           s10, a1, a6
                  slt          t1, ra, t4
                  bltu         s10, s10, 2382f
                  andi         s10, a2, 379
2377:             sll          t0, a1, a3
                  or           gp, t3, s4
                  beq          gp, s11, 2393f
                  beq          t2, s6, 2392f
                  ori          a6, t6, -1912
2382:             bge          zero, s5, 2387f
                  bne          t2, t0, 2395f
                  bge          ra, gp, 2389f
2385:             sll          a7, s0, s6
                  ori          a7, s0, 1686
2387:             ori          a0, s2, 660
                  lui          a6, 784071
2389:             xor          a4, zero, a5
                  srli         s10, s6, 4
                  slti         sp, t3, -175
2392:             andi         s4, a1, 1027
2393:             sltu         a4, a2, t1
                  bgeu         a4, sp, 2413f
2395:             andi         t0, s3, -2014
                  sub          s3, t5, s10
                  srai         s9, t2, 10
                  auipc        s6, 604933
                  lui          s1, 228624
                  add          a1, a2, s6
                  blt          t4, a7, 2402f
2402:             srl          a4, t1, s2
                  srai         s4, s3, 0
                  bgeu         a0, a4, 2421f
                  xor          t3, a4, s11
                  addi         tp, a6, 960
                  bgeu         t1, a1, 2411f
                  auipc        s9, 752974
                  and          s0, a2, a6
                  bge          a1, s8, 2415f
2411:             sll          t0, s7, s8
                  srl          s4, s9, s3
2413:             andi         s6, s7, 285
                  slt          t0, zero, a0
2415:             and          a0, t3, t1
                  beq          t1, s9, 2435f
                  add          s1, s10, t5
                  sltu         s2, s11, t0
                  beq          a6, tp, 2426f
                  sra          t5, a1, ra
2421:             sra          a6, ra, s8
                  add          t4, a3, t3
                  bgeu         tp, tp, 2431f
                  auipc        s1, 564201
                  srl          t4, a5, t3
2426:             bgeu         s8, s9, 2443f
                  sll          s8, sp, s2
                  ori          t4, sp, -1771
                  xor          gp, a0, a3
                  or           s3, t4, s1
2431:             sltiu        gp, a0, 1403
                  sra          t0, sp, t5
                  xori         s6, tp, -1823
                  xor          s10, s2, s6
2435:             add          t0, a6, ra
                  bne          tp, s5, 2439f
                  sll          s9, sp, t2
                  slli         s11, s7, 14
2439:             bge          a4, tp, 2443f
                  slt          s11, s8, s5
                  andi         s3, s10, -1553
                  or           s2, t3, s2
2443:             sub          ra, a6, tp
                  beq          t4, s3, 2454f
                  ori          s4, a3, 1749
                  srl          zero, s9, t3
                  andi         t5, s0, -37
                  xor          a5, a1, s1
                  bltu         s3, s1, 2460f
                  lui          s10, 48191
                  auipc        s4, 1041286
                  and          s6, gp, sp
                  beq          ra, s2, 2457f
2454:             bgeu         gp, s10, 2466f
                  andi         a0, s11, 33
                  bltu         s4, a4, 2473f
2457:             slli         a4, s9, 16
                  bltu         ra, sp, 2472f
                  add          a3, a7, t4
2460:             auipc        a3, 533792
                  add          gp, t0, t0
                  and          t5, s0, s0
                  and          a0, s10, s7
                  bgeu         a3, t0, 2471f
                  bgeu         t2, s0, 2471f
2466:             blt          a3, s1, 2485f
                  addi         s8, s8, -758
                  xori         a4, t1, 362
                  srai         tp, a0, 4
                  xori         t3, s7, -166
2471:             srl          tp, s1, t6
2472:             andi         zero, t1, -813
2473:             slt          sp, s2, s1
                  srl          t1, t0, s7
                  sll          a5, sp, a7
                  sltiu        gp, t2, 1716
                  lui          a7, 956079
                  slt          s0, a6, tp
                  sltu         s11, s3, a4
                  auipc        ra, 424237
                  slti         s8, a0, 602
                  nop
                  srai         s5, tp, 17
                  xori         a7, tp, 1335
2485:             xor          a3, zero, a1
                  auipc        gp, 46909
                  ori          s6, t0, 768
                  nop
                  slt          s1, a2, t0
                  sll          s9, s3, a7
                  beq          a5, t6, 2498f
                  srl          tp, a3, a7
                  nop
                  sltiu        tp, zero, -1490
                  sltu         zero, t6, t5
                  sll          t1, a4, ra
                  srli         zero, t4, 28
2498:             add          a0, a7, t1
                  bltu         t4, s0, 2503f
                  slt          tp, a6, a0
                  blt          t2, t6, 2503f
                  slt          t1, a4, s8
2503:             xor          s4, s11, a4
                  sltu         s4, s1, s4
                  xor          gp, s4, a5
                  addi         s5, s3, -988
                  sub          s1, s6, a5
                  slti         a1, a2, -1236
                  slt          s10, t4, a2
                  sra          t5, t1, t2
                  lw           t1, 4(s7)
                  addi         s7, s7, 20
                  sll          s0, s9, s4
3300:             addi x22, x6, 0
3300:             jalr x22, x22, 0
sub_1:            sra          t4, s1, s8
                  blt          t6, a4, sub_1_stack_p
sub_1_stack_p:    addi         s7, s7, -44
                  andi         tp, t2, 617
                  sw           t1, 4(s7)
                  auipc        t3, 864249
                  slt          s1, s10, s3
                  slli         t1, a3, 18
                  sub          ra, t6, a0
                  slli         s11, zero, 0
                  xori         t3, a6, 997
sub_1_j5:         jal          t1, sub_4 #jump sub_1 -> sub_4
                  beq          a0, s6, 8f
                  addi         t6, t0, 407
                  andi         t0, s11, -1862
                  sltu         a3, tp, tp
                  blt          s4, tp, 17f
                  srli         tp, t4, 22
                  add          a0, s3, s11
                  sub          s0, ra, ra
8:                slti         t1, a4, 79
                  xor          a6, s11, a3
                  add          t3, t5, t0
                  bne          tp, a0, 17f
                  addi         t1, a7, 178
                  sll          s10, t4, s10
                  lui          s10, 210558
                  nop
                  srai         sp, s9, 2
17:               sub          t3, a3, s5
                  lw           t1, 4(s7)
                  addi         s7, s7, 44
                  xori         a6, s7, 1459
                  xor          t4, s2, s8
                  nop
                  auipc        s1, 364619
                  addi         s11, a7, 1286
37:               addi x24, x6, 0
37:               jalr x24, x24, 0
sub_2:            srl          s9, a1, t2
                  nop
                  add          t0, s7, ra
                  addi         s7, s7, -16
                  and          a0, gp, s7
                  srai         t4, s6, 31
                  andi         s9, a0, 1651
                  xori         s6, t2, 1292
                  slli         tp, a7, 2
                  sltu         gp, a3, tp
                  sw           t1, 4(s7)
                  srli         t6, s8, 22
                  la           s1, sub_4
                  sra          s0, a6, a6
                  addi         s1, s1, 443
                  lui          t4, 184609
                  andi         t1, t3, -1061
                  bltu         tp, a2, sub_2_j6 #branch to jump instr
                  add          a7, a4, a7
                  srai         a7, t0, 20
sub_2_j6:         jalr         t1, s1, -442 #jump sub_2 -> sub_4
                  nop
                  or           t5, s1, s8
                  add          t0, t0, a4
                  srl          s9, s6, s5
                  blt          t5, t0, 21f
                  sll          s0, s10, t6
                  add          a5, s7, s2
                  nop
                  blt          s0, t3, 22f
                  slli         s4, s11, 26
                  bge          a2, s7, 24f
                  slli         s6, gp, 15
                  bne          s8, t3, 30f
                  bgeu         a2, a4, 18f
                  xori         t1, tp, -1291
                  slt          t1, a2, t1
                  bltu         a5, s5, 23f
                  sra          zero, sp, a1
18:               or           a4, a6, t0
                  andi         s9, tp, 1212
                  or           s4, sp, t1
21:               add          gp, s3, t1
22:               beq          s3, s0, 25f
23:               lui          a4, 22162
24:               addi         t4, a5, -1631
25:               xori         tp, a1, -109
                  slli         s4, a7, 15
                  nop
                  slt          sp, a6, s10
                  bne          t5, s9, 39f
30:               srai         gp, s7, 20
                  xori         s1, a0, -2046
                  bne          s1, a5, 49f
                  ori          t3, t6, -1745
                  sltu         s3, a3, s0
                  xor          a0, s2, s3
                  bgeu         t6, t1, 50f
                  add          t4, a2, s2
                  srli         zero, t1, 28
39:               srl          s5, t2, t6
                  srai         ra, t4, 26
                  bltu         s6, t6, 50f
                  bge          t1, a1, 45f
                  andi         a3, a1, 55
                  blt          s2, gp, 50f
45:               beq          zero, s7, 50f
                  xori         s2, t3, 207
                  slt          s6, zero, t2
                  beq          tp, s3, 50f
49:               auipc        t6, 500282
50:               sll          a5, sp, s1
                  add          t3, s8, a2
                  lw           t1, 4(s7)
                  xori         tp, s0, -603
                  addi         s7, s7, 16
                  lui          s4, 860489
                  sltu         a5, a3, a3
78:               addi x18, x6, 0
78:               jalr x18, x18, 0
sub_4:            slli         a6, a7, 31
                  blt          s6, s4, sub_4_stack_p
                  slti         a4, zero, -1577
                  sll          s10, s3, s2
                  addi         a1, t1, 365
                  sub          s5, s7, a0
                  sll          s1, s8, a3
sub_4_stack_p:    addi         s7, s7, -36
                  sw           t1, 4(s7)
                  sub          gp, a6, ra
                  ori          a5, a0, -327
                  srai         s11, sp, 3
                  or           t5, s0, t6
                  sll          s2, t6, zero
                  xor          s4, s8, t5
                  xori         s8, t3, -1877
                  auipc        s0, 995642
                  xori         s0, t0, -1077
sub_4_j7:         jal          t1, sub_5 #jump sub_4 -> sub_5
                  ori          a0, a0, -148
                  slli         a5, s1, 27
                  la           s1, sub_5
                  xor          ra, t0, s0
                  sra          sp, zero, s5
                  srli         s8, s4, 20
                  slt          t3, zero, gp
                  addi         s1, s1, -708
                  sub          gp, t3, a4
                  xor          s3, a3, t3
                  addi         sp, s4, -1642
sub_4_j8:         jalr         t1, s1, 708 #jump sub_4 -> sub_5
                  blt          t5, t6, 13f
                  or           ra, ra, s9
                  sub          t1, s8, a5
                  sltu         s0, s5, s2
                  beq          t6, a6, 7f
                  srai         t0, s9, 23
                  srli         s4, t6, 10
7:                and          gp, s9, sp
                  slti         s2, s11, -648
                  addi         t1, a4, 1096
                  sltu         t1, s7, t3
                  nop
                  sll          t3, s8, t2
13:               sra          a4, s7, t6
                  sra          a1, gp, s2
                  auipc        s8, 810408
                  blt          a5, s10, 35f
                  srli         s5, a1, 28
                  sltu         zero, s11, a5
                  srli         a6, tp, 3
                  slli         t3, zero, 5
                  slt          a6, a3, a2
                  or           a5, a6, t5
                  bge          a3, a1, 37f
                  xor          t0, t1, a5
                  sub          s2, s7, a7
                  srli         a0, t2, 3
                  srl          t5, sp, t0
                  blt          s8, a5, 37f
                  lui          a1, 62836
                  or           s0, s10, s0
                  bgeu         a3, t3, 32f
32:               slt          zero, s3, s3
                  nop
                  ori          tp, t6, 1279
35:               nop
                  and          a3, s11, s9
37:               lui          a0, 30913
                  or           t0, t5, s0
                  ori          s5, zero, -1053
                  lw           t1, 4(s7)
                  addi         s7, s7, 36
                  auipc        t4, 760178
74:               addi x9, x6, 1
74:               jalr x9, x9, 0
sub_3:            lui          ra, 854995
                  xori         gp, t2, -1971
                  bne          a0, s1, sub_3_stack_p
sub_3_stack_p:    addi         s7, s7, -64
                  srli         s6, a4, 13
                  sub          a3, gp, s11
                  sw           t1, 4(s7)
                  sltiu        t3, a2, -1361
                  srl          s2, a5, s5
                  srli         s10, s5, 21
                  bltu         s7, sp, 7f
                  slt          s4, s1, a0
                  bge          t1, a0, 6f
                  sll          zero, s7, s11
                  sra          s6, t1, a6
                  add          zero, s10, t2
6:                beq          t1, s11, 10f
7:                sll          s5, s9, s3
                  slti         s2, s4, 1698
                  sltiu        sp, s2, 124
10:               auipc        s8, 650067
                  bne          a6, a2, 18f
                  ori          s1, a7, 1028
                  sltiu        s8, a4, 861
                  sub          s3, s11, a3
                  srai         s6, t4, 11
                  nop
                  sub          t6, a0, s9
18:               nop
                  sltiu        t3, gp, -1255
                  srli         sp, t2, 14
                  sub          t0, a3, a4
                  ori          t4, a2, 1656
                  sub          a4, ra, s10
                  lw           t1, 4(s7)
                  xori         tp, s0, 1940
                  auipc        t5, 234994
                  ori          a7, t0, -792
                  sub          s2, s1, s7
                  addi         s7, s7, 64
                  srli         s3, s8, 2
                  ori          s11, ra, -1004
42:               addi x22, x6, 0
42:               jalr x22, x22, 0
sub_10:           lui          a6, 43698
                  slli         a7, sp, 18
                  bltu         t3, a3, sub_10_stack_p
                  sltu         s3, s0, zero
                  srli         t6, a3, 30
                  andi         s6, a2, -133
sub_10_stack_p:   addi         s7, s7, -28
                  sw           t1, 4(s7)
                  sltiu        s11, gp, 185
                  la           t3, region_1+1294 #start riscv_load_store_rand_instr_stream_0
                  lbu          s10, 9(t3)
                  slt          t1, s8, s10
                  srl          zero, t0, s10
                  lw           t6, 2(t3)
                  sb           gp, 0(t3)
                  lbu          s8, -9(t3)
                  lui          t5, 74914
                  andi         tp, s11, 1744
                  lb           a0, 13(t3)
                  lbu          t5, 4(t3)
                  srl          a4, t0, s2
                  lb           a7, -1(t3)
                  sb           a1, -13(t3)
                  sltiu        zero, a2, -950
                  lb           s10, 5(t3)
                  slt          s9, s0, s9
                  lbu          tp, -3(t3)
                  addi         s10, s6, -384
                  lbu          s6, -8(t3)
                  lb           a7, -7(t3)
                  sw           s5, 2(t3)
                  lbu          gp, 13(t3)
                  sb           s5, -13(t3)
                  srl          tp, s5, s10
                  sb           a5, 13(t3)
                  slli         a6, ra, 18
                  ori          a1, s4, -194
                  sb           a1, -9(t3)
                  or           zero, s6, s11
                  lbu          t4, 2(t3)
                  srl          a1, s2, tp
                  sw           t5, 10(t3)
                  xor          a0, a2, a1
                  lbu          t6, 11(t3)
                  sh           a4, 0(t3)
                  sb           t0, 14(t3)
                  or           t5, a0, s7
                  sh           s8, 2(t3)
                  or           zero, s3, s11
                  add          t1, s10, zero
                  lbu          gp, -7(t3)
                  xor          gp, a7, a6
                  slli         gp, a7, 13
                  add          s2, gp, s11
                  lb           a3, -3(t3)
                  sra          t4, zero, s3
                  lui          s2, 727717
                  sra          ra, s9, s10
                  add          t4, a0, t2
                  sh           s11, -4(t3)
                  sh           a6, -2(t3)
                  slt          a6, t3, a4
                  lbu          s2, 11(t3) #end riscv_load_store_rand_instr_stream_0
                  addi         tp, tp, -34
                  or           s2, a3, s4
                  ori          s6, a2, 2000
                  auipc        tp, 778554
                  andi         a4, s5, 1676
                  or           s3, s9, sp
                  lui          t4, 765778
                  andi         s2, s0, 806
                  srai         s11, a5, 30
                  bgeu         gp, a3, 22f
                  sub          s6, t1, s4
                  nop
                  blt          ra, s5, 20f
                  sub          s6, sp, a3
                  sra          s10, s8, t6
                  ori          s11, s6, 1744
                  slti         tp, t5, 314
                  bltu         sp, t0, 33f
                  auipc        s9, 193713
                  xori         a5, s8, -1418
20:               bltu         a0, t4, 30f
                  xor          tp, t2, a4
22:               bne          a3, s0, 32f
                  sub          a5, a2, t4
                  lui          gp, 189802
                  sra          t4, tp, a0
                  sub          a4, zero, s11
                  xori         s3, s4, 1676
                  srl          tp, t2, t4
                  bge          t5, s0, 38f
30:               bge          a4, a7, 44f
                  srai         gp, s0, 9
32:               srli         a1, gp, 28
33:               xori         tp, s9, -654
                  slli         s5, t2, 15
                  srl          s9, s3, ra
                  sra          a4, s1, a6
                  sltiu        sp, s8, 1295
38:               bltu         s10, a6, 40f
                  nop
40:               srai         s6, sp, 9
                  slti         s11, t1, 1786
                  sltiu        s3, s5, 47
                  srli         a0, s8, 12
44:               or           sp, s2, a1
                  xori         a7, s10, -1749
                  andi         a6, tp, -546
                  srai         a3, t5, 8
                  srl          t6, s5, a4
                  auipc        s11, 928778
                  bgeu         s0, s2, 57f
                  andi         t5, t3, -716
                  andi         s6, a5, 1532
                  sra          s8, s4, a2
                  bne          zero, sp, 58f
                  bgeu         s4, s6, 75f
                  addi         a3, ra, -644
57:               sltu         s1, s7, a4
58:               nop
                  sra          ra, a0, t2
                  xor          s1, a7, ra
                  bne          a6, sp, 65f
                  sltiu        s9, s1, 682
                  slt          t4, a3, t2
                  ori          a1, a4, -906
65:               srli         s4, t5, 25
                  slli         zero, t2, 16
                  auipc        t1, 100847
                  beq          s0, s10, 85f
                  slti         s0, sp, 1338
                  sltiu        zero, t1, -442
                  andi         sp, s1, -1108
                  add          t0, sp, a4
                  nop
                  bge          a0, ra, 81f
75:               bge          a7, s7, 79f
                  slti         gp, s2, 1070
                  addi         s8, t1, -1799
                  slt          zero, ra, s9
79:               addi         t6, s10, 1508
                  bge          t6, a7, 99f
81:               or           a3, a2, ra
                  or           s5, a7, s10
                  xori         s5, a6, -1408
                  blt          a0, s3, 92f
85:               ori          t6, t1, -1867
                  xori         s4, s11, -470
                  slli         s1, a3, 30
                  bgeu         s4, s1, 92f
                  slt          a5, s7, zero
                  beq          s9, a2, 100f
                  and          a7, s6, s8
92:               nop
                  beq          tp, t5, 97f
                  bne          s9, s9, 103f
                  srai         a3, a3, 19
                  and          t6, t2, s2
97:               xor          tp, s6, t3
                  and          s9, t0, t6
99:               ori          gp, tp, 1867
100:              addi         s0, a4, -185
                  andi         a4, a6, 1620
                  sll          zero, s2, s1
103:              bne          s4, tp, 122f
                  srli         a3, a6, 29
                  beq          s3, a7, 110f
                  srl          t6, a5, a5
                  slli         a5, s0, 17
                  addi         gp, s7, 266
                  ori          zero, a2, 1630
110:              bgeu         s1, s0, 113f
                  lui          t5, 414530
                  bltu         a2, t6, 115f
113:              ori          zero, s7, 1146
                  and          t3, s9, a6
115:              srai         s3, t0, 16
                  add          a7, s4, zero
                  xor          s1, t2, s9
                  addi         sp, t2, -466
                  bgeu         s10, s1, 125f
                  slli         zero, s3, 1
                  ori          a1, t5, -1871
122:              add          a4, s11, t5
                  srli         s1, t2, 29
                  addi         s1, a0, -1366
125:              srli         s3, a2, 4
                  nop
                  lw           t1, 4(s7)
                  srl          ra, a3, a5
                  addi         s7, s7, 28
                  lui          gp, 992518
                  xori         a7, a4, -1957
                  auipc        a7, 98690
                  or           a5, s9, ra
                  addi         a4, s7, -1046
                  ori          a5, a5, 358
                  sltiu        a5, gp, -1399
200:              addi x19, x6, 1
200:              jalr x19, x19, 0
sub_7:            add          s8, t6, t3
                  sub          a6, gp, sp
                  addi         t4, a7, -1042
                  addi         s7, s7, -60
                  addi         a4, a2, 1224
                  ori          s1, s2, 1613
                  sw           t1, 4(s7)
                  slt          s3, s6, t6
                  srai         s0, a5, 16
                  la           s1, region_1+157 #start riscv_load_store_rand_instr_stream_1
                  lb           t6, 4(s1)
                  slt          s8, a3, t1
                  lbu          s6, -2(s1)
                  lbu          a5, 39(s1)
                  sltiu        s10, s1, -960
                  add          a0, a5, a4
                  sb           zero, 44(s1)
                  sb           s2, -35(s1)
                  lb           s6, 40(s1)
                  srli         s10, s11, 26
                  addi         ra, t4, -641
                  andi         a3, tp, 71
                  srl          a7, s0, a7
                  lbu          s8, 49(s1)
                  slt          t1, t5, gp
                  lb           a1, 8(s1)
                  lhu          s5, -43(s1)
                  xor          s11, s3, s7
                  lui          tp, 512538
                  sltu         t4, a6, a6
                  lw           s6, -5(s1)
                  addi         a7, sp, -896
                  slli         a7, a6, 2
                  xor          t5, a3, t3
                  lh           gp, -41(s1)
                  slt          t5, s2, a5
                  srl          s3, s5, s4
                  srai         t6, ra, 20
                  sra          a6, t5, s7
                  ori          s10, a0, 2021
                  lw           zero, 47(s1)
                  srl          a4, sp, s5
                  lh           ra, 3(s1)
                  xor          sp, t5, a3
                  xori         s3, t1, 365
                  lb           tp, 51(s1)
                  sb           t1, -60(s1)
                  sb           s8, -24(s1)
                  sh           s6, -19(s1)
                  lb           a0, 48(s1)
                  slti         ra, t2, -1072
                  ori          s8, t1, -1389
                  lbu          tp, -8(s1)
                  lb           t6, -6(s1)
                  lb           s0, -47(s1)
                  lbu          s0, -28(s1)
                  sw           s11, -5(s1) #end riscv_load_store_rand_instr_stream_1
                  sub          s8, s2, s0
                  xori         a0, a3, 106
                  sra          t3, s1, tp
                  andi         a0, gp, 1731
                  sltiu        t1, a0, 553
                  or           a6, gp, s5
                  bne          a0, s0, 18f
                  sltu         s10, t2, a5
                  bgeu         a1, a1, 12f
                  slli         a7, s5, 13
                  xor          t4, s1, t4
                  ori          gp, t0, 1917
12:               srl          s9, s9, t3
                  xori         s0, s7, -1596
                  bgeu         tp, a1, 22f
                  blt          s2, s10, 17f
                  slt          a3, s6, t2
17:               sra          tp, s11, sp
18:               and          a5, s10, a7
                  slti         t1, a1, 887
                  sub          s2, t2, t6
                  andi         t3, t0, -222
22:               srli         s10, s10, 2
                  sub          a1, a0, tp
                  lui          t5, 428862
                  srli         a5, s9, 2
                  bne          t5, s5, 27f
27:               sll          a7, t6, t4
                  bgeu         s2, sp, 34f
                  nop
                  slt          t5, a3, a5
                  add          a1, tp, t6
                  sra          a4, t6, a3
                  or           a6, zero, s6
34:               srai         s10, s5, 3
                  sra          t6, s6, ra
                  sll          ra, sp, tp
                  blt          zero, t4, 38f
38:               xor          t1, s4, t3
                  and          t6, a0, a5
                  bltu         a0, ra, 48f
                  bltu         t3, t0, 56f
                  blt          s3, t1, 60f
                  srai         a7, a7, 14
                  bltu         a5, t4, 51f
                  bge          s0, s3, 58f
                  bltu         ra, t3, 64f
                  nop
48:               and          a4, a2, s10
                  bltu         a4, a1, 59f
                  addi         s2, s2, 1981
51:               slti         a7, a7, -477
                  srli         gp, a2, 13
                  slt          s4, s4, s8
                  add          s2, s0, s0
                  bge          t2, t6, 61f
56:               srl          t4, t5, gp
                  nop
58:               bne          ra, a3, 62f
59:               andi         a4, t0, -895
60:               sll          a6, gp, t2
61:               xor          t3, s7, a2
62:               bne          a0, a6, 79f
                  bge          s11, s6, 82f
64:               nop
                  slti         sp, s11, 817
                  bltu         t6, a2, 70f
                  ori          s11, a5, -1369
                  addi         a4, s4, 1490
                  nop
70:               bge          gp, a6, 80f
                  slti         t5, a0, 1355
                  bge          t0, t5, 91f
                  bne          t1, a4, 80f
                  auipc        s1, 861651
                  bgeu         gp, s9, 76f
76:               srai         s10, a4, 24
                  nop
                  srli         t4, s10, 3
79:               and          a6, a2, a6
80:               andi         s10, ra, -1235
                  srli         a3, s5, 28
82:               slli         s4, t2, 22
                  beq          s7, a1, 99f
                  xori         s4, s9, 1376
                  or           s10, ra, s5
                  slli         t4, s3, 10
                  bne          t0, s2, 103f
                  or           t3, tp, t0
                  slti         t3, s1, 1726
                  add          s6, zero, t1
91:               beq          a1, s6, 108f
                  bne          s11, s11, 102f
                  andi         a3, t6, -235
                  nop
                  srl          s8, a1, s4
                  srai         t1, s3, 19
                  slt          s2, t6, t6
                  sll          t4, s3, ra
99:               bge          s6, s2, 106f
                  bge          s6, s10, 109f
                  la           a7, region_0+1789 #start riscv_load_store_rand_instr_stream_0
                  slt          gp, s9, a0
                  lb           s2, -466(a7)
                  sb           s6, -1775(a7)
                  auipc        a1, 425062
                  sll          zero, s8, s5
                  srai         s0, t3, 21
                  slli         a1, sp, 27
                  or           s11, a6, t2
                  slt          zero, t5, s1
                  sb           t3, -139(a7)
                  sub          s0, s1, sp
                  lbu          a6, -84(a7)
                  or           t6, s10, s5
                  add          ra, s3, t0
                  ori          s8, s5, 1981
                  add          a0, a3, s0
                  xor          a0, s3, s10
                  sltiu        t3, s4, -583
                  lb           s9, -546(a7)
                  sb           a4, -579(a7)
                  lh           gp, -1491(a7)
                  xori         s4, a3, -1807
                  xori         a3, s8, 1473
                  addi         s1, s7, 1038
                  lui          s4, 766976
                  andi         t6, a2, 1926
                  add          gp, s1, t0
                  sltu         s6, s11, s7
                  lui          s4, 685824
                  lbu          a6, -204(a7)
                  ori          t5, gp, 1691
                  nop
                  sra          s11, a6, zero
                  or           a0, t4, s8
                  xor          zero, zero, s11
                  add          s1, s6, s6
                  nop
                  lb           a0, -634(a7)
                  lbu          a0, -685(a7)
                  sw           a1, -1353(a7) #end riscv_load_store_rand_instr_stream_0
                  and          a1, s10, a7
102:              slt          t5, tp, s1
103:              blt          a7, t5, 113f
                  bne          a0, a2, 120f
                  ori          t6, s10, -15
106:              beq          t6, zero, 108f
                  srai         s5, s10, 15
108:              ori          s9, t6, -1792
109:              slli         t4, t1, 21
                  sltu         a4, t3, s7
                  sub          t6, t1, t3
                  beq          s5, t3, 122f
113:              sll          tp, a7, gp
                  bge          zero, s10, 132f
                  bgeu         zero, zero, 122f
                  srai         t0, s11, 26
                  add          a1, s5, s7
                  slt          gp, t6, s0
                  andi         t4, a3, 395
120:              and          a0, ra, a2
                  bne          s0, t6, 128f
122:              nop
                  auipc        t6, 203150
                  sub          s4, s9, a6
                  sub          s10, a4, a1
                  or           s2, s9, t4
                  slt          s11, s4, t2
128:              bgeu         a7, zero, 147f
                  bge          ra, t2, 130f
130:              auipc        a1, 561473
                  bltu         s5, t6, 135f
132:              beq          a0, ra, 142f
                  sltu         a4, a1, a1
                  beq          a4, s3, 151f
135:              bltu         s4, zero, 148f
                  and          a0, s10, s4
                  ori          sp, s11, -1689
                  srl          s4, s9, t0
                  sra          t4, s7, t3
                  bgeu         s1, s9, 158f
                  xor          s0, a6, t1
142:              bltu         s5, a6, 148f
                  bne          s2, sp, 144f
144:              srai         s3, s5, 10
                  or           a6, gp, t0
                  bge          ra, gp, 155f
147:              ori          s4, t4, -299
148:              slli         s9, s11, 6
                  srai         s2, s2, 7
                  slt          zero, sp, s4
151:              srai         a1, t5, 9
                  sll          tp, s10, s11
                  sltiu        ra, a0, 1247
                  blt          t4, s7, 155f
155:              bne          t3, s10, 163f
                  sub          t4, t0, t1
                  bge          s4, sp, 176f
158:              sub          t6, t6, a2
                  bge          s0, s3, 174f
                  lui          t3, 59240
                  auipc        t3, 764365
                  bge          zero, s1, 170f
163:              bne          s9, s2, 169f
                  xor          a7, t3, a4
                  slli         s3, s9, 21
                  and          s2, tp, a5
                  srl          s2, s3, a7
                  xor          s11, s7, a0
169:              sltiu        s6, gp, -339
170:              nop
                  blt          t4, t4, 188f
                  srl          s8, s5, s2
                  add          s1, s6, a1
174:              sll          s8, s10, t1
                  blt          s10, s7, 185f
176:              bltu         ra, s11, 180f
                  sub          gp, a4, a7
                  sltu         a7, ra, t0
                  srl          s11, s11, t4
180:              add          a6, gp, a2
                  sltiu        s8, s0, 274
                  sltu         a0, t0, t3
                  nop
                  bne          s2, s9, 200f
185:              sll          t3, gp, t1
                  addi         s3, s7, 1523
                  ori          s2, s2, 1773
188:              blt          t2, a4, 192f
                  srli         s10, sp, 24
                  srli         t3, t6, 24
                  srl          s10, s7, s10
192:              add          a6, t1, s2
                  and          t3, s7, s11
                  sll          s0, a5, a0
                  sra          t5, t4, a5
                  srl          s0, t6, gp
                  addi         t5, a5, -87
                  nop
                  sltiu        s6, zero, 1979
200:              or           a1, a6, a0
                  bltu         t4, s0, 213f
                  beq          a6, t5, 209f
                  slti         gp, a4, 1300
                  srl          s9, a2, sp
                  sll          a6, sp, t4
                  blt          t2, s9, 216f
                  srai         s8, a6, 13
                  sub          t0, a3, s5
209:              sltu         s11, a6, s6
                  bltu         zero, s4, 216f
                  andi         s3, a3, 1472
                  andi         s3, sp, 1367
213:              beq          t6, zero, 220f
                  bltu         t5, s4, 218f
                  bne          a0, t4, 219f
216:              bltu         s3, s8, 217f
217:              bge          t4, s5, 218f
218:              auipc        a0, 160571
219:              slli         s10, a7, 16
220:              srli         s11, t6, 24
                  sltu         gp, s2, s7
                  lui          s5, 183506
                  xori         zero, sp, -1841
                  srli         t1, s5, 27
                  and          s3, a2, s5
                  ori          s9, a2, 1605
                  bltu         a4, gp, 237f
                  bgeu         ra, ra, 244f
                  nop
                  sra          t4, s7, s9
                  sltiu        t1, s0, 1589
                  sll          s9, s0, s10
                  sll          s6, t0, a2
                  bne          s5, s9, 251f
                  slti         a4, a6, -85
                  andi         s0, sp, -157
237:              slli         sp, t1, 20
                  srl          tp, ra, a3
                  sltu         s5, ra, s7
                  xor          t0, ra, tp
                  or           a7, t0, zero
                  sra          a5, t1, a7
                  sltu         t3, a4, a1
244:              sll          s10, a2, sp
                  srl          s11, s0, t3
                  ori          a4, t6, -1139
                  addi         a3, a2, -1389
                  bne          a3, a3, 255f
                  bge          zero, s1, 255f
                  and          a1, t0, a0
251:              srli         a7, s1, 13
                  bltu         tp, s4, 271f
                  bge          s9, s11, 260f
                  slt          a6, s11, s6
255:              beq          tp, s8, 268f
                  srai         s9, sp, 31
                  lui          s10, 750739
                  sra          s1, a0, s5
                  and          t6, s8, gp
260:              nop
                  nop
                  srli         s2, a6, 14
                  xori         s5, t4, -612
                  srai         a1, a0, 20
                  blt          t6, a2, 266f
266:              and          ra, t3, s3
                  addi         zero, a7, 1978
268:              bne          s7, s3, 277f
                  ori          s10, a5, -1593
                  nop
271:              srai         s5, t4, 5
                  xor          s6, s11, s5
                  blt          t4, a2, 275f
                  sltu         s11, t2, t3
275:              and          a7, s10, t6
                  blt          a2, s1, 286f
277:              addi         ra, s2, -1308
                  auipc        s0, 612870
                  nop
                  blt          t4, s6, 295f
                  andi         s6, s9, -1649
                  slti         s2, s10, 1844
                  ori          s4, gp, -1499
                  and          t5, t5, gp
                  auipc        t1, 34436
286:              xor          s3, zero, a0
                  srl          a7, a2, t3
                  slt          sp, a1, s7
                  addi         s3, t6, -390
                  bne          a4, gp, 302f
                  slt          t1, s0, t4
                  sltiu        s3, s5, -1885
                  auipc        s0, 962688
                  srli         a3, s3, 4
295:              sltiu        s4, a1, -1091
                  addi         a7, ra, 352
                  nop
                  sltu         tp, s7, t2
                  lui          a3, 412984
                  bge          a4, t6, 308f
                  auipc        s6, 98361
302:              sltu         t6, s7, sp
                  xor          s8, tp, s11
                  sltiu        a7, a6, -1062
                  nop
                  srai         t6, t0, 4
                  xori         t5, gp, -1185
308:              sltiu        tp, t6, -1415
                  srli         s11, s3, 5
                  bgeu         s2, a3, 326f
                  sltiu        a1, s6, -1749
                  andi         s4, a0, 1631
                  slli         sp, t5, 29
                  or           a5, zero, t4
                  srai         a1, s6, 18
                  xori         t5, s9, 1601
                  sub          s11, s4, t5
                  sltiu        s1, s7, 1577
                  xori         t5, a3, -1184
                  xor          a7, t5, t1
                  bne          t0, s11, 331f
                  ori          a0, ra, -772
                  bltu         s9, s6, 331f
                  sltu         t1, s5, s5
                  bge          s0, a2, 343f
326:              xor          t3, s2, a5
                  xori         zero, s7, 246
                  auipc        a3, 366570
                  blt          tp, gp, 347f
                  slti         a7, s8, 692
331:              srai         s0, t2, 13
                  bge          a4, a4, 342f
                  sltu         a4, a1, s4
                  blt          s1, t0, 349f
                  srai         a4, t4, 20
                  andi         t4, s6, -1764
                  bne          s6, s2, 349f
                  sltiu        ra, t2, 205
                  ori          s1, s4, 1919
                  beq          s7, s2, 344f
                  xori         gp, a1, 399
342:              sll          a0, s8, a0
343:              add          a4, a6, ra
344:              bge          t3, t5, 349f
                  sltu         s2, zero, t5
                  blt          t3, a4, 349f
347:              bltu         s1, t1, 349f
                  srai         s4, s11, 31
349:              nop
                  add          s6, gp, t3
                  ori          t4, s8, 152
                  xor          t6, t3, a2
                  slli         t4, s11, 29
                  lw           t1, 4(s7)
                  slt          a6, t3, tp
                  slti         s4, s11, 1199
                  addi         s7, s7, 60
                  add          a5, t4, t0
457:              addi x15, x6, 1
457:              jalr x15, x15, 0
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
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x12, x23, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_2:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x12, x23, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_3:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x12, x23, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_4:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x12, x23, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_5:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x12, x23, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_6:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x12, x23, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_7:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x12, x23, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_8:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x12, x23, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_9:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x12, x23, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_10:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x12, x23, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_11:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x12, x23, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_12:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x12, x23, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_13:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x12, x23, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_14:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x12, x23, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

mmode_intr_vector_15:
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x12, x23, zero
                  csrr x18, 0x342 # MCAUSE
                  srli x18, x18, 0x1f
                  beqz x18, 1f
                  j mmode_intr_handler
                  1: la x7, test_done
                  jalr x0, x7, 0

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
                  addi x23, x23, -128
                  sw  x1, 4(x23)
                  sw  x2, 8(x23)
                  sw  x3, 12(x23)
                  sw  x4, 16(x23)
                  sw  x5, 20(x23)
                  sw  x6, 24(x23)
                  sw  x7, 28(x23)
                  sw  x8, 32(x23)
                  sw  x9, 36(x23)
                  sw  x10, 40(x23)
                  sw  x11, 44(x23)
                  sw  x12, 48(x23)
                  sw  x13, 52(x23)
                  sw  x14, 56(x23)
                  sw  x15, 60(x23)
                  sw  x16, 64(x23)
                  sw  x17, 68(x23)
                  sw  x18, 72(x23)
                  sw  x19, 76(x23)
                  sw  x20, 80(x23)
                  sw  x21, 84(x23)
                  sw  x22, 88(x23)
                  sw  x23, 92(x23)
                  sw  x24, 96(x23)
                  sw  x25, 100(x23)
                  sw  x26, 104(x23)
                  sw  x27, 108(x23)
                  sw  x28, 112(x23)
                  sw  x29, 116(x23)
                  sw  x30, 120(x23)
                  sw  x31, 124(x23)
                  add x12, x23, zero
                  csrr x18, 0x341 # MEPC
                  csrr x18, 0x342 # MCAUSE
                  li x19, 0x3 # BREAKPOINT
                  beq x18, x19, ebreak_handler
                  li x19, 0x8 # ECALL_UMODE
                  beq x18, x19, ecall_handler
                  li x19, 0x9 # ECALL_SMODE
                  beq x18, x19, ecall_handler
                  li x19, 0xb # ECALL_MMODE
                  beq x18, x19, ecall_handler
                  li x19, 0x1
                  beq x18, x19, instr_fault_handler
                  li x19, 0x5
                  beq x18, x19, load_fault_handler
                  li x19, 0x7
                  beq x18, x19, store_fault_handler
                  li x19, 0xc
                  beq x18, x19, pt_fault_handler
                  li x19, 0xd
                  beq x18, x19, pt_fault_handler
                  li x19, 0xf
                  beq x18, x19, pt_fault_handler
                  li x19, 0x2 # ILLEGAL_INSTRUCTION
                  beq x18, x19, illegal_instr_handler
                  csrr x19, 0x343 # MTVAL
                  1: la x7, test_done
                  jalr x1, x7, 0

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
                  la x7, write_tohost
                  jalr x0, x7, 0

instr_fault_handler:
                  add x23, x12, zero
                  lw  x1, 4(x23)
                  lw  x2, 8(x23)
                  lw  x3, 12(x23)
                  lw  x4, 16(x23)
                  lw  x5, 20(x23)
                  lw  x6, 24(x23)
                  lw  x7, 28(x23)
                  lw  x8, 32(x23)
                  lw  x9, 36(x23)
                  lw  x10, 40(x23)
                  lw  x11, 44(x23)
                  lw  x12, 48(x23)
                  lw  x13, 52(x23)
                  lw  x14, 56(x23)
                  lw  x15, 60(x23)
                  lw  x16, 64(x23)
                  lw  x17, 68(x23)
                  lw  x18, 72(x23)
                  lw  x19, 76(x23)
                  lw  x20, 80(x23)
                  lw  x21, 84(x23)
                  lw  x22, 88(x23)
                  lw  x23, 92(x23)
                  lw  x24, 96(x23)
                  lw  x25, 100(x23)
                  lw  x26, 104(x23)
                  lw  x27, 108(x23)
                  lw  x28, 112(x23)
                  lw  x29, 116(x23)
                  lw  x30, 120(x23)
                  lw  x31, 124(x23)
                  addi x23, x23, 128
                  mret

load_fault_handler:
                  add x23, x12, zero
                  lw  x1, 4(x23)
                  lw  x2, 8(x23)
                  lw  x3, 12(x23)
                  lw  x4, 16(x23)
                  lw  x5, 20(x23)
                  lw  x6, 24(x23)
                  lw  x7, 28(x23)
                  lw  x8, 32(x23)
                  lw  x9, 36(x23)
                  lw  x10, 40(x23)
                  lw  x11, 44(x23)
                  lw  x12, 48(x23)
                  lw  x13, 52(x23)
                  lw  x14, 56(x23)
                  lw  x15, 60(x23)
                  lw  x16, 64(x23)
                  lw  x17, 68(x23)
                  lw  x18, 72(x23)
                  lw  x19, 76(x23)
                  lw  x20, 80(x23)
                  lw  x21, 84(x23)
                  lw  x22, 88(x23)
                  lw  x23, 92(x23)
                  lw  x24, 96(x23)
                  lw  x25, 100(x23)
                  lw  x26, 104(x23)
                  lw  x27, 108(x23)
                  lw  x28, 112(x23)
                  lw  x29, 116(x23)
                  lw  x30, 120(x23)
                  lw  x31, 124(x23)
                  addi x23, x23, 128
                  mret

store_fault_handler:
                  add x23, x12, zero
                  lw  x1, 4(x23)
                  lw  x2, 8(x23)
                  lw  x3, 12(x23)
                  lw  x4, 16(x23)
                  lw  x5, 20(x23)
                  lw  x6, 24(x23)
                  lw  x7, 28(x23)
                  lw  x8, 32(x23)
                  lw  x9, 36(x23)
                  lw  x10, 40(x23)
                  lw  x11, 44(x23)
                  lw  x12, 48(x23)
                  lw  x13, 52(x23)
                  lw  x14, 56(x23)
                  lw  x15, 60(x23)
                  lw  x16, 64(x23)
                  lw  x17, 68(x23)
                  lw  x18, 72(x23)
                  lw  x19, 76(x23)
                  lw  x20, 80(x23)
                  lw  x21, 84(x23)
                  lw  x22, 88(x23)
                  lw  x23, 92(x23)
                  lw  x24, 96(x23)
                  lw  x25, 100(x23)
                  lw  x26, 104(x23)
                  lw  x27, 108(x23)
                  lw  x28, 112(x23)
                  lw  x29, 116(x23)
                  lw  x30, 120(x23)
                  lw  x31, 124(x23)
                  addi x23, x23, 128
                  mret

ebreak_handler:   
                  csrr  x18, 0x341
                  addi  x18, x18, 4
                  csrw  0x341, x18
                  add x23, x12, zero
                  lw  x1, 4(x23)
                  lw  x2, 8(x23)
                  lw  x3, 12(x23)
                  lw  x4, 16(x23)
                  lw  x5, 20(x23)
                  lw  x6, 24(x23)
                  lw  x7, 28(x23)
                  lw  x8, 32(x23)
                  lw  x9, 36(x23)
                  lw  x10, 40(x23)
                  lw  x11, 44(x23)
                  lw  x12, 48(x23)
                  lw  x13, 52(x23)
                  lw  x14, 56(x23)
                  lw  x15, 60(x23)
                  lw  x16, 64(x23)
                  lw  x17, 68(x23)
                  lw  x18, 72(x23)
                  lw  x19, 76(x23)
                  lw  x20, 80(x23)
                  lw  x21, 84(x23)
                  lw  x22, 88(x23)
                  lw  x23, 92(x23)
                  lw  x24, 96(x23)
                  lw  x25, 100(x23)
                  lw  x26, 104(x23)
                  lw  x27, 108(x23)
                  lw  x28, 112(x23)
                  lw  x29, 116(x23)
                  lw  x30, 120(x23)
                  lw  x31, 124(x23)
                  addi x23, x23, 128
                  mret

illegal_instr_handler:
                  csrr  x18, 0x341
                  addi  x18, x18, 4
                  csrw  0x341, x18
                  add x23, x12, zero
                  lw  x1, 4(x23)
                  lw  x2, 8(x23)
                  lw  x3, 12(x23)
                  lw  x4, 16(x23)
                  lw  x5, 20(x23)
                  lw  x6, 24(x23)
                  lw  x7, 28(x23)
                  lw  x8, 32(x23)
                  lw  x9, 36(x23)
                  lw  x10, 40(x23)
                  lw  x11, 44(x23)
                  lw  x12, 48(x23)
                  lw  x13, 52(x23)
                  lw  x14, 56(x23)
                  lw  x15, 60(x23)
                  lw  x16, 64(x23)
                  lw  x17, 68(x23)
                  lw  x18, 72(x23)
                  lw  x19, 76(x23)
                  lw  x20, 80(x23)
                  lw  x21, 84(x23)
                  lw  x22, 88(x23)
                  lw  x23, 92(x23)
                  lw  x24, 96(x23)
                  lw  x25, 100(x23)
                  lw  x26, 104(x23)
                  lw  x27, 108(x23)
                  lw  x28, 112(x23)
                  lw  x29, 116(x23)
                  lw  x30, 120(x23)
                  lw  x31, 124(x23)
                  addi x23, x23, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x18, 0x300 # MSTATUS;
                  csrr  x18, 0x304 # MIE;
                  csrr  x18, 0x344 # MIP;
                  csrrc x18, 0x344, x18 # MIP;
                  add x23, x12, zero
                  lw  x1, 4(x23)
                  lw  x2, 8(x23)
                  lw  x3, 12(x23)
                  lw  x4, 16(x23)
                  lw  x5, 20(x23)
                  lw  x6, 24(x23)
                  lw  x7, 28(x23)
                  lw  x8, 32(x23)
                  lw  x9, 36(x23)
                  lw  x10, 40(x23)
                  lw  x11, 44(x23)
                  lw  x12, 48(x23)
                  lw  x13, 52(x23)
                  lw  x14, 56(x23)
                  lw  x15, 60(x23)
                  lw  x16, 64(x23)
                  lw  x17, 68(x23)
                  lw  x18, 72(x23)
                  lw  x19, 76(x23)
                  lw  x20, 80(x23)
                  lw  x21, 84(x23)
                  lw  x22, 88(x23)
                  lw  x23, 92(x23)
                  lw  x24, 96(x23)
                  lw  x25, 100(x23)
                  lw  x26, 104(x23)
                  lw  x27, 108(x23)
                  lw  x28, 112(x23)
                  lw  x29, 116(x23)
                  lw  x30, 120(x23)
                  lw  x31, 124(x23)
                  addi x23, x23, 128
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
