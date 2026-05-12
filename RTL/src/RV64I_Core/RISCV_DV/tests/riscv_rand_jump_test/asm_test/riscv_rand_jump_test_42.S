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
                  li x17, 0x40000100
                  csrw 0x301, x17
kernel_sp:        
                  la x8, kernel_stack_end

trap_vec_init:    
                  la x17, mtvec_handler
                  ori x17, x17, 0
                  csrw 0x305, x17 # MTVEC

mepc_setup:       
                  la x17, init
                  csrw 0x341, x17

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x17, 0x1800
                  csrw 0x300, x17 # MSTATUS
                  mret
init:             
                  li x0, 0xb1b50445
                  li x1, 0xf7cee9f2
                  li x2, 0x91c23b0f
                  li x3, 0x0
                  li x4, 0x80000000
                  li x5, 0x10e74f75
                  li x6, 0x0
                  li x7, 0x0
                  li x9, 0x80000000
                  li x10, 0x80000000
                  li x11, 0x0
                  li x12, 0xf718c936
                  li x13, 0xb
                  li x14, 0xffa85ce7
                  li x15, 0xf1931025
                  li x16, 0x80000000
                  li x17, 0x0
                  li x18, 0xf3dc9d28
                  li x19, 0xb
                  li x20, 0xf696d0f8
                  li x21, 0xf02be8d9
                  li x22, 0xa
                  li x23, 0x0
                  li x24, 0xf1292e99
                  li x25, 0x80000000
                  li x26, 0x0
                  li x27, 0xf68e5930
                  li x29, 0x2
                  li x30, 0x7
                  li x31, 0x80000000
                  la x28, user_stack_end
main:             la           a0, region_0+1636 #start riscv_load_store_rand_instr_stream_0
                  lb           s5, 13(a0)
                  slti         s4, s0, 326
                  slli         a4, zero, 5
                  slti         t5, s9, 222
                  xor          sp, a2, a5
                  sltiu        a3, t3, 1988
                  sh           sp, -6(a0)
                  lbu          ra, -1(a0)
                  lbu          ra, 15(a0)
                  sb           s8, 31(a0)
                  slli         t0, tp, 10
                  sh           t0, -34(a0)
                  sb           t0, -3(a0)
                  ori          a5, a5, -635
                  and          s5, a5, t6
                  lbu          s1, 11(a0)
                  srl          a5, t0, t1
                  auipc        t0, 589590
                  sll          a1, tp, s9
                  lb           s5, -47(a0)
                  srai         s1, t5, 15
                  sltiu        a6, s4, 1021
                  sb           t0, -43(a0)
                  lhu          a5, 60(a0)
                  lui          s2, 154136
                  slti         t0, a4, -820
                  and          s10, ra, t2
                  lhu          s10, 18(a0)
                  and          s11, a7, a0
                  lhu          a1, 16(a0)
                  slt          s1, a1, zero
                  andi         sp, zero, -1568
                  lbu          sp, 47(a0)
                  lb           a4, 16(a0)
                  srl          s8, gp, zero
                  sw           s11, -20(a0)
                  add          s11, s5, t1
                  lb           zero, -14(a0) #end riscv_load_store_rand_instr_stream_0
                  and          s10, sp, t6
                  slli         t4, s1, 25
                  la           a6, sub_1
                  sltiu        t2, t6, -1253
                  and          s5, t5, t6
                  lui          a5, 313732
                  srai         gp, t5, 24
                  addi         a6, a6, -95
                  slt          s11, s6, s6
main_j1:          jalr         ra, a6, 96 #jump main -> sub_1
                  slti         a7, t2, -1747
                  nop
                  bltu         s9, ra, 6f
                  ori          sp, s2, -1120
6:                slt          s9, zero, t1
                  srai         t6, s1, 4
                  nop
                  beq          s11, a3, 27f
                  bne          sp, sp, 29f
                  bgeu         tp, s8, 30f
                  lui          a6, 227727
                  slli         s3, t0, 17
                  andi         s6, a1, -490
                  beq          a1, a3, 24f
                  addi         t6, s1, -769
                  sra          t0, t4, t1
                  bltu         tp, a6, 32f
                  bltu         a1, s7, 30f
                  xori         s10, gp, 700
                  xor          a5, s3, t0
                  and          s9, s7, sp
                  beq          s6, a3, 29f
24:               bne          a2, s9, 26f
                  slti         a3, a0, 1446
26:               slti         gp, s5, -220
27:               slti         ra, a6, 1913
                  slt          t5, s8, a5
29:               xor          s8, a0, gp
30:               xori         s9, s11, -327
                  and          a6, s10, a3
32:               srl          a6, a6, sp
                  sub          a2, s0, a0
                  srli         s9, s8, 9
                  and          t5, a1, t1
                  srai         zero, s11, 31
                  bge          s8, t4, 38f
38:               and          tp, ra, s6
                  sub          t6, a3, s1
                  srai         ra, a0, 17
                  ori          a2, sp, -1151
                  slti         t4, ra, -430
                  sltiu        s3, s9, 139
                  beq          a6, s9, 63f
                  andi         s7, a2, -1643
                  addi         a6, a2, 412
                  beq          s7, a1, 57f
                  srl          s5, a7, s2
                  slt          s10, tp, t2
                  auipc        t4, 308832
                  addi         a4, a0, 1292
                  beq          a3, t1, 53f
53:               add          a7, ra, a6
                  sltiu        a2, s6, 1406
                  bge          t6, t1, 74f
                  srai         a3, t6, 22
57:               auipc        s2, 624484
                  auipc        a3, 734283
                  srli         t0, zero, 1
                  or           s6, s7, a4
                  srli         ra, t4, 29
                  addi         s3, s10, 1766
63:               xori         a5, s7, -22
                  slli         t0, s10, 27
                  srai         ra, tp, 26
                  and          a3, gp, s2
                  blt          t5, a1, 84f
                  sltiu        t2, tp, -1729
                  sub          s1, a0, t4
                  sltiu        s1, sp, 1773
                  slli         sp, s2, 0
                  slti         s10, ra, -1805
                  srl          t4, ra, s7
74:               ori          s6, a6, 771
                  auipc        ra, 639185
                  srai         t2, t1, 13
                  srli         t4, t5, 31
                  slli         a2, t5, 10
                  xor          t6, s7, s6
                  or           t0, s0, t0
                  slli         s3, t2, 17
                  nop
                  add          a0, s5, tp
84:               or           a6, zero, s5
                  slti         a5, s2, 1493
                  sltiu        s4, sp, -259
                  add          tp, a2, s4
                  bge          a5, a1, 92f
                  ori          s2, tp, 358
                  xori         t6, t6, 1284
                  bge          a0, zero, 104f
92:               lui          s4, 750857
                  slli         a7, a3, 30
                  andi         t5, s9, -351
                  bge          a5, s10, 112f
                  lui          s4, 1036602
                  blt          s11, s1, 115f
                  or           sp, t2, s8
                  bgeu         s4, a5, 117f
                  slt          t2, a2, t1
                  and          s2, a2, s1
                  bge          t1, s7, 116f
                  beq          t0, a5, 106f
                  sltiu        tp, a0, 1204
                  la           t0, sub_2
                  nop
                  lui          a4, 177698
                  slli         t5, a3, 12
                  and          tp, t4, t4
                  addi         t0, t0, -880
                  sltiu        s8, t4, -1662
                  auipc        t4, 599779
                  nop
                  and          t5, t5, s7
main_j2:          jalr         ra, t0, 881 #jump main -> sub_2
104:              slti         s4, a1, -307
                  add          s4, t0, t6
106:              sub          a0, t2, a5
                  xori         a5, s2, -201
                  srl          s8, a1, t2
                  nop
                  nop
                  bltu         t3, s0, 131f
112:              xor          s8, s6, ra
                  slti         a7, s0, -419
                  auipc        t6, 591050
115:              add          s5, a0, ra
116:              or           a1, s7, t6
117:              bne          t3, s3, 131f
                  add          a2, a1, s6
                  auipc        s4, 670491
                  bge          gp, gp, 125f
                  slti         a5, sp, 1349
                  add          a4, a6, t4
                  nop
                  andi         t0, t2, -1397
125:              bne          ra, s9, 136f
                  slli         a3, s5, 24
                  sltiu        s6, a4, 959
                  ori          a5, a2, 495
                  bgeu         s5, a0, 136f
                  lui          s1, 745025
131:              slli         s1, s6, 17
                  sll          t4, s11, s11
                  srli         t6, t3, 19
                  andi         a0, s11, -1891
                  slt          t6, s9, s6
136:              srli         a2, s6, 14
                  la x6, test_done
                  jalr x0, x6, 0
test_done:        
                  li gp, 1
                  ecall
sub_9:            addi         a0, a6, -1346
                  bge          s2, t5, sub_9_stack_p
                  srl          t5, t2, a4
sub_9_stack_p:    addi         t3, t3, -40
                  xor          s11, s2, s1
                  slt          s9, a1, a2
                  sw           ra, 4(t3)
                  or           a2, ra, a7
                  srli         s7, a6, 31
                  lui          s8, 827674
                  la           a0, region_0+1619 #start riscv_load_store_rand_instr_stream_12
                  lb           zero, 0(a0)
                  srli         gp, s3, 9
                  lb           s6, -15(a0)
                  sh           tp, -3(a0)
                  lh           ra, -5(a0)
                  lb           a2, 4(a0)
                  lb           a7, -10(a0)
                  lb           s1, 12(a0)
                  sh           s6, 15(a0)
                  sll          a1, sp, t6
                  sh           a1, -15(a0)
                  sub          s3, t5, s8
                  sb           a0, 8(a0)
                  sra          a2, a0, s0
                  sb           t1, 16(a0)
                  xori         a3, ra, 1675
                  lhu          a1, 7(a0)
                  lbu          tp, 16(a0)
                  srli         s6, gp, 17
                  sh           s0, -7(a0)
                  lui          tp, 429736
                  lhu          a6, 1(a0)
                  sb           t1, 1(a0)
                  lb           tp, 8(a0)
                  sb           tp, 4(a0)
                  ori          s2, tp, -334
                  xor          a1, a4, s2
                  addi         s6, tp, 495
                  lbu          a4, 2(a0)
                  lhu          a7, -9(a0)
                  sb           a1, 6(a0)
                  sb           a6, -5(a0)
                  sh           a7, 3(a0)
                  lw           s9, 9(a0)
                  sh           s7, -7(a0)
                  sh           t5, -13(a0)
                  sltiu        s5, t1, 151
                  sra          s8, gp, s5
                  sb           sp, -4(a0) #end riscv_load_store_rand_instr_stream_12
                  la           sp, region_0+605 #start riscv_load_store_rand_instr_stream_7
                  lui          t5, 855534
                  lhu          s1, 81(sp)
                  xori         s5, a6, 880
                  sb           t4, -164(sp)
                  lw           a1, -65(sp)
                  xori         s9, a0, -391
                  lbu          s11, -30(sp)
                  xor          s10, s10, a0
                  slt          t5, a7, s7
                  sll          t4, s8, a1
                  lb           a2, -223(sp)
                  xor          t5, s0, t5
                  sll          s9, ra, s10
                  sltiu        a6, t2, 2022
                  or           s10, t1, t0
                  lbu          s6, -206(sp)
                  sb           t1, 144(sp)
                  lh           s8, 247(sp)
                  xor          s9, a0, a5
                  sb           a6, 122(sp)
                  sra          s11, t6, s5
                  lbu          zero, -167(sp)
                  sb           a6, -72(sp)
                  lw           s10, 27(sp)
                  sb           s0, 224(sp)
                  lh           ra, 193(sp)
                  srli         t0, a6, 13
                  or           ra, a5, a6
                  lbu          tp, 17(sp)
                  lbu          s1, 58(sp)
                  lw           s10, -225(sp)
                  xori         a6, s3, 1074
                  slti         ra, a5, -242
                  slt          t2, s8, s4
                  lbu          s1, -90(sp)
                  slli         zero, ra, 8
                  xor          a0, t3, t5
                  lb           s11, -194(sp)
                  addi         t5, t5, -1473
                  lbu          t2, -238(sp)
                  lbu          gp, 49(sp)
                  lui          s4, 358525
                  sb           a4, 231(sp) #end riscv_load_store_rand_instr_stream_7
                  la           s3, region_1+41 #start riscv_load_store_rand_instr_stream_1
                  and          sp, s2, t2
                  lbu          a2, 1450(s3)
                  or           s2, a4, sp
                  lbu          s2, 1584(s3)
                  sll          a3, s6, s4
                  sb           t6, 94(s3)
                  sltu         s11, t3, t6
                  srl          a6, s11, a6
                  lbu          a6, 1214(s3)
                  sb           a7, 1737(s3)
                  lbu          a5, 1458(s3)
                  ori          tp, s10, -62
                  lbu          zero, 1274(s3)
                  lh           s9, 1149(s3)
                  lb           a3, 328(s3)
                  lui          s5, 120186
                  sb           t5, 1240(s3)
                  srai         s4, t4, 30
                  sub          a2, ra, a6
                  slli         s9, a4, 12
                  lb           a5, 178(s3)
                  lh           s2, 67(s3)
                  sb           a6, 159(s3)
                  addi         a1, s6, 1297
                  sll          tp, a7, s6
                  lb           s9, 1046(s3)
                  and          s7, s5, s0
                  lui          s11, 730682
                  sra          a7, sp, s8
                  addi         gp, ra, -1099
                  sll          s1, s1, t1
                  sh           gp, 1689(s3) #end riscv_load_store_rand_instr_stream_1
                  la           s3, region_0+835 #start riscv_load_store_rand_instr_stream_6
                  lui          a3, 239300
                  xor          t6, t5, a4
                  lh           t6, 373(s3)
                  srli         tp, a4, 9
                  sb           s6, -758(s3)
                  lw           a2, -611(s3)
                  lb           tp, -584(s3)
                  lw           a6, -51(s3)
                  and          s8, t5, s0
                  lbu          a5, -126(s3)
                  lb           gp, 42(s3)
                  xor          s7, gp, s7
                  lui          s10, 1028023
                  ori          s8, s10, -91
                  slti         t2, s10, 1127
                  sb           s6, 1101(s3)
                  lb           t2, -8(s3)
                  slti         s5, sp, -2001
                  ori          tp, ra, -282
                  xor          gp, s8, a0
                  srai         a4, a1, 18
                  add          s9, t3, t4
                  andi         sp, t4, -1992
                  lh           zero, -141(s3)
                  lbu          a6, 704(s3)
                  srai         t5, tp, 1
                  sh           s2, 211(s3)
                  sw           a3, 1121(s3)
                  sb           s1, -469(s3)
                  lb           s9, -568(s3)
                  sra          t0, tp, s8
                  srli         s7, t0, 13
                  lbu          t5, 694(s3)
                  addi         gp, t5, 121
                  lbu          s6, 221(s3)
                  lbu          s2, -329(s3)
                  lui          s5, 236407
                  auipc        zero, 733485
                  sltiu        s4, a2, 1240
                  sra          s6, tp, s0
                  slt          s9, a7, s3
                  nop
                  lb           a3, -298(s3)
                  lb           t2, -476(s3)
                  addi         s10, a3, 1188
                  lb           a4, -318(s3)
                  ori          a5, s8, 1664
                  lbu          s7, 220(s3)
                  sb           gp, 654(s3)
                  slti         t0, a1, -303
                  andi         s5, s10, -24
                  lbu          sp, -540(s3)
                  sltu         tp, a5, s8
                  lbu          a4, -784(s3) #end riscv_load_store_rand_instr_stream_6
                  la           s9, region_1+1483 #start riscv_load_store_rand_instr_stream_13
                  lb           s6, -526(s9)
                  lh           t6, 221(s9)
                  lb           s6, -132(s9)
                  sb           s10, -1192(s9)
                  lbu          gp, 501(s9)
                  lhu          s2, -867(s9)
                  andi         s5, gp, -1988
                  slli         sp, s4, 1
                  srai         t2, a0, 25
                  srai         s8, s5, 7
                  sh           t0, 253(s9)
                  lhu          s4, -913(s9)
                  xor          s6, s6, t1
                  lb           s8, -1033(s9)
                  srl          a5, s9, zero
                  lb           tp, 194(s9)
                  lhu          s7, 115(s9)
                  lbu          s4, -1120(s9)
                  sb           a4, -60(s9)
                  sh           sp, -929(s9)
                  slt          t4, t0, a7
                  lh           s10, -635(s9)
                  lb           t5, 182(s9)
                  lhu          a3, -89(s9)
                  xor          s4, zero, s2
                  auipc        ra, 358927
                  sb           s1, 102(s9)
                  lw           a3, -647(s9)
                  srai         s11, t4, 20
                  lui          a5, 509401
                  sb           t5, 464(s9)
                  addi         ra, t1, -1056
                  sh           t4, 389(s9)
                  srl          a3, s8, s4
                  sb           s1, -118(s9)
                  lb           s2, 259(s9)
                  sw           t1, -1311(s9)
                  sh           t0, -935(s9)
                  lbu          tp, 274(s9)
                  lbu          zero, -1032(s9) #end riscv_load_store_rand_instr_stream_13
                  la           sp, region_1+1221 #start riscv_load_store_rand_instr_stream_11
                  sra          a5, s4, s10
                  slli         tp, a5, 7
                  slti         s10, s11, -159
                  sltu         tp, a7, gp
                  lui          s9, 574107
                  lb           t6, 12(sp)
                  lb           zero, 7(sp)
                  lb           t5, 12(sp)
                  lbu          t4, -5(sp)
                  add          s4, a2, s10
                  and          s6, a3, ra
                  sb           s0, 9(sp)
                  sh           zero, 1(sp)
                  sb           a0, 0(sp)
                  sub          s8, s6, t6
                  lh           zero, 5(sp)
                  srai         ra, zero, 17
                  slt          a6, a6, s3
                  xori         s5, s2, -261
                  srli         s10, tp, 13
                  ori          tp, a3, -163
                  srai         t2, s1, 4
                  sh           t6, 15(sp)
                  lhu          t0, 1(sp)
                  sltu         ra, s4, a0
                  sb           a7, 8(sp)
                  sltiu        gp, t1, 658
                  slli         a2, a6, 18
                  slt          a6, s7, gp
                  or           a7, s0, a2
                  slt          s5, s11, t4
                  sh           tp, -13(sp)
                  lbu          tp, -8(sp)
                  sb           a3, 2(sp) #end riscv_load_store_rand_instr_stream_11
                  la           t6, region_1+1207 #start riscv_load_store_rand_instr_stream_3
                  lui          s6, 653270
                  sb           t0, 83(t6)
                  sw           ra, 21(t6)
                  lbu          s10, 210(t6)
                  srl          s7, s0, a7
                  lb           s11, 221(t6)
                  sltu         zero, s7, a7
                  sub          a7, t6, sp
                  lbu          s8, 40(t6)
                  sltiu        a6, s1, 1940
                  nop
                  xori         a4, a5, -2023
                  sb           s7, 119(t6)
                  lb           s1, 222(t6)
                  ori          a1, a6, -1043
                  and          s9, s3, s5
                  xor          s9, t3, sp
                  srli         a2, s5, 29
                  lh           s11, 47(t6)
                  andi         a0, t5, -819
                  lbu          a7, 242(t6)
                  sw           s10, 37(t6)
                  add          a4, s5, t3
                  or           a1, t6, s3
                  sh           s0, -45(t6)
                  slti         t4, gp, 879
                  sltiu        s2, t6, -1505
                  xori         s4, zero, -1933
                  sw           s11, -191(t6)
                  lbu          zero, -14(t6)
                  slt          s2, s6, a1
                  sltiu        s3, t2, -1170
                  xor          a4, s8, t0
                  lb           s6, -223(t6)
                  lbu          a0, -250(t6)
                  slti         gp, a7, -1891
                  lhu          s11, 223(t6)
                  xor          s8, s0, s3
                  sh           a7, 135(t6)
                  addi         a5, t1, 457
                  sb           gp, 162(t6)
                  or           t4, t5, s10
                  xor          sp, s4, s2
                  lbu          s1, 107(t6)
                  lb           s7, -224(t6)
                  lb           s8, -178(t6)
                  add          t2, s10, s10
                  sll          a7, gp, t2
                  sra          gp, gp, t1
                  sh           a6, -157(t6)
                  lbu          t5, 246(t6) #end riscv_load_store_rand_instr_stream_3
                  la           s11, region_1+1723 #start riscv_load_store_rand_instr_stream_10
                  slti         s1, t0, 1728
                  sb           t4, -9(s11)
                  addi         tp, ra, 1744
                  lbu          ra, 6(s11)
                  sb           a6, 4(s11)
                  ori          s9, t3, 296
                  slli         a2, s3, 4
                  or           t5, a7, sp
                  sb           a6, -2(s11)
                  sh           a7, 9(s11)
                  slt          s10, s6, a6
                  lbu          s5, 10(s11)
                  slti         t4, s5, 277
                  lbu          tp, 0(s11)
                  slt          a2, s0, a0
                  lh           a0, 7(s11)
                  slli         a0, s1, 21
                  srli         a2, ra, 14
                  nop
                  sub          a1, s11, s9
                  or           a0, s6, t3
                  sb           s9, -4(s11)
                  lb           t4, 6(s11)
                  lb           sp, -5(s11)
                  sra          gp, gp, a3
                  lbu          sp, 16(s11)
                  sub          tp, t0, ra
                  sub          s8, tp, t2
                  lbu          s5, -8(s11)
                  slti         s4, a7, 1809
                  lw           s6, -11(s11)
                  auipc        gp, 265173
                  lb           ra, -15(s11)
                  slli         tp, s7, 26
                  sltu         s4, zero, t1
                  lb           a1, 10(s11)
                  lh           t0, -7(s11) #end riscv_load_store_rand_instr_stream_10
                  la           sp, region_0+949 #start riscv_load_store_rand_instr_stream_9
                  sb           tp, 3(sp)
                  lhu          a5, -5(sp)
                  sh           a3, -7(sp)
                  sub          a5, s5, s7
                  slli         tp, a3, 21
                  sb           a5, -2(sp)
                  lbu          a3, 2(sp)
                  lb           t4, -2(sp)
                  lb           t5, -5(sp)
                  andi         t4, a1, -267
                  lbu          ra, -8(sp)
                  slti         t2, sp, 1600
                  lui          a4, 929969
                  lbu          s6, 1(sp)
                  lb           s6, -10(sp)
                  sb           gp, -10(sp)
                  lb           s2, 12(sp)
                  lb           s1, -11(sp)
                  lb           gp, -12(sp)
                  lbu          s5, 2(sp)
                  add          t6, gp, t0
                  nop
                  sb           a0, 10(sp)
                  sh           s2, -1(sp)
                  nop
                  sb           t4, 10(sp)
                  sub          a4, t6, a0
                  srai         a0, s3, 27
                  sb           t2, 5(sp)
                  slti         s5, a6, -833
                  lb           t2, 16(sp)
                  sh           t5, 7(sp)
                  sb           a3, -13(sp) #end riscv_load_store_rand_instr_stream_9
                  la           sp, region_1+1716 #start riscv_load_store_rand_instr_stream_8
                  sh           s1, 8(sp)
                  auipc        t4, 864165
                  xor          t5, t1, t3
                  lb           s5, 1(sp)
                  lh           a1, 4(sp)
                  sb           s6, -3(sp)
                  sra          tp, a7, gp
                  sb           gp, 6(sp)
                  lhu          a2, -16(sp)
                  sb           t4, 16(sp)
                  slli         a6, s10, 6
                  xori         t4, s8, 498
                  lb           s9, 7(sp)
                  lbu          a4, 5(sp)
                  lbu          a3, 1(sp)
                  ori          s2, a2, 1276
                  or           t2, zero, tp
                  sltu         t0, ra, t3
                  lw           s7, -4(sp)
                  ori          t5, s11, -1096
                  lhu          a1, 14(sp)
                  srl          a6, s2, a2
                  lbu          s10, -3(sp)
                  sh           s3, -14(sp)
                  slt          t0, ra, a4
                  auipc        s2, 56850
                  sltu         ra, a1, a1
                  or           s7, gp, a7
                  lb           gp, 6(sp)
                  sb           s2, -10(sp)
                  lh           s3, -14(sp)
                  slti         s1, s11, 725
                  auipc        t6, 241294
                  srai         a7, s5, 5
                  sb           t3, -15(sp)
                  lhu          a1, 10(sp)
                  and          s8, s1, s2
                  ori          a0, s8, -986
                  sh           t0, 12(sp)
                  lh           a6, 6(sp)
                  sltiu        s1, gp, -850
                  nop
                  sh           zero, 12(sp)
                  srli         s10, t3, 19
                  sb           t5, 11(sp)
                  sra          s1, a6, s8
                  slt          s7, gp, s1
                  sltiu        gp, s4, -1159
                  slli         tp, s11, 29
                  lbu          s9, 15(sp) #end riscv_load_store_rand_instr_stream_8
                  la           t5, region_1+250 #start riscv_load_store_rand_instr_stream_5
                  xori         s4, s9, -918
                  lb           a2, 47(t5)
                  lbu          t0, -39(t5)
                  or           sp, s10, t4
                  lbu          t2, -26(t5)
                  lhu          a2, 6(t5)
                  lhu          t2, 30(t5)
                  srli         s8, s5, 13
                  xori         gp, ra, -1769
                  lbu          a1, -29(t5)
                  lbu          t0, 45(t5)
                  xori         s5, t1, 1
                  sb           sp, -43(t5)
                  lhu          sp, 34(t5)
                  lw           s2, -10(t5)
                  sb           tp, -35(t5)
                  sltu         t4, s5, s8
                  xori         sp, a1, -150
                  lui          s2, 643156
                  lw           a3, 22(t5)
                  sb           s4, -31(t5)
                  srl          s9, s3, a3
                  andi         a1, s11, -762
                  ori          a1, gp, -1723
                  addi         s11, t3, -62
                  xor          s3, sp, s3
                  sltiu        s7, s9, 1047
                  sra          s6, a0, tp
                  srli         sp, a5, 0
                  srai         s4, a6, 10
                  sb           s10, -24(t5)
                  sh           sp, -8(t5)
                  lb           s9, -55(t5)
                  sb           s6, 23(t5)
                  lui          s4, 652136
                  lh           ra, 32(t5)
                  auipc        gp, 347769
                  sb           s2, -28(t5)
                  sub          s1, a6, t3
                  lbu          t2, 19(t5)
                  lhu          s2, 10(t5)
                  lhu          a2, -36(t5)
                  sb           s1, -10(t5)
                  sb           a0, 30(t5)
                  srl          sp, t6, t3
                  lui          t2, 976878
                  slti         gp, s4, -1199
                  sll          a7, a6, gp
                  srli         a3, s8, 4
                  add          s3, s8, s11
                  sh           zero, 6(t5)
                  lbu          s8, -21(t5)
                  slt          s5, s11, gp
                  xor          a5, s6, s0
                  lbu          a5, -15(t5) #end riscv_load_store_rand_instr_stream_5
                  la           a6, region_1+1304 #start riscv_load_store_rand_instr_stream_2
                  auipc        s1, 82124
                  srl          s8, s0, a2
                  lbu          a5, -54(a6)
                  lb           zero, -61(a6)
                  addi         s7, t4, 732
                  auipc        a0, 301041
                  lh           s10, 50(a6)
                  lui          t6, 917332
                  srli         t4, t0, 26
                  sb           t6, -63(a6)
                  lb           t4, 59(a6)
                  sw           s7, -64(a6)
                  lui          a1, 368163
                  srli         a0, s2, 18
                  sw           t6, 20(a6)
                  lhu          a2, -14(a6)
                  auipc        t4, 768699
                  sll          zero, s3, t5
                  slti         s7, sp, -1891
                  lhu          ra, 0(a6)
                  sb           tp, 25(a6)
                  andi         a4, a0, 392
                  slt          t2, t0, s11
                  sb           t2, -28(a6)
                  sb           s2, -57(a6)
                  or           t0, a2, sp
                  lh           gp, 26(a6)
                  lbu          t2, 35(a6)
                  slti         s5, t6, -903
                  sra          a4, t1, s11
                  addi         a2, t5, 1926
                  add          a7, s0, t3
                  sll          s10, a7, s5
                  slti         s2, tp, -1339
                  lh           s9, -60(a6)
                  sltu         s2, ra, s10
                  xor          tp, a3, t2
                  sb           a2, 36(a6) #end riscv_load_store_rand_instr_stream_2
                  nop
                  srai         t4, s4, 2
                  bltu         a4, s7, 4f
                  sltu         t4, a2, a0
4:                blt          a7, t3, 6f
                  and          t5, zero, s5
6:                auipc        s11, 770689
                  srai         t5, s10, 17
                  sltu         zero, s5, s11
                  blt          ra, t2, 23f
                  slli         a6, t5, 0
                  slti         a4, zero, 487
                  addi         s5, tp, 806
                  sra          t2, gp, t2
                  sltu         s8, a5, a2
                  nop
                  srli         a1, t1, 16
                  bne          tp, t5, 36f
                  slli         t6, sp, 22
                  bgeu         a6, a5, 34f
                  xor          a6, t3, a6
                  and          sp, zero, t4
                  and          s3, s1, s3
23:               addi         a6, s3, 1620
                  ori          s1, s3, 1793
                  beq          gp, t2, 32f
                  beq          a3, a2, 43f
                  srli         s4, t6, 4
                  nop
                  srai         a4, t1, 13
                  add          s4, s10, t4
                  blt          s9, s1, 43f
32:               sra          a5, zero, a2
                  sltu         t4, s1, t0
34:               add          t4, a7, s10
                  sll          s7, a3, s11
36:               sltiu        t0, t1, 915
                  slli         sp, s0, 23
                  bltu         ra, a3, 44f
                  or           s5, a5, s6
                  srl          s4, gp, sp
                  slt          a3, s3, s11
                  andi         t4, tp, 52
43:               bgeu         zero, a1, 49f
44:               sra          s8, gp, s10
                  srli         ra, a5, 3
                  sltiu        s9, s9, 1893
                  slti         t0, s8, -506
                  srli         t0, a2, 17
