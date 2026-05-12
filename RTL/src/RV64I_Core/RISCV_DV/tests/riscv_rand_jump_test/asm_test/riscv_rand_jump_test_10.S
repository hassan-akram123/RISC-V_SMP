.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x4, h0_start
jalr x0, x4, 0
h0_start:
                  li x23, 0x40000100
                  csrw 0x301, x23
kernel_sp:        
                  la x5, kernel_stack_end

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
                  li x0, 0x0
                  li x1, 0x80000000
                  li x2, 0x80000000
                  li x3, 0xde5615a0
                  li x4, 0x80000000
                  li x6, 0xf0dcbc74
                  li x7, 0x80000000
                  li x8, 0x9
                  li x9, 0x0
                  li x10, 0xfbf1094e
                  li x11, 0x77cf2d5e
                  li x12, 0x0
                  li x13, 0x80000000
                  li x14, 0xfa7f2ecd
                  li x15, 0xfa2c2ba8
                  li x16, 0x23288c03
                  li x17, 0xdf55f66b
                  li x18, 0xf51f15cf
                  li x19, 0xf69b3752
                  li x20, 0x1
                  li x21, 0x80000000
                  li x22, 0x5
                  li x23, 0x0
                  li x24, 0x80000000
                  li x25, 0x9
                  li x26, 0x49231430
                  li x28, 0x11347f26
                  li x29, 0x80000000
                  li x30, 0x80000000
                  li x31, 0x80000000
                  la x27, user_stack_end
main:             la           t1, region_0+996 #start riscv_load_store_rand_instr_stream_10
                  sw           a2, -4(t1)
                  sb           s10, 1(t1)
                  sll          s3, s10, s4
                  xori         s1, a5, -761
                  lb           gp, 5(t1)
                  srli         t4, s1, 19
                  sltiu        s6, s10, -2024
                  sh           zero, -16(t1)
                  lbu          s7, -13(t1)
                  srl          s9, t0, a2
                  xori         a4, a6, -1907
                  sb           s0, 3(t1)
                  sb           t6, -11(t1)
                  ori          a5, a6, 1305
                  lbu          t5, -9(t1)
                  sh           t6, 4(t1)
                  xori         sp, a5, 726
                  srl          s3, a4, s5
                  sltu         a5, t3, t4
                  lhu          t2, -10(t1)
                  lh           a7, 12(t1)
                  lb           a5, 10(t1)
                  slt          s7, a4, s1
                  lbu          a7, -4(t1)
                  sra          gp, s0, s5
                  sh           s7, 16(t1)
                  lbu          a6, -7(t1)
                  sw           s4, 16(t1)
                  sltu         t6, s8, t4
                  nop
                  lbu          s0, -4(t1) #end riscv_load_store_rand_instr_stream_10
                  la           sp, region_1+1094 #start riscv_load_store_rand_instr_stream_15
                  auipc        a7, 1017060
                  sll          a3, a7, sp
                  sh           s0, -134(sp)
                  lui          a6, 322034
                  lb           t3, -169(sp)
                  auipc        t5, 207973
                  sh           zero, 112(sp)
                  lw           a6, -166(sp)
                  lbu          s4, -173(sp)
                  nop
                  slt          t1, tp, s2
                  sb           a2, 170(sp)
                  sh           s9, 168(sp)
                  sb           t6, -19(sp)
                  ori          s8, tp, 1321
                  add          a7, a3, a1
                  lhu          s4, -96(sp)
                  srli         a4, s1, 25
                  srli         s2, tp, 8
                  add          s10, s0, t2
                  lhu          s9, -182(sp)
                  lb           s9, 141(sp)
                  sb           s11, -107(sp)
                  sb           t6, -50(sp)
                  slti         s0, s2, -1175
                  lw           t4, 218(sp)
                  lb           s8, -16(sp)
                  sh           t2, 142(sp)
                  nop
                  lb           s0, 205(sp)
                  auipc        s8, 145271
                  lhu          s9, 184(sp)
                  sb           s4, -109(sp)
                  andi         s9, ra, 1751
                  lbu          a5, -53(sp)
                  lb           a2, 43(sp)
                  sra          a1, s9, s8
                  slti         s9, a0, -348
                  sb           a5, -177(sp)
                  lw           ra, -190(sp)
                  sh           s7, 96(sp) #end riscv_load_store_rand_instr_stream_15
                  la           a2, region_1+700 #start riscv_load_store_rand_instr_stream_8
                  lbu          a3, 21(a2)
                  auipc        t1, 804766
                  auipc        t5, 981789
                  lbu          s2, 5(a2)
                  auipc        gp, 743169
                  sh           tp, -28(a2)
                  srai         t4, s4, 28
                  slt          t2, a0, t6
                  and          zero, zero, s11
                  slti         ra, a6, 534
                  srai         ra, s6, 22
                  or           t3, s1, s6
                  nop
                  srli         s7, s9, 20
                  auipc        s3, 216177
                  xori         t4, ra, 2025
                  lb           ra, 51(a2)
                  lbu          a1, 45(a2)
                  sltu         s9, s7, t2
                  lb           a3, -3(a2)
                  slli         t4, a4, 26
                  xor          ra, s0, t1
                  lb           a4, -46(a2)
                  xori         a7, s3, -153
                  sra          s4, s1, t6
                  sll          a0, s1, s6
                  lbu          zero, 27(a2)
                  lbu          t4, -5(a2)
                  sh           a4, -10(a2) #end riscv_load_store_rand_instr_stream_8
                  la           sp, region_1+1599 #start riscv_load_store_rand_instr_stream_14
                  or           s5, s6, t0
                  lhu          t3, -13(sp)
                  lbu          s6, 14(sp)
                  nop
                  sw           s9, 9(sp)
                  add          zero, tp, a7
                  lhu          s2, 15(sp)
                  srli         s8, tp, 27
                  lb           zero, -9(sp)
                  xor          s0, a5, gp
                  lb           a2, 12(sp)
                  sb           sp, -15(sp)
                  add          s7, s11, a4
                  sb           t1, 4(sp)
                  lbu          s9, 16(sp)
                  sb           a1, -15(sp)
                  sll          s6, s0, a6
                  slli         s4, a2, 29
                  and          a1, s1, tp
                  add          t3, a3, t1
                  nop
                  srai         t1, t6, 14
                  lbu          s10, 5(sp)
                  lw           ra, -11(sp)
                  srl          gp, ra, t1
                  sltu         s2, ra, s6
                  lbu          gp, 15(sp)
                  lb           ra, 14(sp)
                  lh           t5, -13(sp)
                  lhu          t6, 15(sp)
                  lb           t5, 14(sp)
                  addi         s5, s1, 1809
                  lb           a7, 10(sp)
                  sh           t1, 13(sp)
                  lb           s1, 10(sp)
                  lbu          s4, 5(sp)
                  lb           t5, 12(sp)
                  lw           s6, -3(sp)
                  sh           s11, -5(sp)
                  auipc        a1, 134113
                  slli         t4, t1, 13
                  lbu          s7, 14(sp)
                  sh           t5, 7(sp)
                  sw           a2, 1(sp)
                  lhu          t1, -11(sp) #end riscv_load_store_rand_instr_stream_14
                  la           s8, region_1+1196 #start riscv_load_store_rand_instr_stream_6
                  sb           t6, 173(s8)
                  sltiu        a0, t4, -280
                  sb           a0, -22(s8)
                  lbu          sp, 140(s8)
                  nop
                  lhu          t2, -230(s8)
                  lb           a6, 64(s8)
                  slti         t2, a2, -1319
                  lb           s9, -167(s8)
                  sb           s3, 81(s8)
                  lb           s10, 146(s8)
                  lb           ra, 52(s8)
                  lbu          a4, 133(s8)
                  lbu          s6, -143(s8)
                  lbu          gp, 207(s8)
                  sltiu        t5, tp, 1926
                  sltiu        sp, tp, -347
                  lhu          s1, -42(s8)
                  xor          s0, t2, s11
                  lb           a3, -64(s8)
                  add          a5, t4, s6
                  sb           a7, -49(s8)
                  lb           s9, -45(s8)
                  lh           t5, 210(s8)
                  sb           s3, -19(s8)
                  auipc        zero, 411184
                  lb           t6, -111(s8)
                  lbu          s0, -69(s8)
                  sh           s8, 124(s8)
                  sb           a1, 49(s8)
                  sh           s7, -106(s8)
                  sub          gp, t2, a1
                  and          t4, a3, s11
                  lb           s4, -45(s8)
                  sb           s11, -39(s8) #end riscv_load_store_rand_instr_stream_6
                  la           sp, region_0+744 #start riscv_load_store_rand_instr_stream_2
                  sb           s9, 37(sp)
                  slli         s8, s9, 25
                  srai         a4, a0, 9
                  add          s7, s9, s6
                  lb           s4, -51(sp)
                  lbu          t1, -21(sp)
                  slli         gp, a7, 0
                  lbu          t2, -33(sp)
                  lbu          t3, 22(sp)
                  lw           a5, 44(sp)
                  sll          s0, t5, ra
                  sra          t6, s11, a2
                  sltiu        a4, s5, -429
                  lbu          s5, 47(sp)
                  lbu          t2, -15(sp)
                  sb           s1, -35(sp)
                  sb           t4, 15(sp)
                  sb           t6, -11(sp)
                  nop
                  addi         a1, s1, -815
                  sh           s2, -52(sp)
                  srai         s2, a4, 22
                  sw           t5, -4(sp) #end riscv_load_store_rand_instr_stream_2
                  la           s6, region_1+1188 #start riscv_load_store_rand_instr_stream_7
                  lb           t2, 10(s6)
                  lh           s2, 0(s6)
                  lb           a5, 9(s6)
                  sltu         s0, a6, s1
                  auipc        a4, 513514
                  xor          s4, s7, s1
                  lb           s7, -7(s6)
                  andi         a2, t3, -664
                  lhu          s8, -16(s6)
                  lhu          ra, 10(s6)
                  lhu          s4, -2(s6)
                  lhu          gp, -8(s6)
                  lw           zero, 8(s6)
                  lh           ra, 2(s6)
                  sra          ra, s11, sp
                  sb           s7, -5(s6)
                  add          a3, s10, s0
                  slt          t3, s9, ra
                  or           a4, a6, s6
                  lui          s3, 487295
                  srai         a7, a3, 10
                  lui          t5, 675294
                  lhu          s9, -4(s6)
                  srai         zero, s10, 20
                  sw           s5, 16(s6)
                  lh           a4, 12(s6)
                  slti         sp, t4, -1118
                  sb           a1, 6(s6)
                  srai         a6, s2, 0
                  lbu          t5, -11(s6) #end riscv_load_store_rand_instr_stream_7
                  la           sp, region_1+1498 #start riscv_load_store_rand_instr_stream_5
                  lb           s2, -467(sp)
                  lb           t4, -707(sp)
                  xor          s10, t0, t2
                  sltu         t2, s10, sp
                  sltiu        s9, a3, 1443
                  sra          a6, t2, s3
                  lbu          t5, 489(sp)
                  lb           zero, -113(sp)
                  lb           a2, -979(sp)
                  auipc        a4, 760297
                  sltu         s10, a6, a5
                  sb           t0, -139(sp)
                  lbu          s9, -1475(sp)
                  srli         t5, a1, 30
                  sb           ra, -1325(sp)
                  lb           zero, -432(sp)
                  slti         s2, a1, 274
                  sb           s10, -1456(sp)
                  andi         s10, gp, 365
                  or           a4, a5, a1
                  sb           t5, -831(sp)
                  lh           s1, -786(sp)
                  sb           a4, -820(sp)
                  nop
                  lb           s2, -1115(sp)
                  sltu         a7, s4, t1
                  sltiu        s10, a4, -1148
                  sll          t5, gp, tp
                  slt          a1, a0, s4
                  lh           ra, 386(sp)
                  xori         ra, s11, -1199
                  lbu          zero, -854(sp)
                  lw           a7, -306(sp)
                  auipc        a6, 368119
                  sb           s9, -765(sp) #end riscv_load_store_rand_instr_stream_5
                  la           sp, region_0+360 #start riscv_load_store_rand_instr_stream_11
                  sll          s5, a0, a4
                  sb           a0, 2(sp)
                  xori         s1, s0, -716
                  sltiu        a2, t0, -1158
                  ori          s5, s10, -1679
                  lb           s10, -13(sp)
                  sb           a6, -12(sp)
                  xori         s2, s2, -71
                  xor          a7, a6, t3
                  sh           s4, -10(sp)
                  nop
                  sub          a6, zero, s10
                  xori         zero, s2, 1863
                  xor          s7, a5, tp
                  lbu          s5, -7(sp)
                  slt          s8, s0, s11
                  ori          s6, s4, -1582
                  lb           a2, -1(sp)
                  lui          s8, 400202
                  auipc        t4, 357755
                  lb           zero, 13(sp)
                  lb           s5, -11(sp)
                  sw           t4, -4(sp)
                  lbu          t4, 7(sp)
                  sra          t3, t2, s8
                  lui          a3, 890219
                  lbu          a3, 5(sp)
                  sub          s4, gp, a4
                  lh           s7, -4(sp)
                  sb           a3, 9(sp)
                  lbu          t6, -4(sp)
                  lh           s0, 14(sp)
                  auipc        a4, 302086
                  slli         a5, a5, 0
                  lbu          zero, 16(sp) #end riscv_load_store_rand_instr_stream_11
                  la           s10, region_0+558 #start riscv_load_store_rand_instr_stream_16
                  lbu          a5, 344(s10)
                  nop
                  lbu          s7, 811(s10)
                  lb           s4, -257(s10)
                  lh           a6, -134(s10)
                  or           t4, tp, a1
                  lbu          s5, -105(s10)
                  lbu          zero, 224(s10)
                  sw           t0, 1422(s10)
                  lbu          t4, -149(s10)
                  lbu          s7, 623(s10)
                  sb           s4, 547(s10)
                  lbu          a4, -123(s10)
                  sra          t3, s6, gp
                  lui          t2, 689811
                  lui          s2, 167717
                  lb           t4, 257(s10)
                  xori         a6, s3, -836
                  sll          s8, gp, a0
                  lhu          t2, 1328(s10)
                  or           s3, ra, a5
                  sltu         gp, t5, sp
                  xori         a4, s2, -1670
                  sb           a0, 11(s10)
                  lb           s4, 401(s10)
                  slt          a2, s10, s4
                  lb           gp, 717(s10)
                  sb           s4, -26(s10)
                  add          s4, sp, a3
                  ori          s4, s1, 1827
                  lb           a2, -301(s10)
                  sb           a6, 135(s10)
                  nop
                  sltiu        ra, tp, 1565
                  lbu          ra, 1378(s10)
                  lb           t5, 1083(s10)
                  sb           s7, -278(s10)
                  lb           s5, 538(s10)
                  sltiu        a2, a7, 1311
                  sra          t2, sp, a0
                  lb           gp, -35(s10)
                  lb           s8, -87(s10)
                  lbu          t4, 526(s10)
                  nop
                  xor          s7, s9, s5
                  lh           sp, -256(s10) #end riscv_load_store_rand_instr_stream_16
                  la           sp, region_1+1164 #start riscv_load_store_rand_instr_stream_0
                  lb           s10, 11(sp)
                  sra          s0, a0, s0
                  sub          a2, s6, a0
                  andi         s9, t1, 197
                  xor          s3, s1, s9
                  nop
                  add          s3, ra, t5
                  and          s0, a7, a5
                  lui          t1, 20236
                  xor          t5, t1, s11
                  sltu         s6, s6, a7
                  sh           s0, 10(sp)
                  lui          t1, 359400
                  addi         s4, sp, -232
                  andi         t2, zero, 1197
                  lb           t4, -13(sp)
                  sra          t6, a3, tp
                  sw           t1, 4(sp)
                  add          s0, a2, s2
                  srai         zero, s1, 16
                  sltiu        s6, a3, -1919
                  sltu         s8, a5, t6
                  sll          gp, gp, tp
                  lb           s4, -1(sp)
                  add          a2, s3, t3
                  slt          ra, t2, a7
                  sltiu        s10, a1, -1107
                  add          a3, s10, s11
                  lb           t6, -5(sp)
                  lbu          t5, 9(sp)
                  auipc        a4, 268178
                  sb           s5, -13(sp)
                  slti         a3, a7, 202
                  sb           s6, 1(sp)
                  add          s9, s10, t5
                  sub          a0, t0, a1
                  sltiu        s1, a1, -747
                  srai         t4, a6, 22
                  lbu          s10, -13(sp) #end riscv_load_store_rand_instr_stream_0
                  la           a1, region_0+1058 #start riscv_load_store_rand_instr_stream_3
                  sra          t4, s11, a1
                  slli         gp, a2, 8
                  addi         a0, a6, -882
                  sb           s9, -295(a1)
                  xori         s2, gp, 872
                  lhu          a5, 876(a1)
                  lhu          s10, -568(a1)
                  lbu          ra, -604(a1)
                  xori         s9, a5, 967
                  sb           s2, 351(a1)
                  lbu          t3, 741(a1)
                  andi         s6, s1, -1254
                  lh           gp, 808(a1)
                  sltiu        t2, t0, 1239
                  sb           t2, 495(a1)
                  add          a4, a3, t5
                  lbu          a7, -901(a1)
                  auipc        s9, 358305
                  sltiu        a5, a4, 92
                  lb           s3, -945(a1)
                  slti         s2, ra, -1314
                  lbu          t3, -431(a1)
                  srai         s7, a7, 30
                  add          ra, t1, t4
                  add          s7, a1, s3
                  sltu         a0, t5, t6
                  lhu          ra, -468(a1)
                  sb           sp, -547(a1)
                  ori          s8, ra, -30
                  lbu          a7, 860(a1)
                  sra          t6, ra, a1
                  or           t4, s8, s0
                  lb           s0, -816(a1)
                  sw           t4, 898(a1)
                  sll          s1, t2, s4
                  sub          gp, s6, s2
                  lb           a2, -79(a1)
                  lb           t4, 133(a1)
                  auipc        a7, 140884
                  addi         s10, t2, 1600
                  or           t4, s4, s6
                  lbu          t3, -459(a1)
                  sll          s5, t3, a1
                  sll          s8, t5, a7
                  lb           t5, -482(a1)
                  lb           s7, 628(a1)
                  sb           s6, -747(a1)
                  lbu          s8, -975(a1)
                  lui          a0, 791572
                  nop
                  lbu          s4, 243(a1) #end riscv_load_store_rand_instr_stream_3
                  bgeu         s6, a7, 15f
                  add          a1, t0, s1
                  xori         t5, a3, -1383
                  lui          a0, 734507
                  andi         a7, tp, 1765
                  slli         s5, s10, 13
                  lui          s4, 503029
                  sltiu        a5, t4, 795
                  blt          s5, a2, 24f
                  bne          ra, a5, 13f
                  sll          s8, a1, a0
                  srli         a0, s2, 7
                  or           a3, a6, a6
13:               srli         s10, a0, 27
                  bge          t3, a5, 33f
15:               auipc        zero, 919098
                  srli         t1, t5, 17
                  slli         sp, s5, 28
                  ori          gp, t3, -2000
                  srli         ra, s10, 18
                  auipc        t6, 983475
                  sub          a6, a1, tp
                  addi         s9, ra, 22
                  sltiu        t4, ra, -205
24:               slt          s7, a7, s11
                  andi         s5, a3, 1277
                  add          a2, a4, t2
                  sub          a6, s9, a1
                  bne          t5, s2, 36f
                  bltu         t2, tp, 30f
30:               nop
                  xor          a6, t0, a0
                  lui          s5, 1002703
33:               srli         a6, a3, 15
                  bgeu         t5, s0, 49f
                  slli         t6, a0, 31
36:               sll          s9, t6, t1
                  sltiu        a6, sp, 1781
                  bne          s1, t2, 46f
                  srli         s9, t2, 2
                  sltiu        s7, t2, -377
                  addi         s4, a2, -1083
                  addi         a4, s11, 1784
                  srli         a5, s11, 2
                  and          t2, s2, s2
                  xori         a7, tp, -1899
46:               bne          t1, a4, 66f
                  srai         a6, gp, 2
                  sra          a7, a0, s8
49:               sll          ra, s3, a2
                  slt          sp, a2, t3
                  andi         s6, s9, 41
                  bgeu         ra, t5, 56f
                  nop
                  nop
                  slti         sp, t4, -70
56:               bne          s9, a5, 69f
                  sltiu        t2, a3, 817
                  nop
                  xori         t2, s11, -1938
                  addi         a6, tp, -154
                  srli         a5, t6, 20
                  ori          s4, sp, 1349
                  beq          t3, s9, 82f
                  nop
                  bltu         sp, a3, 85f
66:               beq          s6, s0, 86f
                  bgeu         s11, s3, 77f
                  sra          a4, a3, sp
69:               lui          s5, 363171
                  beq          s11, t4, 73f
                  or           s9, t0, s7
                  andi         a5, s3, 1954
73:               sltu         s2, a2, a1
                  sltu         s8, t5, t4
                  srai         s4, zero, 25
                  or           s10, a7, s10
77:               srli         s5, a7, 12
                  sltiu        ra, gp, 2027
                  add          s9, s6, a6
                  or           ra, zero, t5
                  addi         s3, s2, -2031
82:               xor          s4, t4, a0
                  bltu         s6, a7, 94f
                  srli         s2, s7, 20
85:               bne          s5, s1, 97f
86:               sra          s9, sp, s9
                  sltiu        t3, a0, -203
                  srai         s8, t6, 1
                  bne          a2, s3, 105f
                  sltiu        ra, s9, -668
                  xor          s4, zero, s5
                  bgeu         a1, s5, 112f
                  xori         s6, t4, -1875
94:               sll          s5, t5, t5
                  srai         t3, s6, 10
                  srl          t6, t4, t3
97:               srli         t2, t5, 4
                  slt          a0, a6, s8
                  nop
                  beq          s2, a6, 108f
                  sra          gp, a5, t1
                  srl          s2, t2, s11
                  xori         s1, ra, 1071
                  bgeu         t2, s6, 117f
105:              xor          t3, t5, s5
                  addi         a2, s1, -1245
                  andi         s5, t6, 446
108:              sra          s2, a4, t0
                  bgeu         s2, t2, 129f
                  srli         zero, s8, 19
                  bge          s3, a2, 114f
112:              ori          a4, a3, -274
                  lui          s10, 878018
114:              lui          s1, 325511
                  sll          a5, s1, s6
                  slli         t5, a6, 3
117:              bge          a7, a0, 137f
                  add          a4, tp, s11
                  slli         gp, ra, 27
                  sltu         s3, a2, a7
                  sltiu        t5, a2, -749
                  blt          t5, s7, 135f
                  bne          s1, tp, 132f
                  and          zero, a4, t3
                  slti         s8, s3, -1651
                  bltu         t5, s11, 127f
127:              bltu         s9, t2, 142f
                  or           sp, s10, t3
129:              add          s10, a1, a6
                  bltu         tp, tp, 138f
                  blt          gp, a2, 134f
132:              addi         s3, a1, -727
                  add          a1, s3, s3
134:              sub          t2, a2, s8
135:              addi         s7, a1, 626
                  bltu         s2, s9, 152f
137:              sll          t3, s4, s6
138:              sra          s10, t1, s3
                  beq          s10, t0, 148f
                  sub          t3, s0, s7
                  srl          a6, zero, a0
142:              bge          t6, s8, 145f
                  andi         a5, s3, 1061
                  xor          a1, t4, sp
145:              blt          s1, a1, 158f
                  and          sp, t3, a4
                  beq          gp, s2, 167f
148:              xor          a5, t3, s8
                  blt          a0, sp, 153f
                  bgeu         s3, t3, 165f
                  or           t6, a5, s8
152:              nop
153:              bne          t5, s11, 165f
                  xori         s8, t4, -1336
                  xor          s2, sp, s6
                  sra          t4, a1, a5
                  bge          a1, s11, 168f
158:              sltiu        a0, s3, 1653
                  bgeu         a5, s4, 167f
                  slt          a5, a4, ra
                  sub          s10, s11, t0
                  addi         a5, s2, -527
                  slli         s4, a1, 8
                  beq          a5, zero, 183f
165:              blt          a3, a7, 185f
                  nop
167:              slli         s4, ra, 0
168:              blt          a1, a7, 188f
                  lui          gp, 898261
                  auipc        t4, 264632
                  nop
                  beq          a4, s1, 173f
173:              xori         s7, s9, -1224
                  and          s10, s5, t5
                  slt          a7, t5, t5
                  slli         s10, a0, 0
                  ori          a0, s6, -1194
                  lui          a0, 500640
                  sltu         s0, s5, a5
                  sub          sp, t6, s9
                  srl          s4, ra, sp
                  sltiu        t3, s8, -1726
183:              ori          a3, t5, 1226
                  sltiu        t4, gp, -784
185:              xori         t3, s0, 420
                  srai         t1, s10, 4
                  sra          t3, t4, a2
188:              ori          gp, t6, 1507
                  sub          a4, s5, a1
                  lui          a1, 189244
                  slt          sp, s6, tp
                  add          sp, a6, tp
                  xor          t5, t6, t3
                  xor          a1, s9, s6
                  add          s7, s6, s8
                  and          sp, a7, t2
                  slli         a7, a7, 10
                  bne          s7, t5, 218f
                  sra          a6, s10, s4
                  or           gp, a3, s5
                  sltu         a6, a0, s0
                  sltu         s3, s4, gp
                  xori         a1, s3, 1591
                  bge          gp, t1, 224f
                  addi         a2, a1, -24
                  slli         t4, s8, 18
                  sltu         a2, t1, s3
                  ori          t5, t5, 510
                  slti         a7, s0, -284
                  bltu         s5, sp, 220f
                  sub          s6, t3, a3
                  beq          t4, a0, 227f
                  ori          s7, a6, 1145
                  sra          a6, a3, a5
                  slt          a2, s11, gp
                  bltu         t6, t1, 224f
                  bne          t2, a4, 233f
218:              bge          tp, t1, 222f
                  bne          t0, a1, 238f
220:              ori          a4, t5, 1559
                  bge          t6, s1, 241f
222:              srl          a5, gp, a7
                  auipc        s1, 747564
224:              srai         a6, s4, 4
                  blt          s8, t3, 233f
                  sub          s3, s7, t4
227:              lui          s10, 582852
                  andi         t6, t0, -1483
                  slli         t6, sp, 15
                  lui          s0, 361584
                  and          s1, s9, t1
                  bne          t2, a5, 245f
233:              srl          zero, s8, s1
                  add          t4, s8, s7
                  slti         s4, a1, 408
                  srli         t5, s7, 8
                  add          s4, t6, a3
238:              srai         s2, gp, 10
                  or           s7, s3, t5
                  auipc        ra, 143851
241:              andi         ra, ra, -427
                  xori         a5, a1, -1860
                  sltu         s0, t5, a7
                  bltu         a2, a1, 245f
245:              bgeu         t2, a2, 253f
                  srl          t2, s9, s8
                  nop
                  bgeu         a5, a6, 261f
                  or           ra, t3, zero
                  bne          a5, a5, 265f
                  blt          s8, a1, 261f
                  sra          s3, t1, s5
253:              sltu         a5, s4, s7
                  bge          a6, gp, 258f
                  blt          s6, s1, 270f
                  sll          a3, tp, t3
                  srai         t6, s9, 2
258:              sra          s7, a4, gp
                  srl          a5, s5, t5
                  sll          s8, t0, s9
261:              add          s3, t1, t4
                  srl          s0, s4, s11
                  srli         s8, tp, 12
                  srl          s10, s6, t5
265:              or           s5, s9, t3
                  srl          t2, a4, t4
                  auipc        gp, 35094
                  add          a4, s6, t2
                  or           t6, gp, s1
270:              slli         a3, a3, 30
                  or           t1, t1, a6
                  blt          t2, a2, 292f
                  xor          sp, a0, zero
                  srl          t6, t5, a6
                  addi         sp, t4, -1521
                  ori          t5, a5, -1571
                  srl          ra, s6, t4
                  xor          a1, s7, t2
                  xor          a3, t5, a0
                  slt          s10, a4, t1
                  srli         a7, ra, 8
                  bne          zero, t5, 291f
                  auipc        a7, 815431
                  nop
                  sltiu        s2, a7, 298
                  slli         s5, t1, 29
                  sub          s3, s10, ra
                  slti         s0, t6, 473
                  addi         a2, s4, 1613
                  andi         t3, s3, -1008
291:              or           a2, a3, a3
292:              slti         a0, s11, -1522
                  srli         s1, s8, 2
                  beq          s8, zero, 310f
                  nop
                  srli         a7, sp, 14
                  srai         a3, s5, 10
                  add          s4, sp, t6
                  sra          s3, zero, t4
                  auipc        s1, 78241
                  lui          ra, 606133
                  bne          t5, s9, 318f
                  addi         s6, s4, 1153
                  and          t6, zero, t1
                  blt          t6, s10, 313f
                  and          a7, s9, t5
                  or           a6, ra, s3
                  xor          a1, s3, a2
                  sll          gp, s6, gp
310:              sub          s10, gp, t6
                  bne          a2, t3, 319f
                  srl          s2, ra, s0
313:              slt          gp, s5, t3
                  bge          s2, t0, 334f
                  srli         s0, s10, 30
                  or           a6, a3, t1
                  srli         t4, t6, 3
318:              or           sp, tp, s11
319:              sll          a3, a3, t4
                  nop
                  sltu         t5, s4, t5
                  ori          ra, a0, -799
                  xor          a6, a1, t3
                  xori         ra, s10, 1599
                  srli         a1, a6, 0
                  sll          a0, t2, a6
                  beq          s6, t4, 342f
                  addi         s5, a4, 1403
                  slt          gp, t1, a5
                  srl          sp, s10, t1
                  andi         ra, s0, 1928
                  srli         ra, s4, 14
                  ori          a4, ra, -1139
334:              blt          t4, t2, 353f
                  and          a5, a1, s3
                  sra          s1, s10, s6
                  bltu         s8, s3, 350f
                  add          t5, s0, a5
                  sll          s10, s1, t4
                  bne          s8, gp, 352f
                  slli         s7, a0, 5
342:              slti         sp, s2, 43
                  addi         t3, s4, 180
                  slt          t2, a6, s11
                  nop
                  bge          t6, t1, 366f
                  bge          sp, tp, 350f
                  blt          t5, a4, 349f
349:              bgeu         t2, a6, 364f
350:              sra          a0, t5, a1
                  bge          a6, a0, 355f
352:              sll          sp, s5, gp
353:              andi         a6, a1, -594
                  bne          t4, s8, 357f
355:              add          s3, t2, t1
                  nop
357:              andi         a3, t5, -91
                  sltu         s4, s9, s10
                  sltiu        s7, tp, 218
                  xor          t2, s3, s0
                  srai         sp, s5, 22
                  bltu         s0, gp, 373f
                  and          a1, s5, gp
