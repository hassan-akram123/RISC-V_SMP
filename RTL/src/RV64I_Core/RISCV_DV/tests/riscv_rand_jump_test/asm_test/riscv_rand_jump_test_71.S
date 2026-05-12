.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x27, h0_start
jalr x0, x27, 0
h0_start:
                  li x15, 0x40000100
                  csrw 0x301, x15
kernel_sp:        
                  la x10, kernel_stack_end

trap_vec_init:    
                  la x15, mtvec_handler
                  ori x15, x15, 1
                  csrw 0x305, x15 # MTVEC

mepc_setup:       
                  la x15, init
                  csrw 0x341, x15

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x15, 0x1800
                  csrw 0x300, x15 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0x15570f12
                  li x2, 0x0
                  li x3, 0xf15a41fe
                  li x4, 0x0
                  li x5, 0xf79738f4
                  li x6, 0xfa798b94
                  li x7, 0xa64686ad
                  li x8, 0x80000000
                  li x9, 0x0
                  li x11, 0xfa04e0a
                  li x12, 0x0
                  li x13, 0x1cbc6567
                  li x14, 0x80000000
                  li x15, 0x0
                  li x16, 0xf5de9590
                  li x17, 0x5
                  li x19, 0x0
                  li x20, 0x80000000
                  li x21, 0x80000000
                  li x22, 0x6
                  li x23, 0x322a46d
                  li x24, 0x0
                  li x25, 0xe2192073
                  li x26, 0x0
                  li x27, 0x0
                  li x28, 0x0
                  li x29, 0xf3b4b97c
                  li x30, 0x1
                  li x31, 0xf6092ee2
                  la x18, user_stack_end
main:             auipc        t0, 709725
                  srai         a3, a7, 13
                  sub          a6, t2, t2
                  la           a5, sub_1
                  or           s4, t2, s10
                  andi         tp, ra, -273
                  addi         a5, a5, 956
                  add          a1, t0, ra
                  or           s5, a2, t2
                  xor          a7, s4, s5
                  blt          s4, ra, main_j2 #branch to jump instr
                  auipc        s8, 470350
                  sll          s8, t0, gp
main_j2:          jalr         s0, a5, -955 #jump main -> sub_1
                  la           sp, region_0+1012 #start riscv_load_store_rand_instr_stream_0
                  lb           s8, -3(sp)
                  sub          a7, t4, s7
                  andi         t1, t1, 1450
                  lui          t1, 354735
                  slt          ra, t2, s1
                  sltiu        gp, tp, 487
                  andi         s0, a5, -98
                  lh           a1, 4(sp)
                  sb           a2, 35(sp)
                  sltu         s8, s4, a3
                  lui          a4, 396982
                  lhu          s8, 50(sp)
                  nop
                  sb           a4, -41(sp)
                  sll          t3, s2, t5
                  srli         s6, a3, 23
                  sb           s3, -5(sp)
                  lbu          t2, -57(sp)
                  xor          s4, s3, s3
                  and          s4, s2, s8
                  sb           a6, -61(sp)
                  slt          tp, t3, a5
                  ori          t5, s10, 221
                  lbu          s10, 30(sp)
                  sb           t1, -1(sp)
                  or           t1, t4, ra
                  add          t6, t0, a1
                  lh           s0, 2(sp)
                  andi         a3, a2, 1367
                  lb           s4, -42(sp)
                  lb           s1, 38(sp)
                  lbu          a4, -31(sp)
                  lb           s4, -33(sp) #end riscv_load_store_rand_instr_stream_0
                  sltiu        s6, s7, -701
                  beq          a3, t0, 9f
                  slt          zero, tp, t6
                  xor          t0, ra, gp
                  sltu         t5, sp, t3
                  andi         t0, s10, 1896
                  la           t4, sub_1
                  sltu         s10, a7, t5
                  addi         t4, t4, -441
                  auipc        tp, 221448
main_j1:          jalr         s0, t4, 442 #jump main -> sub_1
                  beq          s11, a6, 6f
                  bge          t5, t4, 15f
                  bge          t0, t6, 25f
6:                xor          s0, t2, s11
                  srli         t4, s5, 9
                  slti         a2, s8, -1974
9:                bge          a5, t2, 27f
                  nop
                  add          zero, a5, s1
                  slt          a4, ra, s9
                  xori         a1, zero, 1162
                  or           t4, t5, s4
15:               sll          s4, s9, t0
                  or           t6, s10, s10
                  and          a7, t2, s7
                  beq          s10, s4, 36f
                  srl          s4, s3, t2
                  srli         zero, s8, 29
                  sltu         s7, a0, a3
                  blt          s2, a1, 27f
                  sll          t0, a3, s4
                  srai         s5, s8, 14
25:               sra          s6, s8, t3
                  andi         ra, t5, 1864
27:               or           sp, t6, a3
                  sltiu        t5, t4, -1775
                  lui          t6, 1046165
                  sltiu        a5, tp, -1259
                  blt          t3, t1, 46f
                  lui          s4, 1021617
                  beq          t4, s2, 35f
                  srl          tp, a4, t6
35:               bge          s2, t2, 51f
36:               beq          s10, s7, 52f
                  nop
                  or           s5, t4, s8
                  srai         s7, s3, 18
                  bgeu         t4, t6, 52f
                  ori          ra, s4, 332
                  blt          t0, a7, 43f
43:               sub          a5, a2, t1
                  slt          s1, s10, s11
                  srli         a5, a2, 1
46:               bge          a1, t4, 47f
47:               sub          t0, s1, s11
                  bltu         t2, s3, 52f
                  slti         t6, s1, 1623
                  slt          sp, s1, t4
51:               or           zero, s6, s9
52:               sra          s1, t5, gp
                  la x27, test_done
                  jalr x0, x27, 0
test_done:        
                  li gp, 1
                  ecall
sub_10:           xor          sp, t2, s8
                  andi         a7, zero, 651
                  auipc        a1, 547691
                  addi         s2, s2, -16
                  sw           s0, 4(s2)
                  add          a6, t3, t1
                  nop
                  la           a7, region_1+470 #start riscv_load_store_rand_instr_stream_11
                  auipc        t1, 657152
                  sb           s4, 1487(a7)
                  lbu          s4, 397(a7)
                  sh           s8, 544(a7)
                  lbu          s3, 607(a7)
                  sw           s7, 930(a7)
                  add          t4, t1, a2
                  lbu          zero, -139(a7)
                  andi         a2, a3, -1191
                  lbu          a2, 32(a7)
                  lhu          s7, 1184(a7)
                  sb           a0, 846(a7)
                  sltu         a4, t4, a1
                  andi         s9, s9, -1975
                  sh           t0, 388(a7)
                  addi         s10, s11, 455
                  sb           t3, 279(a7)
                  nop
                  slt          t3, t5, a6
                  lui          a3, 305028
                  xori         a2, a7, -1255
                  sltiu        a1, gp, 1383
                  lbu          a4, -297(a7)
                  addi         s1, s11, 551
                  xor          s1, t1, t3
                  nop
                  slli         t1, s11, 31
                  or           s10, s4, s11
                  lb           a4, 369(a7)
                  sw           t1, 1230(a7)
                  lbu          t0, 1518(a7)
                  lbu          t2, 660(a7)
                  sb           gp, 198(a7)
                  srli         s4, a6, 17
                  lb           t5, 829(a7)
                  sltiu        t2, ra, 347
                  auipc        a5, 816390
                  sb           s9, 1029(a7)
                  xor          t5, a1, s8
                  sb           s10, 63(a7)
                  slti         t0, s4, 592
                  lh           s9, 600(a7)
                  lhu          s10, 816(a7)
                  add          sp, ra, s5
                  sltiu        s9, s4, -862
                  sub          s8, tp, a5
                  nop
                  lbu          a1, 1467(a7)
                  srl          s0, s4, t4
                  srli         s4, t4, 12
                  sh           s4, 1168(a7)
                  slt          sp, s6, tp
                  lb           t5, 922(a7) #end riscv_load_store_rand_instr_stream_11
                  la           sp, region_0+1288 #start riscv_load_store_rand_instr_stream_10
                  xori         s6, t2, -2041
                  sh           t0, 134(sp)
                  lbu          ra, -64(sp)
                  add          s7, s3, ra
                  add          t6, sp, t1
                  sltiu        s4, a6, 2032
                  andi         zero, t5, 1570
                  ori          s0, t5, 1867
                  add          s0, s9, a0
                  lbu          t1, -136(sp)
                  sll          gp, a1, sp
                  slt          a4, t4, ra
                  sra          a1, s4, t4
                  sh           s2, 64(sp)
                  lh           t4, -198(sp)
                  srli         s4, t3, 14
                  srai         s10, s3, 31
                  sltu         a2, a3, a5
                  lb           a2, -215(sp)
                  sll          s4, a5, tp
                  add          s7, t2, s1
                  andi         ra, a0, 1401
                  andi         s5, a2, -212
                  lbu          gp, -53(sp)
                  xor          tp, t0, s4
                  sb           t5, -28(sp)
                  xori         t3, a0, -764
                  lbu          a7, -99(sp)
                  lb           s6, 125(sp)
                  lb           s3, 197(sp)
                  sw           t5, 156(sp)
                  lbu          s10, -129(sp)
                  lbu          s7, 71(sp)
                  sb           s11, 173(sp)
                  lb           s4, -7(sp)
                  addi         a4, sp, -897
                  nop
                  sb           ra, 154(sp)
                  sb           sp, 99(sp)
                  sra          s7, sp, t1
                  lhu          t0, -220(sp)
                  slti         t5, s6, 1499
                  lb           s4, 29(sp)
                  lhu          t2, -24(sp)
                  sub          t0, a0, a3
                  or           a7, s4, s1
                  sb           s0, -250(sp)
                  lh           s5, 178(sp)
                  sh           a4, 242(sp) #end riscv_load_store_rand_instr_stream_10
                  la           t3, region_0+1560 #start riscv_load_store_rand_instr_stream_8
                  sw           t3, -300(t3)
                  nop
                  lb           t2, -101(t3)
                  sb           t3, -1154(t3)
                  slli         s0, s2, 16
                  lbu          s1, -127(t3)
                  lbu          a1, 288(t3)
                  srli         a2, a6, 6
                  lb           a2, -65(t3)
                  addi         sp, t3, 744
                  lbu          gp, -130(t3)
                  lbu          s7, -467(t3)
                  lb           a2, -198(t3)
                  nop
                  sra          a2, a7, sp
                  sra          a5, a0, zero
                  sb           s10, -265(t3)
                  lhu          t1, -902(t3)
                  lb           a6, 200(t3)
                  lb           zero, -1333(t3)
                  or           a3, s4, t0
                  andi         a2, a0, 1514
                  add          sp, s7, t0
                  lhu          a3, -768(t3)
                  lui          s10, 55009
                  lb           s9, 271(t3)
                  srli         s1, t6, 11
                  auipc        a5, 641506
                  lw           a5, -264(t3)
                  sb           a7, -749(t3)
                  ori          s7, t4, 1844
                  lbu          gp, -298(t3)
                  xori         s4, t0, 1215
                  sb           t2, -1043(t3)
                  sb           tp, -515(t3)
                  srl          s0, a6, s5
                  sb           s3, -226(t3) #end riscv_load_store_rand_instr_stream_8
                  la           s0, region_0+508 #start riscv_load_store_rand_instr_stream_1
                  and          s3, s8, a0
                  lhu          t3, 1210(s0)
                  slti         sp, t1, -1707
                  slli         ra, a1, 8
                  lh           t2, 1032(s0)
                  lbu          t2, -212(s0)
                  sb           t5, 319(s0)
                  addi         s4, ra, -806
                  sh           a2, 694(s0)
                  xori         s4, s1, 251
                  sh           t4, -258(s0)
                  lb           s1, 228(s0)
                  ori          s9, a3, 1668
                  sb           s4, -52(s0)
                  or           ra, gp, a1
                  srl          s6, s0, s11
                  lbu          a2, -173(s0)
                  nop
                  lhu          a5, 840(s0)
                  sb           s10, 1062(s0)
                  srl          a2, a0, gp
                  slt          zero, t1, tp
                  lb           gp, 671(s0)
                  xori         t2, t6, -945
                  lw           a1, 208(s0)
                  xor          a6, t4, a5
                  sb           s5, 1108(s0) #end riscv_load_store_rand_instr_stream_1
                  la           s4, region_1+1985 #start riscv_load_store_rand_instr_stream_2
                  or           a3, a2, s10
                  xor          t1, t6, a2
                  sb           s8, -60(s4)
                  sb           t2, -44(s4)
                  and          t3, a4, s0
                  slt          a7, t1, t5
                  sb           t5, -8(s4)
                  ori          s1, s1, -1935
                  lb           s10, -107(s4)
                  lhu          s0, -125(s4)
                  srai         t2, s2, 30
                  lb           zero, -30(s4)
                  addi         t3, s3, 993
                  srl          tp, a0, s9
                  slti         tp, t6, -1551
                  slt          s10, t4, a4
                  sltiu        s7, s3, 303
                  lb           s1, -99(s4)
                  sltiu        s9, s0, -100
                  srli         s3, sp, 31
                  lbu          ra, -190(s4)
                  lh           tp, -153(s4)
                  lw           t1, -221(s4)
                  lb           t6, 14(s4)
                  lbu          t0, -248(s4)
                  lb           a6, -106(s4)
                  ori          t1, t0, -456
                  sh           a4, -105(s4)
                  lb           a1, -44(s4)
                  add          ra, s11, s7
                  lbu          s9, 6(s4)
                  lbu          t2, -174(s4)
                  lbu          t0, -108(s4)
                  lbu          t1, -84(s4)
                  lb           s8, -120(s4)
                  addi         t6, a5, -1521
                  sltu         t5, s9, zero
                  lb           s1, -125(s4) #end riscv_load_store_rand_instr_stream_2
                  la           a3, region_1+1832 #start riscv_load_store_rand_instr_stream_12
                  xor          s1, t4, s0
                  srai         t5, gp, 16
                  lh           t4, -46(a3)
                  slt          a1, s7, t1
                  sb           s3, -49(a3)
                  andi         t3, a7, 1513
                  sb           t6, -215(a3)
                  lh           s8, 146(a3)
                  srli         s8, t5, 19
                  lbu          t5, -32(a3)
                  slt          s8, gp, s2
                  auipc        a1, 63983
                  sb           sp, -101(a3)
                  lh           s8, -204(a3)
                  lbu          ra, -163(a3)
                  sb           t6, -49(a3)
                  lbu          t6, -252(a3)
                  and          t3, t1, a0
                  lbu          s10, 31(a3)
                  lb           sp, -220(a3)
                  addi         s0, a4, -1019
                  nop
                  ori          a5, s9, -218
                  sw           a6, -180(a3)
                  lbu          a4, -215(a3)
                  lbu          a5, -251(a3)
                  sltu         t2, s9, s6
                  sw           a4, -8(a3)
                  lb           t5, -136(a3)
                  sb           s11, -203(a3)
                  xori         s7, s0, -817
                  xor          s9, a2, s0
                  sb           a5, 110(a3)
                  xori         s5, a3, -1437
                  sb           t2, -227(a3)
                  lb           a1, 37(a3)
                  sb           s6, 75(a3)
                  sw           s3, -64(a3)
                  lb           sp, -21(a3)
                  add          t1, s0, t5
                  lb           ra, -130(a3) #end riscv_load_store_rand_instr_stream_12
                  la           sp, region_1+781 #start riscv_load_store_rand_instr_stream_3
                  lbu          t2, -219(sp)
                  lb           s5, -246(sp)
                  sh           sp, 109(sp)
                  sb           a6, -150(sp)
                  slli         zero, s5, 20
                  auipc        a7, 389585
                  lb           s6, -215(sp)
                  add          t1, tp, t5
                  sb           s1, -131(sp)
                  addi         s8, s3, 1378
                  lb           t6, 174(sp)
                  lbu          t1, -84(sp)
                  lb           s6, -63(sp)
                  lui          s9, 187011
                  sltu         a3, a4, gp
                  ori          ra, tp, -510
                  lhu          s5, -255(sp)
                  lbu          gp, -57(sp)
                  sw           ra, 75(sp)
                  sra          s6, a1, s3
                  lb           t1, 93(sp)
                  sh           a0, 101(sp)
                  srai         s0, a1, 11
                  lbu          s5, 185(sp)
                  lb           a2, 228(sp)
                  ori          tp, s10, 64
                  sb           a0, 255(sp)
                  and          s1, s7, s8
                  lb           tp, 41(sp)
                  sltiu        s9, s2, -1535
                  lhu          s10, 229(sp)
                  sb           s5, -136(sp)
                  lbu          t3, 18(sp)
                  lbu          s5, -158(sp)
                  lh           s6, 47(sp)
                  lbu          a6, 40(sp) #end riscv_load_store_rand_instr_stream_3
                  la           sp, region_1+783 #start riscv_load_store_rand_instr_stream_5
                  lb           a4, 886(sp)
                  sltiu        a7, t4, 734
                  lw           a5, -731(sp)
                  sltiu        a1, s11, -1871
                  slli         a7, s1, 23
                  xor          a3, a1, zero
                  add          s6, t0, t6
                  add          t1, s3, a4
                  slli         t4, s10, 15
                  lbu          s0, -119(sp)
                  sb           s0, 1010(sp)
                  and          a4, a7, s8
                  lui          s8, 587385
                  lhu          s10, 1099(sp)
                  slli         t5, s7, 8
                  sra          s10, t0, s9
                  xor          s7, t1, s1
                  nop
                  slti         t3, s10, -1125
                  sb           s0, 288(sp)
                  sltu         a3, s11, a2
                  lb           ra, 207(sp)
                  lbu          s0, -548(sp)
                  sll          s5, s7, tp
                  lbu          a4, 1140(sp)
                  sb           ra, 1093(sp)
                  lb           s0, 432(sp)
                  sb           s5, 453(sp)
                  lbu          s5, 796(sp)
                  nop
                  sll          s10, a3, a3
                  addi         t6, a1, -1625
                  sra          s5, zero, s11
                  and          a7, t0, tp
                  lw           t2, -327(sp)
                  lh           s5, -173(sp) #end riscv_load_store_rand_instr_stream_5
                  srli         s10, a5, 13
                  auipc        a5, 380700
                  bge          s5, t2, 18f
                  bne          t1, a6, 7f
                  slli         a6, ra, 14
                  andi         t0, a4, 264
                  andi         a1, s5, -443
7:                nop
                  beq          tp, s11, 9f
9:                sub          s4, a7, s5
                  and          s7, s10, a1
                  bne          t2, a2, 20f
                  or           t3, t3, a4
                  srl          s0, a5, a4
                  bne          s7, a7, 15f
15:               add          ra, tp, sp
                  nop
                  sltiu        s1, t3, -74
18:               auipc        a6, 356870
                  xori         s10, ra, 275
20:               addi         zero, t2, -1783
                  sltiu        a2, s10, 803
                  or           s5, s6, t2
                  auipc        gp, 973518
                  blt          s8, t6, 30f
                  bgeu         tp, a3, 43f
                  beq          a5, a7, 43f
                  addi         a1, a3, -1091
                  ori          a2, s3, -396
                  slt          a4, t1, a4
30:               sll          t2, s11, s9
                  auipc        ra, 822430
                  sub          a2, t2, t6
                  blt          ra, a7, 47f
                  bltu         a2, tp, 49f
                  addi         s5, s11, 607
                  and          s6, a0, t6
                  addi         s10, s5, -1499
                  sltiu        tp, a6, -1702
                  beq          s4, gp, 58f
                  sltu         t0, a7, s4
                  xori         s7, a4, 355
                  ori          s7, s0, -1243
43:               slti         t5, a5, -1386
                  bgeu         s4, s10, 55f
                  ori          t6, a0, 579
                  sltu         s4, s4, s5
47:               nop
                  blt          t3, s8, 68f
49:               slti         s8, tp, -1761
                  sll          zero, t3, ra
                  nop
                  bltu         t6, s10, 70f
                  sub          a7, zero, tp
                  xor          a6, s3, t3
55:               bgeu         t0, a6, 66f
                  sra          s4, tp, s3
                  srl          zero, ra, s6
58:               sra          zero, a0, sp
                  sub          s3, t2, a3
                  slli         s4, a2, 19
                  sltiu        ra, a5, 1519
                  auipc        t4, 216447
                  xori         sp, gp, -1641
                  auipc        t6, 490344
                  sltu         s0, tp, s6
66:               or           a4, t2, s2
                  ori          s6, s8, 1145
68:               ori          s5, a5, -618
                  sltiu        a7, t5, 868
70:               auipc        t2, 440547
                  lui          tp, 162749
                  slt          sp, t6, a0
                  xor          s4, a1, s10
                  xori         s5, t6, -318
                  xor          t3, a4, a7
                  and          s10, s10, a0
                  sltu         t0, a1, s2
                  xor          a2, s7, ra
                  bne          t1, s6, 99f
                  bltu         s10, a3, 88f
                  bltu         t0, s10, 96f
                  srl          a6, sp, a3
                  blt          s10, s1, 86f
                  beq          s10, a7, 89f
                  srli         a5, s7, 16
86:               and          s8, gp, s10
                  sltiu        s0, a7, 1723
88:               xor          t6, s10, s0
89:               slt          s5, t0, s2
                  slli         sp, s0, 25
                  srli         t6, t0, 11
                  addi         t0, s7, -1280
                  bge          s3, s5, 111f
                  bltu         t1, s6, 111f
                  xor          gp, a2, a3
96:               xor          a6, t6, s10
                  blt          a0, a5, 107f
                  sra          t4, t3, tp
99:               andi         s1, t3, -589
                  slti         t3, t5, 1635
                  slti         tp, t1, 1335
                  sltu         zero, s3, a1
                  or           s10, t3, gp
                  sra          ra, t6, t6
                  slti         t1, t5, 1759
                  beq          a6, a3, 123f
107:              slti         t1, a1, 386
                  beq          t4, t4, 114f
                  xor          a3, gp, zero
                  lui          a5, 682055
111:              and          a7, a1, a0
                  slti         zero, t2, 1890
                  or           s10, a7, a1
114:              srai         s4, s11, 25
                  sub          t5, s2, ra
                  andi         t0, s10, 1088
                  sltiu        a6, a2, -670
                  slli         t4, a6, 3
                  srli         s0, a2, 2
                  auipc        tp, 935895
                  ori          a2, s11, -701
                  sltu         s5, a5, s10
123:              bltu         s8, t1, 135f
                  slli         s10, a3, 28
                  slli         s6, tp, 18
                  slti         t1, t3, -1532
                  blt          t4, t0, 135f
                  srli         t0, t3, 9
                  srai         t3, tp, 8
                  addi         t5, s3, 1518
                  blt          zero, t0, 151f
                  sltiu        s7, s9, -874
                  beq          t2, s11, 152f
                  lui          s0, 717535
135:              ori          a3, s9, -392
                  srai         tp, t5, 0
                  srai         s4, ra, 2
                  srai         s9, s1, 7
                  ori          s1, s7, -319
                  sub          a1, t6, s9
                  add          s1, s11, s7
                  sll          a2, a1, t1
                  add          ra, gp, a6
                  nop
                  add          t5, a4, t6
                  srl          s4, s6, a5
                  addi         s1, s8, 1716
                  ori          s7, s0, 1113
                  bge          s8, t0, 163f
                  lui          t0, 321905
151:              and          a5, s2, a1
152:              srai         a5, t4, 13
                  sll          s0, s1, t0
                  sra          s4, a2, a1
                  blt          t0, tp, 174f
                  bne          t6, t3, 176f
                  bge          s3, s4, 168f
                  sltu         t4, s9, a6
                  and          t6, a7, t5
                  ori          s4, s6, 1699
                  slti         t2, s8, -1862
                  sltu         s6, a5, s6
163:              sub          t2, t0, a6
                  bge          sp, s4, 184f
                  beq          ra, s2, 183f
                  andi         s1, t3, 547
                  slli         t5, s9, 7
168:              xor          s9, a7, s5
                  beq          s10, s9, 189f
                  bgeu         s2, ra, 187f
                  xori         sp, a2, -1439
                  srli         sp, t1, 19
                  srli         t3, t6, 6
174:              slti         s5, a1, -1645
                  sltu         a1, s6, s9
176:              bltu         s1, a7, 191f
                  sub          s6, sp, s8
                  slt          a3, a0, s9
                  bge          s1, s11, 185f
                  addi         s4, zero, 1625
                  sltu         s9, zero, a2
                  auipc        t5, 939531
183:              slli         a4, a1, 11
184:              slt          a3, t1, a2
185:              slti         ra, s5, -1071
                  bge          s0, a5, 194f
187:              add          t5, s4, s7
                  ori          gp, a0, 1640
189:              and          s0, s4, s4
                  addi         zero, s1, 530
191:              slt          t4, s6, tp
                  and          t0, gp, s5
                  add          s4, a3, s5
194:              xori         s6, a6, 427
                  add          t3, s11, a5
                  xor          t2, a2, a1
                  slt          zero, t6, t5
                  blt          sp, a5, 199f
199:              srai         a2, s3, 10
                  slti         a7, s8, 1849
                  bne          t1, a3, 202f
202:              lui          s7, 499811
                  blt          s2, s1, 221f
                  bge          zero, t5, 214f
                  slti         a3, a7, -1287
                  la           s10, region_1+1689 #start riscv_load_store_rand_instr_stream_7
                  lb           a5, 99(s10)
                  lui          a2, 60915
                  lb           t3, -1518(s10)
                  lb           s3, -698(s10)
                  lb           s5, -322(s10)
                  sb           s10, -934(s10)
                  srl          a4, t2, t0
                  or           t6, t0, t3
                  lbu          a3, -1506(s10)
                  sb           a1, -1595(s10)
                  lh           t3, -1603(s10)
                  ori          s7, s10, 1289
                  lh           s8, -471(s10)
                  xori         t4, a0, 1249
                  sh           t3, -1489(s10)
                  sb           a7, 309(s10)
                  sltiu        s5, sp, -227
                  lbu          zero, -1336(s10)
                  slli         t4, s5, 27
                  nop
                  nop
                  xor          zero, t3, a7
                  xori         t6, gp, -1518
                  lbu          s5, -542(s10)
                  srai         t3, s8, 9
                  sb           t3, -978(s10)
                  lw           t2, -377(s10)
                  slli         zero, s8, 30
                  lb           t0, -323(s10)
                  and          t1, a1, gp
                  sb           s11, -30(s10)
                  srai         t4, t5, 1
                  lhu          s1, -461(s10)
                  sb           s5, -1500(s10) #end riscv_load_store_rand_instr_stream_7
                  blt          t4, a1, 211f
                  auipc        s5, 728916
                  srai         t1, s0, 21
                  auipc        t3, 224021
                  sltiu        s10, a0, -655
211:              slt          tp, ra, t4
                  sltiu        s10, gp, 1062
                  sll          ra, s10, a5
214:              srai         s1, s5, 7
                  addi         s1, t4, -1550
                  nop
                  slt          s0, s6, s3
                  sltu         a4, ra, t5
                  beq          t3, a6, 237f
                  slti         t2, s10, 1935
221:              blt          s3, t3, 237f
                  xori         s6, s9, 347
                  ori          s8, tp, 492
                  addi         s4, a3, -1072
                  bgeu         s11, s4, 242f
                  bgeu         s8, s11, 241f
                  and          tp, t1, s3
                  nop
                  srli         tp, s5, 6
                  slli         s1, s5, 16
                  and          s1, t3, s6
                  beq          a3, s6, 236f
                  bgeu         s7, zero, 247f
                  srl          s9, s7, t4
                  slt          s4, s1, t2
236:              xor          s5, a4, s2
237:              xor          t5, s8, t5
                  srai         tp, s11, 23
                  sra          a2, s3, s4
                  sltu         s9, a1, t4
241:              bge          a3, s11, 255f
242:              andi         t4, s10, 1611
                  bne          s1, s5, 251f
                  sra          a5, t5, gp
                  sll          s6, sp, t5
                  auipc        s8, 799494
247:              xor          tp, a2, tp
                  blt          s9, s7, 257f
                  srai         t0, s3, 3
                  xori         t3, s7, -1145
251:              sub          tp, s0, gp
                  bltu         s1, t4, 255f
                  andi         a4, t1, -1188
                  nop
255:              xori         s1, a5, -808
                  lui          a3, 68432
257:              or           zero, a0, t0
                  blt          t2, a3, 269f
                  xori         a1, t1, 234
                  sub          t6, s5, s7
                  ori          t3, sp, 93
                  slti         sp, s3, 431
                  blt          a3, a4, 280f
                  blt          s2, a4, 276f
                  and          s6, s6, s6
                  srai         s0, t0, 8
                  slti         a2, t4, 714
                  sll          s9, s6, s7
269:              addi         a6, s5, -162
                  andi         s9, s11, 1846
                  slti         t2, a4, -481
                  auipc        s5, 620565
                  bgeu         t4, t0, 279f
                  sra          s7, tp, s7
                  andi         gp, tp, 793
276:              sltiu        s5, s10, -296
                  lui          a2, 1027146
                  beq          s8, s7, 297f
279:              beq          s4, s5, 296f
280:              slti         a3, t5, -694
                  and          s8, s11, a1
                  srl          t1, sp, t6
                  xori         t3, s6, -1826
                  auipc        s3, 91397
                  slti         tp, tp, 1053
                  nop
                  addi         a1, t4, -2030
                  slti         gp, t2, -766
                  slti         sp, s9, -565
                  bltu         a7, gp, 305f
                  slt          s4, t3, a4
                  or           a6, s6, s8
                  blt          s10, a6, 313f
                  blt          t6, a0, 303f
                  sltiu        gp, a0, 1074
296:              bltu         a6, s6, 316f
297:              xor          s6, tp, tp
                  bgeu         s3, a4, 316f
                  sll          t3, tp, sp
                  sltiu        s0, a4, -1268
                  slli         a5, s4, 13
                  bltu         a5, t1, 312f
303:              or           gp, sp, s5
                  xor          t0, s8, gp
305:              sra          s7, t3, t5
                  blt          a6, a4, 323f
                  addi         s1, a1, 1075
                  slti         s3, s0, -430
                  sltiu        s3, s7, 1806
                  sltu         s4, a7, s7
                  srl          a5, a4, s2
312:              slti         a5, a4, 650
313:              slti         a1, a0, -1180
                  bne          s9, s8, 322f
                  beq          s4, sp, 316f
316:              sltu         gp, a6, t2
                  auipc        a7, 376608
                  xori         t5, a7, 636
                  add          t6, a4, s6
                  bltu         ra, t1, 339f
                  slli         s8, gp, 20
322:              andi         a1, a7, 1855
323:              nop
                  bltu         zero, s6, 339f
                  beq          tp, s11, 328f
                  beq          t6, a6, 345f
                  ori          s8, s2, -1451
328:              nop
                  sll          t1, ra, s4
                  slti         s7, s1, -1734
                  sll          s10, a0, zero
                  srai         zero, sp, 22
                  slt          s6, t5, s1
                  beq          s4, a0, 350f
                  sra          s9, s9, t4
                  sub          s5, s1, t3
                  add          t3, s11, s8
                  slt          gp, t3, tp
339:              sll          s4, a7, s0
                  sltu         a3, a2, a6
                  sltu         s6, ra, t4
                  nop
                  andi         a7, s4, 229
                  sltiu        s9, s9, -1082
345:              xor          s9, a5, a1
                  auipc        t0, 833206
                  sll          t0, t3, s10
                  bgeu         s5, a5, 353f
                  and          a4, a6, a1