49:               bltu         t4, s3, 68f
                  xori         s1, s6, 122
                  ori          s3, s8, -693
                  sub          s4, a7, a5
                  and          zero, s5, s2
                  blt          s6, sp, 67f
                  bne          a6, a3, 75f
                  andi         s10, t2, 403
                  srl          s9, a7, ra
                  andi         s7, s0, -1881
                  bgeu         ra, a1, 65f
                  lui          ra, 888320
                  sltiu        s2, t6, 1408
                  auipc        s10, 857818
                  addi         a5, s8, -84
                  srai         s5, t6, 19
65:               auipc        t4, 670577
                  slli         a3, s9, 2
67:               beq          t6, s6, 80f
68:               slti         zero, s10, -209
                  bgeu         sp, t0, 72f
                  xori         ra, a2, -437
                  xor          t5, a3, s8
72:               ori          s9, t1, -1383
                  sltiu        a7, a3, 1444
                  bge          a4, s11, 85f
75:               and          a0, a2, s8
                  nop
                  add          a1, s4, a6
                  sltu         s3, a7, a7
                  sltiu        s4, s11, -1310
80:               sltiu        t0, s4, 1121
                  nop
                  sltiu        t4, a5, -1959
                  sra          ra, t4, gp
                  andi         a4, a1, 426
85:               slli         t4, a0, 9
                  blt          zero, a6, 99f
                  andi         a0, t2, -481
                  addi         t4, t4, 621
                  slti         gp, a2, 937
                  slt          a3, a4, s7
                  addi         a4, s10, 224
                  srl          a5, s4, a1
                  sltiu        a0, s11, 280
                  slli         a7, t6, 14
                  slti         t0, s2, -132
                  bge          gp, a0, 104f
                  xori         s3, s5, 1589
                  sll          s5, sp, t2
99:               and          tp, t0, s5
                  nop
                  srli         t0, s9, 19
                  sub          s5, sp, s8
                  srl          a1, s4, tp
104:              xori         a1, ra, -719
                  sltiu        a4, s5, 303
                  xori         s2, s4, 1429
                  slti         s3, a6, 834
                  blt          zero, sp, 114f
                  lui          a5, 125140
                  srai         s1, t6, 30
                  sub          s3, s0, a0
                  sltu         a4, t0, s1
                  auipc        t0, 1020171
114:              slt          tp, s1, tp
                  srai         sp, s6, 17
                  blt          s4, s9, 117f
117:              beq          ra, t0, 127f
                  xor          s9, gp, s8
                  bltu         s1, t2, 137f
                  srai         a6, sp, 7
                  bgeu         t2, t0, 127f
                  add          a1, a1, a6
                  beq          t5, gp, 135f
                  bgeu         t5, a7, 127f
                  slli         a0, sp, 19
                  srl          tp, t6, s6
127:              beq          s10, s2, 139f
                  srai         a5, a7, 27
                  andi         s11, tp, -1957
                  slt          s10, tp, zero
                  sub          a3, s8, t4
                  srl          a3, s4, t2
                  lui          zero, 946441
                  srl          a3, a6, a7
135:              and          s7, a7, s5
                  xori         a1, t6, 569
137:              slti         a2, a1, 1409
                  beq          s0, t4, 147f
139:              sub          s10, s9, a0
                  sltiu        t2, a2, 223
                  blt          t6, s0, 152f
                  srli         s10, s11, 20
                  srl          s2, t1, a0
                  bge          t4, t2, 159f
                  ori          s7, ra, 217
                  srl          a6, s7, zero
147:              and          a0, s5, s6
                  bne          s7, s3, 150f
                  bltu         sp, a7, 155f
150:              add          s1, a2, a4
                  beq          a3, gp, 165f
152:              slti         tp, s11, 1405
                  sltiu        s1, t4, -125
                  slli         a7, a7, 13
155:              nop
                  slti         s10, t1, -1934
                  nop
                  and          a3, a2, s4
159:              sll          t4, t0, a0
                  or           t4, s1, a0
                  addi         a5, t0, 638
                  blt          tp, s6, 172f
                  xori         sp, sp, 1210
                  srai         a1, a3, 30
165:              slti         a2, a4, 1763
                  blt          s7, tp, 183f
                  xori         t6, s10, -1526
                  lui          a4, 730684
                  sra          a2, a7, tp
                  addi         s4, ra, 1170
                  sll          t2, s10, tp
172:              sub          gp, s8, t6
                  sub          a7, a6, gp
                  bgeu         sp, s2, 181f
                  sra          s9, t1, a0
                  sll          gp, s3, s10
                  bge          s4, t3, 186f
                  slti         s7, s1, -1226
                  bne          s7, ra, 191f
                  slli         s9, t0, 1
181:              add          s6, a0, s1
                  lui          s7, 363022
183:              add          s9, s9, s8
                  andi         t0, s7, 217
                  bltu         t5, s10, 191f
186:              srai         t2, t2, 3
                  sll          t5, t4, tp
                  bge          a5, s2, 200f
                  srli         a6, t0, 8
                  slt          a3, s6, s7
191:              andi         t0, s7, -1671
                  andi         t2, s2, -1494
                  sll          a7, s9, s0
                  slt          a0, t4, a0
                  bgeu         ra, s10, 215f
                  addi         s5, s8, -267
                  bne          a7, tp, 215f
                  xori         a3, s6, 1061
                  blt          sp, s6, 210f
200:              sub          a3, s0, a7
                  xori         s3, t4, 885
                  sll          a0, t5, s4
                  srli         a5, a2, 24
                  blt          t4, s7, 206f
                  beq          s6, s8, 217f
206:              sub          s6, s3, t1
                  xor          ra, s6, s7
                  lui          a6, 183161
                  bge          gp, s5, 224f
210:              sub          a4, t4, a5
                  slti         a0, tp, -868
                  srli         s10, s2, 20
                  auipc        a1, 553954
                  addi         s7, sp, -1863
215:              srl          s9, a5, a6
                  srli         s1, s5, 20
217:              andi         t2, s7, -1851
                  slti         a3, t4, -1351
                  bgeu         t5, s11, 234f
                  blt          ra, t4, 226f
                  srl          a5, t1, a7
                  and          a6, t6, gp
                  bne          t5, s3, 236f
224:              srli         s3, t3, 0
                  srai         gp, tp, 1
226:              bgeu         t6, a5, 239f
                  srai         s1, t5, 13
                  blt          s3, gp, 236f
                  blt          gp, t2, 232f
                  srl          sp, s2, a3
                  or           t2, s11, s8
232:              sltu         zero, a4, t1
                  sll          t0, a0, a4
234:              xor          t5, s6, t5
                  srl          a1, s0, zero
236:              sra          gp, t4, s11
                  auipc        tp, 154188
                  sltiu        a1, t1, 1717
239:              xori         a7, s6, -1499
                  slt          tp, s1, s6
                  bgeu         a6, s6, 260f
                  sub          tp, s3, t5
                  slt          tp, s5, t1
                  bne          s10, t6, 250f
                  beq          t1, s4, 248f
                  srli         t5, a0, 21
                  sra          t4, s1, a5
248:              ori          s8, t4, -1648
                  sra          a0, s11, s3
250:              sub          a7, a6, a7
                  sll          s10, t5, gp
                  bltu         s7, gp, 271f
                  sll          a0, t6, a2
                  bge          a6, s3, 260f
                  slt          t6, gp, t0
                  sll          gp, t0, s0
                  xori         a7, a6, -526
                  bge          t0, s11, 271f
                  slt          s6, s8, s8
260:              bne          s9, s5, 261f
261:              sll          s4, a4, a2
                  xor          ra, gp, s3
                  and          t2, a1, zero
                  sll          s2, s3, s4
                  xori         t5, a2, 837
                  nop
                  addi         s2, s7, -180
                  bgeu         t4, t0, 279f
                  or           a3, s5, s1
                  beq          a3, ra, 288f
271:              srai         a4, s11, 10
                  xor          sp, a7, a6
                  beq          s0, a3, 274f
274:              andi         s6, t0, -319
                  sub          s10, s7, tp
                  slti         s7, s7, -488
                  slti         t0, s5, -187
                  sll          ra, a1, a6
279:              srli         t5, s8, 0
                  slli         s5, s1, 25
                  xori         a1, s6, 1239
                  sltu         s9, tp, a3
                  and          s9, zero, t2
                  bne          s6, tp, 290f
                  bne          sp, s8, 295f
                  nop
                  ori          a4, t1, 633
288:              bge          s1, sp, 294f
                  sltu         sp, s7, t2
290:              beq          a0, s2, 302f
                  and          t5, t2, s2
                  srli         t6, gp, 2
                  bgeu         s3, gp, 299f
294:              bge          s0, s2, 305f
295:              sltiu        sp, s11, 1338
                  lui          s10, 455907
                  sll          a0, s8, t3
                  slt          t5, a7, s5
299:              bgeu         a0, a7, 318f
                  lui          s8, 673988
                  nop
302:              sltiu        s9, s4, -783
                  ori          s4, t4, -305
                  auipc        s11, 503806
305:              sll          a5, t2, s2
                  addi         sp, gp, -867
                  srl          a7, a6, s8
                  bne          a2, s11, 314f
                  or           a5, ra, t2
                  sltiu        t2, tp, 441
                  xori         s10, t0, -1278
                  blt          a7, a2, 320f
                  bgeu         s3, t0, 316f
314:              ori          t6, s1, -1641
                  srl          s10, t3, gp
316:              srai         s4, s1, 4
                  or           a3, gp, s11
318:              srli         t6, s10, 1
                  bltu         t5, a7, 325f
320:              sltiu        t5, a4, -1111
                  auipc        a7, 617898
                  xori         s4, s5, -1544
                  andi         sp, t2, 629
                  bltu         s6, a0, 331f
325:              addi         s4, s4, -1130
                  slli         t4, t0, 15
                  xor          s1, s1, a2
                  lui          s6, 971019
                  bltu         a0, s0, 331f
                  sub          a0, s4, t6
331:              add          s11, t2, s4
                  slti         a2, s8, 747
                  sltu         s4, t0, ra
                  bltu         s3, a3, 346f
                  add          t4, a7, tp
                  sltu         sp, a7, s8
                  sltiu        s9, s10, 1045
                  slli         a1, a3, 14
                  xor          t2, t1, tp
                  andi         t6, t1, -1702
                  sltiu        ra, s0, 275
                  bne          a7, a1, 355f
                  bge          t6, t6, 358f
                  xori         t6, t0, -1057
                  sll          t5, s10, t5
346:              andi         s11, s11, -205
                  blt          s5, s10, 349f
                  bge          ra, a2, 351f
349:              and          s3, a1, zero
                  sltu         s4, s0, s3
351:              andi         t2, t3, -620
                  sra          s10, a1, a6
                  sll          s5, t1, t1
                  sra          s6, a7, s9
355:              bgeu         gp, s7, 364f
                  slti         gp, s2, 1773
                  add          t5, a3, t3
358:              add          sp, t2, zero
                  srl          s3, s0, ra
                  bge          s10, tp, 377f
                  srli         t4, s8, 4
                  sll          s7, a7, t6
                  sra          s4, a2, t5
364:              xori         s8, a3, 1741
                  addi         a5, s6, 830
                  auipc        t5, 542473
                  sll          a0, s11, s9
                  sub          s5, a7, a5
                  sra          sp, s9, s9
                  sll          ra, t3, s8
                  andi         s2, t3, -1739
                  sll          a0, t1, a5
                  add          s5, a2, s6
                  bne          s7, t6, 385f
                  sra          s1, s11, a1
                  and          s1, s4, s7
377:              sltu         a3, s0, t4
                  nop
                  add          a1, tp, s11
                  bge          a4, s11, 400f
                  bltu         s10, s5, 394f
                  sra          s11, a0, ra
                  xor          t0, a1, s10
                  lui          s10, 755787
385:              nop
                  bge          t3, sp, 400f
                  ori          gp, s11, -1722
                  blt          t0, s3, 401f
                  bgeu         a2, sp, 404f
                  add          sp, t3, t6
                  sltiu        s3, a5, 1071
                  sltu         a1, t0, s10
                  lui          sp, 839682
394:              beq          s8, s5, 413f
                  sltu         a5, a6, t2
                  sltu         t4, t1, a7
                  slli         s2, t3, 16
                  bgeu         s8, s4, 410f
                  slti         s2, a0, 1456
400:              ori          s8, tp, 1249
401:              auipc        t0, 787901
                  slt          t6, zero, s5
                  slti         s3, s0, -83
404:              andi         s10, a2, 1635
                  sra          ra, s7, a1
                  ori          t4, s2, 1602
                  ori          s4, s8, 318
                  xor          a3, s8, a4
                  bltu         a4, a6, 419f
410:              and          a3, t2, zero
                  bltu         s10, t0, 423f
                  slt          s9, t4, t5
413:              sra          zero, a1, t2
                  add          s3, a0, t2
                  slt          t2, s1, t5
                  ori          a2, s1, -73
                  bne          s4, s2, 431f
                  auipc        s1, 458768
419:              add          t2, s10, s7
                  lui          a2, 754484
                  and          s5, tp, t0
                  beq          s6, s9, 435f
423:              lui          a4, 159585
                  srl          t4, s3, s11
                  and          t6, a6, zero
                  sub          s6, t1, a7
                  slt          t5, a2, zero
                  beq          a5, a3, 431f
                  slt          t0, s7, a3
                  sltu         a0, s7, a3
431:              or           t6, t6, sp
                  srli         s6, t3, 25
                  sltu         s4, a7, t3
                  slti         s7, s11, 1897
435:              slli         s2, t0, 23
                  and          t2, s7, s2
                  bne          t4, s6, 455f
                  sll          a1, s4, a5
                  sll          s9, s7, s11
                  and          t0, a5, s0
                  add          a1, s2, a1
                  sll          s7, a0, t0
                  and          a6, a2, t4
                  bne          s5, s9, 450f
                  srai         a3, zero, 4
                  sltiu        a7, s6, -638
                  xor          t5, a2, tp
                  slt          s7, s11, s11
                  xori         s10, s6, 1208
450:              srl          ra, zero, s3
                  bne          t1, s8, 457f
                  beq          s9, t1, 464f
                  slt          a6, s4, s2
                  sll          a6, t2, s2
455:              srli         a1, t1, 25
                  bne          t0, t0, 467f
457:              slti         s10, a4, -1038
                  bgeu         t6, s2, 477f
                  nop
                  slt          t6, s10, a1
                  xor          zero, s8, s9
                  blt          a6, a5, 464f
                  nop
464:              beq          t0, t6, 471f
                  ori          a7, a0, -347
                  bltu         ra, t0, 472f
467:              nop
                  srli         s9, a0, 20
                  beq          t6, t5, 481f
                  and          s1, t4, s1
471:              bge          s10, s7, 477f
472:              andi         s2, s7, 1519
                  andi         tp, s9, 1834
                  sltiu        s10, a1, 663
                  sll          a1, s4, zero
                  ori          a4, s3, 646
477:              add          s8, a0, zero
                  beq          tp, t5, 481f
                  and          s2, s8, s3
                  beq          gp, a1, 482f
481:              or           s5, t4, t2
482:              ori          a5, s5, 147
                  sll          sp, s10, a6
                  slli         tp, s8, 25
                  bne          s9, s0, 496f
                  slli         s5, s11, 31
                  sra          s9, s5, t0
                  addi         s11, zero, -1834
                  xori         s5, t3, 1670
                  sra          ra, s2, t0
                  beq          s3, a0, 499f
                  or           t2, a0, s11
                  addi         a3, s5, -1548
                  or           t5, s3, s1
                  xori         gp, a1, -581
496:              blt          s1, s1, 516f
                  slt          a1, s5, s6
                  sltu         a0, s7, gp
499:              slt          s10, tp, a6
                  sltiu        t5, t1, -1760
                  sub          t0, t1, s8
                  beq          s4, s4, 515f
                  xor          s1, s6, s7
                  bgeu         a2, sp, 519f
                  xori         zero, s5, 1303
                  ori          a3, t6, -1353
                  slti         a5, a3, 1870
                  blt          a3, a5, 514f
                  lui          s1, 247396
                  bge          a0, a3, 525f
                  slli         s6, zero, 1
                  andi         s11, a7, 463
                  bgeu         s1, s8, 530f
514:              xori         t4, a6, -748
515:              beq          tp, s5, 534f
516:              ori          s4, t2, 815
                  sltiu        s6, a3, -1673
                  beq          a2, s0, 531f
519:              srai         s8, gp, 4
                  nop
                  sltiu        a2, t5, -1813
                  slli         s7, a5, 28
                  ori          a3, zero, 1465
                  andi         t4, t0, 1046
525:              and          s7, t1, s1
                  sltiu        a7, a4, -1516
                  bne          a0, a0, 536f
                  sra          s3, sp, s2
                  xori         s11, s1, -561
530:              add          a2, s8, s9
531:              beq          a0, s10, 532f
532:              ori          a0, a1, -748
                  srl          a7, a5, zero
534:              blt          a1, ra, 548f
                  or           tp, a2, s1
536:              lui          tp, 369654
                  nop
                  nop
                  auipc        s8, 367525
                  slt          a7, a3, s0
                  beq          s8, a7, 552f
                  add          a5, s5, s8
                  bltu         s4, ra, 551f
                  bge          s5, s9, 559f
                  srli         a2, a1, 22
                  bge          gp, t3, 559f
                  sub          a1, s8, a3
548:              sltu         a2, a4, s5
                  sll          a0, tp, s7
                  sltu         a5, t3, ra
551:              auipc        a0, 543459
552:              slt          s9, s1, a0
                  beq          t1, t0, 572f
                  ori          zero, t3, -312
                  bgeu         a3, a1, 561f
                  sll          s6, s7, a3
                  auipc        t6, 63552
                  sra          a6, t3, t2
559:              lui          s2, 384837
                  srl          t4, a6, a6
561:              auipc        a4, 1009517
                  bne          a7, a3, 571f
                  bgeu         zero, a3, 573f
                  add          s9, s5, t0
                  sll          s10, s2, a1
                  addi         tp, t6, -1996
                  sltiu        a0, a4, -1948
                  slti         t2, s7, 579
                  auipc        a0, 1045157
                  srl          a1, a7, t6
571:              sub          s7, a6, s10
572:              xor          a4, a5, zero
573:              bge          t2, t5, 592f
                  nop
                  or           a6, a1, t2
                  xori         t2, t4, -1303
                  sltiu        s3, s2, -1836
                  or           s11, s11, t6
                  slt          s2, s8, sp
                  xori         s1, gp, 440
                  auipc        a7, 711337
                  srli         s2, a2, 19
                  slli         s4, t2, 19
                  srai         s5, zero, 26
                  ori          t2, s6, -1728
                  sub          s1, a7, s7
                  and          a3, sp, s7
                  sltu         s5, t0, a0
                  slti         a3, s7, -1701
                  nop
                  la           s11, region_1+1024 #start riscv_load_store_rand_instr_stream_0
                  lbu          a0, -190(s11)
                  sra          s6, tp, t5
                  sra          tp, s6, t4
                  ori          gp, s10, -206
                  srai         a5, gp, 29
                  sw           zero, 100(s11)
                  srli         s3, a7, 2
                  lb           s9, -155(s11)
                  nop
                  lbu          t4, -79(s11)
                  sb           gp, -249(s11)
                  andi         s5, zero, 513
                  lw           a1, 48(s11)
                  srai         s7, tp, 20
                  slli         a1, s9, 26
                  srli         a2, gp, 26
                  lui          a7, 834711
                  lb           s10, 125(s11)
                  lb           s9, -196(s11)
                  sltu         a4, gp, a2
                  andi         a7, t3, 1721
                  lbu          s3, 227(s11)
                  andi         a6, t1, 1554
                  sb           a5, 21(s11)
                  lui          a6, 386936
                  sh           gp, 232(s11)
                  and          a6, s0, a3
                  lui          a5, 24095
                  auipc        a2, 365748
                  lui          a5, 104553
                  lbu          a1, 172(s11)
                  lbu          tp, 203(s11)
                  sh           ra, 0(s11)
                  srli         s4, s0, 30
                  xori         s1, s7, -1042
                  add          zero, s11, s10
                  sh           tp, 62(s11)
                  sb           a1, 11(s11)
                  srai         sp, s9, 12
                  lbu          s2, 179(s11)
                  sb           t1, -227(s11) #end riscv_load_store_rand_instr_stream_0
                  bltu         a1, a6, 592f
592:              srli         t2, t4, 5
                  srai         zero, a0, 19
                  bge          t6, t0, 600f
                  blt          s10, ra, 598f
                  lui          s5, 701902
                  beq          s10, t0, 603f
598:              bltu         ra, a1, 616f
                  slli         s8, t6, 5
600:              sltu         t0, t5, s0
                  sub          s9, sp, t6
                  slti         a3, s4, 353
603:              add          gp, t3, sp
                  nop
                  sub          a3, s7, t1
                  add          tp, a0, t4
                  bne          a6, s10, 620f
                  blt          s10, s6, 615f
                  srl          a0, a7, t0
                  xori         s9, t5, -159
                  add          t5, zero, a3
                  lui          a7, 488402
                  auipc        t4, 1002716
                  nop
615:              xor          a6, s7, a6
616:              and          a6, t1, a5
                  la           sp, region_0+16 #start riscv_load_store_rand_instr_stream_4
                  lh           gp, 6(sp)
                  lb           s10, 14(sp)
                  lbu          t6, -16(sp)
                  lhu          s7, 2(sp)
                  lui          zero, 610097
                  lbu          s5, -1(sp)
                  lbu          s1, -12(sp)
                  lb           s9, -5(sp)
                  lb           t4, -11(sp)
                  sll          t4, sp, gp
                  srl          a2, a6, zero
                  xor          s11, a6, a2
                  srli         s6, t3, 23
                  lbu          ra, 11(sp)
                  lui          a3, 783660
                  sb           zero, 13(sp)
                  andi         ra, s11, -1120
                  lbu          s5, -7(sp)
                  lb           t0, 2(sp)
                  slt          s5, zero, s9
                  lb           s1, -5(sp)
                  sb           t6, 10(sp)
                  slti         s7, s2, -23
                  lb           a7, -3(sp)
                  addi         s1, s3, 1821
                  lh           t2, 10(sp) #end riscv_load_store_rand_instr_stream_4
                  bge          t6, s0, 629f
                  bge          a5, s0, 620f
                  addi         s7, s10, -314
620:              srli         s4, s3, 1
                  ori          s4, t5, -1531
                  slti         zero, s2, -95
                  add          a0, t3, s10
                  andi         a1, s4, 738
                  srli         a6, a2, 15
                  xor          sp, a5, s9
                  blt          a0, s1, 640f
                  bltu         a6, a4, 631f
629:              bgeu         t4, t2, 646f
                  sub          t0, s4, a4
631:              srai         s11, s11, 4
                  bltu         a3, s9, 638f
                  srli         s7, s1, 8
                  nop
                  sll          s2, sp, a0
                  or           a2, t4, t1
                  ori          s11, s8, -1475
638:              beq          t5, zero, 644f
                  sltiu        a2, s9, 1479
640:              or           s8, zero, s10
                  sltiu        tp, a4, 274
                  andi         a1, s6, -699
                  auipc        t5, 567339
644:              andi         s11, a6, -760
                  slli         s6, s3, 7
646:              srli         s8, a1, 3
                  srai         t2, t6, 1
                  and          s9, s7, s7
                  srai         gp, t0, 6
                  addi         t0, s0, -270
                  bgeu         t0, a1, 663f
                  addi         s7, s11, 2005
                  or           s8, a2, a3
                  slti         a5, s11, -708
                  sub          a7, gp, t1
                  add          tp, s10, t1
                  sra          s4, a4, t5
                  auipc        t5, 463369
                  ori          tp, a6, 1246
                  sltiu        a3, t3, 1739
                  sll          s1, tp, a3
                  beq          t5, s8, 682f
663:              bgeu         t4, s1, 678f
                  sll          gp, s2, t4
                  bne          t6, sp, 677f
                  slti         gp, s2, 1089
                  xor          s6, s4, t6
                  ori          a1, a1, -935
                  ori          gp, a4, -1710
                  slti         a1, gp, -952
                  sll          t2, s11, s3
                  add          a0, zero, s6
                  sub          s9, a3, a3
                  xor          t6, s8, t4
                  xori         gp, s11, 173
                  bge          t4, t3, 678f
677:              add          s1, a3, t6
678:              auipc        s8, 869184
                  addi         s10, t6, -1674
                  nop
                  slti         a2, s2, 1771
682:              ori          t2, t3, 1454
                  auipc        s2, 167160
                  addi         a3, t5, -1473
                  sll          s3, s1, s1
                  sra          t0, sp, s3
                  slti         t2, t0, 1452
                  srai         s5, s4, 13
                  beq          ra, tp, 700f
                  sltu         t4, s11, tp
                  lui          a5, 103664
                  sltu         s8, a4, s6
                  sltu         s3, a7, t5
                  bgeu         a2, a2, 713f
                  bgeu         s7, s10, 707f
                  xor          s5, s10, t3
                  sra          t2, a0, s8
                  sltu         s5, ra, ra
                  addi         a4, a0, -213
700:              bltu         ra, a0, 707f
                  bne          ra, t6, 707f
                  andi         s3, s6, 1866
                  sltiu        t2, tp, 1505
                  xori         t5, gp, -1137
                  sra          s2, a2, s5
                  andi         t2, a1, -1104
707:              sltiu        s11, t5, -330
                  xori         ra, s1, -922
                  sltu         a1, a7, s0
                  slti         s10, s7, 1846
                  bge          s9, t3, 717f
                  and          t2, a7, a7
713:              andi         a6, t5, -1561
                  blt          a3, zero, 728f
                  srl          s4, sp, t5
                  sub          s7, t1, a7
717:              slli         a2, t6, 12
                  xor          s9, s2, s4
                  slt          s5, s3, s5
                  srl          s7, s9, s6
                  srli         t4, s9, 0
                  addi         a2, a0, -2039
                  lui          s4, 338760
                  slli         t5, s6, 29
                  xori         s2, a1, -705
                  sub          s2, s7, a1
                  nop
728:              srli         s5, zero, 24
                  sltiu        a3, a4, -1795
                  bne          t4, s7, 732f
                  andi         s2, s6, -564
732:              bge          t3, t4, 741f
                  bltu         a7, gp, 745f
                  slli         s3, a2, 2
                  and          gp, s0, s7
                  nop
                  bltu         t1, s8, 750f
                  xor          gp, zero, t2
                  sltiu        s2, zero, 867
                  slti         gp, sp, -305
741:              slti         a3, a2, 492
                  sltiu        a7, a6, -1579
                  bne          t1, s11, 744f
744:              sltiu        s6, tp, 57
745:              auipc        a4, 632637
                  bne          s11, t1, 748f
                  xor          s5, s0, a2
748:              xor          a7, s1, s5
                  lui          a6, 618694
750:              srli         a3, t3, 6
                  auipc        a5, 451894
                  auipc        a2, 567835
                  slli         s5, a3, 9
                  srai         t6, a5, 20
                  xor          s3, s4, a7
                  xor          a5, gp, s0
                  sltu         s6, t0, s2
                  xor          a1, a7, s4
                  bgeu         ra, gp, 774f
                  slti         s9, s1, 676
                  nop
                  srl          s9, a3, t6
                  bgeu         s10, a0, 766f
                  beq          t2, a5, 770f
                  andi         a5, t5, -1224
766:              bne          s5, a1, 777f
                  bltu         a7, a5, 773f
                  beq          tp, t6, 780f
                  sltiu        s5, a7, 1103
770:              xor          sp, sp, s11
                  bgeu         t2, zero, 784f
                  or           a1, s9, a4
773:              xori         s11, a2, 575
774:              srl          t5, gp, s4
                  bne          sp, t2, 792f
                  sltiu        a3, a3, -1286
777:              slti         t4, a5, -1540
                  srai         t6, s9, 7
                  or           t2, a2, s4
780:              bne          a1, gp, 788f
                  blt          t3, s11, 796f
                  slti         t2, s4, -1957
                  srli         s7, s6, 9
784:              beq          tp, s7, 797f
                  beq          zero, a3, 796f
                  nop
                  sltu         t5, s7, t3
788:              sub          s1, s3, a4
                  xori         s2, a5, -1723
                  andi         s5, a5, -981
                  sltu         s9, a6, s5
792:              xori         a0, t2, 663
                  addi         s9, t4, -980
                  srai         t5, t2, 4
                  slt          a2, s11, s6
796:              slli         t5, s2, 3
797:              sltu         s8, t4, t4
                  slt          a6, s5, t2
                  srai         s3, a2, 7
                  slli         t4, sp, 28
                  srai         t6, s6, 16
                  addi         a1, a4, -1627
                  slti         s11, gp, 1211
                  srl          a3, t3, s4
                  sltu         s4, sp, a2
                  srli         ra, t4, 8
                  and          s11, a3, a3
                  andi         a2, t5, -1536
                  andi         s10, s10, -1317
                  bgeu         s9, t4, 820f
                  auipc        a6, 433013
                  addi         a4, s5, -247
                  bne          zero, t6, 819f
                  sra          zero, s4, s7
                  bgeu         s3, a4, 835f
                  sub          a0, s11, a5
                  sll          gp, t3, a4
                  xor          s9, s0, s6
819:              srli         a3, a3, 15
820:              bge          a3, s8, 838f
                  srl          t6, tp, a6
                  auipc        a2, 846000
                  slti         sp, s1, -1086
                  sub          s9, a7, a5
                  sll          a5, tp, sp
                  and          s5, s4, s9
                  bne          tp, t2, 846f
                  sll          s5, s2, tp
                  srl          s1, t3, s3
                  beq          s0, a3, 833f
                  blt          s1, s9, 842f
                  beq          t1, t1, 841f
833:              beq          a6, t4, 846f
                  slti         a1, t1, 1299
835:              xor          a6, a6, ra
                  srai         a3, t6, 3
                  or           a0, a6, gp
838:              addi         s8, s10, 1866
                  sra          t4, s4, s2
                  lui          s8, 952502
841:              bltu         a6, tp, 852f
842:              slli         a4, s2, 16
                  sra          s4, a7, t0
                  srli         sp, a7, 20
                  srl          gp, gp, gp
846:              bge          a1, t1, 853f
                  sltiu        s1, s3, -445
                  bge          a7, tp, 860f
                  sltu         s5, s7, a4
                  bne          s11, gp, 869f
                  sub          s10, a1, s1