364:              srl          t5, s3, tp
                  sltu         sp, t6, s3
366:              lui          a6, 858703
                  bne          a4, a3, 386f
                  lui          gp, 535653
                  sltu         s9, a5, a4
                  lui          t5, 791748
                  srai         s5, s5, 12
                  slli         a6, a2, 20
373:              addi         a6, t4, -1652
                  auipc        s10, 555281
                  sra          s5, s1, a1
                  bne          s4, t3, 389f
                  blt          s5, s5, 397f
                  lui          t3, 463384
                  beq          s11, t3, 392f
                  xor          sp, a2, s7
                  srli         t2, s6, 5
                  bgeu         s5, s0, 402f
                  andi         s7, a0, -1184
                  bltu         s6, ra, 392f
                  or           s6, a5, s2
386:              srl          ra, a0, a3
                  srli         a1, a0, 26
                  nop
389:              add          sp, t2, s10
                  add          a3, s7, s7
                  nop
392:              srli         a0, s7, 6
                  srl          s10, ra, a4
                  blt          a0, sp, 395f
395:              slti         t6, gp, 1380
                  slt          t6, s8, s7
397:              nop
                  srli         t4, s6, 18
                  blt          s8, s10, 407f
                  addi         s7, a0, -207
                  blt          zero, s10, 421f
402:              xori         s3, s3, -52
                  xor          sp, s2, zero
                  xori         s10, s6, 1650
                  bgeu         tp, sp, 425f
                  auipc        a4, 152371
407:              andi         a3, s1, 1205
                  xori         a1, a4, -1368
                  addi         a1, s8, -657
                  xor          t3, s9, zero
                  lui          s4, 223418
                  auipc        t3, 544634
                  beq          s0, a3, 422f
                  xori         s3, t0, -867
                  xor          s4, t0, a6
                  bgeu         a3, tp, 436f
                  sll          s6, s7, t6
                  bge          s0, a1, 430f
                  sll          gp, s2, t6
                  bge          a7, gp, 424f
421:              bne          a1, s4, 440f
422:              sltu         s0, sp, s7
                  bltu         s3, t6, 443f
424:              and          a0, zero, t1
425:              srai         a1, zero, 24
                  addi         t1, t0, -939
                  srli         s8, a4, 31
                  bgeu         s2, s2, 431f
                  slti         a5, t6, 1591
430:              sub          t6, s2, s3
431:              srli         s6, a5, 22
                  srli         sp, a1, 4
                  addi         zero, sp, -1149
                  beq          a3, s9, 453f
                  andi         s1, a0, 1215
436:              ori          s9, s7, -164
                  bltu         t0, ra, 441f
                  sub          t4, a0, s0
                  bltu         a6, s10, 455f
440:              bge          s3, s6, 460f
441:              andi         t5, s3, 916
                  sltu         s10, t2, a6
443:              sltiu        zero, t3, 1893
                  blt          s5, a0, 457f
                  blt          a0, s4, 455f
                  blt          a4, zero, 459f
                  sra          a7, t2, a6
                  bge          s0, t5, 449f
449:              nop
                  or           s3, gp, t2
                  srai         a3, a4, 2
                  or           a4, s11, s11
453:              and          s0, t0, s4
                  bne          gp, s4, 455f
455:              bne          s2, t3, 466f
                  nop
457:              and          a1, s8, s6
                  sub          s3, a0, t3
459:              sltu         t5, s2, s11
460:              bne          a3, a6, 463f
                  blt          s4, a5, 476f
                  lui          s10, 980299
463:              blt          a1, a3, 483f
                  sltu         t3, s6, t5
                  or           a2, s0, s9
466:              slti         ra, s2, 574
                  srli         s4, t0, 3
                  srli         s10, t4, 20
                  sltu         t3, s8, gp
                  and          t1, a6, t3
                  bne          t1, sp, 479f
                  or           t1, s9, s11
                  slti         s3, t3, 226
                  ori          t3, t3, -157
                  slli         gp, a4, 4
476:              bltu         s8, s10, 492f
                  slli         s4, s2, 25
                  bgeu         a6, sp, 491f
479:              blt          a6, s11, 494f
                  xori         gp, t1, 1280
                  ori          sp, s11, -280
                  and          a0, a2, s6
483:              blt          t0, sp, 503f
                  blt          a2, s4, 492f
                  andi         s0, a5, -984
                  bltu         s1, zero, 494f
                  nop
                  slt          a5, s6, a2
                  nop
                  srai         s4, s6, 31
491:              sltiu        s3, t2, -1395
492:              add          s0, t0, s5
                  srl          a6, a1, a5
494:              sub          s6, ra, ra
                  bltu         s6, s9, 503f
                  bltu         a6, sp, 511f
                  xor          s6, t6, tp
                  nop
                  srl          a7, t2, a3
                  lui          a0, 720046
                  slt          a0, gp, a7
                  beq          s3, s2, 510f
503:              srl          s7, t3, gp
                  sub          s2, tp, s3
                  slti         s0, a6, -1801
                  ori          s4, t2, -1763
                  andi         t3, gp, -963
                  addi         a1, t5, -1741
                  beq          t0, t2, 529f
510:              bne          s10, a7, 530f
511:              beq          s10, t5, 531f
                  srl          s3, t2, a3
                  addi         t1, s11, 461
                  srli         a3, t6, 12
                  sltiu        a7, a4, -1152
                  ori          t1, s7, -1532
                  lui          t3, 189106
                  sra          gp, zero, s10
                  bltu         s10, a2, 538f
                  lui          t6, 768785
                  blt          gp, t0, 536f
                  srli         s9, t1, 25
                  slt          s5, a1, gp
                  auipc        a1, 877919
                  slli         a2, a0, 13
                  bge          a2, s5, 530f
                  sub          s7, t2, s0
                  addi         a4, t2, -1033
529:              srai         t6, s3, 16
530:              sltu         a0, tp, a1
531:              srli         sp, s8, 9
                  srl          a4, a4, s4
                  xori         a4, sp, -439
                  srai         a3, s3, 17
                  sub          zero, s8, ra
536:              sltu         s0, a2, a3
                  xor          s4, zero, s9
538:              or           s5, s7, s3
                  and          s4, tp, t6
                  sll          s6, s6, t4
                  or           t1, t6, a4
                  sub          sp, ra, s1
                  blt          a1, a4, 562f
                  sra          s0, t2, s9
                  xor          a4, a2, a4
                  slti         a7, s9, -229
                  and          a3, a3, t0
                  bne          a3, s5, 551f
                  lui          t5, 100066
                  bne          a3, a3, 551f
551:              andi         zero, a5, 1636
                  slt          gp, a3, t1
                  xori         gp, a5, -1099
                  lui          s5, 38378
                  sll          a5, gp, s1
                  bgeu         s6, a6, 564f
                  bgeu         s4, a6, 560f
                  slt          s9, s10, s3
                  sll          sp, s6, s2
560:              andi         s0, s5, 286
                  bge          s6, s6, 574f
562:              andi         s6, s3, -1908
                  auipc        s5, 754648
564:              srl          a0, s10, t1
                  bge          a6, s11, 581f
                  bge          a4, s6, 574f
                  sltiu        a0, t1, 762
                  sll          s0, a7, t3
                  lui          s8, 270376
                  srai         gp, ra, 24
                  bltu         gp, a0, 584f
                  sll          s5, t6, zero
                  xori         zero, t1, 1419
574:              sll          s10, gp, a4
                  beq          s5, sp, 590f
                  sll          s9, t0, s11
                  or           s0, s3, s2
                  sltu         t2, t0, a5
                  auipc        ra, 232215
                  slt          a4, s1, s2
581:              bge          a1, a4, 589f
                  sra          s4, zero, t3
                  sra          a2, s3, s10
584:              bgeu         a7, a2, 596f
                  bgeu         s9, t2, 598f
                  and          a3, a5, ra
                  blt          t6, t1, 603f
                  sra          a3, t0, s0
589:              sub          s10, a6, t3
590:              nop
                  xor          a0, t5, s11
                  add          a7, s8, s11
                  blt          a5, t5, 604f
                  lui          gp, 583637
                  sra          s8, sp, a0
596:              sltu         s9, zero, t2
                  srl          t1, s5, s10
598:              lui          a0, 570544
                  xor          s3, s6, s7
                  andi         a0, a7, -849
                  xor          s10, s2, a1
                  andi         t2, s0, 514
603:              sltu         t6, t1, s1
604:              and          s1, a2, t1
                  ori          s0, s3, -1876
                  slti         s4, s6, 462
                  slli         s0, t2, 7
                  bne          a4, s2, 628f
                  xor          s4, t0, a4
                  bgeu         sp, zero, 614f
                  addi         sp, tp, -1704
                  beq          t4, s7, 627f
                  add          s8, s3, zero
614:              beq          zero, s0, 634f
                  srl          t5, s6, t1
                  auipc        zero, 743815
                  slti         t6, a2, 1023
                  add          gp, t3, s8
                  slli         a5, a7, 0
                  sub          s3, s8, s3
                  sll          sp, s2, zero
                  xori         a7, t2, -884
                  slt          a6, a5, s3
                  sll          a3, tp, tp
                  bge          s7, a7, 645f
                  bltu         s5, t2, 635f
627:              srl          t6, t2, s8
628:              add          ra, t0, s3
                  andi         t3, a0, 840
                  srl          a6, tp, t6
                  or           zero, s5, gp
                  andi         t3, t0, -1510
                  srai         a0, t6, 0
634:              lui          s1, 373036
635:              add          t4, a4, a7
                  bne          s3, ra, 646f
                  ori          a7, a2, 649
                  lui          s6, 97461
                  bgeu         a4, t0, 640f
640:              slti         s2, s7, 1245
                  srl          s2, s2, t5
                  sltiu        gp, s0, -1441
                  or           t6, t5, s7
                  sub          s2, a0, s3
645:              sub          s3, s10, zero
646:              slt          a2, a3, t0
                  sub          gp, s4, s7
                  srai         t4, s0, 0
                  srli         s0, gp, 19
                  sll          ra, sp, a3
                  bge          t4, s6, 659f
                  srl          s7, s8, t3
                  auipc        t1, 381774
                  bltu         a6, s2, 662f
                  sltiu        s5, a4, 544
                  addi         a2, a6, 1499
                  andi         s1, sp, 1281
                  or           t3, s11, t2
659:              addi         a1, tp, -264
                  bge          s3, t1, 668f
                  addi         s5, tp, 1939
662:              addi         s10, t4, -1577
                  srl          s6, s11, t0
                  bgeu         zero, s10, 684f
                  andi         s9, a5, -287
                  slt          s7, s6, t6
                  ori          ra, a0, 253
668:              srli         s8, s8, 19
                  bltu         s1, a3, 685f
                  srli         a0, s4, 5
                  slti         s1, tp, 1384
                  blt          t2, t6, 685f
                  sltu         s7, tp, zero
                  ori          s3, gp, -641
                  beq          zero, tp, 695f
                  sll          ra, sp, t3
                  and          s7, a5, a3
                  sll          s0, s10, t5
                  srli         s4, ra, 3
                  nop
                  sltu         t3, s6, s4
                  xor          s4, gp, s5
                  auipc        sp, 312546
684:              blt          tp, t6, 704f
685:              sll          gp, s11, a3
                  xor          s6, ra, s8
                  blt          t5, s5, 699f
                  blt          t2, t5, 689f
689:              beq          a0, t6, 709f
                  srl          s4, s2, zero
                  addi         a0, s7, -55
                  srli         ra, s10, 8
                  blt          s8, t5, 708f
                  sll          a2, zero, s10
695:              sll          t1, a0, t1
                  bge          t2, s7, 705f
                  bgeu         t0, s8, 712f
                  sltiu        t3, s6, -1773
699:              xor          t1, s2, s1
                  sltu         a0, a3, s9
                  add          a3, s4, t1
                  bge          t1, tp, 705f
                  blt          gp, sp, 716f
704:              andi         t4, t2, 530
705:              slti         a1, a2, -1062
                  sltiu        t6, s11, -1421
                  sltu         s0, s5, sp
708:              sltu         a2, s1, s7
709:              sltu         s1, a1, s8
                  srai         a2, s1, 3
                  sub          a2, s6, s11
712:              ori          sp, s5, 1034
                  bgeu         s2, a1, 732f
                  srai         s10, tp, 27
                  add          t1, s6, a2
716:              sltu         s1, a3, t1
                  sub          sp, zero, s2
                  nop
                  sll          a1, a3, a3
                  sub          s1, tp, ra
                  beq          s5, t1, 741f
                  beq          t1, t4, 742f
                  lui          a3, 194244
                  slli         s8, s0, 17
                  beq          a4, sp, 726f
726:              srli         a6, ra, 24
                  and          a0, sp, s3
                  xori         a6, t2, 72
                  xor          s2, s11, t4
                  sltiu        a0, t4, -1564
                  ori          t6, t4, -273
732:              blt          a5, t6, 736f
                  nop
                  slt          a5, t4, t1
                  beq          a2, s7, 750f
736:              lui          s0, 626846
                  beq          s3, t2, 750f
                  addi         t4, a4, 1374
                  addi         s5, zero, 192
                  andi         sp, zero, -1595
741:              bgeu         t6, a7, 760f
742:              sltu         s8, t2, t5
                  auipc        a3, 982108
                  srl          t3, a3, s9
                  bge          s1, a7, 755f
                  xor          t4, s8, s4
                  beq          tp, t2, 750f
                  sltu         gp, t3, s2
                  sll          a1, a6, t4
750:              sub          a2, t0, t5
                  bne          a0, gp, 762f
                  slti         s10, s6, -1254
                  slli         s10, t2, 6
                  srli         t4, t5, 12
755:              beq          t2, s8, 763f
                  slti         s6, a4, 693
                  srli         a6, s2, 19
                  blt          s4, s7, 774f
                  ori          a2, t3, 1842
760:              bne          t6, s9, 764f
                  bltu         a1, s10, 765f
762:              srl          ra, t5, t2
763:              auipc        t5, 666076
764:              blt          a2, s7, 768f
765:              slti         a2, s11, -769
                  and          s7, a4, t0
                  beq          t1, s7, 780f
768:              andi         t3, s9, -1801
                  and          a2, a4, s8
                  nop
                  addi         s3, a6, 1305
                  or           sp, sp, tp
                  bltu         t1, t2, 783f
774:              xor          t3, s5, gp
                  auipc        s0, 547111
                  blt          a0, a0, 784f
                  sub          a0, t6, sp
                  sltiu        a4, t6, -1293
                  nop
780:              slli         a1, gp, 24
                  nop
                  blt          s7, s9, 783f
783:              srli         s9, a3, 24
784:              and          a4, a5, s8
                  bne          gp, s9, 794f
                  sltiu        t5, s2, 1161
                  bgeu         a6, tp, 807f
                  slt          a0, zero, a2
                  slti         s3, t4, 1883
                  slli         a7, s7, 29
                  auipc        a3, 729155
                  sll          s4, t0, a4
                  nop
794:              and          s8, t1, a7
                  sll          gp, s1, s5
                  sltiu        s2, t2, 497
                  sub          t4, t2, a3
                  sub          t1, t1, s5
                  and          zero, s7, a5
                  bne          s10, s6, 812f
                  srli         t4, t3, 7
                  sltiu        gp, t0, -1895
                  beq          tp, a0, 818f
                  nop
                  xori         sp, sp, 1640
                  lui          t2, 234339
807:              and          t5, s9, s5
                  xor          a1, s11, s11
                  bgeu         sp, s1, 828f
                  xori         s9, a5, 724
                  nop
812:              slt          s7, t4, s1
                  sub          s4, s9, s1
                  slti         t1, t4, 1031
                  sltu         s6, a0, s6
                  bgeu         s2, sp, 829f
                  sub          a6, s2, s3
818:              bltu         s8, a7, 833f
                  beq          s4, zero, 834f
                  andi         t6, t1, -1598
                  beq          s5, s6, 829f
                  bgeu         s5, a2, 835f
                  bltu         t1, t6, 834f
                  sra          s7, s0, gp
                  slti         s1, a6, 1220
                  sltu         s4, s8, s3
                  nop
828:              sltiu        t5, t1, 1601
829:              sll          s7, a7, s9
                  xor          s4, gp, s6
                  and          a0, s7, t5
                  bgeu         a0, s10, 851f
833:              srl          a0, t4, s1
834:              sll          t5, zero, t0
835:              andi         t1, t2, 1965
                  srai         s2, gp, 23
                  xori         s6, s9, -2013
                  slli         zero, a6, 21
                  xor          a3, s8, ra
                  and          t2, s8, a7
                  and          s2, s7, t0
                  sll          s1, tp, s8
                  ori          a7, zero, -1545
                  sltiu        s2, tp, 514
                  sra          a7, zero, s4
                  lui          t2, 806610
                  bne          a7, gp, 867f
                  xor          s10, s10, s0
                  bgeu         s1, gp, 852f
                  xori         a3, a3, -1803
851:              blt          ra, a1, 871f
852:              and          sp, a6, s3
                  bgeu         s4, t4, 873f
                  and          ra, s4, a1
                  auipc        s8, 995799
                  srl          s10, t4, s1
                  xori         s9, t6, 1387
                  srl          sp, s3, sp
                  srai         a1, a6, 20
                  sll          t1, a4, s1
                  addi         t6, tp, -127
                  sra          t4, t5, a6
                  sltiu        t3, s8, 1318
                  or           t5, t3, t6
                  bgeu         s1, zero, 881f
                  blt          s6, s9, 882f
867:              or           a4, s8, s8
                  srai         a3, a0, 20
                  sltu         zero, gp, s7
                  xor          a7, s5, s8
871:              xor          s7, s6, zero
                  and          s10, s0, a0
873:              addi         t4, t2, 423
                  bgeu         a1, ra, 882f
                  blt          gp, s8, 895f
                  lui          ra, 216553
                  addi         t1, sp, 100
                  nop
                  slt          a6, t4, zero
                  bltu         a3, s9, 883f
881:              sltu         t3, s6, t0
882:              bne          s1, a4, 890f
883:              bgeu         s7, a0, 903f
                  sra          s1, tp, a5
                  srli         sp, t4, 13
                  nop
                  srli         sp, a5, 14
                  slti         t5, a6, 1899
                  or           a0, a7, gp
890:              slti         a4, t6, 1460
                  sra          a6, s2, a1
                  slti         zero, a3, 2046
                  sra          t6, t0, tp
                  bne          s11, t4, 895f
895:              beq          t3, t4, 899f
                  xor          t6, s6, a2
                  slti         a0, s7, -33
                  srli         a6, s4, 7
899:              sub          a3, s4, s11
                  nop
                  or           t1, t3, s4
                  bne          t5, zero, 922f
903:              srli         a0, sp, 7
                  srli         gp, a2, 26
                  slti         t3, tp, -294
                  andi         sp, t3, 1472
                  bgeu         s10, s4, 915f
                  xori         a2, a2, -1279
                  srl          t1, a4, gp
                  addi         s10, s9, 1986
                  or           t4, a2, a2
                  blt          a6, s10, 928f
                  and          s2, s8, s6
                  lui          s10, 609644
915:              srl          a6, t0, s10
                  and          t5, t6, s0
                  srli         a7, s4, 8
                  la           s10, sub_1
                  sra          s4, s6, s5
                  srai         s2, a4, 27
                  sltiu        s7, a2, 1809
                  addi         s9, ra, 250
                  sltiu        ra, sp, -391
                  lui          t5, 190422
                  addi         s10, s10, 543
                  xori         t1, s6, -1326
main_j1:          jalr         t2, s10, -543 #jump main -> sub_1
                  addi         a6, s0, -815
                  slli         s5, s6, 16
                  bgeu         t6, s1, 927f
                  blt          a3, t3, 932f
                  srli         a4, a3, 1
                  slli         a0, a5, 1
922:              add          a3, tp, s3
                  blt          s3, s2, 935f
                  bgeu         s2, a6, 935f
                  auipc        a4, 179866
                  or           t2, s0, s0
927:              or           s8, a0, a1
928:              or           s2, t3, t0
                  sra          zero, a5, s5
                  bltu         s6, s3, 950f
                  slt          zero, t0, s7
932:              andi         s6, s10, -1937
                  lui          s4, 57467
                  sltu         a6, s11, s10
935:              sltu         t5, sp, a7
                  srl          s4, a6, t6
                  bgeu         a1, t6, 945f
                  bltu         t2, t6, 958f
                  addi         s2, t4, -1443
                  sra          a2, a4, s3
                  auipc        t6, 523288
                  bne          a2, a6, 955f
                  slt          s3, a6, s1
                  bltu         s9, s10, 959f
945:              auipc        a2, 135192
                  srli         zero, t0, 10
                  srl          s1, a0, a4
                  andi         s1, t0, -1762
                  slt          a5, a2, s1
950:              bge          s5, t3, 970f
                  sltu         t6, a4, a5
                  sltiu        s9, s6, -1326
                  auipc        t3, 213035
                  xori         t5, t4, -348
955:              srai         ra, t2, 10
                  and          t6, s10, s5
                  sltu         t3, t0, a1
958:              ori          s9, t1, 171
959:              add          zero, s9, a0
                  sll          t2, t0, a7
                  beq          a7, t0, 964f
                  blt          s1, a6, 981f
                  sltu         s6, t1, t2
964:              bgeu         tp, t6, 967f
                  srli         s6, s3, 6
                  addi         gp, a1, 1232
967:              add          s1, s8, a5
                  andi         t5, a1, 450
                  addi         t6, a2, -1563
970:              xori         t5, a5, -1667
                  sra          gp, s1, s4
                  or           gp, a0, s6
                  slti         a1, s11, 653
                  bne          sp, t1, 982f
                  xori         a4, s4, -1113
                  sra          s5, sp, t1
                  bgeu         t1, a4, 997f
                  sra          sp, t4, s1
                  la           s7, region_1+536 #start riscv_load_store_rand_instr_stream_9
                  nop
                  lb           sp, -164(s7)
                  lw           gp, 620(s7)
                  ori          t5, a2, 367
                  sb           s2, 389(s7)
                  sh           a7, 718(s7)
                  nop
                  lhu          s1, -226(s7)
                  ori          a0, s9, 770
                  lb           a6, 1245(s7)
                  sltu         a2, s0, s11
                  lb           s9, -439(s7)
                  sh           a1, 1090(s7)
                  lw           s1, -152(s7)
                  lb           gp, 795(s7)
                  xori         t4, ra, 1145
                  sb           s4, 630(s7)
                  lui          s4, 477748
                  lw           s9, 848(s7)
                  lhu          a2, 1160(s7)
                  sb           s6, -284(s7)
                  lw           a6, -268(s7)
                  addi         s8, a2, -840
                  srli         t2, t0, 4
                  lbu          zero, -12(s7)
                  sh           a5, 790(s7)
                  lb           a0, -267(s7)
                  srl          a1, a0, s5
                  srl          s4, a4, a6
                  sb           s5, 1237(s7)
                  sb           a6, 278(s7)
                  lb           a3, 383(s7)
                  sb           t2, 687(s7)
                  andi         t5, s0, 826
                  lh           s6, 586(s7)
                  lui          s6, 561770
                  lb           a4, -232(s7)
                  lbu          s4, 977(s7)
                  lb           s8, 1163(s7)
                  sb           a3, -403(s7)
                  slli         s9, ra, 31
                  sb           s0, 848(s7)
                  sb           t1, 649(s7) #end riscv_load_store_rand_instr_stream_9
                  bgeu         zero, t1, 994f
                  and          s4, gp, t1
981:              ori          t4, t2, -1665
982:              sll          s7, s4, a7
                  andi         a0, s6, -579
                  slti         s8, a7, 619
                  ori          zero, t1, 1100
                  lui          a3, 250163
                  srli         s6, s1, 16
                  addi         s1, a7, 793
                  sll          sp, t4, a1
                  blt          s11, a1, 991f
991:              xori         a5, t2, 553
                  beq          s2, a4, 1005f
                  blt          s7, a3, 1008f
994:              srai         s5, s3, 28
                  blt          s4, t1, 999f
                  bne          s5, s5, 1015f
997:              add          t3, a1, a4
                  bltu         ra, s7, 1014f
999:              slt          s1, a3, s5
                  xori         s2, t6, 1901
                  auipc        s6, 856790
                  addi         a5, s6, -594
                  andi         a3, ra, -1910
                  sra          a7, s7, t2
1005:             slt          s5, s0, a3
                  add          t1, s5, s11
                  andi         a4, a3, -918
1008:             slt          a2, t6, s10
                  srli         t3, a3, 10
                  lui          t1, 409143
                  blt          ra, s11, 1031f
                  xor          gp, t0, a1
                  ori          s7, a6, -1713
1014:             srli         t5, s10, 25
1015:             nop
                  bne          a1, s9, 1024f
                  bgeu         s10, t5, 1018f
1018:             add          s2, s1, s2
                  sub          s1, t6, t0
                  sub          s5, a6, a3
                  and          a0, zero, t0
                  xori         t5, s1, 1811
                  nop
1024:             sll          t2, a5, t2
                  auipc        t1, 313671
                  bltu         a0, t4, 1036f
                  xori         sp, s1, -595
                  srli         t3, t1, 13
                  sll          s7, t2, a1
                  srl          s4, t4, t5
1031:             sub          s1, a4, a1
                  slti         gp, s3, 8
                  add          t3, a2, a2
                  srl          s6, s10, t3
                  xori         s3, s0, 1710
1036:             blt          s1, t1, 1044f
                  sltu         s8, sp, tp
                  nop
                  nop
                  slti         s2, s0, -312
                  bltu         t1, a1, 1061f
                  blt          t2, tp, 1061f
                  blt          s8, t4, 1056f
1044:             srli         s7, a1, 31
                  bgeu         a5, a7, 1053f
                  sll          a6, a6, s5
                  addi         a2, gp, 1818
                  srli         a1, s5, 24
                  srli         s5, s8, 23
                  or           a7, s5, s9
                  and          a4, t3, s9
                  slli         s8, gp, 29
1053:             slti         t2, t1, 1532
                  and          a1, s0, s1
                  srli         s6, a6, 28
1056:             bltu         s8, a3, 1068f
                  nop
                  lui          zero, 290660
                  sltu         a4, a4, sp
                  sltu         t5, s7, zero
1061:             lui          s7, 943293
                  and          s8, t3, s2
                  bltu         a7, a3, 1083f
                  slti         a6, s3, 1691
                  or           a3, s7, t5
                  beq          t2, s2, 1086f
                  or           s3, a3, ra
1068:             addi         ra, t6, -1140
                  sra          s10, a5, a4
                  bne          sp, s11, 1086f
                  slli         s3, t5, 17
                  or           a3, a5, t0
                  bltu         s0, s0, 1086f
                  slt          a0, a4, sp
                  andi         s7, s4, 651
                  bltu         a4, s8, 1084f
                  sll          t6, s8, s3
                  auipc        a4, 952679
                  blt          t0, gp, 1094f
                  sra          a6, a0, a7
                  or           gp, s4, tp
                  andi         s5, s2, 801
1083:             addi         a4, gp, -390
1084:             lui          a6, 281517
                  xori         a1, s11, 493
1086:             sltu         s1, t4, gp
                  xori         s5, s5, -1684
                  sltiu        s7, s11, 835
                  beq          a3, s1, 1109f
                  ori          s8, gp, -1935
                  sra          s1, a6, s11
                  xor          a7, t4, zero
                  bne          a5, ra, 1094f
1094:             auipc        t3, 94180
                  bge          t2, tp, 1099f
                  nop
                  beq          t0, tp, 1100f
                  nop
1099:             xor          sp, s0, a3
1100:             sltu         s1, s9, t1
                  bgeu         s8, s3, 1102f
1102:             bge          s6, s8, 1111f
                  sltiu        a4, t0, 741
                  and          s5, t6, s4
                  sll          s8, t3, t3
                  slt          s1, t1, t6
                  srli         t4, a0, 22
                  sltu         s8, s3, s11
1109:             beq          t0, a4, 1124f
                  addi         a1, a3, 241
1111:             slli         s7, t6, 23
                  xori         t1, a5, -1400
                  and          zero, t1, s3
                  srl          s3, s6, sp
                  slti         t3, s4, -1467
                  bge          ra, a2, 1119f
                  blt          a3, s0, 1130f
                  sub          zero, s10, a2
1119:             srl          s8, sp, t6
                  andi         a6, a4, 62
                  sra          zero, t6, s3
                  sra          s4, s7, s11
                  sll          t1, a7, tp
1124:             addi         s9, t4, -84
                  addi         a1, a7, -542
                  sltu         a5, s4, a4
                  slli         s6, s7, 10
                  sltiu        t2, t1, 524
                  srai         s1, s8, 31
1130:             or           t3, a2, t1
                  bltu         s3, t2, 1142f
                  sub          s0, t6, t1
                  sra          t6, a3, s7
                  xor          a3, a2, s8
                  bltu         gp, s0, 1154f
                  sll          zero, s7, s10
                  or           s10, s11, t1
                  srl          a6, s6, s10
                  sltu         a7, t4, s8
                  xor          t3, s8, s2
                  ori          s2, s7, 2044
1142:             add          s3, t4, t1
                  srai         t4, s10, 4
                  srl          t2, t5, a1
                  sltu         s5, a0, s8
                  addi         s4, s9, -1714
                  or           a4, a1, s8
                  srai         s6, a6, 25
                  srai         zero, a0, 31
                  bne          a3, t1, 1166f
                  srli         s3, t5, 14
                  or           s9, ra, s3
                  slli         a1, t6, 9
1154:             slli         a4, ra, 26
                  xori         a5, t6, -1905
                  xori         a4, t3, 1687
                  srli         a2, s7, 23
                  slti         s0, t3, 648
                  andi         s6, s6, 1666
                  slli         s5, a1, 31
                  xor          a3, a7, s10
                  slt          a3, t1, a4
                  sll          t1, sp, a1
                  bgeu         s11, a4, 1174f
                  auipc        t1, 121362
1166:             or           a1, t5, a3
                  slti         s6, a2, 397
                  auipc        s6, 283318
                  slt          zero, a5, a1
                  srl          a6, s11, s7
                  srai         sp, t1, 10
                  slt          s10, s4, a4
                  sltiu        a2, s3, -797
1174:             andi         s1, a2, 1195
                  sub          t1, a4, t1
                  sltiu        t6, s11, -806
                  and          s1, s7, sp
                  srl          t4, t0, s10
                  slli         gp, t5, 17
                  sub          a3, s1, s0
                  sltiu        s7, a1, 979
                  lui          a5, 117846
                  slli         t1, s0, 23
                  nop
                  and          a7, t0, a4
                  add          t6, s10, ra
                  bltu         s3, a5, 1202f
                  addi         sp, zero, -1957
                  sub          s2, s5, s0
                  or           s8, s11, a0
                  bgeu         t4, s8, 1211f
                  and          a3, a5, ra
                  sub          a4, t1, a2
                  nop
                  slt          s8, a0, t1
                  sub          t6, s7, s7
                  slli         a0, a4, 23
                  srli         s9, a7, 27
                  sra          a1, s0, sp
                  sub          s0, s8, ra
                  andi         s0, a1, 17