350:              ori          a2, s9, 1512
                  sltu         t0, t6, ra
                  blt          s7, s4, 372f
353:              xori         a2, t2, 1669
                  bgeu         t5, sp, 365f
                  slti         a4, gp, 952
                  bltu         s3, t5, 364f
                  slti         s9, s0, -943
                  lui          s3, 608981
                  srai         t1, s2, 3
                  srl          t2, s10, a4
                  nop
                  sll          s0, s9, t1
                  slt          t1, s4, s8
364:              ori          s1, s9, -1497
365:              xori         s4, a3, 997
                  addi         a5, s2, 1539
                  blt          s1, s11, 379f
                  xori         s4, gp, -739
                  auipc        sp, 906092
                  blt          s8, a1, 388f
                  nop
372:              bltu         t4, a5, 386f
                  bge          t1, t0, 374f
374:              lui          t1, 3726
                  lui          a1, 595626
                  srli         t2, t2, 5
                  addi         zero, a2, -1462
                  addi         gp, a3, 879
379:              slli         s7, tp, 17
                  srl          t3, s2, s11
                  xori         t4, s8, 1742
                  beq          a5, s5, 396f
                  bgeu         s1, sp, 400f
                  bne          gp, t4, 388f
                  bne          t2, sp, 391f
386:              xori         tp, s3, 1153
                  slt          s4, gp, s8
388:              beq          s6, s0, 394f
                  sltiu        s5, a2, -181
                  sltiu        sp, s11, -72
391:              ori          zero, s3, -17
                  blt          s7, s1, 410f
                  bge          a1, a0, 404f
394:              nop
                  beq          tp, zero, 412f
396:              andi         s7, s8, 1986
                  bgeu         t3, t0, 417f
                  andi         s10, t1, 77
                  andi         tp, a3, 769
400:              lui          t6, 676476
                  add          t0, s2, t0
                  srai         a2, zero, 21
                  bgeu         t5, t5, 411f
404:              slli         s1, s4, 26
                  bltu         t0, s7, 425f
                  ori          a5, t4, 843
                  xori         s7, gp, -1977
                  xori         s4, t3, 1525
                  srl          a4, t1, a3
410:              nop
411:              slt          a2, s9, t5
412:              bgeu         s11, t6, 415f
                  slli         a7, s0, 12
                  xor          sp, t6, a4
415:              beq          a3, t2, 421f
                  bgeu         s2, s11, 434f
417:              ori          t0, s1, 679
                  add          t5, a3, s2
                  srli         a2, s11, 5
                  bltu         s0, ra, 426f
421:              bge          s1, t5, 426f
                  blt          zero, a7, 433f
                  beq          tp, gp, 443f
                  xor          a2, a2, s9
425:              bne          t0, t2, 426f
426:              bne          t6, a7, 434f
                  xor          a6, a1, s10
                  bgeu         s8, s11, 440f
                  xor          a1, s0, ra
                  xor          t0, s11, a7
                  xori         gp, t0, 258
                  sll          s1, t6, t4
433:              sltiu        a1, t3, -1287
434:              sltiu        s3, s2, -1101
                  ori          s0, a3, -392
                  srl          s3, s10, t6
                  srai         zero, t6, 17
                  bge          s3, a0, 453f
                  ori          s0, a4, -247
440:              srai         s4, t4, 4
                  bne          s4, a1, 450f
                  srai         a3, zero, 9
443:              sltiu        t2, a4, -122
                  beq          t2, t3, 445f
445:              sra          s8, s3, a5
                  bne          s4, t4, 463f
                  andi         a3, t3, -1118
                  xor          a3, a3, t3
                  sltiu        a2, s1, -1378
450:              bltu         s5, a4, 454f
                  sltu         s9, a3, s1
                  slt          t3, s2, a3
453:              auipc        ra, 669739
454:              bge          a4, s0, 472f
                  auipc        t3, 62049
                  bltu         s8, s3, 467f
                  auipc        tp, 684325
                  sll          s4, s0, a0
                  lui          t0, 23288
                  auipc        a5, 876404
                  sra          t0, t0, s5
                  bge          a1, s1, 479f
463:              beq          s5, zero, 482f
                  sltiu        a6, s10, -1443
                  addi         s10, s7, 130
                  nop
467:              or           t5, s5, tp
                  sub          t6, s6, t4
                  lui          a2, 754492
                  addi         s1, t5, 653
                  slt          ra, gp, zero
472:              add          s4, t4, s6
                  or           t4, s6, s5
                  lui          zero, 563618
                  add          a4, s11, tp
                  srai         a6, s5, 4
                  lui          s4, 403586
                  beq          s7, s5, 496f
479:              slti         t3, ra, 923
                  blt          a5, t1, 494f
                  addi         s0, s1, 573
482:              ori          zero, gp, 308
                  bgeu         t5, t4, 498f
                  nop
                  slti         a6, a0, 529
                  addi         t2, t6, 330
                  nop
                  or           s7, s5, s3
                  blt          ra, t3, 508f
                  la           t2, region_1+1619 #start riscv_load_store_rand_instr_stream_6
                  xori         gp, zero, 913
                  sh           s1, -773(t2)
                  sltiu        t5, s2, 1175
                  lhu          s5, 363(t2)
                  srl          a6, t5, a2
                  lbu          gp, 116(t2)
                  addi         a3, a1, -605
                  lh           a5, -461(t2)
                  xor          s4, tp, s9
                  nop
                  andi         t6, s4, 260
                  sll          s9, s11, a5
                  lbu          gp, -65(t2)
                  srli         a2, a7, 0
                  ori          s4, s9, -431
                  sub          s9, zero, a2
                  slli         s1, s8, 4
                  sltu         s4, s6, a0
                  addi         t3, s8, -217
                  lhu          s8, -925(t2)
                  nop
                  srli         s5, tp, 10
                  auipc        zero, 905993
                  xori         ra, s0, -1306
                  slt          s10, s7, t0
                  add          a4, zero, s3
                  lb           s6, -930(t2)
                  lb           sp, -688(t2)
                  or           t5, a3, t4
                  slli         s10, sp, 18
                  sb           t6, 26(t2)
                  sb           t2, -1158(t2)
                  sltiu        a3, s3, -1669
                  xor          a1, s8, a4
                  andi         a6, a5, 1421
                  add          t4, a5, s2
                  or           a2, s2, zero
                  lh           s8, -63(t2) #end riscv_load_store_rand_instr_stream_6
                  sll          a1, s5, tp
                  sltiu        s3, s2, 352
                  sra          t1, sp, zero
                  and          t4, a1, s2
494:              slt          s4, s11, t3
                  bltu         s11, a0, 511f
496:              slti         t1, zero, -1778
                  addi         s3, a2, -1124
498:              xor          a1, a3, a7
                  xor          gp, t2, sp
                  srli         a1, a5, 31
                  bge          ra, t0, 515f
                  sll          gp, a0, a0
                  bltu         s9, t0, 513f
                  beq          s8, t4, 509f
                  bge          a1, tp, 513f
                  srl          a3, ra, s8
                  ori          s1, t2, -1423
508:              srli         a7, s0, 29
509:              sll          t5, s9, s8
                  xor          gp, t5, s7
511:              andi         s7, s4, -1635
                  and          a1, s10, zero
513:              auipc        t6, 750688
                  srai         tp, a2, 18
515:              bge          s11, a1, 523f
                  sltiu        sp, s11, 349
                  sub          t6, s0, s5
                  add          s5, s8, tp
                  xor          s7, gp, a5
                  nop
                  blt          a2, s2, 532f
                  nop
523:              sltiu        a1, a1, 930
                  sra          t2, s4, a3
                  or           s4, tp, s5
                  srl          a2, s5, s1
                  sra          gp, t2, s1
                  ori          a5, sp, 1999
                  sltiu        ra, s7, -962
                  slt          a5, tp, t6
                  sltiu        s3, s1, -817
532:              nop
                  bne          tp, a5, 552f
                  and          t1, t1, a4
                  nop
                  beq          a5, s0, 552f
                  or           s5, s2, a4
                  addi         s3, sp, 2
                  slt          s3, a6, t3
                  ori          a1, t5, 1363
                  beq          t6, s6, 542f
542:              srai         t2, tp, 25
                  sll          s9, sp, t1
                  sltu         a1, a7, a6
                  xor          t2, t6, sp
                  addi         a5, a6, 1956
                  nop
                  xor          sp, t3, s6
                  sll          a4, s8, t0
                  sltu         a7, t4, a1
                  and          a2, s7, s3
552:              or           t3, s2, s4
                  bge          s2, t2, 570f
                  lui          a1, 635597
                  slti         s1, s10, 1735
                  beq          a3, s2, 562f
                  andi         a7, t3, 1857
                  nop
                  srl          t4, gp, s0
                  bgeu         gp, s7, 570f
                  xor          s7, s3, t6
562:              slli         s9, s9, 22
                  ori          t0, a7, 1067
                  sltu         s4, a5, a7
                  sltiu        t1, a2, -623
                  sub          t0, t1, t2
                  srl          a7, t1, t2
                  or           s4, a2, t6
                  or           ra, t2, s0
570:              sltiu        a5, t3, -1581
                  srai         a4, a5, 20
                  auipc        tp, 913438
                  nop
                  slt          sp, a0, a3
                  ori          a7, s3, 1875
                  srli         s3, s6, 10
                  srai         a4, a7, 27
                  sub          s3, zero, s6
                  bgeu         a3, s7, 582f
                  and          t1, t6, tp
                  add          s4, t0, s10
582:              lui          t2, 441519
                  srai         a6, s1, 3
                  and          s9, tp, a2
                  slti         gp, s6, 1057
                  la           s9, region_0+200 #start riscv_load_store_rand_instr_stream_9
                  sra          s0, s3, t1
                  auipc        a4, 395230
                  sb           s6, 4(s9)
                  sw           t1, -8(s9)
                  srli         s8, s11, 9
                  lbu          s6, 1(s9)
                  lbu          a5, -10(s9)
                  or           s8, a0, t6
                  lhu          t5, -16(s9)
                  lb           t6, -14(s9)
                  sltu         s8, s2, s7
                  lh           a5, -12(s9)
                  lbu          zero, 6(s9)
                  sb           s10, 3(s9)
                  lbu          s8, -15(s9)
                  slli         t1, a5, 22
                  srli         s5, t1, 31
                  srl          a6, t4, t5
                  slti         a7, gp, 1742
                  lb           ra, -9(s9)
                  sb           a0, 7(s9)
                  lbu          t6, -11(s9)
                  sra          s10, s4, s5
                  sh           a7, 2(s9)
                  sb           s6, -15(s9)
                  sh           gp, -8(s9)
                  lh           a2, -8(s9)
                  lb           s0, -9(s9)
                  sh           a7, 12(s9)
                  slli         s6, s6, 13
                  sb           gp, 11(s9)
                  xor          gp, zero, a5
                  sb           sp, 3(s9)
                  sh           t0, -10(s9) #end riscv_load_store_rand_instr_stream_9
                  xori         s6, zero, 1165
                  andi         zero, s5, -1041
                  addi         t4, a6, 24
                  sltu         t4, a6, ra
                  bne          s7, s6, 596f
                  add          t1, s8, a5
                  sll          a6, ra, t5
                  srai         s8, a0, 3
                  and          a2, s8, a5
                  blt          s10, t3, 615f
596:              ori          a5, s0, -1297
                  srli         s9, t2, 0
                  andi         t0, t0, -751
                  srl          s7, t3, s1
                  srai         t3, s4, 23
                  nop
                  sltiu        zero, a5, 1770
                  nop
                  sra          a2, s10, s0
                  bne          t3, gp, 606f
606:              add          gp, t2, a7
                  xori         s6, tp, -510
                  addi         t0, t4, -174
                  sltiu        ra, s5, 1537
                  bltu         tp, s10, 627f
                  auipc        s5, 840675
                  add          s1, t6, s2
                  addi         a7, a0, 1978
                  sub          a3, t0, a3
615:              bltu         a2, zero, 633f
                  addi         s6, a1, 136
                  beq          s10, t6, 631f
                  xori         s10, s6, 87
                  andi         ra, s11, -1920
                  srl          ra, t2, s8
                  sll          s4, gp, a1
                  beq          tp, a5, 633f
                  srl          a7, s10, sp
                  xor          sp, t5, sp
                  sub          s6, s9, a2
                  srai         a5, t5, 18
627:              sltiu        a3, t0, -1208
                  bge          s3, a5, 640f
                  beq          s9, t1, 638f
                  lui          a3, 132110
631:              add          a2, tp, a3
                  sub          t3, tp, t0
633:              slti         s0, t6, -1348
                  addi         s8, a7, 489
                  add          tp, a2, t4
                  srl          zero, s2, s5
                  sll          t3, s7, s1
638:              srl          s8, s6, a6
                  addi         s4, a5, 995
640:              sra          sp, s9, a4
                  slt          t3, t3, s0
                  beq          t3, a2, 659f
                  beq          a0, a4, 647f
                  sll          s10, a6, s8
                  srai         t2, t4, 8
                  sltiu        t2, s8, 1982
647:              sltiu        s10, a5, 1317
                  lui          a5, 147425
                  slli         ra, s8, 11
                  andi         zero, s8, -1259
                  srl          a4, s0, t3
                  bne          s5, sp, 671f
                  slli         a4, a5, 11
                  and          s8, t5, a6
                  or           t5, s10, s3
                  sub          s7, t3, s6
                  bne          s11, t6, 675f
                  blt          s5, s9, 673f
659:              sra          t1, s10, a0
                  blt          a2, sp, 675f
                  srli         t3, a0, 1
                  bne          a0, s11, 680f
                  lui          a1, 132110
                  and          a5, s3, s5
                  nop
                  blt          a2, a6, 680f
                  srli         t4, t4, 1
                  sub          s3, zero, gp
                  bltu         gp, a6, 689f
                  beq          sp, t3, 690f
671:              andi         s0, ra, -354
                  sra          tp, t6, s2
673:              xor          a7, s3, t5
                  xor          sp, t3, gp
675:              blt          a2, a2, 680f
                  or           a1, s3, t0
                  bne          s6, s11, 693f
                  xori         a5, tp, -271
                  sra          t0, sp, ra
680:              sra          t5, t5, sp
                  sub          t3, s3, t6
                  srai         s9, t2, 3
                  addi         t3, t5, 1506
                  nop
                  add          sp, s9, s10
                  srli         ra, s7, 2
                  sub          t4, t0, s9
                  bge          t3, a1, 705f
689:              sltiu        t0, gp, -206
690:              slt          gp, t6, s6
                  bge          t3, a5, 711f
                  srl          a7, t5, t4
693:              and          t4, t0, a0
                  srli         t4, t4, 1
                  bgeu         t0, tp, 706f
                  bne          t0, a3, 715f
                  ori          a4, t6, 1695
                  bne          t0, s6, 707f
                  ori          s8, s8, -1457
                  addi         s8, ra, -157
                  xori         s3, a1, 1851
                  bne          s8, s11, 710f
                  srai         t0, s6, 20
                  beq          ra, t3, 721f
705:              xori         s3, a5, -705
706:              beq          a6, s1, 723f
707:              sll          s1, s4, t4
                  sub          t6, s0, s11
                  xori         a5, t0, 579
710:              auipc        t5, 628250
711:              bge          s5, a7, 719f
                  ori          t6, a6, 1409
                  ori          s7, t4, 1659
                  ori          a6, s2, -45
715:              ori          s0, a1, 1518
                  lui          t3, 1025794
                  sub          t4, s0, t2
                  sltiu        s10, s10, 2035
719:              sltiu        t6, s0, -74
                  bgeu         t3, t1, 738f
721:              slti         t1, t1, -1719
                  add          a6, gp, s2
723:              bltu         t6, s10, 733f
                  beq          s11, s11, 743f
                  nop
                  bgeu         s9, a6, 737f
                  nop
                  sltu         a2, s5, sp
                  and          a1, t5, t3
                  bgeu         s8, t6, 731f
731:              sltiu        s3, a0, -1784
                  bne          s9, t0, 750f
733:              blt          a0, s0, 748f
                  nop
                  slti         a4, s9, -1647
                  slli         gp, s3, 15
737:              beq          t1, t6, 743f
738:              slli         s7, s5, 29
                  bltu         s1, a7, 757f
                  beq          sp, a0, 754f
                  slt          a7, s5, a4
                  andi         t3, s11, 2
743:              or           t3, a6, t5
                  sub          a6, s10, s0
                  xori         s3, a4, -1629
                  sll          s10, s3, gp
                  beq          t5, t5, 748f
748:              sub          a5, s0, t1
                  bne          a3, t3, 761f
750:              sltu         t0, s6, a4
                  auipc        t0, 802078
                  add          t4, s5, s3
                  srl          a6, s6, s0
754:              bne          s0, a2, 758f
                  add          s3, a4, a3
                  andi         zero, sp, -579
757:              bne          zero, a4, 763f
758:              srai         s3, s1, 14
                  slti         s10, a4, 1343
                  srai         gp, s9, 17
761:              xori         gp, a2, -931
                  lui          t1, 422843
763:              xori         s8, a5, -1529
                  beq          s8, a0, 779f
                  blt          t6, s5, 785f
                  slli         tp, s1, 15
                  sub          a2, zero, a6
                  add          s3, a5, s3
                  beq          a0, t3, 783f
                  bge          s7, a0, 790f
                  sra          t5, a1, a4
                  srai         s4, s5, 1
                  add          a5, t1, zero
                  nop
                  srl          s0, a6, s4
                  and          s6, a1, t2
                  slt          sp, a2, t5
                  and          ra, t4, zero
779:              addi         zero, s0, -2019
                  bltu         s8, s4, 783f
                  blt          ra, gp, 797f
                  nop
783:              bge          s2, a6, 784f
784:              bgeu         sp, t2, 801f
785:              slt          a7, a1, a0
                  lui          a6, 149068
                  srli         t1, s4, 19
                  addi         t4, t4, -1461
                  add          t0, s8, s10
790:              or           s1, gp, s4
                  srai         a3, a2, 18
                  sra          a2, s4, gp
                  ori          t2, s1, -1495
                  beq          s0, a0, 804f
                  xori         s5, tp, -1360
                  bltu         s5, t2, 802f
797:              blt          gp, s7, 812f
                  beq          s6, s0, 818f
                  andi         s6, t1, 1558
                  sub          t5, t6, t3
801:              srl          s6, gp, sp
802:              lui          a1, 672446
                  and          s10, t1, t6
804:              sltiu        gp, s2, 594
                  xori         s0, t6, -1507
                  and          t3, t6, gp
                  addi         a5, a7, -428
                  sltu         t6, s11, a1
                  slt          t5, s9, s0
                  and          s6, s5, s7
                  or           tp, t0, s5
812:              bltu         s7, t2, 830f
                  slli         s4, a1, 14
                  blt          t0, t2, 834f
                  xori         t4, tp, 702
                  auipc        s7, 687557
                  srl          s0, a1, s5
818:              srai         s0, s7, 1
                  sll          t2, s0, s10
                  lui          a2, 965785
                  sub          gp, t6, s11
                  lui          s6, 460458
                  andi         t5, a5, -1111
                  add          s7, t2, t0
                  xor          s4, s4, s5
                  xori         s3, a2, 1301
                  or           a2, zero, s8
                  bgeu         ra, a0, 832f
                  bne          t3, a5, 832f
830:              srli         t4, s0, 0
                  ori          t2, t3, -974
832:              bne          s11, s11, 837f
                  blt          t3, a4, 851f
834:              srai         s7, a7, 27
                  andi         a6, gp, 1850
                  lui          t0, 85869
837:              srl          s0, a2, s7
                  slti         s4, s3, -8
                  bge          t2, s5, 845f
                  blt          s11, s3, 854f
                  la           sp, region_0+1344 #start riscv_load_store_rand_instr_stream_0
                  sw           s8, -132(sp)
                  sra          t0, s3, t0
                  andi         t6, t5, -1665
                  sltiu        s4, s0, 648
                  lui          ra, 923471
                  lh           t4, 76(sp)
                  sltu         s4, t1, ra
                  lb           s5, -196(sp)
                  nop
                  sw           s5, -64(sp)
                  and          s1, t3, s3
                  nop
                  slt          t6, a7, t5
                  lbu          s10, 178(sp)
                  sb           a6, -49(sp)
                  slti         s1, s7, -1940
                  addi         a6, ra, -1454
                  lh           s10, 30(sp)
                  lb           a2, 1(sp)
                  lh           ra, 166(sp)
                  sltiu        s3, s7, -1665
                  sll          s3, t1, a5
                  sb           a0, -127(sp)
                  lbu          t2, 198(sp)
                  sb           s9, 121(sp)
                  lb           tp, -42(sp)
                  sb           a1, 211(sp)
                  lbu          a5, 155(sp) #end riscv_load_store_rand_instr_stream_0
                  bne          s10, a1, 859f
                  bgeu         s2, t5, 850f
                  srli         a6, tp, 26
                  lui          a2, 971126
845:              lui          t6, 895808
                  srai         ra, a0, 22
                  srli         tp, t0, 4
                  ori          t6, t5, -20
                  srli         t6, ra, 4
850:              sra          gp, zero, a3
851:              srl          s10, a2, t4
                  bltu         s2, s11, 863f
                  or           s1, s8, s6
854:              beq          a4, t1, 873f
                  srl          s5, t1, a2
                  bltu         s0, t3, 864f
                  bge          a4, t2, 874f
                  slli         a3, s6, 24
859:              slli         sp, s8, 23
                  slt          ra, ra, t5
                  lui          gp, 876778
                  bge          s0, gp, 879f
863:              xor          zero, a1, sp
864:              slti         t0, a0, 160
                  sltu         t0, tp, a3
                  andi         a2, a3, -1179
                  sub          s5, s8, ra
                  nop
                  sltiu        s6, t0, 107
                  slt          s0, ra, zero
                  or           s10, a0, s8
                  sub          a2, s0, ra
873:              ori          t2, t6, -1666
874:              nop
                  sra          t6, t6, a3
                  addi         t0, a1, 269
                  sltiu        s7, s10, -1824
                  nop
879:              srl          s6, s3, s8
                  sra          gp, t4, tp
                  andi         s4, t6, 1662
                  sltu         t2, a2, s5
                  bne          s0, s9, 892f
                  addi         t4, a1, 399
                  srl          zero, a4, t0
                  auipc        t0, 222202
                  xor          s6, s7, sp
                  slt          a7, a2, a7
                  xori         s7, t3, 1265
                  and          s5, s3, s9
                  ori          gp, a5, 1441
892:              andi         s4, a4, -140
                  sltu         t4, ra, ra
                  srli         a4, s10, 8
                  slli         a6, t3, 7
                  srai         s3, s8, 16
                  blt          s1, t3, 898f
898:              srl          ra, a2, tp
                  lui          t3, 510418
                  add          t0, s0, a0
                  sltu         s8, s9, s4
                  sll          sp, t4, t6
                  xori         a7, gp, -1876
                  nop
                  slt          a6, t5, t0
                  ori          a5, t6, -245
                  srli         s8, a4, 27
                  bne          a3, s4, 927f
                  srl          t2, gp, t0
                  slli         s4, t2, 4
                  xor          s5, t1, t5
                  add          s0, t5, s9
                  sub          s5, s4, t2
                  addi         a7, ra, 1091
                  and          t2, t2, t6
                  andi         s8, s5, 1772
                  and          zero, s11, s0
                  srli         a6, s1, 28
                  sll          a2, a2, s3
                  blt          tp, t3, 940f
                  slt          s8, a2, ra
                  srli         t1, s9, 29
                  or           s1, s3, gp
                  srli         a4, t4, 6
                  beq          t5, s7, 939f
                  slli         a6, s4, 20
927:              xori         s7, a2, 520
                  addi         s9, s10, 75
                  slt          s0, s7, s11
                  and          s6, t1, s6
                  bne          a7, s8, 946f
                  beq          s0, s3, 944f
                  srl          s10, t2, a5
                  slti         a3, t4, -1808
                  srai         gp, s7, 28
                  auipc        tp, 51612
                  sltu         a7, a2, t0
                  sltu         s9, zero, s9
939:              and          gp, ra, s1
940:              slti         gp, t1, -708
                  beq          s7, t2, 952f
                  nop
                  lui          a3, 995120
944:              and          a1, s11, a4
                  srl          sp, s9, s11
946:              or           t0, s7, s6
                  bgeu         sp, gp, 958f
                  addi         s3, s4, -730
                  bgeu         s6, s9, 964f
                  xori         zero, a3, 1789
                  or           t2, s6, s0
952:              add          t2, s5, a6
                  srli         s9, a1, 22
                  sra          s1, t4, s7
                  auipc        t0, 513934
                  sll          s0, s1, t3
                  or           s3, s5, s7
958:              slli         s5, s4, 21
                  xor          s7, a4, a7
                  srl          tp, s11, s6
                  slli         s0, a2, 14
                  srl          s7, zero, zero
                  add          gp, s8, tp
964:              nop
                  slli         s4, a7, 1
                  sub          s1, s6, s8
                  beq          a4, a1, 985f
                  nop
                  srai         t0, s0, 22
                  blt          s7, a1, 974f
                  xori         s9, t2, 1012
                  auipc        a4, 202286
                  beq          a2, s6, 992f
974:              sll          a6, s11, a7
                  blt          a5, s1, 993f
                  bge          s10, sp, 992f
                  addi         gp, tp, 493
                  xor          t6, s4, a4
                  andi         a1, s6, 936
                  andi         s8, a2, -352
                  srli         t5, a0, 22
                  and          a1, t5, t6
                  addi         s4, s8, 1570
                  bge          a3, s1, 1001f
985:              or           ra, gp, s3
                  slli         ra, a4, 2
                  slli         s0, a2, 20
                  slli         s1, ra, 16
                  nop
                  xor          a1, t1, s10
                  xor          sp, tp, a2
992:              sub          s0, s5, s4
993:              or           s9, a4, a4
                  bltu         tp, s1, 1008f
                  ori          s8, gp, 1679
                  slli         s8, s0, 12
                  sra          zero, s4, s9
                  auipc        s10, 420137
                  slti         tp, t1, 1632
                  srai         ra, s3, 20
1001:             nop
                  andi         s9, s4, 320
                  sra          zero, t4, tp
                  sra          s5, s3, t5
                  add          t1, s1, ra
                  xori         a7, s2, 660
                  xor          s10, s1, a6
1008:             sltiu        s5, a4, -76
                  xor          ra, a1, sp
                  sll          a5, a5, s11
                  bgeu         t3, t5, 1012f
1012:             slt          zero, a3, s11
                  srl          a5, s0, s9
                  srai         a4, s9, 21
                  and          ra, t1, t3
                  sub          t2, s4, s0
                  slti         s8, t5, 717
                  slti         a3, s5, 265
                  andi         s3, t2, 1095
                  sra          s4, t3, s1
                  slt          s0, t2, s1
                  sltu         zero, a6, t3
                  andi         a2, ra, -710
                  or           a1, s2, s2
                  srai         tp, s0, 21
                  bltu         a0, ra, 1044f
                  bgeu         a5, t4, 1044f
                  xori         ra, s2, 1659
                  srai         s5, a6, 0
                  add          t4, t3, tp
                  slti         a7, tp, 1224
                  bne          s8, t2, 1052f
                  and          t6, tp, s11
                  bgeu         s4, t0, 1040f
                  xor          t4, sp, a5
                  ori          a6, a2, -759
                  srai         s10, t0, 22
                  slt          a5, t2, s0
                  sll          t2, t6, s11
1040:             xori         s1, tp, 699
                  xori         a2, t5, 626
                  bge          a3, t4, 1045f
                  and          t5, a6, a2
1044:             addi         a2, s3, 1308
1045:             bge          sp, gp, 1050f
                  bltu         t3, s8, 1061f
                  bgeu         t6, t0, 1057f
                  srl          sp, s5, s9
                  slt          a7, sp, a6
1050:             sra          a2, zero, a0
                  lui          s10, 518863
1052:             andi         a7, ra, -621
                  slt          t0, s11, sp
                  slt          a6, s1, s7
                  sub          a1, s10, t6
                  add          s1, ra, t0
1057:             sltu         a5, a2, s2
                  nop
                  srl          s5, ra, a4
                  ori          tp, s11, -505
1061:             beq          t0, t3, 1081f
                  srai         s5, zero, 0
                  nop
                  sltiu        s0, s8, -1559
                  sltu         s1, s2, tp
                  andi         t2, a6, 1850
                  bltu         s2, a6, 1075f
                  slli         gp, sp, 28
                  sll          a7, a0, a7
                  sltu         s0, a0, t3
                  or           a4, a4, a4
                  srai         a5, s10, 17
                  auipc        sp, 793240
                  nop
1075:             srai         a4, s6, 26
                  lui          tp, 616964
                  auipc        tp, 619783
                  add          a4, t2, a2
                  andi         ra, s9, -539
                  sltiu        zero, a6, 1127
1081:             slti         a3, tp, -984
                  xor          gp, t6, s11
                  bne          s9, t2, 1103f
                  bne          a0, t1, 1096f
                  srli         a7, t1, 31
                  bltu         s4, a3, 1092f
                  sltu         s1, t6, a5
                  or           ra, a1, a6
                  bge          t2, s3, 1098f
                  or           s10, zero, a6
                  slt          zero, s0, t4
1092:             srl          a2, t2, s8
                  srl          a2, a3, s5
                  sub          t4, a7, ra
                  auipc        a1, 866996
1096:             srli         a2, s6, 25
                  auipc        s3, 806939
1098:             or           s5, s1, t4
                  sltu         ra, s4, s7
                  slt          t4, t1, s9
                  slti         s5, a4, -1419
                  srli         gp, s7, 15
1103:             bgeu         s10, t1, 1114f
                  xor          s9, a7, s10
                  bge          s4, a7, 1113f
                  srli         t4, t1, 19
                  add          a7, s8, gp
                  slli         a6, s9, 6
                  xori         t2, t6, 1810
                  blt          a2, a7, 1127f
                  sll          s10, a1, sp
                  or           a4, t2, sp
1113:             add          s10, s2, a1
1114:             slli         s0, t4, 29
                  addi         s6, a2, 1964
                  add          s7, t4, tp
                  auipc        t4, 158505
                  lui          s10, 15661
                  lui          sp, 802785
                  blt          a6, a0, 1121f
1121:             add          a3, zero, a0
                  add          t2, a4, s9
                  add          t2, s4, t6
                  bge          s10, t6, 1143f
                  and          s7, t2, t2
                  xori         a6, tp, 28
1127:             blt          a7, sp, 1141f
                  beq          s1, s2, 1132f
                  xor          a5, s4, a4
                  xor          s5, a4, s3
                  blt          s2, s6, 1139f
1132:             ori          s5, a2, -1416
                  andi         a5, t2, 181
                  sll          ra, s8, s9
                  auipc        s4, 493180
                  srl          t6, s9, a7
                  srl          s7, s0, tp
                  slt          t4, s6, tp
1139:             bge          tp, a6, 1157f
                  auipc        sp, 655793
1141:             andi         s4, s6, 546
                  add          s1, t6, s11
1143:             bltu         zero, s10, 1162f
                  sltu         s6, t0, s6
                  sub          s0, ra, tp
                  bgeu         t6, s0, 1166f
                  slt          t1, s7, s0
                  addi         a7, t6, 950
                  sltiu        s1, a6, 7
                  addi         s5, s8, -455
                  bltu         t3, s6, 1157f
                  sltiu        sp, zero, -1719
                  sra          a5, a6, s2
                  auipc        a3, 71313
                  bne          s0, tp, 1173f
                  srl          a3, t0, s4