852:              sll          t0, t4, zero
853:              xori         zero, a3, -753
                  bge          t1, t1, 869f
                  blt          a7, s3, 865f
                  bge          a6, s5, 864f
                  bltu         t2, a2, 863f
                  lui          s1, 594378
                  bltu         a7, s1, 871f
860:              bne          a1, a6, 866f
                  xor          s8, t4, s8
                  bltu         a4, a6, 865f
863:              srai         a0, s8, 12
864:              addi         s10, t0, -46
865:              beq          s6, zero, 867f
866:              andi         t6, zero, -1307
867:              slt          a7, t5, a0
                  xori         s7, t1, -72
869:              beq          s11, a1, 889f
                  ori          s2, s8, 2001
871:              sltu         a7, s0, t5
                  blt          a3, a4, 886f
                  nop
                  andi         s1, gp, -780
                  slti         a5, a2, -850
                  xor          s5, t3, s5
                  bltu         a2, t1, 890f
                  bgeu         a3, t0, 890f
                  andi         t6, a1, 307
                  srl          a4, t6, zero
                  beq          s6, t4, 899f
                  bge          a4, t4, 888f
                  sltiu        s6, a6, 204
                  slti         s6, a1, -1424
                  xori         t4, s7, -1684
886:              xori         s11, sp, 182
                  xor          s9, s0, a5
888:              srl          s11, t2, a7
889:              srl          a1, a1, s1
890:              and          ra, s8, s4
                  and          s5, tp, t0
                  nop
                  srai         s4, s11, 28
                  blt          t6, sp, 900f
                  slti         a6, t3, 100
                  sltu         s11, a5, s6
                  blt          s9, s0, 914f
                  beq          a7, ra, 904f
899:              nop
900:              srl          s1, s2, tp
                  sub          a1, a5, t0
                  bgeu         a6, t0, 917f
                  sltu         tp, s8, t1
904:              lui          zero, 508475
                  sub          s4, ra, a4
                  sll          t0, t3, s7
                  sra          ra, tp, s2
                  and          a5, s3, s4
                  sltu         s2, t6, s4
                  sra          s3, ra, a6
                  bne          s3, a7, 930f
                  or           a2, s2, a5
                  ori          s6, s6, 179
914:              sltu         s7, a2, a6
                  sra          t6, s4, a0
                  slti         a1, s11, -1873
917:              bgeu         a5, s2, 930f
                  sub          t6, gp, s2
                  slti         a6, gp, -932
                  sltu         t6, tp, zero
                  beq          a3, a0, 924f
                  sra          s6, s0, s3
                  and          s2, s0, ra
924:              slt          s4, s1, a6
                  sra          a6, s5, a2
                  ori          tp, a1, -888
                  sltu         a4, a5, s8
                  sltu         gp, sp, s3
                  sltiu        s8, s0, 1646
930:              xori         a6, s8, -882
                  bgeu         s11, s8, 932f
932:              xori         s10, s7, 1859
                  ori          t4, t6, -1084
                  andi         a3, t1, 671
                  sltu         a7, ra, a1
                  slli         s9, t2, 12
                  srl          s5, t2, s2
                  slt          a2, s11, s8
                  srai         s8, s7, 24
                  xor          s11, a3, a0
                  nop
                  sll          a2, a3, tp
                  xor          a0, tp, t5
                  bge          s7, a6, 946f
                  sltu         a1, s9, sp
946:              srl          s9, t5, s8
                  beq          t4, s8, 948f
948:              lui          a5, 1040516
                  or           t4, t0, s1
                  slti         t2, s7, -365
                  lui          a2, 805903
                  andi         s10, s9, -172
                  lui          s1, 493521
                  xori         a1, a0, -143
                  sltu         zero, a2, s9
                  slt          s10, s10, a0
                  and          s3, t3, s6
                  or           s5, t2, s6
                  slli         s5, t1, 13
                  lui          s3, 734685
                  xori         s5, a6, -1587
                  bltu         s4, s3, 974f
                  beq          a0, s9, 982f
                  ori          s11, a7, 1955
                  addi         s10, a7, -446
                  sra          sp, a6, tp
                  and          t4, s10, t2
                  nop
                  andi         a7, s4, -1775
                  beq          t2, t0, 979f
                  xor          t5, gp, a6
                  la           sp, region_0+914 #start riscv_load_store_rand_instr_stream_15
                  sb           s6, -10(sp)
                  slli         zero, s2, 8
                  lb           ra, -8(sp)
                  lb           s4, -13(sp)
                  sltiu        zero, s10, 1351
                  sra          ra, a7, zero
                  slt          gp, t5, a0
                  sb           s5, 1(sp)
                  sra          s1, s7, s8
                  addi         a4, s8, 1369
                  slti         s10, t1, 465
                  xor          a6, s8, a7
                  sltu         s7, zero, s3
                  xor          s8, t4, s0
                  andi         a6, s5, -457
                  nop
                  sh           t1, -8(sp)
                  sh           t3, 14(sp)
                  lbu          s6, -5(sp)
                  slt          ra, t5, t4
                  lhu          s1, 16(sp)
                  lb           s5, 16(sp)
                  sll          s9, t2, ra
                  slli         s3, t1, 24
                  lbu          tp, 13(sp)
                  lh           s10, 8(sp)
                  sltu         zero, t4, s11
                  or           t2, s6, s9
                  sra          a2, s4, s6
                  slli         s11, a2, 3
                  ori          a0, t2, -423
                  lb           gp, -7(sp)
                  sltiu        a3, s6, -1570
                  sw           t6, -2(sp)
                  sb           s9, 11(sp)
                  sb           sp, -1(sp)
                  add          s8, ra, a2
                  lb           gp, 15(sp)
                  srai         s11, s3, 20
                  srai         s11, a2, 16
                  sw           t6, 2(sp)
                  sb           t1, 15(sp)
                  lbu          a3, 4(sp)
                  sll          s9, t5, s3
                  sltiu        s5, a0, 1281
                  sltiu        s1, t2, 1906
                  lui          a6, 999652
                  lhu          t5, -12(sp)
                  lb           ra, -6(sp)
                  lh           a0, 14(sp)
                  lb           s2, -11(sp)
                  lb           s4, -1(sp)
                  sw           s6, -10(sp)
                  xori         a1, t0, 983
                  lb           ra, 13(sp) #end riscv_load_store_rand_instr_stream_15
                  srai         s11, ra, 7
                  xor          a4, s2, s6
974:              or           s8, t3, t2
                  srl          t0, a6, s7
                  sub          s8, a1, t4
                  add          a3, gp, a5
                  nop
979:              sltu         tp, ra, s2
                  sll          a1, s1, s7
                  beq          ra, t4, 989f
982:              andi         s10, a4, -1263
                  auipc        s10, 547902
                  slti         s4, s10, -2012
                  srl          tp, sp, s8
                  or           gp, s4, gp
                  sltu         s5, s1, gp
                  bge          s2, s2, 1003f
989:              bgeu         a6, s6, 1002f
                  slti         t4, s8, -800
                  srl          s9, s1, gp
                  beq          gp, a0, 1005f
                  add          t6, s9, a1
                  srl          a0, t2, s9
                  srai         s6, a7, 21
                  xori         a7, s9, -1242
                  slt          t4, a6, t1
                  or           tp, s6, s1
                  add          gp, s3, a6
                  beq          s5, a4, 1006f
                  bltu         ra, s1, 1007f
1002:             sra          tp, sp, s8
1003:             srl          a1, s3, s9
                  sll          t0, s11, s6
1005:             auipc        zero, 338730
1006:             slt          s4, s5, s1
1007:             beq          a7, s3, 1027f
                  auipc        a3, 170181
                  slti         s6, s0, 992
                  xor          a0, s11, t5
                  sll          a1, t6, gp
                  add          a3, zero, a5
                  bge          s2, zero, 1019f
                  slli         a1, s4, 22
                  ori          a0, s4, -396
                  add          gp, t3, ra
                  bge          t6, s1, 1029f
                  bltu         a3, t2, 1025f
1019:             ori          zero, gp, -618
                  xori         s11, s10, 1412
                  slli         a0, a7, 16
                  bne          t3, s5, 1028f
                  add          s8, t4, t0
                  andi         a3, t4, 1418
1025:             slli         s8, t6, 1
                  bltu         a0, s5, 1029f
1027:             bltu         a5, a1, 1042f
1028:             addi         a7, s8, 384
1029:             andi         s4, s4, 760
                  srl          s7, a5, s7
                  sra          ra, a3, a2
                  srai         a4, zero, 2
                  bne          t0, gp, 1044f
                  srai         s10, t2, 8
                  sub          zero, s3, a5
                  bne          s3, a0, 1053f
                  lui          s4, 793092
                  ori          t2, a2, -1915
                  sra          sp, t4, a0
                  srai         a5, t6, 18
                  slli         a0, s1, 31
1042:             xori         t5, t6, 200
                  addi         tp, t0, -1619
1044:             sra          s7, t6, s7
                  auipc        sp, 884241
                  slli         a1, t5, 18
                  sra          s4, s11, gp
                  bltu         s10, t6, 1067f
                  xori         s1, t4, 408
                  add          s1, s7, t6
                  nop
                  auipc        ra, 68846
1053:             blt          a0, s11, 1065f
                  bge          tp, s10, 1060f
                  beq          t5, t0, 1058f
                  slli         a1, s11, 21
                  auipc        s5, 903622
1058:             sll          t2, s2, t0
                  andi         a2, s2, -586
1060:             sra          a6, a2, s8
                  sub          a6, s0, a0
                  beq          t3, s7, 1080f
                  sra          a2, a2, s5
                  sra          zero, zero, t1
1065:             xor          a3, t0, a7
                  auipc        s4, 46589
1067:             and          gp, t4, sp
                  beq          s9, t1, 1079f
                  bne          tp, s0, 1071f
                  sra          ra, s0, t1
1071:             slli         a1, s5, 9
                  xor          sp, s1, a5
                  andi         s1, a6, -1108
                  addi         s3, a3, 597
                  bge          t2, zero, 1088f
                  and          tp, a4, a6
                  srl          tp, s9, s8
                  slt          t2, a2, s0
1079:             and          s10, s8, a2
1080:             srl          t4, t5, s5
                  srli         a6, a3, 15
                  slt          tp, a5, a6
                  sltiu        a7, a7, 1152
                  slt          s2, s5, sp
                  beq          s7, t4, 1099f
                  slt          s9, a7, s10
                  addi         s8, t4, -334
1088:             or           a0, s10, a5
                  xor          s9, gp, zero
                  addi         a2, s0, -666
                  addi         a2, s6, 1448
                  slti         a2, s11, -815
                  or           a1, s1, t1
                  bne          a3, ra, 1104f
                  sra          s5, s3, a2
                  and          s6, t1, a0
                  bge          gp, s2, 1099f
                  ori          a6, a6, 1077
1099:             slti         sp, s3, -1710
                  bne          a4, a1, 1112f
                  addi         t4, a3, -1066
                  bge          t1, t4, 1108f
                  xori         a1, s8, 1867
1104:             slli         gp, t1, 19
                  bne          s10, t1, 1111f
                  srl          tp, s6, s5
                  bne          tp, t6, 1122f
1108:             ori          t6, s10, 2027
                  xor          s5, a7, ra
                  add          s8, s7, s6
1111:             bne          a3, t2, 1121f
1112:             lui          a0, 87181
                  addi         a6, s11, -456
                  bne          t4, s10, 1117f
                  lui          t5, 23202
                  lui          s9, 554671
1117:             slt          s4, s5, t0
                  slti         s1, s5, -237
                  bge          t4, a2, 1130f
                  bgeu         a7, s7, 1139f
1121:             ori          a2, a4, 1914
1122:             andi         a1, gp, 2019
                  bne          s3, a1, 1129f
                  bge          sp, s10, 1143f
                  sub          a6, t5, s1
                  add          a1, s5, a3
                  ori          gp, a2, 988
                  or           s2, a6, a0
1129:             xor          s5, a6, s8
1130:             bge          s6, s2, 1142f
                  andi         s4, t4, -1326
                  bne          s8, a5, 1138f
                  srai         t4, t1, 0
                  srai         s3, a4, 16
                  xor          sp, zero, s11
                  add          gp, a3, t1
                  bltu         a3, t2, 1143f
1138:             slt          s5, a5, s5
1139:             xor          a6, t3, s7
                  lui          t2, 398283
                  sub          s1, a3, t3
1142:             bge          t5, a1, 1160f
1143:             srl          s2, t2, a2
                  srl          s1, t2, sp
                  bge          s6, zero, 1158f
                  andi         s7, a5, -1811
                  lui          a6, 663436
                  srl          s11, a5, a7
                  addi         s3, s3, 59
                  bltu         s3, ra, 1159f
                  bgeu         a5, s2, 1162f
                  sltiu        sp, gp, 1800
                  sub          t4, s2, a7
                  bltu         s5, a0, 1157f
                  bge          ra, s2, 1156f
1156:             ori          ra, t2, 1488
1157:             bgeu         gp, s1, 1172f
1158:             beq          a4, a0, 1170f
1159:             srai         ra, a0, 8
1160:             and          s11, s9, s7
                  srli         a0, a4, 20
1162:             bge          s9, t0, 1176f
                  lui          gp, 291729
                  addi         s5, s3, -1697
                  slti         a7, gp, -46
                  or           gp, a5, zero
                  ori          t2, a5, -764
                  beq          a6, ra, 1175f
                  srl          s5, s8, a3
1170:             xor          s2, tp, a2
                  lui          t2, 729567
1172:             add          s11, gp, t0
                  slt          s8, t0, s5
                  sll          s1, a1, s3
1175:             sra          tp, s4, t4
1176:             bge          s3, s0, 1189f
                  or           zero, s11, a5
                  andi         s3, s2, -750
                  bge          t2, a0, 1181f
                  bltu         t2, t1, 1182f
1181:             slli         a3, sp, 22
1182:             lui          s6, 7120
                  lui          a4, 445969
                  sub          s10, s7, t3
                  sltiu        s11, a4, -1596
                  nop
                  slli         a4, t4, 28
                  xor          a0, tp, a3
1189:             bne          a0, t4, 1202f
                  srli         t0, a6, 2
                  slli         t0, ra, 15
                  blt          zero, s8, 1212f
                  xor          tp, t3, a1
                  xor          t5, s2, t0
                  xori         a5, gp, 558
                  srai         t2, s5, 22
                  sra          s3, s3, s5
                  slt          ra, s6, t3
                  sltu         a7, sp, s8
                  add          zero, t3, a0
                  bltu         t5, t2, 1218f
1202:             sra          s9, s5, s9
                  xori         s5, t1, 382
                  sub          s7, zero, s10
                  blt          t5, s8, 1213f
                  or           s1, ra, s8
                  sltu         a0, s0, t0
                  nop
                  addi         s1, s6, -225
                  bne          t0, s9, 1221f
                  sub          s2, gp, a5
1212:             addi         a3, a6, 957
1213:             xori         gp, a7, -1475
                  blt          t3, s0, 1229f
                  addi         ra, t2, -142
                  addi         zero, t3, 1265
                  lui          gp, 441846
1218:             blt          t0, gp, 1220f
                  bgeu         s2, a2, 1238f
1220:             srli         tp, a0, 3
1221:             addi         s2, t3, -1531
                  blt          s10, t0, 1239f
                  xor          s11, s4, tp
                  sll          a1, s4, a0
                  slti         a4, s4, 1955
                  or           t2, s10, a2
                  sub          a3, s1, a0
                  nop
1229:             slli         s5, a7, 5
                  addi         t0, gp, -136
                  slli         ra, s4, 1
                  bgeu         t1, tp, 1235f
                  bge          a3, t0, 1242f
                  srai         a5, s9, 8
1235:             blt          a1, t1, 1247f
                  slt          s5, s1, s8
                  xori         s11, s5, 1661
1238:             sltiu        s8, s10, 1653
1239:             andi         s8, s6, -1913
                  bne          t0, tp, 1248f
                  srli         zero, a5, 16
1242:             nop
                  addi         ra, s5, 1639
                  auipc        a7, 195593
                  andi         a7, s4, 302
                  ori          t0, t3, -496
1247:             sltiu        a4, s5, -1297
1248:             ori          ra, a4, -987
                  bltu         t5, s4, 1264f
                  xor          ra, a6, ra
                  blt          s4, a2, 1264f
                  sll          s6, zero, a5
                  slti         a0, s11, -928
                  addi         s11, s6, -228
                  ori          sp, s5, 1870
                  srl          s6, s2, s10
                  slt          s10, t0, s8
                  addi         t4, s3, 1572
                  srl          s2, s11, a7
                  sra          a0, tp, s3
                  addi         sp, s4, 940
                  slti         s9, s11, -1849
                  add          gp, s0, a4
1264:             sltiu        a0, a2, -1868
                  bne          s1, a6, 1278f
                  slt          s5, s5, s7
                  bgeu         t6, a6, 1274f
                  auipc        s1, 369287
                  slti         s6, s1, 1301
                  sub          a0, s3, a1
                  addi         s7, t0, -651
                  xori         s7, t4, -524
                  sub          a1, t6, gp
1274:             add          a2, s3, a5
                  bge          sp, s1, 1289f
                  or           s11, tp, t5
                  slti         s8, zero, 1372
1278:             srai         s6, a5, 24
                  ori          s11, a1, 1225
                  lui          tp, 36542
                  or           a3, gp, s3
                  ori          t4, zero, -1222
                  srl          s10, t4, s4
                  sra          t5, t4, ra
                  beq          s5, a6, 1291f
                  or           gp, s4, s8
                  addi         s7, s11, -894
                  sll          t0, a0, a4
1289:             sra          a1, t6, t0
                  xor          t5, a1, a2
1291:             sra          a1, s2, s2
                  bltu         t6, ra, 1311f
                  sll          s8, s9, s5
                  lui          s4, 887716
                  xori         s8, t1, 177
                  blt          a4, s4, 1308f
                  andi         zero, a0, 482
                  bltu         a7, zero, 1318f
                  or           a2, a4, ra
                  srli         s7, a0, 25
                  blt          t4, s2, 1302f
1302:             ori          s7, s3, -1520
                  srli         s1, s6, 14
                  srl          s5, gp, t5
                  sltu         s5, gp, a4
                  or           t2, a7, a6
                  xori         t6, s11, -1269
1308:             xor          a1, t1, s0
                  lui          a5, 348078
                  sll          a1, s9, s5
1311:             xor          a5, t3, t2
                  srli         t6, t0, 17
                  bgeu         a3, t3, 1316f
                  and          a1, t0, a4
                  auipc        a4, 126023
1316:             bne          ra, t4, 1322f
                  or           s5, s9, gp
1318:             sub          s5, zero, t0
                  slli         t4, a2, 4
                  sub          a3, zero, tp
                  sra          sp, a7, t4
1322:             andi         s2, t6, -397
                  sltiu        a6, t5, -1962
                  auipc        s2, 983597
                  add          s6, a7, t1
                  or           a3, s9, s3
                  or           tp, sp, s3
                  bne          zero, s1, 1339f
                  nop
                  and          ra, a0, zero
                  auipc        s7, 332045
                  sll          sp, s1, s10
                  bne          a4, t6, 1339f
                  bgeu         a3, a4, 1340f
                  xori         a5, s7, 1774
                  and          a1, t1, t6
                  add          s6, a1, a2
                  and          s2, s7, ra
1339:             sra          gp, s0, t2
1340:             srai         a5, s7, 24
                  nop
                  xori         s4, s3, 861
                  sub          s5, s8, ra
                  sub          s8, s1, sp
                  lui          t2, 556937
                  blt          t1, a0, 1352f
                  beq          a1, gp, 1365f
                  nop
                  bne          s9, t3, 1359f
                  xor          a1, a5, a3
                  addi         s3, t6, 935
1352:             xori         ra, s11, -554
                  xor          s6, t3, a7
                  ori          s9, a7, 1645
                  slli         a7, s4, 27
                  auipc        a2, 989301
                  blt          zero, sp, 1359f
                  bne          a7, a4, 1370f
1359:             sll          a0, s4, t6
                  srli         s5, s7, 17
                  and          a6, a3, t3
                  slt          a5, tp, s0
                  sltiu        t6, ra, -2042
                  beq          t2, ra, 1377f
1365:             slt          s9, a0, s7
                  andi         s3, t1, -867
                  xor          s6, s10, ra
                  sltiu        a5, s8, 151
                  slti         t4, a7, 1184
1370:             add          s1, s8, a2
                  bltu         zero, s1, 1382f
                  xori         a7, s1, 103
                  bne          a5, s8, 1374f
1374:             xori         s7, sp, -703
                  slti         s9, s0, -1313
                  sub          ra, a4, s10
1377:             slli         a6, t0, 26
                  sub          s3, t0, t6
                  and          s9, s1, s9
                  sltiu        a5, a6, 286
                  beq          a5, s6, 1398f
1382:             sltiu        t0, a1, 1892
                  lui          s9, 711301
                  nop
                  auipc        s9, 942714
                  sub          zero, a2, sp
                  slti         a3, gp, 1811
                  ori          s2, s8, -2041
                  slt          gp, t3, s9
                  bge          s1, ra, 1403f
                  sltiu        s2, t3, 2017
                  sltu         s7, t3, a6
                  blt          s3, s0, 1400f
                  blt          s5, s0, 1396f
                  beq          t3, a5, 1409f
1396:             srai         s2, a2, 10
                  sll          s11, s7, s8
1398:             slt          a7, s9, t3
                  bne          s4, s4, 1419f
1400:             bge          gp, s1, 1411f
                  addi         a4, t0, 1265
                  xor          s4, t3, s8
1403:             srli         a7, s4, 24
                  sub          t0, t5, gp
                  slli         ra, a7, 27
                  sub          s2, t2, a5
                  srai         t4, a6, 21
                  srai         t2, a1, 15
1409:             bge          t2, t3, 1419f
                  srl          t2, gp, a5
1411:             slti         t6, s9, 776
                  sltiu        a1, zero, 1277
                  nop
                  slti         ra, t2, -1600
                  xori         tp, t6, -1752
                  sub          zero, t1, t4
                  auipc        s3, 15132
                  xori         t0, gp, -994
1419:             ori          s10, a2, -704
                  slli         s9, zero, 6
                  sll          s11, a3, s9
                  bne          t0, s5, 1440f
                  beq          t4, t6, 1429f
                  blt          t0, a2, 1436f
                  ori          t6, a1, 781
                  add          s2, t4, tp
                  lui          s1, 61924
                  sub          gp, s5, s7
1429:             slti         s2, s2, -1327
                  sltu         s6, a5, a0
                  or           tp, a3, s8
                  bge          sp, s8, 1444f
                  srli         a3, s2, 6
                  sub          s3, tp, s1
                  srai         s8, a4, 8
1436:             or           a7, a0, s7
                  sltu         zero, ra, s10
                  and          t0, t3, s0
                  srli         a5, a7, 26
1440:             bgeu         s11, s2, 1446f
                  bgeu         t2, t2, 1443f
                  sra          t2, s7, a4
1443:             srl          sp, t4, a7
1444:             srai         s6, s3, 12
                  bltu         s5, t4, 1451f
1446:             bgeu         t5, ra, 1459f
                  xor          s4, s9, s10
                  ori          s1, a2, -2022
                  sub          a2, a0, a3
                  xori         s2, s10, -1496
1451:             sltu         a7, sp, s8
                  nop
                  sltiu        a0, s0, -145
                  lui          t4, 171796
                  srai         s2, s8, 2
                  slt          s6, s0, s7
                  srli         gp, s6, 29
                  slti         s7, zero, 224
1459:             bge          t4, ra, 1474f
                  srai         t6, zero, 8
                  sltu         a4, s4, s4
                  andi         s8, s3, 43
                  sra          a0, s0, ra
                  add          a2, a1, s8
                  srli         s6, a6, 31
                  bgeu         t5, s4, 1472f
                  bne          s10, a5, 1486f
                  nop
                  sltiu        a5, t4, -900
                  slli         s2, t5, 27
                  slli         a4, a6, 11
1472:             add          t2, sp, s6
                  and          s7, s0, ra
1474:             or           sp, ra, a3
                  sub          gp, s11, s4
                  xori         s5, t5, -497
                  blt          s9, t3, 1490f
                  xor          sp, s5, t2
                  lui          s10, 471133
                  or           s8, zero, s7
                  xori         s10, gp, 1562
                  sltu         a5, s8, a3
                  sra          a7, ra, a7
                  slt          s9, s3, ra
                  srai         s1, s3, 15
1486:             sra          t0, a1, s6
                  slt          s8, s5, ra
                  and          a7, a2, t3
                  srai         a0, gp, 2
1490:             slli         t0, gp, 2
                  andi         a1, t2, 1318
                  lui          ra, 747478
                  beq          a5, s7, 1501f
                  add          a3, s6, tp
                  sub          zero, t5, a1
                  sltu         s8, s10, a7
                  addi         a5, zero, 838
                  slli         s10, a6, 4
                  blt          s10, a3, 1511f
                  slli         s4, s8, 17
1501:             slti         tp, t1, -1105
                  slti         t4, a2, 509
                  srai         tp, t3, 6
                  xori         s4, t5, -665
                  bne          zero, s2, 1520f
                  and          t5, a0, sp
                  sll          a2, t5, s6
                  blt          t0, tp, 1527f
                  sltiu        s10, s7, -1271
                  slt          a0, s8, t4
1511:             beq          a7, a5, 1514f
                  srl          s9, s1, s4
                  xor          s11, sp, s4
1514:             bne          s5, sp, 1520f
                  slli         a3, zero, 30
                  auipc        s5, 968835
                  or           tp, ra, s0
                  andi         a1, t0, 70
                  sub          zero, s2, t3
1520:             and          s5, a3, a7
                  xori         s3, s10, 188
                  addi         a5, s3, -1782
                  blt          a0, tp, 1532f
                  auipc        a7, 609284
                  srl          s8, zero, s6
                  andi         a6, t2, 634
1527:             bltu         gp, sp, 1530f
                  sra          a4, s8, s10
                  slli         a0, s11, 24
1530:             beq          s4, t1, 1532f
                  nop
1532:             xori         a7, t1, -477
                  srli         a4, a1, 20
                  or           t4, s6, s4
                  slt          a3, t6, s1
                  addi         tp, s0, -998
                  sll          s11, t6, s9
                  srli         a7, t6, 23
                  or           a6, s9, s6
                  srli         t2, s5, 7
                  slli         s8, t1, 26
                  srai         s5, a2, 17
                  add          gp, gp, gp
                  srli         zero, a0, 28
                  bltu         s3, t0, 1553f
                  xor          a2, s4, t6
                  bltu         t4, a1, 1549f
                  or           a2, a7, a2
1549:             sltiu        zero, s9, -710
                  andi         a0, a3, -744
                  srai         s2, s8, 22
                  srli         a3, t4, 28
1553:             auipc        t6, 396574
                  add          t5, t3, t0
                  sltiu        sp, tp, -1137
                  xor          t2, t3, s4
                  andi         s4, t3, 1186
                  sra          a4, a1, zero
                  sltiu        s3, t1, 1437
                  xor          s5, s1, a6
                  nop
                  sll          tp, s4, s9
                  or           a5, s3, s8
                  ori          s11, a5, -1367
                  xori         s9, t2, 122
                  bge          s4, s8, 1572f
                  beq          t2, a5, 1580f
                  ori          a1, s9, -186
                  or           t4, s4, s6
                  bgeu         a3, s11, 1585f
                  slti         s7, s7, -1373
1572:             slti         a2, ra, -614
                  bltu         t6, t5, 1582f
                  bge          s8, s11, 1587f
                  sll          s8, ra, t5
                  bgeu         s6, t0, 1589f
                  srai         sp, t2, 14
                  and          gp, a6, gp
                  sub          gp, ra, s6
1580:             sltu         zero, s6, sp
                  slli         s5, a5, 28
1582:             slti         s7, s11, -175
                  bge          s9, s0, 1589f
                  bgeu         a7, s6, 1604f
1585:             srl          s4, s9, s7
                  xori         a3, a3, -187
1587:             sltiu        a0, ra, -493
                  srai         a2, a3, 1
1589:             slli         t2, a4, 4
                  and          s3, s11, a4
                  auipc        ra, 402963
                  bgeu         tp, t1, 1611f
                  andi         ra, t4, -1319
                  sll          t0, t5, t3
                  sra          zero, s9, s8
                  bltu         s5, sp, 1602f
                  sub          a3, s4, ra
                  bge          t1, s1, 1604f
                  sll          t0, tp, a7
                  bne          t1, s10, 1615f
                  srai         s3, a6, 30
1602:             slli         t0, s11, 1
                  blt          s2, t4, 1617f
1604:             blt          a7, s6, 1615f
                  bne          s9, a6, 1608f
                  and          sp, t1, s6
                  sltiu        a6, s8, 1394
1608:             auipc        a7, 391970
                  bne          a3, s8, 1620f
                  srli         s10, a4, 5
1611:             srai         gp, t4, 18
                  add          a2, s10, s3
                  srl          tp, a1, s11
                  sltu         sp, a6, s10
1615:             sra          a1, a4, t3
                  srli         zero, a0, 18
1617:             sub          t0, a2, s10
                  bltu         s7, a3, 1624f
                  sub          s3, t0, a5
1620:             bne          gp, s10, 1638f
                  sub          t5, t3, a5
                  and          s9, s6, s9
                  srl          a5, a3, s4
1624:             sra          s5, s3, s10
                  sub          t6, t6, s5
                  sltu         s11, ra, s9
                  and          t2, a2, s2
                  bge          s11, a0, 1640f
                  bge          a0, ra, 1646f
                  sra          a6, s9, s9
                  andi         zero, s7, 1474
                  xori         a2, s4, 531
                  add          a6, a0, t6
                  sll          a1, s10, a1
                  ori          sp, t6, 782
                  sra          s10, a6, s1
                  beq          a4, a2, 1640f
1638:             or           s1, s1, gp
                  sub          a0, zero, tp
1640:             auipc        t4, 1023781
                  add          gp, s0, sp
                  auipc        s11, 363785
                  lui          s9, 985565
                  sltu         t6, t0, s5
                  bne          a6, s4, 1657f
1646:             xor          s2, s9, a4
                  srli         t4, s7, 13
                  srai         a2, t4, 28
                  and          sp, t0, s5
                  add          a1, a0, s11
                  bltu         a3, t6, 1670f
                  beq          s2, s7, 1653f