1202:             sltiu        s9, s7, -1371
                  auipc        t4, 518159
                  bltu         s1, s11, 1212f
                  sub          s6, s5, a5
                  nop
                  sltu         s10, s8, s3
                  sub          t1, a0, s11
                  auipc        ra, 658393
                  slt          zero, t5, ra
1211:             srli         t1, a0, 13
1212:             bge          s1, ra, 1216f
                  xor          t1, sp, s0
                  slti         s2, a4, 558
                  bne          tp, t4, 1235f
1216:             lui          s4, 156683
                  xor          s0, s5, a1
                  sll          s3, t0, gp
                  andi         s0, a3, -78
                  slti         a1, zero, -347
                  xori         a6, s1, 1394
                  srl          s5, t0, s10
                  bne          sp, s2, 1234f
                  addi         a1, gp, -1186
                  slti         a6, t1, 1521
                  xori         s10, zero, -1925
                  bne          a6, a2, 1239f
                  bne          s5, a6, 1243f
                  xor          s10, s10, s8
                  srai         t1, s4, 16
                  slli         s8, s1, 17
                  blt          t2, ra, 1248f
                  srli         s0, sp, 30
1234:             nop
1235:             slti         t6, zero, -1454
                  add          a4, ra, t6
                  beq          t5, s8, 1238f
1238:             slt          s0, a3, a7
1239:             slt          a6, s9, gp
                  or           s9, a1, s9
                  and          a7, s9, t4
                  srai         t5, s1, 25
1243:             bgeu         s0, t6, 1259f
                  srli         s6, t1, 30
                  srai         a0, s5, 0
                  bgeu         a6, a6, 1266f
                  bltu         s0, a1, 1267f
1248:             slt          s4, s5, t0
                  xor          ra, t5, s1
                  or           a3, ra, t3
                  andi         zero, tp, -1377
                  and          a5, s1, zero
                  bltu         a0, s10, 1266f
                  lui          t1, 801405
                  sll          s4, t1, s9
                  beq          a5, s10, 1276f
                  sll          s2, t3, t3
                  bgeu         zero, a7, 1277f
1259:             addi         t6, a5, -1817
                  srli         t3, a4, 27
                  blt          a7, a6, 1269f
                  sll          gp, t1, a6
                  srli         t2, a5, 25
                  andi         sp, a3, 65
                  or           s7, s3, a6
1266:             ori          s8, a1, 997
1267:             srl          sp, gp, a6
                  slti         t4, t3, 689
1269:             bne          s10, t3, 1272f
                  bne          t6, t4, 1274f
                  bge          a7, tp, 1286f
1272:             sltiu        t4, zero, 539
                  or           s1, a6, s2
1274:             andi         a2, a6, -1111
                  beq          s11, sp, 1283f
1276:             sltiu        a6, a7, 28
1277:             bgeu         a7, s2, 1296f
                  slt          a3, a2, gp
                  srli         s9, a7, 30
                  xor          t1, tp, s2
                  blt          s7, zero, 1282f
1282:             nop
1283:             sltiu        a6, a4, 546
                  lui          sp, 996920
                  bge          s8, t1, 1293f
1286:             bgeu         t6, s5, 1299f
                  sub          s10, t0, s6
                  lui          s1, 938233
                  ori          s1, s5, 1869
                  sltiu        t3, tp, -572
                  sll          gp, a3, a0
                  srai         a4, s10, 30
1293:             bne          s2, tp, 1303f
                  and          a0, a3, sp
                  ori          ra, zero, -2048
1296:             bltu         a4, s3, 1316f
                  bge          a3, a3, 1306f
                  bgeu         ra, s2, 1301f
1299:             bne          a0, s9, 1312f
                  bne          t6, tp, 1320f
1301:             slti         s1, s0, -1059
                  bne          s4, t1, 1310f
1303:             srl          a3, s11, s6
                  bge          t3, ra, 1319f
                  addi         s10, s8, 750
1306:             slli         s10, s2, 20
                  srai         s2, s3, 6
                  nop
                  srli         a2, s4, 4
1310:             nop
                  xori         t5, a5, 908
1312:             slt          ra, s11, s4
                  srli         a3, a3, 2
                  auipc        s8, 211945
                  bge          s9, s7, 1319f
1316:             bge          s6, s4, 1336f
                  sltu         t3, a7, ra
                  bge          zero, s5, 1322f
1319:             srli         s9, s4, 23
1320:             sltu         s0, s9, sp
                  srai         s0, t1, 27
1322:             bne          a7, a0, 1335f
                  blt          t1, s10, 1331f
                  lui          t4, 680700
                  sltiu        a0, t0, -680
                  slti         s8, s5, 632
                  slti         a4, t0, 1576
                  srl          s10, t4, sp
                  andi         sp, t3, 520
                  bne          sp, s9, 1346f
1331:             bne          s5, s10, 1344f
                  sltiu        zero, t4, -437
                  lui          a0, 128409
                  bne          s5, s8, 1344f
1335:             addi         zero, s10, 1387
1336:             or           a0, a4, a5
                  slt          s0, t1, s7
                  addi         a5, t0, -1374
                  slli         ra, s7, 31
                  srli         t4, a6, 5
                  slti         a5, t3, 1400
                  bgeu         s6, s2, 1362f
                  bltu         t0, t0, 1362f
1344:             bltu         s6, s1, 1352f
                  xori         s5, a6, -140
1346:             slti         s3, s2, 7
                  nop
                  slti         s1, s11, 411
                  xori         a7, a5, -1428
                  srl          t4, t1, s0
                  sra          s8, s3, s5
1352:             bltu         t5, a1, 1361f
                  bltu         t6, a6, 1365f
                  blt          tp, a0, 1374f
                  srli         a1, s0, 2
                  sltiu        t2, t5, 88
                  blt          sp, s4, 1376f
                  andi         a1, s4, -972
                  bge          s7, s0, 1379f
                  sltu         a6, t3, s6
1361:             lui          a2, 123442
1362:             or           s10, gp, a7
                  sra          s2, zero, s3
                  blt          zero, s6, 1368f
1365:             srli         s2, t2, 10
                  bne          s3, s6, 1382f
                  sub          t6, s10, s0
1368:             sltu         s9, a6, tp
                  bgeu         a6, s3, 1389f
                  addi         s7, s4, -989
                  xor          s10, s5, a5
                  xor          s6, t0, t4
                  andi         sp, ra, -1111
1374:             blt          sp, ra, 1382f
                  slt          s3, a4, s10
1376:             nop
                  slli         a5, s6, 10
                  srl          a3, s4, t2
1379:             bgeu         t0, a5, 1399f
                  srl          a2, t0, a5
                  auipc        gp, 320899
1382:             srl          a2, t6, s10
                  bltu         ra, tp, 1386f
                  xor          a7, t2, t3
                  slli         s9, t4, 12
1386:             xori         t2, a2, -671
                  sltu         a7, s2, s8
                  la           a3, region_0+279 #start riscv_load_store_rand_instr_stream_17
                  and          s0, ra, t4
                  lhu          t2, 185(a3)
                  sb           a5, -104(a3)
                  andi         t3, a3, 2019
                  lb           ra, 256(a3)
                  or           a5, t6, t5
                  slti         s6, s6, -1438
                  sb           a3, -21(a3)
                  sw           t1, 233(a3)
                  lbu          s7, -52(a3)
                  lhu          t5, 55(a3)
                  lbu          s10, 104(a3)
                  add          s4, a1, t0
                  sra          gp, a0, s2
                  srli         a2, s0, 21
                  auipc        ra, 479976
                  sw           s9, 9(a3)
                  xori         a2, t1, 1631
                  sb           t5, -166(a3)
                  lhu          s9, 151(a3)
                  sb           a6, 232(a3)
                  sltiu        s10, a1, -1435
                  auipc        a7, 975647
                  lui          s4, 836394
                  slt          s9, t5, a7
                  sb           ra, 126(a3)
                  slti         t4, a2, -2035
                  slli         a0, a4, 22
                  srai         s5, a4, 26
                  sb           s7, -30(a3)
                  add          t3, tp, t0
                  addi         s1, s8, 215
                  lb           gp, 216(a3)
                  lh           t1, 199(a3)
                  slli         a1, t6, 21
                  lhu          s6, 3(a3)
                  lbu          s10, 256(a3)
                  srli         s3, s10, 11
                  lhu          a4, 115(a3)
                  srai         t6, sp, 28
                  sra          a6, t1, ra
                  sltiu        ra, t1, 2004
                  slt          a1, tp, s0
                  lbu          a4, -86(a3)
                  lb           s10, -4(a3)
                  sltu         s4, t5, tp
                  sb           s1, -252(a3) #end riscv_load_store_rand_instr_stream_17
                  slti         s5, t4, -1224
1389:             sll          t1, s2, s1
                  addi         t5, s10, 1383
                  srai         a7, t2, 18
                  srli         sp, a0, 20
                  or           ra, s11, a0
                  beq          s0, s4, 1395f
1395:             slli         a5, s1, 29
                  addi         s6, t2, 641
                  add          s8, s9, s8
                  sltu         a6, a4, s0
1399:             addi         a1, a7, 289
                  slt          t1, gp, s10
                  and          s4, t4, a5
                  srai         a3, a0, 0
                  srai         a5, a2, 14
                  addi         sp, tp, -1381
                  sltiu        s1, gp, -762
                  xor          sp, t4, s8
                  srai         a4, a1, 15
                  sub          t2, s2, t2
                  nop
                  sltu         s2, t3, s8
                  lui          sp, 958986
                  sra          a2, t1, s4
                  nop
                  slli         s4, a6, 14
                  xori         s8, t3, 1773
                  ori          ra, s4, 958
                  xori         t5, a4, -1866
                  sub          t5, a4, t6
                  sltiu        a3, s4, 1963
                  nop
                  sltiu        s0, a0, -227
                  sll          t4, t6, a3
                  sltu         a0, s8, s9
                  ori          s5, s9, -1634
                  bne          a2, a0, 1426f
1426:             sll          s10, a5, s2
                  bne          s8, s9, 1435f
                  auipc        gp, 172435
                  beq          sp, t0, 1442f
                  srli         s9, s6, 7
                  and          t1, s4, t3
                  addi         s2, s5, -656
                  ori          a3, s10, 1594
                  srl          sp, t5, s1
1435:             bne          tp, s0, 1455f
                  srli         t4, sp, 4
                  bgeu         sp, s0, 1452f
                  slt          a4, s11, s10
                  ori          a3, a5, 33
                  and          s2, s7, t3
                  xori         t2, a0, -826
1442:             bgeu         t1, s5, 1457f
                  and          t6, t4, gp
                  andi         gp, t5, 1846
                  blt          a0, a1, 1448f
                  srli         t1, ra, 24
                  sll          t6, s2, s10
1448:             nop
                  srai         a4, t4, 19
                  nop
                  sra          s4, s9, a2
1452:             addi         zero, sp, 827
                  andi         s3, s1, 322
                  srl          s4, ra, s4
1455:             sltu         t3, tp, ra
                  addi         a1, a5, -587
1457:             nop
                  srai         t4, s10, 14
                  blt          s2, a1, 1470f
                  xor          a2, s1, a6
                  nop
                  lui          a5, 791595
                  bgeu         s11, a4, 1478f
                  bne          a6, s11, 1468f
                  addi         gp, a2, -1373
                  lui          s4, 22928
                  sub          t4, a1, t4
1468:             slt          s4, s4, s11
                  sll          t4, t1, a5
1470:             lui          s4, 42791
                  sra          a3, s7, s3
                  xor          s9, zero, s11
                  srl          s3, t4, tp
                  srai         sp, a7, 19
                  slli         s7, s4, 16
                  beq          s7, t5, 1491f
                  sll          a4, s3, s7
1478:             nop
                  slti         zero, s8, -889
                  beq          a6, s0, 1500f
                  bge          s8, a0, 1500f
                  srai         s3, a3, 9
                  blt          s8, s9, 1496f
                  ori          zero, s7, 500
                  or           a6, s11, t6
                  beq          s2, s2, 1489f
                  srli         a7, t3, 2
                  slti         a6, sp, -1586
1489:             bge          a3, t0, 1490f
1490:             slti         s8, a0, 1329
1491:             bltu         a3, t3, 1506f
                  bne          t4, tp, 1505f
                  bltu         gp, t6, 1508f
                  nop
                  srli         a6, s5, 10
1496:             addi         s3, gp, 1709
                  srl          t1, s5, zero
                  srli         a5, a5, 31
                  bgeu         a2, s3, 1519f
1500:             add          s4, s8, gp
                  xori         t2, t2, 1658
                  sra          s7, s8, s10
                  sltiu        s6, t6, -635
                  lui          a2, 932906
1505:             sub          sp, a0, s3
1506:             sltiu        zero, a0, 453
                  sltu         a5, t4, a3
1508:             xor          s4, t0, t3
                  xori         s5, s11, 1976
                  srl          s2, a4, a4
                  srli         a2, s1, 20
                  sltu         a6, a5, s9
                  bgeu         s0, tp, 1521f
                  blt          t4, t5, 1515f
1515:             bltu         t2, zero, 1531f
                  lui          s3, 504439
                  srli         s5, ra, 8
                  srli         s0, a3, 10
1519:             bge          a7, zero, 1539f
                  srai         a3, s6, 1
1521:             bltu         t4, zero, 1529f
                  add          a2, tp, s8
                  xori         s7, t3, -1770
                  or           s1, a5, t1
                  and          gp, a6, tp
                  sltiu        a0, a4, 249
                  andi         a5, s5, 1316
                  lui          s2, 812170
1529:             srl          s10, s7, gp
                  add          a6, t2, t5
1531:             nop
                  auipc        ra, 946637
                  slti         ra, s1, 968
                  sltu         t5, s1, t4
                  beq          a4, s6, 1546f
                  or           s8, gp, t4
                  xori         a7, s10, 577
                  sltiu        a1, s9, -437
1539:             bgeu         s11, s9, 1559f
                  auipc        s8, 932787
                  sub          s1, t5, t3
                  srai         s1, a1, 22
                  xori         t6, a1, -336
                  bne          t5, s4, 1554f
                  bgeu         a4, a5, 1565f
1546:             bne          s3, s2, 1554f
                  and          s7, gp, zero
                  auipc        a2, 396942
                  bgeu         t2, s3, 1552f
                  bltu         gp, a6, 1566f
                  bltu         a6, a7, 1571f
1552:             xor          s5, t5, s10
                  addi         a2, t2, 1879
1554:             sra          s4, t2, s1
                  slti         s8, s6, -1358
                  ori          a1, t2, 666
                  auipc        t1, 15346
                  xori         s5, s2, -309
1559:             sra          a1, s1, s3
                  bltu         s8, a1, 1573f
                  nop
                  slli         a1, s2, 27
                  addi         a0, a0, 28
                  srai         ra, a6, 27
1565:             srl          s3, s1, t6
1566:             addi         ra, t3, 531
                  slt          s1, s3, a5
                  sltiu        t3, s9, -140
                  add          a4, a4, a7
                  beq          s10, t0, 1589f
1571:             bgeu         gp, a7, 1580f
                  ori          s5, t4, 836
1573:             srl          a4, s8, s8
                  blt          t1, a2, 1586f
                  andi         gp, s6, -1605
                  srai         a0, a6, 29
                  bgeu         a5, a6, 1581f
                  addi         a7, s3, -1184
                  bne          a4, t5, 1587f
1580:             nop
1581:             nop
                  slli         a4, t0, 14
                  andi         a7, a0, 1676
                  nop
                  blt          tp, a4, 1598f
1586:             sltiu        a5, t4, 2017
1587:             sll          t1, a7, s0
                  add          a6, t4, s11
1589:             slli         s6, a7, 4
                  auipc        t6, 704430
                  bge          a6, sp, 1606f
                  bge          tp, t5, 1605f
                  xori         ra, t0, 1474
                  beq          a2, s6, 1614f
                  slli         sp, s1, 22
                  sll          sp, t1, t1
                  srai         gp, t3, 24
1598:             xor          s1, t1, t4
                  sub          s0, a2, s1
                  or           s5, s3, s7
                  slti         t2, t0, 128
                  sltu         s3, a4, tp
                  add          s7, a0, a0
                  sra          t1, s9, t6
1605:             sll          a7, s6, s6
1606:             sll          s6, t6, a3
                  bgeu         s4, ra, 1627f
                  add          gp, sp, s5
                  bge          t5, a1, 1628f
                  srl          a7, a5, s4
                  xor          s3, s9, t6
                  sll          s3, a4, ra
                  sra          a2, a7, t2
1614:             and          a1, s4, t4
                  bge          a7, a0, 1618f
                  auipc        s10, 949455
                  ori          a3, a5, -174
1618:             blt          gp, t2, 1638f
                  srl          ra, s5, s10
                  sub          a5, s0, s7
                  slli         sp, gp, 18
                  bne          t3, gp, 1633f
                  xor          s10, sp, a0
                  sltu         a5, t6, s8
                  add          ra, ra, a5
                  bltu         a1, a0, 1641f
1627:             bltu         a1, gp, 1635f
1628:             beq          t0, a1, 1637f
                  or           t2, s9, a6
                  blt          a1, t4, 1640f
                  sra          t1, a2, a3
                  bltu         t6, a7, 1645f
1633:             bgeu         s5, s9, 1652f
                  slt          gp, t4, s11
1635:             slli         s3, s7, 3
                  bge          s5, t2, 1648f
1637:             and          a3, zero, a5
1638:             add          t4, s6, a0
                  sltu         s2, sp, t6
1640:             blt          a5, t4, 1641f
1641:             bne          a5, t4, 1649f
                  srli         a2, a2, 2
                  sra          t4, s9, a4
                  slti         zero, s3, -369
1645:             bltu         a5, t6, 1648f
                  lui          s6, 645548
                  sltu         gp, s4, t4
1648:             blt          s2, a2, 1664f
1649:             add          s3, a4, t5
                  or           a5, ra, tp
                  xori         t1, zero, 1085
1652:             srai         s0, s6, 17
                  add          s3, t5, s1
                  bge          s0, a4, 1658f
                  sltiu        zero, t5, -392
                  srli         t6, s2, 3
                  andi         a1, gp, 768
1658:             bltu         a5, tp, 1674f
                  sll          s1, s6, a6
                  sra          a5, s2, s3
                  bge          a3, t0, 1669f
                  beq          t1, a0, 1682f
                  bne          a2, sp, 1678f
1664:             bltu         s10, a1, 1684f
                  sltiu        t5, s3, -582
                  or           zero, s5, s11
                  beq          a5, gp, 1675f
                  srli         a7, t4, 17
1669:             xor          s3, s5, a6
                  sltu         s9, t4, s11
                  or           t3, a1, zero
                  blt          zero, a7, 1676f
                  add          s5, s0, s7
1674:             blt          a5, s4, 1675f
1675:             nop
1676:             slli         s10, s10, 5
                  sltiu        s3, s7, -1344
1678:             srai         a4, a2, 22
                  slt          s2, s11, s11
                  bltu         s2, t5, 1700f
                  add          t4, t2, t0
1682:             ori          s1, s9, -714
                  addi         a3, s11, -367
1684:             sll          s5, s1, s3
                  and          a7, s10, a6
                  andi         zero, s5, -1726
                  sra          s5, a3, zero
                  auipc        a3, 1022644
                  slti         zero, s8, -839
                  bge          a0, t3, 1703f
                  slti         s4, s10, 166
                  and          s1, sp, a1
                  slti         a4, s5, -996
                  auipc        zero, 813506
                  xori         gp, a0, -5
                  slli         a7, s3, 29
                  sltiu        s8, t0, 68
                  sub          t3, a6, s3
                  sub          s7, tp, sp
1700:             ori          s5, s0, -1281
                  sltu         t2, s1, t5
                  auipc        a4, 542363
1703:             add          s4, s5, s0
                  ori          s3, t6, 792
                  blt          s11, t4, 1706f
1706:             bgeu         s5, s4, 1716f
                  or           gp, a7, ra
                  bgeu         s4, a3, 1728f
                  bltu         s9, s1, 1717f
                  slt          s4, a3, ra
                  sltu         s1, s11, gp
                  nop
                  or           t6, sp, gp
                  or           zero, ra, t3
                  or           a7, s3, t2
1716:             or           t6, a6, t4
1717:             sltiu        a7, t1, 867
                  slt          a5, s0, s4
                  lui          s10, 953787
                  lui          a1, 933000
                  bgeu         tp, a4, 1729f
                  slli         s10, s5, 17
                  or           t4, s6, gp
                  and          a5, s1, s6
                  srl          a4, s7, s8
                  slli         s10, a3, 4
                  sll          a7, a2, s8
1728:             sub          s0, s1, s8
1729:             sub          t4, t1, s3
                  sub          zero, gp, a2
                  bne          s10, s9, 1734f
                  la           s10, region_1+1696 #start riscv_load_store_rand_instr_stream_12
                  sll          sp, a5, s8
                  lbu          a4, 209(s10)
                  lbu          a5, -1(s10)
                  ori          a1, s0, 1235
                  slti         gp, t5, -418
                  sb           tp, 249(s10)
                  andi         gp, s10, -1614
                  lb           s5, 61(s10)
                  slt          s4, a4, t4
                  srl          sp, zero, s0
                  srai         gp, t6, 2
                  xor          t4, t2, t5
                  lb           zero, 85(s10)
                  andi         a2, s4, 140
                  lhu          a1, -142(s10)
                  lb           s0, -86(s10)
                  add          a6, s2, a7
                  lb           t5, 75(s10)
                  sb           a5, 123(s10)
                  sb           gp, -152(s10)
                  sltiu        t5, a7, 568
                  sra          a6, t5, s6
                  xori         t6, s11, 1086
                  lbu          a3, 29(s10)
                  nop
                  lbu          a1, 45(s10)
                  and          zero, sp, s7
                  sb           s7, 181(s10)
                  lbu          a0, -77(s10)
                  sb           a5, -229(s10)
                  lbu          a1, -242(s10)
                  or           a3, gp, a1
                  lbu          t1, -253(s10)
                  lbu          s5, -200(s10)
                  ori          a3, tp, -605
                  slt          s2, a5, a1
                  lw           s4, 12(s10)
                  srli         s7, s10, 10
                  lbu          t2, -203(s10) #end riscv_load_store_rand_instr_stream_12
                  add          s0, s5, t6
                  lui          a0, 146341
1734:             xor          s2, a3, a7
                  sll          s4, t2, s3
                  bltu         s7, a5, 1740f
                  bltu         s1, a1, 1757f
                  and          t4, t2, zero
                  bge          s8, s0, 1740f
1740:             sll          t4, sp, sp
                  srl          gp, tp, gp
                  slli         a2, a0, 13
                  sra          s7, t0, a5
                  slt          s10, t5, sp
                  ori          a6, s2, 1373
                  xori         t6, s5, 1130
                  slli         s1, s9, 6
                  auipc        s6, 1006059
                  srai         s2, s5, 2
                  bne          s1, a1, 1758f
                  sltu         ra, a4, t6
                  addi         a2, a6, -1317
                  sra          s3, s5, s5
                  slli         a6, a1, 12
                  andi         s3, t5, -1209
                  sltu         sp, s3, a1
1757:             bge          s1, s1, 1772f
1758:             srai         a4, s1, 16
                  blt          s11, t1, 1768f
                  bgeu         s10, zero, 1775f
                  add          s1, a4, tp
                  add          a6, s4, s11
                  bge          s9, s11, 1767f
                  and          t6, s10, s11
                  bgeu         t4, a2, 1773f
                  bltu         s5, t4, 1786f
1767:             andi         a6, s1, 190
1768:             addi         sp, s7, 1050
                  slti         gp, t3, -1060
                  sra          t2, zero, s7
                  bgeu         s2, zero, 1774f
1772:             ori          a2, a5, -1348
1773:             addi         a4, a0, 1190
1774:             bge          a6, s11, 1787f
1775:             sltu         a4, tp, s5
                  slt          a7, tp, s9
                  andi         zero, a7, -2048
                  beq          s8, s3, 1794f
                  bltu         s3, t1, 1799f
                  srli         t4, s0, 25
                  lui          a5, 959943
                  bge          s9, s11, 1802f
                  xori         gp, s0, -1368
                  srli         a2, s8, 14
                  xor          a5, s4, a5
1786:             add          t6, a1, t1
1787:             slt          a0, s10, t0
                  bgeu         s11, t6, 1808f
                  bgeu         tp, a5, 1800f
                  bne          s1, t0, 1806f
                  xori         a7, a6, 1383
                  addi         t2, t1, -1614
                  sltiu        gp, t5, -585
1794:             ori          a1, ra, -1236
                  nop
                  slli         sp, s11, 8
                  lui          a6, 640757
                  bltu         tp, s0, 1811f
1799:             slt          a6, ra, s11
1800:             sltu         s1, s6, a7
                  andi         t2, t0, 845
1802:             xor          a0, s0, s4
                  sltiu        ra, tp, -1130
                  slti         s8, t4, -871
                  beq          s9, t1, 1820f
1806:             xor          sp, s6, t4
                  blt          s1, t1, 1826f
1808:             sll          a6, t1, a6
                  bltu         t2, s1, 1821f
                  sll          a5, a1, t1
1811:             xor          t3, a6, gp
                  bltu         t0, a7, 1831f
                  srl          s5, a1, a2
                  blt          t5, s11, 1818f
                  slli         a0, a1, 0
                  bltu         s6, zero, 1817f
1817:             lui          a2, 492749
1818:             beq          a3, s0, 1837f
                  bge          s7, a0, 1827f
1820:             slti         s5, a0, -1774
1821:             bltu         a4, tp, 1841f
                  srli         a0, a5, 27
                  bge          a1, t1, 1827f
                  lui          s7, 127888
                  srli         ra, tp, 1
1826:             slti         zero, s2, 1007
1827:             bne          a4, t5, 1847f
                  srli         s7, a6, 9
                  lui          s10, 912391
                  sltiu        s7, s2, -1977
1831:             addi         a4, gp, -969
                  addi         t2, s11, 1660
                  xor          s6, t2, t4
                  bne          s8, s6, 1835f
1835:             add          a1, s6, sp
                  bge          s8, tp, 1856f
1837:             sub          ra, a1, s1
                  sltu         a2, tp, t3
                  nop
                  auipc        a7, 1043125
1841:             slti         sp, s8, -1917
                  beq          t3, s6, 1862f
                  add          t4, a7, t5
                  add          a2, zero, s11
                  xor          zero, t0, ra
                  addi         s10, a0, 1632
1847:             bne          s11, t0, 1856f
                  sra          a5, a1, tp
                  xor          a2, a6, s1
                  or           s0, a1, s11
                  lui          a0, 691332
                  sra          s1, s5, t4
                  auipc        t3, 917036
                  bltu         t5, t6, 1857f
                  xor          s2, zero, a4
1856:             andi         zero, a2, 2001
1857:             bgeu         s6, a5, 1870f
                  sltu         s10, s3, a0
                  ori          t2, a3, -1798
                  srli         a5, t2, 19
                  xori         zero, t6, 843
1862:             sltiu        zero, t3, 1107
                  blt          ra, s3, 1874f
                  add          ra, a5, t5
                  ori          sp, s7, 60
                  slli         s8, sp, 18
                  slti         gp, t1, -1300
                  slt          a2, s2, a0
                  slt          zero, gp, t3
1870:             ori          zero, s4, -1042
                  xor          t5, s2, a5
                  srl          s1, s4, t0
                  bge          s6, a3, 1893f
1874:             add          a7, sp, a0
                  srai         s6, s10, 29
                  bne          t1, s11, 1889f
                  bne          s10, s0, 1885f
                  bne          t4, s5, 1894f
                  srli         s5, s1, 29
                  blt          s5, s9, 1893f
                  blt          s2, s8, 1889f
                  add          s4, s5, s9
                  xori         a1, a4, -1812
                  lui          t4, 714385
1885:             bltu         a2, s10, 1904f
                  slt          a3, s5, t4
                  sltu         zero, a4, t3
                  slli         a0, ra, 26
1889:             xor          s3, t5, s5
                  srl          s4, s5, gp
                  srai         s1, s11, 22
                  bne          t4, a3, 1907f
1893:             srl          s8, a6, t1
1894:             lui          sp, 362257
                  bge          s10, a3, 1905f
                  or           a4, a4, tp
                  sltiu        a3, t6, 1264
                  sltiu        t5, s10, 1279
                  sub          t4, s10, s0
                  bgeu         s5, a2, 1915f
                  auipc        a7, 407318
                  add          s1, s0, s3
                  sra          t6, a3, t0
1904:             sra          t6, s10, s11
1905:             srl          t1, s0, tp
                  auipc        s10, 947715
1907:             sltiu        s2, s5, -692
                  srai         s1, s1, 9
                  nop
                  xori         s0, a2, -1778
                  auipc        s5, 609230
                  sll          s0, a5, a1
                  beq          gp, s5, 1916f
                  sll          gp, a3, a1
1915:             xori         t1, t0, 495
1916:             srl          ra, s9, a6
                  srai         t4, s7, 10
                  nop
                  slli         a0, t3, 20
                  sltu         t6, a2, a1
                  and          a5, t6, s2
                  sll          a1, a3, a1
                  sltu         a3, t2, a0
                  xor          a1, a1, t2
                  bgeu         a6, a2, 1937f
                  and          s7, a7, a5
                  andi         sp, s8, 1761
                  and          t2, t3, a1
                  ori          s0, t4, -274
                  bne          ra, a4, 1946f
                  sll          a1, s5, t0
                  sltu         s9, s2, s11
                  sltiu        t5, s6, -1703
                  auipc        a2, 95165
                  sll          gp, s0, a0
                  slt          t4, s5, s9
1937:             bltu         t5, sp, 1952f
                  andi         a3, a1, -143
                  blt          s10, tp, 1959f
                  xor          a6, a4, zero
                  lui          s6, 941856
                  lui          s3, 757075
                  addi         t4, s10, 1986
                  slt          gp, s8, t1
                  srai         s0, zero, 26
1946:             slli         t6, s4, 12
                  srai         t6, a5, 25
                  add          a4, s8, s6
                  beq          t4, s11, 1957f
                  slti         t1, ra, 1190
                  srl          a5, s8, s5
1952:             beq          s0, a0, 1955f
                  sltu         s8, a6, s11
                  addi         s2, s5, -2027
1955:             slti         s1, a6, 1484
                  srli         t3, zero, 9