1157:             andi         a7, t6, -1908
                  sltiu        t1, s0, 1831
                  bne          s4, t1, 1165f
                  slt          s10, sp, zero
                  bne          t0, a5, 1171f
1162:             ori          s4, s5, 621
                  sltu         t4, t0, s7
                  sll          s1, a5, s6
1165:             sltu         a7, s4, s10
1166:             xori         a5, s5, 1420
                  lui          t2, 877112
                  andi         t2, gp, 961
                  xori         sp, a3, -1403
                  or           s10, s6, s10
1171:             xor          s9, tp, t5
                  sltu         s7, sp, s9
1173:             ori          s9, s4, -211
                  andi         a3, a5, -1317
                  sub          s8, s3, s4
                  bne          s4, s3, 1184f
                  bge          s11, a5, 1192f
                  nop
                  bne          s2, s5, 1196f
                  slti         a4, t3, -1961
                  add          sp, s4, a7
                  bge          t5, t5, 1183f
1183:             slti         a4, a7, -1212
1184:             lui          t0, 580579
                  addi         s0, ra, -2022
                  xor          s7, s1, s5
                  bgeu         s4, s0, 1188f
1188:             srli         a5, a5, 16
                  slli         t2, gp, 3
                  xori         t1, s8, 1763
                  bge          s10, t5, 1207f
1192:             sll          t0, s10, s3
                  andi         t4, a4, -1111
                  lui          t2, 225740
                  addi         t2, t4, -988
1196:             bltu         s4, s10, 1207f
                  srai         gp, s10, 13
                  sll          ra, a6, a4
                  or           t5, s7, ra
                  bge          s4, ra, 1219f
                  slli         s8, s9, 23
                  xori         zero, s11, -528
                  srai         s0, s10, 5
                  auipc        a1, 744295
                  srl          t4, s11, a3
                  sll          a2, a6, a3
1207:             sltiu        s5, s5, -75
                  sub          t5, a3, a6
                  slli         t3, a1, 14
                  sll          s0, a6, s10
                  beq          tp, s6, 1225f
                  sub          s9, a2, s10
                  add          a7, s7, s4
                  and          s0, tp, a6
                  sra          s4, a3, s5
                  auipc        a4, 981540
                  bgeu         s9, s6, 1229f
                  nop
1219:             slti         t5, s5, 1720
                  bne          tp, s2, 1240f
                  bgeu         t1, a3, 1224f
                  andi         s0, s0, -1419
                  sltiu        s0, a1, 727
1224:             ori          t6, a6, -1698
1225:             ori          s8, t6, -1096
                  bltu         t4, t1, 1231f
                  sub          t0, ra, a6
                  blt          s10, t6, 1245f
1229:             sltu         ra, t4, s6
                  sra          s9, t0, tp
1231:             srai         t2, t4, 4
                  bltu         s8, s10, 1247f
                  slti         a7, zero, 1151
                  bge          s4, s5, 1248f
                  srai         a3, s5, 15
                  sltu         s10, t5, a3
                  bgeu         a6, tp, 1257f
                  srai         s5, a6, 11
                  add          a5, a3, s8
1240:             andi         s10, tp, -307
                  srl          t6, t0, gp
                  beq          tp, t2, 1253f
                  bne          a4, s5, 1252f
                  andi         a5, s0, -1552
1245:             srl          s8, t5, t3
                  andi         t2, t4, 649
1247:             blt          a4, t1, 1264f
1248:             srai         s3, s3, 21
                  nop
                  addi         sp, s0, 922
                  bne          s5, s10, 1269f
1252:             slt          t3, a3, t3
1253:             nop
                  bgeu         zero, a6, 1263f
                  blt          sp, a3, 1263f
                  lui          s6, 587343
1257:             blt          s2, t5, 1274f
                  bgeu         s5, s8, 1276f
                  bltu         s1, s10, 1260f
1260:             slli         t4, s11, 29
                  bltu         t4, a7, 1278f
                  sub          s8, s10, s2
1263:             slt          tp, s10, s1
1264:             srl          s3, t2, tp
                  slt          a3, s10, a1
                  xori         a6, a5, -127
                  andi         s3, a2, 782
                  andi         t0, a3, 1750
1269:             bltu         s4, t0, 1289f
                  xor          t5, gp, s7
                  sltiu        t0, t6, 1843
                  xori         a1, tp, 62
                  bltu         t6, s0, 1285f
1274:             sra          s10, a4, a4
                  nop
1276:             auipc        t5, 283312
                  srl          ra, a3, a0
1278:             andi         s5, s8, -498
                  srli         a7, sp, 15
                  slti         s0, s9, -879
                  auipc        s10, 725776
                  bgeu         t5, a5, 1286f
                  lui          a5, 530692
                  add          a2, tp, a6
1285:             ori          a2, s9, 1837
1286:             bgeu         s4, zero, 1292f
                  sltu         sp, a2, s10
                  srli         t0, t5, 27
1289:             nop
                  ori          ra, s4, 795
                  sub          t6, t2, s3
1292:             xori         s8, t6, 1595
                  bne          a7, tp, 1313f
                  slli         s0, gp, 19
                  xor          t0, s8, t1
                  and          s5, a4, s1
                  add          s8, ra, gp
                  sltu         gp, s1, tp
                  slli         zero, zero, 24
                  bltu         s2, a1, 1320f
                  bne          gp, t4, 1318f
                  andi         t6, a4, -527
                  slli         a4, ra, 19
                  blt          t5, s7, 1323f
                  srai         s4, s1, 24
                  bge          t6, s10, 1322f
                  sll          s4, t1, tp
                  srl          s3, a4, a1
                  and          t5, gp, t4
                  ori          t2, a1, -1374
                  sra          a3, a0, s11
                  bge          t2, t2, 1317f
1313:             xor          ra, zero, gp
                  lui          t1, 505947
                  sltu         s4, t6, t4
                  andi         s5, s5, 1263
1317:             sub          s9, a7, t6
1318:             bltu         t2, s8, 1321f
                  sub          s3, s8, t4
1320:             sub          t6, s11, t0
1321:             or           a7, s10, s9
1322:             blt          s0, s9, 1333f
1323:             blt          a5, t5, 1338f
                  srli         ra, t6, 3
                  lui          t5, 525067
                  add          t3, a0, s10
                  addi         s4, s6, -106
                  slt          s7, tp, s9
                  sltu         s5, a1, s3
                  bgeu         gp, t1, 1345f
                  blt          t2, a5, 1349f
                  sll          s8, a4, s0
1333:             sll          s4, t0, s4
                  lui          s9, 989668
                  slti         a3, s7, 195
                  sub          a3, s0, s5
                  and          s5, s10, t3
1338:             bltu         t5, s0, 1352f
                  bgeu         gp, s4, 1358f
                  beq          t0, s4, 1341f
1341:             bgeu         a3, t2, 1349f
                  sltu         t6, s1, zero
                  addi         a4, a1, 635
                  bne          a3, s8, 1355f
1345:             sub          a2, s1, s0
                  la           s3, region_0+1567 #start riscv_load_store_rand_instr_stream_4
                  slli         t3, s11, 29
                  sb           zero, 2(s3)
                  sub          sp, s3, a7
                  sh           s6, -25(s3)
                  sb           t0, 16(s3)
                  sw           s7, -15(s3)
                  sw           s3, 21(s3)
                  sb           t6, 1(s3)
                  and          zero, s1, sp
                  add          s6, a4, a4
                  slt          s9, a5, sp
                  srli         a5, sp, 27
                  sb           t2, -48(s3)
                  sll          t5, t3, s4
                  ori          t0, s9, -29
                  lbu          s4, 50(s3)
                  sltu         s6, t0, s7
                  slt          s5, s3, s8
                  sltu         a1, t2, tp
                  sltu         a1, t2, zero
                  lb           a7, 51(s3)
                  and          t4, s0, t5
                  srli         s10, s7, 17
                  lb           s0, 35(s3)
                  srli         ra, ra, 18
                  addi         a3, s8, 1141
                  lb           t4, -56(s3)
                  srli         gp, a2, 18
                  srl          sp, tp, ra
                  and          tp, t0, s0
                  sb           s5, -24(s3)
                  sll          a7, s8, s1
                  sb           s10, 62(s3)
                  nop
                  srli         s8, tp, 7
                  andi         tp, t3, -1036
                  lbu          t1, -10(s3)
                  lb           s4, -50(s3)
                  sub          s6, s10, a3
                  sb           s0, 40(s3)
                  lh           a6, -5(s3)
                  lbu          zero, 31(s3)
                  sb           t2, 34(s3)
                  andi         sp, ra, -1017
                  andi         s5, a7, -461
                  lb           s10, -48(s3)
                  andi         s7, t5, -601
                  lbu          sp, 39(s3)
                  and          a7, t0, a7
                  lw           t3, -51(s3)
                  lb           a1, 34(s3)
                  auipc        ra, 55406
                  lb           tp, -37(s3) #end riscv_load_store_rand_instr_stream_4
                  bltu         t4, t2, 1352f
                  sltiu        s8, a0, 271
                  xori         ra, s1, -1853
1349:             sltiu        t0, s4, -1571
                  andi         a4, s10, -1612
                  sltu         s4, t2, a7
1352:             bne          s3, s11, 1366f
                  add          zero, t6, a1
                  srl          s3, t5, a7
1355:             addi         s9, a7, -522
                  slli         gp, t6, 19
                  srai         s4, a4, 26
1358:             sll          t5, t5, a7
                  auipc        a4, 477350
                  andi         a2, a2, 1037
                  beq          sp, a0, 1379f
                  sra          a5, zero, zero
                  sltu         t6, ra, s5
                  xori         a7, sp, 1246
                  bgeu         a5, a5, 1375f
1366:             bne          s11, a7, 1377f
                  sub          s1, t2, a0
                  srl          s1, s1, s5
                  sltu         a1, a0, s4
                  and          s3, s6, s5
                  bgeu         t1, s5, 1379f
                  or           t1, a5, t4
                  sll          a3, zero, t4
                  slt          s6, a4, t0
1375:             blt          zero, a7, 1393f
                  auipc        sp, 917994
1377:             srl          t1, a3, t2
                  slli         tp, t2, 1
1379:             bge          a6, zero, 1385f
                  nop
                  beq          a1, t6, 1396f
                  slt          s1, s4, t6
                  auipc        t6, 290690
                  sub          t5, t6, s3
1385:             blt          s6, s11, 1399f
                  bne          t3, a7, 1387f
1387:             and          s8, t3, t1
                  sll          sp, s8, s2
                  slti         s1, gp, -1896
                  srli         t2, a5, 22
                  beq          s9, sp, 1397f
                  xor          a6, a4, s2
1393:             sll          s1, s5, gp
                  auipc        s10, 52758
                  andi         ra, t4, 1113
1396:             beq          s8, a1, 1416f
1397:             bne          t1, a3, 1417f
                  bne          a1, s6, 1408f
1399:             bge          zero, s0, 1400f
1400:             sltiu        a7, zero, -252
                  add          s10, gp, t3
                  lui          s8, 754124
                  beq          sp, sp, 1421f
                  addi         s3, a3, -1163
                  or           tp, s8, a0
                  bgeu         tp, t1, 1410f
                  add          a2, t1, t3
1408:             add          a3, a3, zero
                  sltiu        a3, a3, -130
1410:             addi         s3, t5, -1294
                  or           ra, a4, t4
                  bltu         s0, a5, 1429f
                  sub          s3, ra, t4
                  srai         a6, a2, 3
                  add          sp, t2, s11
1416:             bltu         gp, s11, 1419f
1417:             and          a5, tp, a0
                  slti         zero, s9, 188
1419:             xori         a3, a0, 655
                  bgeu         a7, a3, 1439f
1421:             sltu         t0, a3, s5
                  blt          a5, a4, 1442f
                  beq          t6, t4, 1435f
                  or           sp, a5, a1
                  slt          t1, a1, s4
                  auipc        a7, 824095
                  sra          t5, a0, s4
                  sltu         sp, a2, a4
1429:             bltu         s9, t6, 1446f
                  sub          s7, s2, t5
                  slt          s6, s9, t1
                  xori         a5, s3, -338
                  beq          a0, t5, 1450f
                  slli         t3, a5, 2
1435:             auipc        a6, 147994
                  sub          s6, t5, s1
                  srai         s6, s7, 0
                  nop
1439:             or           t3, s1, zero
                  sltu         s6, ra, s3
                  bltu         a0, s2, 1449f
1442:             slti         gp, a5, 907
                  bne          s1, s9, 1459f
                  nop
                  bge          s2, t4, 1454f
1446:             addi         s6, t0, -1241
                  andi         t1, sp, 1533
                  slli         s1, t0, 27
1449:             ori          a5, t0, -1044
1450:             srl          zero, tp, a1
                  srl          a2, s9, s5
                  blt          a6, s0, 1467f
                  srli         t1, t4, 2
1454:             sra          t2, s2, sp
                  addi         t1, s3, 966
                  xori         a2, t6, -1381
                  andi         s9, s10, -393
                  sra          s4, s3, s8
1459:             bltu         s10, s8, 1464f
                  and          s1, a0, a7
                  and          a4, s5, a2
                  slt          a2, s2, t3
                  or           tp, s11, t6
1464:             and          s7, t3, s2
                  sltiu        a4, t5, 1084
                  bltu         a0, a1, 1485f
1467:             bltu         t1, t2, 1481f
                  slli         t0, s4, 18
                  ori          a6, t0, -1393
                  andi         s1, s4, 1823
                  or           t1, t0, a3
                  sltiu        t6, zero, -1896
                  sra          t3, s11, gp
                  slli         t0, a7, 27
                  slt          t6, t4, s9
                  lui          a1, 528985
                  and          s7, s6, a1
                  xor          a6, t0, s6
                  srli         sp, t0, 10
                  ori          sp, ra, -680
1481:             slli         t3, s7, 22
                  xor          a1, ra, s8
                  srl          a4, a2, s10
                  slti         s7, s6, 577
1485:             srai         s7, t0, 15
                  andi         a1, gp, -113
                  and          s7, s9, t3
                  auipc        a3, 459711
                  bne          s6, t3, 1500f
                  bgeu         s4, s7, 1508f
                  sltiu        s9, tp, 1627
                  slli         tp, s0, 27
                  bltu         s4, a1, 1511f
                  sltu         gp, a0, s3
                  sltiu        a1, s4, 948
                  blt          a4, t6, 1515f
                  and          a3, t2, s0
                  sll          a6, s4, t6
                  blt          t1, t6, 1511f
1500:             or           zero, s7, t4
                  sra          a7, s7, gp
                  addi         a5, tp, 1627
                  sub          s9, t2, s10
                  auipc        sp, 34341
                  bltu         t0, sp, 1514f
                  beq          s9, t6, 1517f
                  xori         s8, a2, 293
1508:             and          s0, s8, t0
                  blt          a2, a0, 1515f
                  auipc        t3, 920990
1511:             ori          a7, s7, 294
                  sll          t1, s4, s7
                  sub          s8, sp, a5
1514:             xor          a5, s6, sp
1515:             lui          a7, 410638
                  srli         s9, s1, 28
1517:             andi         s10, a0, 1310
                  xor          sp, s9, t1
                  sub          gp, a7, s5
                  add          a4, s5, a4
                  lui          t3, 938829
                  sll          a1, a7, sp
                  bne          s10, s10, 1541f
                  add          s1, a2, a1
                  slli         s6, t1, 19
                  bltu         t6, a1, 1534f
                  srai         s0, t0, 29
                  slti         s9, t3, -306
                  addi         t1, s9, -877
                  sll          gp, s5, sp
                  srai         sp, s4, 23
                  lui          t5, 430690
                  sltu         s1, s5, s2
1534:             sra          t6, tp, a0
                  bltu         a6, sp, 1552f
                  sltu         s3, s4, t5
                  srli         ra, s6, 14
                  sra          a6, zero, gp
                  ori          gp, s0, -1019
                  and          s10, a4, s6
1541:             lui          t0, 546525
                  bne          s1, s8, 1556f
                  lui          s5, 407595
                  srl          tp, t5, a2
                  srl          s6, s11, t2
                  bgeu         sp, a7, 1565f
                  bgeu         s5, a0, 1548f
1548:             bge          sp, t3, 1566f
                  andi         s4, s3, 991
                  slti         t3, t5, 1129
                  bne          t3, gp, 1566f
1552:             slti         s4, s8, -27
                  addi         zero, s6, -801
                  xori         s10, t2, 77
                  srl          a5, s9, s6
1556:             add          s3, tp, a4
                  sltu         sp, s6, a7
                  srai         s10, s8, 3
                  slli         a6, a1, 20
                  slti         s4, s1, -1491
                  slt          t1, s1, s0
                  srai         t0, t3, 10
                  srl          s5, s5, s7
                  srli         a1, gp, 3
1565:             srai         a2, tp, 20
1566:             addi         a1, tp, 1719
                  or           t3, zero, gp
                  nop
                  bltu         a0, s6, 1589f
                  nop
                  bgeu         a2, tp, 1574f
                  blt          s9, s5, 1573f
1573:             andi         zero, s10, 1355
1574:             addi         t0, a2, -1464
                  nop
                  andi         tp, a2, 232
                  bgeu         s8, s9, 1581f
                  nop
                  auipc        a4, 248570
                  andi         t4, gp, -85
1581:             nop
                  and          s0, s6, a2
                  slt          s10, gp, t4
                  nop
                  slt          t5, a7, t6
                  beq          ra, a7, 1592f
                  xori         s0, t5, -2031
                  lui          a2, 658710
1589:             addi         zero, s4, 2008
                  xor          s1, t2, a5
                  slti         s9, t3, -110
1592:             or           a4, a7, t2
                  sra          a3, zero, a6
                  bne          sp, s8, 1614f
                  sra          tp, t1, a1
                  ori          t2, a1, 1672
                  xor          t3, s11, t6
                  srl          t5, s4, t1
                  add          gp, s2, a2
                  and          a3, sp, t3
                  sra          a1, s10, zero
                  bge          t1, t6, 1607f
                  bge          t1, t6, 1623f
                  bne          s0, s8, 1612f
                  and          t0, s7, sp
                  beq          s0, a6, 1620f
1607:             or           t0, a3, a5
                  bltu         zero, s5, 1619f
                  xor          s7, t5, tp
                  auipc        s7, 37054
                  slli         s9, t1, 22
1612:             srai         s1, s0, 12
                  sltiu        t2, s7, 1002
1614:             add          t0, s8, a0
                  bgeu         s10, t6, 1632f
                  xor          s4, gp, s10
                  xori         a7, t4, -1472
                  srl          s4, t1, t5
1619:             addi         s1, s7, 780
1620:             srl          s6, tp, a3
                  slt          s3, t3, s2
                  sltiu        a2, a0, 1050
1623:             sltiu        s10, s9, -813
                  bne          s9, a7, 1639f
                  add          gp, a4, s11
                  xori         t5, a4, 1313
                  srli         s8, a4, 1
                  slt          zero, zero, a6
                  slt          a3, t6, s3
                  sltu         a2, t2, s4
                  blt          gp, s6, 1647f
1632:             bne          a6, s3, 1649f
                  beq          s7, t5, 1643f
                  or           t4, a2, s6
                  xori         zero, a0, 1762
                  blt          t0, s5, 1647f
                  bltu         s8, t3, 1641f
                  ori          ra, t5, -1395
1639:             sltu         a3, t3, s10
                  sub          sp, s9, a7
1641:             addi         t6, a5, -1788
                  addi         gp, s1, 1689
1643:             bne          s0, s4, 1659f
                  slt          a7, tp, s9
                  slti         zero, t4, 1904
                  sra          s6, a6, t6
1647:             sra          s8, a3, s7
                  lui          gp, 343483
1649:             and          a6, sp, s10
                  bgeu         s4, t6, 1667f
                  sltiu        t6, s0, 1611
                  slti         a4, a2, 710
                  xor          t1, zero, s11
                  addi         t2, t2, 276
                  sltu         t4, t2, a3
                  srli         s3, s2, 12
                  sll          t0, zero, t5
                  nop
1659:             bltu         s11, s4, 1678f
                  xori         gp, s2, -1971
                  nop
                  lui          a4, 861399
                  bne          t4, s4, 1664f
1664:             bge          s7, a4, 1684f
                  or           tp, s11, a3
                  nop
1667:             sltiu        s6, sp, 874
                  sltu         a4, s5, zero
                  and          s9, t2, t0
                  auipc        gp, 956058
                  addi         sp, t4, -1085
                  srli         t4, a7, 1
                  sub          t5, a0, a7
                  addi         a2, a0, 1176
                  beq          s5, s4, 1693f
                  ori          ra, s0, -1908
                  slti         s4, t0, -1176
1678:             or           t6, a7, s9
                  ori          t2, s11, -966
                  bltu         s9, t1, 1690f
                  sll          t5, s2, a7
                  sltiu        s8, s4, 238
                  bgeu         s2, a3, 1700f
1684:             auipc        s7, 1020990
                  slti         a7, sp, -1109
                  sra          t2, t3, s11
                  ori          s6, a4, -1530
                  addi         s7, s5, -1410
                  sltiu        s0, a2, -616
1690:             ori          s5, a2, -1510
                  slt          s9, t0, ra
                  sll          t5, s4, s3
1693:             sub          a4, s0, a1
                  bne          a4, s0, 1713f
                  addi         s9, a6, 1744
                  bne          t2, a3, 1702f
                  bltu         t5, t2, 1714f
                  bltu         a6, t4, 1718f
                  xor          s3, t2, s4
1700:             nop
                  auipc        sp, 780943
1702:             bgeu         a1, zero, 1711f
                  srai         gp, s5, 0
                  sltu         s8, s3, s9
                  or           t2, s9, s2
                  or           s5, a5, a4
                  bltu         a3, a6, 1719f
                  bne          t6, t2, 1714f
                  sub          gp, t2, s6
                  beq          s11, s10, 1719f
1711:             bge          sp, tp, 1719f
                  bge          tp, t6, 1719f
1713:             addi         a3, s10, -738
1714:             sltiu        s0, s4, 1965
                  or           ra, a6, t1
                  nop
                  sra          a5, s7, s7
1718:             sub          tp, s3, tp
1719:             slti         t6, s0, 1674
                  xor          gp, a5, t5
                  auipc        ra, 76795
                  ori          t3, t0, 1451
                  lw           s0, 4(s2)
                  nop
                  xor          a1, s0, t1
                  srli         s8, t4, 2
                  srai         t0, s1, 22
                  lui          s3, 618833
                  addi         s2, s2, 16
                  sra          t0, s7, s8
                  srai         s3, a1, 20
2256:             addi x24, x8, 0
2256:             jalr x24, x24, 0
sub_2:            lui          sp, 915167
                  xori         sp, a4, 369
                  addi         s2, s2, -8
                  srli         a7, a2, 26
                  srl          a5, s8, t6
                  sw           s0, 4(s2)
                  sll          t0, zero, a0
                  la           a6, region_0+1128 #start riscv_load_store_rand_instr_stream_1
                  lui          a7, 928488
                  add          a2, s2, a7
                  sb           t0, -50(a6)
                  slt          a1, t3, ra
                  lbu          sp, 3(a6)
                  sb           sp, -39(a6)
                  sb           t4, 51(a6)
                  lb           t4, 41(a6)
                  slli         a4, s6, 12
                  addi         a3, a4, 1199
                  lb           s10, -51(a6)
                  auipc        t4, 74823
                  sh           s1, -20(a6)
                  sltu         s5, sp, s7
                  and          t6, t2, zero
                  lh           a5, 48(a6)
                  lbu          s6, -55(a6)
                  add          zero, s8, s0
                  srl          tp, s9, s2
                  sra          s10, a5, a0
                  lui          a7, 50590
                  sra          zero, s6, t0
                  lh           sp, -56(a6)
                  lbu          a1, -61(a6)
                  srli         a2, s2, 16
                  sra          t2, tp, s6
                  nop
                  srai         a4, t2, 15
                  sub          a2, s0, s8
                  lbu          t2, -20(a6)
                  srl          gp, t2, s0
                  srai         s8, zero, 6
                  lb           gp, -14(a6)
                  sh           a2, 20(a6)
                  lbu          s7, 24(a6)
                  sltu         t4, tp, a0
                  lbu          t5, 21(a6)
                  srl          a1, a6, a3
                  nop
                  sh           s10, -64(a6)
                  sll          a5, s11, tp
                  and          s4, gp, s1
                  lb           ra, 24(a6)
                  lbu          s1, 59(a6)
                  auipc        t5, 582226
                  lb           s0, -53(a6)
                  lui          s10, 27419
                  lb           s8, 35(a6) #end riscv_load_store_rand_instr_stream_1
                  la           t4, region_0+1771 #start riscv_load_store_rand_instr_stream_0
                  andi         a4, a1, 291
                  slli         a4, s8, 1
                  srli         s6, t2, 24
                  lbu          t0, 120(t4)
                  slt          t5, ra, t5
                  lbu          zero, -5(t4)
                  or           ra, a0, s8
                  lbu          a5, -18(t4)
                  lw           t5, 149(t4)
                  and          t6, s3, t0
                  lbu          a3, 54(t4)
                  sub          s5, t4, s0
                  lb           a4, -144(t4)
                  lui          a3, 482915
                  lhu          a2, 117(t4)
                  lb           a7, 204(t4)
                  slli         t0, t3, 28
                  sll          s5, s0, s3
                  slt          a5, tp, s0
                  slt          a3, gp, t2
                  srli         s9, s4, 6
                  lbu          t5, 68(t4)
                  sll          s9, s6, t4
                  sll          a2, t3, a3
                  sltiu        t0, s1, 983
                  sltiu        a7, t4, 1163
                  slli         a4, s4, 16
                  and          s3, a7, s1
                  sb           a1, 54(t4) #end riscv_load_store_rand_instr_stream_0
                  la           a7, region_1+1631 #start riscv_load_store_rand_instr_stream_2
                  sh           ra, 9(a7)
                  add          sp, s3, s3
                  lui          s5, 663935
                  slli         t1, t6, 16
                  andi         a2, s4, 1397
                  sh           gp, -61(a7)
                  sll          s3, gp, a1
                  sb           t1, -12(a7)
                  sll          s0, s1, s8
                  lw           s7, -35(a7)
                  sb           a1, -54(a7)
                  slli         s1, a2, 13
                  sltu         t3, a7, s10
                  sb           s2, -62(a7)
                  sb           s2, -14(a7)
                  lb           sp, 63(a7)
                  sll          s5, s2, s5
                  lb           t5, 49(a7)
                  sb           a3, -55(a7)
                  lui          a3, 479928
                  xori         s10, s8, 996
                  lb           s4, 19(a7)
                  sub          zero, t1, a4
                  addi         ra, s0, 1824
                  lb           a5, 38(a7)
                  add          t1, s4, s10
                  lh           t4, 35(a7)
                  lb           zero, -27(a7)
                  sb           t0, -26(a7)
                  sltiu        t1, gp, 1392
                  lb           t6, 23(a7)
                  andi         gp, a7, -1093
                  slt          s6, s1, ra
                  or           a5, t5, a6
                  sb           s7, 19(a7)
                  sltu         a1, s0, sp
                  lhu          s7, 7(a7)
                  add          t2, zero, t6
                  lbu          s0, -50(a7)
                  sh           a3, -19(a7)
                  or           s4, a1, t4
                  lbu          a1, 2(a7)
                  ori          tp, a5, -115
                  lbu          ra, 57(a7)
                  slti         t6, s4, 164
                  add          t5, zero, gp
                  sll          t0, s1, a5
                  ori          s10, t0, 858
                  lb           ra, -34(a7) #end riscv_load_store_rand_instr_stream_2
                  ori          s5, a5, 1267
                  andi         s7, s2, -1018
                  xori         t2, t1, -1435
                  xor          s9, s2, a0
                  sltu         a4, s4, s2
                  srli         s6, t5, 1
                  sltu         t2, t5, s0
                  slli         t1, a7, 5
                  bne          s8, s6, 27f
                  xori         s3, s2, -2011
                  blt          a1, t0, 30f
                  auipc        sp, 640323
                  auipc        sp, 747565
                  auipc        t1, 1016237
                  srli         a4, a5, 20
                  srl          s7, s10, a5
                  srli         s4, sp, 9
                  srl          t3, s0, s10
                  bltu         s3, s10, 33f
                  xor          a4, a2, a7
                  sltu         a6, gp, a2
                  lui          s5, 236446
                  bgeu         a6, s0, 37f
                  slli         t4, s8, 27
                  sub          a2, a3, s7
                  sub          s3, sp, a0
                  ori          s0, sp, -947
27:               slti         a4, s7, 577
                  srli         s7, a3, 21
                  bne          s2, s3, 46f
30:               addi         t5, a1, -1035
                  sub          s7, t4, s3
                  sra          t1, t5, a1
33:               nop
                  sll          t5, s8, s4
                  addi         s9, a6, -2018
                  and          t5, a3, t6
37:               nop
                  slti         a4, s9, 1189
                  slti         s7, a4, 80
                  bne          s6, a7, 50f
                  slli         t4, t5, 0
                  ori          a3, a1, -1440
                  or           t3, s10, a3
                  sub          t5, a0, a0
                  and          a3, t3, s5
46:               lui          s8, 718954
                  sra          a4, s11, s5
                  sll          gp, a1, s7
                  or           a4, s10, t5
50:               or           t1, sp, s10
                  slt          s8, s11, s3
                  sltiu        s8, t2, -253
                  andi         a2, a1, -15
                  sltu         s10, s3, t3
                  xor          s6, t3, a4
                  beq          s1, s8, 62f
                  srli         ra, a5, 13
                  xor          s3, t4, t4
                  blt          s7, s0, 79f
                  xori         s8, a4, 1086
                  ori          s1, t0, 20
62:               bltu         s5, s2, 63f
63:               beq          a0, t5, 81f
                  add          s10, a4, a4
                  sll          gp, t2, a6
                  or           s6, a6, gp
                  sll          t5, s10, a3
                  beq          s3, t2, 78f
                  slti         t2, s3, 421
                  ori          t4, a0, 1506
                  addi         t3, s1, -268
                  addi         ra, gp, 1451
                  or           s0, s0, t2
                  add          s1, s3, s4
                  bne          t1, a2, 88f
                  and          t1, a6, s3
                  xor          a7, a1, s3
78:               bne          tp, t3, 94f
79:               sll          s8, tp, gp
                  bgeu         tp, gp, 96f
81:               ori          a3, t2, 5
                  slti         t0, s10, 174
                  slli         a7, a1, 29
                  xor          sp, a0, t3
                  srl          s3, a0, t6
                  srai         t3, a4, 26
                  sltiu        s8, s11, 57
88:               or           t0, s10, t4
                  srli         t1, s4, 9
                  beq          t2, s7, 102f
                  or           t6, t0, t0
                  ori          t5, ra, 637
                  srli         a1, t2, 23
94:               andi         a3, t5, 1336
                  srli         s7, s10, 14
96:               bge          a3, tp, 97f
97:               ori          zero, t2, 176
                  blt          a6, s11, 107f
                  bge          ra, s11, 105f
                  blt          s3, t0, 102f
                  andi         s7, t5, -1856
102:              and          a3, s2, s6
                  slli         s5, a6, 9
                  srai         t6, a5, 16
105:              addi         s10, s1, -1938
                  add          t2, a2, s10