1653:             nop
                  xori         ra, s3, 416
                  xori         s9, s3, -529
                  srai         a1, s0, 20
1657:             sltiu        t6, s0, -1524
                  beq          t5, s2, 1670f
                  bgeu         ra, s2, 1666f
                  sra          s4, a0, t3
                  srai         t0, s11, 24
                  lui          t2, 877091
                  xori         a0, a3, -431
                  add          zero, a6, a7
                  bgeu         t6, a1, 1675f
1666:             ori          t6, s1, 916
                  auipc        s8, 175174
                  bge          t6, a3, 1670f
                  add          s1, ra, a2
1670:             bne          t3, a3, 1682f
                  srli         zero, s11, 24
                  addi         sp, ra, 1385
                  andi         tp, gp, 867
                  andi         ra, s7, 2029
1675:             slti         t0, a5, 474
                  srli         t5, a5, 21
                  sltiu        a1, ra, -1110
                  bltu         s0, a1, 1691f
                  bgeu         t5, t2, 1681f
                  bgeu         a5, a3, 1699f
1681:             srai         a0, tp, 15
1682:             nop
                  add          a3, s4, s2
                  auipc        a5, 724378
                  beq          t6, s8, 1697f
                  nop
                  bge          a0, a0, 1695f
                  sltu         s9, s2, s1
                  bgeu         t2, a5, 1707f
                  srai         a7, s8, 6
1691:             and          s4, zero, t4
                  sub          a5, s8, a1
                  bne          a4, a1, 1699f
                  bltu         t0, a2, 1697f
1695:             nop
                  bltu         tp, a6, 1705f
1697:             slt          gp, t2, s7
                  bgeu         t5, a6, 1709f
1699:             lui          a5, 933539
                  beq          a4, t1, 1707f
                  andi         a1, t2, 1399
                  and          s3, t3, s1
                  lui          t5, 963239
                  blt          s3, zero, 1716f
1705:             lui          s7, 625285
                  slt          s8, t1, zero
1707:             nop
                  slt          s4, s3, s11
1709:             bge          a4, gp, 1722f
                  slt          a5, a7, s4
                  bgeu         s0, a7, 1721f
                  addi         s3, t3, 810
                  slt          s10, tp, s11
                  sra          s10, s2, a6
                  slli         s3, s0, 24
1716:             lui          s6, 471922
                  sltu         tp, a1, a1
                  blt          a6, s10, 1724f
                  slti         a5, ra, 1511
                  slli         t4, a7, 23
1721:             bne          ra, s5, 1722f
1722:             srli         a0, a7, 27
                  sll          t5, t2, s0
1724:             bltu         t0, sp, 1739f
                  xori         a0, a5, -705
                  srai         a7, t0, 17
                  ori          s1, a3, -1699
                  blt          sp, sp, 1743f
                  sll          a1, t5, a7
                  bge          s5, t1, 1744f
                  xor          t6, t2, t6
                  beq          t0, a7, 1735f
                  sra          s3, zero, s5
                  auipc        zero, 12668
1735:             srai         s6, t2, 29
                  ori          s10, a1, -785
                  nop
                  xori         tp, sp, 1950
1739:             blt          a0, s8, 1745f
                  sub          t0, s0, s9
                  and          s5, a4, s5
                  nop
1743:             andi         s3, s3, 2035
1744:             or           s9, tp, t2
1745:             bge          s11, s10, 1758f
                  xor          s6, a0, s6
                  sub          s8, s4, s11
                  xori         a3, a2, -993
                  slli         s9, t0, 30
                  auipc        s4, 792472
                  srl          s9, s2, s3
                  xor          s7, s4, t0
                  and          gp, t2, a7
                  sub          zero, a5, t5
                  sltu         s1, s6, a6
                  bgeu         a0, t6, 1767f
                  add          s7, s10, s8
1758:             slti         t4, t3, -809
                  xori         s5, s7, 1895
                  sub          t2, s1, s7
                  sll          s9, zero, a2
                  or           t5, a2, gp
                  sltiu        sp, s7, 1263
                  sra          a1, s0, s7
                  bltu         t2, a7, 1782f
                  or           a2, t1, s9
1767:             andi         tp, s2, 1128
                  bge          a7, t0, 1787f
                  add          a6, s10, a6
                  srli         t5, s1, 22
                  sll          t5, s1, s0
                  sltu         t5, zero, a5
                  add          t2, s10, s11
                  srai         s8, t1, 1
                  lui          s4, 1009036
                  bgeu         a3, a5, 1782f
                  or           s4, a5, s3
                  xori         a6, t0, 337
                  andi         a0, tp, 874
                  addi         a5, s4, 863
                  srl          t6, t0, tp
1782:             xor          s5, t3, a6
                  andi         a2, a4, 367
                  xor          a4, a7, t6
                  and          a6, s6, s4
                  bne          s5, a6, 1792f
1787:             add          s9, ra, a6
                  add          s3, s2, a2
                  blt          zero, a5, 1809f
                  blt          a4, a1, 1803f
                  bltu         s6, a4, 1797f
1792:             bltu         zero, t4, 1798f
                  blt          t6, s8, 1805f
                  srai         a0, ra, 12
                  slti         t2, s5, -512
                  srl          s11, a6, s5
1797:             lui          s3, 656419
1798:             auipc        s10, 882989
                  auipc        s11, 1031662
                  auipc        tp, 509039
                  sltiu        s8, t6, 639
                  sra          s5, gp, s5
1803:             or           s7, s2, a2
                  sltu         s9, s0, s10
1805:             bgeu         s2, a5, 1819f
                  lui          a4, 1008200
                  srl          s8, s2, s10
                  lui          s10, 604023
1809:             bltu         s3, zero, 1828f
                  add          tp, s0, a2
                  or           a7, t0, t4
                  srai         s6, sp, 30
                  bltu         s1, s7, 1831f
                  srli         t5, a5, 14
                  sltu         s1, tp, ra
                  bge          s5, s1, 1819f
                  blt          sp, s10, 1830f
                  sltiu        a1, t6, 434
1819:             xor          s11, t2, a3
                  sll          zero, t1, s9
                  sll          t6, s7, a3
                  lui          sp, 444962
                  srai         a4, a5, 3
                  srl          a4, s11, s10
                  ori          a6, s9, -860
                  slti         ra, s7, -672
                  xor          sp, t1, t4
1828:             or           a0, a2, gp
                  bgeu         t2, a7, 1835f
1830:             sra          a6, ra, s7
1831:             slt          a1, a1, zero
                  add          zero, s5, gp
                  sltu         s1, s2, t4
                  lui          s8, 793850
1835:             bltu         t4, t5, 1854f
                  sltiu        a5, a1, 408
                  lui          s4, 890604
                  ori          a7, s10, -1296
                  nop
                  bgeu         tp, s5, 1843f
                  blt          t0, s0, 1842f
1842:             srli         s10, t2, 16
1843:             bgeu         s7, ra, 1851f
                  srl          a4, t1, a5
                  sll          a2, a6, s9
                  slli         s10, a5, 5
                  la           sp, region_1+992 #start riscv_load_store_rand_instr_stream_14
                  sll          gp, s10, s7
                  and          t6, s2, t1
                  nop
                  or           t6, s10, a2
                  lb           gp, -26(sp)
                  sh           t1, 6(sp)
                  add          s1, a4, s7
                  lb           a2, 17(sp)
                  slt          t5, zero, zero
                  lw           s6, -12(sp)
                  sb           s10, 15(sp)
                  lhu          a4, -2(sp)
                  lh           s3, -50(sp)
                  auipc        t0, 130505
                  sw           ra, 24(sp)
                  lbu          a5, -38(sp)
                  and          a3, t1, zero
                  srli         a7, t2, 7
                  add          a2, ra, t0
                  lh           ra, -30(sp)
                  sb           s7, 19(sp)
                  sh           s9, -38(sp)
                  sb           t4, -1(sp)
                  sub          s5, s11, s7
                  lb           gp, -19(sp) #end riscv_load_store_rand_instr_stream_14
                  add          s2, t3, t5
                  srli         s2, s4, 10
                  addi         t6, s9, -785
                  sub          s7, a2, s10
1851:             addi         s7, ra, 1598
                  slti         a4, a7, 554
                  ori          s9, sp, 847
1854:             addi         s2, a0, 1530
                  and          a0, s4, s1
                  sltu         s6, a0, a6
                  andi         s7, t0, -1158
                  sra          s6, s11, s6
                  or           s4, sp, s11
                  slli         zero, s2, 31
                  bge          t6, s5, 1867f
                  add          s4, s0, a5
                  lui          t2, 254904
                  bne          a6, s8, 1875f
                  nop
                  slt          s3, a6, t0
1867:             xori         t6, sp, 60
                  sll          s4, s8, t6
                  addi         s3, s7, 677
                  srli         s7, s9, 8
                  srli         sp, tp, 14
                  beq          t5, s2, 1889f
                  and          s5, s8, a3
                  or           t2, a6, a5
1875:             andi         tp, t4, -1498
                  andi         s7, t6, 1902
                  slti         s9, s6, 1531
                  andi         a7, a6, -747
                  sltiu        s7, t2, -564
                  srli         a5, s3, 16
                  slti         a5, t6, 1072
                  bge          gp, t0, 1893f
                  sra          a1, s1, a7
                  nop
                  bne          tp, ra, 1887f
                  bltu         a4, s9, 1901f
1887:             sll          s2, t1, a5
                  srl          a1, s5, t0
1889:             srai         t2, s8, 28
                  bltu         t1, s6, 1892f
                  beq          s7, gp, 1906f
1892:             ori          s11, s10, -597
1893:             sltu         s5, s2, t5
                  nop
                  add          t5, a3, s9
                  bne          a5, tp, 1916f
                  lui          a0, 363480
                  ori          a1, s2, -674
                  sub          a0, t1, t2
                  bge          sp, s2, 1907f
1901:             sra          s7, ra, s5
                  nop
                  srl          s6, s4, a6
                  srl          tp, s7, a6
                  or           sp, s10, a4
1906:             blt          a7, s1, 1915f
1907:             bne          s9, s0, 1919f
                  slli         a2, s5, 11
                  xori         a1, t5, 381
                  srl          a1, s2, s8
                  lui          s3, 381973
                  srl          s10, s4, a7
                  bne          s2, t1, 1925f
                  xori         s3, s3, 1438
1915:             beq          s8, t5, 1925f
1916:             ori          s5, t5, -1293
                  srl          t5, s2, t1
                  addi         tp, sp, -1745
1919:             nop
                  slli         a2, a4, 30
                  addi         t5, sp, -1519
                  or           zero, t2, s4
                  and          a3, t1, zero
                  nop
1925:             ori          t6, s5, 1629
                  ori          a2, t4, -1133
                  bne          tp, t1, 1940f
                  ori          sp, s8, -371
                  srl          a0, a3, a3
                  or           a6, a1, t3
                  ori          a1, s7, -1908
                  sltiu        a2, t3, -1703
                  sll          tp, a5, ra
                  andi         a7, a4, 995
                  bltu         a3, a7, 1941f
                  and          t6, a0, s4
                  lui          s4, 997307
                  addi         a5, s0, 1957
                  blt          t1, s9, 1951f
1940:             srai         a6, s9, 28
1941:             srl          s5, s4, a1
                  lui          s1, 798134
                  blt          s0, s10, 1960f
                  add          s9, s4, s7
                  srai         a4, gp, 1
                  blt          s6, a4, 1965f
                  bne          a4, s1, 1950f
                  srli         a1, s10, 6
                  srai         t6, s4, 14
1950:             slt          a2, s4, s0
1951:             sll          s9, zero, s2
                  sltiu        s1, t1, 1142
                  add          s6, s1, s9
                  srli         s11, a2, 14
                  beq          t1, s11, 1965f
                  xor          s8, s5, a0
                  xori         a7, s1, -1068
                  xor          a5, s11, s10
                  srl          sp, t6, a5
1960:             slti         s8, s6, 681
                  auipc        s11, 308010
                  slti         s10, t6, -45
                  bne          a7, s9, 1969f
                  nop
1965:             bne          s10, s4, 1976f
                  sltiu        sp, tp, 646
                  sll          s6, zero, a4
                  srli         s5, t1, 26
1969:             and          sp, t1, s3
                  blt          a7, a5, 1985f
                  slti         t0, s2, -856
                  ori          s7, t0, 1845
                  sub          ra, tp, t5
                  srai         t2, tp, 30
                  bgeu         s10, s8, 1994f
1976:             slt          s11, t2, t0
                  and          a3, t2, a2
                  sra          s4, sp, t6
                  sra          s1, zero, a1
                  sltu         s6, a4, t5
                  xori         s2, s5, 1787
                  bge          t5, s9, 1997f
                  ori          a1, s10, 1875
                  lui          s10, 89884
1985:             sltiu        a3, t3, 414
                  bgeu         t1, t3, 1988f
                  xori         s2, a0, 1246
1988:             sltu         a1, a3, a7
                  bltu         t5, s11, 2000f
                  srai         a2, s3, 7
                  beq          a4, t2, 1997f
                  sltu         s6, zero, s2
                  bltu         t1, a1, 1999f
1994:             add          s2, s3, s6
                  bltu         a0, s5, 1998f
                  xor          s10, s3, s9
1997:             sltu         s7, a0, s5
1998:             blt          ra, s3, 2011f
1999:             sra          ra, s10, tp
2000:             slti         s4, a7, -960
                  or           a1, t0, s7
                  and          s1, t1, a2
                  addi         t0, zero, 211
                  srli         t2, ra, 30
                  or           sp, ra, s11
                  beq          a6, s4, 2012f
                  addi         s7, a3, -711
                  andi         s11, t6, 1598
                  srai         s8, s2, 20
                  beq          t6, a7, 2019f
2011:             sra          sp, zero, t0
2012:             and          t0, t1, t2
                  bltu         s2, zero, 2033f
                  bne          s11, s2, 2028f
                  sll          a3, t3, s11
                  beq          t3, a5, 2022f
                  andi         s8, t4, -1529
                  sltu         s1, s6, s5
2019:             blt          a5, s9, 2020f
2020:             bgeu         tp, t5, 2028f
                  sra          gp, s8, a0
2022:             srli         a3, s4, 19
                  and          s3, a2, a6
                  and          a4, a4, t0
                  sll          s1, s10, a0
                  blt          t3, a4, 2044f
                  ori          s7, a3, 473
2028:             andi         sp, s9, -1793
                  srli         s5, sp, 30
                  srl          s9, a5, zero
                  add          a1, s3, a7
                  andi         a3, ra, -1137
2033:             andi         s5, s3, 114
                  sltu         s9, a0, zero
                  and          a2, s8, t0
                  bge          a2, s3, 2048f
                  xori         a2, a6, 1374
                  bltu         a5, t6, 2050f
                  slt          t6, zero, a3
                  bge          s7, t5, 2042f
                  srl          a2, a4, sp
2042:             blt          t1, s10, 2051f
                  slli         s6, t5, 14
2044:             slti         t6, s8, 285
                  slti         s3, t1, 229
                  sltu         a5, a5, s5
                  sub          a0, s6, s10
2048:             bne          t5, t4, 2051f
                  slli         s1, a3, 6
2050:             ori          s5, t3, -759
2051:             xor          s7, s7, s9
                  sltu         s9, s7, s3
                  slti         t5, zero, 329
                  sra          s11, t5, s7
                  lw           ra, 4(t3)
                  xor          s3, a3, sp
                  sltiu        s3, s6, -1949
                  sltiu        s7, a7, 821
                  sltiu        s3, t3, -268
                  ori          a0, t0, -463
                  addi         t3, t3, 40
                  slt          a7, gp, t2
                  sub          s2, t4, gp
2743:             addi x18, x1, 0
2743:             jalr x18, x18, 0
sub_8:            bne          s11, s1, sub_8_stack_p
sub_8_stack_p:    addi         t3, t3, -20
                  sltiu        t4, ra, 876
                  xor          a2, gp, s10
                  srai         s8, t3, 5
                  sra          t2, s10, s2
                  sw           ra, 4(t3)
                  sra          t0, s9, a4
                  ori          a6, a6, -1573
                  and          s7, a6, a2
                  and          tp, a1, s9
                  sltu         a3, s3, s11
                  or           s6, t1, s4
                  or           t6, a0, s7
                  blt          a7, s11, sub_8_j10 #branch to jump instr
                  xori         s2, s2, 984
                  or           s1, a3, s0
                  sltu         s6, s3, t6
                  srli         a2, tp, 12
sub_8_j10:        jal          ra, sub_10 #jump sub_8 -> sub_10
                  la           a2, region_1+968 #start riscv_load_store_rand_instr_stream_5
                  lbu          a6, 11(a2)
                  lh           a5, 14(a2)
                  sub          s10, a2, sp
                  sub          s10, tp, s10
                  lw           a4, -4(a2)
                  lw           tp, -12(a2)
                  srl          s10, a5, s0
                  sb           s7, 3(a2)
                  sltu         a4, t3, t3
                  lbu          t0, 12(a2)
                  lbu          s2, 3(a2)
                  lb           s3, -13(a2)
                  lw           a6, 0(a2)
                  lb           t2, 11(a2)
                  srai         sp, zero, 17
                  add          s10, t3, s3
                  lb           s10, -15(a2)
                  lb           s1, -9(a2)
                  auipc        a0, 20757
                  andi         s3, a0, -1954
                  sra          t5, a1, a1
                  sw           s3, 8(a2)
                  lb           t5, -7(a2)
                  lh           a6, 14(a2)
                  sb           t2, 11(a2)
                  lbu          s6, -3(a2)
                  lb           a0, 5(a2)
                  sb           tp, -3(a2)
                  lh           a7, -12(a2)
                  or           sp, a1, s1
                  xor          a1, s5, t2
                  lhu          s1, 12(a2) #end riscv_load_store_rand_instr_stream_5
                  la           s6, region_1+165 #start riscv_load_store_rand_instr_stream_4
                  lw           zero, 3(s6)
                  lb           a2, -6(s6)
                  xor          a0, a3, s8
                  ori          s11, a6, -1917
                  lui          gp, 833137
                  andi         a0, s1, 1222
                  lb           tp, 9(s6)
                  sltu         s3, a7, a5
                  sh           a7, 13(s6)
                  lui          a2, 332338
                  sll          t0, ra, t2
                  srl          zero, s4, s2
                  lhu          a3, -5(s6)
                  sltu         t0, a4, s7
                  lb           gp, -10(s6)
                  and          t6, t6, t1
                  lh           a7, 1(s6)
                  srai         sp, zero, 17
                  lbu          a7, 12(s6)
                  sub          s7, a6, a7
                  lb           a1, -6(s6)
                  lh           s2, 5(s6)
                  sh           a6, 5(s6)
                  lw           a3, -1(s6)
                  nop
                  ori          a4, a7, 54
                  lbu          ra, 14(s6)
                  lui          a6, 53620
                  lbu          s1, 16(s6)
                  sb           sp, 1(s6)
                  lhu          gp, -7(s6)
                  nop
                  lbu          s10, 6(s6)
                  sb           s1, -4(s6)
                  sb           s6, -15(s6)
                  sltu         s10, sp, a5
                  sb           t1, 5(s6)
                  srli         s9, t4, 1
                  slli         a6, a1, 28
                  lbu          a5, 6(s6)
                  andi         t4, s2, -1510
                  sh           a2, 11(s6)
                  lb           s10, 2(s6)
                  sw           s5, 11(s6)
                  ori          t4, a5, -2037
                  xor          zero, s4, s4
                  sb           a2, 13(s6)
                  or           s4, ra, s4
                  lb           t2, -5(s6) #end riscv_load_store_rand_instr_stream_4
                  la           a5, region_1+103 #start riscv_load_store_rand_instr_stream_1
                  slt          s10, s0, s5
                  sw           sp, 41(a5)
                  lb           a6, -20(a5)
                  auipc        s7, 1040497
                  slti         s8, s7, -177
                  slt          s6, zero, t2
                  addi         t0, a0, -1915
                  srai         s9, s2, 10
                  lb           a4, 24(a5)
                  addi         s5, t2, -1400
                  slti         s4, a7, 1849
                  slli         t4, t2, 18
                  and          s6, zero, a3
                  lbu          s1, 26(a5)
                  lbu          a4, -42(a5)
                  lh           a6, 11(a5)
                  or           a3, sp, s1
                  or           s5, t6, a4
                  lb           s2, -36(a5)
                  lui          t5, 702370
                  srai         t5, s3, 13
                  slli         s2, s6, 23
                  lb           s5, 4(a5)
                  slti         s5, zero, -1769
                  lhu          a0, 23(a5)
                  sra          t4, t5, s2
                  lui          a3, 1004029
                  xor          t0, s9, t4
                  auipc        zero, 752099
                  auipc        ra, 549127
                  andi         s7, t2, -1082
                  xori         a1, s6, -592
                  lb           s8, 12(a5)
                  lb           t0, -62(a5)
                  lh           tp, -19(a5)
                  slt          s11, a5, gp
                  sb           t5, -22(a5)
                  andi         gp, a1, 397
                  lbu          t2, -4(a5)
                  lb           sp, 10(a5) #end riscv_load_store_rand_instr_stream_1
                  la           a0, region_1+927 #start riscv_load_store_rand_instr_stream_2
                  slti         s1, s3, -2007
                  auipc        s6, 119718
                  lh           sp, -595(a0)
                  sra          s1, t2, t2
                  lw           t5, -275(a0)
                  slti         s11, s4, 278
                  lb           gp, -138(a0)
                  xor          t5, tp, a4
                  lb           a6, 902(a0)
                  lh           a3, -23(a0)
                  xori         s9, ra, 139
                  sw           t4, 1057(a0)
                  andi         t4, s5, -401
                  lh           s2, -459(a0)
                  lbu          a4, -97(a0)
                  srai         t5, zero, 7
                  sw           t3, 85(a0)
                  lb           s5, 688(a0)
                  lbu          a6, 412(a0)
                  lbu          tp, -748(a0)
                  sltiu        t5, s8, -1586
                  lbu          a2, 338(a0)
                  lhu          a7, -385(a0)
                  sltiu        s9, tp, 1586
                  sb           ra, 80(a0)
                  lb           s9, 24(a0)
                  lb           a5, 1002(a0)
                  nop
                  lbu          a5, -316(a0)
                  sra          t5, a4, a2
                  lw           a5, 229(a0)
                  sw           a4, 5(a0)
                  ori          ra, ra, -1148
                  lbu          ra, 164(a0) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_0+786 #start riscv_load_store_rand_instr_stream_3
                  lbu          s1, -102(sp)
                  lb           s2, 127(sp)
                  sltiu        a2, a5, 397
                  sll          t0, tp, t6
                  sb           s0, 149(sp)
                  andi         a1, t4, -813
                  srai         a2, t2, 9
                  slli         a1, s10, 8
                  lh           a1, 34(sp)
                  lh           a4, 174(sp)
                  lb           t2, 169(sp)
                  nop
                  nop
                  nop
                  lui          gp, 373821
                  lh           gp, -148(sp)
                  lw           a7, 94(sp)
                  srl          t4, s10, t2
                  nop
                  sub          s4, t5, t3
                  or           a2, s4, s1
                  lhu          tp, -58(sp)
                  slli         s10, t4, 3
                  sltiu        a7, t2, -188
                  xori         a4, ra, -833
                  slt          s3, s6, s6
                  andi         s6, s9, 226
                  lh           a5, 54(sp)
                  lbu          a2, -203(sp)
                  sll          ra, sp, s0
                  sltiu        t0, s4, 596
                  nop
                  lbu          a7, 250(sp) #end riscv_load_store_rand_instr_stream_3
                  sra          a5, ra, a6
                  andi         gp, t0, 481
                  slt          a2, a5, a7
                  and          s11, s7, t6
                  sltu         s10, zero, a6
                  sltiu        t5, t2, 1559
                  bge          zero, t6, 19f
                  and          s4, t5, a7
                  xori         s11, s8, -1223
                  xor          s7, s7, a5
                  sra          s5, a4, s5
                  srl          s7, t4, t0
                  ori          s4, t4, -929
                  bge          s1, sp, 25f
                  bgeu         s3, s2, 17f
                  slti         s5, zero, -2019
                  sltu         s11, a5, s9
17:               bgeu         s3, s6, 23f
                  bltu         s10, s9, 31f
19:               addi         t2, t1, -1788
                  or           ra, t2, t0
                  srl          t6, a0, a6
                  nop
23:               srl          t6, a4, a6
                  bltu         t5, s0, 29f
25:               and          a3, s4, a6
                  nop
                  slti         t0, a7, 1924
                  sra          a0, s5, t6
29:               add          t0, a3, a0
                  bltu         t6, s7, 50f
31:               and          s10, t2, a4
                  add          a4, s10, a1
                  bltu         t1, s5, 53f
                  slli         t6, t0, 31
                  ori          s5, s0, 1766
                  slti         s2, s4, -1403
                  sltiu        s4, s5, 1543
                  sltu         s4, s3, t4
                  sll          zero, a3, s7
                  auipc        t5, 972039
                  auipc        ra, 436445
                  nop
                  xor          zero, a6, s11
                  auipc        s6, 948194
                  blt          a4, t1, 48f
                  xor          t6, s0, gp
                  sltiu        t5, a2, -1131
48:               xori         zero, sp, 1986
                  lui          a7, 128823
50:               slt          s5, s6, tp
                  xor          s1, s7, t4
                  slt          a2, s3, s0
53:               sra          a7, t6, s10
                  la           sp, region_0+480 #start riscv_load_store_rand_instr_stream_0
                  sll          t6, s4, t0
                  auipc        gp, 944012
                  lbu          t2, -45(sp)
                  and          s1, t3, s8
                  lbu          t4, -186(sp)
                  xor          t6, t4, sp
                  sh           s0, 226(sp)
                  sb           s0, 216(sp)
                  lbu          zero, 1(sp)
                  srai         s1, t6, 31
                  sh           sp, -20(sp)
                  sw           t4, 192(sp)
                  add          t4, tp, s5
                  lui          t2, 406614
                  or           a3, a1, s1
                  andi         t0, s5, 1341
                  lbu          s5, -229(sp)
                  sb           s10, 33(sp)
                  sh           s8, 44(sp)
                  lb           a5, 55(sp)
                  srai         tp, s3, 29
                  auipc        t2, 362678
                  slti         s5, s9, -1257
                  lb           zero, -95(sp)
                  lb           s1, 145(sp)
                  sb           a3, 156(sp)
                  lb           t6, -114(sp) #end riscv_load_store_rand_instr_stream_0
                  bne          t4, t6, 69f
                  bltu         t4, s1, 56f
56:               sub          s8, s4, s1
                  slti         t6, s8, 1744
                  ori          a5, a3, 1028
                  xori         s10, t5, 212
                  srl          t0, t6, a3
                  srai         a1, s8, 21
                  beq          t1, s0, 71f
                  xor          tp, s7, s8
                  bne          a0, t3, 75f
                  and          s6, ra, a5
                  beq          s0, t2, 69f
                  sub          gp, s6, sp
                  addi         s1, a7, 1630
69:               nop
                  slti         s9, s6, -601
71:               or           tp, a1, s2
                  xor          a7, s9, a0
                  sub          s4, a7, t3
                  xor          s3, t0, s4
75:               addi         a7, s4, -1243
                  sll          t2, s4, s8
                  auipc        s9, 754807
                  addi         a7, s10, -877
                  sll          a5, t3, zero
                  xori         s1, s9, 6
                  slli         a4, gp, 12
                  sub          s8, a7, t1
                  andi         a1, ra, -546
                  lui          tp, 637572
                  srl          s9, s9, a6
                  beq          a7, sp, 88f
                  sltiu        a1, s0, -235
88:               beq          a3, s7, 104f
                  bge          s7, s5, 109f
                  beq          ra, s7, 100f
                  bltu         s1, s8, 101f
                  ori          zero, s6, -1106
                  or           s5, s11, t5
                  sra          sp, gp, t2
                  bgeu         s2, zero, 113f
                  sll          s10, a3, t4
                  blt          a0, s9, 108f
                  andi         a1, t1, -1145
                  bgeu         a1, s3, 108f
100:              sub          s9, a4, sp
101:              sll          a5, a3, sp
                  or           s6, s5, a1
                  bltu         s11, s1, 116f
104:              or           ra, s9, s0
                  sra          a1, t3, t6
                  auipc        t2, 605590
                  sra          s6, s3, s10
108:              auipc        a7, 627772
109:              bltu         s10, t6, 110f
110:              srai         s11, ra, 16
                  sra          s11, s0, gp
                  slti         t0, s5, -108
113:              sltiu        s5, a3, -455
                  ori          s10, t5, -1053
                  sub          s11, t2, gp
116:              auipc        tp, 464857
                  nop
                  bltu         s2, a1, 126f
                  ori          s5, s7, -1668
                  nop
                  blt          s8, s0, 123f
                  sll          s6, t1, a5
123:              bgeu         a5, sp, 128f
                  beq          s9, ra, 125f
125:              xor          t4, t6, t4
126:              add          s4, a3, a4
                  nop
128:              xor          t6, a1, s5
                  add          a2, ra, s7
                  beq          a6, t5, 145f
                  bltu         a4, s9, 145f
                  auipc        t0, 440439
                  sub          t6, a7, a2
                  sltiu        s4, s3, 775
                  srl          s2, t5, t4
                  srai         a3, a6, 29
                  xor          s3, a7, t1
                  slli         zero, sp, 19
                  addi         sp, a7, -567
                  bne          s7, sp, 142f
                  beq          s4, s10, 142f
142:              srai         s9, t4, 14
                  add          t2, s1, s7
                  addi         t4, s5, 520
145:              srai         zero, a4, 3
                  sltu         a2, s7, t3
                  blt          a7, s2, 153f
                  slt          t2, s3, zero
                  bne          t1, a5, 161f
                  addi         ra, t3, 1957
                  lui          a7, 799154
                  andi         ra, a6, 142
153:              srl          t6, a5, a5
                  slt          s9, a5, ra
                  srli         a7, s7, 21
                  nop
                  sltu         gp, s5, s5
                  slt          s2, s10, s8
                  bge          t6, t4, 161f
                  srli         s4, s2, 22