1957:             bltu         t1, s8, 1976f
                  bltu         t0, s5, 1968f
1959:             sll          ra, s6, s11
                  andi         s2, a0, -1871
                  srli         s0, gp, 15
                  xori         s7, s11, 1309
                  or           s6, t3, s9
                  bgeu         t0, t0, 1979f
                  beq          a2, s2, 1978f
                  blt          s0, s9, 1969f
                  xori         s1, a1, -1912
1968:             andi         zero, t3, -1932
1969:             slti         zero, t4, 1392
                  or           ra, a4, s2
                  srai         a7, t0, 6
                  srai         s2, t0, 12
                  bgeu         zero, t0, 1984f
                  sltiu        zero, tp, 1364
                  sltu         a6, t2, s5
1976:             sll          a1, s4, s7
                  srl          a0, s10, t4
1978:             lui          gp, 941637
1979:             xor          s3, a2, s7
                  sltu         s3, s4, a6
                  bne          a4, s4, 1997f
                  slli         zero, t2, 10
                  and          a6, t4, sp
1984:             srl          t1, sp, ra
                  slli         a6, a4, 15
                  and          a3, a1, s4
                  srai         gp, t6, 10
                  sll          t2, a3, a5
                  blt          t4, t1, 2005f
                  blt          a2, t2, 2005f
                  sll          s7, zero, s10
                  bgeu         sp, s0, 2012f
                  bltu         s2, a0, 1994f
1994:             auipc        a4, 554691
                  bgeu         a2, t4, 2007f
                  slli         a0, s0, 5
1997:             beq          t5, s10, 2017f
                  slti         a2, ra, 1026
                  slt          a0, s10, t6
                  or           a6, a3, s11
                  or           s8, a1, ra
                  sltu         zero, t2, t3
                  bgeu         a4, a0, 2011f
                  bge          tp, a3, 2008f
2005:             sub          a7, a1, t3
                  slti         a5, t6, -462
2007:             auipc        s0, 223748
2008:             beq          s11, s9, 2028f
                  slt          t5, s3, s5
                  xori         a1, sp, 359
2011:             add          a7, s1, tp
2012:             xori         s6, s2, -1942
                  lui          t2, 8929
                  add          a1, sp, s0
                  auipc        gp, 1006390
                  srai         t5, sp, 19
2017:             ori          zero, t4, 490
                  bgeu         s1, a7, 2026f
                  sltu         s7, t1, a2
                  sltu         t1, s6, a7
                  bne          a0, s5, 2041f
                  xor          a0, s7, s2
                  bltu         a1, s6, 2031f
                  xor          t3, s8, ra
                  lui          s1, 178470
2026:             ori          a0, a6, -1204
                  xori         a2, s4, 1734
2028:             auipc        t3, 1042977
                  sltu         s9, t0, a5
                  and          t2, s2, s10
2031:             or           t5, t1, s0
                  auipc        gp, 613830
                  addi         s10, t4, -1935
                  sltiu        a3, a0, -690
                  slli         t5, a5, 8
                  srai         s3, s11, 6
                  lui          s5, 43873
                  bne          s5, s11, 2051f
                  add          s3, a7, t0
                  sltiu        gp, s9, 1749
2041:             srl          t2, a2, tp
                  xor          a1, sp, s7
                  add          s4, a6, s1
                  sltiu        a4, s11, 704
                  bgeu         s4, t4, 2065f
                  andi         a7, a1, -897
                  slti         s1, gp, 1490
                  blt          zero, a0, 2068f
                  sub          s6, a5, a5
                  sltu         a0, a0, s3
2051:             slt          t1, s1, a1
                  bgeu         a1, a2, 2061f
                  xor          s2, s2, s4
                  auipc        a4, 220179
                  la           sp, region_0+1707 #start riscv_load_store_rand_instr_stream_1
                  addi         s3, s5, -368
                  lbu          a1, -250(sp)
                  or           ra, s6, s6
                  andi         t1, s1, -657
                  nop
                  xori         s8, s3, 507
                  lui          s6, 760345
                  sub          s3, a5, a3
                  lbu          a3, -186(sp)
                  xor          a4, a6, s7
                  lb           zero, -240(sp)
                  lbu          zero, -12(sp)
                  sltu         a6, s1, s1
                  auipc        a2, 539763
                  addi         ra, a6, 1748
                  lh           a4, -235(sp)
                  sll          t5, gp, t4
                  slt          s4, s5, a7
                  sb           sp, 95(sp)
                  srai         a5, t6, 22
                  sb           s4, 8(sp)
                  lbu          a4, -164(sp)
                  add          ra, gp, gp
                  and          gp, zero, a7
                  slti         s7, s4, -869
                  ori          a6, t5, -72
                  lui          s1, 347967
                  lbu          a0, -146(sp)
                  sub          t1, t0, a4
                  lbu          s2, -46(sp)
                  sb           t1, 146(sp)
                  xori         s2, gp, -1878
                  sb           a3, 44(sp)
                  lh           s2, -75(sp)
                  lb           t2, -210(sp)
                  xor          a3, a6, s1
                  srli         a7, a3, 11
                  add          gp, s2, s8
                  addi         a1, gp, -1878
                  lbu          a0, 107(sp)
                  lhu          a0, 105(sp)
                  slt          a4, s7, s2
                  addi         a6, s4, -585
                  and          s8, gp, s11
                  srai         t4, a3, 9
                  lw           a5, -175(sp)
                  lbu          t1, -120(sp) #end riscv_load_store_rand_instr_stream_1
                  slt          a6, s7, ra
                  andi         a4, a5, -343
                  ori          s1, a5, -1360
                  slt          a6, t1, a0
                  blt          t1, t2, 2067f
                  bgeu         t0, a7, 2061f
2061:             nop
                  or           sp, s5, s11
                  srl          s6, a0, s11
                  sltu         t1, a7, a3
2065:             xor          sp, s7, a0
                  bgeu         s4, a0, 2081f
2067:             sra          s4, a4, s1
2068:             or           s2, sp, zero
                  ori          a5, s7, 1412
                  and          a2, t3, t5
                  sll          t5, s9, s10
                  xor          a4, s9, sp
                  srl          a6, s5, a1
                  slt          a3, ra, gp
                  auipc        t6, 891416
                  and          a1, t6, a1
                  bgeu         a3, s6, 2090f
                  srl          s5, a3, sp
                  xori         s5, zero, -1919
                  sub          gp, a2, t1
2081:             andi         a4, s4, -278
                  srli         s5, a0, 17
                  sll          s9, a5, a3
                  blt          t6, s5, 2103f
                  xori         t4, zero, -1719
                  lui          a6, 538094
                  srai         s6, t6, 24
                  beq          s4, t5, 2092f
                  bge          s6, zero, 2104f
2090:             add          ra, s7, s9
                  sra          t4, t6, s5
2092:             add          sp, a1, a6
                  bne          a0, s2, 2101f
                  ori          a5, a7, 1131
                  srli         a0, t3, 24
                  ori          t2, a1, -1213
                  sub          s8, a7, s10
                  bne          s2, a3, 2111f
                  lui          s0, 615054
                  xori         a1, s2, -426
2101:             slt          a2, s2, t3
                  bltu         a3, s9, 2112f
2103:             sltiu        a1, s9, -935
2104:             add          zero, a3, s9
                  auipc        a4, 589936
                  addi         s10, s2, 1049
                  bne          ra, s0, 2122f
                  xori         s5, a1, -333
                  srl          s0, s6, tp
                  srli         t3, a0, 0
2111:             sltu         a6, t4, a6
2112:             nop
                  bne          s3, s1, 2133f
                  nop
                  slti         s3, s11, 1364
                  slti         s6, zero, -411
                  bne          a5, tp, 2133f
                  beq          s8, t1, 2122f
                  or           zero, t1, s9
                  srai         a4, t4, 8
                  and          s7, s2, a0
2122:             addi         a6, s5, -14
                  srai         s9, a2, 2
                  sltu         a3, s1, a5
                  add          a5, a3, t3
                  bgeu         s8, a1, 2129f
                  slti         a0, s2, 1097
                  bgeu         sp, s1, 2131f
2129:             bgeu         tp, a5, 2149f
                  addi         sp, t3, 1512
2131:             beq          t6, ra, 2151f
                  slli         t3, t1, 19
2133:             bgeu         s6, s9, 2148f
                  bge          a5, s10, 2147f
                  ori          a4, a5, 869
                  slti         t6, s1, -1651
                  ori          t3, s0, 943
                  or           t3, t3, tp
                  auipc        t2, 267817
                  sltu         s10, s9, t4
                  or           a5, s5, s8
                  bne          gp, a0, 2146f
                  sltiu        s4, s5, 1929
                  sub          s1, a2, gp
                  sub          gp, a4, gp
2146:             sra          s7, s4, t4
2147:             sra          s3, s0, t3
2148:             sltiu        gp, a1, 1967
2149:             lui          a1, 611258
                  nop
2151:             blt          t5, s9, 2159f
                  sll          s8, a6, t0
                  lui          s8, 565231
                  sll          s7, zero, ra
                  blt          zero, s6, 2168f
                  and          s8, a0, tp
                  slti         s4, a0, 1320
                  addi         t5, a1, -513
2159:             addi         s5, gp, -629
                  sll          s1, a0, s8
                  sub          a1, a0, s4
                  sltu         s9, a4, s8
                  bgeu         t6, s10, 2183f
                  slt          zero, s1, s1
                  auipc        ra, 499671
                  blt          s10, t6, 2185f
                  bge          s7, zero, 2179f
2168:             srli         s5, a3, 6
                  srai         zero, t0, 13
                  bge          t2, a1, 2178f
                  bge          s5, a2, 2172f
2172:             bne          a3, s7, 2183f
                  srai         a4, zero, 17
                  sra          t1, s11, s5
                  srai         s1, ra, 1
                  add          a2, t4, s0
                  xori         a1, zero, 933
2178:             slli         t4, gp, 11
2179:             sll          a4, s11, sp
                  la           sp, region_0+1069 #start riscv_load_store_rand_instr_stream_4
                  sb           a6, -51(sp)
                  slti         s6, s7, 31
                  xori         s2, a6, -1437
                  slli         a1, a5, 5
                  lbu          s2, -10(sp)
                  add          a4, s4, s1
                  sw           s3, 31(sp)
                  lbu          a0, -62(sp)
                  lbu          s6, 1(sp)
                  lbu          ra, 2(sp)
                  nop
                  and          a0, t3, t2
                  sb           s2, -24(sp)
                  lbu          t4, -16(sp)
                  lh           t2, 5(sp)
                  lbu          t6, -48(sp)
                  auipc        a7, 389347
                  slt          zero, a5, zero
                  lbu          gp, 52(sp)
                  sub          s4, s9, t6
                  lbu          a2, 7(sp)
                  slt          s4, a5, zero
                  lhu          a6, -43(sp) #end riscv_load_store_rand_instr_stream_4
                  beq          s6, t2, 2189f
                  addi         t2, t1, -2042
                  addi         a1, gp, 1686
2183:             xori         a2, s0, 1031
                  srai         a6, s0, 7
2185:             addi         s5, s0, 1363
                  nop
                  auipc        a6, 984005
                  andi         t4, t1, 2014
2189:             bge          s2, s5, 2208f
                  xor          s5, a1, sp
                  addi         s5, t2, 1100
                  sltiu        s4, s10, 1947
                  auipc        gp, 21180
                  xori         s5, a3, 1953
                  bltu         t4, ra, 2203f
                  auipc        zero, 619141
                  add          s1, t0, t4
                  andi         gp, s7, -178
                  xor          t3, zero, tp
                  addi         a4, s8, 575
                  add          gp, s5, a4
                  bltu         a7, t6, 2222f
2203:             bgeu         tp, t3, 2219f
                  and          s9, t6, s6
                  ori          t4, s11, 1924
                  bne          zero, a3, 2207f
2207:             srl          a0, t1, s5
2208:             and          s5, a3, zero
                  bne          s6, a2, 2229f
                  nop
                  sltu         t1, t2, a6
                  and          s6, a5, a0
                  sra          gp, a0, s0
                  andi         ra, a0, 236
                  or           a1, t5, t6
                  srli         a0, s11, 25
                  ori          s3, s9, 1788
                  nop
2219:             lui          a1, 267688
                  nop
                  sub          a1, s5, s0
2222:             bne          s5, t5, 2232f
                  auipc        ra, 83857
                  xor          t1, t5, s9
                  xor          gp, a0, zero
                  bne          a2, a4, 2235f
                  xori         s3, t0, -574
                  srl          s6, s8, t4
2229:             bge          a2, a4, 2233f
                  sll          s5, a5, a2
                  bne          t0, t2, 2247f
2232:             xor          s2, gp, s6
2233:             beq          s11, t2, 2246f
                  srli         s0, ra, 8
2235:             beq          a7, s1, 2250f
                  bltu         s11, t0, 2244f
                  sub          s6, t0, s4
                  beq          s2, zero, 2251f
                  sltu         sp, t3, t5
                  ori          gp, a3, 88
                  sra          a2, sp, gp
                  add          t5, t6, s5
                  addi         a7, gp, -1611
2244:             bgeu         a1, t1, 2264f
                  bgeu         sp, a3, 2258f
2246:             sub          s4, a3, s2
2247:             slt          s5, t5, t4
                  srai         a2, tp, 1
                  bge          t2, s9, 2268f
2250:             bgeu         a4, s0, 2251f
2251:             nop
                  slli         t3, s7, 12
                  xori         s6, s5, 1860
                  andi         s2, a6, -103
                  sub          sp, s10, a7
                  bgeu         t5, a6, 2259f
                  bltu         gp, s1, 2273f
2258:             srl          t3, s0, s8
2259:             xor          sp, t0, tp
                  sltu         gp, s9, s0
                  xori         a0, a7, 1854
                  sltiu        t2, tp, -1302
                  slt          sp, s9, a2
2264:             sll          a1, a6, a6
                  or           s1, a4, s9
                  bltu         a4, t6, 2277f
                  slli         t2, t1, 10
2268:             ori          t6, t1, -1203
                  srai         gp, t3, 18
                  la           sp, region_1+43 #start riscv_load_store_rand_instr_stream_13
                  sh           a6, 1771(sp)
                  lbu          gp, 1604(sp)
                  lh           s7, 567(sp)
                  lbu          a4, 466(sp)
                  or           zero, t0, a6
                  sb           zero, 107(sp)
                  nop
                  andi         a6, t4, -42
                  srli         s7, zero, 15
                  ori          ra, sp, 1767
                  nop
                  sw           a0, 641(sp)
                  slti         a1, s9, 683
                  sh           a4, 1885(sp)
                  add          a0, s9, tp
                  xori         s10, t5, -1268
                  sll          a6, a2, s1
                  slti         s4, t0, 6
                  lb           a6, 816(sp)
                  ori          s2, a2, -23
                  andi         t4, tp, -1958
                  xori         t2, a7, 1162
                  sh           t4, 93(sp)
                  lb           s1, 1742(sp)
                  auipc        s8, 99314
                  or           a0, t5, t1
                  lb           s0, 1546(sp)
                  and          s4, ra, ra
                  lbu          a5, 594(sp)
                  addi         a5, a2, 1021
                  and          s8, a5, a2
                  lhu          a7, 1827(sp)
                  slti         zero, t1, -659
                  sub          zero, gp, a4
                  sltu         a0, t0, a0
                  lui          t5, 304551
                  sb           zero, 484(sp)
                  sb           tp, 1508(sp)
                  andi         a1, zero, 1063
                  sltu         a0, t0, s7
                  sltu         t1, s7, s6
                  slli         s6, a4, 9
                  lb           t1, 1166(sp)
                  andi         a7, t4, -1134
                  sb           t4, 1781(sp)
                  sb           sp, 1826(sp) #end riscv_load_store_rand_instr_stream_13
                  andi         t4, s3, -1014
                  xor          a4, a6, s6
                  sra          t1, s5, a0
2273:             nop
                  srai         t2, s1, 8
                  bge          s5, gp, 2281f
                  bltu         t6, s6, 2281f
2277:             sub          a0, a2, s11
                  auipc        s4, 740225
                  sra          t5, tp, a7
                  addi         s10, s10, 1970
2281:             sub          s6, a1, ra
                  la x4, test_done
                  jalr x0, x4, 0
test_done:        
                  li gp, 1
                  ecall
sub_8:            sltu         t1, ra, a6
                  addi         s11, s11, -28
                  or           t3, a3, ra
                  sw           t2, 4(s11)
                  srai         a7, gp, 6
                  nop
                  bge          gp, s1, 1f
1:                bgeu         a5, s10, 13f
                  slti         s7, s5, 988
                  lui          a2, 749522
                  xori         s2, t3, -955
                  addi         zero, a3, 15
                  slt          s5, s11, s4
                  sltu         s5, s7, t3
                  beq          zero, a0, 21f
                  add          s7, a4, a7
                  andi         s3, t3, -560
                  blt          sp, tp, 16f
                  sra          a7, gp, s5
13:               nop
                  bltu         a2, sp, 22f
                  beq          s1, s7, 26f
16:               andi         ra, s0, -577
                  sltu         a1, s6, s1
                  slti         t5, ra, -678
                  bne          s9, a1, 22f
                  bgeu         t5, a3, 26f
21:               sub          zero, s11, tp
22:               srli         s2, a0, 12
                  beq          t4, t3, 28f
                  sub          t6, s9, a3
                  andi         a1, s2, 1196
26:               beq          a3, a3, 28f
                  bgeu         s1, a2, 28f
28:               ori          s10, t4, -1299
                  lw           t2, 4(s11)
                  auipc        a1, 202618
                  xor          a4, a3, s11
                  addi         s11, s11, 28
                  sra          a5, ra, t3
                  xori         a3, sp, -1846
                  sltiu        s0, t4, -1272
                  add          t3, a3, s2
                  andi         a2, a5, 1491
                  xori         s2, a4, -1174
                  slt          a5, s0, gp
                  sra          zero, s4, zero
47:               addi x15, x7, 1
47:               jalr x15, x15, 0
sub_1:            srl          s3, t6, a2
                  srl          s2, zero, a7
                  lui          s8, 96630
                  addi         s11, s11, -8
                  add          s4, sp, s11
                  sw           t2, 4(s11)
                  add          s4, a3, zero
                  lui          t1, 212260
                  srai         a4, s1, 31
                  srai         s9, t2, 6
                  nop
                  andi         t1, t0, -1647
                  sub          a7, zero, a4
sub_1_j3:         jal          t2, sub_2 #jump sub_1 -> sub_2
                  la           sp, region_1+1203 #start riscv_load_store_rand_instr_stream_1
                  sb           a6, 0(sp)
                  sra          s2, t2, s0
                  srli         zero, s7, 2
                  sb           t0, 0(sp)
                  sb           s0, 8(sp)
                  slti         s3, s5, -444
                  sltiu        s10, a6, 641
                  sb           sp, -4(sp)
                  nop
                  lh           t6, -13(sp)
                  sltu         a0, s6, t1
                  or           a5, a1, t0
                  lbu          ra, -6(sp)
                  sub          t5, gp, s11
                  lbu          s8, -14(sp)
                  andi         s9, s8, -1578
                  lbu          s6, 4(sp)
                  lb           t2, 6(sp)
                  andi         s6, a3, -514
                  sb           a2, -2(sp)
                  lh           s7, -13(sp)
                  and          t6, t6, a6
                  sb           t3, -2(sp)
                  or           s5, t6, s10
                  sb           a5, -8(sp)
                  sb           s0, 6(sp)
                  sra          t2, s6, s6
                  lbu          a4, -1(sp)
                  lb           a5, -12(sp)
                  nop
                  slli         t6, a7, 2
                  sb           t4, 10(sp)
                  sub          t1, s11, s1
                  lbu          ra, 0(sp)
                  nop
                  slt          a4, s6, a2
                  sh           s3, 3(sp)
                  sh           s7, -13(sp)
                  srai         a2, s3, 26
                  lh           zero, 11(sp)
                  lbu          s2, 13(sp)
                  auipc        a6, 715274
                  sll          ra, t1, a0
                  sltiu        s1, a3, -782
                  xori         a4, s1, 298
                  lb           s8, 5(sp) #end riscv_load_store_rand_instr_stream_1
                  la           a0, region_0+560 #start riscv_load_store_rand_instr_stream_0
                  srl          a5, sp, a0
                  slti         a1, a1, -108
                  ori          s2, a1, 1577
                  lhu          s1, 42(a0)
                  sub          t2, a1, t6
                  or           s10, a5, s9
                  lb           t6, -38(a0)
                  ori          ra, s7, 542
                  lhu          a1, -24(a0)
                  lbu          s6, -23(a0)
                  sb           t6, 41(a0)
                  lbu          t6, 18(a0)
                  xor          a4, t2, t3
                  lb           s4, -34(a0)
                  lbu          a2, -29(a0)
                  lui          s2, 467985
                  lbu          s4, 36(a0)
                  lb           a6, -42(a0)
                  srl          s6, s1, s8
                  ori          s1, s1, -1686
                  lb           s0, 37(a0)
                  srl          a3, zero, a3
                  lb           s2, 54(a0)
                  lb           t1, 22(a0)
                  slt          s2, t2, a4
                  sb           s9, 1(a0)
                  lb           s2, -51(a0)
                  srai         s4, zero, 8
                  xori         t6, a6, -987
                  andi         gp, tp, 974
                  lb           s0, -64(a0)
                  srli         a2, t3, 16
                  slt          a3, s11, gp
                  lb           s10, 22(a0)
                  lbu          t6, -33(a0)
                  lw           sp, 4(a0) #end riscv_load_store_rand_instr_stream_0
                  beq          zero, a7, 11f
                  bgeu         t1, t1, 13f
                  or           a5, gp, tp
                  ori          s6, t2, -1832
                  xor          t1, s8, a6
                  xor          s10, t4, s2
                  lui          a7, 404493
                  srli         s8, t4, 12
                  sra          s4, s2, a2
                  xor          t2, gp, s9
                  bge          s5, s4, 19f
11:               sltiu        a6, s0, -55
                  xor          s10, gp, a5
13:               bltu         t2, a3, 16f
                  addi         gp, s10, -898
                  add          t5, gp, t1
16:               sll          gp, s2, t1
                  sub          a7, t5, a0
                  slli         t4, s9, 1
19:               lui          s5, 388849
                  beq          t6, s4, 28f
                  or           s7, s10, t1
                  srl          a6, t6, t6
                  ori          sp, a0, -1518
                  bne          s7, a3, 28f
                  add          a4, a4, a4
                  lui          t5, 443103
                  srai         s0, a7, 23
28:               auipc        t6, 49707
                  srai         s8, s8, 11
                  blt          t2, a1, 38f
                  and          t3, s6, ra
                  srai         s3, tp, 1
                  xor          a2, ra, a4
                  or           gp, s11, a7
                  lui          a4, 496971
                  slli         gp, a4, 7
                  sub          a0, zero, t4
38:               andi         a2, a7, 460
                  srl          s3, s8, s0
                  slt          t1, s7, s6
                  slt          t1, s8, a5
                  andi         s0, s5, 1859
                  xori         a0, s8, 117
                  ori          s10, a7, 192
                  and          a6, s4, s11
                  sll          s8, s5, s3
                  bge          s1, a6, 59f
                  lui          s10, 587807
                  sra          ra, a2, t4
                  slli         s7, a1, 15
                  sltu         s6, a6, t4
                  sltiu        ra, sp, -906
                  srl          a2, s6, s11
                  bgeu         s8, t4, 70f
                  xor          s10, a4, s1
                  bltu         t3, a5, 59f
                  beq          a4, zero, 66f
                  bltu         s2, t4, 68f
59:               srl          a1, s4, a0
                  bltu         s1, s5, 67f
                  auipc        ra, 989237
                  xor          s2, a6, t3
                  srai         gp, s7, 20
                  slti         t2, gp, 2032
                  and          a0, t2, a6
66:               bgeu         tp, ra, 82f
67:               sltiu        t6, a0, 1151
68:               xor          s4, gp, s10
                  slt          a6, zero, t5
70:               blt          s10, s0, 83f
                  and          a1, a3, a7
                  beq          a7, a2, 84f
                  srli         t1, s0, 10
                  slti         a4, t5, -275
                  nop
                  xori         t5, a1, -1187
                  ori          a2, t0, 941
                  sll          t5, a5, ra
                  sra          a3, s8, t3
                  sub          s2, s0, s1
                  add          a5, s10, ra
82:               blt          a1, t3, 95f
83:               or           t3, s2, a4
84:               bgeu         s10, zero, 88f
                  bge          gp, t3, 94f
                  bltu         s6, s6, 101f
                  sra          s8, s7, s1
88:               sll          t2, t0, a2
                  xor          s1, s10, a6
                  sltu         a6, s2, a2
                  slt          a5, t6, t6
                  bltu         s1, sp, 100f
                  bne          tp, s5, 102f
94:               sra          s8, a3, t0
95:               blt          t6, s8, 110f
                  sll          t2, t6, s10
                  bgeu         t0, s9, 107f
                  sll          s8, a1, s1
                  sltu         s2, s5, gp
100:              sltu         a7, t1, a0
101:              and          gp, s2, tp
102:              xor          s6, a6, a2
                  sra          s2, s8, s2
                  andi         a5, s8, 1015
                  sll          a2, tp, tp
                  slt          t4, t4, a0
107:              bge          s6, a3, 125f
                  addi         a3, s6, 627
                  addi         s0, s11, -1632
                  sub          a4, s6, t4
                  addi         s0, t4, 580
                  auipc        t3, 687847
sub_1_j2:         jal          t2, sub_2 #jump sub_1 -> sub_2
                  sra          gp, a5, a1
                  or           gp, gp, t3
110:              slli         a0, a4, 5
                  srai         t4, a0, 18
                  or           t2, s6, t6
                  sll          t2, t0, s0
                  auipc        gp, 231740
                  sltiu        a1, s0, -1258
                  sra          s10, gp, s1
                  addi         ra, zero, -154
                  srai         a2, a1, 6
                  sltiu        t6, t2, -1603
                  srl          a2, s10, s10
                  srli         t5, a3, 27
                  addi         s2, s5, -1140
                  addi         a1, s3, 1207
                  auipc        s1, 273970
125:              and          s2, s4, a5
                  bge          a6, t2, 146f
                  nop
                  srli         s1, s4, 19
                  slt          a4, t1, a2
                  bgeu         s8, t2, 137f
                  slli         s5, t4, 15
                  bne          s0, t3, 145f
                  slti         s4, s11, -891
                  sub          s9, t2, t5
                  sltiu        zero, t4, -47
                  bltu         tp, s0, 151f
137:              srli         s8, t1, 14
                  xori         s7, s4, 689
                  addi         a4, a2, -164
                  sltu         gp, s11, t6
                  slli         s9, t5, 29
                  slt          s1, ra, t2
                  andi         t5, a7, -1902
                  sub          ra, s1, s5
145:              sltiu        s10, s3, -38
146:              sltu         t1, t6, s5
                  add          a4, zero, t1
                  srai         s8, s0, 8
                  and          s2, gp, a6
                  slli         s10, s0, 29
151:              sra          t2, s3, s7
                  bgeu         s5, s8, 162f
                  sra          s6, a1, s4
                  ori          sp, a4, 1300
                  srl          t3, s8, s5
                  andi         gp, s11, 135
                  slli         a7, a1, 28
                  xor          zero, t5, s9
                  bgeu         s1, s7, 172f
                  nop
                  lui          t2, 220952
162:              bne          s3, s6, 173f
                  nop
                  sll          a4, t6, t6
                  nop
                  auipc        gp, 820130
                  srai         t1, s4, 14
                  bne          s11, t2, 171f
                  blt          s10, s2, 189f
                  ori          s9, a6, -53
171:              lui          gp, 986711
172:              or           a5, tp, s6
173:              xori         s10, s1, -645
                  and          a7, a7, t3
                  slli         a7, sp, 26
                  bgeu         a6, t1, 185f
                  ori          ra, a4, -1023
                  addi         s1, s9, -1062
                  sll          t3, a2, s9
                  bge          s11, ra, 196f
                  addi         a2, a4, 1124
                  add          s1, s7, gp
                  lui          a3, 529436
                  and          t6, s8, t3
185:              bgeu         a0, s0, 200f
                  or           s0, t6, a2
                  sra          a7, tp, t6
                  xori         a4, s5, 749
189:              andi         t2, a5, -281
                  sltu         a1, tp, s0
                  sltu         s0, a3, t2
                  srl          s10, sp, a3
                  addi         t3, a4, 1840
                  and          t3, s0, a3
                  addi         a2, s8, -1121
196:              sll          a7, s1, a6
                  bge          a1, s3, 206f
                  nop
                  sltiu        s1, sp, 1078
200:              sltu         a3, a4, tp
                  andi         t4, ra, -1622
                  bge          a0, t4, 212f
                  blt          s7, t3, 212f
                  sll          s0, a3, t5
                  srai         s5, a5, 27
206:              sra          sp, sp, s8
                  sltiu        t5, t0, -629
                  slt          a5, s4, sp
                  bge          a5, a0, 213f
                  blt          a5, t2, 222f
                  sltiu        s2, t6, 1918
212:              srl          s8, a1, t0
213:              xor          s0, t1, s2
                  srl          t5, s8, t3
                  srli         s7, a7, 0
                  andi         a0, a0, -844
                  xori         a7, s1, 1232
                  lui          t1, 880485
                  sll          a1, a0, a5
                  srl          a3, t2, a4
                  slti         a1, a5, -714
222:              sra          a0, a0, s10
                  beq          s7, tp, 233f
                  slli         s4, ra, 30
                  auipc        s0, 394929
                  srl          t4, s9, s2
                  bne          zero, t5, 230f
                  srl          zero, t4, a3
                  sra          a2, a5, s8
230:              lui          s10, 423945
                  bgeu         a3, s3, 239f
                  lui          t2, 35082
233:              slt          a4, s3, s1
                  sltiu        t3, a0, -2022
                  sltiu        t3, t1, -1634
                  sll          a4, gp, sp
                  srl          s4, t5, s4
                  auipc        a2, 850048
239:              bne          s8, s4, 246f
                  slli         s7, s10, 6
                  sub          a5, s3, s2
                  bgeu         a2, s11, 260f
                  srai         t3, s7, 4
                  add          a5, s2, t6
                  or           a0, tp, ra
246:              sll          t2, ra, a0
                  addi         zero, s8, -1054
                  sll          sp, a3, s1
                  xori         a7, zero, -1522
                  xor          a1, t3, s4
                  andi         s8, s2, -90
                  sltu         t4, t3, s4
                  addi         s9, s11, -137
                  andi         s2, s11, -280
                  xori         gp, sp, 1755
                  sltiu        t4, t2, 556
                  bge          t3, s11, 265f
                  blt          a5, t1, 265f
                  srl          sp, ra, t2