107:              srl          zero, s9, t4
                  beq          ra, sp, 111f
                  srai         gp, s11, 7
                  and          s1, t0, ra
111:              sll          t5, t5, a4
                  add          t4, sp, zero
                  bge          s11, s1, 115f
                  blt          t5, t5, 127f
115:              srli         t4, t5, 13
                  auipc        a3, 255200
                  sra          s4, s1, s7
                  addi         t4, zero, 788
                  sltu         t2, s2, t5
                  bltu         t4, t4, 123f
                  blt          gp, a3, 140f
                  bltu         t1, a1, 139f
123:              xor          a3, t4, a6
                  auipc        gp, 450172
                  lui          a5, 61607
                  or           s10, sp, a5
127:              sltu         a6, ra, s6
                  sra          s4, a2, s5
                  auipc        t5, 911465
                  xori         a5, a4, -329
                  slli         s8, a2, 22
                  srl          s8, t6, a1
                  slli         s10, s9, 13
                  xori         zero, s10, -789
                  srai         s9, s1, 11
                  bgeu         a0, s5, 141f
                  addi         tp, s9, 1121
                  bge          t0, t2, 143f
139:              srai         sp, s4, 29
140:              xor          a3, t0, ra
141:              blt          t3, s1, 154f
                  srl          sp, sp, t6
143:              sltu         t1, zero, a5
                  slt          a7, s10, t6
                  sltu         s7, s3, a1
                  bge          s5, a1, 162f
                  andi         s3, s8, -978
                  sub          t6, s7, s3
                  andi         s6, a4, 82
                  bne          t4, a5, 160f
                  slt          t3, s0, ra
                  or           t4, s3, s0
                  bgeu         t0, a6, 172f
154:              bne          s5, s11, 167f
                  slli         s4, t6, 23
                  ori          t6, s1, -1594
                  sltiu        t5, a6, 50
                  bne          t0, t0, 163f
                  slti         sp, t4, -1580
160:              bne          s8, a7, 170f
                  beq          t1, a5, 164f
162:              xori         s0, t5, -1519
163:              bltu         t3, a0, 178f
164:              sltiu        a1, t0, 2046
                  bltu         s8, zero, 185f
                  nop
167:              auipc        t2, 585353
                  slt          s6, a6, a7
                  sll          a7, t2, sp
170:              andi         gp, sp, 762
                  slt          s4, s10, t5
172:              ori          gp, s9, -1770
                  xori         s0, s5, -1791
                  addi         s6, t2, -82
                  add          s8, s11, a1
                  add          a7, gp, s10
                  lui          t5, 319009
178:              slli         tp, t2, 18
                  slt          s6, ra, t3
                  and          t4, s1, a7
                  sra          t5, s6, s0
                  beq          s4, a3, 183f
183:              blt          s5, a2, 199f
                  auipc        a4, 967817
185:              ori          a4, t1, 859
                  addi         t4, s6, -621
                  bgeu         s11, t2, 207f
                  sltiu        s0, a3, -413
                  srl          ra, s5, a5
                  slti         t1, a1, -1590
                  bne          a2, t1, 208f
                  srli         s7, a5, 12
                  srai         t4, a7, 0
                  bgeu         t5, gp, 213f
                  bgeu         a7, s3, 197f
                  srli         a4, s11, 31
197:              addi         s6, t5, -1800
                  slt          a7, t6, a7
199:              auipc        s5, 994776
                  auipc        tp, 286373
                  xori         s3, t2, 1290
                  auipc        a3, 194035
                  blt          a1, s5, 221f
                  sra          gp, s10, s11
                  blt          gp, a5, 215f
                  beq          s10, s7, 207f
207:              and          s10, s1, t5
208:              andi         a6, zero, 1750
                  sltu         s9, t2, s4
                  xor          s4, t1, a2
                  srl          t6, a0, sp
                  sll          t0, a6, a1
213:              lui          a2, 416707
                  srl          a2, a2, s10
215:              beq          a2, s7, 227f
                  sra          t5, t4, a0
                  addi         t0, t4, -1390
                  bne          zero, s5, 224f
                  and          t4, s2, s10
                  slli         zero, s0, 18
221:              srai         s7, s5, 1
                  slt          s10, tp, t4
                  lui          s1, 410822
224:              bne          t0, t6, 241f
                  slt          a4, a0, s8
                  sltiu        tp, s11, 405
227:              andi         s8, a3, -603
                  xor          s0, s2, a1
                  nop
                  sra          a4, t6, a1
                  bgeu         t4, s3, 244f
                  and          t5, s2, t0
                  srai         a4, gp, 0
                  slti         t6, t4, -1000
                  xor          t3, s4, s10
                  sra          a4, s8, t3
                  xor          s3, t2, s3
                  slt          s7, tp, gp
                  slti         a6, s2, -169
                  sra          a6, s0, s3
241:              or           s6, a5, t2
                  bge          sp, tp, 257f
                  andi         s3, s6, -1029
244:              add          a5, zero, t6
                  andi         tp, a2, -25
                  slli         a5, a6, 7
                  add          a3, a4, s2
                  slt          s0, t4, s2
                  xori         a3, s5, 657
                  lui          s3, 979134
                  slli         t6, gp, 24
                  sltu         a3, a0, s0
                  bge          s5, s7, 255f
                  andi         a4, t3, -469
255:              slli         s0, t0, 6
                  slt          a4, s3, a6
257:              sll          t6, t2, a2
                  srai         t1, ra, 13
                  auipc        s10, 872921
                  lui          t4, 780251
                  xori         s0, t4, 685
                  lui          s6, 1008141
                  add          s8, tp, s3
                  slti         a3, s7, -139
                  bge          s4, a6, 281f
                  xor          t6, s2, s0
                  sub          s10, a3, s2
                  la           tp, sub_4
                  add          s6, ra, s0
                  addi         t3, a6, -1022
                  sltu         a3, t2, s6
                  sll          a7, a0, ra
                  addi         tp, tp, -857
                  sltu         t5, a2, t4
                  srli         s7, s1, 11
                  bge          s2, a5, sub_2_j5 #branch to jump instr
                  ori          s1, a1, 42
                  add          t5, t0, a1
                  xori         s5, s2, 1097
sub_2_j5:         jalr         s0, tp, 858 #jump sub_2 -> sub_4
                  sltu         a1, s11, a5
                  nop
                  sub          t0, t6, t0
                  beq          tp, s11, 277f
                  or           a5, ra, t2
                  auipc        s4, 998246
                  sll          s10, s2, a3
                  bge          a3, s9, 280f
                  beq          t6, a4, 289f
277:              addi         t3, a4, 935
                  beq          s11, s1, 294f
                  lui          t1, 947685
280:              sltu         s4, a5, a2
281:              beq          a3, a4, 284f
                  bne          sp, a6, 292f
                  srli         s0, s0, 4
284:              srai         s4, s0, 25
                  blt          s10, t0, 294f
                  bgeu         s6, s7, 292f
                  sltiu        s9, s11, -1948
                  bltu         t4, tp, 301f
289:              slti         t0, s3, -955
                  bge          s11, s6, 308f
                  srli         a1, s4, 9
292:              auipc        s7, 396980
                  sltiu        a2, s6, 1297
294:              auipc        s9, 365754
                  blt          a5, a2, 300f
                  bge          t0, a0, 299f
                  xor          a5, a7, s10
                  bge          s10, s7, 318f
299:              sll          a6, t6, t3
300:              bne          s2, s1, 315f
301:              xori         zero, t4, -381
                  srl          gp, s3, a6
                  sltiu        s7, s5, 313
                  sltiu        a1, t1, 1956
                  add          t0, sp, t6
                  andi         t0, s8, 1750
                  sll          a1, s8, t4
308:              add          tp, s3, a5
                  or           a5, a2, s5
                  sltu         gp, tp, s2
                  xori         t2, s4, -164
                  lui          s4, 983977
                  sll          t1, ra, t4
                  srli         t1, a0, 7
315:              nop
                  slli         a2, t6, 31
                  slt          s5, s8, sp
318:              sll          ra, gp, s11
                  slli         t0, s11, 21
                  srli         a5, t2, 16
                  xori         s6, gp, -479
                  ori          s6, a7, -1390
                  bne          t1, s2, 333f
                  srai         t5, sp, 17
                  srl          a3, gp, a7
                  sltu         s3, a6, a0
                  slt          s9, a2, s11
                  slt          s6, a0, gp
                  xor          s7, ra, a7
                  slli         ra, s6, 15
                  sra          a7, s8, a2
                  lui          s3, 881473
333:              bge          s6, a7, 339f
                  addi         a7, t5, 12
                  sltiu        s8, s9, 257
                  sltiu        gp, s1, -779
                  xori         s4, s3, -369
                  sltiu        s5, gp, 466
339:              slti         t5, zero, -1057
                  bltu         s7, s5, 345f
                  sltiu        zero, s8, -1436
                  bltu         s9, a4, 343f
343:              sltu         s6, s5, t5
                  sltiu        zero, s7, -47
345:              bltu         s11, t1, 355f
                  beq          s4, s11, 361f
                  addi         gp, a1, -1912
                  blt          a2, s3, 364f
                  bge          t6, t1, 368f
                  or           tp, s7, t1
                  bgeu         s1, a4, 368f
                  sll          t6, ra, t3
                  slti         s3, a3, 344
                  sltiu        a1, gp, -920
355:              sltiu        t1, a4, 694
                  andi         a1, a5, -505
                  bge          a1, s1, 360f
                  srli         t6, s10, 29
                  bgeu         s4, s0, 368f
360:              add          a2, sp, s10
361:              bge          s10, s2, 374f
                  srl          s10, a1, t5
                  lui          s9, 218646
364:              sltiu        t6, a5, 488
                  blt          a6, s11, 377f
                  auipc        s6, 316406
                  srli         tp, a2, 16
368:              or           s9, sp, a2
                  srai         a3, t1, 27
                  or           s0, s7, s4
                  nop
                  beq          s10, tp, 389f
                  sltu         sp, s5, a1
374:              xor          s7, t1, s10
                  xor          s0, a0, s5
                  sra          ra, s9, t2
377:              slt          t3, a2, a0
                  sltiu        s0, tp, 1082
                  bne          s5, s8, 395f
                  bne          a3, s2, 396f
                  srl          s0, a0, s6
                  beq          a1, t6, 384f
                  and          a1, a0, gp
384:              sub          gp, s4, s10
                  ori          s10, s11, -728
                  andi         ra, a2, -460
                  slti         ra, ra, 616
                  bne          t6, a5, 408f
389:              sll          s3, s6, s1
                  and          a1, t3, t5
                  beq          a1, a0, 393f
                  auipc        ra, 645601
393:              blt          t3, s4, 412f
                  sra          s8, a5, t2
395:              auipc        t4, 861326
396:              or           s5, s0, s6
                  sll          s8, s11, t0
                  or           a7, a4, a5
                  or           t3, t2, sp
                  andi         t6, s8, -1195
                  xor          s0, t6, a7
                  lui          sp, 183819
                  sub          a4, s4, s2
                  slti         a2, t6, 589
                  addi         gp, s11, 1243
                  srai         s3, tp, 26
                  xori         s4, s7, -256
408:              srli         a7, s0, 3
                  and          a6, tp, s1
                  beq          t1, a2, 420f
                  bltu         s7, s5, 412f
412:              bgeu         a0, s2, 425f
                  auipc        t0, 1039467
                  srli         s7, s5, 1
                  add          a1, gp, t5
                  nop
                  blt          s2, s10, 426f
                  andi         t0, a3, 1148
                  bge          s2, s10, 429f
420:              bltu         t0, ra, 433f
                  addi         t4, s7, 419
                  xori         s4, a0, 560
                  bge          s7, s8, 426f
                  sltu         s8, s2, s2
425:              sltiu        t3, s6, 1635
426:              slt          a2, a2, sp
                  slli         s7, s6, 4
                  bgeu         s1, a1, 438f
                  la           gp, region_1+1966 #start riscv_load_store_rand_instr_stream_3
                  lbu          t1, -115(gp)
                  and          t6, s0, s7
                  sltu         a6, s1, t0
                  srli         a2, t4, 1
                  slt          t0, a5, a5
                  lb           a2, -19(gp)
                  lbu          s7, -71(gp)
                  lbu          t5, -169(gp)
                  sb           ra, -29(gp)
                  lh           t1, -4(gp)
                  lb           t3, -35(gp)
                  andi         sp, a4, -1667
                  sltu         a5, a7, s8
                  lb           s0, -173(gp)
                  sb           s9, -73(gp)
                  ori          a6, tp, -2035
                  sb           t2, -241(gp)
                  sltu         a7, s10, gp
                  sb           a5, -43(gp)
                  lhu          t3, -4(gp)
                  slt          sp, s8, a3
                  lh           t1, -104(gp)
                  ori          t5, s0, 1645
                  auipc        s10, 553730
                  addi         t0, s4, 1541
                  ori          t1, a3, -274
                  sb           a7, -87(gp)
                  xor          t0, t6, t3
                  addi         s0, a4, 6
                  andi         ra, a5, -1969
                  sb           s5, -249(gp)
                  slt          ra, s3, s7
                  lb           s6, -103(gp)
                  xor          s6, zero, ra
                  sub          t4, s9, tp
                  andi         a1, s3, -1767
                  lb           a5, -41(gp)
                  lb           t0, -33(gp)
                  lbu          s7, 27(gp)
                  sb           t0, -37(gp)
                  lh           s3, -2(gp)
                  addi         s10, a3, -893
                  sltu         t2, t2, s8
                  sh           a1, -102(gp)
                  add          s0, s11, a2
                  ori          s4, s9, 919
                  lh           s8, -36(gp)
                  xor          t4, a5, s5
                  nop
                  sra          a1, t0, a5
                  sb           s2, -60(gp)
                  add          a7, a0, t6
                  lbu          a4, 11(gp)
                  lw           s0, -178(gp)
                  sra          tp, s2, a6
                  slli         s3, s3, 12
                  lbu          s10, -5(gp) #end riscv_load_store_rand_instr_stream_3
429:              srli         s1, a6, 10
                  ori          s1, s8, 425
                  sub          sp, a6, a3
                  blt          a7, s9, 448f
433:              sltiu        sp, sp, -41
                  sltu         ra, a5, t2
                  sltiu        t3, a4, -1371
                  xor          a1, a0, t0
                  xor          s4, gp, a6
438:              add          s1, s6, ra
                  slt          a3, t5, t2
                  lui          a7, 971271
                  sltu         s4, a2, a6
                  auipc        t5, 923741
                  sra          a1, zero, s3
                  bgeu         s1, s0, 449f
                  bge          a6, s1, 450f
                  sltu         t3, s4, gp
                  bgeu         ra, s7, 465f
448:              lui          s3, 608204
449:              ori          tp, a2, 1373
450:              sltiu        ra, s11, -481
                  bge          a7, a5, 464f
                  srli         s3, a1, 27
                  bgeu         a1, t4, 472f
                  addi         zero, t2, -410
                  srai         t3, s7, 24
                  srl          gp, t6, s3
                  xori         t6, s8, -1153
                  bgeu         a7, t1, 474f
                  or           s8, t0, a4
                  srli         s3, a2, 31
                  addi         t1, zero, 2004
                  sll          t2, a4, t5
                  or           t3, s2, s7
464:              blt          s5, a3, 479f
465:              xor          t0, s5, s8
                  sra          ra, s1, t5
                  sra          s1, t3, ra
                  sll          a1, s5, zero
                  bltu         s1, sp, 479f
                  or           s1, t3, s2
                  beq          s7, t0, 491f
472:              srl          a4, zero, a2
                  blt          a4, a2, 490f
474:              sra          t3, a1, t2
                  slli         t2, a4, 28
                  srli         zero, s3, 28
                  srl          s9, tp, s2
                  beq          s11, tp, 497f
479:              andi         a1, s10, -1756
                  srl          ra, s1, t5
                  xor          t2, s2, t2
                  slti         s6, t3, 1884
                  bgeu         s0, sp, 486f
                  auipc        a4, 710503
                  bne          s11, s5, 501f
486:              lui          t1, 891056
                  sll          a2, s1, a3
                  bgeu         s4, zero, 494f
                  sltiu        a6, t3, 1712
490:              srli         t4, gp, 26
491:              sra          tp, t4, t1
                  addi         tp, s1, 1174
                  bltu         t1, t6, 510f
494:              xori         ra, a0, 248
                  or           t5, s10, sp
                  xor          a7, a4, tp
497:              and          t4, gp, s0
                  bne          a2, t4, sub_2_j6 #branch to jump instr
                  slti         t6, zero, -52
                  sltu         t2, t3, gp
                  srli         t1, a5, 30
                  xori         zero, a3, -749
                  xori         t2, s1, -1352
                  lui          s5, 126869
                  xori         a5, tp, 1088
sub_2_j6:         jal          s0, sub_3 #jump sub_2 -> sub_3
                  srl          a5, s8, a0
                  bne          ra, s9, 501f
                  bne          t4, t4, 502f
501:              sub          ra, a7, sp
502:              sltiu        zero, s11, -221
                  sub          s10, t5, s1
                  slt          a5, t0, t0
                  bltu         t6, sp, 506f
506:              beq          tp, t0, 507f
507:              andi         t0, t2, 298
                  slti         ra, s6, -1750
                  bge          s7, s9, 510f
510:              auipc        t3, 552779
                  lw           s0, 4(s2)
                  sll          s5, s3, t2
                  addi         s2, s2, 8
                  addi         a2, a5, -95
                  add          a5, t4, s9
                  srli         s8, ra, 21
                  and          a7, a1, a2
734:              addi x6, x8, 1
734:              jalr x6, x6, 0
sub_6:            or           a5, s6, s8
                  nop
                  addi         s2, s2, -12
                  sw           s0, 4(s2)
                  srli         ra, a6, 11
                  lui          a1, 354970
                  or           zero, t4, zero
                  auipc        t0, 531924
                  sltu         a6, a1, s8
                  srl          t1, s10, a4
                  andi         zero, a1, 1848
                  nop
                  auipc        t6, 1025866
                  nop
sub_6_j9:         jal          s0, sub_9 #jump sub_6 -> sub_9
                  lui          s7, 648047
                  auipc        t6, 261136
                  auipc        s4, 902773
                  slt          s5, tp, s0
                  slti         sp, gp, 1018
                  slt          t3, t6, s3
                  sltu         a4, a4, s6
sub_6_j10:        jal          s0, sub_7 #jump sub_6 -> sub_7
                  slt          s7, s8, s1
                  srl          a1, t2, t6
                  andi         s9, t2, -1157
                  andi         t4, a1, 1837
                  slli         s6, sp, 24
                  la           s4, sub_8
                  auipc        a6, 430889
                  addi         s4, s4, -723
                  slt          a3, t6, s8
                  sltiu        s10, ra, 1832
                  bge          a5, t6, sub_6_j11 #branch to jump instr
                  slli         s7, t2, 16
sub_6_j11:        jalr         s0, s4, 724 #jump sub_6 -> sub_8
                  xori         sp, a0, 50
                  and          t2, sp, s7
                  slti         s4, a5, -231
                  andi         s8, t1, -588
                  sub          s8, gp, s6
                  sltiu        tp, a2, 347
                  auipc        t6, 1044623
                  sltu         a2, t4, s1
                  or           s5, s2, t4
                  auipc        a1, 150203
                  srli         t6, s4, 3
                  addi         a5, a1, 837
                  lw           s0, 4(s2)
                  lui          s7, 288106
                  addi         s2, s2, 12
                  andi         a6, a6, 1693
                  slt          s8, s11, s0
                  srl          t0, s3, s3
                  srli         gp, a3, 12
55:               addi x26, x8, 1
55:               jalr x26, x26, 0
sub_8:            auipc        sp, 356472
                  slli         s3, ra, 19
                  beq          zero, a0, sub_8_stack_p
                  sub          a2, s9, s3
                  srai         a7, s7, 28
                  sll          s3, t5, a5
                  sltu         zero, s5, a3
sub_8_stack_p:    addi         s2, s2, -24
                  auipc        t0, 809409
                  xor          t0, t1, a4
                  sw           s0, 4(s2)
                  or           s10, t5, s7
                  add          sp, t3, s2
                  sltiu        t6, a1, 1349
                  blt          a1, s5, 12f
                  addi         a6, t2, -887
                  xor          zero, t6, s1
                  andi         s5, t4, -734
                  blt          t1, a6, 21f
                  bne          s9, a4, 21f
                  sub          tp, ra, t0
                  or           s7, t0, t2
                  nop
                  and          sp, a2, s0
                  blt          a2, t0, 31f
12:               bge          s2, s1, 18f
                  or           t3, s3, tp
                  or           s10, a0, tp
                  nop
                  bgeu         sp, ra, 28f
                  beq          a0, t3, 18f
18:               sll          s1, s5, t4
                  srai         s4, a5, 14
                  or           a1, s8, t0
21:               slt          s6, a3, s6
                  auipc        sp, 965410
                  or           a2, a2, s2
                  srl          sp, s8, s4
                  srai         a5, s8, 2
                  beq          gp, t0, 45f
                  lui          ra, 616360
28:               slt          s5, s5, a3
                  sub          t0, s0, a6
                  srl          s1, a2, t4
31:               srl          a1, s7, s10
                  addi         s10, s4, -1212
                  bltu         s1, s6, 43f
                  or           t5, a6, tp
                  bge          t5, s8, 51f
                  srli         a6, a2, 1
                  sub          s9, a0, t1
                  sub          zero, t2, t0
                  nop
                  andi         s5, s4, 41
                  sltu         s6, gp, s5
                  sub          zero, a1, tp
43:               blt          a3, s2, 53f
                  bne          s0, s1, 60f
45:               addi         s0, t6, -1702
                  andi         a7, a4, 1064
                  sra          t2, a6, a4
                  slli         t6, gp, 1
                  sltiu        a3, s3, -1852
                  beq          t6, s2, 60f
51:               nop
                  xor          sp, s6, s5
53:               xor          a7, tp, a3
                  bge          t3, s1, 60f
                  bltu         sp, t2, 60f
                  bltu         s1, s9, 60f
                  bgeu         s2, t3, 60f
                  or           s4, t2, a7
                  blt          zero, tp, 60f
60:               srl          s8, t1, zero
                  srli         gp, s0, 11
                  or           s3, s9, a6
                  lw           s0, 4(s2)
                  srli         t0, t4, 14
                  add          t4, s10, ra
                  ori          zero, t1, 351
                  addi         s2, s2, 24
                  sub          a6, a3, s10
                  or           s5, sp, s0
                  ori          a1, t5, -557
84:               addi x3, x8, 0
84:               jalr x3, x3, 0
sub_7:            srai         s3, s0, 28
                  sll          t2, a4, s0
                  bgeu         s7, ra, sub_7_stack_p
sub_7_stack_p:    addi         s2, s2, -36
                  addi         s9, a6, -1238
                  sw           s0, 4(s2)
                  xori         t4, ra, -1477
                  or           s9, a5, s8
                  la           s10, sub_10
                  xori         s4, t3, -1612
                  sltiu        t3, s2, -1084
                  addi         s10, s10, 711
                  srl          t6, a5, t2
                  sub          t3, a0, a2
                  beq          a3, sp, sub_7_j12 #branch to jump instr
                  sltu         a7, s0, s8
                  slt          gp, a1, s10
sub_7_j12:        jalr         s0, s10, -710 #jump sub_7 -> sub_10
                  slt          t5, t3, t3
                  lui          gp, 405696
                  sltu         a3, zero, t6
                  xor          t0, a5, s2
                  srli         s5, t0, 16
                  srai         tp, s1, 15
                  bltu         s9, a7, 8f
                  auipc        a7, 222364
8:                ori          a1, gp, 2031
                  and          a5, a7, s9
                  sra          s3, t6, a3
                  lw           s0, 4(s2)
                  sub          a4, a6, a4
                  srl          t6, s5, a7
                  auipc        t2, 395583
                  and          zero, s0, t2
                  or           t5, s11, s6
                  addi         s2, s2, 36
                  ori          a6, s1, -301
                  or           t6, t3, s0
                  slli         s9, s2, 31
39:               addi x8, x8, 0
39:               jalr x8, x8, 0
sub_9:            lui          s1, 687819
                  add          s4, t1, zero
                  auipc        s9, 785003
                  slt          a1, a2, s2
                  bge          s4, s7, sub_9_stack_p
                  lui          t2, 376274
                  nop
sub_9_stack_p:    addi         s2, s2, -48
                  slti         t2, zero, 1043
                  slt          ra, s11, s1
                  sw           s0, 4(s2)
                  nop
                  slt          s8, t5, t0
                  sra          s3, sp, s3
                  sub          zero, s4, s6
                  sra          s4, t6, s6
                  bltu         t2, a1, sub_9_j13 #branch to jump instr
                  srai         t0, s0, 16
                  sll          a3, t4, s7
                  srai         a3, s6, 25
                  sub          t2, a5, t2
                  srai         a3, s4, 26
sub_9_j13:        jal          s0, sub_10 #jump sub_9 -> sub_10
                  blt          a6, s10, 9f
                  beq          sp, t2, 8f
                  xori         zero, sp, -453
                  lui          s3, 452288
                  lui          t0, 929982
                  auipc        a4, 900052
                  bne          s8, s1, 15f
                  srli         s0, sp, 15
8:                sltu         s3, s10, a1
9:                ori          t4, a3, -653
                  and          a5, s1, a7
                  bge          t2, sp, 15f
                  andi         a1, s10, -1896
                  bne          s5, a3, 19f
                  and          s5, a1, tp
15:               bne          s2, gp, 19f
                  or           tp, s9, a6
                  and          a3, s9, s8
                  lui          t5, 1022064
19:               or           s3, a6, s10
                  sub          zero, a0, a6
                  srai         t2, s11, 11
                  lw           s0, 4(s2)
                  xor          s10, t3, a0
                  andi         s8, t3, 1813
                  sll          a7, a0, gp
                  addi         s2, s2, 48
                  sltu         a2, s6, a7
                  addi         s5, s0, 1027
                  ori          t1, s0, 349
53:               addi x14, x8, 0
53:               jalr x14, x14, 0
sub_1:            blt          s5, t5, sub_1_stack_p
                  add          t3, s11, zero
sub_1_stack_p:    addi         s2, s2, -60
                  xor          tp, t5, a6
                  sw           s0, 4(s2)
                  slti         t2, ra, 1269
                  slt          s5, gp, a2
                  la           a2, sub_2
                  xor          a7, s5, t6
                  sll          sp, zero, ra
                  slti         s10, t0, -1001
                  addi         a2, a2, 484
                  auipc        gp, 1037926
                  slti         t6, t3, 1139
                  xor          t0, a7, t3
                  bgeu         s2, t1, sub_1_j4 #branch to jump instr
                  and          t4, s10, s8
sub_1_j4:         jalr         s0, a2, -483 #jump sub_1 -> sub_2
                  blt          gp, s6, 1f
1:                srai         s3, zero, 15
                  sltiu        s0, s8, -1724
                  blt          sp, a0, 11f
                  bgeu         s2, a7, 24f
                  auipc        a7, 830357
                  slti         t4, s2, 1224
                  xor          t0, a5, t2
                  andi         a2, s8, 914
                  andi         t0, a0, -959
                  sub          a7, s1, a3
11:               ori          t2, sp, 1019
                  sll          t4, t1, s1
                  slt          a4, s10, s1
                  nop
                  ori          a4, s9, 455
                  slt          s10, s8, a3
                  addi         a4, s6, 1940
                  la           a4, sub_2
                  slti         a5, t5, -1159
                  addi         a4, a4, -277
                  srli         a7, t5, 9
                  andi         s7, a5, -1372
                  sub          t5, s2, tp
                  and          s5, a6, s4
                  or           s1, t2, a1
                  xori         zero, s3, -1560
                  xori         sp, t4, 1409
                  slli         s5, s0, 9
                  or           s7, t6, s3
sub_1_j3:         jalr         s0, a4, 278 #jump sub_1 -> sub_2
                  xori         a1, sp, -807
                  addi         tp, a7, -1350
                  srai         t0, s0, 27
                  srai         sp, a3, 17
                  lui          a3, 990505
                  srli         a3, ra, 28
24:               sub          a7, a5, a1
                  or           t6, s10, s5
                  beq          t5, t3, 28f
                  or           a7, t0, a7
28:               sra          s9, a0, s4
                  srli         s10, s9, 30
                  beq          t0, t5, 38f
                  add          s5, a6, s9
                  nop
                  xor          s8, s2, s5
                  bne          a2, s4, 40f
                  sll          t0, zero, a3
                  xori         s4, t5, -917
                  sltiu        a6, t2, -896
38:               beq          ra, a5, 40f
                  sub          s3, s9, s5
40:               or           a6, t0, ra
                  srl          s3, a1, a2
                  lw           s0, 4(s2)
                  addi         s2, s2, 60
                  sll          t1, zero, gp
                  nop
                  add          a2, s8, t2