161:              slli         s2, t3, 12
                  bne          s5, s11, 171f
                  bne          tp, a1, 174f
                  bge          a0, s8, 179f
                  nop
                  srli         s8, s2, 2
                  addi         s6, a6, 1292
                  xor          s7, ra, tp
                  lui          s10, 177951
                  nop
171:              sltu         a4, tp, a3
                  sll          s4, s2, a5
                  sltu         s9, t0, a6
174:              and          a2, zero, s3
                  xor          zero, a5, s5
                  nop
                  xori         a0, s8, -818
                  bge          s10, a4, 186f
179:              bltu         s9, t4, 182f
                  or           s6, tp, t1
                  srl          s5, s4, ra
182:              and          s10, s9, s11
                  add          gp, sp, s0
                  srl          s1, s10, gp
                  xor          a3, s5, s11
186:              bltu         s4, s6, 199f
                  sltiu        s1, a3, -475
                  sll          s9, gp, tp
                  sltiu        s10, s8, -1022
                  bge          s6, a1, 210f
                  addi         s10, tp, 1309
                  beq          t5, a4, 205f
                  and          s2, sp, a3
                  bgeu         tp, a1, 210f
                  slt          s5, s0, a2
                  slli         t0, a7, 30
                  sra          a4, s5, t3
                  srl          s11, t6, s5
199:              xori         a0, a0, 1453
                  bne          gp, s11, 215f
                  sltu         a6, sp, ra
                  slti         s4, a4, 687
                  srai         s5, s1, 11
                  blt          s0, s4, 217f
205:              ori          a7, t6, -1185
                  xori         s8, a3, -1485
                  xor          s8, s4, s1
                  andi         s2, s7, -1965
                  sra          a1, zero, sp
210:              blt          t4, a2, 228f
                  nop
                  sub          s2, t2, s10
                  sltu         t4, s9, a4
                  slti         ra, s10, -1554
215:              slt          gp, sp, s3
                  lui          s4, 993190
217:              lui          s2, 216135
                  xori         a3, s10, 1526
                  bne          gp, t0, 229f
                  andi         s7, zero, -119
                  bge          s9, t0, 230f
                  slt          t0, t4, s7
                  nop
                  srai         s9, gp, 5
                  ori          gp, s4, 120
                  xor          s3, s8, s7
                  blt          t0, t3, 232f
228:              ori          s9, t0, 562
229:              beq          a2, a2, 234f
230:              slli         s10, s1, 11
                  slti         s6, gp, -1409
232:              sltu         gp, s1, sp
                  add          a6, a4, a6
234:              sll          a6, s6, t3
                  slti         tp, s9, 50
                  sub          s2, tp, s4
                  srai         s2, s3, 0
                  beq          sp, a1, 252f
                  sra          t4, s1, a6
                  auipc        s8, 923685
                  xori         s5, sp, -1878
                  andi         s8, ra, 953
                  andi         t4, s5, 622
                  lui          a3, 339038
                  srli         s2, t3, 28
                  bgeu         a1, t3, 256f
                  beq          tp, a2, 250f
                  andi         gp, a2, 529
                  srli         s4, s7, 11
250:              ori          a6, s9, -937
                  slti         s8, t1, -850
252:              sll          a7, s1, a1
                  bge          t2, s0, 254f
254:              sltu         t0, t1, t2
                  xori         s9, a2, 1375
256:              blt          t5, a2, 276f
                  sll          t0, ra, t6
                  sra          zero, a6, t6
                  bltu         t5, t6, 260f
260:              andi         t0, tp, 317
                  ori          s4, s4, -714
                  slt          s6, a3, ra
                  auipc        s6, 233236
                  sub          s9, sp, s1
                  sll          s1, a4, ra
                  beq          a1, s3, 286f
                  slli         a3, a2, 19
                  add          s2, s7, s8
                  add          s1, tp, s8
                  bltu         s3, gp, 273f
                  bge          s5, gp, 282f
                  add          t6, s7, s4
273:              bne          ra, s6, 279f
                  sra          a0, a3, t3
                  add          a2, s0, tp
276:              srl          a0, a2, zero
                  auipc        t2, 603731
                  sltu         a3, a5, t5
279:              bltu         s0, s0, 282f
                  xori         a4, a6, 194
                  ori          gp, a0, -844
282:              andi         s6, s2, 0
                  slti         a2, s7, -541
                  srai         zero, a5, 8
                  lui          zero, 157416
286:              ori          s1, gp, 49
                  bgeu         gp, sp, 297f
                  ori          tp, a4, 430
                  auipc        s8, 534495
                  sltiu        s6, s10, 354
                  addi         t0, t2, -113
                  srai         a3, t5, 26
                  sltiu        s6, t2, -519
                  beq          s9, s10, 309f
                  srai         a2, gp, 1
                  bgeu         s7, s7, 310f
297:              sub          t5, s4, a1
                  sll          t2, a6, t5
                  lui          a5, 254316
                  slti         zero, s6, -1834
                  lui          sp, 556529
                  andi         s5, a3, 1169
                  or           s10, s3, a3
                  xor          s4, ra, s11
                  addi         a2, s1, 632
                  sub          s1, tp, t1
                  xor          s10, s0, t4
                  sub          a7, gp, t1
309:              xor          a0, ra, s1
310:              xori         s3, s4, 351
                  lui          s9, 92945
                  lui          s9, 647673
                  lui          s1, 675755
                  or           s8, s3, s1
                  sll          gp, s2, s7
                  slli         s8, s5, 18
                  xori         a2, a0, 1018
                  lui          s7, 93352
                  sll          ra, s0, s1
                  beq          t0, t0, 340f
                  auipc        t6, 423865
                  srl          a4, s6, s2
                  srl          s11, s5, s1
                  bgeu         a0, s10, 329f
                  blt          t3, t0, 341f
                  slti         s1, a0, 1469
                  lui          gp, 707055
                  bltu         a0, a0, 330f
329:              sltu         s4, s5, s10
330:              sub          a7, s8, t1
                  bne          t6, a3, 334f
                  sra          a3, a7, ra
                  lui          a4, 895596
334:              slli         t0, s4, 6
                  bltu         s6, a4, 345f
                  sltiu        a7, gp, 1714
                  slt          s8, a6, s5
                  xor          a2, a4, s1
                  sll          s10, t0, s7
340:              nop
341:              bne          a1, t3, 350f
                  beq          s9, t2, 343f
343:              sra          t4, a4, t2
                  sll          s10, t0, a6
345:              sltu         a0, s7, a4
                  sub          s11, a5, s0
                  nop
                  srli         t5, ra, 7
                  or           gp, t0, t5
350:              bge          a5, s10, 368f
                  srli         a3, s1, 27
                  slli         ra, a7, 0
                  slti         s6, t2, 1922
                  nop
                  srl          a2, a7, t1
                  blt          s7, s8, 364f
                  addi         a0, t4, -1258
                  srli         t6, s3, 11
                  sra          a1, sp, s10
                  slli         tp, s10, 8
                  add          s7, zero, t1
                  nop
                  srai         s10, t4, 3
364:              sra          t0, s11, s5
                  nop
                  srli         s3, s4, 9
                  srai         s8, tp, 14
368:              slti         a6, t4, -1441
                  sub          a5, t3, a4
                  blt          s0, a2, 390f
                  sra          a4, a6, s9
                  sll          s3, gp, s5
                  xori         s2, s8, 1676
                  bge          zero, s4, 394f
                  beq          a7, s9, 388f
                  nop
                  blt          t4, a5, 390f
                  andi         s7, a7, 316
                  xor          a5, sp, a7
                  srl          s10, ra, s3
                  addi         s5, t5, -1094
                  bgeu         tp, a4, 395f
                  slli         a2, s0, 10
                  beq          tp, s0, 387f
                  andi         a3, s11, -1562
                  bltu         t2, s11, 388f
387:              srl          s8, t6, s6
388:              srl          a4, t0, t2
                  sltiu        s3, s5, 37
390:              xor          s5, s5, t3
                  sub          s11, s1, s8
                  nop
                  auipc        a6, 891072
394:              xori         a5, a5, -840
395:              and          t5, t6, s3
                  lui          t2, 570685
                  or           zero, t0, s6
                  andi         t5, a6, 312
                  sra          s6, a0, a1
                  and          a7, a0, s10
                  sra          a5, ra, sp
                  sra          a6, s4, a7
                  slti         s4, sp, 1798
                  sra          s5, gp, s6
                  andi         t6, ra, 1004
                  srai         zero, s5, 24
                  or           a5, t3, a4
                  addi         s1, t1, -597
                  sll          a3, tp, s5
                  sub          s6, ra, tp
                  slt          t2, t2, t5
                  bltu         a7, a1, 423f
                  slt          s1, a5, s7
                  slti         s11, s5, 1471
                  sltiu        t0, a3, 961
                  sll          a5, a0, gp
                  andi         s5, s7, 509
                  andi         s5, sp, 1243
                  srl          a4, a2, gp
                  xor          a1, a2, t1
                  ori          s11, t0, 1839
                  bge          tp, s4, 423f
423:              auipc        sp, 148319
                  sra          a3, a0, a7
                  xori         s6, a4, 1386
                  ori          a5, a7, -57
                  slt          t2, s4, gp
                  lui          zero, 425617
                  sra          s4, t6, a4
                  beq          s3, s3, 431f
431:              nop
                  beq          s11, zero, 443f
                  ori          s9, t1, -73
                  srli         a3, zero, 15
                  sub          s9, s1, sp
                  sll          sp, t2, t1
                  srli         a5, s8, 27
                  add          s3, s4, ra
                  blt          s1, a5, 451f
                  addi         zero, t4, -1422
                  bge          t1, s1, 456f
                  sll          t5, sp, a7
443:              xori         a2, s2, -112
                  and          a7, s0, t2
                  xor          s9, s5, s5
                  slti         s4, gp, 326
                  srl          s5, a0, a4
                  bge          a0, s4, 457f
                  xori         a7, t0, -566
                  beq          s2, s0, 455f
451:              slli         s2, s8, 12
                  lui          a1, 962419
                  or           s1, a1, s8
                  ori          t2, gp, -1947
455:              addi         s4, tp, -1258
456:              srl          a7, t4, tp
457:              srli         t5, ra, 23
                  xor          t6, s8, s5
                  slt          a3, zero, t4
                  sub          s2, a3, a2
                  sltu         a6, s4, t0
                  xori         s10, s1, 1066
                  srl          a6, t3, gp
                  lui          t0, 155495
                  slt          s11, s11, s1
                  lui          a7, 685020
                  lui          a3, 907666
                  bge          zero, t1, 473f
                  sll          a3, tp, sp
                  and          t0, a3, t2
                  xor          s8, t4, s1
                  xor          s9, t3, a7
473:              addi         s1, t1, -102
                  auipc        a1, 172232
                  sra          a6, ra, a7
                  or           a5, t5, a4
                  auipc        s4, 543117
                  auipc        a6, 896359
                  bge          a6, s7, 485f
                  lui          a5, 228808
                  sub          a5, s0, t4
                  sra          a1, t6, a2
                  beq          s4, t1, 488f
                  sll          s2, sp, s10
485:              sltiu        t6, s9, 495
                  sltu         a6, gp, t1
                  beq          s0, a3, 489f
488:              ori          a5, a3, -1016
489:              add          a5, ra, a3
                  bge          s0, a2, 503f
                  nop
                  xori         s11, t3, 1858
                  ori          a4, a5, -1533
                  lui          t5, 1010354
                  bgeu         t6, a5, 504f
                  sltiu        a2, s3, 445
                  sll          t4, a5, ra
                  bltu         s0, t0, 518f
                  sub          sp, a7, t2
                  srl          s9, s6, a2
                  srli         zero, a3, 1
                  srai         sp, zero, 16
503:              and          a2, t5, a5
504:              beq          tp, a1, 505f
505:              slt          s2, s7, s10
                  and          a6, s4, a0
                  xori         t6, s5, 540
                  slti         a6, a7, 1760
                  slli         a7, s7, 12
                  auipc        s10, 835908
                  auipc        a2, 344840
                  lui          a5, 213498
                  and          s3, a2, s9
                  beq          a1, s8, 534f
                  sltiu        gp, t3, 404
                  bltu         a4, s1, 524f
                  slt          t0, s9, t0
518:              xori         sp, s5, -1612
                  xor          a3, t0, s6
                  add          a0, a5, ra
                  sltiu        a7, s5, -395
                  sltiu        sp, s0, -549
                  auipc        s6, 734536
524:              sub          tp, s0, a4
                  sltu         zero, sp, s8
                  andi         t5, s8, -1738
                  lui          a2, 318788
                  and          s10, a0, t4
                  sub          t4, s6, a0
                  bgeu         s6, s11, 540f
                  beq          a1, t2, 549f
                  sltu         zero, s11, t1
                  addi         a4, a6, -1253
534:              sltiu        s4, s3, -1289
                  bgeu         s8, s3, 538f
                  addi         t5, s10, 1735
                  andi         s7, a4, 971
538:              bge          s6, sp, 541f
                  or           zero, a1, s9
540:              sub          a5, a7, s7
541:              sltu         s7, a1, a6
                  sll          s11, t5, a6
                  xor          s11, s4, a1
                  sub          t4, s10, t1
                  bgeu         s9, a1, 561f
                  bltu         s11, tp, 558f
                  slt          a2, tp, a6
                  bgeu         a7, t6, 551f
549:              bgeu         s2, a0, 564f
                  blt          a5, t5, 561f
551:              sra          a7, t4, s1
                  ori          t5, a4, -872
                  sltiu        t2, t6, 1174
                  and          a2, s2, t5
                  bge          t4, s2, 556f
556:              sltu         s4, s2, s2
                  sltiu        t5, sp, -615
558:              sra          sp, a7, s5
                  ori          t5, a4, 199
                  sltiu        a7, gp, 249
561:              lui          a4, 538835
                  sltu         ra, sp, s6
                  sra          sp, s2, s0
564:              sra          s2, s5, a7
                  bltu         a3, t2, 567f
                  sra          s8, s3, gp
567:              and          gp, a0, t5
                  bge          sp, zero, 582f
                  auipc        s4, 193872
                  srli         a1, t0, 3
                  sltu         t6, a7, a2
                  srl          tp, s1, s10
                  sra          a4, s10, t1
                  andi         t5, ra, -27
                  xor          a1, zero, s9
                  sll          a1, s4, tp
                  bgeu         ra, s5, 590f
                  beq          sp, s8, 588f
                  bgeu         t1, a2, 599f
                  bge          gp, s11, 591f
                  sub          a1, sp, ra
582:              lui          ra, 725022
                  andi         sp, a5, 1370
                  sltiu        t0, ra, -962
                  sub          t2, a2, zero
                  srl          tp, a0, a0
                  auipc        s9, 579357
588:              xori         a4, t6, -1416
                  bgeu         t4, a3, 598f
590:              beq          ra, s1, 605f
591:              slti         a1, s4, -84
                  slt          s4, t6, s7
                  srli         a6, s6, 17
                  nop
                  srl          s1, s4, a1
                  and          zero, s11, a7
                  lui          a3, 180266
598:              addi         sp, zero, -1271
599:              xori         s6, t2, 107
                  sltu         s3, s7, s11
                  slti         a6, a4, -416
                  slli         t2, s10, 18
                  sltiu        s4, a3, -1766
                  slti         ra, a0, 1859
605:              ori          t4, s9, 338
                  addi         s8, s1, 21
                  sltiu        s5, s8, -1624
                  nop
                  xori         t5, a5, 331
                  srl          s4, s11, s5
                  slt          a2, t1, t3
                  sltiu        a5, s8, 943
                  and          a7, t0, s10
                  andi         a6, a7, 423
                  bge          t0, s6, 616f
616:              blt          s7, t0, 629f
                  and          a0, t3, s2
                  srl          gp, sp, a6
                  lui          a1, 556311
                  sra          t2, s11, sp
                  xor          s4, s2, a0
                  sub          a3, t1, a3
                  lui          s3, 942216
                  sub          t6, t6, t2
                  slti         t5, s1, -1620
                  and          t0, ra, a1
                  sltu         t0, a7, s5
                  srl          zero, s10, s4
629:              beq          s5, zero, 645f
                  xori         s9, s7, 1053
                  addi         t0, sp, 621
                  bgeu         a2, zero, 647f
                  bne          zero, s4, 647f
                  sltu         t0, zero, a5
                  xor          a3, s8, s7
                  sll          a6, s9, zero
                  bne          s8, t0, 647f
                  slti         a5, s1, -831
                  bne          sp, s4, 654f
                  slt          s7, s9, s6
                  sll          zero, a4, s10
                  bge          s5, t0, 651f
                  sra          a3, a4, s8
                  slti         t4, s10, -634
645:              sltu         s3, a4, t0
                  slli         a2, sp, 28
647:              bgeu         s6, s10, 665f
                  bltu         a7, s10, 661f
                  bge          zero, s6, 661f
                  andi         s7, a0, -1942
651:              xori         a6, a1, -743
                  slti         s11, s6, 969
                  lui          tp, 291273
654:              sra          zero, gp, t2
                  slt          t0, t6, s4
                  xor          a2, a4, gp
                  sll          a2, a5, sp
                  sltiu        gp, s2, 1119
                  xori         a3, a0, 1567
                  add          t6, t5, s8
661:              xori         a4, s0, 1891
                  srl          a6, t2, a5
                  auipc        s3, 456483
                  bgeu         ra, a4, 677f
665:              and          a4, zero, a5
                  sll          s10, t6, t3
                  or           a1, t0, s2
                  srai         s7, sp, 17
                  slt          s8, s9, gp
                  ori          s6, a0, 1678
                  sll          t0, a5, a1
                  bne          s6, t2, 675f
                  xori         zero, a1, -463
                  beq          a7, a5, 677f
675:              srai         s11, s10, 29
                  sltu         t0, s10, t0
677:              slli         a5, t3, 7
                  andi         ra, t6, 1536
                  sltu         s10, ra, s9
                  slti         s4, s3, 1090
                  blt          s10, s4, 686f
                  nop
                  srl          a2, s7, a6
                  xor          ra, a2, s8
                  lui          s4, 71469
686:              bne          gp, gp, 687f
687:              auipc        s8, 333521
                  blt          s4, ra, 699f
                  sltu         ra, sp, a1
                  srli         ra, t1, 28
                  bne          tp, t5, 701f
                  nop
                  srli         t6, a3, 10
                  andi         ra, s10, 1251
                  or           a4, t6, s2
                  or           s7, a6, a6
                  srli         ra, a5, 22
                  and          s8, t4, a5
699:              sltiu        t6, a2, 563
                  or           a5, sp, t4
701:              sltu         a4, s10, s8
                  xor          zero, a5, a3
                  add          s1, s2, s4
                  slti         t5, s6, 1347
                  bne          a7, t5, 725f
                  auipc        s7, 137851
                  bltu         a1, sp, 718f
                  or           s2, s6, sp
                  xori         s7, a3, 93
                  slli         s11, a0, 23
                  slli         t5, tp, 3
                  sltu         a2, ra, s4
                  sltiu        a4, t5, 1593
                  nop
                  bltu         s9, a4, 735f
                  bgeu         a3, t5, 721f
                  srai         s7, s10, 3
718:              slti         s2, s5, -1218
                  xor          a4, a0, s0
                  nop
721:              slli         sp, a4, 20
                  add          sp, t5, s7
                  slti         s7, s0, -1752
                  sra          a4, a0, a7
725:              andi         a4, a0, -1382
                  slli         a0, s2, 3
                  slti         t4, a1, 127
                  srli         s2, t5, 31
                  bgeu         t1, a2, 730f
730:              bltu         t6, zero, 738f
                  sll          t2, a0, s2
                  bge          t1, s10, 738f
                  sub          s8, s6, a7
                  auipc        s8, 914262
735:              sll          s9, s9, s6
                  auipc        s5, 720247
                  nop
738:              sub          s1, t4, sp
                  bltu         a5, s8, 759f
                  or           s3, t4, s7
                  andi         s3, a2, -837
                  lui          a2, 1013589
                  add          s2, s11, a3
                  xori         s1, a5, 463
                  andi         s3, a2, -786
                  slli         a0, s3, 25
                  addi         a7, t0, -1893
                  xori         s11, a7, -194
                  bgeu         s2, sp, 762f
                  sltiu        t4, t4, -1431
                  lui          s7, 869073
                  bgeu         s2, s5, 754f
                  bltu         t5, a6, 762f
754:              beq          s3, t0, 756f
                  sll          a7, a3, s5
756:              add          sp, s7, a3
                  andi         s2, t3, -329
                  beq          s2, s7, 761f
759:              sll          a4, a5, t6
                  srli         a1, s5, 18
761:              nop
762:              lui          gp, 490581
                  bne          a6, gp, 764f
764:              sub          a0, ra, a3
                  ori          sp, s9, 333
                  sltu         s10, s11, s9
                  andi         a0, s3, -1953
                  srl          gp, s6, a6
                  slti         a7, s2, -1037
                  beq          t4, s4, 776f
                  nop
                  srli         tp, t3, 14
                  blt          a7, s2, 776f
                  or           t0, s7, gp
                  add          s8, t2, gp
776:              xori         s4, s3, -995
                  bge          a2, t2, 782f
                  addi         s10, a5, -1702
                  andi         s3, t3, -1951
                  addi         t0, zero, 375
                  xori         t2, s6, 1014
782:              and          t2, t6, a5
                  sltiu        a5, a7, -1339
                  bne          t4, t4, 789f
                  bgeu         s2, a1, 794f
                  bgeu         tp, t3, 789f
                  lui          ra, 553445
                  addi         s7, s10, -126
789:              bgeu         a3, s7, 807f
                  add          a6, s7, a7
                  bge          t0, t4, 805f
                  bne          s8, t5, 793f
793:              and          t5, ra, s10
794:              srai         sp, tp, 17
                  and          tp, s0, gp
                  xori         s1, s0, -1986
                  sub          s3, a7, s2
                  lui          s9, 87006
                  add          zero, t1, s6
                  srai         s11, a1, 17
                  and          t4, s7, gp
                  or           t4, gp, a5
                  sll          s4, ra, a0
                  slli         s3, s3, 28
805:              sltiu        t5, s1, 811
                  slli         gp, t0, 3
807:              ori          sp, s1, -579
                  nop
                  srai         ra, sp, 31
                  sub          t4, s7, s6
                  bge          a6, s5, 819f
                  auipc        t2, 882927
                  bne          s1, s7, 819f
                  srai         a4, s6, 31
                  bgeu         t2, s0, 816f
816:              srl          a5, s6, s11
                  lui          s2, 20413
                  srai         s11, t3, 8
819:              slli         tp, s6, 2
                  lw           ra, 4(t3)
                  srl          s1, a6, tp
                  addi         t3, t3, 20
                  auipc        s8, 774990
                  srai         a1, gp, 18
                  sub          a6, t4, s1
                  sub          t6, t1, s9
                  slli         a0, zero, 25
                  addi         t2, t0, 1177
                  xori         tp, s5, 1725
                  srai         s6, s9, 28
1072:             addi x17, x1, 1
1072:             jalr x17, x17, 0
sub_4:            srai         sp, a4, 8
                  slt          t0, a5, a1
                  bgeu         t4, s11, sub_4_stack_p
                  ori          a7, t4, -896
sub_4_stack_p:    addi         t3, t3, -56
                  sub          zero, s4, t5
                  sltu         a5, s11, t1
                  sw           ra, 4(t3)
                  and          s9, a3, t5
                  la           s3, region_0+540 #start riscv_load_store_rand_instr_stream_0
                  srai         t6, s7, 15
                  slti         a3, s2, -214
                  slli         a3, gp, 5
                  sb           zero, 37(s3)
                  xor          a1, t3, gp
                  add          a4, a6, a2
                  auipc        s11, 685608
                  addi         tp, t3, -466
                  lb           t4, -46(s3)
                  lb           t6, -26(s3)
                  nop
                  sll          s9, a5, s0
                  lhu          a0, 50(s3)
                  sb           a5, -17(s3)
                  xor          a1, s7, s0
                  srl          s2, s7, s8
                  lbu          t0, -38(s3)
                  nop
                  xor          tp, ra, t0
                  srl          t2, t6, s4
                  sh           s5, -22(s3)
                  xori         tp, s2, 836
                  sltiu        t5, t5, 1814
                  sb           s7, -33(s3)
                  xori         a3, tp, -162
                  srl          t4, s5, zero
                  sra          sp, s2, s3
                  add          a1, s6, s9
                  lb           sp, 41(s3)
                  add          ra, zero, s2
                  auipc        s1, 697296
                  slt          s9, tp, s9
                  sra          a7, tp, a3
                  ori          a2, s11, 99
                  lb           s4, -37(s3)
                  ori          s6, s7, -964
                  sb           a2, 17(s3) #end riscv_load_store_rand_instr_stream_0
                  slti         t6, a2, 449
                  andi         a2, s0, 590
                  blt          t3, a6, 15f
                  lui          t5, 817074
                  slli         a6, s4, 21
                  sltu         t6, t0, t5
                  bge          t1, a6, 22f
                  slti         t0, tp, -1
                  slti         t0, s4, -1837
                  slti         t6, t6, 1292
                  or           s6, a0, t3
                  srai         s7, a4, 29
                  addi         a2, t2, -1844
                  add          s10, s1, a6
                  slli         a1, a2, 24
15:               ori          t6, s10, -756
                  auipc        s11, 395958
                  or           s1, s11, s10
                  andi         a5, zero, -1842
                  sub          s2, a6, s1
                  bne          t4, s5, 30f
                  add          gp, gp, s2
22:               srai         t5, ra, 26
                  or           a4, s6, a7
                  beq          gp, gp, 31f
                  slti         s4, s5, 1012
                  bgeu         s7, a3, 34f
                  xori         t6, a5, 115
                  ori          s6, t5, 1185
                  addi         s2, gp, 1743
30:               sll          s1, gp, s2
31:               xor          s9, s2, s11
                  slli         a0, s7, 26
                  sltu         a5, a0, s6
34:               sll          gp, gp, t6
                  xor          s5, t5, t2
                  or           s5, s0, a4
                  sltu         a6, gp, a6
                  srli         a6, t2, 18
                  beq          a7, s5, 50f
                  add          a0, t6, t2
                  bltu         a0, zero, 52f
                  bltu         t1, s0, 50f
                  sub          gp, t1, s8
                  xor          s3, t6, t4
                  bgeu         s5, t0, 62f
                  ori          s11, t5, 16
                  srli         s5, s8, 30
                  srai         a5, t6, 16
                  bne          t5, s6, 65f
50:               sll          s6, zero, a5
                  sltiu        a0, s6, 1191
52:               andi         a6, a4, -781
                  lui          s6, 862281
                  add          a2, a2, a0
                  bltu         s10, s11, 61f
                  add          t2, s11, a3
                  andi         gp, s0, 1425
                  slt          sp, s10, s0
                  and          a5, s9, tp
                  xori         s6, s1, 397
61:               sub          a5, sp, a6
62:               lui          a0, 147412
                  auipc        a7, 480916
                  slt          s4, s1, a0
65:               auipc        t0, 386237
                  xori         s7, a6, 401
                  andi         ra, s8, 10
                  sra          a0, t5, zero
                  andi         a0, s2, -1236
                  slt          s2, a4, s7
                  srli         s7, tp, 6
                  add          sp, ra, sp
                  bltu         t3, a5, 85f
                  sltiu        a4, a6, 1220
                  slti         a0, a3, 1763
                  auipc        s4, 553585
                  sra          a3, s11, t6
                  nop
                  beq          t6, s9, 98f
                  bge          s9, tp, 86f
                  beq          tp, a0, 101f
                  nop
                  sra          gp, s2, a0
                  bge          s10, gp, 103f
85:               nop
86:               ori          t2, t3, 1032
                  nop
                  ori          t6, t2, 1784
                  nop
                  bltu         t3, t4, 104f
                  srai         a7, ra, 3
                  addi         a2, a6, 919
                  addi         a4, a4, -804
                  sub          zero, t5, s1
                  nop
                  beq          tp, s9, 107f
                  sub          t5, t4, ra
98:               srli         sp, t2, 12
                  auipc        a1, 395045
                  slt          s10, s6, a3
101:              sub          s3, tp, tp
                  sub          gp, a5, a2
103:              xor          a1, s5, ra
104:              bne          s4, s6, 119f
                  xori         s4, s3, 571
                  auipc        tp, 173405
107:              sub          a1, s8, a0
                  addi         s7, t0, 1357
                  slli         s2, tp, 30
                  sll          s8, a3, a6
                  add          a3, s0, a6
                  and          s11, t5, t0
                  bne          t1, s1, 119f
                  auipc        a5, 731405
                  bgeu         a7, t2, 125f
                  sltu         s4, s10, s2
                  xor          s1, a4, a3
                  srai         a4, zero, 4
119:              bltu         a7, a6, 124f
                  bge          t3, tp, 125f
                  srai         a2, t3, 14
                  bne          s3, s7, 140f
                  xor          s7, t4, s4
124:              bge          zero, t2, 125f
125:              srai         s9, s2, 0
                  srli         s6, a3, 3
                  sra          tp, s11, t4
                  auipc        a7, 503925
                  ori          a2, sp, -348
                  bne          s11, tp, 136f
                  or           a6, s1, s1
                  add          a0, s8, tp
                  auipc        a6, 917582
                  srl          gp, s10, a6
                  nop
136:              srl          t4, t3, sp
                  bltu         sp, t5, 150f
                  slt          t0, tp, t6
                  srl          a6, s7, s10
140:              bne          s7, t6, 150f
                  lui          gp, 78429
                  bne          t0, s9, 160f
                  xor          gp, s1, a1
                  ori          s5, s6, -706
                  or           s7, sp, s10
                  lui          s7, 141746
                  add          a6, gp, a7
                  bne          a0, t3, 162f
                  sub          a3, t0, s0
150:              srli         s3, t3, 13
                  xori         tp, gp, 1892
                  srl          gp, gp, s0
                  slti         t6, a1, -1883
                  sub          a1, t4, s4
                  bgeu         a4, s2, 167f
                  sltu         a7, s3, gp
                  ori          a1, a1, -1980
                  sltu         s6, a4, s5
                  andi         tp, s10, -428
160:              blt          zero, a1, 176f
                  sll          tp, a5, t6