260:              slti         ra, a5, -1805
                  sltu         a0, tp, s2
                  and          s0, tp, t6
                  bne          a3, t5, 273f
                  nop
265:              slt          a3, s8, sp
                  slt          t1, sp, t3
                  srai         a1, s1, 19
                  sra          t2, t6, t4
                  nop
                  nop
                  slt          t2, s1, ra
                  andi         s4, a7, -239
273:              sub          t5, t2, a7
                  or           a6, a4, s0
                  srl          s8, sp, t5
                  or           a3, s7, s5
                  slt          s6, s3, s3
                  andi         zero, gp, -1636
                  bgeu         t2, s11, 293f
                  sll          s7, a3, s1
                  slti         s4, t3, 687
                  or           a4, s2, zero
                  nop
                  xor          sp, gp, t0
                  slti         sp, s5, -532
                  srli         t2, s5, 19
                  sll          a5, s2, a6
                  xori         a3, a4, -87
                  auipc        s7, 303181
                  bltu         s2, tp, 293f
                  slt          s4, s1, ra
                  add          ra, s2, t6
293:              add          s1, t2, s4
                  sltu         a5, t4, a7
                  lw           t2, 4(s11)
                  xor          s3, s10, a4
                  slli         a6, t2, 7
                  addi         s11, s11, 8
                  slli         s9, zero, 4
404:              addi x25, x7, 1
404:              jalr x25, x25, 0
sub_4:            ori          a3, t6, -1891
                  andi         s10, t5, 415
                  add          a7, gp, s0
                  slt          s9, t5, a0
                  slti         t5, s8, -101
                  slt          a6, a7, a4
                  bne          s5, s4, sub_4_stack_p
sub_4_stack_p:    addi         s11, s11, -20
                  nop
                  sub          a3, a0, a2
                  sltiu        zero, gp, 169
                  sw           t2, 4(s11)
                  xor          s5, t0, zero
                  sra          s1, t2, t3
                  addi         zero, a0, 537
                  or           t2, s3, zero
                  sll          a5, a3, t3
                  la           a7, sub_7
                  xor          a5, t3, s4
                  addi         a7, a7, -242
                  addi         t5, sp, 1382
                  sltu         s10, s0, s0
                  sltu         s5, ra, a7
                  slli         t5, s1, 27
sub_4_j10:        jalr         t2, a7, 243 #jump sub_4 -> sub_7
                  la           t1, region_0+83 #start riscv_load_store_rand_instr_stream_6
                  addi         gp, s1, 449
                  andi         s6, s1, 1417
                  xor          a0, a0, s6
                  auipc        ra, 260696
                  lb           sp, -6(t1)
                  srli         s2, t0, 0
                  lb           a5, 159(t1)
                  lb           t5, 243(t1)
                  lbu          a4, -30(t1)
                  and          s1, s2, s9
                  slti         a6, s1, -110
                  slli         a1, a6, 23
                  sw           s0, -3(t1)
                  sltu         s1, s9, s5
                  xori         a7, t2, -32
                  andi         a2, tp, 129
                  srli         s4, s10, 15
                  addi         s5, s3, 1291
                  lhu          t3, -81(t1)
                  sb           tp, 44(t1)
                  lbu          s8, 138(t1)
                  slli         a0, s4, 20
                  sw           s6, 45(t1)
                  sb           t6, -10(t1)
                  lb           s6, 126(t1)
                  slti         s8, t6, -655
                  lh           ra, 213(t1)
                  slti         a5, t6, 134
                  nop
                  srai         a0, s7, 13
                  sltiu        s7, t3, -1400
                  lui          a2, 1048465
                  and          t3, s9, t5
                  sb           t6, -81(t1)
                  or           s9, sp, s11
                  addi         s10, a4, 107
                  lb           gp, 19(t1)
                  sltu         t3, a6, t0
                  and          s3, t1, a4
                  slli         a4, t4, 0
                  sltu         t4, t1, t0
                  lh           t4, 113(t1)
                  xori         a5, zero, -1594
                  lh           t5, -5(t1)
                  lhu          s6, 61(t1) #end riscv_load_store_rand_instr_stream_6
                  la           t3, region_0+178 #start riscv_load_store_rand_instr_stream_12
                  sb           s5, -147(t3)
                  lh           a0, 84(t3)
                  and          a2, a0, gp
                  lhu          s6, 104(t3)
                  lh           a2, 120(t3)
                  lbu          t6, 60(t3)
                  auipc        s6, 736334
                  lh           a7, 232(t3)
                  nop
                  sw           a1, -2(t3)
                  srli         s8, a0, 14
                  lh           s4, -138(t3)
                  lbu          s10, -125(t3)
                  ori          gp, gp, -1714
                  xor          s5, a2, t1
                  srai         a0, s10, 28
                  slt          t5, a7, zero
                  lb           t1, 159(t3)
                  sltiu        sp, s7, 422
                  lb           a1, -115(t3)
                  sb           a2, -45(t3)
                  sb           ra, -4(t3)
                  lw           s6, 246(t3)
                  slli         a6, sp, 11
                  sh           t6, 78(t3)
                  lhu          s3, -38(t3)
                  xori         t4, a5, 1035
                  lb           a6, 167(t3)
                  xor          t4, t6, t2
                  srl          s0, t5, s10
                  lbu          gp, 227(t3)
                  sll          a2, s5, sp
                  nop
                  lw           s8, -62(t3)
                  lb           a6, -149(t3) #end riscv_load_store_rand_instr_stream_12
                  la           sp, region_1+1413 #start riscv_load_store_rand_instr_stream_9
                  xor          a3, s6, t6
                  slt          s0, a6, a5
                  lh           t5, -55(sp)
                  lb           s9, -8(sp)
                  xor          a0, s8, s3
                  lb           s0, 62(sp)
                  srai         s9, gp, 23
                  sltiu        s5, s6, 265
                  andi         a1, a0, -1409
                  andi         t4, s8, -1200
                  sb           t0, -18(sp)
                  sh           t0, -17(sp)
                  sltiu        t4, tp, -1062
                  lb           s4, 53(sp)
                  slli         s5, t2, 13
                  sra          s3, t6, a3
                  slt          a7, s8, a6
                  andi         zero, s2, 145
                  lhu          s3, 49(sp)
                  ori          s1, t5, -1530
                  lui          a5, 526335
                  ori          zero, a1, -1554
                  sb           s8, 32(sp)
                  and          s9, s8, a7
                  sb           tp, -53(sp)
                  sb           tp, 48(sp)
                  lhu          a4, -1(sp)
                  andi         s3, t5, -428
                  nop
                  srli         a6, t0, 6
                  sb           a3, 46(sp)
                  lb           s4, -19(sp)
                  andi         a1, s10, 287
                  lb           a5, 32(sp)
                  lbu          s8, 34(sp)
                  sb           a5, 24(sp)
                  slti         t1, t5, 1980
                  sub          a6, s4, a2
                  lb           s0, -32(sp)
                  sb           s5, 32(sp) #end riscv_load_store_rand_instr_stream_9
                  la           t2, region_1+367 #start riscv_load_store_rand_instr_stream_0
                  sh           s2, -5(t2)
                  srli         t4, t1, 16
                  srai         s8, s4, 2
                  srai         t1, t4, 29
                  sb           s11, 22(t2)
                  sb           s1, 44(t2)
                  xori         zero, s5, 450
                  nop
                  srai         a7, s10, 28
                  addi         a5, a1, -1892
                  sb           t0, 54(t2)
                  sra          a4, t5, s10
                  addi         a5, a6, 174
                  sw           a4, 25(t2)
                  lb           t4, -256(t2)
                  lbu          s8, -29(t2)
                  lh           s4, 61(t2)
                  slti         s3, t2, -686
                  lb           a5, -166(t2)
                  sltiu        s8, t0, -26
                  or           t3, a4, s5
                  sltiu        t3, sp, 278
                  srl          s6, gp, s11
                  lb           a5, 179(t2)
                  lbu          s2, -114(t2)
                  lhu          t3, 143(t2)
                  sltu         s5, a2, sp
                  sb           a7, -45(t2)
                  add          a4, gp, a3
                  sltiu        s4, a5, -665
                  lbu          a6, -216(t2)
                  sh           zero, -237(t2)
                  andi         a5, s3, 1067
                  sh           s1, -79(t2)
                  and          s7, a2, s5
                  srai         zero, s2, 18
                  sra          a5, s0, a5
                  lui          t4, 849394
                  xor          a0, a0, s6
                  lb           a4, -40(t2)
                  sltu         sp, zero, s3
                  lbu          a7, -152(t2)
                  sub          ra, t4, s8
                  addi         s6, s2, -104
                  sltu         s6, s2, s0
                  or           a6, s8, s10
                  sb           t6, -186(t2)
                  auipc        t3, 472280
                  slt          s6, t0, s1
                  lh           s7, 233(t2)
                  sb           t1, -63(t2)
                  lbu          s10, -226(t2) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_0+163 #start riscv_load_store_rand_instr_stream_4
                  lhu          s8, -51(sp)
                  slti         a2, t1, 1272
                  lbu          ra, 1197(sp)
                  slt          a6, s0, s2
                  sb           s3, 130(sp)
                  lbu          t6, 76(sp)
                  sltiu        zero, t4, -425
                  sb           a7, -36(sp)
                  srl          a4, s7, s1
                  lb           a3, 746(sp)
                  ori          a3, s9, 48
                  lb           t3, 710(sp)
                  sh           tp, 799(sp)
                  lb           s9, 1326(sp)
                  slt          s4, s1, s7
                  sb           s6, 1058(sp)
                  sw           ra, 1761(sp)
                  slti         s9, a1, -487
                  srli         a0, s0, 12
                  sb           s4, 388(sp)
                  sltu         s0, s0, zero
                  sub          t4, a0, s3
                  sb           s8, 1355(sp)
                  nop
                  lbu          t6, 1478(sp)
                  lhu          a7, 1281(sp)
                  lb           t6, 1242(sp)
                  lhu          s4, -11(sp)
                  lb           t6, 1134(sp)
                  ori          a6, s5, -27
                  lbu          gp, 1338(sp)
                  sub          s0, s5, a1
                  sb           t1, 1821(sp)
                  lw           a2, 549(sp)
                  sll          t3, a3, s11
                  sb           a1, 408(sp)
                  srl          a4, zero, s2
                  lh           s10, 819(sp)
                  sltiu        a6, t6, 360
                  sltu         gp, s8, t2
                  sb           a0, 1222(sp)
                  lbu          gp, 1523(sp)
                  lui          zero, 739177
                  lb           s0, 531(sp) #end riscv_load_store_rand_instr_stream_4
                  la           sp, region_0+1475 #start riscv_load_store_rand_instr_stream_7
                  lw           t5, 1(sp)
                  lbu          ra, 41(sp)
                  lhu          s5, -29(sp)
                  andi         a3, a0, 1130
                  sh           s5, 43(sp)
                  slli         s1, s8, 31
                  sltu         s3, gp, t5
                  lb           s2, 51(sp)
                  lbu          s7, 4(sp)
                  lb           ra, 64(sp)
                  slti         s7, s7, -1999
                  sb           s8, -50(sp)
                  sll          gp, gp, s8
                  lbu          a7, -26(sp)
                  sb           s10, 18(sp)
                  sb           a3, 33(sp)
                  lw           t6, 61(sp)
                  slt          t4, s7, t3
                  srl          s1, t2, zero
                  lw           gp, -47(sp)
                  sll          s2, s2, a4
                  lb           t6, 11(sp)
                  lbu          a6, -30(sp)
                  sb           s9, -33(sp)
                  lw           a5, -59(sp)
                  ori          zero, a1, 565
                  lbu          s3, 20(sp)
                  slt          t3, tp, s5
                  lhu          gp, 7(sp)
                  lbu          a1, -16(sp)
                  slli         s3, gp, 18
                  lh           a3, -5(sp)
                  sll          t6, ra, s11
                  ori          t2, zero, 286
                  xor          s1, t2, t6
                  lbu          a6, -16(sp)
                  lbu          a7, -9(sp)
                  xor          gp, zero, s5
                  sb           s2, -31(sp)
                  sb           t3, 38(sp)
                  sh           s6, 35(sp)
                  lw           a3, 21(sp)
                  lb           s9, 34(sp)
                  lbu          s6, -14(sp)
                  lbu          t4, -13(sp) #end riscv_load_store_rand_instr_stream_7
                  la           t4, region_0+238 #start riscv_load_store_rand_instr_stream_2
                  lb           s6, 5(t4)
                  lbu          s10, 13(t4)
                  sub          s9, s7, a3
                  ori          t2, s6, 1970
                  sb           ra, -16(t4)
                  add          a7, s6, t5
                  lbu          s3, 9(t4)
                  slli         a0, t6, 26
                  sra          t5, a4, a5
                  sltu         a6, gp, s6
                  srli         a3, t3, 19
                  lb           s7, -15(t4)
                  sb           a3, 11(t4)
                  auipc        a2, 176478
                  srli         t5, a6, 16
                  sltiu        zero, s7, 37
                  lb           s8, -7(t4)
                  lui          zero, 739040
                  slt          zero, t1, sp
                  sll          ra, s11, zero
                  lh           a5, -10(t4)
                  slli         a6, gp, 15
                  sh           s3, 2(t4)
                  addi         a2, s11, -500
                  auipc        a2, 53127
                  sb           s11, -10(t4)
                  sll          s3, a3, s9
                  slli         ra, t6, 4
                  sb           s6, -11(t4)
                  sll          a1, t6, a2
                  lh           s3, 16(t4)
                  or           s2, t3, a3
                  sb           s11, -7(t4) #end riscv_load_store_rand_instr_stream_2
                  ori          ra, t6, -557
                  sltiu        t6, s9, 638
                  auipc        s2, 814086
                  andi         s1, tp, -1288
                  beq          t0, s11, 17f
                  sltu         a0, s4, t2
                  slti         s6, ra, 1641
                  bltu         s8, tp, 27f
                  sltiu        sp, s6, 948
                  beq          a6, s6, 19f
                  bgeu         t0, a7, 29f
                  srl          s8, t1, a0
                  lui          t1, 723191
                  sltiu        t4, s6, 1030
                  beq          s1, s7, 34f
                  slli         s2, s2, 17
                  sltu         s8, gp, s1
17:               sra          t1, ra, ra
                  addi         a4, t6, -34
19:               ori          s8, ra, 122
                  xori         ra, a0, -2035
                  beq          t3, t3, 39f
                  xori         t1, a6, -552
                  beq          s10, t4, 32f
                  bge          a3, gp, 26f
                  sll          a3, s2, t1
26:               blt          t0, s0, 45f
27:               ori          a6, s2, -108
                  srli         s0, tp, 27
29:               bge          a7, a0, 49f
                  add          sp, s5, t3
                  and          t2, s2, a3
32:               srl          a0, s4, s3
                  slli         a1, a5, 24
34:               sltu         a1, t6, t1
                  and          s7, t6, ra
                  sra          t4, a0, t1
                  xori         t5, s2, -850
                  sub          s9, t1, tp
39:               srai         s7, s9, 17
                  and          s4, ra, a2
                  add          t2, tp, a7
                  srli         s9, t0, 13
                  xori         s1, a1, -160
                  auipc        s8, 646623
45:               nop
                  lui          s3, 788993
                  blt          s3, s10, 62f
                  bltu         s0, s4, 66f
49:               auipc        t6, 468384
                  bne          sp, t4, 69f
                  bgeu         s11, s4, 69f
                  andi         a3, t2, 596
                  bltu         s11, t0, 71f
                  sltu         s3, zero, t6
                  slli         s7, a2, 3
                  sll          zero, tp, a3
                  slt          a7, s4, s11
                  srai         sp, ra, 10
                  slti         s10, s0, 1272
                  auipc        a0, 959233
                  bltu         a0, s3, 77f
62:               beq          s6, tp, 64f
                  bge          a0, a3, 68f
64:               srl          t5, zero, gp
                  beq          a7, t1, 84f
66:               slti         a6, t6, 648
                  sub          a6, a7, s5
68:               bgeu         s5, a2, 82f
69:               addi         a0, a7, -1710
                  slli         t4, a5, 10
71:               slt          a6, ra, s3
                  bne          s11, s10, 89f
                  sub          s6, t5, tp
                  bgeu         ra, a1, 83f
                  nop
                  sltiu        t5, gp, -247
77:               lui          gp, 709491
                  sub          s7, a4, tp
                  sra          s9, a0, s3
                  and          a3, s9, a2
                  sltu         t5, s4, a4
82:               xor          s1, a5, s2
83:               srli         t6, t3, 14
84:               bne          t1, a3, 87f
                  slli         a5, s4, 6
                  andi         t3, a2, 1306
87:               slli         s7, t3, 5
                  srli         s3, a2, 10
89:               bgeu         s0, a4, 107f
                  xori         t4, t1, 1883
                  and          s10, s8, t6
                  sra          s5, ra, ra
                  or           a6, s9, s4
                  slti         a6, s4, 1282
                  sra          s3, zero, zero
                  srli         s5, s0, 5
                  sltu         s0, s2, s6
                  srai         s10, gp, 22
                  sra          gp, t6, ra
                  bltu         t6, s5, 107f
                  sll          a1, a5, s0
                  slt          s5, s7, a4
                  bge          s10, a7, 111f
                  sra          a0, s1, s5
                  slt          gp, t5, s5
                  and          s9, a5, t1
107:              lui          a4, 106176
                  srli         s1, s0, 19
                  andi         t1, s3, 2017
                  bge          t5, s0, 123f
111:              addi         a1, t3, -1727
                  xori         s6, t0, -1534
                  sltu         t2, a1, s9
                  sltu         s10, s8, s0
                  bgeu         s10, t3, 122f
                  bge          s1, t6, 126f
                  addi         a4, sp, 57
                  srli         ra, t1, 22
                  addi         a2, sp, 1396
                  and          s6, s4, t5
                  blt          a7, s10, 136f
122:              auipc        gp, 387588
123:              auipc        zero, 646972
                  slli         t2, a4, 21
                  sltiu        t5, t1, -1011
126:              ori          t6, t2, 1233
                  andi         a6, t6, 1771
                  bge          s7, a4, 146f
                  nop
                  blt          a7, s7, 143f
                  beq          s6, a0, 150f
                  lui          s8, 883167
                  add          ra, s6, s0
                  srli         a6, t1, 5
                  nop
136:              sltu         s4, ra, gp
                  sra          s7, a6, s7
                  and          a4, a2, a2
                  nop
                  addi         t3, a2, -914
                  bgeu         s11, s4, 159f
                  slti         a1, zero, 860
143:              blt          ra, s10, 145f
                  beq          a4, zero, 151f
145:              nop
146:              bne          s9, t0, 155f
                  bne          s6, gp, 156f
                  xor          t2, s8, t0
                  srl          a1, s0, t0
150:              slti         s1, a6, -1161
151:              bge          tp, s10, 166f
                  add          ra, a5, a2
                  slli         t5, a6, 31
                  blt          s9, sp, 157f
155:              srl          ra, s4, a6
156:              bltu         t2, zero, 169f
157:              srl          t6, t4, t5
                  or           a5, t0, gp
159:              and          t5, a6, ra
                  sltu         t1, a0, s7
                  auipc        a4, 64739
                  addi         a4, s2, -1087
                  lui          s6, 1047260
                  auipc        s7, 124135
                  sra          s3, t3, s6
166:              xor          a6, s0, ra
                  addi         s9, s7, 1828
                  ori          gp, s2, 1966
169:              addi         s10, sp, -1615
                  add          a3, s0, s8
                  sltu         ra, s5, s9
                  xor          a2, s5, s3
                  bltu         s11, a5, 183f
                  srli         sp, a6, 17
                  srai         t6, a4, 3
                  bne          s0, a6, 195f
                  srli         a0, s1, 15
                  bltu         a5, a6, 198f
                  srai         s5, t4, 25
                  ori          t3, zero, 931
                  blt          a6, s7, 196f
                  beq          s3, s1, 198f
183:              slt          a6, t2, s4
                  blt          s6, a7, 189f
                  ori          zero, s2, -952
                  sltiu        a7, s3, 38
                  ori          t6, s1, -1378
                  blt          gp, a6, 205f
189:              srai         s4, a6, 18
                  srli         s3, s6, 29
                  sub          t6, s0, tp
                  andi         sp, a1, -561
                  ori          a4, s1, -928
                  addi         a6, t0, -50
195:              sltu         t6, a5, t0
196:              beq          t2, t0, 198f
                  ori          s3, a1, 1921
198:              sll          a1, ra, a2
                  srl          s9, s0, s4
                  srai         a2, s3, 9
                  add          t1, a5, t3
                  sltiu        sp, t6, -46
                  beq          t0, t2, 217f
                  sltiu        t2, gp, 1160
205:              bgeu         a4, a1, 223f
                  sub          a1, s0, a1
                  slti         a0, gp, -1952
                  srai         a6, s8, 19
                  addi         a7, gp, 585
                  bge          s8, s5, 217f
                  xori         zero, sp, 694
                  andi         s4, a6, 632
                  sra          s0, a6, zero
                  bge          s0, sp, 232f
                  andi         s10, a1, -63
                  slt          a3, s11, s4
217:              lui          a5, 359048
                  ori          gp, a2, 1241
                  bgeu         a6, tp, 238f
                  bge          s10, t3, 239f
                  beq          t0, s0, 241f
                  sltu         a4, s11, s11
223:              srli         s9, zero, 3
                  sltu         t1, s9, t4
                  sub          a5, zero, a2
                  srai         s2, a4, 19
                  lui          s0, 177808
                  andi         a0, a0, -2001
                  blt          tp, zero, 247f
                  bge          a6, s10, 250f
                  slli         t3, a0, 7
232:              sltiu        s0, sp, 1743
                  ori          a0, a4, 653
                  sub          s10, tp, t3
                  slt          a0, t4, s7
                  blt          t5, s6, 246f
                  ori          t6, s7, 140
238:              xori         s2, tp, -1274
239:              slt          s9, a3, t4
                  bne          a5, sp, 248f
241:              sltu         zero, t3, t0
                  beq          s1, a0, 244f
                  lui          t2, 876117
244:              bge          t2, s0, 264f
                  and          s3, a1, t5
246:              bgeu         s11, a4, 264f
247:              addi         s5, s2, -1550
248:              sub          a6, t1, s4
                  xor          a4, s9, a3
250:              sra          t6, s10, t3
                  beq          s4, a3, 266f
                  slti         t1, t0, -1869
                  bltu         s9, s3, 262f
                  lui          s8, 901443
                  srai         sp, t5, 2
                  slli         a0, s1, 12
                  andi         ra, a6, -185
                  bge          s2, a5, 277f
                  and          t3, s8, t4
                  bltu         t2, ra, 270f
                  slt          zero, s3, t5
262:              blt          a6, a3, 280f
                  srai         gp, a3, 9
264:              xori         a3, tp, 1049
                  add          s8, s11, s9
266:              xor          s0, s1, s11
                  slt          s4, s10, s8
                  xori         t3, s2, 1554
                  blt          s8, s10, 282f
270:              bltu         s9, s3, 290f
                  bne          s9, t1, 290f
                  sub          a1, s0, s7
                  srl          s7, gp, ra
                  bne          t2, gp, 279f
                  blt          a0, s3, 283f
                  auipc        t5, 402926
277:              bltu         t4, s2, 295f
                  nop
279:              auipc        s1, 688696
280:              bltu         a4, gp, 296f
                  slt          t3, t3, a2
282:              sltiu        zero, s8, -1624
283:              sll          t3, zero, gp
                  slli         t2, zero, 9
                  beq          s11, t4, 299f
                  nop
                  bge          t0, a1, 302f
                  addi         s6, zero, -1508
                  slt          s7, s2, s1
290:              sltiu        s1, ra, -610
                  andi         zero, s3, 436
                  sra          a6, zero, t4
                  and          t4, s6, a0
                  blt          s11, t2, 296f
295:              slli         a7, t0, 4
296:              auipc        a7, 7367
                  slt          t3, s8, s7
                  ori          t3, s10, -697
299:              auipc        t5, 645526
                  srai         a3, s5, 19
                  sra          a3, a1, zero
                  srai         s6, tp, 4
                  sra          s8, s2, a1
                  la           a1, sub_7
                  sll          t4, gp, a7
                  srl          t4, s0, s0
                  ori          a4, a7, 1968
                  nop
                  lui          t5, 692898
                  srli         zero, a7, 19
                  addi         a1, a1, -296
                  ori          t4, a0, 488
sub_4_j9:         jalr         t2, a1, 296 #jump sub_4 -> sub_7
302:              ori          t1, s0, -1990
                  beq          s11, a4, 312f
                  slti         a3, a1, 1606
                  add          s6, s6, t0
                  sra          s7, s6, a5
                  addi         s3, s7, -708
                  bltu         t2, ra, 326f
                  srl          s5, s10, a2
                  ori          t6, a0, 1189
                  or           zero, t5, tp
312:              sltiu        sp, a2, 567
                  lui          t2, 106044
                  or           a1, t1, s7
                  blt          t2, s7, 332f
                  bgeu         tp, t2, 334f
                  bge          a0, t3, 330f
                  slti         s3, t3, 382
                  sra          t3, t1, t6
                  slt          sp, a6, sp
                  addi         s6, a3, -1766
                  ori          a5, t2, 810
                  bge          t1, a7, 333f
                  andi         ra, s7, 924
                  andi         s7, gp, -511
326:              lui          s6, 280365
                  nop
                  bge          a1, zero, 347f
                  slti         s0, a3, -831
330:              ori          s10, s1, -1449
                  blt          s3, t0, 338f
332:              srli         a5, s7, 28
333:              lui          s8, 895206
334:              add          a5, s3, gp
                  add          s9, a1, a5
                  sll          s6, a6, s11
                  sra          s10, t1, t5
338:              slli         a4, s10, 7
                  auipc        a6, 614319
                  andi         s9, s9, -1568
                  beq          s9, s0, 344f
                  bne          s3, ra, 361f
                  nop
344:              ori          sp, tp, -10
                  auipc        t5, 915695
                  nop
347:              srl          s0, a2, s6
                  srl          a6, a4, s10
                  auipc        t2, 973307
                  xori         s4, gp, -773
                  auipc        s2, 366458
                  bgeu         s8, zero, 359f
                  addi         gp, a6, -1483
                  xor          s8, a4, s0
                  or           s6, a0, tp
                  andi         s7, a5, -480
                  xori         t1, t4, 466
                  ori          a3, a1, 130
359:              srli         a0, s0, 17
                  slti         s2, a7, -434
361:              bltu         a6, t4, 381f
                  andi         t4, t3, 297
                  addi         a6, t5, 370
                  srli         s7, a5, 7
                  srai         s6, tp, 1
                  sra          a1, s7, tp
                  andi         t3, t6, -193
                  bge          a4, s6, 382f
                  lui          t4, 26372
                  sltiu        zero, gp, 103
                  lui          s7, 902905
                  slti         t4, zero, -1305
                  bge          t0, s11, 389f
                  bne          s8, gp, 387f
                  bltu         s8, ra, 377f
                  or           a0, s2, a5
377:              srl          s0, t3, a0
                  srai         sp, t6, 2
                  bge          sp, zero, 394f
                  sra          s2, tp, t2
381:              bltu         a2, t5, 400f
382:              andi         t4, a2, -885
                  ori          s6, s6, -1601
                  ori          s7, s1, 1398
                  nop
                  bne          sp, s0, 401f
387:              sra          s4, t1, t2
                  bne          a5, zero, 395f
389:              and          a4, a7, s1
                  ori          s5, s4, 1598
                  slt          sp, zero, gp
                  la           a7, region_0+1249 #start riscv_load_store_rand_instr_stream_5
                  sra          a5, a4, s5
                  nop
                  lw           a4, -25(a7)
                  sub          sp, ra, tp
                  sb           s6, 52(a7)
                  sltu         a4, t0, a0
                  lb           s6, -64(a7)
                  srl          t3, ra, s6
                  sltiu        s4, s8, -1020
                  lb           t1, -36(a7)
                  sra          a0, t3, s0
                  or           a0, sp, s8
                  lw           t3, 63(a7)
                  lbu          t1, 34(a7)
                  lbu          a0, 37(a7)
                  lb           s10, 18(a7)
                  slli         s5, a2, 15
                  and          t2, a1, s1
                  xori         a4, t5, -115
                  lbu          t4, -42(a7)
                  lb           s8, -38(a7)
                  and          s2, ra, a2
                  srli         t4, t2, 2
                  lhu          s0, -47(a7)
                  lh           t2, 25(a7)
                  lb           s1, -16(a7)
                  nop
                  sh           s7, -63(a7)
                  sb           a6, 8(a7)
                  lbu          zero, 2(a7)
                  lb           s7, -42(a7)
                  auipc        s5, 335316
                  lb           a3, 48(a7)
                  sltu         a2, a3, s1
                  add          a0, s2, a1
                  xori         ra, s6, -1706
                  sltiu        t2, a2, 1981
                  lb           s3, 50(a7)
                  lh           a5, 1(a7)
                  addi         s4, s9, 329
                  andi         t4, s3, 886
                  lb           zero, -22(a7)
                  sb           zero, 34(a7)
                  sb           t5, 58(a7)
                  xor          t5, s8, gp
                  auipc        a5, 672379
                  or           t1, a0, s0
                  ori          ra, t4, -521
                  ori          gp, s8, 1744
                  sra          t5, zero, s11
                  lb           s9, 60(a7)
                  sub          t6, t2, t4
                  lb           a6, 12(a7) #end riscv_load_store_rand_instr_stream_5
                  add          s0, s9, s2
                  slti         s0, t0, 834
394:              bgeu         s3, a3, 414f
395:              sltiu        s2, a2, -1953
                  sltu         a2, gp, a3
                  bgeu         a3, tp, 415f
                  auipc        s1, 530410
                  srli         s1, s6, 30
400:              auipc        s6, 220718
401:              bge          s6, zero, 421f
                  and          gp, sp, a4
                  sll          a4, s4, a2
                  bne          a5, t1, 423f
                  bne          t4, zero, 413f
                  nop
                  xori         a4, s5, 924
                  nop
                  srai         s4, s8, 1
                  xori         s6, s9, 1612
                  slli         a0, zero, 22
                  xori         t1, t4, 1413
413:              nop
414:              nop
415:              and          a4, t5, t1
                  srl          sp, s0, s1
                  sub          s3, s6, s1
                  bgeu         s9, s11, 427f
                  add          t5, s4, s11
                  slti         s1, s10, 602
421:              bgeu         sp, s3, 424f
                  add          s8, s2, s7
423:              sra          s2, a6, t0
424:              bltu         t6, a5, 443f
                  bge          a7, s3, 432f
                  srli         a4, a3, 9