78:               addi x15, x8, 1
78:               jalr x15, x15, 0
sub_5:            addi         s2, s2, -28
                  and          a6, t0, s3
                  sub          tp, tp, a0
                  xori         a6, s3, -1355
                  sll          s7, t3, zero
                  sw           s0, 4(s2)
                  andi         s5, t4, -638
                  la           sp, region_1+433 #start riscv_load_store_rand_instr_stream_16
                  xor          t5, s2, a1
                  nop
                  lb           s10, 775(sp)
                  lb           a6, -255(sp)
                  lbu          t4, 1007(sp)
                  xor          s3, a3, zero
                  slt          a2, s3, a4
                  sh           a0, -31(sp)
                  slli         ra, a7, 21
                  srl          a4, t3, a7
                  and          s8, t3, a4
                  sub          s0, s6, s10
                  nop
                  slt          a6, s8, s11
                  sub          t1, zero, t4
                  lh           s3, 87(sp)
                  ori          s3, a4, -397
                  lb           s4, 1101(sp)
                  addi         a5, s3, 1895
                  or           s10, a3, t3
                  srai         a5, s5, 21
                  lb           a6, 1530(sp)
                  sll          s9, a1, a0
                  srl          a2, a5, a5
                  sltu         tp, a2, gp
                  sll          s1, s8, a4
                  srli         s4, t2, 30
                  lui          zero, 570865
                  slti         t0, zero, 1740
                  sll          t4, ra, t4
                  srl          t6, s9, a6
                  addi         t0, a3, 1765
                  lb           s7, -22(sp)
                  lb           t5, -72(sp)
                  ori          t1, a4, 507
                  lb           gp, 13(sp) #end riscv_load_store_rand_instr_stream_16
                  la           a2, region_0+236 #start riscv_load_store_rand_instr_stream_5
                  slti         t4, tp, 1484
                  sw           a4, 16(a2)
                  lh           s4, 6(a2)
                  addi         s6, s7, -2025
                  xor          s9, a0, t4
                  auipc        t6, 809520
                  addi         sp, a4, -2018
                  sb           t1, -13(a2)
                  lb           gp, -6(a2)
                  lhu          a6, 6(a2)
                  lbu          a7, -13(a2)
                  sb           a2, 0(a2)
                  nop
                  lb           t3, -1(a2)
                  lbu          t4, 7(a2)
                  lb           s7, -14(a2)
                  sltiu        t1, s6, -1677
                  auipc        s10, 1029520
                  auipc        s4, 1009232
                  lui          a3, 342449
                  nop
                  xori         a3, a4, 975
                  lh           a3, -6(a2)
                  nop
                  lbu          a3, -11(a2)
                  or           s7, t2, s10
                  addi         t4, ra, 659
                  sb           t0, -1(a2)
                  nop
                  sb           s7, -9(a2)
                  add          t3, a3, s6
                  sb           s8, 10(a2)
                  lh           a5, 10(a2)
                  lui          a5, 478016
                  lbu          a5, -11(a2)
                  xori         t6, s7, -184
                  slti         t2, ra, -60
                  xor          t3, s4, a0
                  xor          s7, t0, ra
                  sb           a0, -1(a2)
                  ori          a7, sp, -92
                  lbu          zero, -13(a2) #end riscv_load_store_rand_instr_stream_5
                  la           sp, region_1+1086 #start riscv_load_store_rand_instr_stream_0
                  lbu          s8, -211(sp)
                  lbu          t1, -3(sp)
                  sw           a3, -114(sp)
                  andi         t3, t6, 1300
                  srl          t0, s1, s7
                  lbu          gp, -25(sp)
                  srli         s10, a4, 20
                  ori          s5, s2, 379
                  lb           t5, -192(sp)
                  lb           tp, -68(sp)
                  xori         a6, a4, -780
                  lh           ra, -184(sp)
                  lbu          a5, -196(sp)
                  srai         t4, gp, 3
                  sh           a5, 86(sp)
                  lb           a3, -150(sp)
                  addi         s7, s8, -588
                  sltiu        s3, s5, -621
                  lb           t3, -63(sp)
                  xor          gp, s4, s8
                  lbu          s0, -113(sp)
                  lui          s10, 973929
                  sw           s11, -86(sp)
                  sw           a6, 250(sp)
                  lw           s3, 34(sp)
                  sh           s10, -50(sp)
                  lh           a2, 226(sp)
                  lbu          s10, -129(sp)
                  sb           s1, -3(sp)
                  sll          s5, s7, t4
                  sub          t3, s7, s9
                  lui          t3, 690388
                  lb           zero, -20(sp)
                  lui          s8, 385439
                  lbu          a3, -111(sp)
                  sra          a4, t5, s0
                  lb           t5, 25(sp)
                  lhu          ra, 20(sp)
                  and          a2, s6, sp
                  lbu          a2, 166(sp)
                  addi         t1, t2, 1085
                  lb           t4, -117(sp)
                  lb           ra, 233(sp)
                  lb           t4, 107(sp)
                  ori          a5, s5, -1638
                  lb           a1, 199(sp)
                  nop
                  lbu          a4, 185(sp)
                  ori          t2, sp, 629
                  lw           s5, -106(sp) #end riscv_load_store_rand_instr_stream_0
                  la           s10, region_1+1142 #start riscv_load_store_rand_instr_stream_4
                  slti         a5, s6, 234
                  lhu          s8, 216(s10)
                  lbu          s6, 77(s10)
                  sb           t2, -58(s10)
                  xori         t3, gp, -305
                  lb           sp, -243(s10)
                  lbu          t2, 101(s10)
                  lb           a1, -203(s10)
                  sra          t4, s10, zero
                  slti         s3, s3, 42
                  lbu          t0, -15(s10)
                  xori         s5, t3, 908
                  sw           gp, -90(s10)
                  lh           zero, 6(s10)
                  sb           s9, 188(s10)
                  add          zero, t6, s6
                  lhu          a1, -150(s10)
                  sub          t1, s4, t0
                  sub          a6, t3, a7
                  sh           a5, -124(s10)
                  lb           a3, -92(s10)
                  xori         s6, s9, 1634
                  lb           tp, 181(s10)
                  sh           t1, -152(s10)
                  sb           a6, -8(s10)
                  lh           ra, 154(s10)
                  sra          s5, a0, s7
                  or           t5, a7, gp
                  sll          a4, s1, s9
                  lbu          s3, -173(s10)
                  sltiu        a3, a1, 437
                  addi         t3, sp, -1001
                  sb           a6, 207(s10)
                  add          t0, t6, s1
                  sltiu        a6, tp, 639
                  andi         s7, t5, 91
                  sb           s6, 202(s10)
                  sb           a5, 103(s10)
                  lhu          a3, -44(s10)
                  lbu          a5, -116(s10)
                  xor          tp, t1, s4
                  lhu          t3, -212(s10)
                  lb           a5, -71(s10)
                  lb           t4, -184(s10) #end riscv_load_store_rand_instr_stream_4
                  la           s3, region_1+1785 #start riscv_load_store_rand_instr_stream_3
                  lb           s10, -130(s3)
                  lb           zero, 111(s3)
                  auipc        s6, 762089
                  lb           ra, 188(s3)
                  lh           sp, 3(s3)
                  sb           a0, 148(s3)
                  slli         s6, t0, 29
                  srl          t6, s3, s7
                  or           t1, a1, t5
                  lui          t2, 586659
                  sb           s0, 119(s3)
                  sll          t2, a2, s9
                  auipc        s7, 356302
                  and          sp, s2, a7
                  nop
                  lbu          s9, -62(s3)
                  lbu          gp, 198(s3)
                  add          sp, t4, s4
                  slti         a5, a2, 714
                  lb           sp, 213(s3)
                  sll          s8, s2, t6
                  srli         t2, s9, 11
                  add          s10, s2, a1
                  srl          t4, t4, s2
                  lui          a7, 221493
                  xori         gp, sp, 1927
                  lhu          s8, 71(s3)
                  sb           s9, 24(s3)
                  sb           t3, -93(s3)
                  auipc        t2, 678309
                  sltiu        s9, s1, -1978
                  sb           t0, 158(s3)
                  or           t2, t1, sp
                  slt          s10, tp, t6
                  and          s5, a3, t3
                  lbu          a2, -256(s3) #end riscv_load_store_rand_instr_stream_3
                  la           gp, region_1+588 #start riscv_load_store_rand_instr_stream_7
                  sub          s0, s1, a4
                  srl          t0, s2, a2
                  sb           s9, -5(gp)
                  sb           s8, -15(gp)
                  lh           t3, 12(gp)
                  lh           a3, 6(gp)
                  srli         t3, a0, 27
                  sw           s5, -4(gp)
                  srli         a7, s3, 2
                  lbu          s1, -1(gp)
                  lh           s3, -14(gp)
                  lbu          ra, 6(gp)
                  slli         a4, sp, 29
                  auipc        t5, 1043638
                  lb           zero, 9(gp)
                  srli         zero, a5, 30
                  lh           s9, 16(gp)
                  lb           s0, -4(gp)
                  add          s3, ra, zero
                  lhu          t3, 12(gp)
                  ori          s0, ra, 1278
                  sll          t5, s11, a6
                  sltu         tp, s6, gp
                  slt          s0, a1, t4
                  srli         s5, t1, 29
                  nop
                  sra          s4, a4, ra
                  lbu          t4, -1(gp)
                  sw           s3, -12(gp)
                  lb           s3, 11(gp)
                  lb           tp, 16(gp)
                  sb           gp, 16(gp)
                  lui          tp, 253678
                  lbu          zero, -13(gp) #end riscv_load_store_rand_instr_stream_7
                  la           sp, region_1+682 #start riscv_load_store_rand_instr_stream_1
                  lbu          tp, 1083(sp)
                  sh           a4, 1284(sp)
                  lw           t1, 1158(sp)
                  lb           t6, -553(sp)
                  sh           a3, 1230(sp)
                  lhu          s3, 952(sp)
                  sub          t5, a3, a3
                  lb           t5, -87(sp)
                  srli         a1, s3, 14
                  xor          t6, t3, s5
                  lb           t4, 758(sp)
                  lh           s8, 608(sp)
                  lb           zero, 377(sp)
                  lbu          s0, -28(sp)
                  srai         s3, t1, 25
                  auipc        s8, 437612
                  lb           s0, 603(sp)
                  lbu          a7, -641(sp)
                  lbu          s6, 1259(sp)
                  lbu          a1, -91(sp)
                  sb           t0, -601(sp)
                  sb           s4, -341(sp)
                  sb           gp, 767(sp)
                  nop
                  nop
                  sra          s7, sp, s10
                  sw           gp, -186(sp)
                  sra          t6, s11, a5
                  add          a4, t6, s8
                  lbu          s6, -557(sp)
                  lb           s4, -572(sp)
                  lb           t1, 987(sp)
                  nop
                  and          gp, s9, t6
                  lb           s10, 800(sp)
                  lh           s7, 930(sp)
                  sb           t3, -460(sp)
                  sltu         a2, s1, t0
                  lb           a5, 1241(sp) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_1+958 #start riscv_load_store_rand_instr_stream_11
                  xori         ra, s10, -755
                  sh           a7, 64(sp)
                  lhu          ra, -10(sp)
                  lhu          t5, 30(sp)
                  and          t4, s6, gp
                  slli         s9, a1, 5
                  lbu          s8, 59(sp)
                  lb           a2, 45(sp)
                  lhu          s5, 14(sp)
                  andi         s3, a3, -496
                  lbu          s10, -33(sp)
                  lbu          s3, -59(sp)
                  slti         zero, s6, -726
                  lbu          gp, 30(sp)
                  and          s10, gp, ra
                  lbu          s9, -31(sp)
                  lbu          s6, 6(sp)
                  sb           s7, 35(sp)
                  sb           s0, -23(sp)
                  lb           t5, 40(sp)
                  lbu          s10, 43(sp)
                  add          a6, a6, a1
                  lb           a5, 60(sp)
                  lb           a4, -21(sp)
                  sb           s5, 7(sp)
                  lbu          a7, -63(sp)
                  slti         t3, s2, 731
                  lbu          a1, 13(sp)
                  lb           a1, -18(sp)
                  lui          s0, 991366
                  xori         a1, s6, 209
                  sb           a3, -25(sp)
                  lh           s4, 44(sp)
                  lb           t3, -11(sp)
                  sb           a7, -45(sp)
                  add          s8, s2, s5
                  xori         a5, t2, -1527
                  andi         a1, t6, 1909
                  sb           s5, -38(sp)
                  lw           a3, 18(sp)
                  lbu          ra, 32(sp)
                  sb           t5, 41(sp)
                  lb           a6, 5(sp) #end riscv_load_store_rand_instr_stream_11
                  la           t0, region_1+304 #start riscv_load_store_rand_instr_stream_15
                  lh           tp, 318(t0)
                  lbu          s7, 1195(t0)
                  and          s8, t2, s7
                  lb           zero, 935(t0)
                  sb           s10, 657(t0)
                  lbu          s8, 1189(t0)
                  lhu          gp, 1674(t0)
                  or           ra, sp, s8
                  sltu         a7, s4, a2
                  lbu          s10, 1331(t0)
                  add          s6, ra, t2
                  sb           a5, 1570(t0)
                  sb           a1, 1111(t0)
                  lb           a4, 879(t0)
                  or           t3, a5, gp
                  slt          s10, sp, a7
                  sb           t2, 1077(t0)
                  addi         t5, s1, 965
                  andi         a1, t5, -19
                  xori         s3, a2, 1421
                  srli         sp, t6, 30
                  lhu          s10, 118(t0) #end riscv_load_store_rand_instr_stream_15
                  la           s8, region_1+410 #start riscv_load_store_rand_instr_stream_8
                  slt          t1, t1, a2
                  addi         tp, s3, -644
                  slli         s0, tp, 14
                  lb           a4, 737(s8)
                  sub          a2, t5, a7
                  lb           tp, -331(s8)
                  sb           ra, -351(s8)
                  lb           s5, 1231(s8)
                  xor          tp, ra, a7
                  srai         s6, a6, 13
                  lui          s3, 181887
                  lb           zero, 601(s8)
                  lb           a6, 985(s8)
                  auipc        t5, 990715
                  xori         gp, s2, 1626
                  lw           t6, 518(s8)
                  lbu          sp, -377(s8)
                  srai         a6, s2, 2
                  sll          s10, s3, a4
                  slli         a7, a3, 8
                  lbu          a3, -345(s8)
                  sub          t4, s7, a7
                  auipc        zero, 272722
                  lhu          s0, 368(s8)
                  sb           a2, -51(s8)
                  slt          a3, s7, t4
                  lui          a6, 297831
                  ori          s1, tp, -520
                  lb           s7, 1299(s8)
                  xori         a1, t2, -611
                  lb           a2, 1054(s8)
                  srl          t4, ra, s11
                  lb           s4, 359(s8)
                  sb           s11, 548(s8)
                  lbu          t6, 469(s8)
                  sltu         sp, tp, s0
                  auipc        t1, 646487
                  lh           s10, 624(s8)
                  lw           t3, 542(s8)
                  addi         tp, s8, -722
                  slt          a3, s9, s10
                  sb           s9, -71(s8)
                  lbu          s0, 1075(s8)
                  lb           s5, 1539(s8) #end riscv_load_store_rand_instr_stream_8
                  la           s6, region_0+1078 #start riscv_load_store_rand_instr_stream_9
                  sra          s5, t3, s6
                  slli         ra, zero, 16
                  sltiu        s4, t0, -1962
                  sb           s11, -325(s6)
                  xor          s7, s0, s10
                  lb           a4, -788(s6)
                  ori          s4, s3, 2002
                  lbu          tp, -495(s6)
                  lh           t0, -258(s6)
                  sb           a2, -1069(s6)
                  sb           a4, -468(s6)
                  xori         s3, a2, 99
                  lh           t6, 422(s6)
                  andi         a1, s2, -613
                  lbu          tp, 17(s6)
                  auipc        a4, 625721
                  lbu          a5, -104(s6)
                  lbu          a6, 393(s6)
                  sb           t2, -705(s6)
                  ori          s10, t4, -720
                  lbu          t1, -317(s6)
                  lbu          s7, 898(s6)
                  sh           s3, -524(s6)
                  lb           t6, 88(s6)
                  lbu          a7, 725(s6)
                  lui          t0, 480430
                  lbu          a6, 811(s6)
                  add          t5, s10, a6
                  sltiu        gp, ra, 671
                  srl          tp, s2, s2
                  srai         t6, a5, 5
                  lbu          t1, 97(s6)
                  lbu          s8, 288(s6)
                  slti         s3, a3, 1520
                  lb           a5, -223(s6)
                  slli         t3, t6, 10
                  lbu          t3, -527(s6) #end riscv_load_store_rand_instr_stream_9
                  la           t4, region_1+680 #start riscv_load_store_rand_instr_stream_2
                  lhu          s3, -30(t4)
                  lh           s10, 24(t4)
                  sb           a4, 33(t4)
                  lb           t5, 33(t4)
                  sb           s4, -36(t4)
                  srai         sp, s3, 28
                  slli         a5, t3, 28
                  lb           tp, 7(t4)
                  srli         s1, gp, 29
                  auipc        a3, 435208
                  lb           a1, -4(t4)
                  and          s6, s2, t6
                  lbu          gp, -45(t4)
                  lbu          zero, 14(t4)
                  sb           sp, 37(t4)
                  sh           s4, -62(t4)
                  slli         a3, s7, 0
                  lb           t5, -48(t4)
                  sll          zero, s2, t0
                  slli         s0, s1, 28
                  nop
                  lbu          a2, 19(t4)
                  srl          t6, s11, a4
                  andi         a3, a7, 1740
                  sra          t6, gp, s6
                  lhu          a3, 10(t4)
                  andi         s8, s5, -1229
                  lbu          s1, -22(t4)
                  lbu          s6, 10(t4)
                  andi         a3, s10, 933
                  auipc        ra, 805422
                  lbu          s5, -19(t4)
                  slti         t6, s11, -1635
                  sw           s8, -16(t4)
                  sb           a5, -17(t4)
                  sra          sp, s9, tp
                  srl          t0, s3, s8
                  auipc        s6, 711845
                  lb           s9, 41(t4)
                  and          a6, t4, a2
                  lbu          s5, -9(t4)
                  lb           s7, -41(t4)
                  sra          t2, t1, t1
                  add          gp, s9, a0
                  sll          s6, s9, ra
                  lb           s7, -49(t4)
                  slti         t2, a1, -1941
                  srli         sp, s3, 26
                  sh           t3, -10(t4)
                  sb           s6, -57(t4)
                  lbu          a7, 29(t4)
                  sb           s11, 51(t4)
                  lui          a1, 857483
                  lbu          s9, 13(t4) #end riscv_load_store_rand_instr_stream_2
                  la           a2, region_1+1995 #start riscv_load_store_rand_instr_stream_6
                  slli         s4, zero, 19
                  and          s3, s6, t1
                  sra          s1, s3, a7
                  sb           s11, -1188(a2)
                  auipc        t5, 822429
                  ori          s7, a2, 500
                  lb           ra, -1466(a2)
                  xori         s1, s4, -259
                  slli         a3, t4, 25
                  andi         s9, s0, 1411
                  and          a3, s0, s5
                  srl          a3, s6, s6
                  sb           s7, -934(a2)
                  sub          t1, s6, s4
                  lbu          a6, -1480(a2)
                  addi         a5, tp, -1347
                  lbu          a4, -1233(a2)
                  sra          t1, s11, t6
                  slti         a7, s3, -1946
                  add          t0, s1, tp
                  auipc        t0, 702487
                  add          t0, s3, a5
                  slti         s6, s6, -157
                  add          a6, s9, zero
                  lbu          s4, -1702(a2)
                  slti         t6, s0, 1117
                  sra          s3, s8, a4
                  lb           s1, -281(a2)
                  or           zero, sp, zero
                  lbu          t5, -556(a2)
                  lbu          t3, -1240(a2)
                  sb           t3, -956(a2)
                  slti         a6, t1, 945
                  lw           a7, -1027(a2)
                  lb           t6, -1738(a2)
                  lb           a1, -994(a2)
                  add          s7, s5, a0
                  lui          s1, 820189
                  slt          sp, t1, s6
                  lb           s5, -501(a2) #end riscv_load_store_rand_instr_stream_6
                  beq          a1, a4, 20f
                  slti         s3, s0, 34
                  xori         a5, s9, 1404
                  slt          t4, a1, s10
                  slti         zero, s11, 509
                  blt          t5, zero, 15f
                  and          s8, s5, a6
                  bgeu         a0, t0, 8f
8:                xori         s5, a0, 11
                  bltu         a7, a0, 26f
                  sltu         t0, a5, a4
                  add          tp, t4, t3
                  bne          gp, tp, 21f
                  beq          a6, tp, 20f
                  blt          a6, s2, 23f
15:               bge          a2, s7, 17f
                  srli         t1, s3, 17
17:               bltu         a0, s10, 35f
                  srl          t0, a6, s4
                  add          t1, t6, s0
20:               sub          s9, a3, s4
21:               ori          t6, a5, 1612
                  add          sp, s9, s0
23:               and          s10, a6, s0
                  andi         t3, s3, 292
                  sltu         t2, t0, t5
26:               blt          s1, a3, 34f
                  bge          ra, s6, 45f
                  addi         t6, a5, 732
                  xori         sp, s1, 52
                  sll          s8, s1, gp
                  bgeu         s6, sp, 41f
                  xor          s1, s5, zero
                  blt          zero, a2, 36f
34:               srl          s1, s6, s10
35:               sra          a2, s9, a1
36:               andi         s7, a1, 1871
                  xori         t5, s10, 963
                  andi         a6, a4, 81
                  slti         s3, s6, -1480
                  ori          s0, t1, 1123
41:               bltu         tp, s3, 58f
                  add          s9, ra, sp
                  bne          t5, a1, 51f
                  sll          s9, s1, a5
45:               slt          tp, s11, a5
                  andi         a2, zero, -1604
                  slli         a3, t4, 16
                  xor          sp, s8, t1
                  blt          s7, t0, 64f
                  blt          a1, gp, 53f
51:               blt          s0, s7, 53f
                  sra          s0, s11, sp
53:               sra          s6, s8, s6
                  sltiu        tp, gp, 202
                  bge          a4, t0, 75f
                  slli         s8, s0, 4
                  beq          s10, s6, 62f
58:               slti         s9, t3, -622
                  ori          sp, s7, 808
                  lui          s4, 298682
                  sub          s3, ra, a4
62:               lui          t1, 122301
                  nop
64:               srl          s9, t5, gp
                  slt          t4, s6, t5
                  srai         s8, s10, 20
                  or           s3, s1, s3
                  andi         s1, s2, -1493
                  andi         t2, gp, 291
                  or           s0, sp, t4
                  ori          tp, s6, -804
                  bne          s7, t4, 87f
                  srai         t2, s7, 26
                  srl          a6, zero, s7
75:               slli         a7, s5, 3
                  sll          a4, s3, s9
                  ori          zero, s8, 1271
                  bne          a1, zero, 82f
                  xor          t1, s0, tp
                  nop
                  slti         a2, t0, 845
82:               bge          s1, s1, 88f
                  srl          sp, s4, t5
                  addi         t2, zero, -1323
                  sltu         gp, s11, gp
                  nop
87:               srai         tp, s7, 8
88:               sra          t5, s0, a2
                  lui          s1, 205291
                  bltu         ra, t2, 106f
                  sra          s6, a6, gp
                  sub          t4, a2, a2
                  sra          s4, s3, t4
                  andi         t4, a4, 1130
                  bge          t3, s1, 100f
                  or           t3, s0, s11
                  sltu         tp, zero, zero
                  beq          a2, a6, 109f
                  bgeu         s3, t0, 105f
100:              andi         sp, t1, 83
                  sll          t1, s5, tp
                  bltu         s4, t0, 112f
                  sltu         tp, t6, s4
                  ori          s8, a7, -735
105:              xor          zero, a6, ra
106:              sub          t3, a2, s7
                  bne          gp, s2, 112f
                  sub          a2, s0, a3
109:              sltiu        a7, s7, -819
                  ori          ra, t1, 1676
                  sll          t1, a2, a6
112:              andi         sp, a0, -366
                  bge          s5, s1, 131f
                  slt          a1, sp, sp
                  lui          t2, 107326
                  and          gp, s5, s7
                  srai         a6, tp, 4
                  sub          t5, s7, ra
                  sub          t3, a6, a4
                  xor          t0, s9, s2
                  lui          t3, 478085
                  slti         s3, ra, 1839
                  xor          t2, gp, s4
                  add          t1, zero, s10
                  slt          a4, a1, a6
                  auipc        s1, 246099
                  or           t6, s6, s3
                  andi         t4, a0, 709
                  bgeu         gp, t2, 134f
                  bltu         a1, a7, 140f
131:              sltu         t3, a2, a1
                  slt          a4, s2, a3
                  bge          s4, s0, 137f
134:              lui          a4, 93699
                  srl          gp, s10, ra
                  slt          t5, a7, zero
137:              ori          s3, s1, 1374
                  srl          s0, s0, a4
                  auipc        s8, 11784
140:              add          s3, a4, a7
                  bge          a3, a1, 159f
                  sltu         t1, a2, t4
                  sub          a3, a1, s2
                  sltiu        s8, t1, 309
                  andi         gp, a3, -1818
                  xor          t2, s0, s5
                  slti         a4, s6, -835
                  sra          s4, s9, a3
                  bge          s8, t5, 157f
                  and          s8, s8, s7
                  add          s7, s2, a1
                  addi         s1, s6, -1169
                  lui          sp, 970971
                  slt          t4, t2, a5
                  slt          s8, t1, t1
                  nop
157:              srl          s9, t3, gp
                  sub          s9, s10, s2
159:              bne          s7, t2, 175f
                  srli         s9, s6, 24
                  sll          t2, s8, s0
                  bltu         s11, t5, 167f
                  xor          s1, s10, s2
                  blt          t1, a6, 181f
                  nop
                  bltu         s10, a7, 176f
167:              sll          t3, t1, t1
                  sltiu        t6, s10, 561
                  lui          s7, 175608
                  srli         t5, a2, 0
                  bge          s7, a6, 191f
                  bne          tp, t1, 192f
                  auipc        t6, 39780
                  bgeu         t4, t2, 183f
175:              slli         s8, s9, 7
176:              beq          s11, s8, 178f
                  addi         a7, s9, 340
178:              sll          a2, a4, t3
                  auipc        t4, 22159
                  srai         s0, a3, 7
181:              ori          t5, s3, -1662
                  ori          sp, s2, -812
183:              nop
                  xori         t1, s1, -170
                  blt          a0, t2, 200f
                  addi         t5, ra, -25
                  sra          t2, s1, s8
                  or           a7, s10, a3
                  srli         a5, a7, 1
                  bne          a7, s6, 192f
191:              bne          s6, t6, 208f
192:              sltiu        t0, t3, -1539
                  bltu         a3, s4, 203f
                  sltu         a6, t3, zero
                  bltu         a0, a6, 206f
                  andi         s1, ra, -1026
                  bltu         t6, a1, 202f
                  add          s1, s10, s11
                  beq          t6, s3, 206f
200:              slt          a2, a7, s0
                  slli         t1, t2, 3
202:              slli         s8, t0, 19
203:              add          a2, a1, t4
                  xor          t1, s9, t2
                  blt          s2, a5, 211f
206:              slli         a2, ra, 17
                  bge          s3, s8, 225f
208:              andi         zero, a7, 66
                  slti         a1, s1, 40
                  xor          t6, s1, a7
211:              and          a6, s7, a4
                  lui          tp, 631098
                  add          tp, a5, a5
                  beq          sp, tp, 220f
                  and          t4, s9, a6
                  xor          a7, t0, s3
                  lui          s10, 242779
                  sub          t3, a7, s3
                  slli         s5, t2, 23
220:              xori         t6, gp, -1942
                  slt          s9, sp, s4
                  slti         t1, t3, -1644
                  slti         s0, a5, 799
                  bltu         s4, a2, 227f
225:              sltiu        s5, a5, 521
                  lui          a4, 102236
227:              ori          ra, a2, 772
                  sub          t6, s8, t5
                  nop
                  xori         t1, a4, 112
                  slli         t3, a0, 0
                  sra          s8, tp, t1
                  add          s1, t5, s6
                  nop
                  auipc        s6, 116151
                  srli         a6, t5, 2
                  slt          s8, gp, a4
                  sra          ra, a3, s4
                  slli         t0, a7, 2
                  beq          s4, a5, 249f
                  xori         a2, t0, 1371
                  nop
                  auipc        s10, 175921
                  bge          a6, ra, 247f
                  or           gp, a3, sp
                  sra          s10, tp, s1
247:              sub          a2, s7, s0
                  sub          s6, t4, a6
249:              beq          a6, t4, 264f
                  srai         s6, a3, 23
                  and          a1, a2, s6
                  sltu         t0, t4, t6
                  ori          sp, t0, -251
                  or           a5, a6, t2
                  bgeu         t0, t5, 256f
256:              xor          s3, t4, a1
                  slti         a7, t3, 1101
                  and          t6, a5, zero
                  sltiu        t4, s6, -1888
                  sll          s8, s0, s5
                  bne          a3, a1, 269f
                  addi         t3, t1, 698
                  sra          s1, sp, s0
264:              beq          t6, s1, 282f
                  srai         s0, t6, 0
                  srl          gp, s11, t2
                  ori          s4, a5, -1441
                  bltu         s8, s5, 275f
269:              beq          zero, a5, 277f
                  srai         a4, s0, 10
                  slti         t4, t2, 285
                  slti         a3, s1, 990
                  beq          sp, s2, 278f
                  bge          a7, s10, 289f
275:              bltu         tp, s4, 291f
                  sltiu        zero, s6, 1706
277:              srl          gp, s2, s7
278:              lui          zero, 455254
                  beq          sp, t2, 299f
                  bgeu         t3, a2, 285f
                  bgeu         s11, a6, 282f
282:              xor          t1, a1, a6
                  sll          a4, s9, s9
                  and          a4, t2, a2
285:              nop
                  xor          s7, s10, t2
                  sra          a7, s1, s2
                  bltu         a7, tp, 306f
289:              srai         tp, s4, 30
                  addi         a5, zero, -414
291:              slti         s3, s11, -1750
                  bgeu         t1, t5, 300f
                  sltiu        s6, s10, 1823
                  sub          tp, s6, t0
                  xor          a5, ra, a3
                  beq          a6, sp, 302f
                  auipc        a6, 113290
                  bgeu         ra, s7, 307f
299:              andi         t1, s10, -1926
300:              sll          s5, t4, t3
                  sub          t6, a0, sp
302:              add          a5, s0, sp
                  sltiu        s8, s4, 1892
                  bne          s0, a6, 321f
                  sub          s6, t6, s9
306:              nop
307:              andi         a3, ra, -1653
                  xor          s5, s1, tp
                  xor          s5, s1, zero
                  srai         s6, a4, 31
                  srai         s9, a6, 21
                  sltu         ra, t4, s8
                  beq          s0, tp, 323f
                  slli         a2, a4, 6
                  add          a4, s10, s10
                  beq          a5, s4, 320f
                  beq          t1, s11, 335f
                  auipc        s4, 630091
                  or           t2, t2, t0
320:              add          s5, s1, s3
321:              srl          s7, s3, a2
                  lui          t0, 20925
323:              srl          a4, s8, s2
                  blt          ra, a6, 327f
                  lui          a6, 849498
                  slli         a2, s11, 27
327:              beq          a6, s5, 345f
                  xori         s5, a7, 28
                  addi         s7, s0, 1084
                  blt          s4, s0, 332f
                  srai         t2, a7, 12
332:              or           s10, s3, t1
                  sltiu        a5, s5, 779
                  bltu         gp, tp, 351f
335:              addi         s5, s5, 121
                  add          a6, s9, a6
                  and          t6, s9, t6
                  sll          t4, a7, t0
                  add          t4, s8, t0
                  beq          s2, s9, 351f
                  andi         t3, s10, 380
                  slt          tp, ra, a4
                  slli         t5, sp, 15
                  addi         a3, t4, 831
345:              xori         t2, s11, -1179
                  sll          a6, t5, s1
                  bne          s6, a5, 356f
                  lui          a4, 514984
                  add          s5, sp, s3
                  blt          zero, s0, 356f
351:              srli         a7, s11, 22
                  nop
                  nop
                  sll          t0, s1, s0
                  bne          tp, s2, 365f
356:              slt          t5, tp, zero
                  bgeu         t6, s2, 372f
                  nop
                  bgeu         s9, s1, 361f
                  auipc        zero, 472912
361:              and          s10, gp, s7
                  sra          s6, t2, s10
                  auipc        s7, 265513
                  bgeu         s6, s5, 367f
365:              nop
                  sltiu        a6, t1, -1817
367:              slti         a6, s3, -307
                  sltu         s6, sp, s4
                  sll          s3, a0, t2
                  ori          s9, s10, 1456
                  sub          s1, a3, s8
372:              sub          a6, t6, tp
                  sll          s0, s10, s10
                  xor          sp, a7, s11
                  nop
                  auipc        t6, 970763
                  bge          t1, s9, 382f
                  bge          t2, a0, 388f
                  sra          s9, a7, a6
                  ori          t2, tp, 415
                  nop
382:              sll          a2, t0, zero
                  sltu         a5, a3, a4
                  bge          a2, t5, 404f
                  add          s8, tp, zero
                  bne          a6, sp, 401f
                  slt          a5, s2, s2
388:              bne          a2, t0, 392f
                  sltiu        s9, a5, 1995
                  bge          t5, tp, 407f
                  auipc        a7, 707768
392:              andi         t2, s1, -684
                  bgeu         s4, a1, 409f
                  bne          a4, s2, 411f
                  slt          s4, ra, s6
                  srli         t1, s0, 25
                  slli         t3, s3, 5
                  slt          a7, s8, a7
                  lui          s8, 784054
                  srli         t6, gp, 31
401:              bne          t5, a1, 407f
                  srli         gp, a0, 17
                  ori          t1, a3, -521