162:              lui          ra, 227762
                  ori          s4, t1, 946
                  sra          a4, t1, s5
                  bne          s8, a2, 178f
                  srai         s10, a0, 5
167:              sltiu        ra, a0, -684
                  bltu         s8, s3, 174f
                  slt          ra, a1, s0
                  bne          s7, s0, 181f
                  andi         s11, t1, 1206
                  srai         a3, t0, 22
                  sltiu        gp, t4, -32
174:              auipc        t2, 940328
                  and          t5, a2, s11
176:              xor          gp, s7, s9
                  xor          a2, a0, a3
178:              auipc        ra, 671557
                  xor          s11, t0, s9
                  slt          s2, s11, t1
181:              nop
                  slli         t6, t4, 4
                  sltiu        a4, s11, 911
                  sub          s3, gp, t4
                  lui          a2, 562668
                  nop
                  sub          t4, s6, s10
                  add          t4, t0, s4
                  beq          s3, s10, 195f
                  andi         s11, gp, 1691
                  slti         t2, s7, -2048
                  slt          t0, s5, t2
                  and          s6, a5, s5
                  srl          t4, t3, s11
195:              sltu         gp, s7, t2
                  lui          a0, 262685
                  bne          a6, a4, 215f
                  slli         s3, a0, 24
                  auipc        ra, 198056
                  andi         s3, gp, 1507
                  addi         s8, a6, -541
                  lui          t6, 496078
                  blt          ra, a7, 217f
                  add          a2, s6, t2
                  lui          a4, 550659
                  ori          sp, s4, 418
                  slli         s8, s10, 14
                  srl          t5, zero, s8
                  srli         a3, ra, 5
                  bltu         a0, a3, 216f
                  sll          a7, a4, ra
                  andi         t6, s3, 1528
                  sra          t2, s3, gp
                  sltu         sp, a4, t4
215:              andi         ra, s6, 1226
216:              bgeu         s5, s9, 226f
217:              slti         s4, s3, 1046
                  beq          s1, s5, 228f
                  addi         t0, s3, 94
                  slt          s5, a4, s10
                  sltu         tp, a1, s7
                  sub          a2, zero, s9
                  bge          a6, t3, 228f
                  or           s8, s9, t6
                  bge          t2, a2, 228f
226:              auipc        s3, 658935
                  blt          a1, t0, 228f
228:              sltiu        ra, ra, 1400
                  slti         gp, tp, -1573
                  sub          s2, s2, s9
                  sltu         a0, s10, a7
                  sll          s3, a5, sp
                  lui          s2, 552093
                  srli         a2, t1, 3
                  lw           ra, 4(t3)
                  auipc        a0, 754832
                  addi         t3, t3, 56
                  andi         s9, a1, 510
                  lui          a0, 861399
                  srli         s5, a6, 13
288:              addi x19, x1, 0
288:              jalr x19, x19, 0
sub_2:            srai         t5, a7, 13
                  srli         s10, a6, 7
                  srai         s4, s4, 27
                  bltu         ra, a2, sub_2_stack_p
                  srl          a5, a7, t6
                  andi         s5, s9, -2029
                  or           a0, s4, t1
sub_2_stack_p:    addi         t3, t3, -8
                  add          gp, s10, s1
                  sw           ra, 4(t3)
                  lui          a3, 332994
                  xor          t5, sp, sp
                  and          s7, gp, t1
                  la           ra, region_1+339 #start riscv_load_store_rand_instr_stream_0
                  sltiu        gp, t3, 897
                  lb           t6, 236(ra)
                  lbu          s10, -28(ra)
                  lh           a2, 215(ra)
                  lb           s4, 36(ra)
                  sltiu        s9, a4, -1957
                  lbu          s9, -227(ra)
                  srl          t4, s9, t3
                  lh           a3, -67(ra)
                  slti         s8, t0, -42
                  lui          s8, 1028204
                  slti         t4, zero, -1146
                  sub          s8, a2, sp
                  lb           s11, -168(ra)
                  slt          a5, a0, s6
                  slli         zero, t0, 27
                  srli         sp, s2, 12
                  sub          t0, s11, s10
                  addi         s9, s6, 1036
                  sb           t2, -244(ra)
                  slt          s6, s3, s0
                  sb           sp, -226(ra)
                  lbu          gp, 0(ra)
                  srai         t0, s6, 9
                  sub          s6, a2, s4
                  andi         t5, s4, -508
                  sb           s0, -166(ra)
                  lbu          s7, -15(ra)
                  add          gp, s9, s2
                  nop
                  or           s7, t6, s3
                  lb           t6, 88(ra)
                  sub          s8, gp, a7
                  xori         t6, s10, 1608
                  lhu          s5, 117(ra)
                  sw           t3, -255(ra)
                  lbu          s7, 106(ra) #end riscv_load_store_rand_instr_stream_0
                  la           s3, region_1+1121 #start riscv_load_store_rand_instr_stream_2
                  auipc        s9, 693069
                  lw           a0, -725(s3)
                  lb           s9, 399(s3)
                  sb           s10, 139(s3)
                  and          s11, a6, s8
                  add          s5, gp, zero
                  sb           s6, -518(s3)
                  sb           t1, 731(s3)
                  sb           t3, 470(s3)
                  sltu         sp, t1, t1
                  sra          sp, s4, s9
                  lb           t0, 211(s3)
                  sw           s2, -297(s3)
                  lw           a3, -633(s3)
                  xor          t2, t1, a1
                  lui          t2, 612670
                  srl          zero, a7, ra
                  auipc        s2, 525950
                  xori         t5, t5, 1126
                  srl          a0, tp, s0
                  lh           zero, -713(s3)
                  lui          s6, 960059
                  add          s4, a2, a0
                  lb           sp, 838(s3) #end riscv_load_store_rand_instr_stream_2
                  la           a3, region_0+1751 #start riscv_load_store_rand_instr_stream_3
                  and          a5, t0, sp
                  andi         a2, t5, 1378
                  sb           s0, 4(a3)
                  nop
                  or           s8, s2, a1
                  lui          a4, 997559
                  srl          zero, a2, a3
                  auipc        s4, 186662
                  slti         s3, t0, -536
                  xor          a4, a3, s3
                  lb           s5, -13(a3)
                  sll          s8, gp, tp
                  sb           s10, -11(a3)
                  lb           tp, 6(a3)
                  andi         s3, s11, 960
                  slli         s6, a1, 25
                  lb           s2, -10(a3)
                  slli         s10, s0, 8
                  srl          s8, t3, ra
                  sw           s8, 1(a3)
                  xori         s11, s3, 510
                  lb           s1, 10(a3)
                  lbu          a1, -16(a3)
                  and          s9, a3, a7
                  xor          ra, s9, t1
                  sltu         a7, s1, t1
                  xor          tp, s8, a1
                  lbu          s6, -5(a3)
                  lh           a2, 11(a3)
                  srai         a4, t0, 29
                  or           a1, a6, s4
                  sra          t5, s6, s11
                  or           t0, ra, zero
                  add          s5, a4, t2
                  sh           s2, -5(a3)
                  xori         a4, zero, 1770
                  xor          s1, a6, s7
                  lbu          s11, -9(a3) #end riscv_load_store_rand_instr_stream_3
                  bltu         t6, ra, 9f
                  sra          gp, a7, t3
                  addi         tp, a6, 1925
                  auipc        a1, 484680
                  sltu         sp, s9, a6
                  nop
                  addi         a1, t6, 1287
                  sltu         ra, a3, t1
                  sltu         a4, sp, t4
9:                blt          s2, a1, 13f
                  lui          s2, 113524
                  xor          sp, a5, t1
                  bltu         sp, s6, 27f
13:               slli         ra, s3, 3
                  xor          ra, a6, t4
                  bltu         s6, t5, 19f
                  andi         a3, t5, -280
                  and          t4, gp, a1
                  sll          sp, s2, a6
19:               addi         t5, a6, 382
                  xor          a3, t3, s9
                  bltu         t6, t2, 22f
22:               srli         t5, gp, 11
                  nop
                  xori         t4, a2, 204
                  srli         a4, s4, 4
                  sll          a6, s10, s7
27:               srai         zero, s9, 29
                  sra          t6, s11, a3
                  srl          s4, gp, t3
                  ori          a6, a0, 1047
                  srl          s6, a2, s3
                  xori         a3, a2, -875
                  xori         s3, s11, 168
                  nop
                  andi         s9, sp, 84
                  sll          a7, gp, s3
                  sltiu        a2, zero, 569
                  sltiu        a6, a5, 1297
                  xor          gp, t0, t0
                  andi         t6, t6, -1658
                  bge          t5, tp, 60f
                  and          a3, sp, zero
                  xori         ra, zero, -151
                  sra          t4, s1, t2
                  slti         s5, s10, 1221
                  bgeu         s5, a6, 52f
                  sub          s4, tp, s3
                  add          tp, t0, a1
                  and          gp, a4, a5
                  bge          sp, a2, 61f
                  srli         s4, s6, 21
52:               auipc        gp, 606993
                  srai         a6, t5, 4
                  slli         ra, s0, 25
                  andi         a5, a5, -162
                  slt          s6, s8, t0
                  xor          a2, s4, zero
                  ori          a4, s3, 913
                  bge          t3, s1, 66f
60:               sub          a0, t0, s2
61:               add          ra, t3, a7
                  slli         a6, a7, 16
                  sra          s8, s1, ra
                  srai         a3, s3, 17
                  xor          s9, s7, s5
66:               sltu         a5, s0, s2
                  bgeu         a7, s3, 68f
68:               sltiu        ra, a7, -841
                  srai         s5, s6, 9
                  bne          t5, s0, 77f
                  sub          s6, s10, s4
                  ori          s5, zero, -677
                  srai         gp, s2, 28
                  sll          tp, t5, gp
                  blt          a7, s2, 91f
                  slti         s1, a6, 1269
77:               slt          s3, s10, a5
                  slti         s4, s7, 293
                  slli         a3, s1, 9
                  nop
                  sltiu        a0, s4, 1964
                  srai         s5, s9, 27
                  and          tp, a4, t0
                  nop
                  or           s11, gp, s11
                  srli         tp, s4, 7
                  and          a7, gp, a5
                  slt          s11, s3, a4
                  sltiu        a7, a4, 100
                  auipc        a3, 958056
91:               lui          t2, 48696
                  sub          t2, s10, t5
                  addi         sp, t6, -210
                  slt          a3, gp, a5
                  ori          a3, a4, -1167
                  slli         s7, s4, 27
                  srli         a7, a5, 5
                  or           t0, s10, s0
                  bge          s11, t3, 100f
100:              nop
                  bge          s0, s4, 110f
                  sltu         s8, tp, a4
                  beq          a6, s5, 112f
                  bne          t3, a3, 111f
                  sltiu        t5, s3, -1653
                  sll          s11, a1, s3
                  bne          s7, gp, 126f
                  xor          s11, sp, s4
                  bne          s9, a0, 127f
110:              slti         a3, zero, 984
111:              slti         s11, zero, -711
112:              xor          a6, a2, s7
                  sltu         a2, s8, s2
                  sra          s11, a6, t6
                  sub          tp, t5, s8
                  slt          s1, t5, s0
                  nop
                  sra          a0, a0, s4
                  srai         gp, s1, 25
                  blt          zero, a7, 123f
                  andi         a1, s7, 1554
                  sra          t4, a2, t4
123:              srai         s8, ra, 10
                  xori         t2, s6, 1846
                  sltu         tp, t1, s11
126:              add          gp, s2, ra
127:              or           sp, t5, s8
                  bge          s9, t5, 132f
                  sll          s9, a1, tp
                  andi         s10, s8, -1389
                  slt          t6, ra, sp
132:              sltu         a5, s3, t3
                  blt          a7, t1, 142f
                  bne          t0, s1, 146f
                  srli         s4, s1, 8
                  xor          a7, a0, t3
                  beq          s1, t0, 153f
                  slt          ra, t0, t5
                  and          zero, a4, a6
                  add          s1, s7, ra
                  xor          tp, s7, a6
142:              blt          t5, s7, 148f
                  sltiu        zero, s9, -350
                  blt          s3, s11, 153f
                  srl          s3, t1, t5
146:              add          a5, a6, a5
                  bltu         t6, a2, 159f
148:              blt          a4, a5, 158f
                  xor          s9, t6, t3
                  bge          s11, ra, 166f
                  blt          s5, a4, 153f
                  or           t4, t4, s5
153:              sltiu        a0, a0, 850
                  bge          a7, a7, 171f
                  slli         a7, t5, 11
                  or           s1, s5, zero
                  srl          a7, t6, s1
158:              beq          s10, t6, 174f
159:              ori          a6, s6, 1616
                  bge          t5, a4, 167f
                  lui          a6, 809019
                  blt          a0, t4, 171f
                  sra          s1, s3, t4
                  bltu         s2, s7, 174f
                  and          s2, a0, a2
166:              ori          s10, t5, -1760
167:              sll          a2, t0, s6
                  add          a5, a3, a5
                  sll          t5, s6, s9
                  andi         a1, a5, -1203
171:              ori          s2, s4, 1567
                  slt          s8, s4, tp
                  sub          a7, a6, t5
174:              andi         t5, gp, 1002
                  add          s8, s7, t2
                  add          s8, s0, s9
                  nop
                  addi         s10, ra, -508
                  sub          a5, t3, sp
                  sra          sp, t5, t2
                  blt          t4, s10, 198f
                  bge          s6, s9, 185f
                  sra          s11, t0, t1
                  bgeu         tp, zero, 193f
185:              beq          s2, a6, 191f
                  sra          s4, s3, s7
                  sltiu        a2, zero, -448
                  slti         a4, s6, 990
                  slt          s7, s9, a3
                  bgeu         s7, s3, 191f
191:              sra          t5, a2, s9
                  add          a7, gp, s11
193:              slt          s5, s6, sp
                  slli         s2, t4, 5
                  auipc        t2, 711049
                  andi         s8, a1, -1225
                  andi         s4, t3, -1131
198:              srli         ra, a2, 19
                  ori          s11, s8, 1551
                  andi         t4, t4, 897
                  bltu         zero, t3, 220f
                  nop
                  bne          zero, s5, 207f
                  nop
                  bne          t3, a5, 214f
                  andi         a2, s4, -1785
207:              and          s2, s7, s4
                  sub          s4, t0, a2
                  and          a3, t5, t6
                  slli         a0, tp, 1
                  sll          a6, t3, t3
                  andi         a6, s1, 165
                  andi         sp, sp, 1986
214:              auipc        t6, 291141
                  sltiu        s11, s8, -2044
                  slti         s11, ra, 497
                  sltu         gp, t6, s9
                  ori          s8, gp, -1865
                  sra          a6, s3, tp
220:              ori          tp, s6, 565
                  addi         s1, t2, -1106
                  addi         a3, a4, -950
                  sltiu        gp, s2, -137
                  slti         a7, a7, -515
                  slt          s4, s6, s8
                  srl          tp, a3, a5
                  slt          a4, s3, t4
                  xor          s5, s9, t3
                  srai         s5, t0, 5
                  blt          s11, a1, 234f
                  auipc        s4, 599664
                  bltu         zero, a1, 243f
                  and          a2, s1, s5
234:              slti         t5, s1, 51
                  blt          s7, a6, 251f
                  auipc        gp, 554896
                  blt          t4, s1, 246f
                  bge          s1, tp, 245f
                  slt          sp, a0, s7
                  sra          tp, s10, t6
                  andi         s11, s8, -2014
                  slti         a3, t5, -1344
243:              ori          s8, a5, -1393
                  bne          s10, a1, 253f
245:              sltu         gp, zero, a1
246:              auipc        gp, 174801
                  nop
                  andi         zero, a6, 1098
                  bge          t3, s11, 255f
                  sub          a6, a4, t1
251:              srl          a2, s0, t1
                  and          a6, t3, sp
253:              sll          s2, t3, s4
                  slt          zero, s5, s6
255:              or           sp, s8, s6
                  lui          a5, 841612
                  slti         ra, t0, -1448
                  and          t4, s6, t0
                  slt          s3, ra, t0
                  bne          s7, s0, 272f
                  auipc        a2, 829622
                  bge          s5, s10, 263f
263:              xori         ra, gp, -712
                  srai         t0, ra, 16
                  add          s4, a7, gp
                  sll          s2, s10, a6
                  addi         t4, a3, 1701
                  auipc        s3, 312032
                  beq          t0, t4, 273f
                  slt          a4, s2, t0
                  srl          s6, t3, s7
272:              nop
273:              slli         s3, t3, 31
                  auipc        s8, 59197
                  auipc        s4, 997915
                  sra          s3, t4, s11
                  bge          a1, gp, 278f
278:              sltu         a7, gp, s9
                  slti         s10, s8, -1711
                  or           s11, ra, tp
                  sub          a3, s6, t2
                  bltu         s1, s2, 298f
                  lui          s6, 1026648
                  addi         a4, s7, 9
                  xori         a3, t0, 112
                  sra          s8, t4, s1
                  lui          s3, 141096
                  sra          a2, t0, s5
                  ori          a2, a7, -1539
                  or           a2, s0, a6
                  bne          t0, s9, 303f
                  sll          t4, t1, s1
                  or           t6, s3, a1
                  andi         a6, s10, -772
                  srai         t2, t6, 30
                  auipc        a6, 186708
                  xori         a1, zero, -255
298:              bltu         t0, gp, 305f
                  sltu         a3, s0, a5
                  andi         a1, s0, -939
                  ori          a5, s0, -197
                  slli         s6, t1, 30
303:              auipc        s10, 158087
                  auipc        a5, 192151
305:              srai         a5, t1, 29
                  srai         sp, zero, 9
                  xori         zero, s11, 1269
                  add          s2, a4, sp
                  bne          t4, zero, 311f
                  slli         a3, t2, 4
311:              srl          s8, sp, a7
                  auipc        a7, 779430
                  lui          s4, 40790
                  add          a5, s1, a7
                  sub          a3, t5, s0
                  xori         t2, t0, 885
                  beq          s0, a2, 332f
                  ori          t0, s0, -265
                  bge          a6, tp, 337f
                  slli         s1, s9, 1
                  bne          s1, s2, 340f
                  bne          sp, s5, 334f
                  sltu         sp, tp, s10
                  srli         s1, t3, 29
                  sltu         t4, t4, a2
                  xori         gp, a6, 1339
                  auipc        s7, 575771
                  lui          s8, 54434
                  add          s10, s4, ra
                  bltu         gp, a2, 346f
                  srai         s7, s6, 31
332:              srl          a0, t6, s0
                  sub          a7, s2, s0
334:              bgeu         zero, s2, 350f
                  bne          t4, t5, 341f
                  srai         s3, s7, 4
337:              bltu         ra, t3, 344f
                  nop
                  sltiu        s3, ra, -1982
340:              and          s1, s6, s6
341:              srl          a7, s3, s1
                  blt          s0, ra, 351f
                  xori         s3, a3, -370
344:              sltu         s11, t2, s8
                  andi         a4, a0, 1873
346:              sltiu        s9, t3, -217
                  slt          s6, s5, a6
                  and          s2, sp, t3
                  xori         gp, gp, -897
350:              or           t5, t0, s1
351:              srai         s7, sp, 23
                  sll          t2, s0, gp
                  ori          a6, a2, -464
                  beq          a2, s4, 358f
                  blt          a1, s5, 357f
                  addi         s5, zero, -1516
357:              slt          s1, s6, a1
358:              beq          s11, s3, 367f
                  and          a1, s5, s6
                  sltu         s5, a2, s8
                  sra          s7, s3, zero
                  bgeu         gp, a1, 363f
363:              ori          a0, s4, -1113
                  srli         a7, t4, 18
                  srli         a4, t3, 24
                  xor          tp, t3, a4
367:              srl          a1, t3, s10
                  srai         ra, a4, 22
                  sub          t4, t4, t2
                  srl          a1, s11, s9
                  bge          s10, a0, 390f
                  blt          s3, t0, 382f
                  sll          s8, s9, ra
                  sll          a3, a2, s11
                  sltiu        a4, a7, 2019
                  srli         s8, t1, 16
                  lui          s1, 709058
                  nop
                  addi         ra, s11, -1873
                  slli         zero, t6, 19
                  nop
382:              and          a7, t5, s4
                  bne          t6, zero, 390f
                  beq          s1, s8, 391f
                  blt          s0, s1, 404f
                  addi         t0, s7, 1136
                  or           a7, tp, s1
                  slt          s6, s11, s2
                  slli         s11, a5, 16
390:              slti         s6, s4, -1197
391:              slt          t0, a2, s11
                  add          s10, t4, s10
                  slt          a1, s3, a1
                  beq          t4, t5, 400f
                  bge          t4, a6, 398f
                  sltiu        tp, s3, -708
                  bne          s0, t6, 401f
398:              bgeu         s7, s2, 402f
                  bne          s1, s5, 410f
400:              slli         t5, a3, 4
401:              andi         s11, s2, 158
402:              addi         a4, s2, -85
                  srli         tp, s11, 27
404:              and          s4, t1, t5
                  blt          t0, t1, 422f
                  ori          s8, zero, -1479
                  bne          s10, t0, 423f
                  xori         s5, t4, -566
                  sltu         tp, s11, s11
410:              addi         s6, a2, 895
                  bne          s11, t1, 426f
                  xori         s2, t4, 1262
                  or           a2, tp, s3
                  addi         a5, s4, 1225
                  nop
                  srl          t5, sp, a2
                  or           a5, ra, t2
                  sra          a3, t5, t2
                  srli         s1, ra, 27
                  srl          gp, a3, t0
                  la           s8, region_0+473 #start riscv_load_store_rand_instr_stream_1
                  sll          s5, t0, a3
                  sh           a4, 151(s8)
                  lb           a3, 40(s8)
                  sub          a0, t6, a1
                  lb           t4, 642(s8)
                  sub          s1, zero, a4
                  add          sp, t6, a1
                  sll          a7, s6, t3
                  and          gp, s4, t5
                  sb           s6, -243(s8)
                  lb           s1, 907(s8)
                  slli         sp, sp, 31
                  sb           zero, 1066(s8)
                  lbu          a6, 574(s8)
                  ori          sp, gp, 1573
                  lhu          s7, 1249(s8)
                  sb           a0, 360(s8)
                  lbu          t4, 566(s8)
                  lw           t2, 303(s8)
                  lh           a6, -409(s8)
                  srai         s2, s7, 13
                  sub          s9, s1, s2
                  lb           sp, -160(s8)
                  lb           t6, 1114(s8)
                  srai         gp, a7, 1
                  nop
                  sb           s4, 105(s8)
                  auipc        t6, 765584
                  sltu         a1, a5, t1
                  sb           t0, 365(s8)
                  lb           sp, 416(s8) #end riscv_load_store_rand_instr_stream_1
                  slti         t0, s2, -665
422:              srl          a0, a1, a7
423:              addi         ra, s6, -822
                  sll          s5, t6, zero
                  xori         t0, tp, -1229
426:              bltu         tp, s3, 444f
                  bne          s9, a4, 436f
                  sll          s4, s7, s5
                  sltu         ra, s10, s8
                  bltu         a1, s1, 442f
                  srli         a2, t3, 11
                  sltu         s6, a7, t5
                  srli         zero, a4, 7
                  auipc        a1, 512284
                  xor          t2, s7, t4
436:              sltiu        s10, s5, 929
                  or           s5, t6, a3
                  sltiu        s2, a2, -433
                  slli         s7, s4, 5
                  nop
                  and          s5, gp, t1
442:              add          a6, t2, s11
                  blt          s0, gp, 452f
444:              slti         t4, s4, -83
                  or           a6, a1, s9
                  slt          t6, a7, sp
                  bltu         s11, a5, 448f
448:              nop
                  xor          s9, a7, a0
                  lui          t6, 12719
                  sltiu        s1, a7, -1989
452:              bltu         s8, t3, 461f
                  blt          t6, t5, 454f
454:              add          t5, gp, s3
                  srai         s1, s9, 18
                  srai         t4, s6, 20
                  lui          a0, 889720
                  xori         s7, gp, 1651
                  bne          a1, t6, 471f
                  srli         a3, s1, 18
461:              beq          t1, a3, 470f
                  sltu         a3, t0, t6
                  nop
                  sltu         sp, s8, a5
                  sltiu        gp, s3, -1451
                  xor          t2, ra, s2
                  sll          s5, s8, s3
                  auipc        t2, 651735
                  srli         s8, t6, 2
470:              slt          s8, t0, a1
471:              and          s9, a6, s7
                  bgeu         a7, t0, 481f
                  andi         s2, ra, -1126
                  slti         a1, tp, 203
                  or           a7, a6, t3
                  srl          s2, a7, a0
                  slti         s8, s10, -356
                  auipc        s11, 1001304
                  or           a5, tp, s10
                  auipc        s10, 19160
481:              nop
                  blt          t1, s11, 486f
                  xor          gp, a3, a7
                  sltiu        ra, a3, 594
                  srli         a6, s9, 29
486:              bgeu         t0, s3, 492f
                  bne          t4, t0, 496f
                  bge          t5, gp, 500f
                  auipc        a2, 959937
                  srli         a1, gp, 2
                  bgeu         a3, s11, 495f
492:              bltu         zero, t3, 493f
493:              srl          t5, t5, zero
                  bge          a5, a5, 513f
495:              slli         a0, t1, 29
496:              sra          s3, s6, t1
                  and          a0, a4, a5
                  bge          a6, s5, 515f
                  bgeu         t2, a0, 515f
500:              and          s6, t2, s11
                  andi         t4, s3, -997
                  add          s7, s11, s6
                  xor          a0, gp, s0
                  beq          s11, s11, 508f
                  bltu         s6, tp, 514f
                  and          tp, a0, s9
                  slti         s5, s5, -692
508:              bgeu         a4, s5, 515f
                  sltu         t5, gp, tp
                  nop
                  srai         s8, t0, 3
                  sll          s10, t1, t6
513:              bgeu         a2, t5, 528f
514:              lui          s1, 859003
515:              bge          a0, a4, 516f
516:              bne          t1, a0, 517f
517:              addi         t0, s4, -1615
                  addi         a0, t0, 1028
                  add          t5, zero, tp
                  bne          s3, ra, 530f
                  and          gp, gp, gp
                  sltiu        a2, t2, -380
                  sub          s9, t0, a0
                  srl          a2, s9, s2
                  nop
                  sub          a7, a4, a1
                  sub          sp, s10, a2
528:              bne          t1, s2, 544f
                  xor          a5, s11, s5
530:              beq          a6, s11, 546f
                  slti         s5, a4, 1187
                  and          t5, s8, s2
                  blt          t3, s9, 539f
                  slti         a0, t3, -1156
                  lui          s7, 644096
                  or           a3, zero, s11
                  srai         gp, t0, 24
                  slli         a6, t5, 31
539:              add          s6, t3, t5
                  blt          t1, t6, 551f
                  sltiu        t5, a5, -439
                  blt          s8, s1, 545f
                  nop
544:              andi         t6, a3, 1428
545:              ori          t0, s9, 174
546:              slti         t4, s0, -205
                  bne          a3, a5, 565f
                  auipc        s11, 419036
                  blt          s2, gp, 558f
                  bltu         a1, tp, 569f
551:              sltiu        s2, s10, 764
                  sll          a4, t5, s7
                  bltu         s6, a4, 560f
                  bge          s3, a6, 556f
                  beq          a6, gp, 562f
556:              add          gp, s10, t5
                  sra          a0, a0, a3
558:              and          zero, zero, a6
                  slti         s4, s4, 787
560:              auipc        s11, 271090
                  xori         s11, s8, -775
562:              bltu         s1, t0, 569f
                  addi         a6, a1, -1143
                  and          s7, t6, s2
565:              nop
                  beq          s2, s9, 578f
                  slli         sp, t3, 22
                  srai         tp, ra, 16
569:              blt          s6, s5, 573f
                  bne          a1, a1, 572f
                  nop
572:              nop
573:              beq          s1, s10, 579f
                  beq          s6, s10, 577f
                  srli         zero, zero, 11
                  xori         t4, t6, -590
577:              slli         t4, s11, 25
578:              bne          s8, a0, 585f
579:              add          t0, ra, a6
                  slti         a1, a6, -1539
                  addi         gp, a2, 957
                  sltiu        s9, t3, 644
                  bgeu         a1, t6, 595f
                  ori          t4, s0, -515
585:              slti         a1, gp, -1457
                  auipc        s9, 256036
                  andi         s3, t2, 51
                  add          a4, t4, tp
                  slli         s7, s6, 25
                  or           sp, gp, a7
                  slli         a4, a7, 1
                  beq          t0, s0, 603f
                  bge          s5, s6, 597f
                  srl          a7, gp, s1
595:              xori         sp, a7, -419
                  slti         t0, t5, 24
597:              addi         a7, tp, -1212
                  la           gp, region_1+797 #start riscv_load_store_rand_instr_stream_4
                  lh           t2, 167(gp)
                  lw           s10, -117(gp)
                  and          s1, s9, s9
                  sb           t4, -189(gp)
                  sub          s7, t3, s1
                  lbu          a7, -12(gp)
                  sh           a6, 153(gp)
                  add          t2, a5, a4
                  sh           a5, 219(gp)
                  slli         s4, s9, 14
                  sh           s11, 255(gp)
                  sub          s3, s4, a7
                  sltiu        t0, t2, -228
                  sb           a7, -236(gp)
                  sb           t4, 89(gp)
                  lb           s1, 47(gp)
                  lh           t6, -169(gp)
                  lbu          s7, 160(gp)
                  sb           a5, -156(gp)
                  sb           s9, -103(gp)
                  lh           a1, 21(gp)
                  add          zero, gp, a2
                  lbu          s6, -147(gp)
                  add          s4, s10, a5
                  sb           t0, 161(gp)
                  add          zero, a2, a4
                  lbu          a2, -113(gp)
                  xori         s6, gp, -1324
                  sb           s3, 216(gp)
                  sb           a4, 120(gp)
                  sb           s10, -236(gp)
                  sh           a2, 93(gp)
                  ori          a7, t0, 416
                  xor          a4, sp, t3
                  lw           zero, 151(gp)
                  sw           t4, 175(gp)
                  xor          s4, s0, a2
                  sh           t2, 107(gp) #end riscv_load_store_rand_instr_stream_4
                  sll          gp, a7, t3
                  bltu         s1, s0, 608f
                  bgeu         a2, t1, 601f