427:              blt          s8, s11, 445f
                  lui          a7, 171535
                  beq          s2, s3, 439f
                  addi         t2, s1, -2028
                  and          t3, s11, s5
432:              sra          zero, zero, s8
                  srai         a5, s4, 18
                  nop
                  slt          t1, s2, a1
                  blt          s6, t0, 454f
                  srai         s1, s5, 8
                  andi         a2, t0, -1068
439:              auipc        a6, 1036030
                  and          s5, t3, s4
                  xor          t3, gp, zero
                  sltiu        s0, s3, -1632
443:              blt          s0, s6, 456f
                  xori         s3, sp, -1169
445:              blt          s6, s7, 463f
                  srl          s6, a7, a0
                  nop
                  bne          s5, ra, 467f
                  bgeu         s6, a3, 469f
                  slli         zero, s11, 10
                  srai         t2, t5, 16
                  and          a0, s3, a3
                  sltu         s8, s9, a4
454:              sltiu        zero, s9, 83
                  blt          t1, zero, 465f
456:              beq          t1, t0, 458f
                  srl          a6, a3, s4
458:              lui          s3, 735305
                  blt          t4, s10, 468f
                  srli         s9, t0, 13
                  sll          s10, s5, t0
                  srl          s0, t5, s7
463:              bne          t5, t6, 481f
                  sra          t6, a5, s6
465:              bltu         s4, s4, 482f
                  auipc        s3, 13902
467:              nop
468:              sltiu        zero, s9, 486
469:              auipc        s0, 795987
                  sltu         t5, a7, a6
                  ori          s8, a0, 921
                  sltu         s2, s0, t5
                  xori         t6, a2, -1733
                  or           t1, a6, a4
                  sub          t1, a4, sp
                  bgeu         t0, gp, 481f
                  srli         s10, a6, 11
                  bne          s0, gp, 485f
                  sltu         s9, s11, a0
                  srl          t1, t4, tp
481:              or           s10, tp, s3
482:              sll          s4, zero, tp
                  slt          sp, zero, ra
                  and          s5, t4, s2
485:              sub          a4, t5, a1
                  beq          s6, t1, 506f
                  andi         a5, a0, -1827
                  bge          gp, t6, 496f
                  lui          s10, 383732
                  bgeu         s4, tp, 497f
                  srai         a0, s3, 12
                  or           s10, s3, s3
                  sra          a3, ra, t0
                  lui          a3, 740075
                  bne          a2, s5, 513f
496:              blt          s11, tp, 513f
497:              add          a2, a2, a4
                  bge          zero, a3, 511f
                  sltu         a7, t2, a2
                  xor          zero, s5, t6
                  sltu         s0, zero, sp
                  bge          t3, gp, 507f
                  or           sp, t2, s2
                  sra          s1, a7, s11
                  beq          zero, a5, 523f
506:              xori         t6, s2, -244
507:              sltu         a4, sp, t0
                  xor          sp, ra, gp
                  nop
                  sltiu        s4, a5, 445
511:              bgeu         s6, a5, 526f
                  bgeu         sp, sp, 525f
513:              sub          t3, ra, t2
                  and          s6, s9, t0
                  lui          s0, 382134
                  srl          s0, a6, s8
                  bltu         s10, a3, 526f
                  ori          a1, s7, -1198
                  slt          t6, s10, gp
                  la           t1, region_1+1616 #start riscv_load_store_rand_instr_stream_1
                  slt          a5, s5, a0
                  sw           a1, -192(t1)
                  lhu          a5, 172(t1)
                  sltiu        s1, t5, -1673
                  slli         gp, a2, 15
                  srli         t4, s1, 6
                  or           s4, t3, s2
                  lhu          s3, 214(t1)
                  lh           a5, 182(t1)
                  lhu          s4, -92(t1)
                  sb           s11, 173(t1)
                  sw           ra, -24(t1)
                  lb           s9, -63(t1)
                  lb           s3, 195(t1)
                  slli         s2, s9, 27
                  lui          t3, 594048
                  lbu          t4, -184(t1)
                  slti         t2, a5, -1505
                  slli         s3, s5, 3
                  sb           s6, -176(t1)
                  lhu          s1, -178(t1)
                  lbu          sp, -30(t1)
                  add          s9, s9, s9
                  sh           s10, -90(t1) #end riscv_load_store_rand_instr_stream_1
                  slli         s6, s1, 1
                  nop
                  sll          s4, zero, s1
523:              sub          s1, sp, tp
                  bge          t1, zero, 526f
525:              slti         a3, s4, -1858
526:              sltiu        a2, t2, 554
                  sra          t2, t1, s2
                  sltu         t4, t4, s10
                  sltu         s9, s4, a3
                  slli         a5, sp, 27
                  xori         s5, s7, 1633
                  addi         s2, a5, -1654
                  bgeu         sp, a4, 535f
                  sll          s8, a0, s9
535:              xori         a1, s1, -271
                  sra          a1, s4, s8
                  xor          a3, t1, t6
                  srli         a3, tp, 17
                  slt          s4, tp, t6
                  auipc        s9, 797805
                  sltiu        s8, a7, 1477
                  and          a6, s6, s0
                  xori         a7, s3, 1496
                  or           t3, s5, s8
                  srl          t2, t4, gp
                  slli         a0, a3, 25
                  xori         a7, sp, 489
                  add          t1, s2, t2
                  auipc        s8, 573682
                  slti         zero, s7, 1230
                  ori          t2, s11, 52
                  beq          t6, s5, 571f
                  srl          t5, a0, s10
                  or           s8, t4, sp
                  sll          a1, a3, s6
                  beq          t4, s7, 574f
                  sltu         s1, t5, a3
                  blt          s5, ra, 576f
                  sub          sp, s5, a2
                  slti         s8, s11, -1470
                  bgeu         a7, s2, 571f
                  sltiu        t1, t3, -768
                  slti         a1, s5, -897
                  nop
                  ori          s5, zero, -1360
                  xori         a0, t5, 453
                  sltiu        sp, s9, 1846
                  bge          a3, s10, 577f
                  ori          s0, tp, 1042
                  slti         sp, sp, 560
571:              xor          ra, sp, ra
                  sra          a1, s5, sp
                  beq          s8, t0, 593f
574:              lui          a2, 990226
                  sltu         a5, s6, a1
576:              xor          zero, s1, t1
577:              bge          tp, sp, 591f
                  nop
                  sll          s7, s2, a4
                  auipc        s10, 290998
                  bne          t3, gp, 597f
                  lui          s4, 1046399
                  ori          t2, s7, 121
                  sltu         s1, a5, t0
                  bne          s11, s8, 595f
                  bge          zero, a3, 601f
                  bne          s11, s8, 607f
                  or           a7, gp, a6
                  sltiu        a6, a6, -1000
                  ori          zero, a5, 1596
591:              srli         a2, s7, 10
                  sll          s9, s1, ra
593:              add          a3, s0, s10
                  slt          s5, t1, a7
595:              addi         zero, a1, 1632
                  and          s0, s3, a6
597:              sra          a2, t2, t6
                  xor          t1, a5, s9
                  xor          s9, ra, s3
                  srl          s3, s5, t6
601:              sltiu        s0, s3, 1643
                  slli         ra, ra, 3
                  add          s10, t4, t5
                  nop
                  ori          a7, tp, 1933
                  srli         a3, a1, 27
607:              bgeu         ra, a6, 626f
                  nop
                  add          s1, t2, t4
                  or           t5, a7, t0
                  srai         t3, s6, 1
                  slli         t2, ra, 4
                  slt          a2, s6, a0
                  xori         t2, zero, 1395
                  slti         a2, a3, -709
                  blt          a3, s8, 635f
                  and          s10, s7, s8
                  addi         s6, t2, -1040
                  slt          a5, a5, s10
                  sltiu        a6, s5, 342
                  sub          s6, s2, a3
                  lui          s4, 624981
                  slt          s5, a0, s6
                  and          s9, a4, t6
                  lui          s3, 280895
626:              srai         s0, zero, 27
                  srai         a4, ra, 3
                  nop
                  bltu         a7, s1, 632f
                  bgeu         a0, a2, 648f
                  lui          s2, 825461
632:              srl          t2, gp, s7
                  srai         a5, t1, 16
                  sub          s10, s5, a1
635:              and          a7, a1, a0
                  nop
                  srl          s4, t1, t3
                  slli         s10, a0, 22
                  addi         t5, s7, 846
                  sub          a5, s0, t5
                  add          sp, t5, t5
                  and          s7, a1, zero
                  or           t6, a4, t1
                  srli         sp, gp, 8
                  bne          a1, zero, 664f
                  slli         zero, a3, 10
                  beq          a4, s5, 657f
648:              sra          s6, s7, s11
                  sra          s10, a1, s1
                  srl          s1, t6, gp
                  bltu         a6, sp, 669f
                  bne          s7, s11, 672f
                  slti         s5, s4, 1293
                  sll          s6, s11, a3
                  and          t2, s2, a2
                  addi         a4, t1, 972
657:              blt          t0, s6, 677f
                  nop
                  bgeu         t5, s3, 673f
                  or           t5, a5, a0
                  slli         a2, t4, 16
                  sltiu        a1, s0, 489
                  srai         s4, s6, 9
664:              bge          a7, t0, 671f
                  sll          a0, s5, s5
                  bltu         s10, s1, 684f
                  nop
                  bge          t1, zero, 670f
669:              or           t2, s2, s8
670:              or           a3, s7, s3
671:              ori          t5, t6, -1423
672:              xori         s2, t0, 1582
673:              auipc        a0, 940451
                  blt          s3, a7, 692f
                  nop
                  addi         t4, s9, 1243
677:              auipc        s0, 950631
                  srl          t5, s9, a7
                  addi         a1, t5, 219
                  sltiu        s2, s2, 84
                  xor          a3, s11, t1
                  addi         ra, s4, -1946
                  slli         t2, s0, 2
684:              sll          a1, s4, s11
                  andi         s5, ra, 90
                  bgeu         gp, a3, 691f
                  auipc        s2, 413061
                  andi         s3, t1, 47
                  addi         s0, s0, -806
                  srl          a2, s2, s4
691:              sll          s9, s1, a0
692:              addi         a6, t6, -516
                  andi         t5, s1, -1776
                  sra          t2, a7, s9
                  ori          a0, tp, 130
                  bge          sp, s10, 705f
                  bne          s2, gp, 714f
                  xori         a2, t0, -367
                  slti         s8, t2, -904
                  slt          a2, sp, s10
                  bltu         s5, a4, 709f
                  or           a3, a3, gp
                  xor          gp, a4, t3
                  and          s6, a6, s10
705:              bne          gp, a7, 720f
                  auipc        a7, 11335
                  auipc        s8, 12311
                  sltiu        s10, a3, 123
709:              add          s3, a6, s11
                  and          s6, s6, s0
                  andi         a4, s1, 801
                  sll          gp, a5, sp
                  blt          a0, t0, 733f
714:              xori         a2, s6, 1645
                  and          s6, t6, s6
                  auipc        a6, 947598
                  sltiu        s1, s9, 15
                  srai         s10, s7, 13
                  and          a2, a3, a5
720:              sll          a1, s9, t1
                  bltu         s5, s7, 740f
                  sra          zero, a3, s2
                  andi         t5, s1, -675
                  sltiu        s3, tp, -1459
                  or           s6, a3, s0
                  bne          s5, s4, 744f
                  srl          s10, a6, tp
                  sltiu        gp, a0, 516
                  addi         s10, t3, -1546
                  xor          zero, s7, a2
                  blt          s5, t4, 746f
                  srai         a7, s5, 16
733:              srli         s5, t4, 5
                  srai         s4, a0, 4
                  srai         a6, s2, 19
                  sltiu        a6, s1, 1060
                  slli         zero, zero, 8
                  sltu         t5, s7, s1
                  and          a6, s10, t1
740:              andi         s9, t0, 208
                  bne          a4, t5, 760f
                  slt          s10, s5, a4
                  xor          zero, s11, ra
744:              sltiu        t4, sp, 1045
                  srli         a3, t2, 4
746:              bne          s1, a7, 759f
                  bne          t6, sp, 750f
                  sub          a4, s5, t4
                  add          t3, s7, s2
750:              sltiu        a3, s7, -372
                  bltu         t2, sp, 764f
                  srli         s4, t6, 13
                  srai         s0, t5, 25
                  sltiu        zero, s10, 1680
                  xor          s7, s6, t1
                  or           gp, s3, s6
                  andi         a4, a2, 333
                  nop
759:              sltu         s7, s10, a6
760:              slti         a2, s4, 1036
                  blt          ra, a7, 770f
                  beq          gp, s11, 780f
                  ori          s3, a3, 63
764:              xori         gp, tp, 1230
                  or           t6, s7, s4
                  xori         a3, s10, 132
                  add          t6, tp, t2
                  srai         a0, t4, 8
                  andi         t2, a1, -1431
770:              andi         a7, t6, 124
                  auipc        s0, 835447
                  slti         s7, s6, -178
                  xori         zero, s3, 84
                  slli         s1, zero, 30
                  sltiu        a2, s1, 70
                  slt          t2, a1, t6
                  addi         t5, s4, 666
                  ori          a4, s5, 932
                  bgeu         zero, a4, 798f
780:              addi         a5, a2, 1751
                  xori         t1, s8, -129
                  add          gp, a3, t4
                  and          t3, a5, t1
                  sub          s10, t2, a0
                  sltiu        t4, s2, -1282
                  beq          gp, s11, 805f
                  andi         t4, a5, -265
                  sra          t1, s6, s3
                  sub          s1, tp, s7
                  slt          a7, a1, tp
                  beq          sp, a5, 807f
                  xori         a1, sp, -972
                  srl          s1, s1, t2
                  slt          a1, ra, s0
                  nop
                  srai         t1, s11, 14
                  bltu         t4, s5, 799f
798:              sra          s7, sp, a5
799:              and          t5, s0, sp
                  beq          a1, s4, 807f
                  srli         s8, s11, 12
                  or           a7, sp, s4
                  sra          t3, a4, t0
                  bltu         a5, a3, 814f
805:              beq          t6, s3, 823f
                  sub          zero, a4, a5
807:              slt          s8, s10, a2
                  add          s4, a6, a4
                  auipc        s8, 987063
                  srai         s9, t5, 5
                  add          s5, gp, ra
                  slt          a0, s4, t0
                  sll          t1, tp, t1
814:              beq          sp, s7, 832f
                  lui          s10, 584037
                  addi         a2, s9, -873
                  beq          a6, s8, 824f
                  bge          sp, zero, 837f
                  add          a4, s3, s7
                  xor          s7, gp, s2
                  blt          t1, s11, 836f
                  srli         s8, s5, 21
823:              bltu         s9, s2, 837f
824:              bltu         s4, tp, 844f
                  and          s2, t3, zero
                  slt          t4, a7, a4
                  beq          s7, zero, 846f
                  slt          s6, tp, s0
                  bge          t6, s11, 849f
                  xor          t2, t4, a3
                  andi         s1, s8, 1314
832:              bne          s8, s11, 834f
                  srl          a4, s6, t6
834:              beq          s9, s8, 842f
                  srli         sp, s1, 23
836:              slti         ra, a4, -1551
837:              blt          s10, t2, 844f
                  slli         s8, s3, 11
                  srai         gp, a0, 23
                  and          s9, t4, t2
                  srli         s4, s2, 29
842:              sltiu        t2, t6, 399
                  srl          s4, t4, ra
844:              xor          s10, s1, a4
                  bltu         s4, tp, 858f
846:              slt          s4, s10, a6
                  slt          t2, tp, s3
                  add          s3, s2, a0
849:              addi         a5, t0, -1112
                  sra          sp, s2, t5
                  slti         a0, gp, -527
                  srli         ra, zero, 26
                  srai         a2, s10, 11
                  nop
                  srl          s0, s1, t1
                  sra          t3, a6, a0
                  srl          a2, t1, a7
858:              addi         s7, a5, 317
                  sltu         s0, s0, s11
                  blt          ra, a4, 879f
                  srli         a3, gp, 17
                  xori         a3, t0, -39
                  blt          a0, t3, 872f
                  slli         s3, a0, 4
                  sub          a3, ra, s3
                  slli         a2, a0, 2
                  auipc        ra, 192123
                  nop
                  sra          a5, a6, a0
                  slli         s4, a1, 22
                  slt          a1, t1, a5
872:              auipc        s0, 10673
                  and          s1, s6, s5
                  sub          zero, s2, t5
                  andi         a3, ra, -979
                  sll          zero, s3, s1
                  bne          s3, ra, 882f
                  sltu         t3, sp, t5
879:              or           a3, a6, t1
                  bge          s8, s4, 890f
                  nop
882:              or           s10, s9, t6
                  nop
                  bgeu         t1, t2, 900f
                  slt          s1, t6, t0
                  sltiu        t2, s9, -1379
                  bge          s10, gp, 905f
                  slt          s1, s6, a7
                  srai         a1, t2, 22
890:              blt          s10, a1, 900f
                  srai         s1, a1, 30
                  sltiu        s5, s10, 666
                  blt          s0, s7, 906f
                  slt          t6, s4, zero
                  bltu         s8, ra, 913f
                  ori          gp, s10, 318
                  bltu         zero, t2, 899f
                  sra          gp, s3, t6
899:              srl          t6, s6, a5
900:              blt          s3, sp, 919f
                  nop
                  srai         s4, ra, 6
                  auipc        zero, 144338
                  sltu         t3, s0, t2
905:              add          a1, sp, zero
906:              bltu         a5, s5, 909f
                  srl          a0, a5, a5
                  addi         a5, t2, 665
909:              slli         s6, t0, 10
                  srl          a2, t3, s6
                  blt          t3, a0, 920f
                  sll          t6, gp, a4
913:              sub          a6, sp, s6
                  bne          t5, t4, 929f
                  bgeu         s3, s3, 935f
                  add          zero, s10, zero
                  blt          a4, s8, 934f
                  auipc        s1, 530047
919:              xor          s6, a6, t2
920:              and          t3, a6, t3
                  srli         t1, a6, 17
                  sub          s1, s10, t5
                  sll          s10, s1, a5
                  sra          gp, a5, t4
                  sltiu        s2, t6, -1069
                  or           a3, a2, s5
                  beq          ra, a7, 945f
                  auipc        s0, 681692
                  and          s10, t3, a5
                  xori         a6, s9, 122
                  srl          sp, s0, s8
                  lui          s0, 975497
                  slti         s1, a3, 1774
sub_4_j11:        jal          t2, sub_6 #jump sub_4 -> sub_6
929:              beq          s3, a3, 939f
                  sltiu        sp, s10, 1405
                  srai         zero, t4, 15
                  srai         s3, a6, 14
                  slti         s3, a0, 1153
934:              sll          a0, a6, sp
935:              srl          a0, s9, t5
                  slti         s5, s6, 1618
                  sub          s10, zero, t6
                  auipc        s6, 548172
939:              sub          s8, a2, zero
                  bgeu         s7, s1, 947f
                  bltu         s0, s11, 956f
                  sra          s8, ra, s0
                  srli         s0, a0, 23
                  addi         s2, t4, 1061
945:              xori         t5, s3, -1845
                  bne          zero, t0, 965f
947:              and          s6, a2, a5
                  and          t3, s0, zero
                  bltu         t2, a0, 968f
                  andi         s5, s2, 460
                  bgeu         a0, s1, 960f
                  nop
                  lui          s7, 769023
                  beq          sp, t3, 972f
                  lui          a5, 55255
956:              bltu         s10, gp, 963f
                  nop
                  add          a1, s4, s3
                  bgeu         a7, s9, 979f
960:              or           a6, gp, a5
                  sra          t6, a6, s2
                  blt          a1, t1, 975f
963:              addi         s0, a5, 1353
                  or           a1, a5, s1
965:              add          t3, zero, s4
                  addi         s3, tp, -1586
                  bge          zero, s1, 970f
968:              ori          t6, s3, -561
                  sll          a3, s5, a7
970:              addi         a3, s0, -1316
                  bltu         s10, s2, 984f
972:              bltu         s7, a7, 990f
                  bge          s11, t4, 988f
                  bgeu         gp, s8, 988f
975:              sub          t6, s8, s8
                  sltu         t5, t1, s2
                  auipc        a7, 1007027
                  and          zero, s4, s6
979:              sra          a0, s10, t4
                  bge          s1, s0, 999f
                  bne          a0, s8, 997f
                  slt          s3, a0, s3
                  lui          s2, 29074
984:              sra          t1, t1, tp
                  blt          t2, s3, 1003f
                  sll          sp, t4, s1
                  beq          tp, t3, 997f
988:              bne          t6, t6, 1006f
                  and          a6, s0, t1
990:              sra          a4, a7, a7
                  srai         s10, gp, 31
                  srai         gp, s10, 3
                  auipc        t6, 437708
                  lui          gp, 314677
                  blt          s5, gp, 1015f
                  nop
997:              bgeu         s5, a2, 1014f
                  la           t2, region_1+931 #start riscv_load_store_rand_instr_stream_11
                  nop
                  sll          t5, s6, s2
                  lbu          t4, 15(t2)
                  sh           a0, 5(t2)
                  sb           s8, -16(t2)
                  lb           s4, -8(t2)
                  lbu          a1, 2(t2)
                  slt          s5, s0, s1
                  xori         a6, s8, -994
                  sra          s9, a3, a6
                  and          s3, t0, t4
                  sb           s11, 16(t2)
                  sll          t1, tp, t0
                  sll          sp, tp, a7
                  lh           a0, 13(t2)
                  lh           s0, 11(t2)
                  xori         a1, a6, -399
                  lbu          s7, -3(t2)
                  nop
                  ori          s10, a4, 843
                  lw           s7, -15(t2)
                  lb           s3, -16(t2)
                  auipc        a5, 759626
                  lbu          s7, 10(t2)
                  add          zero, t2, t5
                  lhu          s2, -9(t2)
                  lbu          t5, -2(t2)
                  or           t5, s11, s0
                  lbu          s4, -2(t2)
                  andi         s9, a7, -849
                  sll          s4, sp, s3
                  lbu          t3, -3(t2)
                  lh           s7, -9(t2)
                  lb           a3, 8(t2)
                  slli         a6, a2, 20
                  sb           t4, -6(t2)
                  lb           s7, 12(t2)
                  sra          sp, gp, sp
                  srli         t1, gp, 19
                  sltiu        zero, zero, -1784
                  sb           s2, -4(t2)
                  lbu          s7, 16(t2)
                  slli         s9, a5, 3
                  sb           s3, -11(t2)
                  and          t5, s6, zero
                  slt          t1, s11, s4
                  lb           s8, -9(t2)
                  lb           s7, 14(t2)
                  srai         t5, a5, 19
                  lb           a6, -4(t2) #end riscv_load_store_rand_instr_stream_11
                  slti         s5, t2, 1471
999:              addi         s8, s10, 515
                  blt          sp, s3, 1002f
                  slli         a0, a7, 20
1002:             bltu         zero, s8, 1020f
1003:             and          t5, a5, a4
                  sltu         ra, s2, a7
                  beq          ra, a3, 1024f
1006:             srl          a5, t4, t6
                  bne          s10, s8, 1015f
                  ori          a1, s8, 694
                  bge          s9, t5, 1018f
                  lui          a5, 718330
                  bne          a4, s3, 1031f
                  bne          t0, s10, 1014f
                  nop
1014:             sub          t2, t0, s3
1015:             addi         a4, s8, -1561
                  beq          s4, gp, 1021f
                  bltu         t3, s10, 1027f
1018:             beq          a4, t5, 1036f
                  bgeu         a6, a1, 1021f
1020:             auipc        a7, 757717
1021:             srl          zero, a0, a3
                  add          s1, zero, t1
                  sltiu        a6, s8, -1650
1024:             sll          gp, s0, s0
                  andi         s4, sp, -405
                  slli         a3, a5, 15
1027:             sra          t5, tp, s5
                  xori         t6, ra, -1933
                  bne          t4, s5, 1049f
                  or           t2, tp, s7
1031:             sra          s1, s1, t2
                  lui          s9, 866709
                  addi         s9, s5, 1582
                  or           s3, a0, s9
                  and          s9, s4, a2
1036:             sub          a5, s11, t5
                  add          a4, s4, a1
                  xori         s9, ra, 395
                  slti         a7, a2, 1610
                  srl          s8, s3, s3
                  auipc        ra, 2402
                  blt          a3, a4, 1047f
                  bne          a7, s1, 1063f
                  sll          s8, a1, t4
                  beq          t2, zero, 1060f
                  slti         s0, s9, 296
                  la           s1, region_0+356 #start riscv_load_store_rand_instr_stream_8
                  sltu         s2, s7, a3
                  sb           t6, 33(s1)
                  sll          a4, a5, sp
                  sh           a7, -6(s1)
                  slt          s2, s6, s7
                  xori         s9, s10, -1268
                  lb           t2, -59(s1)
                  sub          s9, a7, t1
                  sb           a5, -27(s1)
                  lb           t2, 27(s1)
                  lhu          sp, 12(s1)
                  lw           s0, 24(s1)
                  lb           s0, 27(s1)
                  ori          s0, tp, 897
                  lhu          s4, -60(s1)
                  srl          s8, tp, a6
                  lhu          t1, 10(s1)
                  ori          s3, s4, -865
                  auipc        t6, 416490
                  sh           s4, -30(s1)
                  auipc        a2, 406081
                  sltiu        t5, s10, -1426
                  or           t2, s7, t3
                  lb           t2, -63(s1)
                  sh           s2, 36(s1)
                  lh           zero, 50(s1)
                  sb           s9, 3(s1)
                  lb           a5, -48(s1)
                  lb           a2, -55(s1)
                  lbu          t4, 19(s1) #end riscv_load_store_rand_instr_stream_8
1047:             sltiu        s1, a6, -1672
                  sll          s9, t4, zero
1049:             lui          s8, 979987
                  bne          s3, a1, 1063f
                  lui          a0, 233276
                  slli         s10, a6, 31
                  add          a4, zero, a0
                  srai         s2, t5, 18
                  beq          a4, a3, 1062f
                  lui          s9, 37006
                  bgeu         s8, a0, 1076f
                  sub          t4, zero, a7
                  addi         s6, t6, 1103
1060:             slt          t1, s2, t4
                  blt          s2, ra, 1080f
1062:             sll          a6, t2, gp
1063:             srli         s8, a4, 31
                  add          t5, t5, gp
                  auipc        a7, 888004
                  nop
                  xori         s10, t1, 373
                  add          a7, a0, ra
                  srl          s4, s5, sp
                  andi         a5, s3, 621
                  srai         s9, s0, 18
                  slti         t6, a6, 1845
                  sll          s1, t2, a3
                  beq          t1, s9, 1088f
                  bltu         a1, s0, 1084f
1076:             beq          zero, s4, 1092f
                  auipc        sp, 497604
                  auipc        s7, 494955
                  sltiu        ra, sp, -1379
1080:             slli         zero, ra, 5
                  srai         s1, a5, 7
                  and          a2, s7, t0
                  bne          gp, a6, 1086f
1084:             blt          tp, s11, 1102f
                  sub          s7, s8, t2
1086:             bne          a4, s2, 1104f
                  ori          s5, s1, 170
1088:             srli         t4, t0, 2
                  beq          a4, t5, 1099f
                  xori         sp, t3, -1725
                  andi         t4, a2, -1540
1092:             slli         s6, s11, 27
                  nop
                  bge          a5, a3, 1109f
                  sltu         ra, a1, s2
                  beq          s3, s4, 1114f
                  xori         t4, tp, -1724
                  sll          s6, t3, t3
1099:             bltu         a3, s10, 1108f
                  bge          zero, a0, 1120f
                  or           s6, a0, t3
1102:             bgeu         a5, t0, 1121f
                  sll          a6, a3, t6
1104:             xori         a2, s1, -201
                  sub          a5, t5, s6
                  srai         t3, s3, 25
                  slt          ra, s6, t4
1108:             xori         t3, a1, 878
1109:             blt          t4, s2, 1117f
                  xori         a4, a5, -1779
                  auipc        t5, 251562
                  and          s9, s6, s6
                  nop
1114:             addi         s3, a0, -1089
                  ori          gp, s4, -2032
                  blt          a3, a0, 1133f
1117:             srli         s9, s5, 6
                  and          s10, s6, a0
                  ori          s10, a4, -1445
1120:             beq          a1, a7, 1138f
1121:             slt          s8, s2, tp
                  bge          s9, s9, 1129f
                  bne          a0, a7, 1142f
                  srl          a5, s2, t5
                  bgeu         tp, s2, 1138f
                  sltiu        a1, s0, -540
                  slti         s9, a2, 1371
                  bne          s10, a5, 1130f
1129:             bltu         s0, s1, 1148f
1130:             slti         s5, s9, 844
                  and          s3, ra, t2
                  sll          ra, zero, sp
1133:             addi         t2, sp, -342
                  bgeu         zero, t6, 1152f
                  sra          a7, t1, s11
                  lui          s5, 95917
                  nop
1138:             bgeu         a1, t4, 1147f
                  blt          t6, t4, 1154f
                  bgeu         t6, s8, 1153f
                  and          s9, ra, a5
1142:             and          a7, a1, s2
                  xor          s10, t3, s4
                  lui          s4, 750766
                  ori          s6, a1, -621
                  bne          s1, t6, 1163f
1147:             slli         a6, t2, 21
1148:             add          s1, s2, t0
                  nop
                  andi         s5, t2, -1470
                  bgeu         a6, s4, 1170f
1152:             srl          t2, t3, t6
1153:             slli         t5, s11, 27
1154:             lui          s8, 932575
                  nop
                  bgeu         a5, a3, 1172f
                  sltu         zero, t2, t4
                  slt          a5, s10, a5
                  add          s6, s4, t5
                  sltu         s10, s5, s9
                  sub          t6, zero, t4
                  bge          t5, s0, 1182f
1163:             srl          s6, zero, a4
                  xori         t5, a1, 1485
                  add          t3, a3, t2
                  bltu         s3, a1, 1176f
                  ori          s6, t4, -929
                  blt          a7, a0, 1188f
                  beq          a0, s3, 1183f
1170:             addi         sp, a7, -763
                  sub          t2, s9, a7
1172:             xori         t4, s3, -1106
                  nop
                  bge          a5, t3, 1192f
                  srl          t4, gp, s5
1176:             sra          t1, tp, s8
                  beq          s6, a5, 1197f
                  slti         zero, a1, -1035
                  sltu         a2, s9, s1
                  auipc        s2, 451811
                  beq          t4, t4, 1186f
1182:             beq          s3, a0, 1184f
1183:             sll          s2, sp, s1
1184:             andi         s9, a2, -1600
                  addi         a3, a3, 486
1186:             add          t1, s10, ra
                  slt          s5, s11, t5
1188:             srai         a1, t5, 7
                  andi         s4, t0, 675
                  andi         a3, t5, -308
                  bltu         s10, tp, 1201f