404:              auipc        a7, 553426
                  xori         s3, a5, -1813
                  xori         a4, a7, -444
407:              slli         s6, s6, 9
                  sll          s1, a3, zero
409:              blt          t3, s9, 418f
                  sltiu        s8, s1, 1256
411:              slt          sp, s3, t6
                  slt          t5, ra, a7
                  sub          s9, t6, s5
                  and          a5, a3, t6
                  sub          t3, s4, s10
                  sll          s7, s9, tp
                  bltu         a0, s5, 427f
418:              bne          t1, t2, 428f
                  or           t0, s6, t0
                  srai         t2, t5, 9
                  bltu         tp, sp, 436f
                  beq          a6, a4, 440f
                  addi         t1, a5, 342
                  sll          a4, s2, s4
                  blt          t3, s8, 445f
                  slti         s0, t0, 526
427:              sltu         sp, a2, sp
428:              nop
                  bltu         s2, s9, 449f
                  sra          s5, t6, t1
                  add          a4, gp, a2
                  bgeu         a6, a5, 435f
                  beq          t4, a5, 436f
                  xor          a3, s9, t6
435:              sll          s10, t1, a0
436:              sltiu        s3, t5, -934
                  slti         sp, t1, -1019
                  bne          s1, t5, 445f
                  andi         a7, a4, -2
440:              srli         s9, t5, 9
                  lui          s0, 699390
                  sra          s6, a2, s0
                  bgeu         s4, s8, 453f
                  bge          s10, a1, 462f
445:              nop
                  ori          a2, a4, -1731
                  srai         t3, a6, 19
                  nop
                  auipc        a2, 45736
                  or           t0, a2, t4
                  ori          t0, s2, 1220
                  sltu         t0, a2, a3
                  bgeu         t2, s8, sub_5_j8 #branch to jump instr
                  srai         gp, a6, 18
                  andi         s7, t2, 679
sub_5_j8:         jal          s0, sub_6 #jump sub_5 -> sub_6
                  auipc        gp, 222643
449:              bgeu         t1, t1, 450f
450:              sra          a6, a1, t1
                  srli         a2, a3, 1
                  sltiu        a5, s1, -1672
453:              slli         a3, a4, 14
                  or           a1, s7, s9
                  bge          s9, s3, 460f
                  xori         t1, s8, 604
                  blt          a7, t4, 463f
                  sltiu        t0, s10, -1061
                  slti         s10, a1, -1326
460:              sub          a1, tp, a3
                  sll          t6, s1, a3
462:              bgeu         s4, s5, 480f
463:              slt          ra, a0, a3
                  lui          s7, 431531
                  sub          a1, s2, a0
                  srai         zero, a7, 8
                  beq          gp, gp, 478f
                  xor          a5, s11, a5
                  nop
                  sra          a3, s3, t1
                  addi         s1, gp, 1954
                  beq          a0, zero, 480f
                  srli         s5, a5, 21
                  bne          s8, t5, 479f
                  sra          s9, a3, s3
                  or           t5, s4, a5
                  xor          s10, s6, ra
478:              slli         a6, ra, 12
479:              nop
480:              sll          s3, t5, s5
                  bge          t3, s7, 486f
                  add          t6, s3, a4
                  andi         s0, gp, 1287
                  bltu         t3, tp, 486f
                  xori         ra, sp, -1992
486:              bne          a7, s2, 488f
                  or           ra, a1, a5
488:              slt          s6, t2, t0
                  bge          t5, s1, 497f
                  lui          ra, 511161
                  and          a7, s2, sp
                  auipc        a3, 797434
                  lui          s10, 125389
                  sltu         t2, a0, s4
                  beq          a7, s4, 504f
                  xori         a4, zero, -414
497:              slti         tp, s0, -945
                  slti         s3, s10, -223
                  blt          s8, a0, 508f
                  blt          s8, s6, 518f
                  srai         a3, gp, 17
                  addi         t1, gp, 714
                  beq          s6, tp, 508f
504:              blt          s0, s7, 514f
                  bge          a1, zero, 509f
                  addi         tp, sp, -1354
                  bne          s3, t6, 514f
508:              xor          s10, zero, s3
509:              srai         s4, sp, 26
                  lui          a6, 258427
                  beq          t1, a4, 529f
                  lui          s10, 376012
                  bne          a1, a7, 518f
514:              blt          t5, t1, 534f
                  auipc        sp, 934154
                  bltu         s8, s4, 519f
                  slli         t6, gp, 19
518:              add          a6, t4, s0
519:              slli         t6, s5, 2
                  beq          zero, s11, 530f
                  sll          a1, s8, s10
                  slt          sp, s5, gp
                  add          zero, s9, gp
                  slt          ra, s0, tp
                  xori         s10, s8, 855
                  srl          s6, zero, s11
                  sll          s0, s4, tp
                  srai         a6, t0, 30
529:              bgeu         s2, a5, 537f
530:              beq          s11, ra, 550f
                  add          sp, s9, s5
                  and          t2, gp, s8
                  or           s4, t2, s6
534:              bne          ra, t2, 536f
                  xori         t2, gp, 1117
536:              xor          s4, s1, s9
537:              bltu         zero, sp, 555f
                  and          t5, gp, a5
                  xori         s6, s4, -341
                  srai         sp, t4, 15
                  nop
                  andi         s3, a2, 1710
                  add          t0, s1, a5
                  lui          s9, 77833
                  addi         a3, s6, -333
                  srai         zero, s5, 19
                  auipc        a2, 918788
                  bge          tp, a4, 556f
                  sltu         t6, a4, s6
550:              slti         ra, s11, 171
                  addi         ra, s0, -248
                  lui          t3, 1003167
                  sll          s9, t5, t3
                  blt          t5, sp, 563f
555:              srli         t3, s5, 0
556:              srli         a2, ra, 24
                  srai         s1, s2, 3
                  lui          a2, 1028544
                  sll          s3, gp, ra
                  or           s9, s11, s1
                  bltu         ra, s7, 571f
                  sll          s7, s3, zero
563:              xori         s10, a4, 1685
                  beq          zero, s4, 580f
                  nop
                  sra          t6, s7, s8
                  sltiu        a4, s9, 955
                  slti         ra, a7, -1617
                  xor          t2, s3, t0
                  sub          t4, t2, s11
571:              slti         a6, gp, -501
                  sltiu        s4, a2, -250
                  sll          s7, gp, a7
                  beq          t0, s8, 576f
                  srl          t0, s8, t6
576:              lui          s9, 478518
                  lui          gp, 190813
                  srai         t0, a6, 2
                  slti         t3, a6, 1083
580:              addi         s3, t2, 1343
                  xori         a3, a1, -488
                  la           t5, region_0+1049 #start riscv_load_store_rand_instr_stream_10
                  lbu          s6, -206(t5)
                  ori          a1, a2, -999
                  nop
                  lb           t6, 25(t5)
                  xori         sp, s7, -395
                  lw           a6, 35(t5)
                  srli         t0, gp, 18
                  lb           a7, 0(t5)
                  xori         s7, s8, 1409
                  srai         t2, t4, 26
                  lui          a7, 705384
                  lbu          ra, -32(t5)
                  sb           t5, -224(t5)
                  sb           s6, 58(t5)
                  lhu          s6, 231(t5)
                  lb           a5, -12(t5)
                  lbu          t2, -196(t5)
                  and          a6, gp, ra
                  lb           t4, 179(t5)
                  sltiu        s10, a3, 1251
                  lbu          s0, -168(t5)
                  or           t1, s4, tp
                  lw           s0, 19(t5)
                  srl          t0, tp, a6
                  andi         a4, s3, 1532
                  or           gp, t2, s3
                  sub          t4, t6, s11
                  auipc        a2, 1035343
                  andi         s4, a1, 1385
                  add          s8, a1, a7
                  lh           s8, 179(t5)
                  ori          s0, a2, 1713
                  lbu          t2, -198(t5)
                  lh           ra, 143(t5)
                  lui          t0, 682282
                  lh           s5, 157(t5)
                  sltu         t4, s4, a3
                  and          a5, s0, t3
                  sb           a6, 30(t5)
                  sb           tp, -138(t5)
                  lb           gp, 46(t5)
                  sh           t0, -143(t5)
                  slti         s0, s10, -439
                  lbu          a3, 81(t5)
                  lb           s9, 202(t5)
                  sb           zero, 176(t5)
                  lbu          gp, -83(t5)
                  srai         a5, a6, 20
                  lbu          zero, -243(t5)
                  lw           s9, -57(t5)
                  xori         ra, s6, -738
                  sh           t6, -105(t5)
                  lhu          t2, -23(t5) #end riscv_load_store_rand_instr_stream_10
                  beq          t3, sp, 597f
                  beq          tp, a5, 589f
                  blt          a2, a4, 601f
                  blt          a3, ra, 588f
                  srai         s10, s10, 14
                  srai         s5, a2, 24
588:              or           gp, a3, t2
589:              andi         zero, a1, 1357
                  bgeu         s8, t0, 596f
                  addi         a2, tp, -30
                  slli         a6, a6, 23
                  sltu         t5, s0, tp
                  bge          zero, a3, 611f
                  slti         s5, a7, 673
596:              sub          t6, a6, t0
597:              slli         s9, gp, 0
                  sub          s5, a6, gp
                  bge          sp, gp, 614f
                  sra          a2, a6, s9
601:              bgeu         t6, zero, 612f
                  srli         t2, s4, 2
                  lui          a3, 538844
                  bltu         a6, a6, 609f
                  bltu         s2, t5, 606f
606:              bge          s11, ra, 609f
                  xor          t4, tp, t4
                  auipc        ra, 271871
609:              addi         t3, s9, -114
                  add          t5, s1, s7
611:              bne          s3, s4, 628f
612:              auipc        s4, 153738
                  bltu         s3, s11, 616f
614:              xor          a4, t1, a7
                  bge          a0, t2, 623f
616:              sltu         a6, s10, t5
                  beq          s11, a0, 622f
                  sub          a5, zero, s9
                  nop
                  ori          a1, s9, 949
                  sll          a6, ra, a1
622:              or           a2, s9, a3
623:              sub          t4, t2, a1
                  ori          a1, s6, -496
                  slti         t6, zero, 852
                  slli         s5, a6, 9
                  addi         s8, s4, -1672
628:              srai         s9, t1, 30
                  sra          s7, s9, s9
                  nop
                  xor          a7, t3, s0
                  auipc        a4, 228816
                  slt          s8, gp, a1
                  sltiu        t4, s1, -484
                  srli         t6, s10, 17
                  sra          gp, a5, t1
                  slt          s1, a3, s11
                  slti         s10, s7, -1720
                  srai         t1, a7, 28
                  ori          t0, tp, -2011
                  beq          a2, a4, 647f
                  sra          tp, a3, t0
                  xor          s10, a7, s5
                  sltiu        ra, s7, 1686
                  andi         s9, s4, -253
                  auipc        sp, 690448
647:              blt          t3, t5, 657f
                  slli         s10, ra, 3
                  sltiu        sp, s10, -435
                  xori         ra, s6, 402
                  slli         a1, s8, 17
                  lui          s4, 10474
                  add          t6, t6, s1
                  auipc        gp, 507579
                  sltiu        s6, s6, -364
                  la           sp, region_0+1962 #start riscv_load_store_rand_instr_stream_13
                  lbu          s9, 15(sp)
                  sll          a5, s6, s2
                  sb           t1, 15(sp)
                  lb           a1, 16(sp)
                  nop
                  srli         a5, t3, 23
                  nop
                  ori          ra, s11, -1480
                  lb           t3, -2(sp)
                  ori          t5, t5, 966
                  lh           t6, -16(sp)
                  slli         s6, s1, 31
                  addi         s8, t4, 2014
                  xor          s7, a6, t2
                  lbu          a6, 1(sp)
                  lhu          gp, 10(sp)
                  sltu         zero, t1, s6
                  srl          s0, a1, s1
                  ori          gp, s9, 1746
                  srai         t2, s7, 21
                  lb           t4, -7(sp)
                  add          s4, s8, a6
                  sb           s2, -4(sp)
                  lb           t0, 15(sp)
                  andi         a5, a0, -1798
                  lw           t5, 10(sp)
                  sll          s4, s4, t6
                  lb           s6, -16(sp)
                  sltu         t6, tp, a0
                  lbu          zero, -4(sp)
                  and          s4, s8, s10
                  sb           s4, 3(sp)
                  sra          s0, tp, s0
                  sb           s0, -14(sp)
                  srli         zero, a6, 5
                  andi         a2, t1, 1427
                  lh           ra, 14(sp)
                  nop
                  lhu          s10, 4(sp)
                  lbu          s7, 7(sp)
                  sb           a1, 1(sp)
                  lbu          a1, 5(sp)
                  lbu          a1, 2(sp)
                  lhu          s7, -10(sp)
                  nop
                  sb           a1, -3(sp)
                  sb           s4, 9(sp)
                  slti         t5, s4, 189
                  addi         s0, a2, -1769
                  sltiu        s10, gp, -629
                  or           s10, t1, t0
                  xori         t6, tp, 758
                  srl          a7, s6, s10
                  sb           s5, 15(sp)
                  lbu          a1, 15(sp) #end riscv_load_store_rand_instr_stream_13
                  slti         a7, s1, 273
657:              slti         a3, s4, -1722
                  andi         t4, t4, -1442
                  andi         ra, t3, -382
                  andi         tp, a0, 850
                  sll          a1, a0, sp
                  lui          s1, 467685
                  slti         zero, a5, 1292
                  addi         s9, t4, 1278
                  lui          s1, 601236
                  sub          a7, s4, ra
                  auipc        t5, 413003
                  bltu         a0, s11, 679f
                  bltu         a3, t6, 674f
                  addi         gp, t1, -1287
                  auipc        t1, 695610
                  bltu         t3, t0, 678f
                  sltu         a7, gp, s8
674:              xori         t1, zero, 1659
                  ori          a5, a4, -1120
                  slti         s1, t3, 5
                  bltu         s4, t0, 679f
678:              nop
679:              bgeu         s4, t4, 696f
                  slt          s0, t4, a5
                  andi         t3, zero, 420
                  lui          a2, 387678
                  slt          sp, s7, t6
                  ori          s3, s5, -1994
                  add          gp, a3, s5
                  addi         a2, t4, 1459
                  srai         a5, t2, 7
                  bne          s9, t0, 698f
                  lui          s8, 476590
                  sub          tp, a2, gp
                  srai         a5, t2, 21
                  blt          t4, t0, 697f
                  sltu         gp, a6, t6
                  sltiu        a1, a5, -955
                  add          s0, tp, a7
696:              add          a6, s2, tp
697:              sub          gp, s2, s8
698:              srl          s0, a7, a0
                  bgeu         t5, s3, 717f
                  addi         zero, a5, -29
                  andi         s0, t6, -222
                  bge          a7, a4, 711f
                  and          a5, t5, a2
                  auipc        a7, 45840
                  sub          gp, t5, s3
                  sub          t4, t3, s9
                  xor          s9, a3, t2
                  slti         s8, s5, -1197
                  and          s7, s7, t2
                  andi         t3, s11, -1097
711:              srai         t2, s7, 2
                  srl          t5, t3, t2
                  ori          sp, a4, -142
                  srl          s3, sp, s6
                  slt          s7, sp, s2
                  slli         s10, t4, 17
717:              srai         a3, t2, 30
                  bltu         s0, a2, 722f
                  srli         t5, t4, 15
                  blt          a0, s2, 740f
                  sltu         t3, t6, ra
722:              bgeu         s3, tp, 731f
                  add          ra, sp, s0
                  addi         s7, s11, -510
                  sll          s9, t4, a1
                  srli         a5, s1, 3
                  andi         sp, t2, 1128
                  sra          s0, s6, zero
                  srl          t2, a6, tp
                  ori          t3, a5, -346
731:              slli         a2, t4, 3
                  sll          s0, a2, s7
                  andi         s9, a2, 796
                  bne          t4, a7, 736f
                  nop
736:              sltu         s7, gp, a6
                  sltiu        t0, zero, -660
                  lui          a4, 102818
                  slti         s10, s4, 1642
740:              xori         t1, a6, 1836
                  addi         s7, s6, -794
                  sltiu        a1, t0, -1423
                  bge          a7, a1, 758f
                  bge          t5, s5, 752f
                  srai         zero, a2, 0
                  addi         s4, t4, -1277
                  ori          t1, ra, -294
                  sltu         s1, a1, t3
                  slli         s1, s6, 28
                  xori         sp, t2, 512
                  sub          a3, a7, s10
752:              nop
                  nop
                  and          a4, s4, s6
                  slli         gp, s4, 27
                  nop
                  bge          t1, s3, 764f
758:              ori          s1, a5, -1794
                  sub          s10, tp, t1
                  slti         sp, s0, 135
                  andi         a4, a0, -708
                  sra          t0, a4, t0
                  add          t6, a6, s6
764:              bne          s5, s7, 774f
                  sltiu        s3, zero, -1767
                  bge          t5, a4, 767f
767:              xor          s1, t1, a7
                  blt          s0, s3, 786f
                  or           s3, t6, gp
                  addi         ra, s3, -823
                  bgeu         t0, t4, 787f
                  auipc        a5, 619485
                  blt          a2, tp, 791f
774:              beq          t6, s0, 794f
                  bltu         s5, t4, 790f
                  sltu         s4, s3, s6
                  addi         s9, s9, -1041
                  beq          s6, zero, 787f
                  and          t3, ra, ra
                  sra          s7, t3, a5
                  bgeu         s1, a3, 788f
                  lui          sp, 117133
                  auipc        a2, 899263
                  srai         a7, t5, 19
                  xor          t1, t6, a4
786:              nop
787:              and          a5, t6, a3
788:              sltiu        a5, t3, 340
                  andi         t5, a2, 554
790:              xori         gp, s2, 1751
791:              slti         s10, a2, 1858
                  ori          s10, s0, 1399
                  addi         t4, ra, 1868
794:              blt          s4, s2, 797f
                  or           s0, s7, a2
                  srl          s4, a4, ra
797:              slti         s10, a2, -1409
                  slli         a2, s4, 19
                  bgeu         s10, a7, 815f
                  slli         s8, sp, 2
                  blt          s9, a3, 819f
                  xor          s8, a5, t3
                  sltu         a3, a4, s3
                  slt          sp, s7, s10
                  xori         a7, s1, -30
                  addi         t1, s11, -1229
                  srai         t1, a5, 10
                  andi         s7, sp, -560
                  blt          a5, sp, 810f
810:              ori          a5, a4, -1636
                  slti         s4, tp, 331
                  add          a2, a4, tp
                  srli         s10, a5, 27
                  blt          s4, t1, 824f
815:              beq          t4, tp, 817f
                  and          t6, s3, s0
817:              slli         s7, s11, 26
                  nop
819:              xori         a4, t2, 1594
                  xori         t2, zero, -325
                  slti         a1, t4, 2014
                  bgeu         t4, s7, 827f
                  xor          a4, a7, a0
824:              bltu         sp, t6, 830f
                  add          s9, s7, t1
                  and          gp, s10, t6
827:              and          t1, t2, s5
                  srl          s6, t5, s5
                  nop
830:              xori         t2, s1, 821
                  lui          a3, 678149
                  slti         t5, s2, -694
                  add          s1, s11, a3
                  beq          s2, a1, 851f
                  andi         s3, s10, -1910
                  ori          a6, s10, 249
                  slt          t5, a5, t0
                  slti         ra, a1, 1904
                  sltiu        s7, t6, 996
                  andi         t1, s8, -124
                  bltu         s1, s9, 850f
                  sltu         t5, zero, s4
                  srai         a1, s5, 26
                  srli         s10, s1, 18
                  sltu         a7, s4, a3
                  slli         t6, sp, 29
                  nop
                  sub          sp, tp, a2
                  xor          s10, s1, s4
850:              auipc        t0, 19322
851:              sltu         t0, s2, s3
                  sltiu        s9, t4, 1214
                  nop
                  sra          a7, a2, a5
                  slti         s9, a7, 2021
                  blt          tp, s6, 860f
                  blt          s5, a4, 877f
                  slt          a2, ra, s4
                  lui          s9, 800954
860:              bltu         sp, s3, 865f
                  auipc        a3, 941036
                  sll          s8, gp, s2
                  bltu         s11, s6, 868f
                  bgeu         a7, a5, 872f
865:              slt          t0, a0, s8
                  blt          s4, t5, 876f
                  sra          ra, s2, s9
868:              bne          t5, sp, 883f
                  addi         a1, a4, 1772
                  slli         ra, t4, 12
                  bgeu         a4, t6, 886f
872:              sltu         t3, s0, a4
                  beq          s8, s6, 881f
                  and          t4, a1, s4
                  lui          sp, 328877
876:              xor          a5, zero, a1
877:              sub          s9, s3, s11
                  srli         s1, t0, 28
                  nop
                  sll          s10, s5, s11
881:              bgeu         ra, t4, 883f
                  xor          zero, a0, t6
883:              srli         ra, s5, 17
                  bne          s11, s10, 887f
                  bne          a1, s1, 891f
886:              lui          s0, 1022697
887:              blt          s1, s3, 907f
                  slli         t0, s6, 11
                  xor          s0, s2, a4
                  bne          s2, a4, 907f
891:              andi         a6, s5, -1211
                  ori          tp, s9, 769
                  sltiu        a2, s3, 1664
                  srai         t5, gp, 14
                  lui          s4, 14473
                  blt          t6, s0, 906f
                  xori         s6, a0, 722
                  andi         s5, s8, -1529
                  srai         sp, t2, 4
                  bgeu         a2, t1, 918f
                  andi         s4, t5, -213
                  sra          ra, tp, s5
                  sltiu        s9, s6, 74
                  sltu         a4, t0, gp
                  sll          s7, t3, tp
906:              slli         s4, t4, 25
907:              add          s3, ra, s11
                  auipc        s9, 822310
                  xori         t0, ra, 716
                  and          sp, a6, t2
                  sub          sp, t1, t1
                  sll          s9, s11, s6
                  andi         t2, a4, 184
                  sltiu        s1, t1, -1161
                  andi         t0, a7, 823
                  srai         s4, zero, 13
                  beq          gp, s4, 935f
918:              xori         sp, s0, 1561
                  auipc        a4, 589774
                  bge          t0, s8, 931f
                  slti         t2, a2, -1488
                  srl          s3, s9, t1
                  xori         tp, a6, 1623
                  xor          s9, s8, s4
                  bne          t1, gp, 933f
                  bgeu         a7, gp, 935f
                  sltu         a2, s8, sp
                  bltu         t6, s0, 933f
                  andi         a3, a1, 468
                  bne          a4, a5, 940f
931:              ori          t5, a0, -1229
                  slli         ra, s5, 4
933:              bne          a1, t4, 950f
                  andi         s4, tp, 1181
935:              bne          t0, a0, 950f
                  srl          zero, t3, t4
                  slt          s1, t6, tp
                  or           t5, s8, a5
                  sltiu        tp, s1, 929
940:              bltu         sp, a3, 960f
                  slti         s9, s4, 1751
                  add          s3, s5, a2
                  addi         a5, zero, 643
                  bge          a3, t5, 962f
                  bne          a6, t0, 950f
                  lui          t1, 394289
                  srl          a7, ra, s5
                  bne          t3, gp, 953f
                  xori         s7, s2, 671
950:              sub          s8, s8, s8
                  slli         t5, t2, 11
                  sltiu        sp, s4, -100
953:              slt          sp, tp, s11
                  and          s8, s8, a6
                  add          a6, a1, a1
                  andi         a3, s6, 1053
                  slli         a5, s1, 5
                  slti         s8, s3, -1346
                  beq          sp, s6, 965f
960:              srl          t4, t5, s4
                  srai         a1, a6, 23
962:              bgeu         zero, t5, 964f
                  and          a1, a3, t3
964:              slti         s0, a0, 871
965:              sub          a3, gp, s9
                  slt          t5, sp, s10
                  sra          sp, s7, t3
                  sub          a6, a7, a4
                  bltu         ra, a3, 972f
                  add          t0, t5, a6
                  lui          gp, 594136
972:              or           a6, s9, a7
                  bne          s8, t4, 991f
                  slli         s7, a0, 27
                  bgeu         a2, t5, 992f
                  sub          a5, s7, s3
                  srli         s1, a2, 28
                  srli         t0, a5, 19
                  srl          s10, s10, t4
                  andi         sp, zero, 900
                  srai         tp, t5, 9
                  sltu         sp, s7, a6
                  srli         t6, t2, 0
                  srl          t5, sp, t3
                  xor          a3, s6, s7
                  slti         s1, gp, -58
                  bge          s6, t6, 994f
                  blt          t3, a7, 989f
989:              sll          tp, s7, t3
                  beq          s8, s6, 1008f
991:              slti         a7, sp, 1589
992:              bne          t2, a6, 1000f
                  srai         t5, t3, 30
994:              slt          t2, zero, a7
                  bgeu         a7, a5, 999f
                  andi         t0, a1, 1485
                  sltu         t5, a4, t4
                  xori         a6, t5, 1732
999:              slli         s9, a3, 9
1000:             srli         s7, s6, 12
                  lui          ra, 357597
                  srai         t1, s7, 25
                  add          s8, sp, gp
                  lui          a7, 135536
                  slti         s1, a6, 713
                  beq          a5, s8, 1008f
                  sltiu        tp, a5, 949
1008:             xor          t0, t0, a1
                  sltu         t4, s8, tp
                  and          sp, a0, ra
                  xori         t0, a2, 1167
                  sra          s5, s7, s5
                  slli         a3, a0, 7
                  lui          s1, 712439
                  beq          t0, a6, 1035f
                  bne          t1, a3, 1026f
                  srai         zero, a0, 4
                  sub          t4, a5, a5
                  beq          a0, s8, 1035f
                  sltu         s5, s7, a0
                  ori          t3, t1, 1256
                  srl          s1, s7, a4
                  auipc        t5, 230070
                  blt          t2, gp, 1030f
                  sll          s1, a3, t5
1026:             srl          t5, s0, s7
                  sll          t5, s9, a3
                  srai         tp, s3, 15
                  bgeu         t6, s1, 1044f
1030:             bge          a4, s10, 1041f
                  sltiu        gp, t0, -810
                  sra          s10, s6, a1
                  sltiu        s6, ra, 570
                  sra          a7, s8, t6
1035:             bgeu         t1, a0, 1044f
                  bltu         sp, gp, 1046f
                  bge          s4, a1, 1040f
                  or           gp, t0, tp
                  sub          s9, t0, a1
1040:             bgeu         s4, s10, 1048f
1041:             sub          s7, t0, t2
                  xor          a4, s1, t6
                  sltiu        t6, a0, 758
1044:             nop
                  and          s7, s6, s2
1046:             sra          zero, t5, s10
                  srl          t5, a0, s1
1048:             sltu         gp, a6, a7
                  bne          t2, s10, 1067f
                  sll          a5, s4, t3
                  addi         gp, a2, -887
                  or           sp, a6, t0
                  sub          t5, s11, t1
                  bne          s0, a7, 1059f
                  or           s6, s3, t4
                  andi         t0, s0, 33
                  addi         s7, s1, 1171
                  xor          a2, s6, a2
1059:             sltu         tp, sp, ra
                  sltu         tp, a5, a2
                  xor          t3, a0, t6
                  slt          a3, ra, a1
                  bgeu         a7, a6, 1067f
                  xori         a3, t1, 1044
                  xor          tp, s11, t0
                  xori         s6, a3, 380
1067:             lui          a3, 110159
                  lui          t5, 165790
                  beq          a6, a3, 1078f
                  bge          s2, t6, 1085f
                  add          t4, gp, s8
                  srai         a3, t3, 30
                  bltu         a4, a6, 1082f
                  xori         t2, ra, -486
                  or           t6, s10, sp
                  add          s8, t0, s3
                  sll          a3, s5, t2
1078:             sltu         a4, t0, s10
                  andi         gp, s1, -1744
                  nop
                  ori          t0, t3, 1755
1082:             slt          gp, a5, s4
                  slti         t3, zero, 1986
                  addi         s1, a3, 1406
1085:             and          tp, s2, t2
                  sll          s8, a3, sp
                  xor          t3, a4, a4
                  beq          s3, a5, 1096f
                  slti         t3, s8, -1901
                  srli         a1, ra, 11
                  srli         t6, a6, 25
                  nop
                  and          a6, t0, t3
                  srli         sp, s4, 23
                  auipc        t2, 490690
1096:             sltu         t0, s3, a5
                  ori          zero, a5, 230
                  blt          s9, s6, 1115f
                  beq          a4, s3, 1115f
                  bltu         a5, t2, 1110f
                  sll          t4, s5, t0
                  bge          zero, s0, 1108f
                  blt          sp, t3, 1105f
                  ori          a1, a2, -1940
1105:             slli         s7, s6, 12
                  bgeu         s7, s0, 1108f
                  blt          s4, t2, 1110f
1108:             nop
                  sra          gp, a2, t1
1110:             xor          t3, s3, t0
                  bltu         a1, t3, 1118f
                  ori          t0, a1, -556
                  srl          t5, t1, s4
                  srai         a1, s9, 6
1115:             slt          s3, a6, a1
                  bgeu         a7, a4, 1136f
                  slli         ra, s8, 27
1118:             bltu         tp, tp, 1123f
                  beq          a2, s4, 1129f
                  srai         s8, tp, 26
                  auipc        t5, 685374
                  srai         s3, s9, 0
1123:             andi         a4, ra, -1836
                  nop
                  and          a1, s4, a1
                  slli         t1, t2, 6
                  sltiu        a4, t3, -432
                  lui          t1, 221676
1129:             add          a3, t6, t6
                  bne          a2, t4, 1136f
                  addi         t3, a7, -1422
                  or           s9, s5, s1
                  addi         a1, t4, 494
                  addi         a1, a0, 892
                  slti         tp, s8, 1443
1136:             slli         s4, s7, 7
                  srai         s10, s6, 17
                  xor          a7, a4, a5
                  bge          sp, a1, 1142f
                  nop
                  sra          s8, tp, t3
1142:             bge          a0, zero, 1153f
                  lui          s7, 299201
                  andi         t3, s6, -1833
                  bltu         a4, t1, 1150f
                  add          zero, s1, t5
                  lui          s6, 1015327
                  or           a7, s7, a5
                  sltu         t5, s6, s0
1150:             xori         a2, s1, 1133
                  andi         s3, s0, 1885
                  andi         s1, gp, 1561
1153:             srli         tp, t1, 23
                  sltu         s5, a7, t0
                  and          a7, s5, a2
                  andi         sp, s11, -1664
                  auipc        s9, 496529
                  sltu         a2, s10, s6
                  sltu         t4, s10, t3
                  slti         ra, s1, 592
                  andi         t2, t3, 212
                  addi         s8, gp, 1989
                  slli         a1, ra, 5
                  bge          zero, s4, 1179f
                  srl          t5, a5, t6
                  slti         sp, a1, 852
                  xori         t0, s11, -519
                  bge          t1, s11, 1186f
                  add          t5, s4, t0
                  slli         tp, a0, 3
                  slt          s9, s0, zero
                  bne          s9, s1, 1192f
                  beq          zero, t2, 1183f
                  srai         sp, s6, 14
                  bgeu         a4, s10, 1192f
                  slt          t0, sp, a7
                  srai         a2, s6, 17
                  andi         t6, a4, -1167
1179:             and          a6, gp, a0
                  sub          t5, s1, s11
                  beq          t6, s5, 1182f