601:              sltu         a7, t2, a3
                  nop
603:              bltu         t0, sp, 612f
                  srl          s2, t1, a6
                  auipc        a3, 947509
                  sltu         sp, s3, a0
                  nop
608:              sub          a6, t5, s1
                  bltu         a6, s3, 628f
                  slt          ra, t3, a2
                  sll          a2, gp, s5
612:              blt          t0, a1, 629f
                  nop
                  andi         s9, ra, 1582
                  addi         a7, s6, 1731
                  auipc        a7, 473575
                  sll          s10, s0, a1
                  bne          s9, a2, 633f
                  nop
                  slli         a1, a1, 8
                  slt          a7, a5, a1
                  srli         tp, gp, 9
                  sltu         s6, t2, a0
                  or           s5, tp, s7
                  or           s2, t3, t5
                  and          s7, t6, a0
                  auipc        gp, 83825
628:              bltu         t6, s8, 634f
629:              xori         a1, s9, -1540
                  sltu         s9, t0, t0
                  sll          s6, s0, s3
                  sltu         ra, a3, t3
633:              bne          s2, a7, 640f
634:              srai         tp, s11, 22
                  bne          a4, a0, 641f
                  srai         a5, a0, 2
                  srli         ra, t1, 18
                  lui          tp, 838934
                  xor          s5, ra, s2
640:              srli         a7, sp, 8
641:              ori          zero, t2, -525
                  slli         s10, s6, 27
                  sub          t4, s4, t0
                  and          t2, t4, ra
                  lui          s3, 479494
                  lw           ra, 4(t3)
                  addi         t3, t3, 8
                  or           s4, t0, t0
                  sub          s11, a7, s4
                  xor          s11, t3, s1
                  xor          a6, t5, s9
                  nop
                  slli         s1, s0, 7
840:              addi x18, x1, 1
840:              jalr x18, x18, 0
sub_5:            sub          s8, a2, s5
                  slli         t2, t6, 22
                  addi         t3, t3, -52
                  xor          zero, a2, t2
                  slli         t5, sp, 17
                  nop
                  add          a4, a5, a3
                  sw           ra, 4(t3)
                  srl          a4, ra, a5
                  andi         a7, t6, -1080
                  ori          t4, a3, -1014
                  addi         s8, tp, -102
                  auipc        s6, 462850
                  srl          t0, a1, a7
                  xori         a5, s7, 1830
                  sra          a1, s4, s2
                  auipc        t6, 178352
sub_5_j8:         jal          ra, sub_7 #jump sub_5 -> sub_7
                  la           sp, region_1+1189 #start riscv_load_store_rand_instr_stream_1
                  lbu          zero, 126(sp)
                  lbu          a0, 168(sp)
                  lbu          a5, -226(sp)
                  xori         s2, zero, 1689
                  add          a0, t4, t5
                  nop
                  add          t4, zero, a5
                  sb           a3, -112(sp)
                  or           s5, a0, s10
                  srl          zero, gp, t2
                  lb           tp, -36(sp)
                  lb           s4, -12(sp)
                  lhu          s1, 81(sp)
                  lbu          s9, 77(sp)
                  or           a4, s0, ra
                  sltiu        s4, t6, 860
                  lhu          ra, 37(sp)
                  sll          s11, a5, ra
                  sra          t6, s7, s10
                  lbu          gp, 138(sp)
                  sra          s9, s7, t3
                  srl          t6, s2, tp
                  add          a5, a6, s8
                  lhu          s10, 205(sp)
                  sw           s1, -181(sp)
                  nop
                  sra          s9, tp, a0
                  lbu          s6, -166(sp) #end riscv_load_store_rand_instr_stream_1
                  la           a0, region_1+711 #start riscv_load_store_rand_instr_stream_6
                  ori          s7, a4, -1693
                  slti         s1, tp, 936
                  addi         s1, s4, 452
                  sub          s8, s2, zero
                  lb           t6, 12(a0)
                  add          a1, s3, zero
                  nop
                  sb           a7, 2(a0)
                  sra          s2, gp, ra
                  lui          a1, 311767
                  srl          s10, s8, t6
                  or           a6, a3, a1
                  sb           s10, 15(a0)
                  srli         gp, s2, 23
                  sb           a6, 4(a0)
                  lh           s10, 9(a0)
                  sll          gp, a1, gp
                  sh           s4, 5(a0)
                  and          s11, zero, ra
                  sra          ra, s2, a0
                  lbu          tp, -16(a0)
                  sb           s0, -1(a0)
                  lbu          s7, -2(a0)
                  sra          gp, a4, ra
                  srl          a5, t3, s2
                  sltiu        a5, a0, 100
                  nop
                  sh           a2, 1(a0)
                  lb           t5, 0(a0)
                  sub          t4, a2, a3
                  lbu          t4, 16(a0)
                  or           a4, a4, s1
                  sltiu        a2, s4, 82
                  srai         a2, s9, 0
                  sltiu        a3, s8, 1099
                  lb           t4, -1(a0)
                  sb           s10, 8(a0)
                  sb           s8, 8(a0) #end riscv_load_store_rand_instr_stream_6
                  la           a2, region_0+673 #start riscv_load_store_rand_instr_stream_4
                  sll          s5, zero, a0
                  lhu          s7, -43(a2)
                  xor          a6, a6, t1
                  sh           a2, 163(a2)
                  lb           s1, -71(a2)
                  slli         t0, tp, 2
                  lui          a5, 174736
                  andi         a5, s1, -993
                  and          t2, s5, s7
                  slt          a0, sp, s10
                  auipc        s4, 120510
                  lb           tp, 222(a2)
                  lb           s10, -238(a2)
                  addi         s6, s5, 284
                  sb           gp, -4(a2)
                  lb           s6, 251(a2)
                  and          s6, a4, ra
                  andi         t4, gp, 532
                  srl          a3, a5, s9
                  slti         a7, a4, 248
                  slt          s1, gp, a2
                  srli         s3, tp, 14
                  sh           s10, 113(a2)
                  srai         s2, t6, 17
                  sb           s11, 44(a2)
                  lbu          s8, -96(a2)
                  lb           s6, -148(a2)
                  lb           s1, 212(a2)
                  or           a0, s5, t2
                  xor          gp, a3, s0
                  sb           t2, -86(a2)
                  sh           s8, 157(a2)
                  lhu          s3, 155(a2)
                  sra          gp, s1, ra
                  lb           t2, -214(a2)
                  lui          t4, 106396
                  lbu          s11, -165(a2)
                  lb           a7, 58(a2)
                  sb           s9, 214(a2)
                  sh           a2, -137(a2)
                  sh           s10, 205(a2)
                  sra          ra, s11, t0
                  slli         t4, s6, 12
                  sb           tp, -35(a2)
                  srai         tp, tp, 16
                  lbu          t5, -236(a2)
                  xor          s4, zero, s11
                  sb           t3, -10(a2)
                  sb           s9, -58(a2)
                  srli         a7, s8, 19
                  sll          t0, s5, zero
                  srai         a7, s7, 21
                  lb           s8, 74(a2) #end riscv_load_store_rand_instr_stream_4
                  la           a6, region_0+1634 #start riscv_load_store_rand_instr_stream_3
                  lbu          s3, 77(a6)
                  lbu          t0, 89(a6)
                  sltiu        a1, t6, -110
                  srli         t0, zero, 11
                  lbu          s7, 237(a6)
                  add          s2, t3, s8
                  lb           s7, 255(a6)
                  xor          t4, ra, s1
                  xor          t5, s6, t4
                  lbu          t6, -21(a6)
                  sra          s3, a3, s0
                  slti         s4, t4, -272
                  auipc        a2, 127391
                  sb           s1, -164(a6)
                  srli         t2, t6, 7
                  srl          t2, s7, a7
                  or           gp, t3, a2
                  sb           gp, 125(a6)
                  lbu          tp, 195(a6)
                  nop
                  xor          s8, s3, t3
                  lhu          gp, -148(a6)
                  sra          sp, s7, t1
                  sh           t3, 194(a6)
                  lh           s1, -32(a6)
                  lb           s8, -109(a6)
                  sub          t4, a5, t0
                  sb           t4, -209(a6)
                  sw           a6, -78(a6)
                  sw           sp, -154(a6)
                  sltiu        ra, a6, -728
                  sw           gp, -134(a6)
                  sw           sp, -162(a6)
                  addi         s3, s6, -1492
                  slti         a4, s0, 817
                  lb           s3, -183(a6)
                  xor          t2, a6, t0
                  lbu          gp, -152(a6)
                  lb           s6, -51(a6)
                  sb           s4, -210(a6)
                  sh           s7, 16(a6)
                  auipc        a4, 43228
                  sb           a6, 119(a6)
                  lbu          a2, 121(a6)
                  sltiu        a7, t2, 332
                  sltiu        zero, s9, 1753
                  lbu          s5, 79(a6) #end riscv_load_store_rand_instr_stream_3
                  la           t2, region_0+833 #start riscv_load_store_rand_instr_stream_0
                  lui          s10, 266827
                  slti         a7, t6, 221
                  addi         a4, a7, -627
                  lh           s9, 449(t2)
                  lh           ra, 377(t2)
                  sra          s9, s11, s3
                  sh           t4, 365(t2)
                  sra          gp, a5, s2
                  lbu          s7, -774(t2)
                  lb           a2, -155(t2)
                  srli         t0, a5, 15
                  nop
                  sb           s4, -390(t2)
                  lb           sp, -237(t2)
                  slli         s6, s7, 28
                  srai         s9, t3, 13
                  sub          t5, a0, t5
                  srai         s2, t3, 3
                  lb           t6, -358(t2)
                  xori         s8, tp, 1440
                  and          gp, s1, s5
                  andi         t0, s1, 1351
                  slti         ra, a3, 176
                  lbu          a7, 229(t2)
                  sb           ra, 814(t2)
                  srli         sp, tp, 31
                  lhu          s7, 945(t2) #end riscv_load_store_rand_instr_stream_0
                  bltu         t3, a6, 12f
                  add          s11, t0, s9
                  andi         a1, a1, 1692
                  bge          a0, s1, 16f
                  sra          gp, s4, s7
                  srl          a2, a3, a2
                  nop
                  bltu         s6, t2, 18f
                  bltu         t0, t1, 21f
                  blt          a5, s4, 20f
                  add          sp, s2, t4
                  ori          t5, s9, -652
12:               slli         s10, s8, 4
                  bge          a2, a3, 14f
14:               xor          tp, zero, a7
                  nop
16:               sra          a2, tp, a4
                  ori          a1, ra, -2009
18:               bge          s5, a6, 27f
                  lui          a6, 504658
20:               ori          a1, s4, 1641
21:               sra          s3, tp, t5
                  bltu         s5, t5, 25f
                  xori         s11, t2, 1114
                  nop
25:               ori          s9, t2, 1309
                  auipc        a0, 997452
27:               ori          s1, t5, 661
                  sltiu        s10, a5, 356
                  xori         a4, s1, -897
                  slt          a4, a3, t2
                  srli         s10, sp, 15
                  or           a1, a7, s2
                  bne          a2, tp, 38f
                  slli         t2, s5, 16
                  ori          s1, a3, -1337
                  bgeu         s7, s9, 55f
                  sra          s9, t1, s4
38:               sub          t0, a1, s11
                  lui          a4, 259785
                  sltu         s1, t1, s7
                  and          s7, a1, s9
                  andi         zero, s5, -1865
                  and          a5, a0, a6
                  blt          a2, s3, 54f
                  blt          sp, s7, 46f
46:               nop
                  bne          a1, ra, 53f
                  add          zero, a7, s2
                  bgeu         s9, s6, 68f
                  bgeu         t4, t3, 56f
                  bltu         a6, t5, 55f
                  slti         a3, a4, -721
53:               sub          s8, s9, a0
54:               auipc        ra, 324078
55:               bltu         tp, a5, 56f
56:               sub          a5, a6, ra
                  lui          t5, 827381
                  sub          s1, a1, s7
                  or           a7, t1, s5
                  srai         a5, a1, 1
                  slt          zero, s6, a0
                  sra          zero, s2, tp
                  srli         s4, t2, 11
                  or           a5, tp, a6
                  addi         a1, s2, -95
                  srai         t4, t1, 27
                  sll          zero, s1, a3
                  sltiu        t0, s10, 1297
                  or           a0, a3, s7
                  sub          gp, a3, t5
                  slti         a6, s3, 11
sub_5_j7:         jal          ra, sub_8 #jump sub_5 -> sub_8
                  slti         gp, t6, 1469
                  bge          a3, s6, 70f
                  srl          s3, s1, sp
68:               slt          t2, a0, a4
                  sltiu        t0, s4, 189
70:               slt          a4, t2, a5
                  srai         a5, s11, 2
                  add          t6, t2, t0
                  srli         a7, a6, 6
                  srai         a1, gp, 21
                  bne          a7, gp, 80f
                  xor          t6, sp, t3
                  bge          zero, t3, 90f
                  slt          s10, t4, a0
                  bne          s6, ra, 96f
80:               bge          s9, s5, 83f
                  bltu         t5, a3, 89f
                  xor          t0, a0, a1
83:               addi         a3, s8, -1652
                  xor          t4, s9, a2
                  slli         s5, t0, 12
                  add          s6, s11, s4
                  bltu         t3, zero, 104f
                  srai         s8, a4, 1
89:               bgeu         s5, a0, 96f
90:               bgeu         t3, gp, 103f
                  blt          s8, a2, 102f
                  and          s8, a1, s8
                  slli         a4, a7, 24
                  bltu         s1, s9, 111f
                  bne          s5, s3, 99f
96:               xori         ra, s9, -1994
                  bne          t3, s6, 101f
                  bgeu         a4, a6, 115f
99:               sltiu        tp, s11, -869
                  blt          t0, t0, 101f
101:              slti         a3, a3, 747
102:              add          s6, s5, a3
103:              slli         s6, t5, 24
104:              or           t5, a6, a4
                  sub          a4, a5, s8
                  and          s2, s7, s3
                  and          a6, a0, gp
                  slli         t5, s5, 23
                  xor          tp, a0, a0
                  or           a5, s3, s8
111:              slti         s8, t0, 1270
                  xori         s9, gp, 1676
                  auipc        s7, 784912
                  nop
115:              blt          a0, a1, 126f
                  slti         zero, s0, 517
                  sltiu        tp, s1, 955
                  beq          sp, a1, 131f
                  sub          s10, gp, a2
                  slt          t2, s4, s2
                  bgeu         s1, t0, 134f
                  and          s9, s5, s0
                  bge          t0, tp, 127f
                  sub          s5, t5, s10
                  auipc        s1, 740208
126:              lui          zero, 262200
127:              and          a5, t4, s10
                  srli         a1, s2, 3
                  sub          a7, t1, a6
                  xori         a7, a2, -990
131:              addi         s9, s4, 1375
                  blt          t2, t4, 143f
                  bltu         s4, s7, 134f
134:              sltu         t5, tp, s3
                  addi         t0, a5, -1616
                  sltu         t4, s6, gp
                  sltiu        t5, t0, -1159
                  bne          t4, t5, 142f
                  bne          a7, a7, 152f
                  slt          a5, s11, a0
                  bltu         a0, a5, 154f
142:              slli         a3, a0, 4
143:              slti         t4, zero, 1924
                  auipc        t5, 453344
                  xori         s3, s7, 826
                  xori         s2, t6, 1064
                  add          zero, a5, t1
                  sub          a1, s10, sp
                  addi         a2, t2, 38
                  beq          s4, zero, 155f
                  srli         s7, s6, 11
152:              auipc        a1, 331563
                  srl          s3, ra, s10
154:              sltiu        a4, s3, 1191
155:              slti         s3, s7, 312
                  addi         s1, a6, 552
                  xori         t5, s2, 1111
                  and          t5, a2, a7
                  sltiu        s9, t5, 835
                  nop
                  and          a5, s5, t5
                  bge          t3, s11, 165f
                  blt          ra, t4, 167f
                  sll          a3, s11, t5
165:              bne          s6, ra, 171f
                  xor          a5, ra, s8
167:              add          s6, t2, s1
                  add          a7, s9, a2
                  bltu         a6, s0, 180f
                  sltu         a5, s4, tp
171:              and          t5, a5, s8
                  bge          ra, sp, 191f
                  lui          s7, 386779
                  slli         t4, tp, 23
                  addi         s9, zero, 297
                  addi         s5, gp, -883
                  slli         s3, t6, 9
                  beq          t2, s4, 184f
                  beq          zero, a0, 196f
180:              slt          t0, zero, a7
                  blt          ra, s6, 189f
                  lui          s8, 872595
                  or           s5, a2, tp
184:              or           t6, t1, s8
                  slt          s2, a5, t2
                  beq          t2, t4, 193f
                  sltu         zero, a6, a1
                  la           a3, sub_6
                  sltu         a0, a6, s10
                  ori          ra, s3, 477
                  add          sp, s9, s3
                  or           s9, t6, a0
                  addi         a3, a3, 40
                  sub          t5, a4, t5
sub_5_j6:         jalr         ra, a3, -39 #jump sub_5 -> sub_6
                  xori         s8, s7, 821
                  bltu         zero, a5, 193f
189:              xori         t0, a6, -1073
                  beq          a0, a3, 209f
191:              addi         a7, zero, 1647
                  bltu         s3, s4, 196f
193:              sll          a7, a5, s3
                  sra          a0, t6, s3
                  sub          s5, t3, ra
196:              add          t6, zero, s9
                  slti         a7, a6, 1316
                  addi         t6, gp, 800
                  sra          t2, s10, s10
                  lui          s8, 461090
                  auipc        a3, 893613
                  or           s7, a3, zero
                  bne          t0, t5, 206f
                  slli         a0, ra, 28
                  srl          s1, tp, s9
206:              ori          s2, s7, 1715
                  sra          s8, s7, t0
                  srai         gp, t6, 25
209:              srai         a0, s2, 6
                  slli         s3, a2, 31
                  add          s6, sp, a7
                  andi         s6, a2, -124
                  nop
                  sltiu        a0, a0, 1069
                  sll          s1, t4, s9
                  sltiu        a7, t5, -779
                  srai         s2, s11, 8
                  slli         a6, s3, 20
                  addi         zero, t5, -1879
                  slli         s2, t5, 6
                  slli         t6, s8, 0
                  slti         a4, a6, -884
                  srli         s4, sp, 5
                  sra          t4, s8, s6
                  xori         a7, s3, 999
                  sll          a4, a4, a1
                  bge          t3, s6, 244f
                  bne          tp, a6, 229f
229:              bne          t1, a5, 241f
                  auipc        s6, 415902
                  or           tp, a7, s1
                  blt          a0, a2, 242f
                  and          s5, t0, a5
                  andi         a0, s9, 1729
                  addi         sp, s9, 1699
                  nop
                  srli         t2, t0, 12
                  or           s3, s10, a1
                  sra          a1, t1, t6
                  slti         ra, a4, 512
241:              sll          s4, zero, a1
242:              bltu         a4, s8, 251f
                  or           ra, s10, t3
244:              slli         a5, s4, 18
                  sra          a4, s1, a0
                  slli         t5, s0, 27
                  slti         s1, zero, -1459
                  slt          t0, a4, a5
                  xori         a5, s11, 702
                  xori         tp, s10, 1372
251:              xor          t0, t4, a3
                  auipc        sp, 116740
                  andi         sp, s10, 673
                  lui          gp, 832115
                  sub          t6, a4, s10
                  sub          a1, t0, gp
                  bge          a6, t1, 270f
                  add          t6, a1, s4
                  auipc        s4, 825808
                  add          s4, a0, s2
                  ori          t4, t2, 1878
                  bgeu         s5, a2, 272f
                  bge          a7, t6, 264f
264:              or           s7, sp, t6
                  andi         a6, a3, 744
                  ori          a2, sp, 624
                  xor          s1, s4, s2
                  addi         t5, s0, 1975
                  nop
270:              ori          s2, sp, -2040
                  bgeu         gp, a7, 272f
272:              sub          s3, t5, s7
                  xori         t4, s1, -40
                  addi         t0, a4, 142
                  sll          a3, s4, s8
                  auipc        sp, 192618
                  beq          s5, a7, 296f
                  bltu         s0, a5, 285f
                  srl          a2, sp, ra
                  lui          t6, 698941
                  xori         s4, a0, 1961
                  srl          t5, t4, t2
                  sll          a3, ra, s4
                  sll          s5, s8, s6
285:              nop
                  srl          a3, s11, a0
                  bgeu         s7, s3, 290f
                  srai         s3, a3, 3
                  srl          t5, t0, s3
290:              sltiu        a7, gp, -1218
                  sll          zero, s1, t6
                  auipc        tp, 741207
                  bge          s1, a4, 298f
                  and          a5, gp, a6
                  sra          s2, s9, a7
296:              nop
                  bne          ra, t3, 306f
298:              slti         s1, t5, 1671
                  sltiu        a6, s10, 167
                  lui          a4, 664950
                  add          sp, a7, s8
                  sub          t6, t3, a4
                  bne          s10, gp, 320f
                  sltu         a6, ra, a7
                  bgeu         t3, t1, 324f
306:              auipc        s4, 1013011
                  add          t4, t1, a7
                  ori          a3, s7, -1632
                  srl          gp, tp, s9
                  ori          s11, a2, -17
                  srli         a3, t5, 15
                  sltiu        s9, s9, -16
                  xor          a4, zero, t0
                  srai         t0, a1, 7
                  add          s11, s1, zero
                  srai         s3, a5, 26
                  slti         t0, zero, 1756
                  addi         t2, a0, 833
                  srli         s9, t1, 3
320:              sra          zero, t6, s0
                  nop
                  slt          s6, s11, a7
                  or           s7, s2, s6
324:              srl          t5, a1, a7
                  bltu         a1, a1, 338f
                  srai         a1, sp, 5
                  slli         s3, s5, 9
                  and          t4, s7, gp
                  sltiu        s6, sp, -1943
                  sll          gp, s11, s4
                  la           sp, region_0+269 #start riscv_load_store_rand_instr_stream_5
                  lhu          t4, 15(sp)
                  sh           t6, -31(sp)
                  slli         s7, t4, 16
                  sub          s6, s8, gp
                  srl          s10, a7, a3
                  lhu          gp, -55(sp)
                  or           s7, s1, a3
                  sub          a5, s11, s3
                  nop
                  ori          a6, a2, -2035
                  slli         gp, t4, 13
                  sll          t4, s1, t5
                  sh           a7, 49(sp)
                  lb           tp, -30(sp)
                  srli         s3, s7, 18
                  lbu          t5, 0(sp)
                  lui          t5, 621992
                  sll          s10, t4, t2
                  slli         s2, a1, 11
                  sltiu        a6, t3, 1452
                  srl          s7, a7, t1
                  srl          a4, t0, ra
                  addi         ra, s0, 1222
                  lb           a2, -58(sp)
                  srai         s1, s0, 4
                  sra          s1, s4, s7
                  lb           s9, -39(sp)
                  or           s3, zero, s4
                  add          s9, a4, s10
                  ori          s9, ra, -1479
                  srl          ra, tp, t5
                  xor          a1, a2, t4
                  or           a4, s1, s2
                  sltu         s5, a2, s3
                  srai         t6, gp, 28
                  lbu          a6, -9(sp)
                  slti         s10, a3, 439
                  lb           s6, 6(sp) #end riscv_load_store_rand_instr_stream_5
                  addi         s7, t0, 712
                  bltu         s2, a1, 335f
                  bgeu         a2, s4, 344f
                  beq          t0, s7, 351f
335:              andi         s7, s8, 1882
                  bge          a3, s10, 349f
                  sll          s2, t5, a5
338:              slli         a1, a4, 9
                  bge          t2, s9, 350f
                  sra          a5, s5, a3
                  bne          a2, t4, 349f
                  add          s8, t1, s0
                  srai         a3, a4, 30
344:              lui          tp, 1039362
                  sltiu        a1, a3, 1474
                  sra          a1, a0, s4
                  addi         s10, a3, 1526
                  blt          s0, t3, 365f
349:              sltu         s6, s1, s8
350:              bne          a6, s6, 362f
351:              nop
                  srl          s3, s4, s4
                  add          s11, zero, s5
                  and          a0, zero, sp
                  blt          a4, s7, 360f
                  sub          s4, s4, sp
                  xor          t4, a0, t3
                  beq          a1, s4, 371f
                  add          s4, s9, s4
360:              bltu         a5, s8, 364f
                  slt          a6, s7, tp
362:              add          t5, s11, a5
                  ori          s4, zero, -733
364:              bltu         a0, ra, 365f
365:              auipc        a1, 944211
                  auipc        tp, 851777
                  sll          sp, a4, s9
                  and          t0, t0, t6
                  or           a3, t0, gp
                  ori          s5, zero, 1361
371:              bgeu         s1, t2, 375f
                  sltiu        ra, zero, 286
                  add          a0, s0, a1
                  bne          zero, a4, 385f
375:              auipc        t4, 910292
                  srli         s10, t6, 8
                  xor          a3, t1, tp
                  slti         ra, a4, -945
                  xor          s3, s4, s11
                  slli         s4, sp, 14
                  lui          s8, 893706
                  sltu         tp, a1, s8
                  auipc        t5, 947708
                  slli         t5, s6, 4
385:              blt          s5, t1, 389f
                  slli         s3, a5, 0
                  ori          t4, t0, -700
                  srl          t2, t6, s0
389:              slli         s9, s1, 26
                  auipc        s2, 516883
                  srli         s10, s6, 21
                  sltiu        s7, zero, -42
                  sltu         a1, a6, s2
                  lui          t2, 340837
                  andi         t0, a7, 1404
                  sra          a6, ra, s1
                  srai         gp, t3, 0
                  beq          s7, a7, 402f
                  sra          s10, sp, t5
                  xor          s2, s1, s11
                  srl          a5, t1, gp
402:              sll          a5, s10, ra
                  slt          s10, t4, s0
                  auipc        t2, 572864
                  slti         s1, s11, 76
                  nop
                  sll          s11, t0, a0
                  sra          gp, s1, sp
                  lui          sp, 217968
                  sll          t4, gp, t3
                  beq          s6, a2, 417f
                  and          t2, t1, a1
                  sltu         s7, s1, t5
                  addi         t0, s11, -1653
                  sltiu        s9, s6, -824
                  add          t2, a0, s1
417:              srli         a1, gp, 5
                  sltu         zero, t5, gp
                  slli         t2, s5, 19
                  auipc        sp, 494431
                  bgeu         s3, s5, 427f
                  beq          sp, s3, 426f
                  xor          s5, s7, gp
                  add          a0, s5, s4
                  sra          sp, a6, s3
426:              slti         a2, s2, -1030
427:              sltiu        a2, ra, -1965
                  sltu         gp, t1, s2
                  or           t2, t4, a3
                  or           a5, zero, s11
                  srl          s5, s4, zero
                  slti         s4, s2, 921
                  slli         zero, s10, 11
                  bgeu         zero, s1, 437f
                  sltu         tp, a2, s0
                  beq          s0, s3, 449f
437:              srl          gp, t0, s6
                  srli         a3, a3, 6
                  beq          t0, a6, 451f
                  addi         a5, s0, 1136
                  sra          a0, a1, t1
                  blt          a4, a7, 453f
                  slli         sp, gp, 20
                  xori         s1, t5, 174
                  srli         s10, t0, 1
                  andi         s8, t2, 14
                  or           a1, t0, a2
                  ori          a3, s3, 1110
449:              bgeu         tp, a5, 466f
                  add          t2, s9, gp
451:              auipc        t0, 416691
                  srl          s1, a6, t6
453:              xor          zero, t0, t6
                  nop
                  add          a5, t4, gp
                  sll          s2, t2, a1
                  sltu         sp, s11, t5
                  xor          s2, s1, t4
                  sltu         t2, s10, t6
                  srai         s7, a0, 26
                  add          t2, s7, s3
                  slli         s2, s4, 9
                  srai         a5, s0, 29
                  blt          tp, s6, 481f
                  srai         a1, a3, 22
466:              slt          a0, s0, a6
                  sub          s8, t2, t4
                  lui          a6, 277893
                  slli         a5, gp, 22
                  or           t4, sp, t2
                  andi         tp, t3, 544
                  bge          a6, t3, 476f
                  sltu         t5, s4, ra
                  andi         a3, s5, -546
                  srli         a3, a4, 17
476:              bge          gp, s2, 489f
                  bge          s10, gp, 488f
                  and          gp, a2, a5
                  blt          t0, a4, 498f
                  bgeu         t3, s8, 489f
481:              srli         a0, t0, 15
                  sll          a1, gp, sp
                  or           t5, t0, s8
                  auipc        s7, 382568
                  xor          a1, s8, a3
                  bgeu         s8, s5, 491f
                  bltu         s2, s9, 504f
488:              beq          gp, t4, 489f
489:              blt          s2, s6, 492f
                  blt          s8, t5, 491f
491:              bgeu         a1, sp, 497f
492:              sub          a3, s10, zero
                  lui          t6, 941060
                  sll          gp, gp, a3
                  beq          s3, a7, 500f
                  andi         a3, s11, 1766
497:              srli         s6, s1, 23
498:              auipc        a6, 793973
                  slt          a4, sp, t1
500:              lui          gp, 547440
                  bgeu         s4, s9, 508f
                  andi         t5, s4, 777
                  add          s5, s7, t6
504:              sub          a5, s4, a3
                  auipc        t5, 924499
                  sub          tp, t6, sp
                  srl          a1, t4, s7
508:              nop
                  xor          s10, a2, s2
                  xori         t6, t3, -383
                  xor          a7, s5, t3
                  sltu         a5, s3, s3
                  and          t5, s10, a4
                  xori         t5, s11, 271
                  auipc        tp, 1009003
                  bgeu         s10, ra, 529f
                  blt          sp, t3, 527f
                  srl          s11, t0, s2
                  xor          a2, a7, t0
                  beq          gp, t5, 539f
                  xor          t2, a1, s0
                  sub          a6, a1, s5
                  bge          tp, a5, 529f
                  slli         a2, s9, 1
                  add          s6, s10, a0
                  and          s11, s3, s0
527:              auipc        s5, 617860
                  add          s3, t4, s6