1192:             blt          a7, t1, 1199f
                  slli         s0, ra, 20
                  xori         zero, s7, -375
                  slli         a1, s6, 26
                  sltiu        a7, gp, -554
1197:             srai         t5, a5, 30
                  add          t1, s0, t5
1199:             and          t2, s11, s5
                  slt          s6, t2, a2
1201:             slti         s10, t6, 853
                  add          s7, s4, a4
                  nop
                  bne          t4, s7, 1207f
                  slt          s1, a3, s7
                  sub          t3, a0, tp
1207:             bne          s10, t5, 1214f
                  nop
                  add          s8, a6, s10
                  lui          t4, 730449
                  ori          a5, t3, 1628
                  slti         a1, t5, 843
                  ori          s2, t5, -879
1214:             and          s9, t6, a6
                  sub          s7, s5, s3
                  and          zero, t5, s3
                  beq          gp, gp, 1235f
                  andi         s9, t3, 1524
                  add          s0, t5, t3
                  bltu         s5, s3, 1222f
                  bgeu         gp, ra, 1239f
1222:             ori          s5, tp, -490
                  slli         s9, t2, 12
                  lui          s10, 924031
                  blt          a2, a1, 1244f
                  bne          s5, t6, 1241f
                  sltu         s2, s2, a6
                  lui          s9, 687658
                  blt          a2, t6, 1242f
                  ori          gp, a3, -1050
                  sltu         a5, t4, t5
                  ori          a2, a2, 1708
                  sltiu        s9, a3, 1852
                  nop
1235:             slti         t2, s3, 1347
                  lui          a1, 107196
                  andi         s0, a0, -15
                  ori          a7, a3, -673
1239:             sltiu        t2, s10, -815
                  beq          s4, s7, 1259f
1241:             sra          a4, a7, a1
1242:             lui          a6, 831064
                  auipc        s7, 123187
1244:             blt          zero, a5, 1253f
                  la           t2, region_0+1979 #start riscv_load_store_rand_instr_stream_10
                  lb           t3, -528(t2)
                  lw           s3, -1119(t2)
                  auipc        s8, 807392
                  srl          zero, s2, s11
                  slt          s3, t4, a6
                  ori          ra, gp, -463
                  lh           s5, -397(t2)
                  add          s8, s5, s2
                  lhu          t5, -839(t2)
                  sb           gp, -1352(t2)
                  sh           s3, -153(t2)
                  srai         s7, sp, 21
                  lhu          a5, -385(t2)
                  slt          t3, gp, gp
                  lw           a4, -867(t2)
                  sub          a4, s1, a4
                  lui          s6, 22416
                  lb           s9, -1956(t2)
                  lui          zero, 711030
                  lb           a1, -1718(t2)
                  srli         gp, tp, 27
                  xor          s6, sp, t4
                  auipc        a7, 104058
                  sb           a0, -1644(t2) #end riscv_load_store_rand_instr_stream_10
                  srai         t4, zero, 3
                  sltu         s2, zero, s7
                  ori          t1, t3, 970
                  xori         t4, t3, -508
                  blt          s5, a1, 1267f
                  bge          ra, s9, 1258f
                  lui          a4, 207057
                  lui          t5, 60530
1253:             bge          s5, t4, 1262f
                  xori         ra, t3, 1801
                  srli         s10, s3, 31
                  sltiu        a0, tp, -1871
                  bge          t3, a2, 1270f
1258:             and          t4, a6, a1
1259:             bltu         t6, s11, 1279f
                  bne          a2, ra, 1267f
                  bgeu         t6, s7, 1266f
1262:             beq          s9, a4, 1281f
                  add          zero, a0, tp
                  bgeu         t3, s5, 1282f
                  bge          t4, t3, 1267f
1266:             addi         a7, s1, -2039
1267:             xori         a6, s4, -1659
                  srl          t6, zero, s9
                  xor          s6, t6, t2
1270:             srl          gp, t1, t3
                  beq          t6, s4, 1290f
                  xor          s0, t5, zero
                  add          a0, s9, s6
                  srai         s3, s0, 6
                  bne          a6, s0, 1283f
                  slli         s2, s5, 7
                  bge          s2, t4, 1292f
                  sltiu        s0, sp, 1475
1279:             slli         gp, a7, 8
                  sll          a3, zero, s7
1281:             sll          a4, s9, a7
1282:             add          gp, s5, a6
1283:             sll          a1, a5, s4
                  srli         s0, tp, 8
                  or           ra, s9, t1
                  xori         s5, gp, 1868
                  bgeu         s5, s2, 1300f
                  srli         s3, s2, 24
                  sub          t4, sp, a3
1290:             sub          t5, a5, ra
                  xor          a6, a7, s10
1292:             sll          a6, zero, t2
                  sra          s6, t5, sp
                  nop
                  srai         a6, s7, 26
                  lui          sp, 920348
                  auipc        s4, 1011772
                  sra          s5, s0, t2
                  nop
1300:             srl          gp, zero, s5
                  slli         s5, s3, 0
                  slti         s2, s9, 1223
                  xor          gp, a5, a1
                  add          s2, t3, t4
                  ori          a5, s9, -1914
                  sub          zero, s11, t3
                  bltu         s5, a1, 1321f
                  srai         ra, s11, 2
                  addi         a1, a5, -1983
                  slt          s7, t1, a0
                  bgeu         s2, s2, 1327f
                  srl          a7, t4, s2
                  srli         a2, t6, 4
                  add          s3, s4, t4
                  bge          s5, a0, 1333f
                  slli         a3, s6, 10
                  add          t4, a1, t5
                  blt          s1, s8, 1325f
                  srli         s5, t2, 11
                  andi         s4, a2, -818
1321:             andi         a1, t5, 1348
                  sll          s8, a4, a2
                  srai         s6, a3, 5
                  or           s2, a4, s11
1325:             slli         gp, s1, 9
                  bge          s2, zero, 1344f
1327:             addi         ra, zero, 133
                  nop
                  lui          a3, 589693
                  sltu         s4, s11, zero
                  bgeu         t3, t4, 1333f
                  blt          t0, s2, 1349f
1333:             auipc        a2, 72472
                  bge          a5, zero, 1344f
                  sltiu        s0, a1, -1798
                  sll          t2, ra, s8
                  xori         s5, t6, 1540
                  srl          a0, ra, s1
                  ori          sp, a3, 979
                  slli         s4, sp, 19
                  auipc        t5, 627473
                  slli         s0, a3, 24
                  addi         a4, t1, 1705
1344:             lui          s0, 1020944
                  srli         a1, a6, 16
                  sub          zero, s9, gp
                  or           s2, t4, sp
                  addi         t5, t1, -1095
1349:             sub          s9, a0, t1
                  nop
                  sltiu        ra, a5, 865
                  add          a5, a2, a7
                  bgeu         a2, a7, 1368f
                  srai         s2, a6, 28
                  xori         t4, s7, -683
                  sub          s1, s1, ra
                  srli         a5, a5, 3
                  bltu         s4, a7, 1378f
                  bltu         s10, a0, 1368f
                  sub          gp, a5, t0
                  and          s10, tp, a6
                  slli         t6, t2, 0
                  beq          gp, s7, 1382f
                  slli         gp, sp, 14
                  sltu         s8, s7, s11
                  auipc        t6, 33323
                  bge          tp, zero, 1377f
1368:             ori          s0, s9, -425
                  bltu         a1, s2, 1387f
                  add          s3, s10, s5
                  beq          s3, a3, 1390f
                  nop
                  slli         a2, t6, 1
                  and          a2, t3, t1
                  sltiu        a7, t0, -301
                  bne          zero, tp, 1396f
1377:             bge          s2, t1, 1395f
1378:             srli         s5, a1, 27
                  beq          a4, gp, 1382f
                  sra          s7, s2, a4
                  sra          zero, ra, ra
1382:             bge          s7, s10, 1401f
                  lui          s2, 697013
                  bge          ra, a6, 1402f
                  slt          s6, s4, s2
                  slli         a7, s10, 19
1387:             slti         s7, t6, 954
                  xori         s0, a5, -2018
                  add          gp, s5, t6
1390:             xori         s1, s3, 1042
                  sra          t1, s8, a6
                  slt          s4, s10, t3
                  slli         s10, tp, 14
                  beq          s9, a5, 1410f
1395:             xori         t6, zero, -85
1396:             bltu         s2, t4, 1411f
                  srai         s2, s9, 27
                  sub          s9, t4, sp
                  bge          t1, a0, 1412f
                  xor          s0, t3, a7
1401:             sltu         s10, tp, s1
1402:             bltu         s1, s1, 1421f
                  or           zero, t1, a0
                  slti         t4, t4, -1492
                  xor          t2, ra, s10
                  nop
                  andi         s2, a7, -1145
                  sltu         t4, s6, s4
                  beq          gp, t4, 1429f
1410:             sra          ra, a6, a2
1411:             andi         s9, s9, 194
1412:             bne          s10, s11, 1419f
                  ori          s9, a4, -1911
                  bne          s10, a3, 1422f
                  xori         gp, a1, -88
                  srai         s6, s8, 13
                  slli         s0, sp, 30
                  slti         a5, t3, 1273
1419:             sltiu        s5, sp, -838
                  xori         a3, s2, 24
1421:             bge          t1, a2, 1426f
1422:             bne          s6, t5, 1432f
                  sub          t3, t6, s0
                  slt          s4, s11, sp
                  xor          s6, t1, t4
1426:             bltu         t3, ra, 1443f
                  bne          a0, s11, 1446f
                  slli         t6, s8, 7
1429:             beq          s1, gp, 1444f
                  srl          a2, t2, s9
                  sll          s5, s5, zero
1432:             andi         s0, a4, 728
                  sltiu        s7, tp, 1252
                  xor          s10, t1, sp
                  bltu         gp, s5, 1455f
                  bne          t5, s3, 1454f
                  blt          s3, a5, 1444f
                  sltiu        s4, s6, 1523
                  bltu         a5, s3, 1458f
                  auipc        t6, 428673
                  la           sp, region_1+99 #start riscv_load_store_rand_instr_stream_3
                  lhu          t4, -99(sp)
                  sw           s3, 105(sp)
                  sb           s4, -20(sp)
                  sltiu        t3, s5, -22
                  lbu          s10, 106(sp)
                  sra          zero, a0, a7
                  or           t2, t6, a6
                  lhu          a0, -53(sp)
                  sb           a2, 131(sp)
                  andi         t2, s8, 417
                  addi         a6, s2, -836
                  lbu          a7, 222(sp)
                  auipc        s10, 709748
                  and          a3, a3, s11
                  ori          a5, a5, -1748
                  sll          s1, ra, a6
                  srai         ra, tp, 2
                  sb           t5, 30(sp)
                  lb           s3, -22(sp)
                  sll          s2, s1, s7
                  sb           s6, 226(sp)
                  sll          a4, s4, a0
                  andi         t1, s5, -902
                  sll          s8, t6, a4
                  lb           t2, 246(sp)
                  ori          s2, a5, 3
                  srl          s1, s3, a7
                  sltiu        a1, s2, -305
                  lb           s4, 49(sp)
                  lb           ra, 48(sp)
                  lh           t3, 187(sp)
                  lbu          s2, 130(sp)
                  lw           a4, 93(sp)
                  andi         t3, t5, 55
                  andi         t1, t0, 1958
                  sltiu        s7, tp, -722
                  srai         a4, a5, 15
                  sb           s10, -40(sp)
                  sll          t3, t3, s10
                  lb           gp, 157(sp)
                  lbu          zero, -38(sp)
                  auipc        a2, 224026
                  sb           s10, 98(sp)
                  andi         s3, a7, 1133
                  sltu         t5, s4, a6
                  andi         s2, tp, -1098
                  slt          t3, s9, s11
                  nop
                  sb           s3, -16(sp)
                  lb           a2, 208(sp)
                  lhu          s5, 171(sp)
                  lb           t1, 58(sp)
                  lbu          s0, -23(sp) #end riscv_load_store_rand_instr_stream_3
                  or           t6, t6, s4
                  bne          t2, a1, 1445f
1443:             bgeu         t2, a0, 1456f
1444:             lui          t2, 724683
1445:             srli         s8, a3, 16
1446:             and          a0, t4, a3
                  blt          a7, s7, 1467f
                  addi         a4, s5, -276
                  blt          a5, s10, 1451f
                  bgeu         a4, s5, 1468f
1451:             bltu         s8, t6, 1453f
                  bgeu         s2, s9, 1470f
1453:             beq          sp, a2, 1467f
1454:             bne          a3, t1, 1463f
1455:             sra          s2, a2, s1
1456:             ori          t5, tp, -1316
                  lui          s9, 871479
1458:             add          a6, s5, tp
                  bne          a7, t1, 1468f
                  auipc        a6, 63752
                  or           zero, t0, a0
                  lui          a5, 246629
1463:             lui          a7, 823129
                  slli         a0, t4, 4
                  sub          s10, t2, a4
                  sltu         s4, sp, t4
1467:             sub          a0, s0, s7
1468:             srai         gp, a5, 12
                  sltiu        t6, s8, -523
1470:             bgeu         a5, a3, 1488f
                  auipc        a3, 582487
                  sra          s2, t1, s5
                  srli         t2, t4, 7
                  ori          s6, a6, 1151
                  bltu         a1, s0, 1485f
                  nop
                  sltiu        s2, s1, 1864
                  bgeu         s10, s9, 1497f
                  or           s6, tp, s11
                  sll          s6, t4, ra
                  blt          s4, s11, 1500f
                  xor          s0, t4, s10
                  bge          a6, gp, 1491f
                  add          t1, s1, a6
1485:             or           s6, s2, t4
                  slli         sp, t5, 18
                  srai         a6, s1, 2
1488:             add          s1, s8, t0
                  srli         t1, a3, 16
                  bgeu         tp, t6, 1492f
1491:             bltu         s3, s11, 1496f
1492:             sll          a3, s9, t1
                  andi         s0, s10, -58
                  slli         s8, a0, 19
                  bltu         s10, s8, 1504f
1496:             or           s4, s4, a4
1497:             bltu         gp, s0, 1515f
                  srai         s6, s1, 23
                  srai         gp, t4, 7
1500:             slli         t6, tp, 18
                  bge          t2, s11, 1508f
                  lui          a0, 183290
                  sltu         s3, s6, t0
1504:             nop
                  sll          s9, t4, a2
                  srai         sp, a6, 4
                  xor          s3, t4, s8
1508:             add          s1, s6, t5
                  auipc        a7, 610722
                  ori          t6, a7, -981
                  sltiu        a0, a7, -1941
                  or           s8, a1, s1
                  and          s5, sp, a4
                  lui          a4, 651160
1515:             and          s1, tp, t3
                  blt          gp, s6, 1531f
                  or           sp, gp, a7
                  beq          t4, a5, 1525f
                  xor          s0, sp, tp
                  bne          s6, a3, 1538f
                  srli         s4, t0, 16
                  nop
                  slti         s5, t1, 1998
                  sub          a2, zero, s5
1525:             lui          s6, 98729
                  sltu         s2, s6, s6
                  sltiu        s2, s10, 1959
                  nop
                  xori         sp, a6, -452
                  slli         t1, a4, 4
1531:             andi         t2, a3, -1967
                  sll          s5, a0, a3
                  add          s2, s5, s9
                  or           s8, t3, s7
                  xori         s2, ra, 280
                  addi         t3, a7, -1163
                  srl          a0, s9, t6
1538:             bltu         ra, gp, 1553f
                  sra          a6, s4, s8
                  addi         a0, t5, 1030
                  ori          zero, gp, -1913
                  bge          zero, t1, 1552f
                  bne          gp, zero, 1556f
                  nop
                  auipc        s3, 193436
                  bge          tp, s3, 1555f
                  srai         a2, a6, 6
                  sra          s8, a0, gp
                  bltu         t1, a0, 1562f
                  add          t6, t5, s6
                  srli         s7, s0, 18
1552:             and          t5, s8, gp
1553:             xori         s3, s4, -1507
                  blt          tp, s7, 1571f
1555:             slli         s6, s7, 28
1556:             beq          a0, s1, 1575f
                  sll          t1, s9, s6
                  srli         s1, t4, 20
                  srai         a2, s0, 4
                  srli         a3, t1, 6
                  sra          ra, a2, t4
1562:             auipc        a5, 919342
                  slti         t3, t5, 1883
                  slli         t2, s0, 11
                  andi         a1, t6, 1444
                  lui          a6, 652151
                  blt          s8, a6, 1587f
                  nop
                  bge          a7, a2, 1587f
                  xori         a7, a5, -227
1571:             bne          sp, s8, 1590f
                  sll          a1, t1, t1
                  sltu         s6, t2, tp
                  add          t4, s2, s7
1575:             blt          t1, t1, 1595f
                  bne          t3, a5, 1594f
                  sltu         a5, s6, gp
                  sltiu        t3, t1, -636
                  ori          s5, s1, 496
                  ori          a4, a7, -633
                  slt          s0, s9, a4
                  add          t4, t3, a0
                  srl          s1, tp, s9
                  bne          t6, s2, 1600f
                  nop
                  lui          a2, 953688
1587:             bne          s3, a4, 1605f
                  xori         s3, zero, 1512
                  andi         t6, s10, 2000
1590:             bge          s8, a1, 1600f
                  lui          s5, 369657
                  bgeu         s6, t1, 1606f
                  blt          t4, a2, 1596f
1594:             nop
1595:             blt          sp, a7, 1597f
1596:             srli         a2, ra, 17
1597:             lui          gp, 34525
                  sltiu        a0, s9, 18
                  sltiu        sp, s1, -730
1600:             beq          s5, s8, 1620f
                  bne          a0, t6, 1619f
                  and          a4, t2, zero
                  auipc        s2, 286315
                  nop
1605:             slti         t4, t3, -1078
1606:             xor          a2, a3, s1
                  andi         t5, tp, -1454
                  xor          s2, s6, gp
                  or           t4, s2, s4
                  xor          t6, s1, s7
                  beq          s5, s6, 1628f
                  ori          t6, t1, -734
                  beq          a1, s10, 1629f
                  sra          t1, s0, t0
                  srai         a5, gp, 3
                  or           t5, t4, s7
                  sll          a1, s5, s2
                  slti         t3, ra, 1732
1619:             slti         s6, s3, -1266
1620:             and          a6, a5, s4
                  srai         sp, a3, 22
                  sll          t4, a6, s6
                  auipc        gp, 481223
                  add          t3, t5, tp
                  andi         a7, s2, -46
                  slt          s6, t0, s0
                  srli         t3, sp, 12
1628:             xor          s10, s11, t6
1629:             bge          a4, s7, 1648f
                  addi         a6, t1, -433
                  xori         t3, s3, 618
                  addi         t2, a1, -1986
                  auipc        t2, 152326
                  slli         a4, a3, 26
                  srai         s0, s2, 10
                  sltu         a7, a1, t2
                  srli         s8, s0, 28
                  and          s8, t3, a4
                  srl          a6, zero, s2
                  sra          s9, t5, s7
                  bge          s1, zero, 1650f
                  bge          s2, t2, 1647f
                  slt          a4, sp, a3
                  srai         sp, a2, 8
                  xor          s1, t0, t3
                  sltiu        a2, s9, -449
1647:             xor          s5, a4, ra
1648:             auipc        s0, 184714
                  srli         s0, ra, 29
1650:             xori         a2, a2, -1775
                  addi         s8, a4, -86
                  srli         a5, a5, 2
                  srli         s8, ra, 17
                  bge          a3, s1, 1672f
                  sra          s6, t3, t4
                  add          a4, t5, a0
                  bge          s6, t0, 1670f
                  slt          t3, a5, s4
                  lui          ra, 256547
                  or           s2, t3, a7
                  sll          s4, t2, a6
                  addi         a5, s3, 1392
                  ori          s4, t6, -653
                  slt          ra, t6, t1
                  sra          gp, t1, s7
                  sll          s2, s11, s7
                  slli         a1, zero, 22
                  srli         t4, s6, 17
                  and          s0, s3, sp
1670:             add          s3, a0, s3
                  or           t5, s3, s4
1672:             nop
                  beq          t6, tp, 1692f
                  xori         t2, zero, 1950
                  or           t3, t6, a6
                  add          t2, s1, ra
                  sltu         t5, a2, a4
                  xori         s0, s2, 130
                  lui          s7, 76401
                  andi         s0, s10, -1354
                  addi         t6, a2, 1248
                  or           a5, a4, t6
                  and          zero, a2, t2
                  sra          a2, t1, t3
                  lui          a1, 486727
                  sub          a6, t0, s2
                  bgeu         a3, gp, 1697f
                  bgeu         a0, s9, 1696f
                  slli         sp, a5, 22
                  sub          a4, s10, s10
                  bne          sp, s0, 1693f
1692:             sra          s2, a2, a6
1693:             bne          s5, s10, 1696f
                  sub          s5, a0, a3
                  andi         a5, a5, -140
1696:             auipc        ra, 541979
1697:             sltu         s1, sp, s10
                  sltu         a2, a6, a0
                  nop
                  lui          s7, 737532
                  add          a3, t0, s4
                  xori         s6, s8, -1358
                  and          s10, sp, a1
                  and          s1, a4, a2
                  lw           t2, 4(s11)
                  xor          s9, t0, a0
                  addi         s11, s11, 20
                  lui          a0, 211571
                  or           s8, s1, s7
2294:             addi x30, x7, 1
2294:             jalr x30, x30, 0
sub_2:            bgeu         t1, s5, sub_2_stack_p
                  lui          t3, 892399
sub_2_stack_p:    addi         s11, s11, -8
                  sltu         s9, a2, s6
                  sw           t2, 4(s11)
                  srl          s5, s0, s4
                  srai         s6, s7, 11
                  srli         s9, t6, 24
                  sltiu        a5, s7, -295
                  srl          t2, s0, s6
                  sub          ra, zero, a3
                  lui          a5, 882404
                  srl          t6, a1, s5
                  andi         ra, a0, 273
                  and          s6, t5, s5
sub_2_j4:         jal          t2, sub_3 #jump sub_2 -> sub_3
                  lui          a2, 222302
                  addi         s6, s11, -1561
                  add          s5, s3, a7
                  slt          s4, s9, t2
                  lui          s3, 321214
                  lui          s5, 701899
                  slti         s0, t1, 1435
sub_2_j5:         jal          t2, sub_3 #jump sub_2 -> sub_3
                  bne          a7, t6, 9f
                  sll          s3, s5, s6
                  srai         t6, s6, 7
                  lui          t3, 212258
                  blt          gp, a5, 9f
                  sub          s10, s2, t2
                  ori          s1, t5, 1488
                  andi         a1, t4, 1453
                  srli         t6, t3, 15
9:                slt          a7, a4, t5
                  xor          t3, a3, a2
                  lw           t2, 4(s11)
                  sra          s6, s0, s3
                  sltu         t1, zero, t3
                  slti         t6, s7, -887
                  addi         s11, s11, 8
                  lui          s5, 18983
                  auipc        s1, 282847
                  slti         s5, a2, -420
43:               addi x22, x7, 1
43:               jalr x22, x22, 0
sub_7:            addi         s11, s11, -40
                  slt          zero, t3, t5
                  sw           t2, 4(s11)
                  and          zero, a0, t5
                  sltu         a6, s11, s1
                  la           gp, sub_8
                  srl          ra, a2, s10
                  sra          a0, t0, t6
                  srai         t3, t1, 16
                  andi         t3, t5, -1123
                  sltu         a3, tp, a1
                  addi         gp, gp, 740
                  ori          t2, a6, 242
                  blt          s1, t1, sub_7_j14 #branch to jump instr
                  sub          a2, s5, s6
                  or           s7, s1, s6
sub_7_j14:        jalr         t2, gp, -740 #jump sub_7 -> sub_8
                  srai         zero, a2, 8
                  blt          s5, a0, sub_7_j15 #branch to jump instr
                  addi         a7, a3, 272
                  xor          s10, a2, a7
                  xori         a1, sp, 1807
                  nop
                  ori          s10, s0, -1505
                  addi         t1, s2, 1782
sub_7_j15:        jal          t2, sub_8 #jump sub_7 -> sub_8
                  slli         s10, s10, 20
                  xori         s10, t1, 134
                  xori         s1, s1, -1079
                  add          s4, s3, t1
                  sltiu        a3, s0, -1983
                  slti         t3, s11, 269
                  bne          zero, gp, 9f
                  bltu         tp, zero, 9f
                  sltiu        s8, s0, -327
9:                xori         a4, sp, -1427
                  lw           t2, 4(s11)
                  or           zero, s5, a7
                  add          zero, sp, t1
                  addi         s11, s11, 40
                  srli         s1, gp, 4
                  sltiu        t1, sp, 918
                  nop
43:               addi x20, x7, 1
43:               jalr x20, x20, 0
sub_5:            bltu         s11, s2, sub_5_stack_p
                  andi         t3, t3, -1579
                  auipc        s4, 412696
sub_5_stack_p:    addi         s11, s11, -52
                  slli         sp, sp, 11
                  sw           t2, 4(s11)
                  sra          a2, s3, a3
                  beq          s10, a2, 9f
                  slli         a0, a0, 8
                  srl          t2, s9, s3
                  xor          t2, s2, t5
                  slti         s9, zero, 324
                  add          a3, a6, s0
                  slli         t6, tp, 11
                  slt          s3, sp, a7
                  sra          a1, t1, s2
9:                srl          s3, ra, a4
                  addi         s0, a7, 1040
                  sltu         s3, s0, a0
                  lw           t2, 4(s11)
                  ori          a7, t1, 1184
                  addi         s11, s11, 52
                  addi         s10, gp, -1417
23:               addi x16, x7, 1
23:               jalr x16, x16, 0
sub_3:            xori         s4, s3, 1325
                  or           gp, tp, a2
                  addi         s11, s11, -60
                  slli         s0, a0, 1
                  sw           t2, 4(s11)
                  or           s7, a0, a5
                  srl          s6, a2, tp
                  srl          a0, sp, t0
                  addi         t3, s5, 1165
                  lui          s7, 756234
                  ori          s5, zero, 1748
                  addi         a5, tp, -1989
                  slt          s1, s1, sp
                  lui          a3, 438488
                  andi         t3, s7, -174
sub_3_j6:         jal          t2, sub_4 #jump sub_3 -> sub_4
                  slt          a6, a5, gp
                  addi         a5, a4, -1340
                  slli         s4, s9, 6
                  srl          s6, a7, a5
                  sub          a2, s0, a7
                  add          t1, a1, tp
sub_3_j8:         jal          t2, sub_5 #jump sub_3 -> sub_5
                  la           sp, region_1+1913 #start riscv_load_store_rand_instr_stream_2
                  nop
                  lw           a0, -181(sp)
                  nop
                  or           t4, s8, a2
                  srl          s8, a2, s8
                  addi         s7, t4, -272
                  sb           ra, -122(sp)
                  lb           t4, -218(sp)
                  sh           t0, 13(sp)
                  auipc        t1, 850208
                  lh           gp, -111(sp)
                  lui          a4, 226645
                  sltu         t6, a4, t0
                  lbu          s2, -134(sp)
                  sb           t6, -182(sp)
                  lbu          a4, -166(sp)
                  sb           s0, 40(sp)
                  sb           t1, 60(sp)
                  sll          a7, a3, s7
                  nop
                  lb           s4, -61(sp)
                  sra          a5, s5, t1
                  lhu          s2, -97(sp)
                  lb           t1, -84(sp)
                  sh           ra, -21(sp)
                  lw           a2, -241(sp)
                  or           a4, s5, a5
                  srl          s0, gp, t6
                  andi         t2, s5, -1561
                  lui          s6, 228243
                  sb           t1, -238(sp)
                  lb           a4, -200(sp)
                  nop
                  sh           a7, -179(sp) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_0+1211 #start riscv_load_store_rand_instr_stream_1
                  lh           a6, 55(sp)
                  sh           s6, -7(sp)
                  sb           a4, 1(sp)
                  ori          t5, sp, -1161
                  lb           s9, 56(sp)
                  add          s7, s2, s8
                  lbu          s1, -63(sp)
                  and          t1, ra, s5
                  sb           t1, 6(sp)
                  lb           s1, -48(sp)
                  or           s9, a1, t0
                  sb           a2, -15(sp)
                  sh           a7, 35(sp)
                  and          s8, t2, s5
                  sh           a7, 31(sp)
                  and          s8, t4, tp
                  srli         zero, s3, 10
                  lbu          gp, -29(sp)
                  lbu          s6, 51(sp)
                  auipc        t3, 419833
                  lbu          s3, -38(sp)
                  sub          gp, s5, s4
                  xori         a2, a1, -1088
                  lhu          ra, -21(sp)
                  lui          t5, 39230
                  sb           t6, 64(sp)
                  sltiu        t5, gp, -1716
                  lbu          ra, 33(sp)
                  andi         s10, s2, -1597
                  lhu          s4, 1(sp)
                  lb           ra, -9(sp)
                  lbu          a1, -19(sp)
                  srai         s10, s0, 18
                  lbu          s7, -44(sp)
                  lb           s9, -34(sp)
                  sra          ra, s10, a4
                  srli         t2, s7, 15
                  lbu          s4, 20(sp)
                  sb           a5, 26(sp)
                  lbu          ra, 45(sp)
                  lbu          s3, -31(sp)
                  lh           t5, -45(sp) #end riscv_load_store_rand_instr_stream_1
                  bltu         s1, t0, 13f
                  bge          t5, t5, 14f
                  slti         a3, zero, 1583
                  bne          s2, t3, 16f
                  sltu         s9, t6, s8
                  and          sp, a3, s6
                  andi         a2, s7, 1551
                  addi         a3, a7, 264
                  srai         gp, t5, 19
                  slti         a7, a0, -1531
                  nop
                  xor          a6, a7, t6
                  sll          s7, t6, s1
13:               sub          s6, s2, t4
14:               auipc        s3, 713300
                  slt          s1, s11, s10
16:               bgeu         s8, t4, 22f
                  srai         a5, t5, 5
                  addi         s4, s1, -1546
                  bltu         ra, t6, 28f
                  srli         s2, s0, 10
                  beq          s8, s4, 35f
22:               slt          s6, s7, t3
                  slt          t5, t4, tp
                  bge          a4, s1, 27f
                  andi         zero, s3, -1532
                  slli         a2, t6, 21
27:               srai         t6, s1, 22
28:               lui          s6, 752650
                  bne          s1, s5, 45f
                  beq          t3, s0, 39f
                  sltiu        s3, s9, -499
                  bgeu         t4, a6, 49f
                  andi         ra, t6, -1264
                  xor          a0, a6, s8
35:               blt          t1, sp, 47f
                  bge          s3, s2, 54f
                  xori         t3, a7, 1166
                  sltu         a1, s10, t2