1182:             nop
1183:             bgeu         ra, s1, 1201f
                  sub          a3, a4, a3
                  lui          t0, 568084
1186:             bne          t6, s1, 1203f
                  beq          s1, s4, 1204f
                  beq          a7, gp, 1206f
                  auipc        t0, 48805
                  sra          s1, s5, t4
                  addi         t3, tp, 1929
1192:             beq          gp, tp, 1197f
                  lui          s10, 431667
                  srli         t3, t0, 2
                  addi         t5, t6, -531
                  lui          t5, 419861
1197:             blt          a6, sp, 1205f
                  sltu         t2, s1, t2
                  or           a4, gp, t1
                  sll          zero, t5, gp
1201:             sra          a4, s2, s5
                  srl          t4, s4, a4
1203:             and          ra, s3, a3
1204:             sub          t6, t4, s1
1205:             beq          s10, a7, 1221f
1206:             and          t0, tp, t3
                  slt          t3, gp, a2
                  and          s8, s0, t4
                  xori         a1, t6, 1067
                  slt          a1, t0, a4
                  and          t4, s6, s10
                  andi         tp, s10, -1275
                  xor          s3, t4, ra
                  and          zero, s1, ra
                  addi         a2, zero, 449
                  andi         ra, t4, -1814
                  or           t2, a6, t2
                  srai         t0, t2, 17
                  addi         s9, s9, -842
                  sll          t5, s5, a5
1221:             sra          s7, s10, t6
                  bge          a5, a1, 1227f
                  slli         sp, a6, 11
                  lui          t6, 372678
                  sll          a7, t6, s1
                  slti         s9, tp, 1458
1227:             blt          a4, t4, 1245f
                  slti         t4, s5, -459
                  beq          s5, zero, 1232f
                  xor          t3, t0, s10
                  xor          s1, s8, s3
1232:             slti         s6, zero, -1982
                  bge          s8, s11, 1253f
                  and          sp, gp, sp
                  auipc        s9, 512660
                  and          t0, t4, t1
                  or           sp, a3, t4
                  beq          a1, s2, 1258f
                  bge          s11, s10, 1245f
                  auipc        a7, 868513
                  bge          s8, t2, 1251f
                  blt          s1, t1, 1253f
                  srli         s7, t4, 3
                  addi         t3, ra, 1874
1245:             bge          s5, s10, 1263f
                  beq          a3, s6, 1255f
                  sltu         a1, t6, a3
                  or           t3, t2, t4
                  bne          s5, s6, 1251f
                  slt          gp, t3, s10
1251:             sltu         s7, sp, s3
                  sra          s5, tp, s2
1253:             slli         a7, a2, 7
                  slli         ra, a5, 5
1255:             sub          t4, s2, zero
                  sltu         s10, s10, s11
                  srli         s7, a1, 28
1258:             sll          zero, s1, s9
                  slti         t2, s4, 861
                  bne          t6, t3, 1275f
                  slti         sp, t3, -229
                  xori         t3, t5, -533
1263:             add          t2, s0, t3
                  andi         zero, t3, -2027
                  sub          t3, t4, gp
                  bltu         ra, a5, 1268f
                  beq          t1, a3, 1277f
1268:             xori         a7, t4, 1033
                  bgeu         t3, s0, 1276f
                  xori         a7, t1, -128
                  bltu         t1, t1, 1281f
                  and          t3, t2, a4
                  lui          s8, 622991
                  addi         a2, s4, -1047
1275:             and          t2, t4, a4
1276:             or           zero, sp, a0
1277:             slt          s0, s2, sp
                  sub          s4, gp, s3
                  sra          s0, t3, t6
                  bltu         t0, zero, 1283f
1281:             nop
                  sltu         s5, s2, s4
1283:             xori         tp, zero, 1725
                  bge          t1, s5, 1285f
1285:             bge          zero, s6, 1291f
                  lui          t3, 933377
                  bgeu         s9, a2, 1295f
                  slli         s9, t0, 17
                  add          a3, s11, s11
                  srli         s0, a0, 19
1291:             sltiu        a3, a2, 1778
                  sra          t6, s0, a7
                  ori          tp, a6, 151
                  lui          s10, 708112
1295:             srli         tp, t3, 24
                  blt          gp, s1, 1311f
                  andi         a3, s11, -292
                  addi         zero, tp, 784
                  srl          a4, s2, a5
                  bltu         s11, s11, 1309f
                  sltu         t3, s4, a5
                  srl          sp, a3, s0
                  ori          a5, s3, -266
                  slti         t3, t1, 1916
                  lui          a7, 1027824
                  lui          s9, 776210
                  xor          tp, a2, t6
                  bge          t3, s6, 1312f
1309:             bne          a3, s5, 1314f
                  blt          s8, t2, 1311f
1311:             sltiu        s0, ra, -839
1312:             srl          s0, t1, s5
                  xor          zero, s5, gp
1314:             bltu         t5, t0, 1334f
                  addi         a3, a0, -791
                  nop
                  and          s8, ra, a2
                  sra          a7, s4, s7
                  blt          s9, t0, 1327f
                  andi         s10, a7, -573
                  sll          tp, a6, s7
                  srai         a7, t1, 12
                  bgeu         tp, t0, 1329f
                  xori         t5, a3, -1881
                  sll          t1, tp, s8
                  lui          s1, 800972
1327:             bltu         t6, t0, 1331f
                  slli         s7, tp, 31
1329:             ori          s6, t0, -631
                  srl          t1, ra, zero
1331:             ori          a1, s9, 444
                  bne          zero, tp, 1349f
                  sltu         a1, a5, s0
1334:             sltiu        ra, a2, -1105
                  sub          a2, a0, a6
                  and          s5, t5, s8
                  slli         a1, a3, 15
                  auipc        t6, 971805
                  addi         a6, a0, 728
                  and          a1, ra, sp
                  add          s8, s1, s9
                  sltu         a7, a3, s7
                  sltiu        a1, t2, -435
                  srai         a7, s3, 31
                  beq          a5, s8, 1354f
                  srl          s5, t5, a0
                  ori          ra, a4, 1653
                  slt          s5, s5, t5
1349:             add          ra, s7, s9
                  xor          a6, t3, a2
                  lui          s3, 186348
                  srl          a6, sp, s1
                  nop
1354:             andi         a1, t2, 1047
                  addi         t3, a4, -720
                  andi         s4, t5, -848
                  sltu         a2, t0, a5
                  or           ra, s2, t3
                  lui          a5, 27937
                  srai         a4, s10, 26
                  add          s6, s8, gp
                  sltiu        a5, t6, -1018
                  addi         a4, a3, 1521
                  bltu         t4, s2, 1382f
                  xor          tp, t1, s3
                  bge          s8, s8, 1384f
                  auipc        s6, 838305
                  bne          t4, s9, 1371f
                  addi         tp, s3, -1284
                  sltiu        a5, s1, 592
1371:             add          a1, s10, zero
                  bgeu         a6, a5, 1378f
                  sub          s9, s9, a1
                  blt          t6, s1, 1384f
                  add          a3, t0, a3
                  sltu         t1, t0, s4
                  sltu         s6, t6, t6
1378:             xor          s4, a2, a7
                  xor          zero, a0, ra
                  or           t5, s11, t0
                  srli         t3, gp, 6
1382:             xori         zero, s8, -1538
                  slt          gp, s4, ra
1384:             ori          t4, a2, 1601
                  addi         a2, a6, -1634
                  sltiu        zero, t5, 1271
                  bgeu         s3, a4, 1390f
                  bgeu         t3, t2, 1396f
                  blt          t5, a1, 1400f
1390:             slt          t6, gp, a5
                  or           gp, zero, gp
                  sub          t5, s4, t5
                  srli         t2, s8, 11
                  xori         t0, s5, 1360
                  srl          t3, t6, a3
1396:             sll          a4, t1, s4
                  srli         t5, t6, 26
                  andi         t2, s9, 777
                  slti         s3, tp, -1665
1400:             srl          sp, tp, a0
                  addi         t6, t3, -403
                  sltu         sp, t2, s8
                  add          t4, a1, t1
                  bltu         s6, gp, 1406f
                  lui          t6, 39407
1406:             bltu         s5, a6, 1415f
                  sub          a7, s5, a3
                  bltu         a2, t3, 1415f
                  sltu         t1, s4, gp
                  lui          tp, 188370
                  xori         s5, s0, 1364
                  add          gp, s7, a5
                  or           a1, s4, a4
                  and          s10, t5, t1
1415:             slli         s5, s4, 14
                  lui          s3, 277214
                  srl          t5, t1, s2
                  and          t6, s11, s1
                  srl          t3, t4, ra
                  sra          t0, s7, t0
                  add          a7, s11, s3
                  auipc        s3, 1008610
                  bge          s4, a3, 1441f
                  nop
                  auipc        a7, 630021
                  or           s7, s1, t2
                  xori         t1, t2, -997
                  ori          a5, sp, -1292
                  bge          t6, s7, 1446f
                  bne          s7, s6, 1435f
                  beq          a6, ra, 1441f
                  slt          t3, tp, s1
                  lui          a3, 58171
                  nop
1435:             or           a5, zero, a6
                  xori         sp, a7, 1858
                  andi         t0, ra, 1361
                  bgeu         s6, t6, 1443f
                  srli         a4, t5, 11
                  addi         t3, tp, 1152
1441:             bgeu         s9, gp, 1446f
                  srl          a7, gp, a2
1443:             and          s1, s1, s8
                  bgeu         a2, s5, 1454f
                  bge          t2, a6, 1447f
1446:             sltiu        a1, s11, 1662
1447:             srai         sp, s7, 21
                  or           s4, tp, a4
                  sub          t6, s6, s2
                  sll          s4, s1, s3
                  sll          a6, s1, a4
                  sub          s3, s0, s4
                  or           a4, a1, t0
1454:             slt          a7, a4, s8
                  beq          s9, a4, 1471f
                  sltu         s4, a7, t4
                  srli         s6, a1, 22
                  nop
                  sub          t5, a3, t1
                  xor          s4, tp, a5
                  srl          sp, s3, s9
                  slli         tp, s5, 12
                  bltu         a1, s5, 1478f
                  sub          ra, s2, t6
                  bne          a2, s9, 1485f
                  bltu         a7, tp, 1481f
                  add          a5, zero, a4
                  slt          t1, a4, s1
                  sra          a1, a5, s0
                  or           ra, t3, sp
1471:             add          a1, s5, t4
                  andi         s1, s1, -1678
                  slli         a6, t5, 31
                  sltu         s10, s7, a7
                  and          s3, ra, gp
                  sltu         t0, t5, s7
                  slt          t1, gp, a0
1478:             beq          s9, a7, 1480f
                  and          t4, t3, t3
1480:             sltu         a3, t6, a4
1481:             auipc        a5, 632372
                  beq          a4, a4, 1490f
                  slli         s8, s10, 11
                  lui          s7, 291614
1485:             bge          s10, a7, 1494f
                  srli         s10, zero, 12
                  xori         t5, s11, 2046
                  bge          s1, ra, 1503f
                  bne          t0, sp, 1499f
1490:             addi         s9, t4, 249
                  la           a4, region_1+186 #start riscv_load_store_rand_instr_stream_14
                  lbu          s10, 53(a4)
                  lb           ra, 2(a4)
                  addi         s5, s10, -1006
                  lh           s7, -22(a4)
                  lbu          s8, 0(a4)
                  auipc        t0, 802190
                  sb           s6, -5(a4)
                  lbu          t2, -58(a4)
                  lhu          gp, -48(a4)
                  lb           a3, -33(a4)
                  srai         s0, t3, 7
                  sb           s0, -53(a4)
                  sub          tp, s10, s2
                  or           t1, a2, a5
                  lb           t2, -11(a4)
                  lb           t3, -8(a4)
                  lh           a3, -48(a4)
                  ori          a2, a5, 1749
                  nop
                  lbu          s4, -8(a4)
                  lbu          a2, 29(a4)
                  auipc        t3, 428878
                  lb           t4, 7(a4)
                  add          a2, t3, t1
                  lb           s1, 52(a4)
                  xori         t3, a5, -621
                  sltu         s9, s7, a1
                  and          s9, a5, s4
                  srai         s3, sp, 8
                  sb           a3, 11(a4)
                  lh           t2, -6(a4)
                  sh           s8, 20(a4)
                  lw           t5, 14(a4)
                  or           t2, s9, s4
                  sw           t2, 50(a4)
                  lbu          a1, 20(a4)
                  sb           zero, 51(a4)
                  sb           s1, -11(a4)
                  add          s8, t4, s7
                  lb           a1, -36(a4)
                  sll          s6, s3, t6
                  andi         s10, zero, -546
                  or           s3, s3, sp
                  slt          s3, a2, s9
                  sub          s10, zero, tp
                  lb           zero, -37(a4)
                  slli         s6, gp, 6
                  slli         s5, a3, 6
                  xor          a1, s3, t2
                  add          a6, a2, t4
                  srai         a2, s8, 4
                  xori         s3, s0, 1816
                  sltu         zero, a3, a6
                  lbu          s9, 30(a4)
                  ori          s4, a5, -175
                  sb           s4, 49(a4) #end riscv_load_store_rand_instr_stream_14
                  addi         s0, t4, -1585
                  or           t5, s0, s7
                  sub          t3, s10, a1
1494:             srli         a1, s4, 1
                  sltiu        s8, ra, -922
                  slt          t4, sp, s11
                  beq          zero, a4, 1500f
                  or           s10, s1, zero
1499:             and          t6, s4, a5
1500:             xor          a4, t2, a7
                  xori         s3, t1, -596
                  ori          t0, s6, -922
1503:             srl          t5, a5, s2
                  auipc        a1, 490389
                  and          t3, s1, t6
                  sltiu        s4, t3, -1044
                  srli         ra, a1, 17
                  slt          a5, s7, s2
                  bltu         s8, s5, 1513f
                  bltu         s8, s3, 1528f
                  lui          a7, 823199
                  ori          t2, gp, -1067
1513:             bltu         s8, a3, 1529f
                  sltiu        s6, s7, 420
                  srl          t1, s2, s2
                  nop
                  nop
                  bltu         a3, a4, 1523f
                  lui          a3, 1003287
                  nop
                  lui          tp, 720818
                  addi         a7, s0, -349
1523:             sltu         s0, gp, a1
                  andi         t1, t3, 1785
                  slti         t4, t6, -1583
                  srl          ra, t0, s11
                  blt          t5, s3, 1545f
1528:             slt          a6, sp, sp
1529:             add          a6, a4, t0
                  nop
                  slt          s1, tp, s1
                  sra          tp, t3, t4
                  ori          s1, s1, -301
                  lui          s10, 29507
                  andi         a3, a7, -1124
                  srl          s4, a6, s2
                  slli         s6, t2, 20
                  andi         gp, s0, 683
                  beq          s1, s1, 1547f
                  srl          sp, s5, s2
                  lui          s8, 90786
                  sra          a1, s7, t4
                  ori          t0, a2, -212
                  lui          s0, 385246
1545:             or           s0, tp, s3
                  slti         s5, a5, 557
1547:             ori          s5, t1, -37
                  srl          s1, ra, s8
                  nop
                  sltiu        s6, t6, 519
                  nop
                  sltiu        t6, s7, -1946
                  nop
                  lui          t4, 687454
                  srl          t4, gp, t0
                  add          s1, a7, s4
                  or           zero, a5, t3
                  or           s0, s0, s7
                  add          t5, a7, t6
                  sra          t3, s4, a6
                  ori          a7, s5, 1275
                  lui          t2, 270675
                  xor          sp, s10, a3
                  sll          s4, t0, t4
                  nop
                  sra          s10, t3, a3
                  slt          t5, gp, zero
                  bltu         s1, a5, 1583f
                  andi         t4, ra, 546
                  srl          t2, s1, a0
                  ori          a3, s8, -766
                  bge          s3, a0, 1589f
                  add          t5, a4, zero
                  andi         ra, s8, -633
                  nop
                  or           a4, ra, t6
                  ori          s1, s0, -1220
                  slli         s5, s11, 21
                  sra          a2, s10, s6
                  sra          t3, a5, a1
                  auipc        s7, 328607
                  srli         a1, s7, 24
1583:             xor          s5, s8, s0
                  sltiu        t0, s10, -534
                  srai         a4, t3, 6
                  ori          a1, s7, 690
                  ori          s4, a7, -1166
                  blt          a5, s3, 1595f
1589:             slti         sp, gp, 758
                  sltu         s4, s6, a1
                  bltu         s4, t6, 1601f
                  slt          s4, s2, a1
                  srl          a7, s10, t0
                  sltu         s6, s1, s11
1595:             bne          a7, t1, 1606f
                  sll          t1, t3, s2
                  blt          s11, tp, 1615f
                  nop
                  sub          s10, a6, s7
                  slli         sp, a6, 29
1601:             srl          t5, s11, tp
                  bge          s1, s3, 1611f
                  nop
                  sltu         s1, s3, tp
                  srl          a7, s4, t4
1606:             nop
                  slti         s5, s7, -953
                  andi         t6, t5, -662
                  ori          ra, t3, -299
                  sltu         a5, ra, a4
1611:             sub          s7, s3, t5
                  slt          ra, t1, ra
                  andi         a4, tp, 274
                  add          s6, s1, tp
1615:             sra          t2, s2, s10
                  bgeu         sp, a1, 1621f
                  addi         s5, t0, 9
                  slti         sp, t2, -1607
                  sltiu        t5, s1, -396
                  beq          t1, s1, 1640f
1621:             addi         s4, s10, -883
                  bgeu         a7, t2, 1628f
                  addi         s1, s7, 912
                  xori         gp, s5, 548
                  andi         s9, t6, -1805
                  bge          gp, a6, 1643f
                  or           s9, t0, s4
1628:             sltiu        s0, s10, 693
                  slt          ra, a4, t1
                  auipc        ra, 265610
                  auipc        t4, 601513
                  slli         t2, t2, 24
                  srl          t1, s9, s2
                  bgeu         t6, gp, 1639f
                  slli         s9, t6, 7
                  srai         sp, a6, 29
                  sra          a7, t4, s3
                  nop
1639:             sltiu        zero, s9, 497
1640:             or           a7, ra, zero
                  bge          t3, s6, 1644f
                  bge          t2, ra, 1662f
1643:             bgeu         a7, s6, 1653f
1644:             beq          t0, s6, 1646f
                  add          a4, s1, gp
1646:             sll          a1, s5, t0
                  or           s5, a3, t3
                  and          t0, s11, s1
                  slli         t0, a5, 19
                  sll          s0, s7, t1
                  bgeu         a7, t4, 1652f
1652:             or           sp, s7, t3
1653:             slli         a6, a5, 30
                  or           t6, ra, t2
                  slti         t1, s6, 732
                  blt          t5, t3, 1662f
                  blt          s11, s9, 1663f
                  blt          gp, t4, 1676f
                  andi         s0, t3, -609
                  or           t5, s1, s7
                  bltu         a6, gp, 1671f
1662:             sltu         gp, t2, tp
1663:             bne          a5, a4, 1668f
                  bltu         a3, a1, 1671f
                  bne          zero, t1, 1683f
                  srai         a6, a4, 12
                  slli         s4, s2, 7
1668:             slli         sp, gp, 17
                  slli         a3, t4, 24
                  xor          gp, s6, s6
1671:             slt          a7, s9, s3
                  bge          s1, a5, 1673f
1673:             auipc        ra, 261253
                  nop
                  ori          gp, a3, 143
1676:             bgeu         t2, t0, 1681f
                  bgeu         t3, s8, 1693f
                  slt          gp, t0, a7
                  srli         s10, s10, 13
                  srli         s4, s4, 3
1681:             and          a2, s6, t3
                  and          a7, a1, a2
1683:             ori          gp, s0, 1678
                  andi         a4, a6, -1726
                  sub          s8, s6, t2
                  bge          s4, s9, 1701f
                  addi         t1, s11, -189
                  sltiu        a3, t2, 1096
                  sra          sp, s7, s1
                  beq          s4, s4, 1700f
                  slli         t1, s3, 31
                  beq          s10, gp, 1694f
1693:             bne          t4, s2, 1711f
1694:             bne          a5, s9, 1698f
                  slt          t0, a3, t4
                  addi         zero, t2, 1792
                  and          a5, t0, s10
1698:             sra          t1, t2, t5
                  bgeu         t4, tp, 1719f
1700:             xor          s6, t2, t3
1701:             srl          s10, a1, ra
                  or           s1, t1, a3
                  nop
                  add          t6, s5, t6
                  sltiu        s7, tp, 773
                  slti         s0, s0, -1568
                  bgeu         t0, s7, 1716f
                  add          ra, s10, s1
                  lui          a2, 841303
                  or           a6, s10, s11
1711:             slt          t2, s1, s10
                  slt          s6, a5, s10
                  and          s7, s4, a3
                  andi         t2, s7, 257
                  beq          t4, s8, 1721f
1716:             and          t6, tp, zero
                  srai         t1, s10, 14
                  sra          s3, a6, sp
1719:             xori         a6, t5, 49
                  andi         tp, s10, -1719
1721:             sll          s10, zero, a2
                  andi         a2, s6, 647
                  lui          s9, 918901
                  srai         t1, s11, 31
                  andi         a5, s5, 1862
                  srai         t0, t2, 11
                  sll          t6, a2, s8
                  sub          s8, s9, s7
                  bltu         t2, t6, 1740f
                  bge          tp, t2, 1732f
                  nop
1732:             and          a2, t1, s8
                  sub          s6, s8, a2
                  xor          a7, s8, a2
                  sub          a3, ra, s11
                  xori         t1, sp, -884
                  sll          s6, s0, s1
                  srai         s1, s1, 7
                  blt          s8, a0, 1742f
1740:             lui          ra, 298058
                  sub          s0, t6, s5
1742:             nop
                  nop
                  slli         a1, ra, 2
                  ori          zero, a5, 725
                  add          t5, s11, t5
                  xor          s7, t6, s10
                  sll          gp, s8, t5
                  slti         t6, sp, 426
                  srl          gp, a4, t2
                  sltu         s1, a7, a1
                  blt          ra, sp, 1769f
                  addi         s4, s1, 753
                  beq          t2, t0, 1757f
                  add          a7, a1, s11
                  bltu         t6, a4, 1771f
1757:             blt          s0, s2, 1774f
                  slli         a6, t4, 13
                  andi         a7, zero, 1171
                  nop
                  xori         s1, t4, 328
                  or           t3, t0, a3
                  auipc        a3, 258291
                  srl          s10, s10, a7
                  srai         a3, s8, 23
                  or           t6, ra, a7
                  slli         s0, a2, 30
                  xor          s5, s10, s7
1769:             blt          a0, a4, 1774f
                  sub          zero, a7, s7
1771:             sltiu        s5, a2, 670
                  blt          s1, sp, 1782f
                  auipc        t6, 23860
1774:             slli         t3, a0, 9
                  slli         sp, a3, 9
                  sltiu        s7, a1, -1644
                  xori         a2, t2, 418
                  sub          t0, s10, s1
                  lui          t0, 991564
                  beq          a7, s0, 1788f
                  slt          t6, sp, s1
1782:             slli         s4, a7, 26
                  sltiu        s9, sp, -1295
                  blt          t0, t1, 1804f
                  sll          s0, a4, s5
                  blt          ra, s10, 1795f
                  srli         s0, s3, 12
1788:             bgeu         sp, s11, 1796f
                  slt          t4, a2, a5
                  sltu         t4, t1, s9
                  and          a7, t2, t4
                  blt          gp, a1, 1796f
                  addi         s4, t5, 880
                  bne          t1, a5, 1804f
1795:             xori         t3, s1, 1772
1796:             and          t0, s1, t5
                  slli         s1, a0, 21
                  sll          t6, tp, t3
                  sub          sp, a6, s1
                  andi         t2, t6, -59
                  bne          t3, t0, 1810f
                  lui          s9, 207411
                  auipc        t0, 523096
1804:             bgeu         t2, s9, 1822f
                  auipc        sp, 519356
                  lui          a4, 441207
                  bne          s3, ra, 1812f
                  or           gp, s7, s2
                  sltu         t6, s5, t6
1810:             addi         tp, s8, -402
                  add          zero, s0, t1
1812:             auipc        tp, 286611
                  andi         a6, zero, 877
                  sra          s1, s5, s3
                  bne          t3, s3, 1833f
                  beq          zero, a3, 1821f
                  beq          s9, s4, 1825f
                  srli         ra, a3, 11
                  srai         a2, s1, 7
                  auipc        a7, 674928
1821:             slti         s0, s4, 1722
1822:             or           t1, t1, a7
                  sll          s7, s9, a1
                  bge          t0, t4, 1835f
1825:             add          s7, s7, s0
                  blt          a3, a4, 1836f
                  or           a1, t5, s3
                  bgeu         t1, s9, 1834f
                  slt          s4, s10, t6
                  sra          zero, s6, s9
                  bltu         a5, a0, 1833f
                  andi         a5, a1, 818
1833:             srli         sp, s0, 30
1834:             bgeu         s8, a7, 1839f
1835:             or           t3, a5, t3
1836:             or           t3, s0, s10
                  bgeu         s2, t5, 1838f
1838:             sltu         s0, a6, ra
1839:             srl          a7, s11, a1
                  sub          a7, t1, ra
                  beq          s8, s6, 1851f
                  srai         a3, t3, 30
                  and          t6, t0, s2
                  and          ra, tp, s11
                  xor          a6, s1, tp
                  sub          gp, s5, s5
                  sltiu        s10, s7, 374
                  slli         s10, t1, 1
                  srai         s3, a2, 25
                  add          t6, a0, sp
1851:             sltiu        a3, a0, -697
                  sll          a3, sp, a3
                  blt          s2, t4, 1856f
                  add          a1, s4, s3
                  xor          s5, s10, sp
1856:             xori         t2, s6, -1884
                  slt          sp, a2, t2
                  addi         a7, s1, -1927
                  auipc        s10, 824198
                  slt          t0, t5, a5
                  bge          a3, t3, 1877f
                  lui          a4, 496444
                  slt          s6, a7, a3
                  ori          t2, s6, -485
                  slt          s4, t0, s7
                  xori         t5, t6, -826
                  srl          a6, s7, s11
                  sltiu        s7, t3, -308
                  xor          s7, a1, a7
                  beq          a1, gp, 1872f
                  nop
1872:             lui          a2, 899115
                  sltiu        t4, a6, -586
                  lui          t4, 447339
                  sltu         t5, s11, tp
                  bge          s7, s11, 1896f
1877:             and          t4, s5, gp
                  xor          s7, t6, s0
                  bgeu         t6, tp, 1886f
                  andi         a6, a3, -672
                  sltu         gp, s7, a6
                  beq          t5, s3, 1899f
                  and          s10, s4, sp
                  blt          s4, a1, 1893f
                  xor          a4, ra, t1
1886:             lui          a3, 34359
                  or           a6, t3, t3
                  srl          a1, s10, s6
                  nop
                  add          s10, t2, t3
                  bge          a1, s1, 1911f
                  slli         t4, s2, 17
1893:             sub          a1, t2, a3
                  beq          s5, s10, 1911f
                  ori          s8, a7, -1061
1896:             bne          s6, s7, 1911f
                  bge          t6, a3, 1900f
                  slt          tp, a6, a4
1899:             sltiu        s3, a7, 1377
1900:             srli         s9, s4, 17
                  sltiu        s4, t6, 1396
                  andi         a6, t0, -1157
                  nop
                  slli         a2, s4, 13
                  andi         tp, t4, -1659
                  beq          s7, s6, 1912f
                  srl          s9, a6, a3
                  addi         t6, a3, -479
                  xor          t1, s9, s9
                  srli         a5, a7, 8
1911:             and          s7, a6, a0
1912:             srl          s8, tp, a1
                  sub          a4, a4, a3
                  and          sp, s10, s3
                  addi         s3, ra, 1053
                  slt          sp, a1, ra
                  or           s8, a1, ra
                  and          s5, a1, gp
                  beq          s11, s4, 1937f
                  bne          s0, s9, 1928f
                  srli         a7, t4, 9
                  srl          tp, t3, t2
                  bgeu         s8, tp, 1938f
                  bgeu         a3, t3, 1934f
                  beq          s9, s3, 1931f
                  sra          s6, s5, a2
                  bne          s9, s4, 1935f
1928:             nop
                  and          a4, s5, s11
                  or           zero, a3, a5
1931:             blt          zero, s4, 1934f
                  or           t4, s3, s5
                  xor          t5, t0, a7
1934:             slti         a7, tp, 1269
1935:             bne          t6, a4, 1952f
                  lui          s6, 320181
1937:             and          t3, zero, a6
1938:             ori          a1, t0, -98
                  la           sp, region_0+1532 #start riscv_load_store_rand_instr_stream_12
                  lb           a5, 7(sp)
                  lbu          t6, 13(sp)
                  lbu          a7, 11(sp)
                  lbu          a7, 8(sp)
                  sb           a2, -3(sp)
                  sub          s8, a2, s8
                  xori         t2, s1, -712
                  sw           t5, 12(sp)
                  sb           s4, 15(sp)
                  lw           t6, -4(sp)
                  addi         s5, s6, -1524
                  lb           t4, -11(sp)
                  slti         zero, zero, 1782
                  srai         s6, s4, 6
                  sb           t3, -5(sp)
                  lbu          a6, 3(sp)
                  sh           a6, 6(sp)
                  lh           a3, -6(sp)
                  lbu          s9, 15(sp)
                  lbu          a5, -14(sp)
                  lhu          s3, -6(sp)
                  lhu          ra, 16(sp)
                  sub          a4, zero, a7
                  lh           a7, -6(sp)
                  lb           t0, 12(sp)
                  auipc        gp, 158729
                  lhu          a4, 10(sp)
                  srli         t4, s10, 24
                  slti         a7, s0, -1820
                  slt          s10, s1, s6
                  andi         s10, t0, 822
                  sub          t5, s0, a2
                  slli         ra, t3, 1
                  srl          a7, t6, s0
                  lhu          t3, 14(sp)
                  lbu          s10, -9(sp)
                  lhu          s5, 8(sp)
                  sb           a5, -15(sp)
                  nop
                  auipc        s8, 166336
                  lh           t6, 10(sp)
                  add          a3, a2, s5
                  lb           a7, -15(sp)
                  sb           a5, -6(sp)
                  srai         s5, t6, 7
                  lbu          zero, 7(sp)
                  sra          s1, s9, t1
                  lbu          gp, 15(sp)
                  lui          gp, 871519
                  lbu          t1, 15(sp) #end riscv_load_store_rand_instr_stream_12
                  xori         a3, s8, 2030
                  addi         s3, zero, 246
                  srl          s5, s0, t2
                  bgeu         t6, s5, 1944f
                  xori         sp, s10, 1140
1944:             andi         zero, t6, 1245
                  andi         a7, t2, 842
                  bltu         s5, t6, 1952f
                  xori         a7, t0, -769
                  bgeu         sp, a1, 1957f
                  addi         s4, ra, 1727
                  bge          a3, s0, 1952f
                  srl          a2, a3, s9
1952:             ori          t0, a2, -201
                  beq          t4, a4, 1958f
                  sub          s9, t1, s4
                  nop
                  slli         s1, t0, 13
1957:             bltu         tp, a0, 1972f
1958:             andi         s3, t2, 464
                  srai         t2, a4, 12
                  xor          t2, t5, s8
                  srl          s5, ra, s8
                  slti         ra, s10, 1694
                  nop
                  sra          a4, ra, s0
                  bgeu         a2, tp, 1983f
                  slti         t2, ra, -538
                  srl          s7, s8, t0
                  slli         s10, ra, 26
                  auipc        tp, 990745
                  slli         s6, a2, 23
                  sub          s1, a4, t1