529:              sra          a4, s11, s5
                  sra          t4, t3, a4
                  slli         s6, t1, 9
                  xori         t6, s9, 739
                  sltiu        s9, sp, 861
                  add          tp, t0, ra
                  sltu         s1, s5, a2
                  add          t5, zero, a5
                  bne          s6, t2, 541f
                  srl          t0, t5, a0
539:              bltu         a3, a3, 550f
                  sub          t5, s8, s4
541:              xor          s8, s4, gp
                  beq          a4, s3, 546f
                  slt          a5, s7, s1
                  or           t0, sp, a4
                  srai         s8, s8, 4
546:              xor          s2, t2, s6
                  ori          a2, t6, -805
                  ori          gp, a3, 1100
                  bge          s4, tp, 550f
550:              sub          s8, a5, sp
                  or           t2, ra, t5
                  beq          s1, s7, 565f
                  bge          s9, ra, 561f
                  addi         s4, t4, 1298
                  sll          s3, s10, t3
                  nop
                  sltiu        zero, s4, 1237
                  bgeu         ra, ra, 577f
                  bge          zero, a7, 572f
                  bgeu         s5, s8, 573f
561:              xori         s3, s9, 366
                  bltu         s1, s7, 566f
                  and          t6, tp, a4
                  blt          s8, s4, 565f
565:              addi         t2, sp, 1663
566:              lui          s9, 427393
                  blt          s4, s0, 572f
                  bge          tp, a2, 571f
                  addi         a5, t3, 621
                  andi         s9, a5, -588
571:              bltu         gp, s3, 577f
572:              slt          s9, a7, a2
573:              sltu         gp, t6, s2
                  slli         a2, gp, 0
                  srl          t0, sp, t2
                  srli         zero, a1, 7
577:              blt          s4, tp, 580f
                  sltu         sp, a5, a7
                  bgeu         s0, a7, 585f
580:              addi         s10, t4, -1493
                  bltu         gp, s7, 588f
                  lui          s3, 469476
                  bgeu         sp, s1, 594f
                  slli         a2, a1, 19
585:              bltu         s6, t4, 604f
                  nop
                  bne          s10, t6, 595f
588:              auipc        a7, 818339
                  bgeu         s9, a4, 602f
                  lui          a3, 427846
                  add          t2, t4, a1
                  or           s1, t6, sp
                  bge          a1, t0, 594f
594:              auipc        t4, 598553
595:              andi         a6, s7, -1101
                  lui          a5, 943563
                  sub          t2, s10, s1
                  or           s8, a4, a2
                  bge          t3, ra, 616f
                  srl          gp, s10, s11
                  sub          a7, t6, tp
602:              add          s10, a0, gp
                  bne          a3, s2, 613f
604:              addi         s6, ra, -332
                  blt          s1, ra, 609f
                  and          t4, s2, t6
                  sltu         a1, s0, s8
                  blt          tp, s1, 621f
609:              sltiu        sp, s9, -101
                  beq          a5, s7, 621f
                  auipc        a3, 715578
                  sra          ra, a1, t1
613:              auipc        zero, 78633
                  sll          s3, a0, t0
                  sltu         s5, s1, t0
616:              bne          s4, s3, 633f
                  andi         tp, a5, -1509
                  sltiu        a1, s1, 1511
                  nop
                  slt          sp, t0, a2
621:              auipc        s5, 178864
                  sltu         s3, a2, s8
                  srli         sp, s6, 8
                  bge          s5, s10, 641f
                  bltu         a6, t5, 629f
                  sra          a3, t5, s11
                  auipc        t6, 243594
                  addi         a7, a3, 1850
629:              bne          s6, tp, 633f
                  beq          gp, a5, 635f
                  slt          t4, a4, a6
                  srai         s6, a2, 12
633:              beq          s7, t2, 644f
                  bgeu         s2, a2, 643f
635:              sltu         t2, a3, s9
                  bne          gp, tp, 637f
637:              or           s5, s1, a2
                  sltu         s6, s3, t5
                  sltu         s9, a3, s3
                  slli         s7, s9, 24
641:              slti         a4, gp, 1673
                  sra          s10, s0, sp
643:              srli         a2, s8, 21
644:              and          s9, s2, s2
                  sra          s8, t2, t6
                  sltiu        t6, s4, 510
                  bge          s3, s10, 659f
                  bne          ra, a5, 656f
                  add          a5, sp, t4
                  sub          s5, gp, s6
                  auipc        s7, 179767
                  sltu         ra, s2, a2
                  bltu         t6, a1, 656f
                  bge          a1, sp, 663f
                  andi         s8, t4, 1879
656:              blt          s0, a3, 675f
                  bgeu         s8, s10, 674f
                  nop
659:              andi         t2, a3, -68
                  xori         gp, a7, 1496
                  nop
                  blt          a6, t6, 672f
663:              and          tp, s7, a5
                  beq          a1, t6, 668f
                  lui          s11, 519568
                  srl          zero, s5, zero
                  bge          s9, a5, 679f
668:              bge          a3, sp, 669f
669:              slli         s2, s8, 2
                  slti         zero, s3, 842
                  xor          s1, s3, s7
672:              sltu         s9, s7, a0
                  srli         tp, a0, 22
674:              sltu         s3, s4, a7
675:              sltu         zero, t2, a7
                  auipc        a7, 257121
                  sll          s4, s5, a2
                  srli         s4, tp, 0
679:              xori         ra, a1, 1051
                  srl          a5, t0, gp
                  slt          s6, gp, a7
                  andi         t5, s3, -706
                  srli         t5, s10, 3
                  srli         a2, s3, 21
                  ori          s7, gp, 536
                  srli         t0, a2, 2
                  or           a2, s0, s7
                  bne          gp, t0, 695f
                  slt          gp, a3, a5
                  beq          t0, s8, 707f
                  and          t6, t4, a4
                  srli         a0, t2, 8
                  sra          s3, sp, ra
                  bne          a7, s5, 695f
695:              bge          a7, a2, 712f
                  blt          ra, t6, 709f
                  srai         tp, gp, 25
                  srl          t2, a6, s10
                  or           sp, s3, a0
                  slli         a1, s3, 8
                  sltiu        s8, a1, 452
                  lui          a6, 238363
                  sub          s9, s7, a4
                  nop
                  sltu         zero, s10, s7
                  beq          s11, zero, 711f
707:              slti         t2, s0, -264
                  srl          a2, s9, t2
709:              sra          a4, s8, a7
                  sltiu        s7, a1, 432
711:              sltu         s6, zero, s2
712:              addi         t6, s2, -741
                  srai         a7, s5, 17
                  sra          gp, s10, a4
                  srli         ra, a5, 1
                  nop
                  nop
                  bltu         s4, zero, 729f
                  srl          a1, gp, s7
                  srl          a4, a5, t0
                  blt          a1, s11, 722f
722:              sltiu        a7, s10, -663
                  bgeu         a4, s10, 734f
                  slt          gp, a0, a6
                  bge          t0, s8, 729f
                  addi         s6, t0, 778
                  sub          ra, a0, t4
                  add          gp, s3, s2
729:              andi         s5, s1, -1734
                  xor          s7, t3, s3
                  xori         s7, a2, 1412
                  slt          a7, s6, s2
                  bltu         a7, gp, 739f
734:              slli         gp, t0, 24
                  sra          t6, t4, a6
                  ori          s6, gp, -1210
                  sll          s1, t1, s8
                  sub          s8, t2, t2
739:              nop
                  sra          s10, s10, t6
                  srl          s9, s5, a2
                  slti         t0, t0, -1408
                  bgeu         a3, s7, 762f
                  sltu         a0, a3, t3
                  sltu         a3, a3, t2
                  sll          s11, tp, a5
                  blt          t0, ra, 758f
                  lui          a3, 660645
                  bgeu         sp, a3, 754f
                  bge          a3, s6, 763f
                  sub          s5, s10, s8
                  slti         a2, s11, -982
                  slti         t2, a7, -135
754:              nop
                  andi         s9, t4, 309
                  xor          a7, a6, t1
                  sltiu        s9, s1, 1048
758:              bltu         tp, s10, 764f
                  slt          s11, s10, s10
                  srl          t0, ra, a5
                  beq          a6, s0, 774f
762:              add          t0, sp, t5
763:              slt          a3, a1, a5
764:              bne          a7, tp, 768f
                  la           sp, region_0+1088 #start riscv_load_store_rand_instr_stream_2
                  lb           s3, 22(sp)
                  nop
                  nop
                  ori          t5, t0, -1076
                  lh           a1, -18(sp)
                  slli         zero, t1, 26
                  srl          s9, a5, a1
                  sb           a4, -652(sp)
                  lbu          s10, 815(sp)
                  sub          s9, ra, a7
                  ori          t5, gp, 1189
                  auipc        s3, 587790
                  slt          gp, s3, t5
                  ori          s10, s11, 978
                  sb           s9, 265(sp)
                  sh           s0, -72(sp)
                  or           gp, s2, t1
                  xori         t5, tp, 807
                  lui          s10, 546953
                  auipc        s10, 556265
                  sltu         t5, a7, s2
                  or           zero, s9, s6
                  nop
                  ori          s5, t0, -14
                  sh           sp, -714(sp)
                  auipc        s5, 982895
                  xor          s2, t0, s0
                  lbu          a0, 212(sp)
                  lui          s11, 54273
                  slt          s3, t0, t2
                  addi         a2, s1, -1623
                  lb           gp, 485(sp)
                  nop
                  addi         t2, s0, 1701
                  lhu          t5, 406(sp)
                  addi         a4, s2, 584
                  lbu          s2, 406(sp) #end riscv_load_store_rand_instr_stream_2
                  slt          tp, t6, s10
                  ori          s8, t2, -1419
                  bge          s10, s5, 771f
768:              beq          s10, t5, 771f
                  bltu         s9, t0, 782f
                  bgeu         s10, gp, 774f
771:              add          tp, s2, t2
                  sltiu        s6, s5, -1162
                  lui          s8, 626902
774:              nop
                  bltu         sp, s9, 780f
                  auipc        ra, 667002
                  srl          t6, t3, gp
                  addi         ra, t5, 2
                  srai         s2, s4, 4
780:              sub          s9, t0, a0
                  bne          tp, s9, 785f
782:              bne          a1, sp, 783f
783:              sra          s11, a0, s7
                  sra          a1, zero, s1
785:              bne          a5, s9, 788f
                  srl          s11, tp, a7
                  addi         t2, a4, 1026
788:              bltu         s3, zero, 794f
                  nop
                  bge          t2, s11, 801f
                  sra          t4, s8, a3
                  ori          s9, s3, -880
                  bgeu         a5, s11, 804f
794:              lui          a7, 643241
                  srai         tp, s11, 2
                  lui          s5, 447173
                  bge          a0, s2, 803f
                  srli         t6, a7, 9
                  slti         sp, t6, -294
                  addi         zero, t1, -2003
801:              beq          s2, a5, 802f
802:              nop
803:              bltu         s6, a7, 820f
804:              ori          s11, ra, 2005
                  andi         a2, a5, 1505
                  srl          a5, a4, s1
                  srai         s3, s6, 4
                  lui          a6, 80929
                  bgeu         a3, s4, 820f
                  nop
                  bltu         s6, a4, 815f
                  slt          tp, a4, s10
                  sll          t4, t6, gp
                  srai         s9, s9, 28
815:              ori          sp, a2, 1713
                  sra          s10, t0, t3
                  bltu         a0, s3, 824f
                  slt          s4, s4, ra
                  lui          t4, 258449
820:              slt          a7, s0, t6
                  srl          a0, s3, a1
                  nop
                  bge          s8, t0, 842f
824:              sltu         t2, s6, s7
                  add          a2, a4, a2
                  andi         s1, s11, -190
                  srli         a2, a5, 21
                  auipc        s4, 880236
                  nop
                  bge          t5, s0, 833f
                  and          zero, a1, gp
                  bne          a1, a4, 837f
833:              sub          a5, s9, ra
                  bne          s8, a7, 843f
                  sltu         a6, s6, a0
                  or           s6, t4, t0
837:              lui          gp, 372848
                  or           s9, a4, s6
                  andi         t6, t4, -1357
                  slt          s10, a7, tp
                  lui          a1, 787584
842:              addi         t2, a6, 1436
843:              slli         a3, s7, 25
                  blt          s10, a2, 861f
                  nop
                  slti         a1, s2, -1956
                  slli         s9, t1, 6
                  or           t2, s8, a4
                  blt          gp, t3, 859f
                  ori          a7, s9, 1788
                  bgeu         t0, s10, 864f
                  blt          s10, a4, 860f
                  bne          s0, a5, 865f
                  bgeu         s1, a6, 867f
                  xori         a0, t5, -1732
                  bne          s9, s8, 860f
                  sll          s8, gp, a1
                  sltu         zero, zero, tp
859:              slti         s2, s9, -1303
860:              slli         a4, ra, 4
861:              and          s6, a7, s3
                  blt          t2, t4, 879f
                  slli         a0, t3, 2
864:              ori          a5, s2, 1886
865:              bge          a6, a1, 878f
                  beq          a1, s0, 879f
867:              beq          s9, a1, 868f
868:              bge          a5, a3, 887f
                  sltiu        tp, a5, -1300
                  sltiu        s10, s9, 1786
                  bne          a2, s11, 890f
                  lui          s4, 102013
                  andi         a0, s11, 196
                  xor          s10, a0, s7
                  slti         s7, t0, 328
                  srl          s7, s8, a5
                  bgeu         s6, a2, 880f
878:              srl          zero, s8, a0
879:              slli         t5, t0, 18
880:              sra          a6, s10, s9
                  slt          s2, s9, t0
                  sltiu        a1, t0, 201
                  sltiu        s9, s1, -61
                  bge          s10, zero, 891f
                  blt          s2, s10, 898f
                  add          a5, t3, a3
887:              bltu         s4, zero, 904f
                  bge          t3, t2, 899f
                  xori         s5, gp, -1303
890:              xor          s6, zero, s8
891:              srai         s7, s7, 0
                  sll          s9, s0, s7
                  sltiu        a2, s10, 1653
                  sltiu        s2, s10, 387
                  nop
                  bge          a1, a4, 909f
                  andi         s4, s5, 1442
898:              srl          s9, s10, a7
899:              auipc        s2, 361706
                  or           t4, s0, s6
                  srai         t0, a6, 8
                  srl          ra, s1, ra
                  slli         tp, s7, 16
904:              andi         a2, s9, 1277
                  nop
                  lui          s9, 239019
                  beq          ra, ra, 908f
908:              blt          a3, a3, 914f
909:              bge          zero, s8, 922f
                  sltu         a7, s11, s1
                  slti         s8, a6, 1825
                  sll          a4, s11, t2
                  blt          t2, zero, 918f
914:              bne          t5, a3, 923f
                  srai         s6, t1, 15
                  xor          a1, s8, t2
                  blt          s9, a3, 921f
918:              slti         s10, zero, 947
                  srl          s8, tp, s3
                  slti         s8, t6, -1674
921:              bgeu         a0, sp, 922f
922:              bgeu         t0, a1, 935f
923:              sltu         t0, t6, a5
                  srli         sp, s8, 30
                  nop
                  sra          s1, s6, a2
                  bltu         sp, s3, 933f
                  addi         a1, t1, 1448
                  add          s6, t6, t5
                  sra          tp, gp, a0
                  bgeu         a4, s7, 935f
                  or           s8, tp, a5
933:              sub          ra, t3, a5
                  blt          t0, s6, 937f
935:              xor          a0, t1, s8
                  sra          s2, t3, s3
937:              addi         t2, a7, 2031
                  or           s4, t6, s9
                  and          s4, a6, t4
                  lui          s6, 971843
                  sltiu        t0, s5, 907
                  srl          t4, tp, sp
                  slti         s7, s0, -1963
                  lui          t0, 913502
                  ori          s4, s4, -328
                  srl          tp, tp, t0
                  ori          s2, sp, -447
                  bltu         s5, t3, 958f
                  srli         s6, tp, 25
                  srl          s9, t1, a1
                  add          s6, t0, t6
                  ori          gp, a6, 970
                  sll          t2, s3, s0
                  slli         a7, t6, 9
                  slt          gp, a2, sp
                  beq          s0, s8, 958f
                  ori          tp, ra, 711
958:              slt          a2, s5, a5
                  slti         s1, a4, 1602
                  lw           ra, 4(t3)
                  add          a3, a1, t1
                  auipc        s3, 117675
                  auipc        s10, 856952
                  addi         t3, t3, 52
                  xori         t0, tp, -450
                  add          s4, a3, s6
                  xor          s5, a7, s11
                  slt          s5, s4, s6
                  slli         s3, s2, 11
1280:             addi x9, x1, 1
1280:             jalr x9, x9, 0
sub_6:            blt          s11, t2, sub_6_stack_p
                  srai         t5, s10, 0
                  sltiu        tp, a0, 1253
sub_6_stack_p:    addi         t3, t3, -12
                  andi         t2, t2, 1868
                  sw           ra, 4(t3)
                  ori          t0, s0, 1749
                  nop
                  sra          t2, t0, s5
                  sltiu        s4, s5, 1431
                  slt          t4, s7, s9
                  la           t2, sub_9
                  xori         sp, a0, 965
                  xori         t6, s1, -1793
                  addi         s8, s4, 816
                  addi         t2, t2, -207
                  bge          zero, t0, sub_6_j9 #branch to jump instr
                  ori          a5, a6, 626
sub_6_j9:         jalr         ra, t2, 208 #jump sub_6 -> sub_9
                  lui          a7, 517856
                  bge          s5, s4, 7f
                  beq          t5, t6, 7f
                  add          sp, a7, s9
                  blt          t1, t5, 7f
                  srli         tp, s10, 24
                  slli         tp, s10, 8
7:                xor          s4, a5, s7
                  lw           ra, 4(t3)
                  srl          a1, t5, ra
                  sub          a2, sp, s0
                  addi         t3, t3, 12
                  sub          sp, t1, t4
                  sltu         s1, s8, t6
33:               addi x17, x1, 1
33:               jalr x17, x17, 0
sub_7:            sltu         sp, t6, s2
                  slti         s6, t1, -1407
                  andi         s1, s8, -1208
                  srai         gp, t6, 2
                  lui          s3, 577658
                  or           s11, a2, a1
                  srl          t6, zero, t6
                  sra          s9, s0, t1
                  srai         t6, ra, 4
                  addi         t3, t3, -44
                  sw           ra, 4(t3)
                  xori         s1, t1, 1899
                  sltiu        a3, t3, -272
                  add          a1, s4, t6
                  nop
                  ori          t5, t3, 529
                  bge          a7, t5, 11f
                  add          s2, a2, sp
                  sra          t0, a2, s3
                  srli         s8, zero, 0
                  blt          s3, a5, 11f
                  andi         ra, s8, -1165
                  bne          ra, t0, 11f
11:               and          t2, t6, s11
                  sltu         s6, a6, s6
                  lw           ra, 4(t3)
                  srai         a7, tp, 17
                  addi         t3, t3, 44
                  xori         s7, a0, 835
                  srli         a6, s1, 10
                  sra          tp, t1, a6
31:               addi x25, x1, 0
31:               jalr x25, x25, 0
sub_1:            sltu         t2, sp, a6
                  and          s11, s10, a1
                  bltu         a7, zero, sub_1_stack_p
                  lui          t4, 279785
                  sltiu        s4, tp, 292
sub_1_stack_p:    addi         t3, t3, -24
                  nop
                  srli         t5, t4, 31
                  sw           ra, 4(t3)
                  sra          s11, zero, t6
                  srl          s1, sp, s2
                  lui          s9, 272813
                  or           s5, s6, a0
                  addi         a4, t0, -862
                  srli         s2, t5, 0
                  srli         tp, s9, 5
                  la           a3, sub_3
                  srai         t5, s10, 25
                  xor          a2, t0, a6
                  slli         s5, s3, 1
                  addi         a3, a3, -300
                  and          t4, s5, sp
                  and          s3, s10, s0
                  lui          s6, 846343
                  sll          a5, a2, t5
sub_1_j3:         jalr         ra, a3, 301 #jump sub_1 -> sub_3
                  srl          s3, s7, gp
                  blt          a2, s3, 7f
                  slt          a2, t0, a6
                  add          a5, a3, s11
                  slti         s2, s11, 1446
                  and          t2, t2, s5
                  xor          s11, t2, t0
7:                or           a0, sp, sp
                  nop
                  xori         a0, t3, 1675
                  lw           ra, 4(t3)
                  sltiu        s4, s6, -1912
                  srl          t4, t2, s6
                  sltiu        a1, t4, -257
                  sra          a0, a3, s1
                  xor          t5, gp, s11
                  addi         t3, t3, 24
                  xori         s10, t0, -1871
                  ori          a6, a7, 4
45:               addi x4, x1, 1
45:               jalr x4, x4, 0
sub_3:            add          s10, s2, s6
                  sltiu        a2, a7, 1718
                  bgeu         a7, t3, sub_3_stack_p
sub_3_stack_p:    addi         t3, t3, -64
                  sw           ra, 4(t3)
                  xor          sp, a4, ra
                  xor          a4, s9, gp
                  slti         a2, s9, 931
                  la           t6, sub_4
                  srli         a6, tp, 15
                  sub          t2, s10, s6
                  slli         s10, s8, 17
                  auipc        s6, 42525
                  addi         t6, t6, -407
                  nop
                  addi         s1, s7, -117
                  nop
                  xor          t2, s9, s11
                  andi         a0, s11, -1157
sub_3_j4:         jalr         ra, t6, 407 #jump sub_3 -> sub_4
                  sub          s5, a6, sp
                  la           a3, sub_5
                  srai         a2, a3, 25
                  addi         a3, a3, 744
                  or           s1, s7, s4
                  and          a0, ra, s1
                  srl          s3, t4, s7
                  andi         s11, s4, 1535
                  and          sp, t0, t1
sub_3_j5:         jalr         ra, a3, -743 #jump sub_3 -> sub_5
                  ori          s3, s10, -60
                  or           s5, s0, t0
                  and          a2, sp, s11
                  add          s6, a1, tp
                  xori         a4, t0, -695
                  blt          s4, a3, 25f
                  sll          s3, s7, a7
                  bltu         s2, s10, 12f
                  xor          tp, t0, t0
                  bge          s3, a3, 23f
                  sra          a4, tp, t5
                  auipc        tp, 190145
12:               bge          a1, t5, 23f
                  xori         a2, a0, 1595
                  andi         s6, ra, 148
                  auipc        a4, 205130
                  or           s2, sp, s5
                  sub          s1, t4, s1
                  sra          s7, a7, s0
                  lui          s11, 338693
                  bge          t0, t5, 34f
                  slli         a7, a2, 20
                  srai         a6, t4, 24
23:               blt          gp, zero, 43f
                  lui          zero, 501389
25:               srai         a4, a0, 8
                  xori         zero, sp, -1541
                  sll          a2, s9, a4
                  bge          t3, t5, 41f
                  and          ra, s4, t5
                  addi         s7, a3, 787
                  slli         t5, s10, 20
                  sltiu        gp, s11, 663
                  blt          t4, tp, 44f
34:               srli         a1, t6, 10
                  and          t5, t1, zero
                  srli         s2, s10, 3
                  and          a6, s9, s11
                  or           s3, s4, s8
                  srl          t6, a1, s11
                  ori          sp, a2, -638
41:               xori         ra, s2, -1020
                  beq          s11, s7, 52f
43:               bgeu         s8, t2, 63f
44:               slt          a2, a1, t6
                  andi         s2, a2, 1354
                  slt          t5, ra, s4
                  beq          t2, t5, 66f
                  and          a7, s4, zero
                  nop
                  bltu         s0, t3, 57f
                  auipc        s2, 914873
52:               bne          a2, s7, 69f
                  andi         s3, gp, -951
                  bltu         t0, a5, 74f
                  sub          t0, s6, a3
                  lui          a2, 96080
57:               slt          t5, a6, gp
                  lui          gp, 922730
                  slti         s1, a6, 641
                  andi         s6, ra, 74
                  xori         s11, a5, -1152
                  srai         t5, tp, 0
63:               and          s8, a2, s4
                  srai         t5, s0, 7
                  lui          s8, 429305
66:               sra          a1, t1, t5
                  srli         s3, t3, 16
                  slli         s10, s1, 10
69:               or           t0, gp, s5
                  sll          s7, t4, tp
                  lui          sp, 80667
                  bne          t0, ra, 77f
                  sra          t2, zero, a7
74:               sll          s7, s7, a2
                  or           s10, s2, tp
                  auipc        gp, 413409
77:               srl          t2, a2, t1
                  addi         gp, s0, 888
                  lui          s8, 860012
                  xor          t0, s7, s1
                  slt          tp, zero, s4
                  ori          t5, a4, 713
                  slt          a5, s7, s8
                  add          s2, a5, s9
                  sll          tp, s5, t1
                  slt          a6, t2, t5
                  bltu         a2, a1, 93f
                  bne          s11, ra, 96f
                  auipc        t6, 11960
                  slt          a6, t0, s7
                  slt          a3, a1, s10
                  andi         s4, t0, 1298
93:               bltu         s9, s3, 110f
                  or           zero, tp, a1
                  bge          s2, t6, 110f
96:               sll          a1, s4, s4
                  xor          a3, tp, gp
                  or           t6, t6, t4
                  add          s6, ra, s7
                  or           tp, a0, tp
                  bge          gp, a1, 106f
                  lui          a0, 108615
                  lui          zero, 519748
                  lui          s10, 647252
                  ori          a2, s2, 1168
106:              sub          s11, s6, tp
                  sltiu        s6, t3, 20
                  addi         a2, gp, 170
                  add          s6, t1, t1
110:              srli         t6, sp, 21
                  nop
                  add          t6, ra, tp
                  slti         t4, t2, 1554
                  lui          a1, 173879
                  sra          t2, s0, a4
                  ori          a0, t1, 243
                  lw           ra, 4(t3)
                  sltiu        s11, s4, 614
                  sub          t0, s3, a2
                  slli         s1, a6, 3
                  ori          t6, a5, 1185
                  addi         t3, t3, 64
                  and          s2, a0, s0
                  srl          a5, t3, s6
155:              addi x27, x1, 0
155:              jalr x27, x27, 0
sub_10:           add          zero, t3, zero
                  slt          a0, s8, a1
                  andi         a6, s10, -128
                  sll          zero, a0, a4
                  addi         t3, t3, -28
                  sw           ra, 4(t3)
                  slti         gp, t5, -273
                  sra          s11, a3, a4
                  lui          s11, 1003628
                  andi         ra, a1, 671
                  ori          a6, tp, 1688
                  ori          s4, t4, 1992
                  sll          a6, s7, a6
                  sll          s1, t4, t2
                  srai         a5, sp, 4
                  srli         a5, t5, 27
                  beq          a0, s6, 12f
                  sltiu        s9, a0, -915
                  xor          s8, t2, t1
                  lui          s9, 860134
                  auipc        gp, 942329
12:               slt          s8, a7, tp
                  add          s9, a0, t1
                  srli         a5, s3, 19
                  lw           ra, 4(t3)
                  sra          t6, a5, a5
                  srai         a2, s0, 3
                  slti         t5, tp, -1003
                  nop
                  addi         t3, t3, 28
                  sltu         t6, t5, s9
31:               addi x31, x1, 0
31:               jalr x31, x31, 0
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
                  add x8, x28, zero
                  csrr x17, 0x300 # MSTATUS
                  csrr x17, 0x342 # MCAUSE
                  srli x17, x17, 31
                  bne x17, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x17, 0x341 # MEPC
                  csrr x17, 0x342 # MCAUSE
                  li x26, 0x3 # BREAKPOINT
                  beq x17, x26, ebreak_handler
                  li x26, 0x8 # ECALL_UMODE
                  beq x17, x26, ecall_handler
                  li x26, 0x9 # ECALL_SMODE
                  beq x17, x26, ecall_handler
                  li x26, 0xb # ECALL_MMODE
                  beq x17, x26, ecall_handler
                  li x26, 0x1
                  beq x17, x26, instr_fault_handler
                  li x26, 0x5
                  beq x17, x26, load_fault_handler
                  li x26, 0x7
                  beq x17, x26, store_fault_handler
                  li x26, 0xc
                  beq x17, x26, pt_fault_handler
                  li x26, 0xd
                  beq x17, x26, pt_fault_handler
                  li x26, 0xf
                  beq x17, x26, pt_fault_handler
                  li x26, 0x2 # ILLEGAL_INSTRUCTION
                  beq x17, x26, illegal_instr_handler
                  csrr x26, 0x343 # MTVAL
                  1: la x6, test_done
                  jalr x1, x6, 0

ecall_handler:    
                  la x17, _start
                  sw x0, 0(x17)
                  sw x1, 4(x17)
                  sw x2, 8(x17)
                  sw x3, 12(x17)
                  sw x4, 16(x17)
                  sw x5, 20(x17)
                  sw x6, 24(x17)
                  sw x7, 28(x17)
                  sw x8, 32(x17)
                  sw x9, 36(x17)
                  sw x10, 40(x17)
                  sw x11, 44(x17)
                  sw x12, 48(x17)
                  sw x13, 52(x17)
                  sw x14, 56(x17)
                  sw x15, 60(x17)
                  sw x16, 64(x17)
                  sw x17, 68(x17)
                  sw x18, 72(x17)
                  sw x19, 76(x17)
                  sw x20, 80(x17)
                  sw x21, 84(x17)
                  sw x22, 88(x17)
                  sw x23, 92(x17)
                  sw x24, 96(x17)
                  sw x25, 100(x17)
                  sw x26, 104(x17)
                  sw x27, 108(x17)
                  sw x28, 112(x17)
                  sw x29, 116(x17)
                  sw x30, 120(x17)
                  sw x31, 124(x17)
                  la x6, write_tohost
                  jalr x0, x6, 0

instr_fault_handler:
                  add x28, x8, zero
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
                  add x28, x8, zero
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
                  add x28, x8, zero
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
                  csrr  x17, 0x341
                  addi  x17, x17, 4
                  csrw  0x341, x17
                  add x28, x8, zero
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
                  csrr  x17, 0x341
                  addi  x17, x17, 4
                  csrw  0x341, x17
                  add x28, x8, zero
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
                  csrr  x17, 0x300 # MSTATUS;
                  csrr  x17, 0x304 # MIE;
                  csrr  x17, 0x344 # MIP;
                  csrrc x17, 0x344, x17 # MIP;
                  add x28, x8, zero
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