39:               bne          a6, t6, 43f
                  add          t4, s4, a5
                  bltu         a5, t0, 61f
                  addi         s2, sp, -428
43:               xori         s1, s1, -1706
                  xor          sp, a4, a7
45:               srai         s1, a4, 23
                  sra          a3, a5, s0
47:               slli         sp, s7, 3
                  xor          a0, a6, zero
49:               sltu         s7, zero, a3
                  sltiu        t3, tp, 73
                  lui          a0, 632874
                  ori          a4, s9, -1734
                  bne          a5, t1, 70f
54:               andi         t4, t0, 1190
                  bltu         a4, t4, 57f
                  addi         t4, s4, 348
57:               srli         t3, t3, 6
                  lui          s6, 857803
                  slli         t1, s4, 24
                  sub          t5, s0, t2
61:               sltiu        s10, s3, -1631
                  addi         t4, t6, 1520
                  or           a5, a2, a3
                  sra          s1, zero, a3
                  add          s0, s1, sp
                  xori         a6, a6, -150
                  blt          a5, s11, 78f
                  or           t1, a0, s10
                  bge          s7, t6, 82f
70:               addi         sp, gp, -1633
                  sltu         a3, s1, zero
                  addi         s2, s5, 1298
                  bne          a5, s4, 75f
                  bne          s1, a6, 76f
75:               andi         s9, t5, -1108
76:               andi         s1, t5, -82
                  add          t2, t3, s4
78:               xor          s9, a3, a6
                  sltu         a4, s1, t0
                  slli         t2, a5, 20
                  or           a5, s6, t1
82:               sll          s9, zero, s11
                  slli         t2, t0, 11
                  srai         t1, a4, 17
                  srl          a0, sp, a1
                  srl          s0, t2, gp
                  slti         a0, t3, 536
                  auipc        t2, 1032919
                  ori          t4, s2, -26
                  sltiu        s5, s0, -848
                  sltiu        s10, s7, -570
                  add          s6, a5, t1
                  auipc        s3, 129751
                  la           a2, region_1+1521 #start riscv_load_store_rand_instr_stream_0
                  sb           a6, -19(a2)
                  add          s7, s11, t3
                  sltu         s5, s9, s3
                  sub          t2, s5, t0
                  srl          a5, s1, s4
                  xor          t3, t4, t4
                  andi         a0, s9, -1781
                  slti         a1, zero, -888
                  nop
                  sb           s7, -148(a2)
                  auipc        a0, 660291
                  sh           t2, -117(a2)
                  sltiu        sp, s3, -374
                  sb           a7, 190(a2)
                  xori         a0, s0, -1796
                  slt          s9, t1, s3
                  lbu          a1, -67(a2)
                  add          a3, s7, s0
                  lbu          sp, 48(a2)
                  lbu          s6, -32(a2)
                  and          t4, s6, t3
                  xor          t3, s9, s6
                  or           s9, a6, zero
                  addi         s5, s7, 1869
                  sb           t3, 224(a2)
                  srai         t2, gp, 29
                  sw           s1, 167(a2)
                  lb           t6, -76(a2)
                  lbu          t2, -139(a2)
                  sw           a0, -233(a2)
                  slt          a5, a1, tp
                  lbu          zero, 227(a2)
                  slt          t6, s9, ra
                  ori          a7, a0, 361
                  add          s9, a7, t2
                  lui          a4, 305418
                  sb           ra, 52(a2)
                  lb           a7, -122(a2)
                  sll          t3, s7, s3
                  slt          s2, t6, t0
                  lb           t3, 50(a2)
                  lb           t1, -177(a2)
                  slli         sp, a0, 1
                  add          a1, s8, s11
                  sub          zero, s5, s8
                  sb           t2, -126(a2) #end riscv_load_store_rand_instr_stream_0
                  srli         a7, s2, 21
                  bge          s5, t1, 111f
                  sltiu        s6, s4, 1740
                  lui          s8, 73067
                  ori          a7, a0, 856
                  xor          a2, t0, a4
                  srl          t3, s11, s5
                  sltiu        a7, s1, 325
                  sll          t3, t6, s10
                  auipc        s3, 350242
                  ori          s1, a0, 42
                  slli         a6, t2, 7
                  sra          t3, s6, s11
                  bne          a3, s1, 115f
                  or           t1, s1, t5
                  bltu         a3, t1, 121f
                  srl          s2, t6, gp
111:              bltu         a1, t4, 130f
                  lui          a3, 264743
                  slt          sp, s5, s2
                  xori         s1, s0, -1904
115:              srli         t4, s8, 13
                  bge          a2, s9, 136f
                  slti         a0, ra, 1289
                  auipc        ra, 164231
                  or           sp, s6, t5
                  sra          a0, t6, zero
121:              sltiu        zero, a5, 1709
                  xori         s1, s3, -279
                  bne          t6, s3, 143f
                  srl          a6, gp, s3
                  lui          s1, 738624
                  nop
                  sltiu        zero, s11, -664
                  srl          t2, s8, t4
                  or           t3, t5, ra
130:              beq          s2, a1, 146f
                  sltu         zero, s10, s8
                  sltu         t5, s5, s10
                  nop
                  bgeu         a7, t0, 138f
                  slt          s8, s10, a2
136:              srl          a2, t5, s1
                  and          t2, tp, t5
138:              blt          s5, a4, 156f
                  add          sp, s3, t2
                  sltu         s4, s5, a6
                  slt          a6, a0, a4
                  auipc        s0, 473627
143:              sltu         a2, t0, s10
                  add          ra, tp, a1
                  auipc        gp, 490213
146:              add          t2, s5, t0
                  xor          s2, a4, t4
                  blt          zero, s10, 164f
                  andi         ra, s3, -1344
                  addi         gp, s1, 822
                  xori         s8, s11, -463
                  bltu         a1, a5, 169f
                  lui          s6, 291287
                  lui          gp, 967790
                  sra          s2, s0, s0
156:              bltu         a1, a6, 160f
                  auipc        t4, 663879
                  sub          t5, s11, t3
                  addi         a5, s7, -725
160:              beq          s3, s6, 169f
                  srai         a3, t2, 27
                  bge          t1, a3, 181f
                  beq          t6, sp, 180f
164:              srli         t6, s8, 28
                  addi         s7, s7, 401
                  la           s5, sub_4
                  nop
                  addi         s5, s5, 438
                  add          s3, a5, t6
                  srl          gp, t1, a1
                  srli         t4, t6, 16
                  xori         s2, t5, 566
                  slti         s9, s3, -495
                  blt          s3, s3, sub_3_j7 #branch to jump instr
                  srl          t3, tp, t2
                  addi         s10, zero, 1248
                  sltu         s8, a6, s9
                  addi         t2, s6, 1601
sub_3_j7:         jalr         t2, s5, -438 #jump sub_3 -> sub_4
                  beq          a3, a1, 172f
                  bne          t3, t4, 176f
                  sltu         s0, s1, a0
169:              xori         t1, s2, -1654
                  and          sp, gp, a5
                  or           t3, ra, a4
172:              sra          s9, s4, s10
                  srl          s2, gp, ra
                  and          s8, t5, s3
                  sra          t3, gp, t6
176:              auipc        a5, 503354
                  bge          s4, s11, 190f
                  slli         t2, t2, 26
                  slli         t2, s2, 29
180:              addi         a1, s1, 1830
181:              and          t1, a6, ra
                  xor          a4, s6, s2
                  sltu         gp, s0, t2
                  blt          a4, t0, 202f
                  and          a0, a4, s0
                  bge          s8, a7, 204f
                  bgeu         t0, a0, 189f
                  ori          t3, s9, -732
189:              bne          t2, s3, 205f
190:              sra          a3, a5, s5
                  sub          t4, a5, s9
                  sltiu        a6, a0, 1723
                  bgeu         a2, t1, 195f
                  and          sp, t6, t2
195:              slli         s0, s2, 14
                  andi         t5, s9, -347
                  srai         s5, zero, 29
                  slti         s3, t6, 535
                  lui          s9, 417672
                  xori         a7, s4, 736
                  nop
202:              lui          s3, 618910
                  lui          t1, 262088
204:              auipc        a0, 198264
205:              nop
                  or           ra, a0, a7
                  sltu         sp, tp, s7
                  srai         a4, s6, 12
                  blt          t2, gp, 225f
                  srai         a1, zero, 17
                  nop
                  xori         ra, zero, -1135
                  nop
                  auipc        a1, 503599
                  beq          s0, s1, 228f
                  srl          s8, a4, s2
                  or           a5, ra, s3
                  sll          t1, s8, tp
                  auipc        a0, 233935
                  sltu         a1, s1, t6
                  srl          s3, t5, a2
                  or           ra, s6, t0
                  auipc        t4, 1020883
                  add          a2, s8, t4
225:              andi         s0, t1, 1486
                  nop
                  slt          gp, a2, t5
228:              nop
                  ori          s0, t2, 195
                  addi         t3, s5, 683
                  sltu         a6, ra, a4
                  and          s6, ra, a0
                  srl          sp, s3, tp
                  andi         a6, s6, 1223
                  sltu         s3, s0, ra
                  slti         t1, s8, 363
                  add          zero, a2, t1
                  or           t1, t4, a0
                  bgeu         s7, a1, 250f
                  blt          t4, t6, 254f
                  slt          a0, tp, s2
                  slt          a2, t6, sp
                  sltiu        t6, s10, -1605
                  slti         s5, t5, 1377
                  sltiu        a0, s1, 728
                  bne          t4, t6, 248f
                  and          s9, t5, s1
248:              sra          t5, tp, tp
                  or           s2, s5, t0
250:              addi         s5, s1, 424
                  beq          s2, a1, 264f
                  srli         s0, a0, 25
                  bne          gp, a1, 266f
254:              sltu         a0, tp, s7
                  bne          t2, a3, 275f
                  nop
                  bltu         s7, s7, 261f
                  bge          t4, t2, 274f
                  sub          a5, a6, tp
                  bgeu         s1, s9, 268f
261:              lui          s6, 129404
                  xor          s7, a2, a6
                  bne          s8, gp, 283f
264:              sra          a3, sp, a7
                  bge          s11, a3, 285f
266:              andi         a1, sp, -116
                  xor          zero, ra, s11
268:              srli         s3, s1, 3
                  ori          s6, s8, 1531
                  slli         sp, a3, 26
                  bne          t0, s9, 274f
                  ori          t5, a3, -1365
                  sltu         s7, s2, a4
274:              slli         s0, s5, 9
275:              sll          s10, t1, a7
                  auipc        t1, 490662
                  bltu         tp, a3, 289f
                  xor          s1, s7, a7
                  lui          sp, 577276
                  sltiu        s5, s7, 454
                  and          s10, a5, tp
                  srli         s4, a1, 30
283:              bge          a5, a1, 295f
                  beq          sp, t2, 300f
285:              addi         s6, a3, 664
                  bltu         zero, s10, 297f
                  sra          sp, s2, zero
                  nop
289:              bltu         s5, s11, 305f
                  slt          a3, s10, a1
                  bgeu         s1, gp, 300f
                  sltiu        t4, s0, 1182
                  or           zero, s7, a2
                  slti         a6, gp, -682
295:              sll          gp, a6, a4
                  lui          t5, 836701
297:              bgeu         a3, s0, 306f
                  bltu         s6, t3, 311f
                  sra          sp, s5, s3
300:              auipc        a2, 843612
                  slt          s10, s6, zero
                  sltiu        a7, t4, 985
                  andi         sp, s0, 808
                  xor          t3, s9, a3
305:              sra          t5, t5, a4
306:              srli         s3, zero, 22
                  bne          s2, a6, 326f
                  add          t6, a7, s0
                  andi         a2, a4, -1455
                  bgeu         a2, s5, 314f
311:              srli         a6, zero, 24
                  andi         a5, t6, 589
                  or           s2, s7, a6
314:              bge          a4, t1, 327f
                  sltiu        zero, t2, 1115
                  or           a4, s7, s0
                  srai         a5, s0, 29
                  slli         s1, tp, 3
                  addi         t6, t3, -632
                  bgeu         a3, a1, 340f
                  xori         a7, s9, 1348
                  blt          a6, s10, 339f
                  sra          a0, s5, s10
                  bltu         a1, s0, 336f
                  srai         t5, s9, 30
326:              beq          t4, s4, 344f
327:              add          a3, s7, a3
                  srl          a2, a1, s11
                  add          s2, a0, a2
                  xori         s8, s6, 761
                  slt          a3, s7, t0
                  xor          t1, s10, s5
                  auipc        s5, 662388
                  nop
                  srai         a1, s4, 22
336:              auipc        s3, 990232
                  sra          s8, t2, t1
                  and          a3, a5, t5
339:              srli         a7, s6, 28
340:              bne          a0, ra, 342f
                  slt          a7, s5, s0
342:              slt          a3, s10, ra
                  bgeu         a7, a6, 359f
344:              slt          zero, zero, a0
                  sra          zero, s9, t0
                  andi         a7, s10, 478
                  slti         a3, s3, -1226
                  sra          s2, a4, s11
                  add          s7, s1, s8
                  sltiu        s6, gp, -394
                  nop
                  sra          s1, a2, ra
                  bltu         a2, ra, 356f
                  slti         ra, a4, -1923
                  add          a2, s4, a4
356:              xor          s4, t1, a2
                  srli         s0, a4, 4
                  beq          s1, a1, 378f
359:              blt          a3, t4, 375f
                  sltiu        t6, s5, -1477
                  beq          s6, t3, 378f
                  and          s5, t1, tp
                  beq          a7, s4, 376f
                  sltiu        a0, t6, 266
                  sra          t4, s0, s6
                  slti         s5, gp, 716
                  and          s9, s7, sp
                  bltu         s8, a1, 370f
                  slt          s2, s2, t4
370:              sltu         t1, a4, a5
                  sub          t4, gp, s3
                  sltiu        zero, t2, 1828
                  bne          a0, a3, 385f
                  slti         a5, a0, 1636
375:              xori         t3, a1, 937
376:              xor          s0, s0, s5
                  slti         a2, s0, 421
378:              andi         zero, a1, 466
                  sll          s3, s11, a5
                  sll          t4, tp, a6
                  srai         t3, a0, 24
                  bltu         a0, s7, 386f
                  slti         a4, s1, -1549
                  xori         s10, sp, 458
385:              sra          a0, s11, a2
386:              bge          sp, a5, 402f
                  bltu         s1, t2, 401f
                  bltu         s9, sp, 390f
                  addi         s1, tp, 568
390:              xor          s7, s0, a7
                  lui          a3, 682602
                  bge          s7, ra, 405f
                  addi         s5, gp, -1866
                  nop
                  srli         a7, a5, 10
                  bgeu         a4, s11, 414f
                  srai         t6, s7, 4
                  slti         t6, a4, 1742
                  addi         t4, s5, 712
                  add          gp, a1, t2
401:              srli         a4, s8, 8
402:              slti         s3, a3, 10
                  bltu         t1, a7, 409f
                  andi         t5, s11, 801
405:              blt          t5, s8, 425f
                  sra          ra, gp, t2
                  andi         s8, s1, 1839
                  nop
409:              lui          s2, 131151
                  and          a0, t4, a7
                  bgeu         a4, t1, 419f
                  addi         a5, s6, 1515
                  sll          s9, t6, a0
414:              slt          t2, s2, t6
                  sra          a4, s8, s8
                  blt          a1, s10, 432f
                  sll          s2, tp, t0
                  andi         zero, t6, 1074
419:              bgeu         s8, s10, 435f
                  lui          a6, 377117
                  sra          s0, sp, tp
                  ori          s0, a1, -1593
                  ori          s4, s9, 1251
                  auipc        s10, 970519
425:              bgeu         t4, sp, 437f
                  srli         t4, sp, 4
                  srai         t6, s5, 5
                  sub          s0, t3, s5
                  sltiu        zero, t5, 337
                  bltu         s1, a4, 436f
                  nop
432:              sra          s1, t0, t5
                  sra          a4, s3, a2
                  bgeu         a3, s9, 440f
435:              add          a5, s6, ra
436:              sltu         t3, t4, sp
437:              slli         s3, a3, 16
                  sll          s5, s7, s5
                  lui          s10, 142695
440:              or           a1, ra, a1
                  nop
                  sub          t5, zero, s0
                  or           t4, t1, t0
                  or           s2, s3, s0
                  lw           t2, 4(s11)
                  sub          a6, s11, s1
                  sub          a7, s3, s3
                  nop
                  addi         s11, s11, 60
                  sltiu        s10, s11, -1661
613:              addi x14, x7, 1
613:              jalr x14, x14, 0
sub_9:            add          a5, t1, s2
                  sll          s9, s4, ra
                  beq          s11, s3, sub_9_stack_p
                  ori          gp, t6, 1483
                  andi         ra, ra, -2025
sub_9_stack_p:    addi         s11, s11, -56
                  sltiu        t3, a7, 1174
                  xor          a7, t5, t6
                  and          gp, s0, s10
                  sw           t2, 4(s11)
                  ori          ra, t4, -1452
                  la           a6, region_0+1644 #start riscv_load_store_rand_instr_stream_0
                  nop
                  srli         s2, s7, 13
                  sltu         a2, tp, a3
                  sw           gp, 16(a6)
                  srli         t4, s7, 30
                  sra          t4, tp, t6
                  slti         s7, a4, -68
                  lb           t2, 121(a6)
                  srai         s4, tp, 6
                  lw           sp, -204(a6)
                  slli         s3, t5, 12
                  lbu          t6, -171(a6)
                  lhu          s2, 190(a6)
                  and          s9, t4, t5
                  srl          t6, s2, t1
                  and          s9, s6, s4
                  add          t4, t4, t0
                  xori         s7, s5, 1425
                  lui          a3, 882716
                  sb           a3, -43(a6)
                  or           a4, a5, a2
                  lhu          t5, 64(a6)
                  auipc        s10, 454684
                  lb           t3, -176(a6)
                  and          s0, a6, a2
                  srli         s6, s2, 29
                  andi         s1, a3, 782
                  auipc        s0, 97911
                  sltu         t2, gp, t4
                  sw           zero, 220(a6)
                  lbu          t4, -118(a6)
                  sb           t6, -243(a6)
                  slti         s6, a5, 50
                  or           s5, a5, s10
                  srli         a1, t3, 25
                  sltu         a2, s0, s7
                  lb           a4, 65(a6)
                  sll          gp, a4, a3
                  sltu         s10, s4, sp
                  sh           a5, -26(a6)
                  lh           a3, 96(a6)
                  sb           a3, 222(a6)
                  or           a4, a1, a6
                  xor          s4, s11, s11
                  lbu          a7, 139(a6)
                  lbu          a3, 67(a6)
                  lb           s1, 103(a6)
                  lb           t5, 141(a6)
                  addi         s1, a6, 899
                  sb           a5, -121(a6) #end riscv_load_store_rand_instr_stream_0
                  add          t2, a6, s3
                  bgeu         t5, a2, 21f
                  bge          t0, s10, 5f
                  slt          s1, s1, a1
                  lui          a4, 313592
5:                srli         zero, s8, 11
                  or           t6, s11, a2
                  srai         a5, s10, 16
                  slti         t5, t2, 1851
                  sub          t1, a5, t5
                  srli         s2, t5, 21
                  xori         a6, s5, 1999
                  srli         s8, s4, 26
                  ori          t3, s11, -317
                  andi         s3, a2, -1602
                  slt          t1, a2, s8
                  slti         s4, a1, 1774
                  and          t1, ra, t5
                  auipc        t4, 560951
                  bgeu         s7, zero, 38f
                  beq          sp, s11, 23f
21:               bne          t1, zero, 22f
22:               sra          a4, s11, a2
23:               sra          t4, a2, tp
                  sub          gp, s2, a4
                  xor          a0, s6, s8
                  srai         a6, sp, 22
                  slti         a5, s10, 1414
                  bne          s2, s8, 41f
                  nop
                  andi         a4, s7, -94
                  sltiu        a6, gp, -116
                  bge          s1, s2, 47f
                  bne          s0, a0, 36f
                  beq          t4, s5, 41f
                  beq          t4, t1, 38f
36:               srl          t5, a4, a7
                  or           s8, a0, a0
38:               srli         s6, t5, 31
                  bltu         t6, t3, 58f
                  sltu         s9, a3, tp
41:               addi         a5, a0, -766
                  blt          t1, a0, 51f
                  auipc        a2, 160842
                  sub          s6, t0, s8
                  addi         a3, s10, 378
                  bge          t2, t1, 62f
47:               sltu         t2, a6, s9
                  beq          s10, s6, 66f
                  beq          s2, s7, 68f
                  or           a6, s10, t3
51:               bgeu         a6, s6, 69f
                  xori         t5, t1, 1054
                  and          a2, t4, a0
                  sra          a4, t3, t6
                  srl          s5, s1, t6
                  sub          a2, s9, gp
                  slt          zero, ra, s5
58:               slli         a2, t5, 0
                  sltiu        gp, s3, 1356
                  beq          gp, a5, 61f
61:               bne          s7, t0, 73f
62:               add          s1, a1, t2
                  bgeu         s11, zero, 77f
                  sub          t3, s6, s8
                  xor          s4, ra, s2
66:               or           a5, t0, a7
                  slli         ra, t1, 15
68:               blt          a1, s3, 84f
69:               beq          t4, ra, 76f
                  srl          s7, s8, s8
                  xor          a2, ra, t0
                  slli         s6, gp, 12
73:               sub          t5, a4, t6
                  srl          a1, a1, gp
                  beq          s8, t2, 88f
76:               or           a3, a6, ra
77:               beq          t2, a6, 96f
                  sltu         sp, s6, tp
                  beq          s0, a3, 83f
                  or           a3, s0, s4
                  sltu         s10, a4, s7
                  ori          s4, t6, -523
83:               lui          a3, 851604
84:               and          s4, sp, s2
                  add          a0, t2, t6
                  ori          t6, s9, -1775
                  addi         a0, s2, -146
88:               sra          gp, tp, zero
                  or           s7, s9, s11
                  beq          t5, a1, 92f
                  sub          s1, a5, t2
92:               sll          sp, s6, s4
                  add          a0, a5, a4
                  bltu         s5, a4, 105f
                  bgeu         a3, t2, 114f
96:               bge          t2, a6, 110f
                  sll          s0, a0, ra
                  sltu         a1, s6, s1
                  slt          s2, a2, s8
                  blt          sp, s2, 115f
                  blt          s10, a6, 102f
102:              sub          a2, s6, s6
                  ori          ra, s4, 156
                  sll          t2, t1, t6
105:              ori          a3, s1, -1258
                  bgeu         sp, t1, 117f
                  lui          t4, 691543
                  add          s9, s8, s8
                  sltu         t5, s11, s2
110:              sub          a4, s5, sp
                  andi         s6, t6, -1638
                  xori         s3, s0, 1295
                  sltiu        s1, s7, 421
114:              bgeu         a7, t0, 118f
115:              bge          a1, a4, 118f
                  srl          t5, s8, s0
117:              srai         sp, sp, 19
118:              or           a0, tp, s5
                  bgeu         t3, gp, 120f
120:              nop
                  sub          a4, s3, s2
                  sub          s4, s1, ra
                  sltu         a6, s4, a7
                  ori          s8, a5, -1774
                  and          a2, t3, t4
                  bge          t3, a5, 128f
                  and          s3, s9, s1
128:              srl          a2, a5, s10
                  lw           t2, 4(s11)
                  lui          a4, 249044
                  auipc        a4, 459751
                  xor          s0, s11, s11
                  srli         t5, s2, 11
                  slti         t1, a7, 1869
                  xor          a4, a6, zero
                  addi         s11, s11, 56
                  srai         a4, t6, 2
                  slti         s10, a1, -669
                  sltu         s0, s6, a6
                  and          a6, t4, s3
203:              addi x6, x7, 1
203:              jalr x6, x6, 0
sub_10:           add          t6, ra, s0
                  sltiu        zero, s8, 724
                  andi         sp, s7, -1893
                  auipc        a6, 420476
                  or           a7, a1, a7
                  srai         a1, t6, 5
                  srl          a1, s10, s7
                  auipc        ra, 722303
                  addi         s11, s11, -36
                  and          gp, zero, a1
                  sw           t2, 4(s11)
                  slti         s10, t1, 1129
                  slt          a7, s9, t3
                  or           s4, s6, s1
                  beq          s11, a7, 6f
                  bge          t3, s8, 21f
                  sltiu        gp, tp, -1906
                  srli         s5, s2, 21
6:                srli         s1, a6, 19
                  blt          s1, s10, 18f
                  auipc        a2, 739738
                  sra          a3, a5, a7
                  slli         a3, a6, 10
                  bne          s9, sp, 24f
                  bltu         zero, gp, 25f
                  add          s1, s5, gp
                  auipc        s9, 74211
                  bne          a4, a4, 33f
                  sll          ra, s0, s10
                  srai         a5, s10, 26
18:               andi         s9, a0, -1145
                  slti         t3, t1, 1498
                  sub          t6, s1, t0
21:               slli         a7, s9, 13
                  bne          s1, a2, 27f
                  xori         t4, s8, -1697
24:               bge          s9, s4, 35f
25:               lui          ra, 677325
                  srl          a4, t3, s8
27:               addi         sp, a6, -1100
                  bne          ra, a0, 35f
                  srl          t1, t1, ra
                  bltu         s9, a4, 31f
31:               nop
                  bge          a6, zero, 49f
33:               sll          s10, t2, a2
                  sll          a0, t4, gp
35:               srl          s7, s9, zero
                  sub          s8, a4, s5
                  xori         s2, s0, -2040
                  slt          t6, s8, t3
                  lui          a5, 104405
                  sltiu        zero, s7, 1264
                  lui          gp, 13141
                  nop
                  beq          a7, a3, 49f
                  add          a1, s10, s8
                  or           a1, s10, gp
                  nop
                  andi         sp, a5, -1997
                  ori          a7, s6, 1856
49:               addi         a7, t4, -1424
                  or           s5, a4, s1
                  slt          a2, ra, s1
                  nop
                  slt          s7, zero, t2
                  lw           t2, 4(s11)
                  nop
                  andi         t3, t6, -819
                  addi         s11, s11, 36
                  slli         s8, s5, 21
                  add          t3, a7, t1
                  slti         s7, t0, -1383
73:               addi x23, x7, 1
73:               jalr x23, x23, 0
sub_6:            xor          t5, t2, t2
                  addi         s11, s11, -52
                  add          sp, gp, tp
                  sltiu        s0, s8, 1567
                  sw           t2, 4(s11)
                  sltiu        s0, s2, 1824
                  andi         s2, a6, -489
                  sra          s1, t0, a4
                  ori          ra, s8, 1411
                  xor          s0, s0, t1
                  slli         a4, a5, 0
                  sltu         t1, t0, s5
                  lui          s3, 266176
                  sll          s1, s7, gp
                  slt          a3, t0, t4
sub_6_j12:        jal          t2, sub_9 #jump sub_6 -> sub_9
                  sub          a0, s0, t0
                  auipc        s6, 418419
                  add          a1, s10, tp
                  slti         s1, a1, 550
                  srl          t6, s6, zero
                  addi         s4, a4, 1032
                  sra          t4, a1, t5
                  xori         s5, t0, 78
                  srl          gp, s8, t6
sub_6_j13:        jal          t2, sub_10 #jump sub_6 -> sub_10
                  sltiu        s9, ra, 1404
                  bne          a2, s7, 19f
                  addi         a6, s9, -1813
                  bltu         s0, t3, 5f
                  ori          a1, ra, 482
5:                sll          t2, s8, s10
                  sltiu        sp, t4, -1476
                  xor          s1, t4, s9
                  andi         zero, a4, -1488
                  xori         a4, s11, -1137
                  or           s4, t3, a7
                  srl          a4, a2, t1
                  slli         a5, s5, 14
                  lui          s4, 352502
                  ori          s4, s6, 1069
                  bltu         s8, s1, 26f
                  srai         a6, t3, 14
                  xori         t2, a7, 561
                  add          t3, s5, a0
19:               sub          gp, s2, s7
                  blt          a0, s10, 34f
                  add          t6, s10, s11
                  srli         s3, a7, 31
                  xori         s0, tp, 1478
                  auipc        sp, 419182
                  bne          s6, t3, 28f
26:               srai         s7, a7, 31
                  slti         s4, t3, -729
28:               bgeu         gp, ra, 34f
                  bge          t4, t4, 34f
                  slt          a2, s7, s5
                  sll          a7, s7, s9
                  blt          s3, s10, 34f
                  slti         s6, a7, 993
34:               xor          gp, a4, s7
                  lw           t2, 4(s11)
                  sll          t6, s5, s11
                  addi         s11, s11, 52
                  sub          ra, tp, t1
                  srli         s5, a7, 0
                  slli         a4, s8, 30
                  lui          s0, 769193
68:               addi x16, x7, 0
68:               jalr x16, x16, 0
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
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x5, x27, zero
                  csrr x23, 0x300 # MSTATUS
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 31
                  bne x23, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x23, 0x341 # MEPC
                  csrr x23, 0x342 # MCAUSE
                  li x25, 0x3 # BREAKPOINT
                  beq x23, x25, ebreak_handler
                  li x25, 0x8 # ECALL_UMODE
                  beq x23, x25, ecall_handler
                  li x25, 0x9 # ECALL_SMODE
                  beq x23, x25, ecall_handler
                  li x25, 0xb # ECALL_MMODE
                  beq x23, x25, ecall_handler
                  li x25, 0x1
                  beq x23, x25, instr_fault_handler
                  li x25, 0x5
                  beq x23, x25, load_fault_handler
                  li x25, 0x7
                  beq x23, x25, store_fault_handler
                  li x25, 0xc
                  beq x23, x25, pt_fault_handler
                  li x25, 0xd
                  beq x23, x25, pt_fault_handler
                  li x25, 0xf
                  beq x23, x25, pt_fault_handler
                  li x25, 0x2 # ILLEGAL_INSTRUCTION
                  beq x23, x25, illegal_instr_handler
                  csrr x25, 0x343 # MTVAL
                  1: la x4, test_done
                  jalr x1, x4, 0

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
                  la x4, write_tohost
                  jalr x0, x4, 0

instr_fault_handler:
                  add x27, x5, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
                  mret

load_fault_handler:
                  add x27, x5, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
                  mret

store_fault_handler:
                  add x27, x5, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
                  mret

ebreak_handler:   
                  csrr  x23, 0x341
                  addi  x23, x23, 4
                  csrw  0x341, x23
                  add x27, x5, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
                  mret

illegal_instr_handler:
                  csrr  x23, 0x341
                  addi  x23, x23, 4
                  csrw  0x341, x23
                  add x27, x5, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x23, 0x300 # MSTATUS;
                  csrr  x23, 0x304 # MIE;
                  csrr  x23, 0x344 # MIP;
                  csrrc x23, 0x344, x23 # MIP;
                  add x27, x5, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
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