1972:             slli         zero, s2, 8
                  srl          a5, t2, t1
                  slt          s9, s3, sp
                  srl          a4, t0, s10
                  lui          s6, 764025
                  srli         s0, a2, 25
                  add          a4, s1, s3
                  bltu         s8, ra, 1996f
                  srli         a5, s6, 23
                  slti         gp, tp, 1001
                  beq          t1, t1, 1997f
1983:             auipc        t3, 255809
                  srai         a7, s2, 31
                  ori          t4, t5, -619
                  sltu         s1, s8, a1
                  sra          t5, a6, tp
                  xori         s9, a3, -766
                  ori          a1, s7, 302
                  xori         a7, s10, 780
                  srai         tp, s2, 10
                  xori         t6, s4, 130
                  bgeu         a4, t0, 1997f
                  sltiu        s7, s6, -1512
                  lui          t2, 973232
1996:             bgeu         a3, s11, 2006f
1997:             srl          t3, t4, s11
                  add          zero, t5, s2
                  bgeu         ra, t5, 2004f
                  and          gp, a5, s6
                  sltiu        ra, tp, 1497
                  addi         a3, s7, 1597
                  sll          a6, a7, sp
2004:             ori          a4, s7, -87
                  add          s1, zero, s11
2006:             srl          a2, s9, t4
                  lui          a6, 925764
                  xori         a7, a1, 1777
                  bltu         a3, gp, 2027f
                  ori          sp, t1, -583
                  auipc        s7, 572216
                  sltiu        ra, s6, -1267
                  sltiu        s1, a3, -1265
                  nop
                  sll          s7, s0, tp
                  bltu         s9, a3, 2024f
                  sub          tp, t2, t1
                  or           t4, t1, t5
                  sltu         a4, s0, s7
                  auipc        t3, 568425
                  and          t3, s10, t3
                  xori         s0, a0, -369
                  bne          a6, s7, 2030f
2024:             add          a4, a4, zero
                  auipc        tp, 589871
                  beq          s10, s3, 2037f
2027:             blt          s11, a0, 2043f
                  srl          sp, t2, s10
                  and          a3, t5, a7
2030:             sll          s5, a4, a6
                  srl          a4, a3, t0
                  sra          a6, t4, zero
                  addi         s1, s1, 1160
                  lui          t0, 305944
                  sll          sp, a3, s6
                  srli         zero, t4, 29
2037:             slt          ra, a0, t0
                  srai         s10, s9, 29
                  xori         s1, s8, -1190
                  auipc        t6, 578923
                  srai         t3, s10, 5
                  lui          t3, 815351
2043:             slt          sp, s6, ra
                  lui          tp, 216106
                  slti         zero, zero, -562
                  lui          ra, 46173
                  and          s5, s11, t0
                  srl          t0, s1, a6
                  xori         s3, t2, 137
                  sltu         s8, s6, s10
                  lui          s0, 950352
                  bltu         s2, tp, 2072f
                  add          s0, s4, tp
                  sra          t5, s3, s11
                  sra          sp, s0, s5
                  sltu         s9, t6, t2
                  srli         t2, s9, 21
                  auipc        s5, 696134
                  sll          s9, s9, a5
                  bltu         sp, s10, 2063f
                  lui          s1, 1035373
                  srli         gp, t5, 14
2063:             nop
                  bne          tp, t1, 2082f
                  or           s9, s10, a4
                  sll          s5, a5, t4
                  srli         s1, s3, 1
                  bgeu         t5, t3, 2078f
                  nop
                  sra          s1, s2, s7
                  and          t2, s1, s3
2072:             or           s6, a7, a0
                  xor          t3, s4, a1
                  blt          s3, s10, 2075f
2075:             and          s8, s10, s5
                  addi         s0, t2, 621
                  andi         s4, t4, 1930
2078:             andi         s10, a0, -1209
                  srl          s10, a0, s4
                  sltu         a4, s1, tp
                  beq          t6, s11, 2090f
2082:             srl          s3, t5, s9
                  bne          s3, t5, 2103f
                  beq          a7, ra, 2089f
                  nop
                  and          a6, zero, s9
                  sltu         s6, ra, t6
                  bgeu         a4, t2, 2096f
2089:             bgeu         s8, t3, 2095f
2090:             and          gp, a0, tp
                  bltu         s3, a2, 2095f
                  sub          gp, gp, a0
                  and          s7, a7, a7
                  srl          s8, s5, tp
2095:             bgeu         ra, s7, 2097f
2096:             beq          s9, s10, 2103f
2097:             addi         t4, t5, 1492
                  sub          t4, tp, t2
                  add          zero, s2, t3
                  add          tp, t4, s1
                  srl          a3, a1, s1
                  slt          zero, a6, a6
2103:             srl          a3, a3, a7
                  bltu         t4, t0, 2124f
                  srl          ra, s8, t4
                  addi         s4, s11, -656
                  sra          tp, a2, t6
                  sll          a6, s7, a0
                  bge          t0, t6, 2118f
                  or           s7, sp, sp
                  bge          a7, t0, 2129f
                  or           t4, t6, t4
                  addi         a7, s7, -1908
                  bltu         ra, a4, 2120f
                  srai         a3, a7, 19
                  srl          sp, a4, s8
                  add          a1, a7, a3
2118:             auipc        t0, 860449
                  nop
2120:             sub          a6, s11, ra
                  slti         s10, a6, 1213
                  srl          t6, a1, s7
                  and          s1, a2, s4
2124:             beq          sp, s2, 2134f
                  bgeu         s0, zero, 2133f
                  addi         s10, a7, -1828
                  sub          t5, zero, a0
                  ori          ra, s6, 1264
2129:             blt          s10, t3, 2134f
                  sra          t2, t4, t0
                  srl          t3, a6, a3
                  xori         t5, s9, 673
2133:             bge          a6, zero, 2151f
2134:             nop
                  andi         s10, a1, -1609
                  ori          a4, a6, 373
                  sltiu        a5, a2, -927
                  beq          zero, t5, 2153f
                  sltu         s4, t5, ra
                  sltu         t0, sp, a7
                  auipc        a3, 968160
                  xor          s6, s2, sp
                  lui          s4, 702114
                  slti         s10, s10, 1578
                  slti         a6, s7, -1588
                  slli         s3, s0, 13
                  auipc        s1, 160692
                  and          s0, sp, tp
                  nop
                  srai         a4, s11, 16
2151:             slt          s9, s4, t6
                  bge          a3, sp, 2157f
2153:             sltu         s10, s10, t1
                  slt          a7, ra, sp
                  sltu         s5, s0, s11
                  sll          zero, t1, s10
2157:             slli         s0, s9, 7
                  bge          s8, a0, 2164f
                  srai         a4, s4, 1
                  addi         s1, s2, -1231
                  sltiu        a4, t6, 213
                  sltiu        zero, s0, 121
                  add          a4, s6, tp
2164:             sra          s8, a7, gp
                  nop
                  slt          sp, ra, s7
                  lw           s0, 4(s2)
                  sltiu        a5, a4, 569
                  addi         s2, s2, 28
                  slt          zero, a2, s2
2939:             addi x25, x8, 1
2939:             jalr x25, x25, 0
sub_4:            addi         s2, s2, -48
                  lui          s8, 68410
                  sw           s0, 4(s2)
                  xori         a4, a5, 1712
                  xor          sp, s11, s0
                  la           sp, region_0+1041 #start riscv_load_store_rand_instr_stream_0
                  add          tp, a2, a4
                  sll          a3, zero, s4
                  slli         t2, a6, 8
                  sh           s10, 7(sp)
                  sh           s3, -3(sp)
                  sltiu        t4, t5, -832
                  lb           gp, 5(sp)
                  srai         gp, a7, 23
                  slli         a2, a7, 11
                  srli         t5, t5, 8
                  lhu          s0, -5(sp)
                  srai         a3, t6, 23
                  and          ra, a1, s3
                  sw           s2, -5(sp)
                  lb           s1, 6(sp)
                  lbu          t0, 5(sp)
                  add          s9, t1, gp
                  addi         a6, t6, 826
                  lbu          tp, -8(sp)
                  or           a3, t3, a2
                  sb           s0, 9(sp)
                  srl          s10, a3, s9
                  slt          a5, t0, s9
                  sb           zero, 8(sp)
                  sltu         s5, a3, s6
                  sw           s4, 11(sp)
                  sb           t3, -16(sp)
                  sh           s10, -9(sp)
                  lb           zero, 16(sp)
                  xori         s6, ra, -839
                  sb           a0, -5(sp)
                  sltiu        a5, a2, -1123
                  lh           a1, 11(sp)
                  lbu          t1, -9(sp)
                  srl          t0, a7, s5
                  srli         a6, s10, 19
                  lbu          a1, 5(sp)
                  lw           s10, -13(sp)
                  lb           a2, -14(sp) #end riscv_load_store_rand_instr_stream_0
                  bltu         t6, t0, 2f
                  beq          s10, a1, 8f
2:                add          t5, a2, ra
                  xor          tp, t0, s1
                  slt          t4, s5, t0
                  auipc        s10, 171062
                  sra          s9, a5, s3
                  xori         a4, t1, 1733
8:                bne          t2, t0, 11f
                  sltiu        gp, a6, -690
                  xori         t1, a2, -279
11:               bge          a7, a6, 31f
                  bgeu         s9, t5, 31f
                  blt          t2, s5, 19f
                  srli         t5, t4, 31
                  sltiu        t5, t5, 552
                  bge          sp, t1, 21f
                  and          a1, t0, a5
                  beq          s8, t2, 23f
19:               xor          t4, a1, s9
                  ori          s5, s11, -792
21:               add          a3, t2, gp
                  xori         s10, gp, -1349
23:               ori          sp, t2, -282
                  or           s9, s1, a1
                  bltu         gp, a4, 45f
                  addi         s1, s6, 717
                  bgeu         a6, t5, 37f
                  sltu         s1, t2, ra
                  sll          t0, a7, a0
                  or           s0, s5, a4
31:               bgeu         zero, t2, 33f
                  auipc        t4, 712200
33:               sltu         t0, ra, s11
                  sltu         t2, a3, s9
                  and          a7, a6, sp
                  and          ra, zero, a2
37:               or           sp, s1, t0
                  sll          t1, s10, t0
                  sra          t1, zero, s10
                  sra          a6, a2, s0
                  slti         a7, tp, -378
                  blt          t5, t0, 54f
                  srl          s8, t5, s4
                  srai         a2, t6, 15
45:               ori          s5, a1, 1945
                  andi         t1, gp, 389
                  beq          s7, a2, 59f
                  sub          s6, s1, sp
                  bge          a5, gp, 66f
                  srli         a1, ra, 7
                  blt          s2, a0, 60f
                  xor          t6, gp, s9
                  auipc        s5, 660735
54:               sll          a6, sp, tp
                  and          s9, t5, t1
                  bltu         s4, s11, 75f
                  and          a6, s2, s7
                  xori         a2, a4, 664
59:               slt          s6, s2, a0
60:               slli         s9, s8, 7
                  sltu         a4, a4, s3
                  slt          t5, s0, s7
                  bge          gp, s9, 79f
                  slti         s6, s4, -703
                  slli         tp, s0, 28
66:               sll          a7, s4, s0
                  slli         t1, s3, 8
                  bge          sp, a6, 74f
                  sub          a7, s3, s1
                  xori         a4, s8, 725
                  slt          s6, t5, s7
                  xor          t4, a2, s1
                  sltu         s0, s7, t0
74:               bgeu         tp, t6, 83f
75:               sub          a7, s10, a4
                  slli         tp, tp, 9
                  slti         a6, t1, 958
                  sltu         zero, s6, s6
79:               andi         t5, s9, 747
                  sll          s3, t4, a2
                  srli         s3, s10, 19
                  bltu         tp, a4, 101f
83:               addi         t3, a3, -1884
                  slti         s10, sp, 1581
                  slti         s1, s4, 1412
                  sltiu        s5, a2, -2029
                  srai         s10, a7, 2
                  lui          a7, 13957
                  ori          a6, ra, -2047
                  srl          s10, s5, s9
                  srai         s8, a7, 22
                  bltu         s11, s5, 98f
                  sltu         t3, a7, s1
                  addi         a1, t0, 1434
                  and          a7, t2, s5
                  and          a4, a4, a1
                  auipc        s10, 292543
98:               add          a7, s11, a7
                  srai         zero, s6, 13
                  xori         ra, a6, 1706
101:              and          ra, a0, t1
                  blt          t0, t3, 118f
                  sltiu        tp, s2, 1842
                  sltu         s6, a0, s10
                  bltu         a0, t1, 125f
                  slti         t5, s8, 379
                  blt          ra, s1, 124f
                  xori         a7, a3, 1445
                  sltiu        s1, a0, -1529
                  slti         a3, s4, -1769
                  blt          t3, s5, 113f
                  sltiu        t3, gp, -1884
113:              bne          gp, s0, 124f
                  srai         tp, t3, 11
                  lui          s10, 230051
                  nop
                  bgeu         s2, s9, 120f
118:              nop
                  sltu         t0, t0, s11
120:              srai         s8, t5, 18
                  xor          t4, zero, t2
                  sltiu        a3, a2, 4
                  xori         a4, a7, -1801
124:              add          gp, s6, s11
125:              srai         t1, s11, 27
                  and          t3, s1, t4
                  bne          a4, a6, 140f
                  srli         a3, gp, 21
                  lui          s8, 269354
                  srai         a3, s1, 24
                  srl          sp, t5, s8
                  andi         t0, s11, -429
                  xori         a6, a6, 1187
                  srl          t4, tp, s10
                  addi         s7, a2, -1804
                  and          t0, t5, a6
                  bltu         s10, s5, 154f
                  srai         a7, tp, 5
                  bgeu         s10, s6, 149f
140:              andi         s0, s7, 920
                  lui          a3, 435891
                  addi         a2, tp, -1859
                  bgeu         ra, gp, 149f
                  sra          a2, s6, a4
                  beq          sp, a3, 158f
                  bge          sp, gp, 157f
                  srai         a6, s5, 14
                  and          s1, a0, a6
149:              auipc        a1, 364064
                  bge          t5, a0, 160f
                  beq          tp, a6, 167f
                  bge          s10, t4, 154f
                  la           sp, region_1+651 #start riscv_load_store_rand_instr_stream_1
                  ori          s5, a1, -487
                  lb           s9, 690(sp)
                  sll          s9, t3, s7
                  xor          s9, t4, ra
                  lbu          s0, 268(sp)
                  sll          a5, ra, a0
                  lhu          s0, 911(sp)
                  lb           t0, 203(sp)
                  sb           s3, 670(sp)
                  sb           s7, -303(sp)
                  lhu          a4, 661(sp)
                  lh           a2, -271(sp)
                  sltiu        a4, a7, 672
                  lbu          s5, 154(sp)
                  addi         s6, s7, -614
                  sb           s8, 212(sp)
                  lbu          t3, -300(sp)
                  sb           s10, 562(sp)
                  srl          a3, s5, t5
                  sb           s0, -88(sp)
                  sll          s7, a5, a2
                  sh           s8, -391(sp)
                  lb           a6, -334(sp)
                  lbu          a4, -66(sp)
                  add          gp, s4, t6
                  sll          t0, a1, s5
                  lhu          zero, 635(sp)
                  lhu          s7, 939(sp)
                  lh           t1, 539(sp)
                  sb           a3, 72(sp)
                  lbu          zero, 1082(sp)
                  ori          a1, zero, -1160
                  sb           t2, 1112(sp)
                  lbu          s7, -190(sp)
                  sw           a2, 629(sp)
                  lb           s3, 389(sp)
                  sh           s1, 41(sp)
                  lbu          s10, -406(sp)
                  sh           s6, 95(sp) #end riscv_load_store_rand_instr_stream_1
                  nop
154:              auipc        sp, 604626
                  bne          s3, t2, 165f
                  add          s1, t1, a0
157:              blt          t2, t4, 177f
158:              bgeu         t5, s5, 165f
                  sra          t3, a1, s0
160:              bne          t5, a5, 162f
                  bne          t1, s2, 180f
162:              add          gp, sp, t6
                  srli         s6, s5, 31
                  nop
165:              nop
                  sra          s4, t3, t4
167:              slli         s7, s2, 18
                  bne          s5, sp, 187f
                  ori          s4, s8, 149
                  bge          s6, a1, 186f
                  sub          t5, t6, s11
                  andi         s10, a0, 2
                  bne          a5, t1, 193f
                  or           s4, s1, s10
                  beq          s5, a0, 177f
                  srli         t5, s2, 11
177:              bltu         sp, zero, 186f
                  sra          t4, a6, a5
                  sltiu        a7, t0, 203
180:              bltu         s2, s2, 197f
                  srli         a7, t2, 10
                  sll          a7, t2, zero
                  srli         t3, s6, 11
                  blt          t0, s3, 204f
                  slli         a2, a0, 28
186:              sra          gp, sp, a7
187:              slli         a1, zero, 20
                  sra          t0, gp, t1
                  sll          sp, s0, a6
                  srl          s9, tp, gp
                  addi         a6, a3, 879
                  sub          sp, a6, s11
193:              bne          t6, s0, 205f
                  add          t2, s1, s4
                  bge          s2, tp, 200f
                  sra          s3, a4, t6
197:              xor          s3, s2, t6
                  srl          s3, s6, gp
                  bgeu         s3, a7, 211f
200:              slt          t4, s10, s8
                  srai         s6, a6, 14
                  slti         a6, s3, 494
                  beq          s7, t0, 206f
204:              sll          t0, s1, ra
205:              addi         ra, s9, -69
206:              sll          t0, zero, a1
                  blt          tp, t3, 224f
                  add          a2, s3, a4
                  bne          t0, t4, 218f
                  slli         a6, s9, 1
211:              xori         s7, s2, 1684
                  bge          a4, a6, 215f
                  slli         s8, gp, 20
                  bltu         zero, t5, 220f
215:              bge          t0, t4, 234f
                  ori          s6, t5, 904
                  slli         t1, t5, 27
218:              bgeu         t5, t1, 224f
                  auipc        s5, 1010611
220:              srli         s3, s0, 22
                  xor          t5, a6, gp
                  andi         t3, t0, -1015
                  slti         sp, t1, 188
224:              srl          s9, s7, s3
                  and          s4, t1, t0
                  xori         s4, s6, 409
                  sub          a7, s7, a2
                  and          t2, t5, a6
                  xori         a3, a1, -1317
                  bne          s10, gp, 235f
                  srli         t4, a0, 26
                  slli         a6, s7, 5
                  blt          s5, s3, 250f
234:              srai         t6, t6, 11
235:              srai         ra, gp, 29
                  bltu         s5, gp, 252f
                  bgeu         s0, s0, 252f
                  bne          t5, a1, 252f
                  or           a4, t6, tp
                  slt          a5, tp, t0
                  bne          s7, t1, 243f
                  bge          zero, ra, 248f
243:              srli         ra, sp, 19
                  srli         s4, s5, 28
                  slt          a3, t0, a3
                  add          tp, a5, t4
                  bgeu         t0, s10, 250f
248:              sltiu        s5, a4, -767
                  xor          t5, s3, a2
250:              add          zero, s8, t4
                  xor          s5, s5, sp
252:              sra          a4, a7, t0
                  or           s4, s8, t1
                  slti         a6, a3, -510
                  lw           s0, 4(s2)
                  xori         a1, a1, -497
                  auipc        s8, 734608
                  xor          s4, s6, a0
                  addi         s2, s2, 48
                  slli         t5, s3, 3
                  sltiu        a2, s8, -1938
                  and          s9, a0, t3
348:              addi x28, x8, 1
348:              jalr x28, x28, 0
sub_3:            slt          a4, tp, a6
                  bltu         a2, s1, sub_3_stack_p
                  sub          a2, sp, t4
                  add          tp, s11, a4
sub_3_stack_p:    addi         s2, s2, -40
                  sw           s0, 4(s2)
                  sll          s9, s2, t5
                  or           a3, s4, s4
                  sub          a1, a4, s3
                  xori         s4, s9, 241
                  addi         t4, s8, -1192
                  sltiu        tp, sp, 1795
                  add          t6, t5, t3
sub_3_j7:         jal          s0, sub_5 #jump sub_3 -> sub_5
                  la           a4, region_1+1324 #start riscv_load_store_rand_instr_stream_0
                  lbu          s4, -49(a4)
                  slt          a7, tp, t0
                  lbu          zero, -62(a4)
                  addi         t6, t3, 1678
                  slli         s10, a1, 29
                  sb           t5, -7(a4)
                  and          s1, s7, s3
                  slti         tp, s5, -603
                  lbu          tp, 27(a4)
                  sb           gp, -2(a4)
                  sll          a1, t3, t2
                  srai         ra, t4, 27
                  addi         a3, s6, -1100
                  auipc        s6, 503088
                  sw           s11, -16(a4)
                  sra          s3, ra, s0
                  andi         t5, s2, 667
                  lbu          s5, 43(a4)
                  sb           zero, 41(a4)
                  xori         t5, t1, 446
                  sb           s4, -37(a4)
                  or           t2, a1, s2
                  sb           a5, 15(a4)
                  sra          a3, a2, s7
                  nop
                  lb           t3, 50(a4)
                  lw           s3, 8(a4)
                  srli         t2, s10, 3
                  xori         t6, a4, -1608
                  nop
                  lb           tp, 23(a4)
                  sll          s1, a5, a1
                  or           a2, s0, s2
                  nop
                  and          s1, a7, s4
                  xor          t3, tp, a6
                  and          s3, s11, a6
                  lb           t6, 36(a4)
                  lh           t1, -54(a4)
                  auipc        a1, 51063
                  slt          s0, t6, gp
                  sb           t4, 28(a4)
                  or           s6, ra, gp
                  lbu          a2, -59(a4)
                  lb           a2, 59(a4)
                  slti         gp, s0, 1076
                  lbu          s10, 55(a4) #end riscv_load_store_rand_instr_stream_0
                  srli         s10, t2, 22
                  bge          zero, a6, 13f
                  slt          a6, a7, s5
                  bne          t4, s1, 21f
                  addi         s10, a3, 697
                  lui          s10, 740936
                  sltiu        t0, t3, -455
                  sub          gp, s11, s0
                  slli         s8, s5, 12
                  lui          a4, 844061
                  srli         t4, tp, 12
                  nop
                  slli         s5, gp, 2
13:               blt          a3, s6, 26f
                  auipc        s9, 386503
                  bne          s10, s6, 26f
                  beq          s8, ra, 28f
                  sltu         s10, gp, sp
                  xori         ra, t4, -977
                  sub          t5, s3, a2
                  bgeu         a0, t6, 23f
21:               nop
                  auipc        t6, 993843
23:               srai         a4, s4, 5
                  sltiu        ra, s2, 415
                  bgeu         a4, s10, 34f
26:               srli         a3, gp, 23
                  lui          a4, 582971
28:               add          t5, t0, t0
                  bltu         s3, s9, 45f
                  srli         s7, s1, 2
                  sll          a3, a2, t5
                  blt          sp, t3, 42f
                  xori         zero, a6, 1786
34:               sltu         s4, s2, ra
                  slt          t5, t0, t2
                  add          t5, s9, t1
                  srl          s0, zero, s1
                  xori         sp, s11, 1210
                  or           sp, a0, a3
                  andi         t5, a0, 702
                  sub          t0, s0, s10
42:               sub          s4, s8, a6
                  auipc        t5, 732479
                  bne          tp, t5, 60f
45:               beq          t3, t3, 59f
                  slti         ra, s11, -647
                  srli         s4, t4, 9
                  blt          s10, gp, 56f
                  sra          s5, s2, s0
                  or           a7, a2, s1
                  lui          t2, 231528
                  add          a6, a4, t6
                  bltu         a1, t3, 62f
                  andi         s5, a2, 470
                  sub          a7, a5, gp
56:               andi         a1, t3, 1306
                  srl          s9, gp, s5
                  xori         t1, a4, -292
59:               xor          zero, s9, s6
60:               bgeu         s0, a3, 71f
                  ori          t3, s7, 1157
62:               bgeu         a1, tp, 70f
                  add          a4, ra, a5
                  bltu         s3, zero, 75f
                  add          s8, sp, s2
                  lui          ra, 199570
                  slli         s0, t5, 20
                  bge          t4, a0, 78f
                  sltiu        a6, zero, -1042
70:               lui          a1, 626838
71:               sll          a6, t1, a7
                  srli         a1, t0, 4
                  nop
                  sltu         a5, t1, s9
75:               sltiu        s8, s2, 1583
                  beq          s2, s2, 96f
                  xor          t1, s0, t0
78:               ori          s3, tp, 603
                  slti         s5, s9, 1328
                  bne          a5, a6, 84f
                  auipc        t5, 594748
                  blt          t4, t4, 95f
                  sltiu        a5, tp, -1557
84:               sll          s4, s10, s3
                  nop
                  sra          s9, s2, t3
                  sub          a4, s2, t1
                  sltiu        ra, a4, 1113
                  bgeu         t0, t0, 100f
                  bne          a5, sp, 96f
                  slt          sp, s11, s10
                  xori         t1, s5, -1116
                  auipc        a6, 56762
                  or           t0, a0, zero
95:               ori          s9, t3, 991
96:               xor          a4, s7, t2
                  and          zero, a4, a3
                  auipc        t6, 303737
                  slti         gp, s1, -652
100:              xori         s0, s2, 307
                  sltiu        s5, t1, -262
                  slti         s1, s11, 494
                  bltu         a3, s9, 108f
                  slli         t6, s7, 25
                  bge          s2, t5, 125f
                  sltu         gp, t6, a1
                  ori          a2, a0, 287
108:              slli         s4, s8, 4
                  bge          a0, s8, 115f
                  sll          s0, s0, s2
                  xori         s10, t2, 920
                  bgeu         s4, s5, 129f
                  srl          s4, s8, t0
                  srai         s4, a3, 14
115:              lui          s7, 718073
                  sltiu        t3, t2, 1725
                  srai         a3, t6, 27
                  and          a3, s7, tp
                  sub          s0, t5, a2
                  xori         s8, a1, -101
                  slti         ra, s0, -1471
                  xori         tp, a7, 1580
                  bgeu         a5, gp, 129f
                  sltu         tp, t4, t2
125:              bgeu         a1, tp, 132f
                  srli         zero, s9, 18
                  srai         s9, s2, 5
                  slti         a7, ra, -890
129:              lui          s10, 1012013
                  bne          t3, s6, 145f
                  xor          s9, s8, ra
132:              srl          a2, s8, a1
                  bltu         s6, s0, 147f
                  slt          s7, gp, s3
                  srli         s9, s10, 0
                  or           t1, s11, zero
                  beq          a7, s1, 152f
                  xor          s4, a7, a6
                  slli         t1, t2, 16
                  srai         s10, gp, 12
                  auipc        s8, 487243
                  xori         s6, a0, 196
                  lui          s3, 743303
                  slti         t3, s9, -24
145:              slli         sp, t5, 16
                  or           s9, s7, t6
147:              add          a2, ra, s7
                  blt          t6, s3, 152f
                  andi         s6, s1, -322
                  andi         gp, s2, -734
                  xor          t5, s2, a1
152:              ori          t2, a0, 1740
                  slti         a4, t3, -1874
                  auipc        a6, 411738
                  slt          t0, ra, s1
                  lw           s0, 4(s2)
                  addi         s2, s2, 40
                  nop
                  or           t5, s9, s5
                  sra          s6, t5, gp
223:              addi x25, x8, 1
223:              jalr x25, x25, 0
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
                  add x10, x18, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_2:
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
                  add x10, x18, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_3:
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
                  add x10, x18, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_4:
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
                  add x10, x18, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_5:
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
                  add x10, x18, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_6:
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
                  add x10, x18, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_7:
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
                  add x10, x18, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_8:
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
                  add x10, x18, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_9:
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
                  add x10, x18, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_10:
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
                  add x10, x18, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_11:
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
                  add x10, x18, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_12:
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
                  add x10, x18, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_13:
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
                  add x10, x18, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_14:
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
                  add x10, x18, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

mmode_intr_vector_15:
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
                  add x10, x18, zero
                  csrr x15, 0x342 # MCAUSE
                  srli x15, x15, 0x1f
                  beqz x15, 1f
                  j mmode_intr_handler
                  1: la x27, test_done
                  jalr x0, x27, 0

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
                  add x10, x18, zero
                  csrr x15, 0x341 # MEPC
                  csrr x15, 0x342 # MCAUSE
                  li x6, 0x3 # BREAKPOINT
                  beq x15, x6, ebreak_handler
                  li x6, 0x8 # ECALL_UMODE
                  beq x15, x6, ecall_handler
                  li x6, 0x9 # ECALL_SMODE
                  beq x15, x6, ecall_handler
                  li x6, 0xb # ECALL_MMODE
                  beq x15, x6, ecall_handler
                  li x6, 0x1
                  beq x15, x6, instr_fault_handler
                  li x6, 0x5
                  beq x15, x6, load_fault_handler
                  li x6, 0x7
                  beq x15, x6, store_fault_handler
                  li x6, 0xc
                  beq x15, x6, pt_fault_handler
                  li x6, 0xd
                  beq x15, x6, pt_fault_handler
                  li x6, 0xf
                  beq x15, x6, pt_fault_handler
                  li x6, 0x2 # ILLEGAL_INSTRUCTION
                  beq x15, x6, illegal_instr_handler
                  csrr x6, 0x343 # MTVAL
                  1: la x27, test_done
                  jalr x1, x27, 0

ecall_handler:    
                  la x15, _start
                  sw x0, 0(x15)
                  sw x1, 4(x15)
                  sw x2, 8(x15)
                  sw x3, 12(x15)
                  sw x4, 16(x15)
                  sw x5, 20(x15)
                  sw x6, 24(x15)
                  sw x7, 28(x15)
                  sw x8, 32(x15)
                  sw x9, 36(x15)
                  sw x10, 40(x15)
                  sw x11, 44(x15)
                  sw x12, 48(x15)
                  sw x13, 52(x15)
                  sw x14, 56(x15)
                  sw x15, 60(x15)
                  sw x16, 64(x15)
                  sw x17, 68(x15)
                  sw x18, 72(x15)
                  sw x19, 76(x15)
                  sw x20, 80(x15)
                  sw x21, 84(x15)
                  sw x22, 88(x15)
                  sw x23, 92(x15)
                  sw x24, 96(x15)
                  sw x25, 100(x15)
                  sw x26, 104(x15)
                  sw x27, 108(x15)
                  sw x28, 112(x15)
                  sw x29, 116(x15)
                  sw x30, 120(x15)
                  sw x31, 124(x15)
                  la x27, write_tohost
                  jalr x0, x27, 0

instr_fault_handler:
                  add x18, x10, zero
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
                  add x18, x10, zero
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
                  add x18, x10, zero
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
                  csrr  x15, 0x341
                  addi  x15, x15, 4
                  csrw  0x341, x15
                  add x18, x10, zero
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
                  csrr  x15, 0x341
                  addi  x15, x15, 4
                  csrw  0x341, x15
                  add x18, x10, zero
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
                  csrr  x15, 0x300 # MSTATUS;
                  csrr  x15, 0x304 # MIE;
                  csrr  x15, 0x344 # MIP;
                  csrrc x15, 0x344, x15 # MIP;
                  add x18, x10, zero
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
