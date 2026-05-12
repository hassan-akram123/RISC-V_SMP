.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x5, h0_start
jalr x0, x5, 0
h0_start:
                  li x19, 0x40000100
                  csrw 0x301, x19
kernel_sp:        
                  la x16, kernel_stack_end

trap_vec_init:    
                  la x19, mtvec_handler
                  ori x19, x19, 1
                  csrw 0x305, x19 # MTVEC

mepc_setup:       
                  la x19, init
                  csrw 0x341, x19

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x19, 0x1800
                  csrw 0x300, x19 # MSTATUS
                  mret
init:             
                  li x0, 0x3
                  li x1, 0x80000000
                  li x2, 0x0
                  li x3, 0x0
                  li x4, 0xf27ee1bd
                  li x5, 0x419334b
                  li x6, 0xf3c5670b
                  li x7, 0x0
                  li x8, 0x0
                  li x9, 0x80000000
                  li x10, 0x62f0728b
                  li x11, 0x0
                  li x12, 0xd
                  li x13, 0xb585134a
                  li x14, 0xf5aa1f4b
                  li x15, 0xfcbf862f
                  li x17, 0x80000000
                  li x18, 0x0
                  li x19, 0xafdb71a9
                  li x20, 0xf612e088
                  li x21, 0x58be0e19
                  li x22, 0x0
                  li x23, 0x80000000
                  li x24, 0xadc8a37e
                  li x25, 0x631f129f
                  li x26, 0x0
                  li x27, 0x0
                  li x28, 0x80000000
                  li x29, 0xc
                  li x30, 0xb
                  la x31, user_stack_end
main:             srl          s5, a6, s4
                  add          t5, s9, s3
                  la           t4, sub_1
                  srl          s7, s7, t2
                  add          s6, gp, a3
                  sltiu        s9, s6, -105
                  add          zero, s11, t5
                  addi         t4, t4, -569
                  slt          s0, ra, t2
                  bltu         s5, s11, main_j2 #branch to jump instr
                  lui          s5, 724131
main_j2:          jalr         t1, t4, 569 #jump main -> sub_1
                  la           sp, region_1+816 #start riscv_load_store_rand_instr_stream_0
                  and          s6, a4, s0
                  sb           a0, 0(sp)
                  sh           a3, -28(sp)
                  xor          s9, s8, zero
                  sh           s10, -230(sp)
                  sb           s11, -73(sp)
                  lb           s7, 193(sp)
                  lh           t5, -74(sp)
                  slt          s4, a1, t1
                  sll          t4, s8, s6
                  slt          s4, s11, a2
                  lbu          a2, 207(sp)
                  slli         t1, s4, 16
                  sw           t1, 224(sp)
                  lui          s1, 1012075
                  srli         s1, a2, 8
                  lh           a3, 6(sp)
                  sub          a1, s0, tp
                  sll          t5, s1, s7
                  sltiu        s10, t4, -387
                  auipc        t1, 589419
                  sh           sp, -190(sp) #end riscv_load_store_rand_instr_stream_0
                  slli         zero, t0, 22
                  sll          sp, a2, t6
                  sub          s9, a4, a5
                  bne          a4, s1, 21f
                  slt          t3, s1, t5
                  xor          a3, s6, s2
                  bge          t3, zero, 15f
                  bltu         s8, s10, 13f
                  xori         a1, a2, -7
                  lui          a0, 528964
                  xor          t4, zero, s3
                  sll          sp, a6, gp
                  la           a4, sub_1
                  srai         t5, s7, 22
                  addi         a4, a4, -549
                  sltu         gp, t4, s6
                  srai         t1, s6, 13
                  slli         a2, t0, 18
                  slt          sp, s6, s1
                  addi         s3, s6, 605
                  beq          t1, a4, main_j1 #branch to jump instr
                  andi         a3, t5, 1497
main_j1:          jalr         t1, a4, 549 #jump main -> sub_1
                  blt          sp, a4, 12f
12:               sltiu        a7, s7, 1649
13:               beq          s9, a0, 30f
                  sltiu        s9, s8, -660
15:               sltu         t2, t0, s6
                  sll          t4, s7, s8
                  xori         s11, s6, 1652
                  bgeu         s8, t6, 38f
                  beq          a4, s2, 35f
                  sltu         s11, s11, a0
21:               xori         a7, s0, -655
                  bne          s10, s8, 38f
                  slti         zero, t6, -689
                  slli         s8, t2, 13
                  and          s6, t1, s4
                  auipc        s7, 335708
                  slti         sp, gp, -1556
                  slli         ra, a2, 22
                  xori         a3, t6, 122
30:               sll          a7, a3, s3
                  srli         gp, a2, 0
                  sra          s11, a4, sp
                  beq          tp, s9, 38f
                  andi         a3, s9, 1770
35:               srl          t5, t3, a7
                  or           s1, t0, s8
                  slli         a7, s7, 21
38:               sltu         a4, zero, a0
                  bne          zero, s7, 50f
                  bltu         t4, a7, 58f
                  nop
                  srl          a2, a7, t1
                  add          sp, t0, sp
                  ori          sp, s8, 13
                  ori          a7, t1, -1868
                  bne          s3, s6, 62f
                  sltiu        t1, s8, 1027
                  xor          a2, a5, s3
                  addi         a7, t5, 1282
50:               sub          gp, ra, t2
                  srl          gp, t0, a2
                  bne          s10, s7, 55f
                  srli         s6, a4, 16
                  nop
55:               srli         s8, ra, 10
                  bltu         a1, a4, 66f
                  add          gp, s3, s10
58:               xor          t2, a2, s10
                  sll          s7, t6, a4
                  bltu         s10, t5, 78f
                  blt          a7, s4, 71f
62:               sub          a7, a3, t2
                  auipc        t2, 193237
                  sll          s1, ra, s10
                  or           a0, t2, t3
66:               srl          a3, t6, s9
                  bgeu         t1, a3, 80f
                  bge          s9, t3, 70f
                  add          a4, s0, sp
70:               srl          t3, s5, a1
71:               nop
                  bge          s7, a6, 73f
73:               or           t1, a0, a5
                  xor          t4, t1, s2
                  sra          a0, a4, a5
                  srai         ra, t4, 0
                  bne          ra, t1, 89f
78:               or           s11, t3, s11
                  srl          s11, s7, t5
80:               andi         s11, ra, 887
                  srl          s2, a2, s4
                  sltu         s6, s4, s9
                  andi         s11, t1, -163
                  sll          a3, a5, t2
                  slti         a4, a2, 1271
                  bge          a0, s5, 90f
                  bltu         s5, s2, 90f
                  lui          a2, 386752
89:               slt          t5, s8, t0
90:               add          a3, a1, t5
                  bgeu         a7, a6, 95f
                  sub          s6, t3, a7
                  and          s9, t3, a2
                  sltu         s7, s0, s4
95:               lui          s8, 140106
                  la x5, test_done
                  jalr x0, x5, 0
test_done:        
                  li gp, 1
                  ecall
sub_9:            slli         s2, zero, 1
                  bltu         s0, a6, sub_9_stack_p
                  slt          a0, s10, s8
sub_9_stack_p:    addi         t6, t6, -24
                  or           s5, s10, a2
                  srli         zero, a5, 29
                  sw           t1, 4(t6)
                  srli         t2, zero, 31
                  la           sp, region_0+536 #start riscv_load_store_rand_instr_stream_1
                  sh           s8, 730(sp)
                  lhu          s11, 1428(sp)
                  sb           zero, 1002(sp)
                  slt          ra, a2, t3
                  lbu          s1, 316(sp)
                  lhu          a2, -106(sp)
                  slti         s8, a0, 837
                  lbu          a4, 285(sp)
                  lb           a3, 43(sp)
                  sltu         s8, t0, a4
                  xor          t4, t6, tp
                  sh           s5, 1224(sp)
                  sb           s8, -318(sp)
                  lb           s9, 1159(sp)
                  sub          s1, s10, gp
                  lb           s6, 283(sp)
                  lbu          ra, 1093(sp)
                  auipc        s4, 178032
                  and          a3, s11, a5
                  lb           s9, 1019(sp)
                  slt          s5, t3, sp
                  lbu          s11, -342(sp)
                  sra          s9, s7, s10
                  sltiu        a3, a7, -1943
                  lbu          s10, 597(sp)
                  lbu          s7, 955(sp)
                  and          s11, a5, s6
                  lui          s1, 282901
                  sll          s9, ra, a1
                  andi         s5, gp, -235
                  sh           t0, -412(sp)
                  sra          s9, gp, sp
                  sb           t2, -13(sp)
                  sb           tp, 633(sp)
                  lbu          s8, 115(sp)
                  xor          s4, s7, tp
                  nop
                  sb           s0, 1282(sp)
                  lh           s6, -430(sp) #end riscv_load_store_rand_instr_stream_1
                  la           s1, region_0+1283 #start riscv_load_store_rand_instr_stream_11
                  xori         s10, ra, 586
                  or           s11, a7, sp
                  lb           s7, -1192(s1)
                  add          s4, a1, zero
                  sb           t1, -952(s1)
                  sh           a1, -971(s1)
                  sb           s4, -927(s1)
                  slt          s11, a0, s9
                  slli         gp, s7, 18
                  lui          s10, 826215
                  addi         s3, s9, 932
                  add          s11, s1, s0
                  addi         a2, t5, -645
                  sh           s11, -911(s1)
                  sra          sp, t5, gp
                  lb           a7, -758(s1)
                  lbu          a5, 389(s1)
                  sh           a4, 355(s1)
                  lhu          t1, 279(s1)
                  lh           a2, -951(s1)
                  slt          a4, zero, sp
                  xori         a2, t1, 1605
                  slt          sp, t1, t3
                  sll          s8, a2, s0
                  nop
                  sh           s8, 271(s1)
                  lbu          s0, -463(s1)
                  lbu          t1, -458(s1)
                  ori          s8, t5, -2040
                  sb           ra, -742(s1)
                  xor          s4, s10, a0
                  lb           t5, 274(s1)
                  lbu          s10, -261(s1)
                  auipc        s5, 834012
                  lui          a5, 575332
                  andi         a1, s7, -1182
                  sh           s0, 571(s1)
                  sw           t5, -911(s1)
                  ori          s11, a1, -1150
                  sra          s2, zero, a6
                  sb           t1, 318(s1)
                  sub          ra, t6, s9
                  lbu          zero, -923(s1)
                  sub          a0, s10, t6
                  lh           s4, -403(s1)
                  xori         ra, a6, -355
                  sltu         s4, sp, s1
                  lw           ra, 413(s1)
                  sw           s0, -1239(s1) #end riscv_load_store_rand_instr_stream_11
                  la           s7, region_1+1880 #start riscv_load_store_rand_instr_stream_8
                  or           t2, a5, t1
                  lb           a2, 42(s7)
                  lb           a0, 7(s7)
                  sub          s4, ra, a4
                  sub          ra, zero, t1
                  nop
                  ori          a3, s0, 897
                  andi         a5, a4, -595
                  addi         s11, s8, -1336
                  sb           t3, 82(s7)
                  sltu         t2, a2, t3
                  sub          a7, s7, s9
                  sh           s1, -26(s7)
                  lbu          t5, -163(s7)
                  sub          t4, gp, s9
                  lhu          t2, -234(s7)
                  add          a5, t1, t4
                  auipc        t5, 930224
                  lbu          s4, 92(s7)
                  srli         gp, t4, 0
                  srl          a1, sp, s10
                  andi         s0, s4, 1895
                  srl          a3, s5, s9
                  sltu         a4, ra, t4
                  nop
                  lb           s10, -225(s7)
                  auipc        s5, 578298
                  srli         s3, s0, 3
                  sll          a1, t6, a5
                  sltiu        s5, a3, 484
                  sra          s0, t4, s10
                  lhu          a0, 10(s7)
                  or           s4, t1, s9
                  and          s2, s2, s5
                  sb           a6, -42(s7) #end riscv_load_store_rand_instr_stream_8
                  la           s7, region_1+432 #start riscv_load_store_rand_instr_stream_10
                  lb           a5, -313(s7)
                  lbu          t3, 189(s7)
                  lb           s2, -205(s7)
                  slti         t4, t6, -1880
                  lbu          zero, 429(s7)
                  xor          s3, t0, a0
                  lhu          a0, 354(s7)
                  lb           t1, 897(s7)
                  lw           t3, 1480(s7)
                  ori          s9, s6, 380
                  lh           sp, 1228(s7)
                  or           s10, s1, s0
                  lb           s8, 1011(s7)
                  srai         ra, sp, 4
                  nop
                  sub          ra, a6, t2
                  nop
                  xori         s1, tp, 1806
                  lh           s9, 364(s7)
                  lhu          gp, 1276(s7)
                  sb           s6, 899(s7)
                  addi         a2, a4, 1083
                  sub          a3, s3, s5
                  slt          s6, a0, a2
                  lbu          a7, 1385(s7)
                  lbu          s9, 320(s7)
                  slli         s11, t2, 10
                  sltiu        a0, t5, 375
                  sub          t2, t3, s1
                  slti         s10, a1, 1755
                  lb           tp, 332(s7)
                  lb           s4, 195(s7)
                  srl          t5, a5, t4
                  lbu          s8, 103(s7)
                  lb           a1, 384(s7)
                  srli         t3, ra, 8
                  slli         t1, s2, 20
                  lbu          t1, -368(s7)
                  slti         a5, a4, -1278
                  lb           a2, 735(s7)
                  sll          s11, s0, t5
                  sb           s2, 847(s7)
                  sb           ra, 1377(s7)
                  lb           t3, 1063(s7)
                  lhu          s9, 274(s7)
                  sh           sp, 1302(s7)
                  lui          zero, 882887
                  add          a1, a5, s9
                  srl          s4, s7, a4
                  srli         ra, s6, 27
                  nop
                  sh           gp, -76(s7)
                  sb           a5, 1333(s7)
                  sb           s10, 1387(s7)
                  or           s1, a4, s3
                  lw           zero, 616(s7) #end riscv_load_store_rand_instr_stream_10
                  la           t1, region_1+379 #start riscv_load_store_rand_instr_stream_7
                  lbu          s8, -55(t1)
                  srai         a0, a7, 24
                  sb           s9, -104(t1)
                  lb           t2, 208(t1)
                  sltu         s5, t3, a6
                  srli         a0, t5, 8
                  andi         a7, gp, 828
                  lbu          s0, -46(t1)
                  slti         a0, s7, 2012
                  slli         s0, s11, 17
                  lhu          s3, 245(t1)
                  auipc        gp, 255165
                  slli         tp, s8, 24
                  lbu          s5, 131(t1)
                  lbu          a7, -255(t1)
                  sh           t1, 143(t1)
                  lb           gp, -3(t1)
                  lb           tp, -4(t1)
                  ori          s7, a5, -1498
                  srl          t4, s0, s10
                  sw           s11, -63(t1)
                  lb           s5, -198(t1)
                  slti         tp, zero, -977
                  lb           tp, 101(t1)
                  sb           a6, 159(t1)
                  lb           s9, -24(t1)
                  sh           t0, -195(t1)
                  lbu          a7, -30(t1)
                  lui          s7, 334719
                  sb           a4, 16(t1)
                  lb           s3, 84(t1)
                  srli         t3, a3, 5
                  sb           a0, 177(t1)
                  sb           a5, 196(t1)
                  sb           tp, -41(t1)
                  sb           zero, -249(t1)
                  lb           s2, -169(t1)
                  lb           sp, 105(t1) #end riscv_load_store_rand_instr_stream_7
                  la           sp, region_1+813 #start riscv_load_store_rand_instr_stream_12
                  and          s9, s0, t2
                  add          s9, a7, a3
                  lb           a0, 114(sp)
                  lbu          a2, -30(sp)
                  srli         a1, a5, 31
                  sub          s3, a2, s11
                  slti         a1, t2, 618
                  lb           tp, -222(sp)
                  or           tp, a3, gp
                  andi         ra, s3, 2005
                  nop
                  srai         tp, t5, 9
                  sltiu        s6, s6, -267
                  sw           s1, -185(sp)
                  nop
                  and          s8, s9, tp
                  add          s0, s8, s5
                  lh           s5, -149(sp)
                  slti         s11, gp, -1441
                  slli         a0, s9, 0
                  slt          gp, a1, a2
                  ori          s11, t5, 1945
                  or           t3, t5, s10
                  xor          zero, s11, t4
                  srli         t2, gp, 0
                  lb           a0, 66(sp)
                  sltu         s4, t0, sp
                  add          s11, sp, s8
                  ori          t3, s7, -392
                  lbu          t5, 180(sp)
                  addi         s8, zero, -1999
                  lw           s5, -33(sp)
                  lb           s6, -80(sp)
                  slt          s3, s11, ra
                  nop
                  slti         tp, tp, 1559
                  lh           s6, 117(sp) #end riscv_load_store_rand_instr_stream_12
                  la           t5, region_0+907 #start riscv_load_store_rand_instr_stream_2
                  sb           s7, 40(t5)
                  andi         a4, t6, -511
                  and          s5, sp, t2
                  srli         s10, s7, 12
                  sub          s2, t6, s2
                  slti         a0, a3, 1596
                  sll          zero, s5, ra
                  sb           s6, -57(t5)
                  lh           s11, -61(t5)
                  lbu          a5, 58(t5)
                  sb           ra, -44(t5)
                  addi         a1, s2, 707
                  lb           t2, 28(t5)
                  or           s9, tp, ra
                  srai         s0, s4, 26
                  lui          a7, 885076
                  lh           s5, -53(t5)
                  sb           t5, 44(t5)
                  slti         s8, s4, 406
                  sh           s7, 13(t5)
                  lh           s4, 27(t5)
                  sb           a3, -16(t5)
                  lbu          t4, -30(t5)
                  lbu          s9, 14(t5)
                  lbu          zero, 17(t5)
                  sb           gp, 63(t5)
                  lbu          s3, 4(t5)
                  sh           t2, 45(t5)
                  sltiu        sp, s3, -1282
                  sb           s2, 24(t5)
                  lui          a1, 1045272
                  srai         a0, s2, 13
                  sltiu        t3, t0, -1973
                  xor          s5, s10, s3
                  lbu          s8, -24(t5)
                  sltiu        a3, s5, 1250
                  xor          t4, s8, ra
                  lbu          a0, 60(t5) #end riscv_load_store_rand_instr_stream_2
                  la           s5, region_1+1283 #start riscv_load_store_rand_instr_stream_13
                  sb           s0, 617(s5)
                  sra          t5, a7, sp
                  slli         s2, t1, 7
                  lb           s6, -111(s5)
                  srl          s7, a4, s9
                  sb           s2, -248(s5)
                  sb           s6, 402(s5)
                  lbu          a0, 223(s5)
                  slli         a7, s0, 22
                  srl          s0, s6, zero
                  ori          a5, a5, -1986
                  sb           s7, 200(s5)
                  srl          ra, tp, a3
                  sb           s5, -1189(s5)
                  sh           s10, -947(s5)
                  addi         t1, t2, -1047
                  lb           t4, -268(s5)
                  srli         s2, a3, 24
                  lw           s1, -811(s5)
                  lbu          a4, 170(s5)
                  sb           s7, -891(s5)
                  srai         zero, a0, 19
                  sll          s10, t6, t3
                  lb           s9, -778(s5)
                  sub          s11, s5, s2
                  slti         tp, a7, -1514
                  srai         a2, s4, 18
                  lui          zero, 961119
                  sub          a3, tp, t0
                  lb           sp, -964(s5)
                  or           s2, t4, a2
                  slti         s9, s0, 1903
                  lb           t2, 426(s5)
                  xori         gp, s0, -1459
                  sh           s10, 327(s5)
                  lb           s8, -140(s5) #end riscv_load_store_rand_instr_stream_13
                  la           a2, region_0+965 #start riscv_load_store_rand_instr_stream_6
                  lh           t2, 713(a2)
                  srai         t4, zero, 20
                  sb           a1, -848(a2)
                  lbu          t5, 518(a2)
                  lhu          sp, 197(a2)
                  lh           s7, -939(a2)
                  slli         tp, a7, 17
                  srai         a0, s0, 30
                  srli         ra, a1, 15
                  ori          s6, s2, 798
                  lh           s11, -285(a2)
                  lb           s0, -904(a2)
                  auipc        zero, 384884
                  andi         s7, a2, 1458
                  srai         s6, s5, 15
                  sll          a7, s9, s6
                  lh           t5, 727(a2)
                  ori          gp, s9, 459
                  lbu          sp, 340(a2)
                  sra          t3, t4, a4
                  and          s2, zero, a2
                  sll          t3, a1, s5
                  addi         a3, a3, -1127
                  slli         s10, ra, 30
                  sw           s9, -949(a2)
                  lbu          s9, 247(a2) #end riscv_load_store_rand_instr_stream_6
                  la           a3, region_1+822 #start riscv_load_store_rand_instr_stream_4
                  sb           t0, 1048(a3)
                  lb           s6, 925(a3)
                  sb           s10, -517(a3)
                  lb           s4, -251(a3)
                  sh           ra, 1168(a3)
                  lb           s8, -661(a3)
                  slti         a5, ra, 1808
                  lbu          a2, 591(a3)
                  lb           s3, 500(a3)
                  lhu          a0, 244(a3)
                  xori         s9, a2, -1507
                  lhu          s1, 498(a3)
                  ori          t3, tp, 252
                  sw           a5, -450(a3)
                  lb           sp, -597(a3)
                  sh           gp, -646(a3)
                  lbu          s10, 1061(a3)
                  auipc        s7, 179436
                  lhu          s5, 174(a3)
                  lh           s1, -582(a3)
                  sub          s9, s11, s6
                  lhu          tp, -276(a3)
                  lb           sp, 801(a3)
                  sll          a1, a2, a4
                  slt          s6, tp, s1
                  lb           s5, 673(a3)
                  sb           a4, 717(a3)
                  addi         s11, s2, 1620
                  auipc        s4, 78708
                  lb           s4, 323(a3)
                  lhu          t1, 68(a3)
                  sb           a3, -661(a3)
                  nop
                  slt          s10, s3, a0
                  lbu          s10, -32(a3)
                  lh           gp, 258(a3)
                  sb           t3, 817(a3)
                  sh           a0, -754(a3) #end riscv_load_store_rand_instr_stream_4
                  la           s3, region_1+1777 #start riscv_load_store_rand_instr_stream_3
                  slt          ra, t5, gp
                  auipc        sp, 574851
                  sb           s9, 48(s3)
                  lbu          s0, -23(s3)
                  slti         tp, s2, -340
                  sub          a3, t2, s8
                  lbu          sp, 23(s3)
                  lh           s1, 25(s3)
                  srai         t1, s4, 6
                  auipc        t5, 747957
                  lbu          sp, -33(s3)
                  xori         ra, s9, -1714
                  srl          s11, gp, a6
                  lbu          zero, -2(s3)
                  lbu          s11, 50(s3)
                  add          s5, s0, a7
                  and          zero, gp, zero
                  slti         a7, ra, -1766
                  sb           s1, -44(s3)
                  srai         t1, t4, 13
                  add          a7, s11, s2
                  sltiu        a3, s3, 1769
                  sb           a7, -36(s3)
                  sh           s1, -23(s3)
                  sb           s7, 32(s3)
                  xor          ra, a7, sp
                  lhu          a4, -35(s3)
                  sb           s2, 43(s3)
                  sb           a2, 31(s3)
                  sh           s1, 33(s3)
                  lhu          a1, 23(s3)
                  and          a3, tp, a2
                  auipc        t1, 1007079
                  xori         s11, tp, -725
                  lbu          t1, 4(s3)
                  and          s1, a2, a6
                  srai         s1, a1, 20
                  sh           a6, -31(s3)
                  slti         tp, s9, 676
                  add          s2, t0, s10
                  srli         a7, t2, 13
                  lb           t3, 25(s3)
                  lhu          s0, 23(s3)
                  andi         a7, s11, -12
                  or           s11, ra, t6
                  lh           a3, 31(s3) #end riscv_load_store_rand_instr_stream_3
                  la           sp, region_0+895 #start riscv_load_store_rand_instr_stream_5
                  xori         s8, s1, -1849
                  sb           s0, -1(sp)
                  sb           gp, 10(sp)
                  slli         s10, ra, 26
                  sb           s11, -14(sp)
                  sll          s4, gp, a4
                  addi         s10, s0, -1957
                  sb           s1, 16(sp)
                  add          s11, s3, s4
                  sra          s1, t0, s2
                  sb           s8, 4(sp)
                  lbu          s11, 2(sp)
                  lw           t3, -15(sp)
                  sh           t1, -9(sp)
                  lbu          s0, 4(sp)
                  sub          a3, a5, a6
                  lbu          ra, 0(sp)
                  lhu          a3, -1(sp)
                  andi         s7, s3, -1676
                  slti         s0, s9, -1278
                  lw           s3, -3(sp)
                  or           a5, sp, zero
                  lui          ra, 379313
                  sw           a6, 13(sp)
                  lb           a3, 0(sp)
                  xor          ra, s9, t2
                  sb           s3, 16(sp)
                  auipc        s6, 334523
                  sb           a5, -13(sp)
                  andi         t4, a6, 402
                  lb           a7, -10(sp)
                  xori         a0, t0, -530
                  and          t4, a4, s10
                  add          a5, gp, a3
                  sh           s5, -7(sp)
                  sra          s2, s4, a3
                  srli         a2, s5, 27
                  lb           a5, 16(sp)
                  lh           s10, -3(sp)
                  sb           zero, -16(sp)
                  lbu          ra, 16(sp)
                  add          s2, a6, t3
                  srli         s9, a1, 13
                  sra          a1, a3, s1
                  addi         ra, a4, -948
                  lbu          a7, 5(sp)
                  or           s1, ra, a4
                  lh           t4, -3(sp)
                  sh           a5, 1(sp)
                  addi         t5, t2, 1985
                  sb           s4, 14(sp)
                  or           s1, s9, s3
                  lbu          gp, -6(sp)
                  slt          s1, a2, s9
                  srai         t3, a1, 5
                  lhu          t1, -1(sp)
                  nop
                  lbu          gp, -5(sp)
                  lw           a7, 5(sp) #end riscv_load_store_rand_instr_stream_5
                  la           sp, region_1+415 #start riscv_load_store_rand_instr_stream_9
                  auipc        t4, 1026759
                  lb           s1, 2(sp)
                  slti         a2, a6, -781
                  lh           s5, -13(sp)
                  nop
                  sub          t5, s0, a3
                  xor          t3, s11, a5
                  lbu          a2, -15(sp)
                  lbu          a5, 0(sp)
                  addi         s0, a5, 79
                  sll          tp, gp, a1
                  lbu          a4, -1(sp)
                  xor          s2, t2, s5
                  sra          t2, s2, a0
                  andi         s7, s10, -512
                  addi         a3, t2, -627
                  nop
                  lbu          s7, 5(sp)
                  lbu          a2, 13(sp)
                  xor          a1, s2, gp
                  srli         s11, s9, 24
                  lh           a3, 7(sp)
                  srl          ra, a1, tp
                  sb           a0, -1(sp)
                  sb           a5, 2(sp)
                  srl          s3, a1, sp
                  sltiu        s5, t1, -1941
                  xori         a0, a5, -1632
                  lb           t1, -9(sp) #end riscv_load_store_rand_instr_stream_9
                  bgeu         zero, t4, 4f
                  lui          t5, 853545
                  sra          s7, a5, t6
                  bne          ra, a6, 5f
4:                and          s8, t0, s6
5:                bge          t4, sp, 10f
                  sra          s10, ra, s2
                  xori         zero, t0, -989
                  sub          a2, s2, s9
                  nop
10:               slli         s0, s6, 3
                  sra          t2, a3, a4
                  beq          s8, s2, 27f
                  srli         a7, s3, 8
                  and          ra, s3, a3
                  lui          tp, 146941
                  addi         s1, a6, -1860
                  sltiu        t5, s10, -643
                  lui          a2, 897222
                  beq          a5, ra, 35f
                  bne          s5, a5, 28f
                  nop
                  or           s10, s11, t6
                  sll          ra, a0, s8
                  srl          a5, s11, t2
                  addi         zero, gp, -1026
                  sltiu        a7, s6, -1015
27:               srl          a0, t6, s9
28:               nop
                  srli         a7, s11, 17
                  nop
                  sub          a7, t6, a1
                  bgeu         t1, a5, 52f
                  xori         s10, a3, 1840
                  slli         a2, t0, 25
35:               or           s2, s8, s2
                  blt          zero, ra, 49f
                  nop
                  slt          a2, a3, zero
                  slt          s4, sp, t5
                  sub          s4, gp, gp
                  slli         t5, s6, 26
                  xor          zero, a0, s8
                  xor          a2, t5, t2
                  srai         zero, sp, 10
                  or           s7, a2, a2
                  slti         s6, t4, 1138
                  srli         s11, s6, 15
                  andi         s3, s2, 2011
49:               sub          s10, a3, sp
                  sra          ra, t0, s2
                  bgeu         a6, s10, 71f
52:               sll          a3, s11, s9
                  srli         s1, t0, 29
                  sltu         t5, t0, s1
                  srl          a2, s7, a3
                  and          s10, a6, s7
                  beq          a4, a6, 62f
                  add          ra, s6, s2
                  lui          sp, 123951
                  srl          s10, t4, a4
                  srl          a7, t6, t4
62:               slli         s5, t0, 27
                  srli         t3, s9, 30
                  auipc        a2, 937712
                  lui          gp, 736843
                  slt          s4, s9, a7
                  addi         zero, a5, 1804
                  sltu         tp, s6, a2
                  sra          a4, a0, a4
                  add          t5, s4, a5
71:               srl          t3, a7, s0
                  slt          a7, t2, s1
                  nop
                  or           t1, a0, s8
                  nop
                  bge          s10, t6, 79f
                  bne          t6, sp, 90f
                  srai         s11, t4, 5
79:               and          t5, a5, t5
                  add          s8, a2, a7
                  auipc        s2, 1026491
                  sll          s4, s4, s11
                  and          s6, t6, a7
                  sra          t2, zero, gp
                  sltu         t4, zero, s6
                  auipc        s3, 204466
                  slli         t1, s8, 10
                  bgeu         s4, s3, 101f
                  bne          s3, zero, 96f
90:               srli         s8, a2, 13
                  srai         t4, t4, 18
                  sra          t1, s4, t3
                  beq          t2, t6, 105f
                  sltiu        ra, ra, -1014
                  nop
96:               sra          s2, a0, s2
                  sra          t2, zero, t4
                  auipc        s10, 187376
                  slt          a2, zero, gp
                  slt          gp, a3, a3
101:              nop
                  nop
                  sll          s10, s8, s4
                  slti         s1, s7, 1619
105:              bne          s2, t0, 119f
                  sltiu        t5, s8, 1527
                  srl          a5, s7, ra
                  sltu         t4, s5, s6
                  and          s1, a3, t4
                  beq          a2, t4, 111f
111:              slt          a4, a3, s0
                  sll          s11, s9, s3
                  andi         t2, t1, 1156
                  sltiu        s7, zero, 437
                  ori          s2, t2, -238
                  xori         s10, s0, 1649
                  bgeu         s7, a4, 134f
                  slli         sp, t3, 0
119:              xori         a7, t2, -382
                  bgeu         a2, s0, 135f
                  bne          t4, s1, 124f
                  sltiu        sp, t3, 338
                  sub          t3, s1, s3
124:              lui          a2, 713572
                  slti         a7, s11, -986
                  beq          s10, s5, 140f
                  sltiu        t2, t6, -39
                  srli         a0, t2, 10
                  bltu         s8, a2, 148f
                  srl          zero, gp, s8
                  blt          s8, t0, 139f
                  bltu         s0, a2, 144f
                  blt          s0, s4, 145f
134:              slli         s4, zero, 12
135:              andi         s3, s2, 1304
                  andi         t5, t5, -228
                  add          s9, s7, a6
                  sra          s6, s1, t2
139:              srai         s0, s4, 19
140:              slli         t3, tp, 26
                  bgeu         s4, s2, 161f
                  beq          sp, s7, 146f
                  slli         a5, tp, 31
144:              srai         gp, a5, 17
145:              sll          s9, s5, s9
146:              sra          s8, s5, sp
                  xor          sp, s7, sp
148:              and          s10, s6, s6
                  xor          a3, t5, s5
                  addi         s6, s9, 1761
                  andi         a1, s6, 1990
                  addi         s5, a2, 1394
                  add          s9, a7, a7
                  sll          s0, t5, t1
                  blt          s8, s7, 160f
                  sltu         s8, a7, a1
                  andi         s5, a1, 732
                  or           s4, ra, a3
                  sub          a5, s2, gp
160:              blt          s2, a4, 175f
161:              srl          t5, a7, a5
                  or           a3, t4, s10
                  slt          tp, zero, a5
                  and          a4, s11, t1
                  andi         a7, a1, -1572
                  addi         t1, sp, -1141
                  lui          t1, 280167
                  xori         a0, s1, 1207
                  sltiu        a0, s6, -1799
                  bgeu         t5, s6, 171f
171:              slli         t5, t4, 14
                  sub          s1, t4, a4
                  lui          t4, 813594
                  ori          s4, s10, 1678
175:              srli         a5, sp, 7
                  lui          t5, 18553
                  sub          s5, s5, s1
                  srli         s11, a2, 10
                  xor          a1, a6, s3
                  blt          s9, s11, 193f
                  nop
                  slti         gp, a2, 1220
                  sll          a7, a5, a0
                  slti         zero, t5, 16
                  nop
                  auipc        t5, 998282
                  and          t3, a1, a5
                  srli         ra, t6, 14
                  srl          s9, t1, t4
                  andi         sp, s7, 536
                  nop
                  srl          s3, a6, tp
193:              slt          s4, t0, a0
                  bgeu         s9, s5, 196f
                  slt          s3, a2, s6
196:              xor          a0, ra, s10
                  addi         ra, tp, -144
                  bgeu         sp, s4, 210f
                  bgeu         a0, s1, 203f
                  beq          s4, s5, 212f
                  srli         s5, s3, 5
                  sltiu        a2, a1, 1961
203:              and          t3, s5, a0
                  xor          sp, t4, t4
                  beq          t1, s11, 220f
                  sltu         t1, a2, s11
                  sra          a3, t1, t1
                  beq          s11, s10, 220f
                  auipc        s4, 147478
210:              slli         s1, a4, 27
                  slt          s6, s10, gp
212:              slti         a0, s3, -1727
                  sltu         gp, a0, a0
                  slli         a0, t6, 9
                  sra          t2, s3, s1
                  xor          a7, a0, a0
                  sll          gp, s6, a3
                  lui          s1, 79642
                  srl          a7, t1, t4
220:              sll          s0, a4, a5
                  bge          sp, sp, 224f
                  sltu         a7, s0, a5
                  sll          t5, a4, a2
224:              sltiu        s2, t1, 1086
                  srli         gp, t5, 0
                  xori         sp, t0, 215
                  beq          s7, a5, 232f
                  srl          gp, s9, a1
                  beq          s1, s0, 233f
                  sltiu        a7, s5, 1746
                  slli         t5, s9, 12
232:              xori         s10, t0, 1273
233:              ori          s5, t4, 467
                  auipc        s5, 607848
                  slti         a3, a6, -1190
                  sll          t2, a3, s11
                  bgeu         s1, t5, 250f
                  sltiu        t5, s8, 686
                  sltu         s8, gp, s10
                  sltiu        s6, a3, -492
                  ori          s8, s6, 1272
                  sra          a0, s7, a2
                  lui          a0, 182498
                  andi         sp, sp, 713
                  slt          s6, s2, s10
                  nop
                  slti         s11, s11, -663
                  bge          a6, s4, 262f
                  ori          t4, s0, 372
250:              lui          s3, 999608
                  ori          t5, s5, -701
                  sra          s4, s0, t2
                  srai         t2, s5, 5
                  srli         s9, a5, 4
                  slt          ra, s3, a0
                  sra          s9, a5, a1
                  addi         zero, a2, -930
                  nop
                  slt          t2, gp, zero
                  sltiu        s10, s2, -691
                  beq          t2, s11, 276f
262:              sltiu        t5, sp, 318
                  blt          t1, a0, 283f
                  slti         s11, t6, 795
                  srli         a5, ra, 21
                  beq          t6, t2, 280f
                  beq          s9, sp, 287f
                  srl          t2, a3, t2
                  slli         t1, a5, 29
                  slli         s6, s11, 19
                  srli         gp, s9, 1
                  slt          s4, t3, a3
                  sltiu        a5, t1, -647
                  sltu         s1, s4, zero
                  beq          t4, t6, 283f
276:              sub          a4, s10, t2
                  bgeu         a5, s11, 294f
                  sltu         s4, a4, t6
                  ori          s4, a3, -1091
280:              bgeu         s3, s8, 283f
                  srli         zero, ra, 15
                  ori          sp, a5, -890
283:              srli         a5, sp, 16
                  sltiu        s8, t5, 1735
                  sltu         a1, s1, s11
                  and          s1, a0, t5
287:              bge          s7, s8, 288f
288:              sll          a5, s11, tp
                  sll          sp, s4, tp
                  xor          zero, a5, a7
                  andi         t3, a6, 1965
                  sll          t1, s10, a7
                  bne          s8, s0, 298f
294:              bltu         t4, s5, 310f
                  sltiu        s1, s1, 1537
                  lui          s7, 1029694
                  or           t2, s4, sp
298:              slt          a4, s10, s1
                  nop
                  bne          s5, t1, 307f
                  xor          t1, s4, t2
                  sub          s1, zero, sp
                  bgeu         s5, a6, 323f
                  nop
                  sltu         a1, a2, s4
                  sra          gp, gp, t6
307:              addi         s1, a0, -1711
                  slli         s7, a4, 2
                  blt          t2, a0, 317f
310:              beq          sp, s4, 311f
311:              add          s2, s1, a2
                  srai         s4, a3, 23
                  or           s9, s9, t2
                  srli         t2, zero, 11
                  and          a2, s4, t5
                  addi         ra, t5, 744
317:              sltiu        a4, s9, 808
                  ori          s10, s3, -1905
                  srli         a3, a2, 6
                  andi         s11, s0, 1791
                  bge          zero, s0, 336f
                  blt          s11, a1, 327f
323:              srai         s10, t3, 27
                  sltu         tp, s10, s9
                  beq          s1, ra, 344f
                  xori         a4, a3, -1524
327:              sltu         s1, s0, a1
                  slti         a4, s5, 1536
                  ori          a4, t6, 1456
                  beq          a5, s1, 343f
                  sltu         s5, a0, a0
                  blt          s11, t6, 336f
                  sltu         a0, tp, s8
                  bgeu         a5, t5, 351f
                  add          s4, tp, s3
336:              auipc        a3, 202618
                  xor          s11, t4, a6
                  srai         a5, a6, 26
                  blt          t4, t0, 351f
                  or           a7, a0, a1
                  bgeu         s1, a2, 354f
                  addi         s1, t5, -2036
343:              xor          t5, a7, a2
344:              srl          t5, t2, s3
                  andi         s8, a7, 419
                  slli         t4, a2, 31
                  sltu         t4, a0, s8
                  lui          a2, 833962
                  bgeu         s2, t1, 363f
                  ori          zero, t5, 1344
351:              nop
                  sltu         s5, t5, a0
                  nop
354:              bltu         zero, a6, 366f
                  andi         a1, zero, -609
                  add          zero, s8, a3
                  sltiu        a7, a4, -239
                  andi         s4, t3, -1202
                  auipc        s3, 794151
                  nop
                  blt          a2, s11, 373f
                  bgeu         t2, ra, 382f
363:              nop
                  sltiu        zero, s9, 941
                  sltiu        a7, sp, 235
366:              bge          t1, a5, 368f
                  and          t4, t2, s9
368:              sltiu        a3, tp, 73
                  beq          a0, t5, 374f
                  sll          a4, a1, s11
                  and          s2, s8, ra
                  andi         tp, a3, 1338
373:              slti         s11, sp, -1306
374:              beq          a7, s0, 375f
375:              bltu         a4, tp, 391f
                  blt          s0, a7, 384f
                  nop
                  auipc        ra, 1040017
                  sll          s8, sp, s2
                  slli         gp, s9, 1
                  sra          gp, s6, s1
382:              slt          a5, a1, a2
                  andi         t2, a5, 588
384:              slli         gp, a0, 23
                  sltu         tp, s0, gp
                  sra          s6, s8, s7
                  andi         t3, a7, 535
                  xori         a1, a1, -1946
                  andi         s11, a4, 882
                  sll          s10, t3, a2
391:              bne          s6, gp, 396f
                  add          a4, s1, t6
                  srai         t3, a2, 0
                  slt          t3, s7, s6
                  sra          tp, t1, s4
396:              blt          s4, a1, 415f
                  xor          s4, a2, a3
                  xori         s7, s2, -156
                  beq          s9, a5, 412f
                  srai         s8, s8, 26
                  nop
                  xori         s4, tp, -95
                  bgeu         s0, s9, 411f
                  slti         s1, s6, 996
                  bgeu         t2, s5, 419f
                  srl          sp, a2, t6
                  sra          s7, s3, t1
                  beq          a4, t3, 423f
                  slt          a7, s7, ra
                  srli         gp, t5, 3
411:              auipc        t3, 78940
412:              slti         t3, s11, -924
                  sltu         s8, t6, tp
                  add          s9, a4, sp
415:              addi         a2, a7, -1369
                  bge          zero, s7, 436f
                  sltu         a1, t4, s8
                  nop
419:              or           gp, t0, t3
                  slt          a7, s1, ra
                  slli         a4, s5, 24
                  and          s1, a3, s11
423:              auipc        t2, 308024
                  beq          zero, t2, 429f
                  auipc        tp, 926606
                  sltu         a5, s8, zero
                  xor          zero, a2, a6
                  srai         s11, a7, 6
429:              sub          t1, ra, t3
                  sltu         s3, a4, a1
                  xor          t1, s11, a4
                  srai         s7, t5, 15
                  slti         zero, s10, 109
                  blt          gp, a1, 449f
                  bltu         s3, s6, 438f
436:              blt          s6, gp, 449f
                  bge          s6, s5, 444f
438:              nop
                  beq          gp, t5, 459f
                  add          s6, sp, t1
                  sll          s4, a7, ra
                  xor          s9, a1, s8
                  sltu         s10, s6, t6
444:              slli         gp, sp, 24
                  srl          s9, sp, sp
                  blt          s2, s7, 447f
447:              slti         s8, t4, 2025
                  auipc        s7, 126797
449:              slt          s1, s5, s11
                  slt          s3, a2, s4
                  bne          t5, sp, 466f
                  bltu         s8, t2, 456f
                  bgeu         s4, a7, 456f
                  bltu         s11, s8, 462f
                  slli         gp, ra, 9
456:              sltiu        a4, zero, 815
                  auipc        t4, 299243
                  and          zero, s11, s8
459:              srai         s11, s2, 30
                  lui          s3, 272164
                  andi         zero, s6, -142
462:              srli         s5, s6, 16
                  blt          s10, s6, 467f
                  ori          s8, s2, -521
                  nop
466:              xori         s7, a4, 1307
467:              lui          t4, 921427
                  bgeu         tp, t3, 488f
                  srl          a3, s7, a1
                  bne          t2, s4, 478f
                  addi         s9, t2, 1940
                  addi         s1, s11, -1123
                  xori         a2, a6, 393
                  lui          ra, 530468
                  auipc        zero, 903353
                  sltu         s9, s4, s9
                  slti         t5, t5, 1749
478:              sltu         s5, s1, a1
                  sltu         s3, t4, zero
                  or           t2, a0, t3
                  slt          a4, t4, zero
                  and          s7, s8, t4
                  bge          a6, s4, 488f
                  srl          s5, t5, t2
                  add          a3, gp, t2
                  srai         t5, s11, 21
                  beq          s3, a7, 490f
488:              srl          a5, s1, a1
                  bltu         s4, a3, 503f
490:              srl          a1, a1, a0
                  srli         s4, a5, 3
                  andi         t2, s9, -534
                  sltu         gp, a1, t5
                  and          a1, zero, t1
                  or           a5, a1, s1
                  ori          s4, s7, 1547
                  xori         s2, s9, 1608
                  or           s7, a5, s4
                  beq          tp, s6, 500f
500:              xori         a7, s3, 1732
                  or           a2, zero, gp
                  lui          a2, 123825
503:              slt          t5, ra, a1
                  xori         s4, t1, -1268
                  srai         t3, s1, 2
                  lui          s5, 298882
                  sll          s3, t1, t1
                  addi         s10, gp, 499
                  beq          t1, sp, 524f
                  andi         a1, s7, 2009
                  auipc        sp, 551698
                  slt          sp, ra, t0
                  or           s1, zero, s4
                  slli         zero, s1, 22
                  blt          a5, t2, 520f
                  slli         s2, s0, 2
                  srl          t1, s4, a4
                  bltu         s2, s1, 532f
                  and          zero, s10, gp
520:              bge          gp, s5, 532f
                  ori          s0, a3, -1059
                  auipc        gp, 240986
                  sub          s11, a5, a4
524:              srai         a3, s4, 27
                  nop
                  slti         t5, t2, 1791
                  bltu         t1, s9, 546f
                  or           s5, tp, a6
                  sll          s3, zero, a1
                  sll          gp, a7, s1
                  sra          gp, a6, ra
532:              and          zero, gp, s10
                  slti         ra, t5, 690
                  addi         s5, a1, -1406
                  or           tp, s2, a2
                  bne          a2, sp, 556f
                  nop
                  bne          s2, s3, 550f
                  bgeu         s6, t3, 544f
                  bltu         t0, a0, 552f
                  slti         ra, s6, 658
                  add          t3, s11, s6
                  and          a7, t6, sp
544:              xori         a3, t4, 938
                  bltu         tp, a6, 562f
546:              sltu         s9, s2, s1
                  slt          sp, a1, s9
                  beq          s8, s8, 551f
                  or           s0, s7, gp
550:              ori          a3, t4, 130
551:              blt          a3, t6, 552f
552:              add          s8, zero, s4
                  ori          s8, a1, 146
                  slti         t1, s10, -178
                  bltu         s0, s6, 575f
556:              andi         s8, s4, -2040
                  srl          t1, s7, a5
                  srli         a3, sp, 17
                  add          a1, t3, s8
                  sub          s1, s3, t1
                  sll          a0, a6, s4
562:              bge          t0, zero, 575f
                  or           s3, s0, tp
                  bne          t6, gp, 577f
                  sltu         s2, a5, t0
                  sltu         s7, s0, tp
                  slti         s5, s5, 568
                  bltu         a0, s2, 581f
                  blt          s3, s5, 573f
                  slti         zero, a4, -1740
                  xor          s4, tp, t1
                  sub          a0, s2, s4
573:              beq          a4, s8, 575f
                  addi         t2, a6, 1022
575:              slli         zero, a3, 3
                  xor          sp, s10, t0
577:              sltu         t5, s10, s8
                  bge          s0, s8, 593f
                  srl          t4, s9, s8
                  xor          s3, t5, t2
581:              auipc        s0, 1020315
                  sub          s5, t1, a7
                  lui          t2, 818455
                  bgeu         a5, a5, 600f
                  slt          a7, s2, gp
                  beq          zero, s8, 601f
                  bge          a6, t2, 594f
                  auipc        s1, 337726
                  or           a0, s0, a3
                  srli         s6, s5, 18
                  sll          s4, s3, t4
                  blt          a5, t6, 607f
593:              sra          zero, a6, s10
594:              bgeu         s0, a4, 611f
                  xori         a5, a7, 624
                  bgeu         zero, s3, 616f
                  bgeu         s10, sp, 598f
598:              srl          t1, t1, a3
                  sltiu        ra, s2, -2002
600:              or           a5, zero, s10
601:              sra          a4, t0, a2
                  bge          t4, gp, 621f
                  xor          s1, a3, a4
                  andi         s3, t2, -2023
                  lui          t3, 202680
                  bgeu         s7, t2, 608f
607:              add          s3, a3, a6
608:              sltiu        sp, a6, -1695
                  xori         a0, s6, 836
                  sll          a0, a6, zero
611:              bltu         a7, s4, 616f
                  xori         a7, s5, -696
                  xor          a2, a6, a6
                  srl          s6, s10, t3
                  bgeu         tp, s11, 630f
616:              slti         a3, a2, -1768
                  blt          a7, t4, 629f
                  addi         a7, t4, 1815
                  sltiu        ra, a7, -1427
                  slt          s6, sp, s7
621:              slt          s3, t0, s0
                  addi         ra, ra, -432
                  bne          s10, a6, 635f
                  srai         tp, s2, 5
                  lui          s9, 604614
                  ori          a7, s4, 1911
                  slti         tp, a2, -93
                  nop
629:              lui          t5, 804427
630:              beq          a1, a1, 643f
                  and          t5, t4, s7
                  bge          s3, s1, 640f
                  blt          s8, a0, 647f
                  add          s8, s0, s4
635:              xori         a0, tp, -229
                  slli         t3, s0, 12
                  bgeu         t1, a7, 650f
                  andi         ra, zero, 1981
                  srl          zero, a4, t2
640:              lui          s4, 683054
                  xor          t2, a1, ra
                  lui          a0, 872589
643:              auipc        t5, 654835
                  srai         t2, sp, 21
                  sll          s11, a1, a2
                  xor          t1, s5, a5
647:              addi         s1, t3, -1246
                  xori         a2, t2, 183
                  sltu         s4, s2, a2
650:              addi         ra, s10, -568
                  sra          s11, zero, s11
                  bne          t4, a0, 655f
                  bltu         s11, a2, 656f
                  srai         a2, s9, 15
655:              andi         sp, a1, -1133
656:              and          a1, s7, s7
                  srl          s1, a5, zero
                  ori          t2, s8, 88
                  auipc        a7, 314509
                  lui          a5, 915753
                  add          a0, a1, s9
                  andi         s4, s3, 46
                  bne          a6, gp, 664f
664:              andi         s9, gp, 537
                  bge          s3, t0, 685f
                  slli         s1, t5, 7
                  lui          t1, 419108
                  addi         tp, a0, -155
                  sra          t1, sp, s2
                  or           t3, a6, t6
                  or           a7, a2, a5
                  addi         t2, a2, -990
                  add          s0, t0, tp
                  beq          a5, tp, 682f
                  add          a5, a5, zero
                  add          zero, s6, t3
                  nop
                  xori         a5, gp, -1765
                  srl          s9, a5, ra
                  addi         s1, s6, -742
                  and          s0, s8, s2
682:              sub          s11, a0, a3
                  bge          s0, a6, 695f
                  bne          a6, a6, 704f
685:              xor          zero, t2, a3
                  ori          ra, a7, -837
                  auipc        s8, 13565
                  and          s11, t0, t0
                  sltu         a2, a1, s8
                  addi         s9, gp, 264
                  ori          s8, t6, -1383
                  beq          a4, gp, 705f
                  xori         a1, a4, -303
                  sltu         t1, s5, s6
695:              or           t3, s10, t2
                  beq          t2, sp, 710f
                  ori          s2, a0, -1580
                  srl          zero, t5, a6
                  nop
                  bge          t2, s9, 716f
                  beq          a1, s10, 708f
                  nop
                  or           s3, t1, s8
704:              srai         s1, s11, 28
705:              auipc        s6, 256344
                  xor          zero, s2, s3
                  addi         s8, s9, 580
708:              slt          tp, a1, t4
                  srli         t3, a6, 1
710:              bltu         s9, t6, 725f
                  bne          gp, s2, 716f
                  add          s1, s1, t6
                  sra          ra, a2, a6
                  and          s1, a7, ra
                  bne          s0, a3, 719f
716:              xor          s5, sp, s11
                  or           t1, t6, t3
                  sltiu        s4, a4, -576
719:              beq          a4, sp, 724f
                  bltu         t1, t2, 724f
                  and          a4, t3, ra
                  nop
                  lui          tp, 511127
724:              xori         ra, t1, 186
725:              bge          s10, t3, 745f
                  bge          s9, t2, 730f
                  bge          zero, t4, 730f
                  auipc        s9, 662406
                  srai         a3, a6, 22
730:              blt          t1, s4, 747f
                  and          t3, s7, t3
                  blt          s11, a7, 734f
                  slt          t5, gp, t6
734:              addi         a3, a2, 1059
                  and          s1, zero, zero
                  slti         s5, t2, 276
                  ori          s4, a0, -975
                  nop
                  bltu         a1, s11, 742f
                  blt          t1, s9, 752f
                  nop
742:              sll          s7, a7, zero
                  ori          s5, a7, 1280
                  xori         s1, a1, 1067
745:              or           a5, a5, a7
                  and          s3, s3, t0
747:              and          s7, a4, t2
                  sll          t3, t1, s5
                  bge          a5, s1, 763f
                  sub          sp, a5, t2
                  slt          t4, s11, t0
752:              slti         t5, s7, 1689
                  bltu         t0, s3, 758f
                  sltiu        a1, zero, -509
                  ori          a5, s8, -1216
                  xor          s6, t4, s6
                  bge          t0, zero, 758f
758:              andi         a2, a1, 112
                  srli         sp, s2, 28
                  ori          t1, a5, 240
                  and          t4, ra, tp
                  beq          t3, a2, 767f
763:              bltu         t0, s3, 778f
                  bge          t4, s2, 765f
765:              add          a4, s7, t0
                  sltu         ra, sp, t1
767:              auipc        s1, 682246
                  ori          s1, s7, 1555
                  sll          ra, s11, t0
                  sub          s6, tp, t1
                  ori          s11, s8, -1377
                  auipc        t1, 792872
                  slt          s5, s9, a2
                  sltu         s1, s3, s9
                  nop
                  lui          ra, 801610
                  nop
778:              sll          s3, a1, s7
                  nop
                  sra          a7, a7, s11
                  andi         s8, s5, -1561
                  srli         a2, t4, 22
                  nop
                  and          zero, s8, a1
                  nop
                  bltu         s7, s6, 802f
                  srli         t4, a5, 16
                  sltu         s7, a3, t2
                  xori         s1, gp, -362
                  nop
                  add          s5, a3, s10
                  addi         s4, a6, 201
                  lui          s11, 663588
                  add          zero, a6, a7
                  sub          sp, a2, a4
                  sltiu        zero, s8, -1413
                  beq          t2, t6, 811f
                  andi         tp, s8, -185
                  slti         s8, s1, -823
                  sub          tp, s8, ra
                  srli         s4, t3, 30
802:              ori          s4, t3, 373
                  sra          s6, s9, s1
                  srli         t3, s0, 2
                  srl          t2, a2, s6
                  sub          a1, t2, a0
                  lui          s6, 297964
                  bge          t2, zero, 820f
                  sltu         t1, t0, t5
                  or           s8, tp, t2
811:              sltiu        s8, t3, -1445
                  and          t3, s5, t5
                  nop
                  ori          sp, a0, -1294
                  add          t5, s11, s2
                  sltu         s0, a4, a6
                  or           s1, a2, t5
                  lui          tp, 632211
                  or           a5, s9, t6
820:              bne          t1, s11, 840f
                  srai         a3, a6, 24
                  xor          a2, a2, t0
                  addi         tp, a3, 2019
                  beq          a2, a2, 837f
                  xori         a5, s5, -1566
                  xori         s1, t0, -819
                  bltu         s0, s4, 842f
                  nop
                  slt          a5, t5, t4
                  xor          sp, s8, t4
                  auipc        s0, 685775
                  srli         s1, t6, 3
                  and          s2, tp, a5
                  addi         a4, s4, 1340
                  ori          t2, s5, 1674
                  andi         s4, t0, -1390
837:              srai         s11, tp, 3
                  sltu         a2, s7, t3
                  add          s10, s8, t5
840:              xor          a7, a2, gp
                  bge          a6, s3, 854f
842:              or           a4, s4, gp
                  and          s7, t6, zero
                  add          a7, t1, a1
                  bne          s0, t3, 853f
                  lui          zero, 83203
                  addi         s11, t6, -1394
                  srl          zero, s8, a3
                  slli         a2, s3, 8
                  ori          t5, t2, 641
                  slt          t1, t6, t4
                  sub          s9, s4, t1
853:              auipc        s1, 827934
854:              or           s0, s6, s5
                  andi         s0, a7, 1555
                  and          s11, s6, s11
                  bltu         s2, t0, 872f
                  blt          a1, s2, 862f
                  or           s11, a6, s1
                  bltu         s2, t5, 865f
                  blt          tp, s11, 868f
862:              xor          a1, t1, s0
                  slti         a5, s7, -116
                  beq          t4, zero, 884f
865:              srai         t4, s11, 23
                  bne          s8, s0, 885f
                  beq          a0, a0, 879f
868:              or           s2, sp, s2
                  add          s3, a3, s4
                  bge          s11, a0, 883f
                  lui          a5, 148996
872:              slti         a2, t1, 130
                  addi         tp, s9, -1734
                  and          a7, s0, a3
                  auipc        s0, 980925
                  nop
                  addi         s4, a3, -780
                  ori          sp, t0, -1406
879:              auipc        s8, 878035
                  nop
                  bne          t2, t1, 889f
                  xor          s10, zero, zero
883:              srai         t5, tp, 23
884:              sll          sp, s2, s6
885:              sltiu        s2, a3, -1231
                  auipc        a4, 725115
                  andi         a2, gp, 329
                  sra          t3, a2, tp
889:              or           s5, s4, s10
                  bltu         s7, a5, 910f
                  sub          s7, t2, t2
                  blt          s0, a5, 906f
                  xor          t5, ra, a0
                  xor          ra, t2, s10
                  blt          t3, t4, 909f
                  srl          s10, s0, a1
                  or           t4, s5, s10
                  sltu         s10, gp, s5
                  bgeu         s3, s0, 914f
                  sra          s6, ra, s1
                  slt          s5, t6, s2
                  slti         s3, a7, 187
                  xor          t3, a1, tp
                  sll          a4, t4, s4
                  andi         s3, t2, 1944
906:              auipc        s1, 360277
                  add          a5, a3, t6
                  or           a0, s0, t1
909:              sll          a0, a6, a7
910:              sub          s5, t4, a6
                  bgeu         t3, s2, 919f
                  sub          t2, s8, a4
                  blt          s10, s0, 915f
914:              sub          a5, t2, s2
915:              sltiu        s8, t3, -1513
                  slt          s3, s3, s2
                  xor          s11, s4, t2
                  slli         a4, s9, 23
919:              andi         s4, t3, -1657
                  bltu         a1, s3, 932f
                  andi         a4, s8, 866
                  andi         t5, a7, -988
                  slt          a1, a4, s2
                  addi         s11, t2, 538
                  srai         s5, t6, 5
                  xori         s1, gp, -740
                  sub          t2, s3, t5
                  sll          a4, s8, t5
                  srl          s6, ra, t6
                  xori         ra, a0, -254
                  sltu         tp, t6, t1
932:              blt          s3, s2, 944f
                  add          s11, ra, s10
                  ori          s8, a6, 1203
                  srli         ra, t3, 14
                  sltu         s6, s9, s8
                  sra          a1, t6, ra
                  bge          s9, a6, 958f
                  bgeu         a5, s9, 952f
                  xori         s6, s9, 1065
                  auipc        a3, 496982
                  and          s2, s2, s1
                  slti         s10, t2, 651
944:              beq          t0, t2, 963f
                  bge          sp, a5, 946f
946:              nop
                  srli         s4, t5, 3
                  xori         t2, s5, 489
                  slt          a5, t5, s10
                  blt          s7, gp, 953f
                  sll          s4, t5, s7
952:              bne          s10, s2, 956f
953:              slti         s4, t6, -1961
                  beq          t1, s7, 955f
955:              ori          t3, a4, 376
956:              lui          s2, 308925
                  add          s5, gp, s9
958:              sll          a3, a7, ra
                  bltu         t0, s2, 974f
                  sltu         a0, s0, s11
                  ori          a2, a3, -186
                  add          t3, s6, t0
963:              ori          t1, a5, 514
                  andi         tp, s0, 1803
                  sub          tp, a4, s7
                  xori         s8, t3, 751
                  bne          a5, a7, 974f
                  addi         t5, a7, 1514
                  or           sp, sp, s4
                  nop
                  lui          a4, 605136
                  slti         zero, t3, 1563
                  sltu         t2, zero, t3
974:              sra          sp, a1, a4
                  slti         s3, ra, 1745
                  bne          zero, s0, 981f
                  slt          t3, t1, a0
                  sub          s1, a4, s2
                  ori          s9, t6, -1602
                  xor          s11, s1, s3
981:              sltu         a7, sp, ra
                  xori         t2, a0, -375
                  or           s10, t6, s1
                  bne          t3, ra, 992f
                  xori         s8, t1, -1482
                  bgeu         a0, a3, 1003f
                  beq          s5, a7, 1007f
                  lui          t4, 351207
                  beq          t4, t5, 994f
                  bltu         s6, a3, 1003f
                  ori          t5, a4, -1688
992:              bne          a4, a7, 1005f
                  andi         s6, t2, -1110
994:              ori          s10, s4, -1954
                  beq          a3, t2, 1010f
                  or           s5, a5, ra
                  lui          a3, 877928
                  lui          t5, 973356
                  sra          s1, tp, a7
                  sltiu        s2, s2, 876
                  srli         sp, a1, 4
                  sub          sp, a2, zero
1003:             srai         a0, s7, 1
                  slt          s2, t1, t0
1005:             srl          s11, t0, t2
                  sltiu        s6, t3, -617
1007:             xori         t1, a7, 1979
                  sub          s6, ra, t2
                  sltu         a7, t1, s9
1010:             xori         s3, t6, -1656
                  srl          s5, a2, a7
                  ori          a4, t4, -1901
                  xori         t4, sp, -518
                  xor          t4, ra, a7
                  auipc        s2, 569951
                  srai         zero, s7, 29
                  slt          s5, t2, s1
                  auipc        s1, 615978
                  ori          tp, t0, 1986
                  or           gp, a6, s3
                  slli         a4, t1, 23
                  beq          a5, a4, 1026f
                  or           s9, t4, a4
                  srai         s5, t3, 24
                  srai         t3, gp, 0
1026:             blt          s10, a3, 1042f
                  xori         s2, s4, -1561
                  xor          a7, a5, s0
                  bgeu         s11, a2, 1034f
                  add          s0, sp, s6
                  or           a0, s6, s5
                  add          s7, t6, s2
                  ori          t2, a1, 1185
1034:             bltu         t5, s9, 1046f
                  sra          s5, a1, a6
                  sltiu        a7, s3, -1211
                  lui          a0, 662519
                  srli         zero, s2, 30
                  srl          s6, a5, t2
                  bge          t5, a4, 1043f
                  bgeu         a0, t1, 1054f
1042:             xor          tp, zero, s6
1043:             addi         a5, t4, 460
                  bne          a0, a5, 1059f
                  slli         s10, s2, 30
1046:             lui          t3, 219183
                  xori         gp, s7, -1583
                  nop
                  slt          a1, t5, tp
                  addi         s8, t1, -1478
                  xor          s10, a5, s10
                  xor          s11, s8, a1
                  srai         a1, t2, 9
1054:             ori          s2, t1, -2025
                  and          s0, a0, s8
                  andi         s5, a2, -1590
                  blt          s10, t2, 1061f
                  srl          gp, a0, a4
1059:             bne          a7, t0, 1064f
                  blt          s4, t4, 1061f
1061:             bltu         t1, s11, 1081f
                  slti         t4, t0, 946
                  beq          a6, s6, 1075f
1064:             sub          a0, s7, ra
                  sub          s10, a6, s3
                  addi         a4, s10, -506
                  slti         s10, a7, 362
                  bltu         ra, s3, 1087f
                  sll          a5, t6, t0
                  bge          t2, t0, 1082f
                  addi         t2, s2, -502
                  xor          a7, s3, sp
                  bltu         a1, s6, 1089f
                  sll          tp, s6, s6
1075:             sub          tp, a7, a7
                  sub          s9, s4, s9
                  slli         a2, a6, 4
                  bgeu         a4, s4, 1082f
                  add          s7, s6, s6
                  and          a0, a7, s5
1081:             bgeu         s3, a5, 1101f
1082:             xor          t3, s7, tp
                  xor          a4, s0, t3
                  bltu         t1, a7, 1087f
                  blt          s9, t2, 1088f
                  blt          t2, zero, 1087f
                  la           t1, region_1+1207 #start riscv_load_store_rand_instr_stream_14
                  slti         s10, s8, -1606
                  xori         ra, a1, 1799
                  lb           s2, -16(t1)
                  lbu          s5, 6(t1)
                  sw           a3, 9(t1)
                  slt          a5, s6, t2
                  sh           s8, -3(t1)
                  sra          s8, s7, s11
                  sltu         a1, a7, s9
                  lbu          s3, 2(t1)
                  ori          a4, s1, -44
                  sll          s11, gp, s5
                  sb           s10, -2(t1)
                  sb           a2, 16(t1)
                  lb           a7, -13(t1)
                  sltu         a1, a2, s6
                  lb           a4, -1(t1)
                  lb           gp, -13(t1)
                  sb           a4, 14(t1)
                  sb           s8, 16(t1)
                  lh           sp, -5(t1)
                  lb           a2, 8(t1)
                  sb           t3, -5(t1)
                  slti         a1, s1, -136
                  sb           gp, -4(t1)
                  or           a4, a7, a4
                  sll          s8, s6, t0
                  andi         s11, s8, -1116
                  lb           s9, 10(t1)
                  lbu          a3, -1(t1)
                  xor          a5, s1, t2
                  ori          a0, s7, 1678
                  sh           sp, 3(t1)
                  sb           a2, -15(t1)
                  lh           t2, 9(t1)
                  sh           s1, -5(t1)
                  lui          s11, 869642
                  sb           s11, 6(t1)
                  sh           s9, -15(t1)
                  sh           a3, 3(t1)
                  auipc        a1, 1012905
                  lui          s5, 592626
                  lb           a0, 16(t1)
                  xor          tp, t1, gp
                  lb           s8, 12(t1)
                  sb           tp, 2(t1)
                  sb           t3, -4(t1) #end riscv_load_store_rand_instr_stream_14
1087:             andi         zero, s4, 436
1088:             andi         s1, s7, 1311
1089:             sltiu        s0, tp, 651
                  sra          s4, s11, t1
                  xori         zero, s5, 1979
                  andi         s8, s4, 1683
                  srai         tp, a1, 2
                  srl          sp, s5, s11
                  bge          a7, a7, 1100f
                  slt          s3, t0, a5
                  bge          zero, s9, 1114f
                  andi         s5, t2, 1756
                  auipc        s9, 624895
1100:             xor          s4, s0, tp
1101:             srl          a4, s4, sp
                  slti         a5, t1, -301
                  addi         gp, t4, -289
                  slt          sp, s5, a7
                  blt          sp, s4, 1113f
                  srl          a4, t1, a3
                  or           s8, gp, s10
                  auipc        gp, 969042
                  srli         t5, a3, 19
                  srl          s8, tp, t6
                  srli         t3, s6, 20
                  slti         tp, a7, 61
1113:             srli         t1, a6, 5
1114:             slli         tp, t6, 1
                  blt          tp, s11, 1123f
                  addi         a2, s8, -931
                  srai         sp, s2, 16
                  slli         s5, t4, 12
                  addi         t5, s1, 825
                  beq          a2, s10, 1133f
                  xori         s10, s5, -1338
                  bge          s1, t3, 1135f
1123:             sub          t2, s5, s0
                  nop
                  or           a7, s4, s9
                  nop
                  slt          ra, t1, sp
                  auipc        s2, 585510
                  andi         s10, sp, 825
                  sra          a1, t2, tp
                  sra          a0, ra, t1
                  and          s11, t3, s1
1133:             slt          s0, gp, t2
                  bge          a5, s7, 1148f
1135:             slt          s9, a5, gp
                  and          a4, a2, t2
                  slli         a7, s4, 3
                  and          s0, sp, a0
                  bltu         a0, a0, 1144f
                  andi         s1, a0, -1612
                  blt          zero, t2, 1161f
                  sltiu        t3, gp, -616
                  auipc        s6, 425534
1144:             bne          s4, s5, 1159f
                  srai         a3, s11, 1
                  auipc        a2, 349826
                  bne          a3, tp, 1161f
1148:             blt          s6, s6, 1155f
                  sub          tp, s10, a5
                  blt          s9, s10, 1162f
                  lui          t3, 480664
                  or           sp, a5, s11
                  slli         a1, s7, 25
                  lui          s6, 364906
1155:             sra          a4, t4, t2
                  srli         a7, gp, 13
                  xori         t1, gp, 1363
                  nop
1159:             srli         s9, sp, 9
                  slli         a0, t4, 5
1161:             andi         a1, a5, 495
1162:             addi         a1, s1, 914
                  lui          ra, 535285
                  srli         tp, s8, 18
                  blt          s2, ra, 1167f
                  lui          s11, 787244
1167:             bltu         a2, s4, 1182f
                  bltu         s2, gp, 1173f
                  bltu         tp, a7, 1172f
                  srli         s1, s1, 2
                  or           tp, t5, tp
1172:             sub          s11, s11, s4
1173:             nop
                  srli         gp, zero, 9
                  xori         gp, s10, 263
                  xor          sp, t2, zero
                  slt          t3, sp, s11
                  sub          sp, s6, ra
                  blt          s3, s8, 1195f
                  sra          t5, s6, t5
                  slli         s1, sp, 26
1182:             beq          t6, a1, 1202f
                  srli         s0, s10, 16
                  nop
                  bltu         a1, t6, 1192f
                  bne          ra, s7, 1194f
                  slti         t1, zero, -498
                  slt          a3, t0, gp
                  xor          t2, t0, a6
                  or           s7, a4, s3
                  sltu         s5, t6, zero
1192:             bgeu         t5, zero, 1200f
                  lui          gp, 613090
1194:             sltu         s6, sp, s7
1195:             andi         s11, ra, 874
                  add          s3, t4, t6
                  addi         a7, s5, -623
                  nop
                  nop
1200:             or           gp, gp, s2
                  srli         a5, s6, 21
1202:             or           a3, sp, s10
                  sltiu        a7, a4, -115
                  blt          s2, sp, 1207f
                  sltiu        gp, ra, 280
                  xori         zero, a5, -1221
1207:             ori          a0, s11, -1167
                  sltiu        s6, ra, -297
                  bltu         s6, ra, 1222f
                  beq          t0, s11, 1214f
                  sub          t3, tp, t2
                  xor          s2, s9, s11
                  sltu         s5, s7, tp
1214:             bgeu         s1, s5, 1215f
1215:             andi         s1, a4, -1823
                  bltu         a5, gp, 1229f
                  slti         t1, s6, 860
                  xor          a7, s1, a6
                  bgeu         a6, a2, 1232f
                  and          s11, a4, s2
                  slti         s8, s3, -1892
1222:             bge          t4, t6, 1227f
                  bgeu         a7, a3, 1243f
                  slti         s10, a5, -64
                  ori          s6, s9, 680
                  srai         a1, a3, 2
1227:             beq          t0, t4, 1241f
                  slti         a3, t6, 0
1229:             slli         s2, tp, 7
                  add          s4, a0, t1
                  sltiu        zero, s7, 1758
1232:             srli         a1, s8, 2
                  bgeu         zero, s11, 1238f
                  sltu         a5, s1, t5
                  sub          a0, t2, t5
                  nop
                  addi         s5, a5, -933
1238:             sub          t3, t5, a6
                  slti         t4, s7, 92
                  bge          t6, a1, 1254f
1241:             slli         sp, a3, 12
                  srl          t5, s1, a1
1243:             sra          tp, s2, t0
                  ori          s7, a1, -264
                  or           a5, sp, sp
                  lui          t5, 41794
                  or           a0, t3, s4
                  srli         a2, s10, 31
                  beq          zero, s2, 1251f
                  slti         s10, t4, 310
1251:             addi         s7, tp, 491
                  and          s10, t0, t1
                  sra          sp, t5, a1
1254:             xor          a0, a1, zero
                  srli         s5, s11, 24
                  xor          s5, t1, s0
                  xori         a4, s0, -454
                  sub          s5, t4, t4
                  add          s10, tp, a5
                  addi         a0, t6, 495
                  srli         s11, a2, 21
                  ori          a2, a6, 1456
                  xor          ra, a4, a0
                  and          a2, a3, t5
                  xori         a2, s0, 1764
                  bne          s8, a0, 1281f
                  bgeu         s1, a2, 1287f
                  nop
                  bgeu         t3, sp, 1273f
                  lui          t2, 146939
                  or           tp, s3, t1
                  beq          s4, t4, 1284f
1273:             srli         gp, s2, 16
                  bgeu         t4, s11, 1289f
                  nop
                  blt          s11, a2, 1295f
                  sub          a2, s11, s2
                  bne          s1, gp, 1290f
                  bltu         a7, gp, 1280f
1280:             and          s11, s6, s6
1281:             xor          a2, s9, s2
                  xori         s5, t1, -1704
                  la           ra, region_0+386 #start riscv_load_store_rand_instr_stream_15
                  xor          a1, s0, s3
                  lh           s7, 28(ra)
                  sh           ra, -46(ra)
                  slt          s6, s7, s2
                  ori          zero, sp, 465
                  lb           s11, 6(ra)
                  lbu          sp, -57(ra)
                  sb           s7, -1(ra)
                  nop
                  sw           t1, 54(ra)
                  sltu         gp, tp, t1
                  addi         t1, t1, 632
                  lb           a3, 37(ra)
                  lui          s11, 102781
                  lh           s10, -36(ra)
                  lbu          s8, -25(ra)
                  auipc        s11, 285883
                  sub          s10, t2, t3
                  nop
                  slli         s5, t5, 26
                  sh           s3, -34(ra)
                  lbu          t1, 33(ra)
                  auipc        s4, 500088
                  lhu          gp, 52(ra)
                  sb           t2, 14(ra)
                  lbu          t1, -39(ra)
                  lb           t5, -21(ra)
                  lhu          s2, -56(ra)
                  lb           s11, 14(ra) #end riscv_load_store_rand_instr_stream_15
                  or           s5, s5, s3
1284:             auipc        s11, 655822
                  srl          s3, tp, sp
                  srai         a0, a1, 19
1287:             lui          a1, 616698
                  add          zero, t4, a5
1289:             sub          s3, a0, s11
1290:             andi         a7, s1, -604
                  nop
                  andi         a5, t0, 603
                  ori          s0, t5, -666
                  sltiu        a0, s8, 968
1295:             slt          a1, s6, s1
                  auipc        tp, 1047603
                  slti         t5, s11, -1050
                  nop
                  sll          s7, sp, s8
                  sltiu        t3, s10, -339
                  bge          a0, s2, 1316f
                  and          s9, s7, s8
                  beq          t2, a0, 1320f
                  bne          t0, t1, 1316f
                  lui          t2, 1045761
                  lui          s0, 808974
                  addi         a2, s11, 1156
                  andi         sp, t2, -1213
                  xor          s2, s9, s6
                  slt          zero, s10, s10
                  lui          a5, 314297
                  nop
                  addi         a7, s2, -1017
                  srl          a2, s5, t3
                  bne          gp, t0, 1332f
1316:             sltu         tp, gp, a5
                  addi         s0, s4, 164
                  srai         s11, t3, 15
                  or           s11, a6, ra
1320:             slt          a5, s9, s2
                  andi         a2, ra, -755
                  beq          a3, s6, 1336f
                  srl          s9, a4, s5
                  auipc        s6, 79846
                  sra          a5, t4, a6
                  auipc        s10, 355408
                  sltu         s5, t6, a4
                  bltu         t5, a3, 1341f
                  or           s9, s0, a6
                  nop
                  andi         t5, s5, -194
1332:             beq          s3, a5, 1334f
                  beq          s6, sp, 1353f
1334:             bgeu         s10, s9, 1346f
                  andi         t3, t0, -1302
1336:             bge          t4, t3, 1341f
                  srai         a4, t1, 2
                  sub          s9, s10, gp
                  ori          s3, s1, 1616
                  bltu         s6, s6, 1341f
1341:             slli         s9, s11, 14
                  sra          t3, s2, s11
                  blt          sp, t1, 1359f
                  bltu         s2, s3, 1347f
                  srli         s7, a1, 0
1346:             srl          t5, sp, t6
1347:             blt          ra, t1, 1354f
                  srli         ra, t1, 1
                  ori          s4, s5, -1225
                  ori          t4, tp, -1098
                  or           t5, ra, t4
                  srai         s9, t3, 30
1353:             sltiu        s1, a2, -927
1354:             slti         a4, sp, -79
                  slt          s8, s8, s8
                  bge          a7, a4, 1361f
                  xor          t5, ra, ra
                  slt          t5, a1, ra
1359:             addi         a3, s7, -786
                  slli         a7, a2, 14
1361:             sra          a3, s3, a3
                  bgeu         s4, gp, 1374f
                  xor          ra, t2, t2
                  or           sp, ra, t6
                  beq          tp, a7, 1384f
                  blt          t0, a6, 1379f
                  blt          a1, t1, 1381f
                  addi         s0, gp, 351
                  xor          t5, a3, t5
                  addi         t4, s1, -1879
                  or           a0, t1, a3
                  srli         s9, zero, 30
                  sltu         t1, s0, ra
1374:             bltu         a3, a7, 1382f
                  srl          a1, s0, s0
                  ori          a2, t0, -1719
                  srli         gp, a1, 18
                  add          s6, s9, tp
1379:             and          a5, zero, s1
                  xor          s3, a6, a0
1381:             sll          t4, t5, s0
1382:             or           s8, t3, s9
                  sub          s9, t4, t6
1384:             bltu         a7, a1, 1387f
                  sra          s2, t1, s8
                  slt          s2, a6, s10
1387:             bgeu         t2, a7, 1391f
                  bltu         s8, s11, 1403f
                  andi         t4, t1, 1501
                  srai         s5, a4, 6
1391:             xori         s11, a3, -1278
                  auipc        t1, 660470
                  add          ra, s1, tp
                  bne          a7, s4, 1406f
                  sub          s8, ra, s7
                  sll          s9, s7, t0
                  bgeu         tp, t2, 1405f
                  sll          a7, t6, t5
                  srli         a3, s11, 29
                  sra          s2, a2, t4
                  srli         a1, s11, 6
                  xor          a1, t1, tp
1403:             bltu         a1, s11, 1423f
                  slt          a0, a6, t6
1405:             bge          s10, t1, 1418f
1406:             srai         t1, t2, 31
                  add          t4, a5, sp
                  srai         a3, ra, 6
                  sra          s8, s0, t1
                  bge          tp, a2, 1415f
                  bgeu         a7, tp, 1412f
1412:             srai         s10, s11, 8
                  ori          s1, zero, 939
                  slli         a5, a4, 17
1415:             bltu         s4, a6, 1435f
                  lui          a0, 838886
                  srli         a1, a3, 13
1418:             sll          t5, s6, t2
                  xor          s6, s8, t0
                  or           a3, a0, a2
                  sra          ra, s10, t6
                  addi         a0, s6, 1680
1423:             srli         a7, s9, 28
                  bge          t5, a5, 1439f
                  srai         a7, a3, 17
                  xor          s1, a0, s8
                  or           t2, a3, s11
                  nop
                  srli         s3, s8, 16
                  bge          a5, s5, 1445f
                  bgeu         s2, tp, 1435f
                  xori         gp, sp, 1143
                  xor          s10, gp, gp
                  sra          t2, a2, ra
1435:             slti         a1, sp, -261
                  bne          a3, zero, 1443f
                  sltiu        s5, s3, -2000
                  add          a3, t1, s2
1439:             slli         s11, t2, 5
                  xor          a5, t5, gp
                  slti         s10, t1, -1174
                  slli         s4, sp, 30
1443:             sub          a7, a3, t6
                  xori         s9, s9, -76
1445:             srl          s4, sp, s11
                  xor          a5, s3, s11
                  slt          a1, ra, a4
                  blt          zero, a2, 1465f
                  xori         s8, s2, -1502
                  add          a4, a7, s6
                  addi         a7, sp, 1230
                  slti         s1, s11, -572
                  sll          t3, s3, a7
                  and          s6, s3, s3
                  sltiu        gp, s1, -1818
                  srai         t4, t3, 18
                  sltu         s7, tp, s8
                  blt          s9, s11, 1471f
                  ori          t1, t5, -529
                  sub          t2, a1, s5
                  sltiu        t3, t5, 1011
                  bltu         t4, s6, 1477f
                  bge          tp, a7, 1476f
                  sltiu        a0, s0, 1922
1465:             sltiu        a2, s4, 1035
                  srai         s4, t6, 14
                  ori          a7, a3, 124
                  xori         a3, t5, 667
                  xor          ra, s3, tp
                  blt          t6, a2, 1475f
1471:             and          sp, a2, s8
                  add          a7, s11, zero
                  bge          t0, a7, 1486f
                  auipc        s4, 156593
1475:             ori          s8, s11, -1803
1476:             slti         tp, s6, -1714
1477:             sll          a1, a6, s6
                  bne          t4, t4, 1492f
                  ori          ra, s10, 1855
                  sll          a0, t0, zero
                  auipc        s5, 733179
                  xor          t1, s3, t0
                  andi         a2, s4, -567
                  bltu         s0, s0, 1503f
                  andi         t4, t6, 289
1486:             slli         s0, a3, 7
                  sra          a3, t2, t1
                  srli         t3, a6, 8
                  srli         t3, s11, 1
                  auipc        s1, 118896
                  bne          a0, t1, 1494f
1492:             add          a1, tp, t3
                  lui          tp, 447418
1494:             or           t3, zero, t3
                  bgeu         s6, t5, 1503f
                  sra          a2, t5, t5
                  and          a4, s6, t0
                  beq          t5, s3, 1502f
                  slt          t1, s9, a0
                  srl          t4, s3, s5
                  sltu         sp, tp, s2
1502:             slli         t3, t5, 21
1503:             sltiu        s9, s6, -1074
                  bne          a7, a0, 1524f
                  blt          a2, s3, 1517f
                  sub          zero, t4, sp
                  sub          a7, s8, a5
                  bge          a2, t3, 1528f
                  blt          s11, a0, 1524f
                  srli         a1, zero, 14
                  bgeu         a4, t6, 1526f
                  bgeu         s9, a0, 1513f
1513:             sub          s2, gp, s7
                  and          s10, s6, s11
                  sltu         s7, zero, ra
                  addi         s2, a1, 1894
1517:             and          s3, a2, s9
                  srl          s0, s8, t1
                  slt          s11, a7, zero
                  slti         s6, tp, 1175
                  ori          a4, a5, -1997
                  sll          tp, s3, t0
                  xori         s4, a5, -748
1524:             sub          s6, s2, s6
                  andi         a2, t2, -105
1526:             blt          a1, a6, 1542f
                  srai         a3, a5, 14
1528:             xori         s4, a6, -166
                  sub          a4, t6, s6
                  lui          s8, 954889
                  sll          tp, s6, s5
                  andi         s6, a5, -1718
                  xori         t4, ra, 162
                  bgeu         t2, s4, 1538f
                  srl          s3, sp, s9
                  slt          a2, s8, s7
                  or           a5, t2, s10
1538:             slli         s3, tp, 6
                  nop
                  sll          s10, a2, s7
                  sra          a1, t5, a0
1542:             sltu         t5, t2, s8
                  sra          s10, a5, tp
                  bgeu         a5, a1, 1556f
                  sub          t5, sp, t6
                  srli         gp, t6, 3
                  blt          s1, s11, 1559f
                  beq          t6, s6, 1553f
                  sll          gp, s6, t5
                  and          s4, ra, tp
                  or           t2, t3, a7
                  or           a3, s9, t2
1553:             bgeu         t1, s0, 1558f
                  andi         s9, a6, -233
                  sra          s7, sp, s4
1556:             slli         s9, a7, 22
                  add          a7, tp, s4
1558:             bne          a6, s6, 1560f
1559:             bltu         sp, sp, 1567f
1560:             bltu         s10, s9, 1563f
                  bne          tp, t5, 1562f
1562:             srl          s2, tp, a0
1563:             srl          s8, a5, a6
                  sll          s7, t4, a3
                  beq          s7, a3, 1579f
                  xor          s0, tp, s9
1567:             add          s11, s11, a6
                  bgeu         a2, t3, 1588f
                  sub          s9, t0, t1
                  bgeu         t6, a5, 1584f
                  sltu         s7, gp, a2
                  lui          gp, 748026
                  sltiu        s1, s11, -1758
                  srl          s11, ra, s2
                  or           gp, a7, s1
                  bne          t1, s9, 1589f
                  srli         s0, s2, 0
                  sub          t2, t4, s7
1579:             addi         t2, a1, 531
                  beq          zero, t3, 1583f
                  and          a7, a2, s7
                  slli         a4, sp, 0
1583:             bltu         t3, zero, 1603f
1584:             xor          s4, tp, gp
                  ori          a3, tp, -1159
                  bne          s6, s4, 1587f
1587:             srl          s1, t5, s10
1588:             slti         a5, zero, 1015
1589:             andi         t3, s6, -600
                  slt          t3, s1, t6
                  bgeu         gp, t5, 1610f
                  or           ra, s2, a4
                  andi         s4, a2, -227
                  addi         a2, ra, -733
                  srai         s6, sp, 16
                  beq          sp, tp, 1604f
                  bne          s0, s2, 1617f
                  slt          s10, s4, a0
                  nop
                  sll          tp, a0, gp
                  nop
                  bltu         t2, t2, 1610f
1603:             blt          s9, s2, 1608f
1604:             srai         t2, s11, 9
                  or           t2, s1, a0
                  addi         s0, t3, -1960
                  slt          s5, sp, a5
1608:             bne          s2, ra, 1612f
                  lui          a3, 833651
1610:             andi         a1, s5, -1595
                  bge          s5, a7, 1628f
1612:             or           a4, a6, s8
                  addi         s0, t6, 650
                  andi         a5, a4, -37
                  beq          t3, s8, 1629f
                  slli         a1, s5, 19
1617:             nop
                  slt          s3, a7, a2
                  add          s8, t4, gp
                  and          a3, t6, a2
                  xor          s8, a7, s4
                  and          zero, t2, s1
                  and          s11, s1, a7
                  xori         s7, a7, 457
                  bne          t4, ra, 1637f
                  sll          t1, t5, t3
                  slti         a5, t6, 1760
1628:             slli         gp, ra, 20
1629:             and          s5, sp, t1
                  sltiu        t5, s9, -1741
                  add          a0, s6, t2
                  ori          s3, s11, -642
                  sltiu        s1, s6, -404
                  sltiu        s11, a0, -1786
                  slti         s2, ra, -326
                  slti         tp, s2, -1717
1637:             auipc        zero, 977876
                  blt          s9, a5, 1642f
                  srli         t1, a7, 10
                  slli         gp, t3, 14
                  sra          s11, a6, gp
1642:             xor          t1, a7, a3
                  srli         s7, s0, 1
                  ori          s0, t6, -930
                  srai         t5, t6, 22
                  sub          ra, s4, gp
                  addi         tp, a2, -139
                  ori          sp, t0, 95
                  and          ra, t4, t3
                  beq          a0, s9, 1655f
                  sll          t3, gp, s0
                  ori          s6, a6, -1043
                  sltiu        a5, t0, 2034
                  nop
1655:             and          s0, t2, s2
                  srai         a1, a3, 11
                  and          a1, s2, s10
                  bltu         t5, a3, 1671f
                  srli         a0, t0, 4
                  ori          sp, s10, 1029
                  slli         a1, t3, 19
                  bne          t6, a6, 1675f
                  add          s5, t5, s2
                  nop
                  sra          sp, gp, t5
                  srai         zero, s2, 31
                  lui          ra, 468847
                  or           s2, sp, t2
                  sra          s8, a7, t0
                  bge          t5, zero, 1675f
1671:             blt          t1, a2, 1686f
                  xori         t5, a3, -350
                  sub          s7, a5, a0
                  slti         t1, s2, -763
1675:             bltu         s11, s9, 1690f
                  blt          a4, a2, 1696f
                  xor          a3, t6, s1
                  or           s3, s9, zero
                  ori          t1, a5, -1863
                  xor          s4, a3, t6
                  blt          t6, t2, 1696f
                  sltu         s3, s6, a0
                  sltiu        t2, a7, -742
                  bne          s0, s7, 1696f
                  xori         s5, gp, -789
1686:             xor          a1, gp, s11
                  blt          s6, t5, 1703f
                  sltiu        a4, t2, -676
                  lui          s0, 425978
1690:             sra          ra, s9, t3
                  and          s6, ra, t5
                  addi         a5, t3, -1565
                  addi         s6, s6, 1964
                  add          t3, s6, tp
                  sub          ra, t1, s11
1696:             srli         t2, t2, 22
                  auipc        s5, 317068
                  add          t2, t5, s8
                  auipc        a0, 743930
                  bgeu         tp, tp, 1701f
1701:             slt          s4, t3, a3
                  sra          a4, s0, tp
1703:             sra          t1, a3, t6
                  bge          s11, s7, 1707f
                  ori          tp, t3, -363
                  bgeu         a7, a2, 1708f
1707:             bgeu         tp, s0, 1714f
1708:             sra          s10, sp, a0
                  bgeu         a6, tp, 1721f
                  slli         s10, t4, 26
                  nop
                  bgeu         s11, s5, 1714f
                  auipc        t2, 726154
1714:             auipc        s3, 686295
                  srl          s7, s2, a7
                  xor          s0, a3, a0
                  slli         a2, s5, 27
                  add          a4, s3, s11
                  and          s10, a1, sp
                  bgeu         a1, s11, 1725f
1721:             sll          a0, s8, t2
                  sltu         t2, s2, a0
                  sub          s8, a7, a5
                  add          ra, s4, s10
1725:             andi         s2, t4, 102
                  and          gp, t1, s9
                  sra          a5, t6, s9
                  andi         sp, s6, 1156
                  xor          s7, s0, s4
                  nop
                  bgeu         a7, a7, 1744f
                  srai         a0, gp, 9
                  slti         ra, t5, -762
                  slti         gp, gp, -838
                  bge          t6, t4, 1754f
                  sltu         sp, a0, sp
                  andi         t3, a2, 801
                  sltu         s9, sp, s5
                  sra          a2, a2, zero
                  sub          t2, s9, t6
                  sll          t4, s8, s5
                  sll          a2, t5, ra
                  andi         s1, a1, 1521
1744:             srl          s5, s10, zero
                  bltu         s3, gp, 1757f
                  andi         s1, a6, 779
                  slti         t5, s7, 496
                  bne          s1, a4, 1768f
                  slt          a5, a2, t4
                  and          s1, s2, tp
                  slli         t5, s9, 0
                  lui          sp, 512819
                  sltiu        a7, t5, 885
1754:             ori          s3, t6, -1331
                  addi         s2, s2, 849
                  blt          gp, zero, 1761f
1757:             ori          sp, s10, 1694
                  sll          s2, s8, a5
                  xor          s3, a6, s8
                  sltu         zero, a5, s6
1761:             lui          a1, 382311
                  bne          a7, a0, 1766f
                  slli         s6, s3, 7
                  slt          t3, a0, sp
                  slt          a5, tp, t2
1766:             addi         s4, a6, 1006
                  bltu         tp, t4, 1781f
1768:             sll          a1, s11, s2
                  slti         t5, t1, -989
                  sub          s8, s5, s4
                  srl          a2, t3, s5
                  sltu         s1, a6, t4
                  slti         t5, gp, 2043
                  or           s9, a7, s4
                  srl          s4, a6, t1
                  lui          s0, 722841
                  srai         s11, t1, 29
                  addi         t5, s11, -1995
                  add          s6, s9, t3
                  add          s5, s4, ra
1781:             sra          s4, s5, t3
                  bgeu         t0, s10, 1798f
                  sltiu        t2, s5, -352
                  andi         s0, sp, 1131
                  xor          a3, t5, s0
                  srai         a1, s9, 28
                  bge          tp, t5, 1788f
1788:             sll          a3, t1, ra
                  slli         s3, tp, 25
                  and          s1, s5, s11
                  slt          a1, a2, a1
                  auipc        s6, 866811
                  addi         zero, t2, 632
                  xori         a3, s2, 140
                  add          s1, t3, tp
                  bgeu         sp, a0, 1804f
                  sll          s0, t6, s7
1798:             srl          gp, s7, a1
                  sra          s8, s11, s2
                  xori         ra, t5, -1431
                  xori         a3, t6, -437
                  addi         a2, s10, -1853
                  beq          s11, a6, 1818f
1804:             beq          a7, s5, 1824f
                  sra          s4, t5, t6
                  bltu         s11, s0, 1814f
                  or           a1, a3, tp
                  srl          s4, gp, a4
                  sra          t5, gp, a0
                  beq          t4, s9, 1813f
                  and          s2, t0, t4
                  slti         s2, s9, -1204
1813:             srli         s3, t5, 21
1814:             bltu         a4, s5, 1831f
                  addi         s6, a7, -1736
                  sll          a5, s8, s2
                  bne          tp, s6, 1821f
1818:             slli         a0, s1, 3
                  blt          a0, s8, 1832f
                  xori         s6, s0, -803
1821:             lui          a0, 847880
                  andi         s10, t2, -427
                  bltu         s0, gp, 1824f
1824:             bge          t4, a1, 1837f
                  sub          a3, t1, ra
                  blt          a2, t5, 1833f
                  ori          t5, sp, 1956
                  andi         t3, a7, 1477
                  andi         t2, t2, -791
                  beq          s6, s1, 1845f
1831:             nop
1832:             slti         a3, s1, 1534
1833:             sltu         a5, a0, a0
                  bge          gp, sp, 1848f
                  slt          s0, t0, s4
                  bltu         t2, s10, 1848f
1837:             bgeu         a4, a5, 1842f
                  auipc        t1, 933836
                  srli         s2, t5, 14
                  slti         s0, a0, -783
                  sltu         a3, t0, a5
1842:             add          s7, s9, sp
                  sra          a3, t4, s10
                  blt          s3, s0, 1864f
1845:             ori          gp, a5, -1117
                  and          t5, a4, s5
                  ori          s10, s9, -1693
1848:             bne          s7, t3, 1860f
                  sltu         ra, sp, s8
                  slt          s9, sp, s11
                  srai         t4, a5, 23
                  lui          s11, 505261
                  lui          s9, 428646
                  sltu         t4, t0, a5
                  bge          s9, tp, 1858f
                  srli         a5, a3, 2
                  srl          s0, a5, s5
1858:             and          a5, s4, a4
                  bge          a4, a2, 1874f
1860:             or           s4, s2, a7
                  sub          t3, sp, s1
                  sltiu        t5, s3, 1872
                  addi         s4, a0, 880
1864:             add          t1, s7, t1
                  sltu         s7, t6, s7
                  addi         s5, a1, -382
                  srai         s4, sp, 6
                  srli         s7, s8, 2
                  add          s8, s4, s5
                  or           s3, t6, t1
                  or           s7, s2, s0
                  lui          gp, 245180
                  and          s9, s6, a3
1874:             slli         s10, s8, 9
                  addi         a4, a4, 638
                  beq          s8, gp, 1877f
1877:             xor          s9, a0, zero
                  sltiu        sp, t5, -1186
                  slli         a4, s7, 9
                  beq          s1, t4, 1888f
                  nop
                  sltiu        s4, t5, -31
                  sra          sp, t0, a5
                  blt          s1, t2, 1899f
                  nop
                  slt          t2, s4, s0
                  sra          zero, a5, s9
1888:             lui          a4, 954996
                  sll          sp, s2, s10
                  auipc        t2, 107664
                  xori         s10, t2, 86
                  xori         s6, t6, -1927
                  bne          s1, s6, 1901f
                  nop
                  addi         ra, t5, 515
                  sra          a5, t0, s11
                  andi         a1, t4, 977
                  sltiu        a2, a6, 698
1899:             srl          s3, t0, zero
                  nop
1901:             add          a7, s6, a5
                  slt          sp, s1, s3
                  blt          sp, s6, 1917f
                  addi         a0, gp, 1224
                  sra          s6, s1, sp
                  xor          s2, s6, s11
                  xor          a3, t2, a1
                  xor          s2, s8, s0
                  slti         a2, t2, -1441
                  sltiu        s9, s2, 76
                  la           sp, region_1+1084 #start riscv_load_store_rand_instr_stream_0
                  slli         s11, a6, 7
                  slt          s11, tp, s3
                  and          t3, a0, s7
                  lbu          tp, -44(sp)
                  lb           t4, 55(sp)
                  srl          a5, zero, t6
                  lb           zero, -21(sp)
                  sb           t0, -15(sp)
                  xor          a2, gp, s6
                  srai         s10, s0, 14
                  sb           a1, 39(sp)
                  lb           s1, 38(sp)
                  sb           s7, 57(sp)
                  srli         a3, s10, 1
                  lbu          t4, -43(sp)
                  lbu          t4, 21(sp)
                  or           s5, t5, gp
                  lbu          s4, 55(sp)
                  sub          s1, a7, a1
                  srli         a3, s6, 4
                  lb           s10, 45(sp)
                  lbu          a4, -64(sp)
                  srl          a4, s6, ra
                  and          s3, t4, t1
                  and          t5, a6, t0
                  srli         t3, s7, 28
                  lbu          s6, 2(sp)
                  or           s2, a7, s4
                  srai         a2, a1, 6
                  sll          a4, a2, t1
                  lui          s11, 183727
                  sb           s3, -3(sp) #end riscv_load_store_rand_instr_stream_0
                  srl          a1, ra, s1
                  srai         a3, s10, 4
                  slt          t2, zero, t5
                  bltu         s6, t6, 1934f
                  beq          s9, t2, 1919f
                  sll          a4, s1, a3
1917:             slti         s10, a3, -1142
                  beq          ra, t1, 1938f
1919:             and          zero, s6, ra
                  add          t1, a3, s5
                  ori          s3, s0, 272
                  sll          s2, s5, t3
                  slli         s5, t5, 24
                  addi         a3, t5, 28
                  beq          s5, s9, 1927f
                  sltiu        t1, a0, -2030
1927:             slt          a0, t3, t2
                  bgeu         s1, zero, 1935f
                  bltu         t3, zero, 1942f
                  slt          a3, s0, a2
                  srai         s4, a5, 25
                  ori          sp, ra, 59
                  bge          s7, s2, 1946f
1934:             bge          t4, s10, 1939f
1935:             sll          tp, s6, s3
                  andi         s7, t2, -493
                  slli         s3, s8, 22
1938:             and          s1, a0, t3
1939:             slli         s9, a1, 17
                  xor          s8, s0, s2
                  xori         a5, s3, 160
1942:             lui          s7, 177817
                  xori         s7, s3, 996
                  sra          s7, s10, s6
                  auipc        s4, 37124
1946:             sub          sp, s2, s5
                  sltu         s11, s7, t5
                  nop
                  auipc        a2, 986317
                  addi         a0, t4, 1701
                  add          t5, a0, gp
                  srl          t4, s3, t1
                  nop
                  xori         s2, t5, 1258
                  srai         a1, sp, 7
                  add          a5, a0, sp
                  nop
                  slti         s6, a4, -59
                  bge          s1, s1, 1962f
                  bgeu         a6, s4, 1972f
                  bgeu         ra, a7, 1973f
1962:             ori          a0, a4, 1113
                  and          a4, a7, s8
                  sub          a0, tp, s7
                  add          s2, s9, t2
                  srl          s5, sp, a6
                  andi         s1, zero, -1794
                  bltu         t3, a3, 1973f
                  ori          sp, a7, 309
                  sub          s4, a0, sp
                  sra          s1, s1, s6
1972:             sll          t2, s7, a4
1973:             bge          tp, s0, 1989f
                  sltiu        t5, a1, 980
                  bltu         s10, s1, 1976f
1976:             bne          s9, s4, 1993f
                  lui          s1, 389190
                  bltu         s8, s8, 1981f
                  add          s9, s2, s7
                  add          s9, a4, a2
1981:             slli         s9, zero, 26
                  xori         s7, s5, 931
                  and          s6, a3, t1
                  sltiu        s1, s2, -1694
                  add          s3, t1, t0
                  xori         a4, t0, -1808
                  and          s11, a6, s9
                  auipc        s2, 544363
1989:             add          s5, a0, ra
                  ori          s5, s0, 303
                  srl          s8, t6, s1
                  srl          a2, tp, a6
1993:             bgeu         s5, s2, 2006f
                  bltu         s2, a5, 2009f
                  bne          s8, a5, 2009f
                  slti         a3, s7, 872
                  xori         t5, a4, 1611
                  xor          a5, t1, a7
                  srai         gp, sp, 29
                  andi         s3, a6, -1121
                  slli         tp, s7, 24
                  blt          a6, s8, 2022f
                  addi         ra, t2, 481
                  blt          a3, s4, 2023f
                  bgeu         t1, s4, 2010f
2006:             srl          a3, s6, t3
                  ori          s5, s7, -779
                  bltu         s2, a5, 2023f
2009:             slti         s6, a0, -1693
2010:             nop
                  xor          s10, zero, s1
                  slli         s4, sp, 9
                  addi         s3, s0, -1457
                  sltu         tp, s8, a1
                  or           s1, t4, t5
                  andi         zero, s7, 935
                  lui          t1, 147704
                  srai         a4, t6, 8
                  srli         t5, s9, 24
                  auipc        tp, 26527
                  lui          tp, 196427
2022:             and          t3, s10, a0
2023:             sll          s1, s7, a6
                  sra          s1, a3, a7
                  bgeu         a3, a5, 2029f
                  slt          t2, s8, a4
                  nop
                  auipc        s3, 743510
2029:             auipc        t2, 825362
                  srai         t3, sp, 21
                  slti         tp, s0, 1394
                  beq          t4, s6, 2044f
                  nop
                  addi         tp, s2, 215
                  bne          a7, s4, 2052f
                  slt          s10, s8, sp
                  sltu         s7, s10, s1
                  lui          a2, 999491
                  bltu         a1, a5, 2051f
                  nop
                  sltu         s4, s1, gp
                  bge          s2, s0, 2062f
                  sltiu        s11, t1, 131
2044:             beq          s8, t0, 2063f
                  andi         a2, s3, -1160
                  sub          zero, s2, t3
                  sltu         s5, s9, s6
                  slli         ra, sp, 9
                  srli         a4, t5, 25
                  auipc        sp, 987310
2051:             sltiu        a3, t3, 55
2052:             or           ra, sp, t3
                  bltu         s2, s8, 2066f
                  srl          ra, gp, t1
                  beq          a7, gp, 2070f
                  bge          a6, a5, 2059f
                  slli         s0, t0, 4
                  sra          s9, a7, t1
2059:             beq          a2, s9, 2079f
                  or           t2, tp, s5
                  sra          zero, t0, s7
2062:             srl          tp, s3, a5
2063:             xori         a4, s0, -210
                  slli         t1, s3, 15
                  ori          ra, s1, 647
2066:             sub          t3, s9, s11
                  and          s5, s6, s7
                  srli         t5, s10, 11
                  bne          s6, a7, 2072f
2070:             bne          sp, a6, 2075f
                  lui          a0, 283580
2072:             srli         a7, a7, 22
                  sra          s6, a0, gp
                  auipc        sp, 930216
2075:             srli         s8, s9, 31
                  sltiu        a3, s5, 1868
                  bgeu         t6, t6, 2092f
                  srl          a2, a5, a7
2079:             srli         t5, s3, 31
                  slti         a3, s1, 1405
                  bgeu         a7, t0, 2095f
                  sltiu        a7, s7, 576
                  and          s11, sp, a4
                  beq          a3, s5, 2092f
                  slli         s8, a0, 14
                  sra          sp, s8, s11
                  blt          a3, ra, 2092f
                  or           s5, t2, a7
                  xori         s0, s11, -1856
                  slt          a2, a3, tp
                  sltiu        a5, a3, -1008
2092:             sltu         s11, t6, s4
                  sub          s2, s7, s9
                  addi         tp, a7, -1115
2095:             ori          s6, s6, 437
                  bne          s10, t1, 2101f
                  bge          s11, s9, 2105f
                  sub          s2, a1, t0
                  sll          s1, a4, s11
                  srli         a3, t6, 1
2101:             srai         s7, s5, 6
                  slti         a4, s8, -1703
                  and          a5, s9, t2
                  xor          tp, tp, a3
2105:             bge          a5, s6, 2111f
                  bltu         t4, s11, 2111f
                  slt          a2, a7, tp
                  or           s1, s0, t1
                  slti         s9, t1, 174
                  srl          ra, a7, s7
2111:             or           s7, a3, t1
                  lw           t1, 4(t6)
                  addi         t6, t6, 24
                  ori          t2, t4, -640
                  srai         a2, t1, 26
                  xori         a3, t1, -353
                  sltiu        t2, a0, 710
                  lui          s9, 943710
                  srl          a5, a4, t1
                  slti         t5, s4, -926
                  sub          a2, t4, t0
                  add          s3, t0, s11
                  andi         t4, a0, -238
2782:             addi x19, x6, 1
2782:             jalr x19, x19, 0
sub_4:            beq          a3, a4, sub_4_stack_p
                  sltiu        tp, tp, 733
                  auipc        a2, 768332
                  or           t4, t2, s11
                  slli         a7, a1, 11
                  sltiu        a3, s4, 1099
sub_4_stack_p:    addi         t6, t6, -52
                  ori          tp, a1, -1544
                  slt          sp, tp, ra
                  srli         a5, sp, 24
                  sw           t1, 4(t6)
                  andi         s9, sp, -1655
                  srli         a2, gp, 23
                  add          a5, s0, s4
                  slli         s9, gp, 1
                  slti         s11, gp, 1277
                  addi         gp, s5, -687
                  auipc        tp, 492329
                  add          s9, t3, s3
                  slt          s3, s11, s8
                  ori          a4, s11, -1571
sub_4_j7:         jal          t1, sub_5 #jump sub_4 -> sub_5
                  la           s5, region_0+269 #start riscv_load_store_rand_instr_stream_0
                  lb           t1, 11(s5)
                  auipc        gp, 238928
                  sb           t2, -14(s5)
                  lui          ra, 705606
                  andi         ra, gp, 1305
                  xor          s11, ra, t5
                  auipc        s7, 191585
                  sb           t0, 12(s5)
                  lh           s6, -7(s5)
                  sh           sp, 1(s5)
                  lb           s6, 16(s5)
                  slli         s2, t2, 30
                  lbu          s0, -6(s5)
                  sw           a2, -9(s5)
                  sb           a4, 1(s5)
                  sw           s0, -5(s5)
                  andi         s10, zero, -536
                  lbu          gp, 4(s5)
                  sb           s4, 14(s5)
                  slti         s3, t6, -24
                  andi         s3, s6, -757
                  slti         a4, a4, -464
                  sb           a2, -6(s5)
                  lhu          t1, 5(s5)
                  sb           a0, -2(s5)
                  srli         zero, s9, 0
                  sub          gp, tp, gp
                  lbu          a7, 3(s5)
                  lbu          a5, 8(s5)
                  lb           t5, 14(s5)
                  lbu          a1, 0(s5)
                  lb           a5, 16(s5)
                  srai         a5, s5, 21
                  addi         zero, a3, -1507
                  lw           s3, 7(s5) #end riscv_load_store_rand_instr_stream_0
                  and          s6, a3, t1
                  xori         s0, s11, 466
                  addi         s5, s8, -962
                  nop
                  beq          s0, a3, 23f
                  slti         a2, s1, 658
                  auipc        s11, 22977
                  bgeu         a5, a1, 25f
                  bltu         s3, a6, 26f
                  sltu         a5, s0, a3
                  bne          s11, a0, 18f
                  srli         s10, sp, 10
                  slli         s3, a0, 23
                  sll          a0, s4, sp
                  blt          t1, a7, 28f
                  sub          t4, a0, s0
                  and          ra, t5, t1
                  sra          a2, t3, gp
18:               sll          t1, s1, a1
                  ori          t4, s0, -1413
                  add          a2, t2, a5
                  andi         s6, a6, 8
                  xor          gp, t5, t3
23:               bge          a1, s10, 35f
                  sll          t4, s6, t2
25:               beq          gp, s5, 30f
26:               slt          gp, t1, gp
                  xor          s1, t1, a3
28:               xor          a1, s3, s1
                  slt          s5, a3, t1
30:               bge          a5, s8, 35f
                  sltiu        a5, sp, -951
                  srai         a2, a7, 25
                  andi         s4, a7, 116
                  sltiu        ra, ra, -1663
35:               slt          a3, t4, ra
                  srai         s11, t5, 7
                  ori          s6, a1, -477
                  slti         zero, s2, 1036
                  srai         t4, s1, 15
                  andi         zero, s1, -466
                  sll          a5, t2, t1
                  bltu         zero, s10, 49f
                  auipc        s2, 615076
                  auipc        t1, 956101
                  sub          a0, a6, s3
                  or           t3, s10, tp
                  auipc        s2, 394892
                  srli         s2, s9, 16
49:               add          s11, s3, t4
                  beq          t4, s10, 55f
                  slti         t2, t1, -977
                  xor          a5, a1, a7
                  slt          t1, s6, t2
                  nop
55:               or           s1, a6, a4
                  srai         a3, s6, 2
                  srli         a2, t1, 7
                  bgeu         s6, a1, 60f
                  sltiu        s9, s7, 1506
60:               sub          s9, a4, s8
                  bne          s7, s5, 74f
                  slli         a5, s3, 6
                  and          s2, s9, a0
                  bne          s9, s11, 75f
                  andi         s10, t3, 1358
                  xori         t5, ra, -697
                  ori          s6, s10, 1032
                  and          t1, sp, t5
                  slti         s10, t5, 1277
                  bge          t2, a6, 74f
                  xori         s11, a0, -1965
                  srai         a1, s8, 28
                  sub          s10, a3, ra
74:               addi         a2, t2, -280
75:               bne          s10, a7, 94f
                  ori          s2, s1, 662
                  slti         ra, zero, -1254
                  srl          s6, s3, a7
                  blt          a2, s8, 96f
                  bne          sp, t6, 88f
                  srli         tp, t1, 0
                  sltiu        t2, s2, -35
                  blt          t4, s3, 85f
                  andi         t3, a7, -1005
85:               bne          s7, t2, 93f
                  xor          s10, a5, sp
                  srl          s1, s1, gp
88:               ori          s10, a4, 988
                  bge          s5, a4, 109f
                  sub          a4, s6, s8
                  sltu         a0, s8, a1
                  sll          s0, t5, a0
93:               blt          a3, ra, 102f
94:               xori         t2, s6, -240
                  or           s2, s4, a3
96:               bgeu         t4, ra, 100f
                  bge          s2, s8, 105f
                  andi         a1, t5, -1164
                  sub          t1, a1, t5
100:              blt          s11, a0, 107f
                  slt          t4, t6, sp
102:              sra          s3, s9, a1
                  slt          s0, ra, ra
                  lui          a7, 459384
105:              addi         s1, t5, -179
                  blt          s6, tp, 123f
107:              srai         gp, s11, 20
                  bgeu         s8, a6, 125f
109:              and          a2, s4, a0
                  add          a2, a2, a7
                  addi         s4, a5, 1991
                  add          a4, s1, tp
                  addi         s7, s0, 1134
                  andi         s2, s4, -1556
                  sltu         t1, s2, a1
                  slti         s8, sp, 1275
                  bgeu         s0, a2, 132f
                  slti         s10, s11, 2029
                  srai         a0, s11, 17
                  bltu         s9, a3, 136f
                  ori          t2, t5, -570
                  srl          s1, s2, s3
123:              andi         s3, s1, 366
                  and          s10, zero, t2
125:              srl          gp, a1, a1
                  sltiu        a2, s10, 1475
                  slli         s1, s6, 27
                  bne          t2, s6, 132f
                  blt          s8, a6, 136f
                  sltu         zero, s5, s9
                  srai         s8, t4, 9
132:              ori          s4, zero, -835
                  and          s7, s9, t2
                  sra          a3, s0, a1
                  slti         s9, t3, -1997
136:              slti         a4, t6, 1772
                  and          s9, a4, t1
                  add          a5, s3, s3
                  lw           t1, 4(t6)
                  and          zero, a5, zero
                  addi         t6, t6, 52
                  ori          s4, t6, 2037
201:              addi x8, x6, 1
201:              jalr x8, x8, 0
sub_5:            ori          s4, zero, 118
                  andi         a2, a1, 609
                  ori          tp, tp, -530
                  nop
                  blt          a0, a1, sub_5_stack_p
sub_5_stack_p:    addi         t6, t6, -24
                  srli         s11, a5, 0
                  sw           t1, 4(t6)
                  sub          t4, t0, s10
                  srli         s1, s6, 20
                  or           s3, t0, t0
                  la           a7, region_0+1619 #start riscv_load_store_rand_instr_stream_1
                  sub          s6, a4, t1
                  sb           s8, -62(a7)
                  lb           a4, 36(a7)
                  ori          t5, ra, 96
                  lb           a2, 43(a7)
                  lbu          a2, -60(a7)
                  slti         s5, s1, 733
                  sll          t2, s5, s8
                  add          a5, s8, t0
                  lb           a3, -35(a7)
                  nop
                  slt          a1, t6, t5
                  lw           s5, -35(a7)
                  lhu          tp, 17(a7)
                  sltu         ra, s9, s9
                  xor          t2, gp, s11
                  sll          t2, sp, a5
                  add          zero, s5, s0
                  sltu         s5, s6, s2
                  slt          zero, a1, t4
                  lb           s2, 30(a7)
                  or           s10, s8, t1
                  lbu          s2, -23(a7)
                  lbu          t4, -16(a7)
                  add          s9, s6, a3
                  slt          s4, s9, s1
                  srli         s6, t2, 9
                  lb           t1, 32(a7) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_1+1314 #start riscv_load_store_rand_instr_stream_2
                  nop
                  sll          s7, s6, s4
                  sra          t4, s6, t2
                  sb           a5, 23(sp)
                  sltu         t2, s8, a6
                  srai         zero, tp, 1
                  sltu         a4, t4, t4
                  lui          t4, 573010
                  lbu          s11, -6(sp)
                  add          gp, a0, s10
                  slt          ra, t2, a7
                  auipc        gp, 393755
                  sb           a6, -61(sp)
                  lb           s1, 33(sp)
                  sb           s10, -49(sp)
                  addi         a1, a6, -185
                  lhu          s7, 4(sp)
                  auipc        s10, 832028
                  lb           s5, -45(sp)
                  lbu          a0, -27(sp)
                  and          t1, s5, tp
                  lb           a2, -31(sp)
                  sb           tp, -35(sp)
                  add          a4, s2, t4
                  and          s5, a7, a6
                  lui          s11, 1021433
                  lb           t5, -8(sp)
                  and          t1, s6, a2
                  srl          a4, a1, s8
                  sltiu        t2, s9, 712
                  andi         s3, t3, 2001
                  or           tp, a7, s8
                  lbu          s0, -19(sp)
                  slt          s6, t5, a3
                  xori         a1, t0, -1888
                  sb           a5, -3(sp)
                  xori         t2, t4, -1875
                  sll          a5, t4, a6
                  add          a4, a3, s0
                  lb           gp, -41(sp)
                  nop
                  srai         ra, t4, 31
                  srli         a2, t4, 6
                  sll          a5, gp, s1
                  lbu          s7, 21(sp) #end riscv_load_store_rand_instr_stream_2
                  la           s1, region_1+1630 #start riscv_load_store_rand_instr_stream_3
                  sb           tp, -13(s1)
                  sb           zero, -13(s1)
                  lbu          tp, -12(s1)
                  slt          t1, t2, a6
                  sb           t0, -15(s1)
                  lb           gp, 16(s1)
                  sb           t3, -11(s1)
                  sb           sp, 6(s1)
                  or           s7, t4, a6
                  lhu          t2, -16(s1)
                  add          a1, a2, t3
                  sb           t0, -11(s1)
                  sltu         s8, s5, t2
                  sll          t4, a1, s5
                  lb           s8, -9(s1)
                  sltiu        a7, a4, 1168
                  sra          a7, s4, t5
                  lbu          ra, 4(s1)
                  ori          t4, s2, 1864
                  lb           t2, -4(s1)
                  slli         ra, a3, 26
                  ori          s0, s0, 1714
                  lbu          ra, -9(s1)
                  lb           s0, 8(s1)
                  srl          tp, t5, s4
                  lhu          t1, -2(s1)
                  lbu          sp, -7(s1)
                  sh           a5, 6(s1)
                  lbu          t5, -5(s1)
                  add          s4, t0, ra
                  lh           a7, 14(s1)
                  xor          s10, s8, a6
                  sll          s11, t0, a7
                  lb           ra, 14(s1)
                  sb           sp, -5(s1)
                  srai         a4, sp, 3
                  srl          tp, s10, s11
                  sub          s9, s3, s11
                  lb           s0, 16(s1)
                  sra          s2, s2, a4
                  srai         t2, t6, 20
                  sltiu        a1, a4, 1855
                  xori         s3, t2, -1001
                  xor          a1, t6, a1
                  xori         t3, s2, 2031
                  lh           a5, -14(s1)
                  sra          s4, s10, t3
                  xori         a4, a3, -1822
                  lbu          a3, -15(s1)
                  slt          s10, gp, t2
                  sb           t5, -4(s1) #end riscv_load_store_rand_instr_stream_3
                  srai         tp, s7, 8
                  srli         s10, a4, 20
                  lui          tp, 970821
                  add          s0, t2, sp
                  ori          s1, s10, -170
                  sra          a2, a1, ra
                  lui          s8, 126974
                  srl          a4, t4, zero
                  sltu         s5, s6, zero
                  sltiu        s8, t4, -220
                  sub          s11, s5, t3
                  add          s0, t0, s7
                  and          zero, t5, s5
                  blt          s10, s11, 15f
                  slti         a3, a3, -447
15:               sra          s8, a4, t4
                  or           a1, s10, t4
                  srai         gp, s5, 27
                  ori          a2, s6, -1375
                  slt          tp, gp, t5
                  slli         a1, a4, 20
                  nop
                  auipc        a1, 244173
                  auipc        t4, 669010
                  lui          s7, 181777
                  sltiu        t3, t5, -418
                  srl          s5, zero, tp
                  srli         t1, t0, 9
                  ori          s6, s4, 925
                  slli         s6, s7, 22
                  slti         s10, t2, 8
                  bge          a4, sp, 47f
                  slt          a3, s9, t5
                  or           s6, t0, a5
                  nop
                  blt          t2, a1, 36f
36:               add          s1, t0, t2
                  add          s0, s4, s4
                  sltu         s0, a6, a7
                  nop
                  beq          s6, a2, 50f
                  sltu         s6, s2, t2
                  sltiu        s3, ra, -917
                  xor          s8, a6, ra
                  bne          s0, t5, 47f
                  ori          sp, a6, 1347
                  or           a3, t6, a7
47:               bltu         s10, tp, 61f
                  slli         s0, t3, 24
                  xori         gp, t0, 608
50:               or           s0, s3, a5
                  sub          t3, s11, t2
                  sra          s9, t3, a7
                  bne          s11, s6, 63f
                  auipc        t3, 872651
                  slli         s0, gp, 13
                  sltu         a3, s4, s7
                  sltiu        s5, t1, -1143
                  sltiu        a3, s10, 1537
                  auipc        a1, 699231
                  xori         t2, a3, -599
61:               srli         sp, zero, 25
                  addi         a7, s2, -61
63:               blt          s3, a4, 73f
                  sub          s1, s2, s3
                  bne          s0, s7, 68f
                  auipc        s1, 204967
                  addi         t4, s7, 1270
68:               slt          zero, s4, s2
                  add          zero, gp, t5
                  sltu         t2, gp, a0
                  srl          s3, t0, s9
                  and          s10, a3, s4
73:               and          s9, s9, s2
                  xori         tp, s5, -147
                  bltu         a3, a1, 87f
                  sub          a3, t2, t1
                  bne          a3, a5, 81f
                  sra          s3, zero, ra
                  add          s1, s4, a1
                  bge          a4, t4, 88f
81:               sll          a5, s5, t3
                  beq          s10, t3, 93f
                  addi         s1, a7, -1772
                  slti         sp, sp, 919
                  addi         t4, s5, -1607
                  add          t3, s1, t0
87:               xor          a4, a0, s2
88:               sltiu        gp, zero, 709
                  srai         a4, a0, 29
                  slti         a7, t4, -700
                  srl          s7, s5, s0
                  sll          gp, t2, s10
93:               slli         t1, a1, 4
                  or           s10, s1, gp
                  slti         t2, s9, 1329
                  and          t4, sp, s1
                  sltu         s7, s4, a4
                  or           s10, tp, s6
                  srli         s1, sp, 10
                  slti         a4, tp, -1774
                  andi         s10, s6, 1317
                  bgeu         zero, s6, 108f
                  slli         sp, a6, 3
                  sra          s4, s5, a2
                  andi         tp, s8, -1003
                  bge          a4, s0, 124f
                  xori         s11, gp, 1167
108:              slli         sp, t3, 19
                  andi         zero, s10, -410
                  sll          sp, gp, gp
                  auipc        s2, 836020
                  xori         s11, s0, 1158
                  srl          s6, s6, s5
                  addi         a7, ra, 1601
                  slti         t2, a6, -1012
                  blt          s6, t5, 127f
                  xor          s4, s10, t4
                  and          tp, a6, t3
                  xor          s11, a6, s5
                  lui          a1, 316188
                  bge          t6, s8, 125f
                  sltu         a1, s0, s8
                  srli         s8, s0, 25
                  srai         tp, a0, 19
                  andi         s5, s6, -2018
                  srl          s4, s1, s9
                  and          t4, s5, zero
                  slli         gp, s11, 29
                  sub          s3, t6, s0
                  blt          t6, a1, sub_5_j8 #branch to jump instr
                  slt          t4, s7, sp
                  slt          s4, ra, a2
                  ori          t2, a2, 1702
                  xori         s2, t6, 746
sub_5_j8:         jal          t1, sub_7 #jump sub_5 -> sub_7
124:              bltu         t4, s8, 143f
125:              bgeu         a6, gp, 136f
                  andi         t5, s9, 392
127:              sll          sp, s8, a4
                  slti         s4, t2, -1399
                  sra          s11, s0, a2
                  andi         a3, s6, -1087
                  sltu         s6, tp, tp
                  sll          a0, s8, t4
                  bltu         t6, t4, 147f
                  sra          t1, t2, a1
                  slli         s2, a4, 27
136:              bltu         s10, zero, 139f
                  sltiu        a7, s2, -767
                  lui          t5, 405990
139:              xor          a1, t2, s9
                  lui          a4, 479844
                  xor          s0, a6, a2
                  beq          t2, s1, 147f
143:              srai         s3, s3, 29
                  ori          a7, gp, 2034
                  sltu         s8, a6, tp
                  slti         gp, s7, 365
147:              beq          sp, s10, 158f
                  andi         s5, t3, 1200
                  bltu         a6, s3, 169f
                  sltiu        s4, sp, 763
                  sll          a2, s1, a6
                  add          s10, s2, s10
                  sra          a2, t2, s0
                  or           zero, tp, t1
                  andi         a1, a5, -878
                  beq          a5, t0, 171f
                  or           zero, a0, tp
158:              bge          t0, s9, 159f
159:              bge          gp, s1, 172f
                  srai         zero, s8, 13
                  lui          a5, 491796
                  bgeu         s7, a3, 170f
                  nop
                  sltu         a1, a0, t6
                  auipc        a1, 640564
                  sll          s1, t0, s5
                  srli         s6, s0, 25
                  or           a2, a1, t3
169:              slli         t2, t2, 21
170:              slti         s4, t3, 740
171:              addi         sp, t0, -684
172:              sltiu        t3, a1, 789
                  srl          t3, a3, s7
                  bgeu         t0, a3, 187f
                  nop
                  slti         s4, a6, -470
                  slti         a2, tp, -2021
                  bne          s1, a0, 188f
                  slt          s7, tp, a5
                  xor          s4, s11, a0
                  bge          s6, a0, 191f
                  bltu         t2, s4, 192f
                  slt          s7, s0, s6
                  sll          a5, t0, gp
                  srli         s7, tp, 30
                  slti         s1, a7, 205
187:              srli         zero, s2, 9
188:              addi         t1, s4, 1223
                  slti         ra, sp, 430
                  sra          a2, t3, a5
191:              bne          s6, sp, 194f
192:              and          tp, s7, s7
                  auipc        a3, 391595
194:              auipc        s2, 470701
                  sll          s3, t5, s1
                  bne          s10, t2, 207f
                  nop
                  slli         s3, s3, 19
                  or           sp, gp, s1
                  nop
                  bltu         t0, ra, 205f
                  srli         s10, s11, 31
                  sltiu        t4, t3, -1953
                  xor          s7, gp, zero
205:              srl          a5, a5, s11
                  addi         sp, t0, 444
207:              bltu         a7, s4, 221f
                  srli         a4, t6, 10
                  xori         s10, t4, -1421
                  blt          t5, s9, 220f
                  addi         sp, t5, 1103
                  add          a1, a7, sp
                  beq          s4, a0, 233f
                  nop
                  addi         t2, s3, -413
                  srl          s1, a0, t1
                  sra          s9, s7, t4
                  sub          a1, s6, s2
                  auipc        s4, 82433
220:              add          s0, s5, t1
221:              bge          t4, t5, 232f
                  xori         a5, s7, -56
                  lui          s5, 439457
                  slti         t5, s5, 498
                  xor          a3, s11, s1
                  lui          tp, 797182
                  blt          s6, s9, 245f
                  sll          a1, s4, s3
                  nop
                  bgeu         s10, ra, 242f
                  nop
232:              auipc        s10, 634748
233:              slti         tp, s6, 918
                  blt          a4, t6, 247f
                  srl          a1, gp, s6
                  sltu         a4, a0, gp
                  andi         s4, t3, 942
                  auipc        a2, 1007921
                  sra          t2, ra, a5
                  sra          tp, t6, s6
                  bne          a6, s2, sub_5_j10 #branch to jump instr
                  ori          s9, s7, 1243
                  nop
                  or           s10, s6, s10
sub_5_j10:        jal          t1, sub_6 #jump sub_5 -> sub_6
                  slti         tp, t2, -1242
                  blt          t0, tp, 238f
238:              sra          t4, s11, a5
                  ori          s7, ra, -142
                  srl          s5, t2, a3
                  ori          s6, zero, -897
242:              srai         s9, a4, 25
                  slt          a2, a4, s11
                  beq          s10, s9, 263f
245:              andi         s11, a1, -770
                  srl          s7, a5, ra
247:              and          a7, a0, a0
                  srl          s3, s1, t2
                  xori         s2, s1, 263
                  bge          t0, s6, 261f
                  slli         zero, a0, 22
                  andi         t5, a5, -1239
                  bgeu         s0, gp, 256f
                  add          a2, a1, a7
                  srli         t5, s6, 25
256:              slt          ra, a1, gp
                  lui          a5, 890877
                  lui          s1, 340703
                  ori          t3, s10, 1850
                  slt          tp, t6, zero
261:              auipc        a7, 761109
                  or           s0, s9, s1
263:              beq          sp, sp, 271f
                  beq          a0, t1, 280f
                  bgeu         a0, s3, 266f
266:              srli         s8, s5, 20
                  nop
                  slt          a5, a2, a3
                  srli         sp, a3, 13
                  nop
271:              srai         t4, a2, 27
                  andi         s7, a3, -574
                  sltu         tp, zero, t6
                  lui          s6, 543013
                  sub          zero, t4, s0
                  auipc        tp, 13354
                  add          a4, sp, t3
                  sra          s7, a7, a3
                  sll          gp, a3, s11
sub_5_j9:         jal          t1, sub_6 #jump sub_5 -> sub_6
                  andi         a5, s9, 715
                  srli         sp, s2, 11
                  sll          s11, s1, t5
                  slli         s3, ra, 4
                  sra          s10, sp, s7
                  add          t1, s5, s7
280:              addi         a0, s4, 1524
                  xor          s6, sp, t6
                  bne          s1, s6, 293f
                  sltiu        a7, s5, -1982
                  auipc        s1, 79952
                  slli         a1, s6, 21
                  bne          t2, gp, 299f
                  and          t1, s7, a1
                  xor          s3, t4, zero
                  sltu         tp, a2, s10
                  bge          s7, a0, 300f
                  auipc        t1, 434777
                  sltu         ra, a6, s3
293:              sll          s0, s4, t6
                  nop
                  sltu         s11, s4, ra
                  xori         tp, a3, -369
                  sub          s5, a5, s8
                  slli         s9, a7, 8
299:              beq          a4, a3, 302f
300:              bne          s11, s4, 304f
                  srl          s8, s11, s11
302:              ori          s1, t3, -2008
                  sub          s10, gp, t1
304:              bltu         s8, t5, 306f
                  sll          t5, a4, gp
306:              sltu         zero, a0, zero
                  auipc        s5, 636553
                  blt          s8, t3, 322f
                  sra          t2, t2, gp
                  bgeu         sp, a0, 316f
                  sll          t4, a2, a4
                  nop
                  srli         a0, ra, 15
                  and          s7, a7, a0
                  sltu         a0, s10, a2
316:              bne          s7, a4, 321f
                  srl          a1, t6, a0
                  sltu         a2, s1, s11
                  auipc        a7, 625090
                  add          s9, zero, a2
321:              sub          s2, tp, t3
322:              ori          a4, s8, -1661
                  srli         a7, a2, 26
                  srai         a5, s4, 21
                  bge          t2, ra, 340f
                  sll          a1, t6, sp
                  sll          ra, s2, a3
                  sltu         s7, a4, s10
                  sll          s11, t5, t1
                  or           a7, s0, s9
                  lui          s8, 114670
                  auipc        s7, 793880
                  sltu         s2, sp, s4
                  lui          s10, 247491
                  sra          zero, s5, s3
                  andi         a7, sp, -1263
                  lui          s0, 708655
                  auipc        s0, 1008202
                  andi         t2, t4, -483
340:              or           s2, t0, a4
                  lui          s3, 129909
                  bltu         s5, t4, 350f
                  beq          t6, s7, 354f
                  addi         a2, t6, -1778
                  bne          t5, a3, 360f
                  sll          t5, zero, t6
                  sra          t5, t6, s8
                  srai         tp, ra, 19
                  blt          sp, s4, 365f
350:              andi         a5, s9, -829
                  nop
                  and          s11, tp, s7
                  ori          gp, a5, -937
354:              slli         a0, s5, 26
                  and          s2, t2, s2
                  andi         t4, t6, 1649
                  sltu         t4, a3, s4
                  add          s7, t5, t4
                  lui          gp, 91787
360:              addi         t3, t5, -138
                  andi         s3, a1, -2008
                  bge          ra, s10, 375f
                  ori          ra, zero, -1231
                  sra          a5, s7, s5
365:              add          tp, t3, a7
                  sltiu        s7, s11, -2006
                  and          s6, a6, a0
                  or           gp, s8, t5
                  srl          gp, s0, s4
                  auipc        s2, 540847
                  srai         s4, gp, 7
                  addi         gp, a1, 1810
                  bge          a5, sp, 376f
                  xori         t1, s0, -321
375:              auipc        s8, 175764
376:              srl          ra, s10, t6
                  or           zero, s7, zero
                  ori          s0, s0, 1022
                  slti         t2, tp, 1759
                  srl          a4, t1, s10
                  and          zero, a1, a2
                  slt          s5, s5, a4
                  bgeu         sp, s7, 397f
                  addi         a0, gp, 1269
                  sra          tp, t5, a6
                  and          t3, sp, tp
                  bltu         a2, s8, 405f
                  srl          t5, zero, a6
                  lui          t5, 297185
                  addi         t1, tp, -1877
                  blt          sp, s3, 399f
                  srli         s9, a6, 26
                  bne          t5, t0, 398f
                  xor          gp, s5, s9
                  auipc        t5, 375188
                  ori          s10, a2, 470
397:              sll          t5, s6, t1
398:              srl          a7, s10, gp
399:              srai         ra, s11, 23
                  sltiu        s5, s11, 1542
                  slli         t1, s4, 22
                  slli         a5, a7, 28
                  auipc        s10, 194867
                  addi         a7, t3, 1980
405:              andi         gp, a5, -1898
                  bgeu         s0, s6, 412f
                  beq          s7, s1, 410f
                  or           a4, s2, a7
                  sltiu        s11, t1, 1201
410:              beq          s9, s8, 422f
                  bne          a3, s7, 430f
412:              xori         s10, s3, 1049
                  andi         s10, ra, -539
                  addi         tp, t0, 1805
                  bgeu         a4, t6, 416f
416:              bne          s9, s9, 427f
                  sub          a2, tp, a6
                  nop
                  sll          s7, a5, s7
                  xori         s0, t1, 1125
                  xor          t1, a2, s0
422:              sll          a4, s1, t6
                  and          t4, a7, s6
                  sra          s2, a0, a3
                  or           s11, sp, a4
                  slti         a7, s10, 1415
427:              andi         a4, zero, -163
                  slti         s9, tp, 12
                  lui          a1, 706530
430:              bltu         s7, a0, 440f
                  blt          a7, ra, 442f
                  nop
                  add          t3, t6, s4
                  xor          s8, s8, t5
                  andi         a0, s9, 1803
                  srli         s6, s5, 0
                  andi         a5, t5, 1454
                  sub          s4, t3, s4
                  srli         ra, s2, 1
440:              sltu         s6, a3, s10
                  slli         s11, s3, 20
442:              auipc        gp, 943484
                  srli         a2, s11, 20
                  ori          t4, a4, -1332
                  slt          s4, zero, t0
                  sltiu        s3, a3, 153
                  srli         s8, a7, 18
                  slli         s9, s1, 15
                  ori          t5, s4, -1384
                  bgeu         s7, s2, 470f
                  slti         s7, s5, -780
                  xori         t2, t2, 480
                  slti         t4, zero, 617
                  or           sp, s2, ra
                  and          t2, a7, sp
                  srl          s11, s2, ra
                  srai         s10, s4, 26
                  bne          s8, s8, 471f
                  srl          s8, s10, s8
                  bgeu         a0, s0, 461f
461:              beq          a4, a7, 471f
                  sll          s0, t0, s2
                  slt          s4, t2, ra
                  sub          s3, t1, t0
                  and          s11, s0, a2
                  bne          zero, s0, 469f
                  beq          s4, s6, 478f
                  nop
469:              bne          s11, t1, 483f
470:              blt          tp, s3, 478f
471:              slli         s8, a6, 22
                  and          ra, sp, a3
                  sll          zero, sp, a2
                  lui          t1, 459555
                  srl          s11, s10, s2
                  auipc        s7, 767660
                  srl          t3, s8, a4
478:              bge          s2, s4, 480f
                  auipc        t3, 620444
480:              srl          s2, t5, t5
                  sltu         a0, s11, s11
                  nop
483:              sltu         a1, a1, t5
                  blt          a3, a1, 488f
                  srai         s8, s0, 23
                  lui          t2, 498974
                  srai         s10, s11, 25
488:              bgeu         s10, s9, 498f
                  bne          zero, s2, 493f
                  xor          zero, t0, s4
                  or           a2, a3, a6
                  sltu         t2, a2, a3
493:              or           s3, s0, s7
                  sll          t4, a0, gp
                  sra          t4, s7, a7
                  srl          s5, a6, s4
                  ori          s4, zero, 665
498:              sltu         t5, gp, t3
                  sll          a4, a0, s5
                  srl          s0, a5, s10
                  bgeu         t0, t6, 511f
                  bgeu         gp, gp, 505f
                  or           s7, t5, a4
                  beq          sp, s2, 507f
505:              and          t1, a1, t0
                  bgeu         zero, s5, 507f
507:              bne          s6, s2, 511f
                  andi         s0, s10, -292
                  add          s0, s10, tp
                  and          s10, s8, s2
511:              add          s7, t6, t2
                  slti         t3, a2, -1239
                  slt          s5, a4, s6
                  ori          a1, a5, -683
                  sltiu        s9, t1, -1785
                  addi         s9, s8, 61
                  or           s6, ra, s3
                  lui          s3, 209106
                  srai         s9, s11, 31
                  slli         s1, t2, 16
                  sub          t5, a1, s7
                  slt          ra, t1, a0
                  bge          s0, a2, 528f
                  xori         s9, gp, 1076
                  and          s2, s10, t6
                  or           zero, s8, s8
                  auipc        zero, 754703
528:              or           sp, t2, s2
                  andi         s9, s5, -299
                  andi         s7, t3, -674
                  sra          a1, a7, s7
                  auipc        s9, 456556
                  xor          s6, a1, a2
                  andi         t3, t5, 121
                  auipc        gp, 833821
                  and          zero, s3, a5
                  srli         t4, s3, 4
                  andi         a7, a6, -1872
                  or           a2, tp, t4
                  andi         s7, sp, 1966
                  xori         s9, sp, 1326
                  auipc        s8, 495259
                  nop
                  srai         t4, t2, 2
                  or           a2, t0, s4
                  and          s3, s2, t3
                  sub          s1, a3, zero
                  slti         a4, a7, -756
                  sltu         ra, a4, a0
                  la           s7, region_1+1984 #start riscv_load_store_rand_instr_stream_0
                  lb           a0, -199(s7)
                  lbu          ra, -194(s7)
                  lbu          s10, -250(s7)
                  sll          s5, s1, a1
                  lui          a2, 539306
                  xori         a1, s2, 781
                  lb           s0, -77(s7)
                  srai         t5, t1, 11
                  srl          s5, a3, zero
                  sh           a3, -186(s7)
                  sw           s1, -104(s7)
                  add          ra, s0, s8
                  sub          t5, t3, a1
                  ori          a1, tp, -558
                  sltu         a1, s10, a1
                  lbu          tp, -33(s7)
                  add          s2, s0, a7
                  slti         sp, a4, 219
                  slt          s4, s2, a6
                  andi         s11, s1, -1586
                  slti         gp, t1, 1813
                  sll          t4, s11, s0
                  lbu          a1, -22(s7)
                  srl          a2, s9, s1
                  slti         a5, s3, 188
                  slti         ra, ra, 1713
                  srli         t1, t6, 14
                  slli         a1, a4, 4
                  add          a0, s2, s6
                  sb           a0, 4(s7)
                  sll          s6, t4, s8
                  lb           gp, -126(s7)
                  sh           tp, -20(s7)
                  lbu          tp, -209(s7)
                  and          t1, s6, t3
                  lh           t2, -186(s7)
                  andi         s2, s4, -398
                  xori         s5, s6, -251
                  auipc        a0, 250079
                  sb           a5, 11(s7)
                  xori         s3, t5, 1647
                  sll          sp, s1, t2
                  or           s11, t5, t5
                  srl          t2, t0, s7
                  sb           s4, -35(s7) #end riscv_load_store_rand_instr_stream_0
                  bge          t3, zero, 553f
                  bne          s0, gp, 561f
                  nop
553:              nop
                  addi         a2, gp, 167
                  and          s7, t4, s5
                  slli         tp, t4, 6
                  bltu         s2, s0, 561f
                  sltiu        a5, zero, 503
                  auipc        s5, 418454
                  add          s1, s2, a6
561:              add          a7, t5, s5
                  lw           t1, 4(t6)
                  xor          s8, s8, a7
                  slli         ra, t5, 23
                  addi         t6, t6, 24
                  srl          s1, s7, s2
                  lui          a4, 61900
781:              addi x28, x6, 0
781:              jalr x28, x28, 0
sub_6:            slt          a3, a6, zero
                  blt          t6, gp, sub_6_stack_p
                  lui          s3, 619725
                  sll          a3, a1, s9
sub_6_stack_p:    addi         t6, t6, -60
                  srli         gp, s8, 7
                  sw           t1, 4(t6)
                  sll          s0, gp, s3
                  slt          s11, t4, a5
                  slli         tp, a3, 18
                  slt          s7, a6, s7
                  la           s1, sub_10
                  sra          s3, a5, t5
                  slt          t2, s1, t1
                  addi         s1, s1, -651
                  nop
                  beq          sp, a0, sub_6_j11 #branch to jump instr
                  sll          t5, s0, s7
                  or           s7, s0, a4
sub_6_j11:        jalr         t1, s1, 651 #jump sub_6 -> sub_10
                  slt          s8, s8, s8
                  auipc        a2, 869669
                  ori          s5, a5, -1968
                  andi         s2, s7, 754
                  xor          a2, s7, s10
                  la           tp, sub_8
                  lui          a3, 354967
                  addi         tp, tp, -816
                  slli         a5, gp, 23
                  slti         a1, a3, -1432
sub_6_j12:        jalr         t1, tp, 817 #jump sub_6 -> sub_8
                  xor          s6, t2, s9
                  or           s5, a0, sp
                  sltiu        s0, s2, -357
                  auipc        t5, 1026773
                  bne          zero, t1, sub_6_j13 #branch to jump instr
                  nop
                  auipc        a7, 806651
                  srl          s10, s9, s8
                  slti         s6, t0, -1597
                  sltiu        gp, tp, 555
                  addi         t1, s6, 136
sub_6_j13:        jal          t1, sub_9 #jump sub_6 -> sub_9
                  sra          s3, t4, zero
                  slli         a3, a5, 12
                  sltiu        s5, a6, 1227
                  sra          a3, a7, s3
                  beq          s6, a0, 10f
                  andi         s7, a4, 1860
                  addi         s1, t3, 963
                  sltu         s4, s3, s7
                  slli         t1, sp, 17
                  sll          a4, s3, s4
10:               or           a2, t5, s6
                  lw           t1, 4(t6)
                  sll          s2, t6, a7
                  add          a4, t0, s11
                  addi         t6, t6, 60
                  andi         s10, t0, -450
59:               addi x10, x6, 0
59:               jalr x10, x10, 0
sub_8:            bltu         a5, t0, sub_8_stack_p
                  or           sp, s9, ra
sub_8_stack_p:    addi         t6, t6, -32
                  slt          gp, a5, t3
                  sw           t1, 4(t6)
                  slli         zero, t1, 8
                  nop
                  sub          s11, a2, s1
                  sltu         s3, s10, a5
                  sll          t4, a5, s4
                  sltu         t3, a6, t5
                  la           a3, region_1+810 #start riscv_load_store_rand_instr_stream_0
                  slti         s8, s3, -1916
                  xori         s9, a3, 1153
                  lb           a4, 817(a3)
                  addi         tp, a7, -221
                  sub          t3, t6, s9
                  nop
                  lb           t4, -681(a3)
                  sb           t3, -267(a3)
                  sll          s7, s11, s10
                  sh           sp, 162(a3)
                  sll          a4, t2, s9
                  addi         t1, gp, -481
                  lbu          gp, 425(a3)
                  sll          s1, s6, s3
                  srli         t2, s10, 17
                  srli         s1, s5, 2
                  srli         s6, a3, 10
                  lui          a2, 327476
                  sltu         zero, s8, s0
                  slt          s5, a0, s3
                  slti         t3, tp, 759
                  sub          a5, s10, s9
                  lb           s11, 613(a3)
                  sb           t6, 1042(a3)
                  add          s6, ra, a1
                  auipc        ra, 307911
                  nop
                  auipc        s2, 297129
                  slli         ra, s9, 15
                  sub          t4, s5, s10
                  xori         s2, a0, 1038
                  or           s11, a6, a6
                  lb           s6, -137(a3)
                  lb           t5, -122(a3)
                  srli         t3, t0, 18
                  lb           s3, -694(a3)
                  slt          t4, s6, a7
                  lw           s7, -682(a3) #end riscv_load_store_rand_instr_stream_0
                  la           s9, region_1+1551 #start riscv_load_store_rand_instr_stream_2
                  and          ra, t0, a3
                  lh           a4, 43(s9)
                  lb           tp, -2(s9)
                  sub          s3, t1, sp
                  sb           sp, 27(s9)
                  sub          s11, a1, t2
                  slli         s2, s0, 19
                  lbu          zero, 56(s9)
                  nop
                  lbu          a2, 56(s9)
                  lhu          a3, 59(s9)
                  add          s11, s7, sp
                  srl          zero, s2, s6
                  and          s10, s4, s6
                  srli         t4, a7, 7
                  srli         s0, sp, 20
                  addi         ra, s9, -1376
                  sb           t1, 2(s9)
                  lbu          t3, 0(s9)
                  xor          s1, a2, a0
                  slti         s10, a2, 1076
                  lb           a4, 36(s9)
                  xor          s11, ra, s10
                  addi         s11, s11, 1203
                  xori         sp, s2, 1948
                  sw           s11, -35(s9)
                  and          s5, t1, s5
                  lb           s5, -26(s9)
                  sb           t4, 47(s9)
                  sltiu        a1, a2, -1189
                  sub          s1, t6, t2
                  sh           zero, -21(s9)
                  lb           s5, -26(s9)
                  sltu         s2, zero, s3
                  lbu          s2, -52(s9)
                  lbu          a1, 42(s9)
                  lh           s7, -37(s9)
                  slli         a1, t3, 27
                  auipc        s6, 566399
                  sltu         s10, a0, s4
                  lh           s11, 17(s9) #end riscv_load_store_rand_instr_stream_2
                  la           s11, region_1+1605 #start riscv_load_store_rand_instr_stream_8
                  slli         t1, a4, 25
                  lb           a1, 37(s11)
                  or           tp, s0, s7
                  sll          s3, s10, s5
                  lhu          zero, 7(s11)
                  srli         a5, sp, 5
                  lw           ra, -61(s11)
                  lb           t3, 4(s11)
                  sb           s3, 37(s11)
                  sra          a1, gp, s4
                  lb           a2, 3(s11)
                  sb           s9, 30(s11)
                  sw           s0, -41(s11)
                  srai         s7, a3, 27
                  sb           a4, 36(s11)
                  lw           t5, 11(s11)
                  sb           s0, 12(s11)
                  lb           s9, -10(s11)
                  lb           a1, 50(s11)
                  sra          s7, s8, s6
                  xori         s7, t2, 1500
                  lb           a2, -49(s11)
                  lw           t3, 31(s11)
                  add          s4, a7, t0
                  slt          a3, s5, a2
                  sb           t6, -46(s11)
                  auipc        s6, 111134
                  slti         gp, s7, 2011
                  lb           sp, -63(s11)
                  lh           a1, -17(s11)
                  lb           a2, 46(s11)
                  sra          a2, a0, s10
                  sra          s9, s7, tp
                  sb           gp, -43(s11)
                  lb           s4, -29(s11)
                  lbu          s5, -60(s11)
                  lbu          t4, -59(s11)
                  sltu         a5, sp, t6
                  lb           a5, 61(s11)
                  lb           a7, -18(s11)
                  srl          s9, s0, tp
                  sb           a4, -6(s11) #end riscv_load_store_rand_instr_stream_8
                  la           s0, region_1+951 #start riscv_load_store_rand_instr_stream_3
                  sb           t0, 25(s0)
                  srli         s3, t5, 14
                  lb           s3, 57(s0)
                  slli         s2, s11, 27
                  lbu          a4, -45(s0)
                  lbu          t5, 12(s0)
                  sb           s11, -29(s0)
                  sra          t1, a5, s0
                  sub          s3, zero, s10
                  ori          s6, s7, 1805
                  lbu          t2, 36(s0)
                  lui          gp, 136291
                  sb           s1, -57(s0)
                  sltu         a0, t4, zero
                  lbu          sp, 16(s0)
                  lbu          s2, -50(s0)
                  lb           sp, -36(s0)
                  lbu          s5, -14(s0)
                  lui          a4, 605845
                  lbu          s10, -50(s0)
                  sltiu        t1, a2, -564
                  lbu          s1, 34(s0)
                  srai         t2, s0, 31
                  auipc        a2, 76447
                  and          t2, tp, gp
                  sub          sp, zero, s5
                  andi         a7, t2, 873
                  lbu          zero, 62(s0)
                  lb           a2, -6(s0)
                  srl          s11, t4, s2
                  lbu          t2, -38(s0)
                  sltu         tp, sp, a7
                  add          a7, a4, a1
                  sra          s1, t2, sp
                  sltu         s4, s3, a6
                  lh           t5, 35(s0)
                  lbu          t1, -18(s0)
                  lb           a5, -10(s0) #end riscv_load_store_rand_instr_stream_3
                  la           s6, region_1+1545 #start riscv_load_store_rand_instr_stream_6
                  sb           sp, 226(s6)
                  sltu         s0, a5, s8
                  ori          a4, s2, 244
                  sb           a1, 200(s6)
                  sltiu        s0, t4, -327
                  slti         a2, ra, -1037
                  lbu          s10, -4(s6)
                  addi         ra, s4, 1079
                  srl          a1, t2, zero
                  slt          s9, a1, t4
                  lbu          s9, 226(s6)
                  lbu          s9, -216(s6)
                  lb           t1, -22(s6)
                  sb           s8, -254(s6)
                  addi         s7, s2, 1475
                  slli         s1, a4, 16
                  lb           sp, -79(s6)
                  xor          t4, sp, s6
                  lhu          t5, 87(s6)
                  addi         s1, s7, -1455
                  lbu          t1, -108(s6) #end riscv_load_store_rand_instr_stream_6
                  la           a5, region_0+1690 #start riscv_load_store_rand_instr_stream_4
                  lh           a2, -48(a5)
                  lhu          s9, -8(a5)
                  lhu          s6, -2(a5)
                  lbu          t2, -11(a5)
                  sb           t6, -43(a5)
                  slli         t1, t3, 6
                  lbu          a1, 53(a5)
                  srai         a4, t4, 0
                  lbu          a3, 59(a5)
                  lbu          tp, -7(a5)
                  lb           s5, 53(a5)
                  lhu          a7, 44(a5)
                  auipc        t3, 940456
                  slt          s2, a7, s4
                  sltu         a0, zero, s4
                  sb           a2, -41(a5)
                  lbu          t1, -27(a5)
                  sub          s11, s2, t3
                  sltiu        t5, s9, -58
                  sltiu        a4, zero, -1407
                  srli         zero, s5, 19
                  sll          a3, a1, s3
                  sb           t4, 59(a5)
                  sb           s2, 13(a5)
                  sll          a4, t1, s5
                  lb           sp, 21(a5)
                  sb           s6, 41(a5)
                  lbu          t4, -43(a5)
                  lb           s7, -30(a5)
                  sb           t3, -63(a5)
                  lb           s11, 13(a5)
                  sb           ra, 19(a5)
                  lbu          s6, -21(a5)
                  sh           s3, -16(a5)
                  lbu          t4, 61(a5)
                  sb           s2, 8(a5) #end riscv_load_store_rand_instr_stream_4
                  sltu         gp, t6, a1
                  lui          t3, 116672
                  bgeu         tp, s7, 20f
                  srli         a3, a1, 26
                  ori          s6, s9, 367
                  srai         a2, s4, 17
                  addi         t1, zero, 186
                  andi         s9, a1, 1380
                  bltu         t0, t1, 14f
                  nop
                  addi         s4, s11, -1560
                  srli         s9, s6, 6
                  lui          s4, 891249
                  bgeu         s9, a1, 30f
14:               slli         a1, a7, 29
                  addi         ra, ra, 185
                  add          s5, s4, t0
                  sltiu        s8, s5, 385
                  srl          sp, a3, s2
                  andi         ra, t5, -789
20:               sltu         s2, t2, s5
                  bltu         s7, t1, 27f
                  xor          a4, t0, ra
                  srl          a1, s9, s5
                  bltu         t5, s2, 32f
                  sll          a5, s10, s11
                  lui          ra, 939794
27:               and          a0, s5, a5
                  srli         s8, s9, 4
                  slt          s4, s7, s5
30:               sub          t5, a7, a2
                  add          a7, a6, s2
32:               xor          s10, t2, t2
                  slt          t4, s8, t1
                  slt          a3, a7, sp
                  slt          t2, s2, s2
                  addi         ra, zero, 1333
                  lui          sp, 65594
                  slti         t4, a5, 205
                  beq          tp, s4, 53f
                  bge          a5, zero, 43f
                  slt          a2, s2, a2
                  sll          t1, zero, a2
43:               bgeu         s9, s0, 45f
                  bltu         s2, t1, 64f
45:               slti         sp, zero, -438
                  add          t4, t3, t4
                  srl          zero, s0, s10
                  bge          s10, s8, 64f
                  xori         s7, tp, -1180
                  slli         a2, s6, 7
                  bgeu         gp, s7, 56f
                  xori         s3, s0, 902
53:               addi         a1, ra, -1268
                  sra          t4, a3, a2
                  xori         s1, s1, 1505
56:               srai         gp, s10, 31
                  sub          tp, ra, a1
                  sltiu        s11, a3, -246
                  add          s10, t6, gp
                  auipc        s3, 98747
                  slti         s4, s8, -2006
                  or           s3, t1, t6
                  and          a5, t3, t1
64:               addi         t2, a2, 1513
                  slti         t2, s11, 440
                  bge          zero, t6, 80f
                  srl          s6, gp, t5
                  auipc        s7, 815054
                  slti         a3, s6, -1641
                  slti         a5, tp, 1450
                  bne          a1, a6, 90f
                  bne          a2, a0, 87f
                  bltu         a5, t5, 93f
                  srl          s4, s6, sp
                  or           s3, s6, t4
                  and          sp, s1, s0
                  lui          a1, 708213
                  srl          a2, tp, s2
                  add          a7, t0, gp
80:               slli         a7, a0, 2
                  addi         t5, s9, -1307
                  sub          s5, t0, a3
                  srai         s0, a2, 19
                  lui          t3, 393415
                  bne          s8, a0, 104f
                  xori         s6, s5, -864
87:               xor          t5, t3, t1
                  bltu         s10, zero, 106f
                  blt          t4, gp, 105f
90:               beq          s11, s5, 94f
                  andi         t3, a5, -864
                  srli         a5, s3, 17
93:               blt          a0, s9, 105f
94:               addi         t3, s3, 1972
                  xori         t4, a1, -399
                  beq          zero, tp, 113f
                  slti         a2, a2, -1411
                  bge          a0, a2, 102f
                  add          sp, t6, a7
                  or           s1, t2, t0
                  auipc        s3, 919467
102:              nop
                  xor          s5, a4, t0
104:              bgeu         s1, a4, 115f
105:              add          s1, t0, t6
106:              sltu         s0, t1, a0
                  sub          zero, t4, tp
                  bge          s5, t5, 125f
                  bgeu         t2, a2, 124f
                  bne          s7, s5, 121f
                  srai         tp, sp, 6
                  ori          ra, s11, 1804
113:              ori          s1, t2, -765
                  srai         a2, a0, 13
115:              srli         s2, a2, 20
                  blt          a5, s6, 119f
                  slti         s6, t6, -1526
                  and          s8, s10, s2
119:              sra          tp, tp, s0
                  sll          s5, s3, t4
121:              bge          a3, s8, 132f
                  srl          s8, zero, a2
                  bgeu         a3, t2, 128f
124:              sltiu        a0, s5, -1877
125:              sra          s1, zero, t2
                  and          s11, a1, s11
                  auipc        t5, 262593
128:              auipc        t5, 438330
                  or           t4, t4, sp
                  bltu         s6, zero, 134f
                  andi         tp, t0, -662
132:              and          s3, s0, t0
                  bge          s3, gp, 150f
134:              bge          a5, ra, 148f
                  blt          s11, s11, 141f
                  or           s2, s9, sp
                  or           s3, a4, t6
                  slli         t5, s0, 28
                  add          a3, sp, s3
                  srl          s1, t6, t1
141:              or           t4, s11, gp
                  srli         s5, t6, 9
                  srli         tp, s2, 7
                  slli         a1, gp, 19
                  auipc        a7, 410344
                  bltu         t5, a7, 166f
                  beq          sp, s11, 151f
148:              srli         tp, s1, 31
                  bgeu         a3, s8, 168f
150:              slli         t4, t0, 25
151:              add          s3, s5, t0
                  srli         s5, gp, 3
                  nop
                  bne          a4, t6, 165f
                  andi         a0, sp, -1303
                  slli         a5, t0, 27
                  slt          a5, t1, s3
                  sra          gp, t3, ra
                  bge          a4, t1, 170f
                  slli         ra, t3, 23
                  srai         t1, ra, 28
                  bltu         a1, s6, 177f
                  beq          s6, ra, 166f
                  andi         s11, t3, 1681
165:              add          a7, s2, s9
166:              auipc        s4, 796596
                  andi         zero, s0, 235
168:              slti         a2, tp, -1380
                  nop
170:              bgeu         a6, s11, 173f
                  and          a4, s7, t0
                  sltiu        t3, a5, -634
173:              or           zero, s2, a2
                  slti         t5, t1, 1930
                  sub          s2, s3, t0
                  or           t4, s8, a7
177:              beq          s3, a0, 183f
                  or           s1, tp, s11
                  slti         gp, s2, -1771
                  auipc        a2, 243896
                  srli         a1, s5, 28
                  lui          t1, 86894
183:              auipc        a3, 209222
                  blt          sp, a3, 200f
                  bltu         a7, a5, 203f
                  ori          t1, a4, -1007
                  and          a0, s2, s8
                  slli         a0, a1, 11
                  srl          s8, t4, a2
                  srli         s3, ra, 6
                  bge          s7, a0, 199f
                  sll          s8, t6, t0
                  srli         t1, t0, 9
                  auipc        s2, 902477
                  andi         s1, gp, 333
                  lui          s10, 749835
                  add          s10, t0, gp
                  bge          t2, a1, 213f
199:              srl          a1, t3, a5
200:              nop
                  beq          t2, s10, 219f
                  xor          s4, a7, s1
203:              slli         a0, t1, 4
                  sll          zero, t3, gp
                  xor          gp, s2, a0
                  auipc        tp, 415360
                  sltiu        s1, t2, -715
                  slt          a7, s8, t5
                  beq          s8, t6, 213f
                  sll          s7, s10, s8
                  bne          s7, t4, 216f
                  sub          a5, a7, s1
213:              srli         t4, s7, 25
                  ori          s10, a4, -773
                  bgeu         t0, a7, 227f
216:              xor          a1, s0, s0
                  sll          t3, a6, a5
                  beq          s2, s8, 235f
219:              addi         a5, s8, -458
                  auipc        a0, 114020
                  add          t1, s6, a2
                  slt          s11, zero, t2
                  beq          t2, t5, 237f
                  or           zero, a2, a4
                  srai         s0, t5, 9
                  bne          a4, t5, 242f
227:              slt          t1, s0, t0
                  slli         s0, sp, 29
                  slli         a7, s7, 7
                  sltu         t1, t4, s4
                  srl          t2, t0, s7
                  bltu         t5, gp, 252f
                  bge          sp, t2, 252f
                  add          a1, tp, s6
235:              srl          tp, t6, s2
                  srl          t1, t2, s10
237:              srli         s0, s6, 20
                  bge          t5, s3, 255f
                  sra          a1, s9, s8
                  beq          t4, sp, 251f
                  lui          s9, 1375
242:              bgeu         a6, a5, 246f
                  sll          s6, s2, a0
                  xori         a7, s3, 906
                  srli         s1, a7, 10
246:              srli         s1, a7, 10
                  auipc        ra, 597721
                  bge          ra, s2, 253f
                  srli         sp, s9, 16
                  and          t4, zero, a4
251:              bge          t3, s0, 253f
252:              addi         a1, a5, 681
253:              bge          s5, a2, 255f
                  nop
255:              ori          ra, a6, -1661
                  bltu         t3, s11, 271f
                  slt          t2, s8, ra
                  bne          t4, a2, 276f
                  add          a1, a2, s3
                  sll          s7, s1, s1
                  beq          t6, s5, 264f
                  sub          a3, gp, t4
                  auipc        s3, 32637
264:              add          s9, s5, tp
                  or           s7, zero, s3
                  srai         sp, t2, 12
                  xori         t4, s5, 991
                  addi         s1, s3, 658
                  blt          s5, a5, 272f
                  andi         a0, ra, 1070
271:              slli         s2, t5, 11
272:              andi         s6, t0, 964
                  slt          gp, t1, t4
                  or           s4, a3, a6
                  add          s1, t3, s11
276:              bltu         a0, t5, 280f
                  srl          t5, t4, t6
                  bge          a3, a2, 289f
                  xor          tp, gp, s3
280:              beq          a1, s5, 295f
                  sll          s3, t6, t5
                  slli         s1, t1, 9
                  sub          ra, t0, zero
                  sltiu        a2, s5, 1945
                  addi         s3, a4, -1847
                  and          s6, t5, t5
                  xori         a0, t0, 1681
                  ori          zero, s7, 1630
289:              andi         s7, s7, -100
                  slt          s0, a4, s2
                  addi         gp, a7, 1250
                  beq          s3, t0, 309f
                  xori         s7, t6, -11
                  beq          s7, gp, 302f
295:              addi         a2, s8, -524
                  andi         a4, a4, -876
                  srli         s6, tp, 14
                  slli         t4, gp, 22
                  slli         zero, zero, 2
                  auipc        a4, 767133
                  xori         s2, s0, -1617
302:              nop
                  bgeu         sp, a3, 317f
                  blt          tp, a4, 318f
                  nop
                  bge          s5, s3, 322f
                  or           gp, s7, s10
                  bltu         s0, s11, 313f
309:              lui          a2, 804591
                  blt          ra, s4, 326f
                  add          t4, gp, s11
                  blt          s7, t1, 330f
313:              srli         s9, t2, 16
                  bgeu         a5, a2, 318f
                  xor          t1, t4, tp
                  bgeu         t6, a7, 333f
317:              xori         t4, a3, 1984
318:              sub          a2, zero, a0
                  srl          sp, tp, s8
                  sll          a4, s4, s8
                  or           s0, ra, s0
322:              srl          s9, s2, s0
                  sltiu        s4, t2, 232
                  bne          a1, s3, 343f
                  srai         t5, t6, 6
326:              lui          s8, 652546
                  ori          s5, t1, -992
                  or           gp, s2, t4
                  sra          a2, s2, t1
330:              sltiu        s8, s0, -1807
                  bltu         a6, s4, 351f
                  add          s4, s7, t4
333:              xori         t3, s4, 1772
                  nop
                  add          ra, a0, ra
                  slli         a7, s6, 31
                  bge          ra, ra, 342f
                  sub          s10, s9, gp
                  slli         s10, s8, 14
                  or           a3, s9, sp
                  sra          s1, t2, t0
342:              xor          a3, a3, s8
343:              slli         s5, s8, 8
                  andi         s3, t3, -1793
                  add          a1, s9, a5
                  beq          t1, s6, 365f
                  or           a7, s4, t3
                  srai         s3, t5, 21
                  ori          s3, a6, 1818
                  slt          s9, s10, t3
351:              slli         tp, s5, 7
                  xori         s7, s3, 1334
                  add          t2, a7, t1
                  nop
                  addi         s3, a1, -1002
                  and          t2, s11, s1
                  or           tp, t1, s0
                  ori          sp, s4, -959
                  slt          s0, t5, t6
                  blt          a5, s6, 366f
                  andi         s0, s4, 1956
                  srl          s10, a2, t0
                  sra          s0, s5, a1
                  bge          gp, gp, 376f
365:              slli         s7, s5, 4
366:              sra          s10, a3, a0
                  lui          s1, 402433
                  addi         s8, tp, 1508
                  sltiu        ra, a4, -763
                  srl          s10, s5, s8
                  and          sp, a4, a5
                  blt          a6, a6, 376f
                  slli         s4, s5, 18
                  srai         zero, a2, 1
                  nop
376:              auipc        a2, 180054
                  addi         s10, a1, -2027
                  auipc        a3, 150137
                  sll          s0, t0, t6
                  bge          s11, s9, 397f
                  bltu         gp, s0, 401f
                  bltu         zero, t6, 393f
                  nop
                  srai         t3, a7, 27
                  auipc        t5, 663355
                  sltiu        a0, a5, 1656
                  xori         gp, t1, -900
                  lui          t4, 49723
                  or           tp, a0, s11
                  sltu         a0, a5, s7
                  or           t3, s2, a7
                  sltiu        s0, s9, 1127
393:              srli         a3, s0, 9
                  bgeu         sp, tp, 400f
                  beq          ra, t5, 406f
                  sltiu        a3, a3, -712
397:              slli         a1, tp, 0
                  slt          s11, t6, t0
                  bne          t0, s2, 404f
400:              add          a4, s8, t1
401:              slli         s2, s0, 13
                  sub          s6, s3, a4
                  sll          zero, zero, s9
404:              srli         s3, a0, 14
                  slli         s6, zero, 23
406:              srai         t4, t6, 9
                  nop
                  addi         sp, t6, -916
                  sub          t1, a1, t6
                  srli         s4, a2, 0
                  sra          s5, t5, t6
                  srli         s0, t1, 17
                  ori          a5, s11, 1027
                  sra          a7, s8, a5
                  ori          s10, zero, 940
                  addi         s4, a7, -1307
                  or           tp, t0, t1
                  bgeu         s1, t1, 433f
                  auipc        tp, 813860
                  sll          tp, s9, gp
                  addi         s4, s4, -1327
                  andi         a0, zero, 803
                  beq          a6, t3, 442f
                  bne          a6, a4, 426f
                  sll          t5, s1, s3
426:              bltu         s6, a3, 429f
                  auipc        s2, 845407
                  add          gp, a7, t6
429:              xori         a1, zero, 34
                  srai         s5, t4, 3
                  bne          a3, s9, 442f
                  ori          a0, a4, -2015
433:              auipc        a2, 282545
                  slti         s4, a4, 699
                  beq          s8, s5, 439f
                  sll          zero, a2, s5
                  srai         s0, s5, 6
                  bne          s6, t2, 450f
439:              addi         a5, s9, 181
                  beq          s9, s9, 455f
                  xor          ra, t5, s1
442:              sltiu        ra, s2, -1755
                  andi         s0, sp, -838
                  beq          s0, ra, 448f
                  xori         s6, t6, -1726
                  sra          ra, ra, s11
                  or           t2, s6, a2
448:              andi         zero, a4, -1389
                  slti         t3, s3, 236
450:              beq          s9, t5, 467f
                  sll          s6, s11, a2
                  xori         a3, s0, -1776
                  addi         s8, t3, -1456
                  auipc        gp, 136057
455:              bgeu         s8, s5, 460f
                  and          tp, s2, s6
                  addi         a0, s8, -1097
                  slt          s1, t6, tp
                  sra          s0, a4, a3
460:              srl          s6, a3, sp
                  slt          s0, tp, a1
                  sltiu        t3, a3, 1210
                  srai         a2, a7, 28
                  nop
                  andi         a0, a2, 1457
                  sll          a5, t6, s6
467:              sltu         t4, a0, a1
                  slt          t4, a1, s0
                  or           s2, s8, t1
                  andi         s8, t6, -1798
                  sra          t2, t5, s1
                  beq          s0, s11, 486f
                  and          a1, s4, t1
                  add          a1, t6, a1
                  srai         zero, gp, 28
                  sltiu        zero, s2, -1243
                  sra          ra, s10, a1
                  sra          s6, gp, a5
                  sltiu        a0, s1, 211
                  beq          s4, a5, 491f
                  srai         sp, a6, 10
                  blt          s2, t2, 493f
                  and          s6, a1, s11
                  andi         ra, gp, -1876
                  bltu         t1, a3, 499f
486:              xor          t5, s2, s10
                  beq          a0, a5, 507f
                  ori          t4, s9, 811
                  sll          s0, tp, s0
                  addi         s6, a5, -1881
491:              andi         s9, a1, 497
                  slti         a7, s9, 273
493:              sltu         s9, t6, s1
                  beq          s9, ra, 512f
                  blt          s3, t4, 503f
                  lui          a5, 456632
                  lui          ra, 1038951
                  add          a2, zero, tp
499:              slti         s5, a4, 1912
                  nop
                  or           s9, a5, a6
                  add          t3, s1, a5
503:              sltu         ra, a1, s10
                  slt          t3, s8, s1
                  sltiu        t1, s8, -1551
                  ori          s0, s9, -2025
507:              or           s10, t5, s5
                  or           a2, t3, a0
                  sra          s2, s7, s10
                  andi         a7, gp, 265
                  and          s4, t3, a2
512:              slti         a5, s3, -753
                  bltu         a2, a6, 529f
                  nop
                  bge          a7, a0, 521f
                  bge          s0, a0, 532f
                  srl          t1, a6, ra
                  srai         a0, t6, 21
                  and          sp, s9, s9
                  bge          t0, a2, 540f
521:              beq          t0, s0, 539f
                  sub          sp, s5, a2
                  andi         s2, s0, -137
                  bge          a5, s8, 530f
                  bgeu         s9, t0, 542f
                  slti         sp, t1, 1973
                  addi         a2, s7, -1288
                  slt          s0, s4, t0
529:              addi         a0, s4, 1619
530:              slti         s7, a7, 1749
                  srli         s9, a5, 16
532:              srl          s7, a5, s3
                  addi         t2, a7, -887
                  srai         s3, s6, 3
                  sltiu        t3, t3, -410
                  sltiu        t2, s2, 566
                  ori          s9, s11, -1395
                  slti         s8, s9, 574
539:              lui          a5, 652122
540:              slti         gp, a0, -1174
                  sll          sp, a5, a4
542:              slli         s3, t1, 24
                  ori          zero, s2, -1804
                  or           s7, sp, t0
                  srli         s8, t4, 1
                  and          t1, t2, a7
                  add          s4, t2, t3
                  bltu         t6, ra, 565f
                  sub          ra, t1, a1
                  lui          a5, 713741
                  add          t5, a6, a4
                  nop
                  srl          t5, ra, t2
                  slt          s8, t5, s4
                  ori          a7, a3, -4
                  sltiu        zero, s11, 1265
                  addi         s2, t6, 840
                  slti         a2, s11, -1280
                  lui          a2, 108630
                  bge          a0, tp, 563f
                  add          a2, s2, s7
                  blt          s9, t4, 581f
563:              bge          s4, a2, 567f
                  andi         zero, t2, 1510
565:              slli         t4, s7, 15
                  blt          s0, s0, 571f
567:              sltu         gp, a7, t4
                  sub          s0, t5, s2
                  slti         t1, a2, -989
                  sltiu        t1, ra, -806
571:              sltu         tp, s10, tp
                  slti         t4, s3, 949
                  sltu         a3, a3, a2
                  auipc        s3, 795508
                  srai         s3, a6, 31
                  or           t1, t4, s8
                  slti         s9, s1, -695
                  slti         s8, t3, -1013
                  or           s0, s11, sp
                  blt          t3, a1, 597f
581:              or           zero, s9, t4
                  srli         ra, a2, 11
                  sltiu        t4, s6, -245
                  and          a4, t2, s8
                  xori         s4, s8, -1150
                  slt          a5, a2, s0
                  slli         s1, s9, 11
                  or           s3, gp, t5
                  bltu         s11, t4, 600f
                  sltiu        a5, a7, 1295
                  sltu         t4, a0, t1
                  srl          zero, s1, s0
                  sltu         s2, s1, t1
                  sll          s2, a5, a1
                  beq          s6, a4, 601f
                  sll          a4, s1, s6
597:              srli         zero, s8, 13
                  bne          a2, ra, 616f
                  xor          s8, t6, sp
600:              slli         a4, a0, 26
601:              bgeu         s11, gp, 604f
                  bltu         s10, t5, 617f
                  auipc        zero, 361681
604:              xor          s0, a0, t2
                  and          s7, s4, a5
                  nop
                  and          a5, s2, s3
                  slli         t1, s5, 19
                  slli         t1, s3, 11
                  lui          sp, 408995
                  srai         a5, s6, 3
                  andi         a3, a3, 291
                  sll          a1, t1, a0
                  bltu         t5, a6, 629f
                  bne          s7, a1, 619f
616:              bgeu         s4, s8, 633f
617:              srai         s10, s3, 16
                  srli         s0, s3, 9
619:              addi         s9, t1, -353
                  andi         s11, a2, 1438
                  slli         t1, a1, 4
                  andi         s6, s11, 1706
                  sltu         a2, a1, a4
                  sub          t3, s7, t6
                  srai         a2, t3, 17
                  sltu         s1, s10, a7
                  lui          a7, 911428
                  ori          s2, gp, 377
629:              srli         t4, s3, 17
                  sltu         a0, s4, s4
                  nop
                  sltiu        s4, a4, 1198
633:              bne          sp, t6, 653f
                  xori         a0, t2, 2034
                  sub          s2, sp, t6
                  nop
                  bge          s8, t2, 654f
                  bltu         s7, a7, 640f
                  slt          t3, t1, a0
640:              blt          a2, s5, 643f
                  sltiu        s7, t1, -88
                  or           a0, s7, a5
643:              blt          zero, zero, 647f
                  xori         s1, t2, 283
                  ori          s3, t5, 289
                  bne          a0, t1, 652f
647:              srli         t1, t2, 26
                  sub          s2, s4, a2
                  and          ra, s6, sp
                  blt          a4, sp, 669f
                  bltu         s2, s1, 670f
652:              xori         t5, a6, 2004
653:              sltu         s4, s3, sp
654:              bge          a6, ra, 665f
                  bne          t6, s6, 675f
                  bge          s10, a3, 670f
                  bge          s6, gp, 673f
                  nop
                  sll          s1, s2, s4
                  slti         a3, s0, 1669
                  blt          zero, t1, 679f
                  nop
                  srli         t5, ra, 28
                  sub          s6, t5, a6
665:              ori          ra, tp, 1526
                  bgeu         a5, a2, 682f
                  beq          t1, t4, 678f
                  sltiu        a1, s8, -864
669:              srli         t1, s5, 15
670:              bgeu         t6, s6, 675f
                  bne          s5, s8, 679f
                  srli         t5, s3, 22
673:              slti         ra, tp, -985
                  xor          t3, s0, a4
675:              slt          s10, a7, t4
                  auipc        t3, 194567
                  bge          s8, t4, 681f
678:              or           a4, s5, gp
679:              beq          t4, a7, 693f
                  srli         a4, s7, 2
681:              nop
682:              bltu         zero, s2, 694f
                  and          s2, a5, s1
                  sltiu        s1, s6, -1547
                  bltu         t5, s7, 690f
                  xori         s9, a0, -548
                  bgeu         s1, s2, 704f
                  sll          t3, t5, a1
                  xor          t3, a2, t5
690:              nop
                  beq          s11, t5, 705f
                  or           s2, s5, t2
693:              add          a2, s4, tp
694:              bge          a0, s11, 709f
                  lui          t4, 149748
                  bltu         a0, zero, 710f
                  srl          ra, s3, s7
                  sub          t3, s0, sp
                  beq          a4, s2, 719f
                  bgeu         s9, a7, 719f
                  nop
                  bltu         s0, s0, 710f
                  srli         s1, s4, 26
704:              sltiu        a5, s0, -1934
705:              blt          gp, a7, 709f
                  xor          s11, s9, t1
                  slti         s5, t5, 1458
                  or           a4, t0, s11
709:              sll          t3, a2, s2
710:              sll          t5, t0, s10
                  add          a0, s0, zero
                  srli         a1, t5, 29
                  and          t4, t1, s10
                  bge          a6, a0, 725f
                  sll          a7, a3, a5
                  xori         s7, t6, 1938
                  xor          tp, t2, s9
                  nop
719:              nop
                  slli         s7, gp, 20
                  ori          s6, s0, 713
                  slt          a2, s0, a7
                  ori          a0, a0, 1055
                  blt          a4, t2, 741f
725:              or           s3, ra, t2
                  sltiu        tp, s5, -1322
                  srl          s1, s6, a4
                  bne          t2, a5, 744f
                  blt          a5, s11, 740f
                  lui          s9, 844779
                  xori         tp, ra, -1165
                  bltu         a7, s0, 752f
                  bne          ra, a3, 736f
                  bltu         t6, s11, 752f
                  or           ra, s5, a2
736:              nop
                  ori          a5, t3, 970
                  xor          s3, a4, s6
                  add          a7, a4, sp
740:              beq          s6, ra, 743f
741:              xori         s4, s11, 6
                  xor          t5, a1, a4
743:              xori         t1, ra, 463
744:              lui          t2, 162054
                  xor          s0, a1, s6
                  srli         s9, a6, 6
                  srl          a0, a4, t0
                  slti         a0, s10, 706
                  xor          a0, a2, s1
                  xori         t3, t6, 151
                  blt          s3, s8, 755f
752:              slti         ra, s10, 1024
                  slti         a2, s10, 908
                  bge          s10, t4, 760f
755:              beq          t6, s0, 770f
                  sltiu        s1, a1, 355
                  ori          s9, t6, -1206
                  slli         s11, s4, 13
                  or           s10, ra, s4
760:              srl          s0, s0, t6
                  lui          s6, 205778
                  xor          s6, s5, s1
                  nop
                  sltiu        t3, sp, 1180
                  nop
                  bgeu         t3, zero, 782f
                  sltiu        s1, a7, -983
                  add          a5, t3, t5
                  and          s2, t2, t2
770:              sra          s1, t5, a4
                  auipc        a2, 400724
                  slti         a3, t5, -741
                  andi         t2, a2, 808
                  and          t5, s6, a3
                  or           tp, a7, zero
                  ori          s3, t4, 277
                  bltu         s10, s2, 783f
                  blt          s6, t2, 797f
                  beq          t5, gp, 781f
                  xori         s4, s6, -1276
781:              bgeu         a1, s7, 786f
782:              sra          a1, s11, a5
783:              auipc        s3, 343112
                  nop
                  slti         s8, t1, 162
786:              add          s2, t3, a1
                  or           s3, ra, sp
                  srl          ra, s9, s8
                  lui          t3, 18010
                  xori         s2, t2, -1696
                  sub          s2, zero, s6
                  blt          s3, a7, 810f
                  bltu         a6, t0, 810f
                  xor          s9, s10, sp
                  auipc        a7, 378144
                  beq          sp, gp, 800f
797:              add          s6, s5, t5
                  slli         zero, a6, 4
                  srli         zero, t1, 14
800:              slli         s9, t0, 31
                  slt          t2, a3, t0
                  sra          a3, a6, t1
                  andi         t3, sp, 1283
                  sltu         t4, s1, s8
                  sra          s3, t3, s4
                  xor          a4, s2, sp
                  xor          t3, s5, t6
                  slli         ra, a3, 23
                  srai         s8, t1, 29
810:              andi         a3, gp, 471
                  beq          s6, s11, 822f
                  xor          ra, s9, t5
                  srai         s0, s10, 25
                  slti         s1, ra, -1454
                  addi         s3, zero, 725
                  sra          t2, a7, s7
                  bne          a3, a5, 829f
                  add          s4, ra, s2
                  slt          s8, t2, s5
                  add          s10, ra, a5
                  nop
822:              auipc        s10, 10252
                  slli         t1, t4, 3
                  slli         s4, a4, 15
                  blt          s10, a4, 839f
                  slti         s9, s8, 1748
                  bge          t4, s9, 833f
                  slti         gp, s8, -1071
829:              srli         s6, a5, 6
                  add          a5, t2, a6
                  or           a4, s4, s10
                  slt          ra, a2, t5
833:              bge          s5, ra, 835f
                  auipc        s8, 317981
835:              lui          s0, 808461
                  srai         t2, s9, 0
                  srai         tp, s5, 10
                  ori          gp, tp, -658
839:              and          t2, s10, t2
                  bge          t3, s10, 857f
                  add          t4, a4, t2
                  beq          a2, a3, 846f
                  bne          a7, s1, 846f
                  bne          s2, s11, 862f
                  nop
846:              bgeu         s0, a5, 864f
                  sltu         s9, s6, tp
                  bne          t5, t6, 851f
                  bne          ra, s2, 860f
                  nop
851:              nop
                  blt          gp, t1, 868f
                  auipc        t2, 470975
                  beq          s7, a5, 873f
                  la           a0, region_0+66 #start riscv_load_store_rand_instr_stream_9
                  sb           a0, 379(a0)
                  lbu          s2, 1622(a0)
                  lbu          a2, 1583(a0)
                  sltiu        s0, t3, 150
                  add          s11, s9, sp
                  nop
                  lh           a4, 1744(a0)
                  lb           a2, 868(a0)
                  xor          a4, s2, s10
                  lui          ra, 515917
                  or           s6, a1, s4
                  and          s2, t5, gp
                  lui          s0, 309565
                  srai         s7, sp, 20
                  or           tp, zero, s11
                  ori          s7, t6, -208
                  sb           s7, 827(a0)
                  addi         a3, ra, -1857
                  lhu          a2, 1864(a0)
                  slt          sp, a0, a0
                  srli         tp, s3, 23
                  slt          a4, s8, t2
                  lbu          s9, 169(a0)
                  srli         s1, s1, 25
                  sb           s3, 1780(a0)
                  andi         s8, s9, 1370
                  sb           t3, 364(a0)
                  sltu         s3, t5, a3
                  lhu          zero, 1214(a0)
                  lbu          t2, 1859(a0)
                  add          a1, s0, a5
                  slt          s4, zero, t2
                  lhu          a4, 320(a0)
                  sb           s9, 1446(a0)
                  sltiu        a4, zero, 775
                  lh           s4, 1048(a0)
                  sb           gp, 585(a0) #end riscv_load_store_rand_instr_stream_9
                  sltu         t2, sp, t3
                  xori         t1, a6, -544
857:              slli         t5, s10, 15
                  sltu         a2, gp, gp
                  srl          s5, tp, t3
860:              srai         s5, s4, 31
                  la           tp, region_1+629 #start riscv_load_store_rand_instr_stream_7
                  xor          ra, s4, t6
                  sltu         zero, zero, s6
                  slli         a1, t4, 20
                  sra          gp, a0, s8
                  slti         s8, a1, 1855
                  nop
                  sltu         s3, a6, t4
                  nop
                  sltiu        s0, s6, 1956
                  sb           t1, -39(tp)
                  or           a3, t4, t3
                  sltiu        a0, s8, -1971
                  add          a1, t4, a0
                  lb           s11, 60(tp)
                  slt          t2, s5, t3
                  lui          sp, 1039225
                  xori         s0, t4, 2008
                  lbu          a0, 42(tp)
                  sb           a7, 6(tp)
                  nop
                  auipc        s4, 292802
                  sw           a0, 23(tp)
                  auipc        a3, 133957
                  sltu         s3, t3, s9
                  xori         t5, s2, -401
                  sb           a4, -15(tp)
                  lb           gp, -51(tp)
                  xori         s11, a3, 702
                  srl          s0, t3, t6
                  sb           ra, -36(tp)
                  sb           a1, 1(tp)
                  srl          s8, t6, s3
                  addi         s5, s6, 185
                  srli         s11, s11, 4
                  sra          t2, t4, ra
                  srl          s4, a1, a4
                  srai         gp, t2, 9
                  xor          t4, t3, s4
                  addi         s9, t6, 92
                  lbu          s5, -15(tp)
                  lh           s8, 61(tp)
                  lhu          zero, 15(tp) #end riscv_load_store_rand_instr_stream_7
                  sltu         s9, s6, s5
862:              addi         s4, gp, -1691
                  srli         sp, s6, 2
864:              ori          s0, sp, 226
                  srai         a7, s0, 15
                  addi         ra, ra, 1180
                  add          a3, s5, a2
868:              and          t4, t0, tp
                  andi         s11, s10, -533
                  srai         t3, t0, 2
                  slti         s3, a1, -66
                  bge          s1, s3, 878f
873:              srli         zero, s7, 4
                  srli         a3, a6, 14
                  sra          s5, s4, s8
                  auipc        gp, 572587
                  addi         s9, s5, 1930
878:              xori         a2, t4, 178
                  xori         s10, s3, 463
                  blt          t3, tp, 885f
                  addi         gp, s0, 1751
                  xor          t2, s10, s0
                  andi         s7, s0, 1965
                  srli         ra, a3, 3
885:              andi         t2, a3, -869
                  add          tp, a4, gp
                  add          s1, s8, tp
                  or           s2, s2, t0
                  sra          a1, a2, a7
                  slt          gp, t2, gp
                  slti         a2, a6, -1987
                  sub          s2, s4, t2
                  bltu         a7, a2, 910f
                  nop
                  and          s10, s4, a4
                  lui          s5, 1001245
                  addi         a7, s3, -918
                  sra          s1, s9, s5
                  bge          a6, a5, 910f
                  bltu         a3, tp, 915f
                  addi         s3, a5, 1607
                  blt          zero, s4, 918f
                  sltu         t1, t5, tp
                  bltu         a1, gp, 918f
                  bne          s6, s9, 913f
                  andi         s0, s10, 144
                  sub          a1, s0, s2
                  and          t1, a0, t5
                  srai         s11, t4, 13
910:              blt          s2, t2, 930f
                  sltiu        s8, s6, 1808
                  sltiu        a1, zero, -542
913:              xori         zero, t5, 12
                  slt          gp, s9, s7
915:              xori         s8, t2, 1881
                  blt          a1, a3, 931f
                  slt          zero, s4, t6
918:              xor          zero, s8, s7
                  and          s8, s2, a3
                  bne          a0, s7, 940f
                  slli         a7, sp, 2
                  and          t5, a7, t6
                  slt          s11, a5, ra
                  ori          zero, s9, 1699
                  andi         s3, a6, 1115
                  add          a2, s10, a0
                  slti         sp, zero, 1956
                  lui          gp, 882434
                  sra          a1, t6, t3
930:              sltiu        s6, zero, -43
931:              beq          t3, t6, 942f
                  blt          t0, s7, 937f
                  and          s5, t6, s11
                  blt          s10, s7, 938f
                  or           a1, t6, t5
                  bge          zero, a0, 948f
937:              sub          a2, s0, ra
938:              sltiu        s6, s8, 31
                  and          sp, a7, t5
940:              bge          s10, s0, 959f
                  slt          s3, s2, a5
942:              add          s10, a1, a6
                  sltu         s8, zero, a2
                  and          s11, t1, a6
                  slli         t2, a6, 4
                  srli         s4, gp, 31
                  slti         s10, a2, -1206
948:              add          ra, zero, s1
                  srai         a3, t5, 16
                  bgeu         s9, a5, 954f
                  xori         t4, a6, -1983
                  slli         a1, s9, 12
                  bge          a6, s11, 970f
954:              sra          ra, s6, zero
                  srli         ra, t0, 19
                  auipc        a3, 556642
                  sra          t2, s6, a3
                  andi         s0, t2, -2003
959:              add          t5, a6, a1
                  and          s4, a4, tp
                  la           s5, region_0+565 #start riscv_load_store_rand_instr_stream_5
                  and          gp, s3, gp
                  lw           zero, 27(s5)
                  lh           s10, 3(s5)
                  sb           gp, 12(s5)
                  xor          t2, t6, t0
                  or           a2, s7, a2
                  sb           t2, 36(s5)
                  lui          a7, 80725
                  sb           s8, 41(s5)
                  auipc        s6, 48852
                  lbu          s8, 48(s5)
                  sltiu        a4, a2, -1220
                  sb           t2, 43(s5)
                  lbu          s0, -64(s5)
                  lbu          a2, 45(s5)
                  or           sp, s4, a2
                  sb           zero, 19(s5)
                  add          ra, s2, s1
                  lb           gp, -19(s5)
                  ori          a0, t5, 317
                  lh           s0, 21(s5)
                  slli         t5, t5, 14
                  sh           gp, -27(s5)
                  sb           s10, 8(s5)
                  addi         t1, s4, -1727
                  lb           s8, -50(s5)
                  addi         a1, sp, -1772
                  sb           a7, -4(s5)
                  sb           a0, 27(s5)
                  slli         s8, a5, 29
                  slti         s10, s10, 411
                  sb           t3, -36(s5)
                  slt          s7, t1, s8
                  sub          s0, a1, t2
                  slli         t1, t2, 7
                  lb           s4, -17(s5)
                  lhu          t3, -39(s5)
                  lb           t5, 26(s5)
                  lui          s3, 679584
                  lbu          s10, 13(s5)
                  sb           t6, 2(s5)
                  srai         s4, t4, 21
                  lb           s1, 22(s5) #end riscv_load_store_rand_instr_stream_5
                  srli         s0, zero, 18
                  srai         s9, s10, 4
                  bne          s8, a6, 975f
                  addi         s0, s1, -338
                  xori         t2, tp, -156
                  andi         s0, a0, 934
                  srl          s11, a0, gp
                  srai         s5, s5, 23
                  bne          s11, a6, 986f
970:              slt          a0, a2, a1
                  bne          t1, s7, 982f
                  slti         sp, s1, -332
                  andi         ra, a3, 360
                  bltu         s3, s11, 979f
975:              slti         s2, s6, -1642
                  blt          a7, zero, 978f
                  or           a3, a1, s9
978:              sra          t2, s6, a1
979:              andi         a3, a2, 1770
                  bne          a3, s11, 983f
                  auipc        tp, 899050
982:              bne          s7, a7, 996f
983:              and          s9, a5, t5
                  xori         ra, t3, 270
                  ori          s5, s5, 85
986:              auipc        s1, 437661
                  slli         s1, gp, 7
                  sra          s1, s3, s6
                  ori          a4, a6, -1234
                  andi         a1, s3, -347
                  sra          t5, s6, s0
                  and          t3, a0, s1
                  slli         t5, gp, 21
                  sltu         s11, gp, s11
                  nop
996:              andi         s11, s10, 282
                  sltu         a7, s5, s6
                  sra          sp, s11, t0
                  xor          s3, zero, s10
                  andi         a7, s6, 390
                  nop
                  or           t2, a3, a4
                  srl          s5, t2, s5
                  andi         t5, s8, 325
                  xor          s8, a2, s0
                  sra          s8, s2, a2
                  andi         s3, s9, 941
                  auipc        s4, 402187
                  srl          t1, gp, s3
                  xori         sp, a6, -207
                  xori         tp, a0, -25
                  addi         a5, t1, -1422
                  blt          a6, zero, 1024f
                  andi         s2, s6, -1177
                  slt          t2, tp, s11
                  ori          a5, t4, -1224
                  auipc        s4, 307818
                  bne          s1, a5, 1021f
                  srl          zero, a2, s1
                  bltu         s11, s0, 1038f
1021:             slti         a2, s10, 212
                  xor          s2, s6, s3
                  addi         s8, a0, 1677
1024:             lui          s3, 184984
                  addi         s6, tp, 284
                  auipc        a4, 898346
                  bltu         a0, a0, 1044f
                  srli         s10, s4, 4
                  srli         s2, a1, 28
                  beq          a1, a2, 1045f
                  sll          t5, s8, a2
                  slli         s4, a1, 6
                  sltiu        a1, t2, 1414
                  srl          a4, a5, t1
                  add          a7, s8, s8
                  bltu         a0, s5, 1042f
                  slli         a2, a4, 5
1038:             srli         t3, t6, 22
                  slli         t2, sp, 10
                  bge          a1, a7, 1048f
                  bne          t5, s1, 1060f
1042:             sra          s6, a0, s5
                  srai         a1, s0, 3
1044:             blt          t5, s7, 1058f
1045:             andi         s3, t5, 1095
                  bne          t3, gp, 1062f
                  nop
1048:             sll          a3, t5, a6
                  ori          sp, s10, -64
                  blt          t0, t6, 1065f
                  add          a3, s5, a1
                  slli         sp, s3, 21
                  blt          a2, s1, 1073f
                  xori         a4, t0, -530
                  bltu         s7, a3, 1072f
                  add          s9, s1, s5
                  sll          t2, gp, a6
1058:             srli         t4, t3, 2
                  addi         s5, s0, -210
1060:             lui          a3, 394783
                  slli         s6, s11, 27
1062:             sll          a7, t0, sp
                  slti         a2, s10, 1395
                  xor          sp, s8, s3
1065:             sltiu        gp, s4, 1899
                  bne          s1, a0, 1070f
                  auipc        tp, 750627
                  bltu         s10, s2, 1072f
                  xor          a2, s9, s3
1070:             ori          s0, t3, 420
                  blt          sp, s9, 1091f
1072:             slti         s10, s8, 516
1073:             sltu         a2, gp, t3
                  addi         s5, t6, 331
                  or           s0, t2, a5
                  sltiu        s1, sp, -1038
                  ori          a1, a5, 1964
                  srli         a4, s7, 4
                  and          t3, tp, t5
                  sll          gp, tp, s4
                  sltiu        s3, s9, 1203
                  bgeu         s2, s7, 1100f
                  srli         zero, t4, 11
                  sub          t3, s6, s8
                  bne          t4, s1, 1101f
                  andi         a5, a3, 668
                  auipc        s1, 240784
                  bne          a7, tp, 1107f
                  srl          s10, s2, s4
                  sll          s1, tp, s8
1091:             auipc        s11, 831174
                  xor          s4, s5, s1
                  sub          a0, t5, s0
                  auipc        t1, 968461
                  andi         a0, tp, -1158
                  slt          s5, s0, t0
                  bgeu         s4, a3, 1108f
                  srli         s10, s9, 7
                  slti         s7, s4, -965
1100:             sra          s9, s1, a1
1101:             lui          t3, 451957
                  slt          a0, s9, a2
                  slt          s2, a5, a7
                  sra          ra, gp, a7
                  add          a7, s2, a4
                  slli         s2, ra, 31
1107:             bne          s3, t1, 1112f
1108:             auipc        a3, 552920
                  addi         zero, s4, 2006
                  or           s4, a7, s1
                  sll          t5, a0, zero
1112:             srl          s3, a3, zero
                  nop
                  srl          s8, tp, s4
                  lui          s10, 638270
                  nop
                  slti         a5, gp, -1867
                  bge          s3, a0, 1122f
                  slt          a0, ra, s8
                  xor          a7, s7, s1
                  beq          s8, t6, 1127f
1122:             or           s0, t3, a6
                  slt          s7, a0, a5
                  slt          s2, t6, ra
                  auipc        s2, 378010
                  bge          zero, s5, 1143f
1127:             bgeu         a5, a1, 1141f
                  and          s5, s1, s5
                  slti         s4, s1, 493
                  bltu         t5, s6, 1132f
                  bne          t0, t1, 1142f
1132:             add          ra, s1, s9
                  srl          s1, t3, s7
                  sra          s6, a4, a2
                  slt          a3, t3, t4
                  slt          t2, t1, s3
                  lui          zero, 329800
                  lui          t2, 582184
                  slti         s9, s6, -1328
                  srli         t4, s5, 9
1141:             bgeu         t5, s7, 1159f
1142:             slti         a1, s6, -1430
1143:             sltiu        sp, s1, 1449
                  ori          sp, a1, 439
                  sll          tp, s11, s7
                  srl          t1, s0, s4
                  nop
                  bne          s1, zero, 1163f
                  sll          t2, t6, a7
                  beq          t3, s9, 1162f
                  bgeu         s5, s1, 1162f
                  nop
                  auipc        t1, 640779
                  andi         t5, a1, 1730
                  srli         s10, t5, 3
                  xori         s8, a5, -574
                  blt          s1, t1, 1161f
                  sll          s0, tp, s10
1159:             xori         a2, s7, 921
                  sltiu        s4, s11, 1139
1161:             slli         ra, t0, 1
1162:             slli         s6, a5, 6
1163:             sll          a3, t0, t3
                  ori          s5, t5, 2021
                  blt          s4, s9, 1168f
                  andi         s11, a4, -1443
                  beq          ra, s10, 1170f
1168:             slt          zero, t2, s2
                  sra          s6, s4, s3
1170:             xor          t4, s8, sp
                  srl          gp, sp, s1
                  or           s9, s2, t2
                  sll          s3, s8, a0
                  la           s0, region_1+541 #start riscv_load_store_rand_instr_stream_1
                  sh           s4, 13(s0)
                  xori         s10, s10, 658
                  sb           t3, 0(s0)
                  add          t4, t1, t3
                  auipc        s5, 32841
                  srli         s5, t6, 5
                  sub          sp, a6, s9
                  sub          t5, a1, a3
                  and          s11, a3, t3
                  lui          a3, 42399
                  sub          s4, t3, sp
                  slti         t5, s0, -1394
                  ori          a2, a2, 1286
                  lb           zero, 6(s0)
                  sltu         tp, ra, t3
                  xori         s5, sp, 1923
                  sb           a1, 14(s0)
                  sub          t4, s3, t3
                  sra          a5, tp, t0
                  sra          zero, a6, t2
                  slli         s6, gp, 13
                  srai         s9, gp, 11
                  sb           a1, 0(s0)
                  addi         tp, a5, 124
                  addi         t3, t1, 302
                  sll          s9, zero, ra
                  lbu          a4, -16(s0)
                  ori          a4, s10, -641
                  srl          tp, s3, t2
                  sb           gp, 11(s0)
                  sltiu        ra, s5, -661
                  lb           a5, 2(s0)
                  sb           s11, -7(s0)
                  lb           s9, -6(s0)
                  add          gp, a6, s4
                  lb           a1, 3(s0)
                  lbu          gp, 6(s0)
                  auipc        s5, 1044058
                  lbu          tp, 8(s0) #end riscv_load_store_rand_instr_stream_1
                  slti         zero, a5, 1446
                  or           a1, s1, s7
                  srl          a0, ra, t0
                  xor          t5, t6, a0
                  ori          gp, a2, -27
                  sub          zero, s8, sp
                  nop
                  addi         s5, gp, 1004
                  ori          t5, s10, -1786
                  srl          gp, a1, t5
                  lui          s9, 816633
                  ori          t1, a3, -743
                  blt          s6, s5, 1205f
                  sltiu        t2, a5, 1870
                  sra          s7, a0, s9
                  bge          t5, a3, 1205f
                  slt          s9, a6, s8
                  slt          a0, s11, a7
                  ori          s2, a2, -729
                  nop
                  sll          a7, s4, s0
                  srli         t3, a4, 7
                  sll          zero, a2, a6
                  xor          t3, zero, a1
                  add          s2, a6, s7
                  sltiu        s0, a3, -2031
                  sltiu        gp, a1, 1469
                  beq          sp, s1, 1207f
                  bge          t1, s8, 1218f
                  bltu         t2, s8, 1217f
                  sltiu        s10, s6, 500
1205:             sra          s11, a3, s3
                  sltiu        t3, a0, 1151
1207:             sltu         t4, s6, a1
                  slli         sp, t1, 14
                  bge          a0, sp, 1227f
                  sll          t2, a3, gp
                  sub          s2, a3, s2
                  ori          t4, t3, 1711
                  ori          s8, t3, 693
                  slti         a3, a7, -856
                  ori          s10, s7, 775
                  blt          t0, s9, 1221f
1217:             nop
1218:             beq          s7, t4, 1235f
                  andi         a5, gp, -288
                  nop
1221:             bgeu         s4, a6, 1236f
                  andi         s7, s10, 1156
                  srai         s11, a4, 30
                  ori          a3, a6, 1746
                  lui          tp, 187092
                  andi         a4, t2, 1051
1227:             sll          s3, a7, a7
                  sra          s2, a6, t4
                  bne          zero, a6, 1248f
                  nop
                  bltu         zero, tp, 1251f
                  slti         a1, t3, 1986
                  beq          t1, s5, 1239f
                  or           gp, t5, s8
1235:             sltiu        a4, a0, 527
1236:             srl          t4, t5, t0
                  xor          a4, s10, s0
                  nop
1239:             bge          t1, a6, 1252f
                  bge          s0, a0, 1248f
                  xori         tp, t1, -767
                  sll          a1, s5, s8
                  andi         s5, a4, 1122
                  sltiu        gp, a3, -2018
                  sltiu        a5, s4, -728
                  bge          s11, s0, 1252f
                  srli         s5, tp, 29
1248:             and          s1, s11, t2
                  nop
                  ori          s10, a4, 1152
1251:             andi         s3, s2, 1185
1252:             addi         t3, a4, 1342
                  lui          a2, 872462
                  srl          s2, s4, t3
                  lui          a7, 428828
                  lw           t1, 4(t6)
                  addi         t6, t6, 32
                  srai         s9, s11, 18
                  xori         t2, a6, 94
                  xori         t3, s4, -409
                  lui          a3, 752257
1660:             addi x11, x6, 0
1660:             jalr x11, x11, 0
sub_1:            bgeu         ra, a6, sub_1_stack_p
sub_1_stack_p:    addi         t6, t6, -32
                  xori         s3, s1, -724
                  add          s10, a3, t5
                  sw           t1, 4(t6)
                  andi         zero, a5, -702
                  la           s8, sub_2
                  addi         s8, s8, -488
                  sltu         a7, ra, s7
                  xori         a0, a7, -446
                  addi         a7, s8, -2030
                  sra          s6, ra, t2
                  bge          s1, ra, sub_1_j3 #branch to jump instr
                  slli         s2, s11, 22
sub_1_j3:         jalr         t1, s8, 489 #jump sub_1 -> sub_2
                  add          s7, a7, s1
                  la           s3, sub_2
                  srli         gp, s7, 5
                  sra          s11, s3, a6
                  sub          t3, s1, t6
                  addi         s3, s3, -670
                  xor          a2, t0, s9
sub_1_j4:         jalr         t1, s3, 670 #jump sub_1 -> sub_2
                  bge          t4, t5, sub_1_j5 #branch to jump instr
                  sltiu        s9, gp, 390
                  ori          s3, s4, 1047
                  slti         t3, s11, -1200
                  auipc        s11, 226931
                  auipc        t5, 918845
                  andi         a3, s10, 669
                  and          t3, t3, a7
                  andi         s2, zero, -1111
sub_1_j5:         jal          t1, sub_3 #jump sub_1 -> sub_3
                  bgeu         s10, t6, 9f
                  sra          s6, s9, t1
                  lui          a4, 879162
                  bgeu         a7, s8, 10f
                  slli         s10, t1, 2
                  sub          s11, sp, s3
                  xor          a5, a5, a6
                  srli         sp, a5, 14
                  ori          a5, t3, 164
9:                blt          a6, s6, 10f
10:               addi         s1, gp, 1899
                  andi         a3, s3, 86
                  ori          s10, sp, -1763
                  lw           t1, 4(t6)
                  slt          s8, s4, s11
                  andi         a1, zero, -570
                  addi         t6, t6, 32
                  add          s11, tp, s1
                  andi         s4, a2, 1653
                  slt          zero, t6, ra
                  sll          t5, ra, a3
54:               addi x21, x6, 0
54:               jalr x21, x21, 0
sub_10:           addi         t6, t6, -12
                  sw           t1, 4(t6)
                  sltiu        s10, sp, -1125
                  slti         t5, a3, 1724
                  addi         a5, s6, -507
                  sub          tp, a0, s6
                  lui          t1, 639427
                  bne          s2, gp, 6f
                  xor          s10, s6, t3
                  nop
                  srai         sp, s8, 23
6:                bltu         s9, s11, 12f
                  bltu         a2, s5, 12f
                  srai         t2, tp, 15
                  sltu         sp, a1, s11
                  sll          a5, s4, s4
                  xor          s9, a0, a7
12:               sub          t3, t5, sp
                  lw           t1, 4(t6)
                  auipc        tp, 961160
                  addi         t6, t6, 12
                  sra          t5, t3, s2
                  sll          a1, s5, t3
23:               addi x8, x6, 0
23:               jalr x8, x8, 0
sub_3:            sltiu        tp, tp, 721
                  slt          a4, s0, t6
                  sra          a4, t6, t6
                  addi         t6, t6, -36
                  xori         t5, t1, -823
                  slti         a7, s9, -823
                  ori          a1, s7, -1672
                  xori         s0, a7, 1768
                  sw           t1, 4(t6)
                  slt          t2, a1, sp
                  andi         s11, t0, -345
                  nop
                  la           sp, region_1+964 #start riscv_load_store_rand_instr_stream_0
                  lb           t2, 11(sp)
                  lbu          a5, -6(sp)
                  lh           ra, 8(sp)
                  sll          t1, t4, s3
                  lbu          gp, -10(sp)
                  lw           t2, -12(sp)
                  slli         s3, t4, 26
                  xor          a3, s4, t1
                  ori          t4, s5, 31
                  lh           a5, -16(sp)
                  addi         s3, a4, 1075
                  xori         s3, a4, -1621
                  or           s4, s11, a1
                  auipc        a1, 446620
                  srli         gp, a3, 12
                  slli         ra, gp, 14
                  and          s1, s2, sp
                  lh           t1, 14(sp)
                  lhu          s6, -14(sp)
                  sb           s1, -15(sp)
                  srl          a5, zero, s9
                  auipc        t1, 875711
                  lui          s9, 487416
                  slti         a5, s4, 182
                  lbu          s11, 4(sp)
                  lhu          zero, 14(sp)
                  lb           s3, 13(sp)
                  lbu          a1, -1(sp)
                  sll          a4, gp, a3
                  lb           s10, 1(sp)
                  auipc        s4, 810045
                  sh           t1, 0(sp)
                  auipc        tp, 393751
                  lh           s11, 0(sp)
                  sb           a0, 13(sp)
                  srai         tp, s7, 21
                  slt          a7, s6, t5
                  sra          a3, tp, t0
                  slt          s2, t5, t5
                  lb           gp, 7(sp)
                  lb           s7, 5(sp)
                  lbu          a5, 11(sp)
                  lbu          a7, 15(sp)
                  ori          a4, s4, -1470
                  ori          s5, s5, -1805
                  sra          a3, t5, s11
                  lui          gp, 784119
                  sb           sp, -5(sp)
                  addi         a4, s3, -1502
                  lw           s11, 12(sp) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_0+760 #start riscv_load_store_rand_instr_stream_1
                  or           t3, a4, t2
                  slli         t2, t5, 1
                  lbu          a4, 1(sp)
                  sb           s4, 9(sp)
                  lhu          t5, -2(sp)
                  xor          t1, a7, s5
                  nop
                  lb           a5, 1(sp)
                  sb           s2, 5(sp)
                  lui          a1, 91288
                  or           t5, a3, tp
                  lb           t5, -1(sp)
                  auipc        a4, 521787
                  or           s5, t0, a2
                  slli         a2, s5, 19
                  sb           ra, 5(sp)
                  sll          s0, a3, zero
                  xori         t2, tp, 2001
                  lbu          t3, 13(sp)
                  sh           gp, -8(sp)
                  lb           a5, -5(sp)
                  lbu          a1, 13(sp)
                  srli         t3, ra, 0
                  lbu          t3, 5(sp)
                  xori         s10, s5, 385
                  lbu          t3, -13(sp)
                  and          s1, s8, t1
                  lw           s0, 4(sp)
                  sra          a0, t3, a4
                  lbu          s9, 1(sp)
                  slli         t3, a1, 25
                  srai         s6, s0, 12
                  sw           s11, -4(sp)
                  addi         a7, a5, 584
                  or           t3, ra, a2
                  andi         t1, s10, -1252
                  or           ra, s9, t6
                  lbu          s7, 2(sp)
                  sh           a5, 2(sp)
                  nop
                  sltiu        a4, s4, -1469
                  lh           t1, 2(sp)
                  add          s6, a6, s7
                  add          t1, s8, t6
                  slt          a4, s1, s9
                  lb           s5, 15(sp)
                  lb           a5, 16(sp)
                  sltiu        zero, a4, 571
                  slti         s3, t5, -1868
                  slt          t2, tp, t0
                  lhu          t1, 2(sp) #end riscv_load_store_rand_instr_stream_1
                  and          ra, a3, t0
                  bgeu         sp, s6, 3f
                  sltiu        s3, s10, 85
3:                add          a3, a3, t1
                  sll          t1, t6, ra
                  sltiu        s6, s9, -908
                  lui          a3, 172691
                  slti         zero, a3, -901
                  sll          t3, t4, t4
                  sra          s7, zero, s2
                  bltu         a3, s3, 25f
                  srli         t4, a3, 3
                  sltu         s3, s5, s9
                  slti         s1, a2, 704
                  lui          sp, 468203
                  addi         s5, sp, -393
                  bge          a6, a0, 19f
                  srai         a3, t6, 22
                  auipc        s10, 803670
19:               sub          s10, s6, s10
                  bne          t3, a4, 38f
                  bge          s4, sp, 29f
                  or           tp, t5, s7
                  bltu         s9, ra, 42f
                  auipc        t2, 582448
25:               lui          s2, 847262
                  auipc        zero, 475823
                  auipc        a3, 450581
                  or           ra, a7, s7
29:               andi         tp, t3, 1198
                  slli         ra, s1, 21
                  auipc        ra, 952711
                  addi         s4, s3, 644
                  blt          s6, s7, 48f
                  ori          s10, a1, 509
                  slti         gp, tp, -341
                  slt          t3, t2, tp
                  sra          s4, s0, s11
38:               sub          s8, t0, a0
                  blt          s7, zero, 43f
                  blt          a2, s3, 56f
                  beq          a4, s10, 44f
42:               srli         s2, s11, 4
43:               lui          s0, 972233
44:               bne          s5, t2, 52f
                  bge          t6, a5, 49f
                  bgeu         a1, s10, 59f
                  lui          zero, 747456
48:               bltu         s10, a0, 50f
49:               slti         a1, s3, 401
50:               ori          a3, s8, 283
                  slli         a7, t4, 26
52:               sll          s6, s4, a4
                  sltiu        s2, s5, 2040
                  bne          s8, s11, 66f
                  and          gp, s5, s1
56:               bltu         s11, gp, 69f
                  srli         s5, sp, 11
                  slti         s2, t6, -1673
59:               auipc        s2, 1047171
                  auipc        s6, 81998
                  auipc        s3, 601329
                  slti         sp, s8, 228
                  srl          a3, a4, a1
                  slli         s4, a4, 24
                  srli         a2, t1, 16
66:               nop
                  slti         s10, sp, 1164
                  and          s4, a2, t0
69:               ori          a1, a6, -1263
                  sub          a4, s1, s7
                  xor          zero, a0, zero
                  addi         s0, t6, -1464
                  auipc        s4, 176925
                  bltu         a0, s11, 78f
                  or           t5, a4, s1
                  xori         t5, s7, 229
                  beq          ra, a2, 79f
78:               auipc        s0, 1043933
79:               ori          tp, t2, 1276
                  bge          zero, s3, 92f
                  nop
                  sltiu        s9, s2, 1392
                  and          s4, t6, t1
                  lui          zero, 441384
                  bge          t0, a4, 91f
                  and          s7, s6, s10
                  slli         a4, a3, 26
                  sll          s1, a1, s10
                  lui          s7, 224300
                  beq          s1, s5, 100f
91:               auipc        s5, 659160
92:               lui          s3, 992339
                  xor          s8, tp, t4
                  blt          a6, a6, 103f
                  sub          a4, a3, a4
                  srai         t2, s8, 17
                  beq          zero, s8, 114f
                  sll          tp, a1, zero
                  bltu         t3, s0, 115f
100:              sub          s9, s2, t1
                  bne          s9, a4, 116f
                  bge          t6, s5, 109f
103:              srl          sp, s2, s1
                  addi         t3, tp, -1156
                  xor          sp, a3, s2
                  or           ra, s2, zero
                  bge          t5, a3, 111f
                  slt          tp, a7, tp
109:              add          t5, s3, zero
                  add          s4, zero, t2
111:              sltiu        t4, a6, -173
                  andi         s10, s1, -1313
                  and          ra, t3, s1
114:              and          s6, s2, a0
115:              blt          a0, t0, 121f
116:              andi         a4, a5, 970
                  slli         t3, sp, 28
                  ori          tp, t3, 157
                  ori          a1, a1, -1357
                  addi         s10, a5, -1893
121:              add          a5, s10, a6
                  bne          t3, a6, 131f
                  bltu         t4, t4, 129f
                  sltiu        s7, s7, -1427
                  srai         s5, s11, 17
                  srai         t2, t0, 15
                  addi         s0, t2, 1
                  bge          s2, s1, 146f
129:              or           a3, s2, a2
                  lui          gp, 684066
131:              ori          a1, s2, 1011
                  bne          s5, t4, 141f
                  and          a3, zero, s0
                  addi         s10, a1, -722
                  srl          a5, a1, tp
                  lui          s9, 100421
                  bne          t6, s4, 152f
                  slli         s9, s4, 28
                  nop
                  bltu         s7, zero, 143f
141:              srai         a4, s2, 10
                  sub          a0, sp, t5
143:              slti         a1, a6, 1732
                  slt          s6, s6, t6
                  ori          s7, a0, -1020
146:              sltiu        t2, a5, -1054
                  bltu         a1, a7, 153f
                  slti         sp, a4, -502
                  xor          a0, a0, t1
                  xori         sp, s8, 1045
                  srl          s6, s5, t4
152:              sll          a5, s3, a0
153:              sra          a2, a3, s0
                  bltu         s3, tp, 170f
                  sra          a3, t4, ra
                  slt          s7, t6, t0
                  srli         s0, a4, 28
                  slti         tp, t3, -99
                  sltiu        s10, s4, -343
                  or           a1, a0, a1
                  beq          a1, s1, 169f
                  sub          a2, a0, t5
                  andi         a3, t0, 75
                  slt          s6, a7, a4
                  bltu         a4, sp, 169f
                  srai         s11, a3, 17
                  srli         t4, a2, 8
                  bge          gp, t5, 175f
169:              addi         s4, s9, 2027
170:              slt          tp, ra, a3
                  or           s1, t6, s2
                  ori          s11, a5, 1796
                  sltiu        s8, a2, -999
                  sltu         zero, s3, t2
175:              sltiu        s5, s0, -371
                  andi         s10, a1, -995
                  addi         t4, t0, -651
                  add          s7, s7, tp
                  xor          t3, t1, s0
                  addi         t1, gp, -1475
                  blt          a4, s7, 196f
                  sub          a4, s3, s3
                  srl          s0, zero, s0
                  addi         ra, s10, -878
                  bgeu         s2, a4, 193f
                  blt          s10, s10, 205f
                  sltu         a1, a6, gp
                  nop
                  lui          s4, 342820
                  srai         a5, t4, 27
                  addi         s8, zero, -1469
                  xori         s1, s7, 1401
193:              beq          s7, s2, 208f
                  srli         a2, a5, 5
                  srli         a7, s7, 13
196:              beq          tp, zero, 199f
                  add          s3, ra, gp
                  nop
199:              srai         t3, a1, 8
                  add          a0, t6, tp
                  sub          a3, ra, a7
                  srli         a0, s1, 9
                  xori         t4, tp, 1300
                  sub          t4, s3, a4
205:              slti         t4, s4, -988
                  lui          a4, 935100
                  srai         s4, s6, 16
208:              srl          ra, s7, a0
                  ori          s8, a5, 1522
                  sltiu        s11, a2, 792
                  andi         s5, a3, -1870
                  srai         a4, gp, 0
                  beq          a5, t2, 226f
                  sub          s0, s6, s2
                  sltiu        s11, a0, 1578
                  bltu         ra, t3, 228f
                  bne          s10, zero, 229f
                  slt          s4, s8, sp
                  xori         t3, zero, -1499
                  lui          sp, 915980
                  blt          s11, a1, 225f
                  sltu         a7, a2, s10
                  and          s2, a4, t4
                  or           s4, t4, t4
225:              and          a2, t4, a5
226:              auipc        s2, 321183
                  srl          tp, s1, tp
228:              ori          s2, tp, -1074
229:              srl          s0, s0, a0
                  srli         s7, gp, 18
                  blt          t5, t4, 247f
                  sub          ra, s3, s4
                  addi         t1, gp, -37
                  srai         s9, s9, 14
                  sltiu        sp, s5, -1768
                  bgeu         gp, a4, 240f
                  slli         a7, s4, 17
                  ori          t3, t6, -1923
                  slt          a1, s5, zero
240:              sra          a3, gp, t6
                  addi         t4, s0, 267
                  beq          s5, s5, 259f
                  slt          sp, gp, s1
                  srl          s6, a7, s2
                  bge          s2, s9, 251f
                  ori          s9, a3, 415
247:              sra          s4, a2, t4
                  beq          a0, tp, 254f
                  sltu         t5, t2, s3
                  blt          s5, s7, 254f
251:              bge          a7, s3, 260f
                  srl          a7, t1, a1
                  andi         s0, a7, 698
254:              srai         a4, a5, 15
                  ori          a0, a1, -1698
                  or           s1, a4, a4
                  xor          a0, s10, t1
                  andi         s7, t1, -1875
259:              bltu         t4, s5, 272f
260:              xor          a7, s8, ra
                  bge          s7, t4, 271f
                  bge          s9, s4, 264f
                  sub          a0, a4, gp
264:              beq          ra, t4, 266f
                  bgeu         a2, s11, 267f
266:              xor          a2, s0, t1
267:              and          s7, s11, tp
                  andi         s5, s11, 1761
                  xori         s2, s11, -1758
                  sub          a0, t6, t5
271:              xori         a2, s2, -1670
272:              slti         s8, s1, -828
                  slti         a2, t2, 1854
                  lw           t1, 4(t6)
                  and          a1, t2, tp
                  addi         t6, t6, 36
                  sll          s1, t4, s6
                  sra          s11, zero, ra
                  andi         a4, a2, 1723
                  or           s11, t1, s8
                  addi         s9, s7, 1394
                  auipc        s11, 412075
398:              addi x24, x6, 0
398:              jalr x24, x24, 0
sub_7:            andi         ra, s2, 407
                  ori          a4, t0, 952
                  blt          t4, s3, sub_7_stack_p
                  add          t3, t5, s6
sub_7_stack_p:    addi         t6, t6, -28
                  auipc        s7, 862289
                  slt          a4, zero, gp
                  sw           t1, 4(t6)
                  srai         s4, a4, 2
                  addi         s3, a6, -1553
                  la           a7, sub_10
                  srl          t3, t5, a3
                  andi         s8, a2, -1109
                  addi         a7, a7, 380
                  lui          s4, 460244
                  lui          a5, 398142
                  ori          s0, s0, -1906
                  srl          t4, a1, s10
sub_7_j14:        jalr         t1, a7, -380 #jump sub_7 -> sub_10
                  la           sp, region_0+660 #start riscv_load_store_rand_instr_stream_0
                  nop
                  lbu          gp, 11(sp)
                  ori          s5, t5, 2017
                  add          a5, t4, s8
                  nop
                  lb           t2, 6(sp)
                  sltiu        s9, a2, 1650
                  lbu          gp, -3(sp)
                  lh           t1, 16(sp)
                  slti         a3, tp, 484
                  sh           a2, 16(sp)
                  andi         s8, t6, 2017
                  lb           zero, 4(sp)
                  xori         s7, s3, 985
                  sh           s11, -6(sp)
                  lbu          s3, 15(sp)
                  sh           t6, 0(sp)
                  addi         s4, t2, -1075
                  lhu          s6, 8(sp)
                  sltu         a4, a2, s7
                  sh           s5, -4(sp)
                  lh           s9, -16(sp)
                  add          s5, a0, t6
                  sb           t1, 5(sp)
                  lb           s7, -11(sp)
                  lb           s0, -1(sp)
                  sltiu        a0, t2, -363
                  lb           s5, -6(sp)
                  lhu          a1, -10(sp)
                  addi         s4, ra, -179
                  lhu          ra, 2(sp)
                  xori         a5, s11, 380
                  sb           zero, 0(sp)
                  sltiu        s1, t6, 2046
                  srai         s5, s10, 14
                  slti         s0, t1, 893
                  lw           s8, -4(sp) #end riscv_load_store_rand_instr_stream_0
                  bge          a1, s11, 7f
                  blt          s0, s7, 21f
                  srli         t2, s4, 22
                  lui          t5, 644176
                  sub          ra, tp, zero
                  sltiu        s0, s11, 11
                  bne          s11, a3, 20f
7:                slt          s7, sp, t0
                  sll          a3, ra, a1
                  bne          t1, a3, 17f
                  slti         s10, s8, 515
                  slli         a7, s6, 3
                  lui          ra, 893370
                  bltu         a4, s6, 25f
                  slt          t3, a1, a4
                  slti         s0, tp, -593
                  bne          zero, s11, 20f
17:               blt          a3, t1, 19f
                  slli         s6, a2, 5
19:               sltu         t3, a1, t2
20:               sll          s1, a1, s9
21:               xor          t2, s6, t1
                  or           a5, a1, tp
                  sra          s11, s2, s8
                  add          s7, t3, s4
25:               sltu         s5, ra, tp
                  addi         s0, s4, 658
                  ori          s3, t4, -696
                  andi         a3, t0, -540
                  addi         s6, a7, -639
                  ori          s11, s0, -762
                  bgeu         s3, s3, 48f
                  add          a7, s10, s8
                  xor          t5, a6, s4
                  add          s11, zero, s2
                  sltu         a4, s6, a6
                  sltu         s3, t3, s4
                  beq          t1, zero, 49f
                  slli         sp, a6, 21
                  bltu         s3, a7, 40f
40:               addi         s0, sp, 820
                  xor          s9, s2, s1
                  lui          t4, 367995
                  sra          s9, a2, s10
                  slt          s7, tp, s6
                  and          sp, s8, s5
                  nop
                  andi         s5, a6, 1876
48:               bge          t3, s7, 59f
49:               ori          t4, s0, -1052
                  or           tp, a7, a1
                  xor          s3, s6, t1
                  xori         s5, s8, -207
                  slt          ra, s6, a6
                  srli         a5, s3, 6
                  xor          a0, zero, t4
                  sll          s9, a3, zero
                  xor          s9, t4, s8
                  srai         zero, s6, 9
59:               slti         t1, a4, 504
                  sub          tp, t2, s11
                  ori          zero, s11, 599
                  sll          s9, t6, a3
                  and          t1, t4, s4
                  sltu         t4, s8, s5
                  sll          t1, s0, ra
                  andi         ra, t4, -1393
                  sltu         a5, t6, a2
                  slt          a0, s4, a0
                  slli         zero, tp, 9
                  bltu         zero, ra, 71f
71:               blt          s3, s7, 90f
                  lui          s10, 310824
                  bgeu         a5, s0, 86f
                  sltu         s9, a5, a4
                  blt          s0, s2, 77f
                  beq          a2, t1, 87f
77:               slti         gp, sp, 1130
                  srli         a1, a6, 15
                  lui          a3, 161111
                  srl          s9, s8, t5
                  slt          a3, s4, a7
                  sra          s10, gp, s7
                  or           tp, s0, a0
                  auipc        ra, 46019
                  ori          a4, t1, 756
86:               and          gp, a6, a7
87:               bne          s5, a5, 98f
                  sll          s2, a2, a5
                  add          s5, t2, a7
90:               nop
                  auipc        a1, 596383
                  srai         t4, tp, 0
                  srli         s10, a6, 16
                  sltu         t1, a2, t4
                  addi         ra, s7, -236
                  sub          zero, s9, a7
                  nop
98:               srli         s11, a3, 7
                  add          a4, s2, t4
                  auipc        t5, 238087
                  sltiu        s10, s1, -6
                  srli         ra, ra, 2
                  sltiu        s2, t5, 266
                  nop
                  beq          tp, a0, 125f
                  or           a4, s8, gp
                  slti         gp, t2, 1507
                  ori          s4, s10, -52
                  sltiu        s9, a2, -196
                  sltu         s10, gp, s2
                  bne          t4, a1, 122f
                  sltiu        s7, t3, -713
                  or           a2, s5, gp
                  srli         ra, s6, 22
                  beq          a5, s7, 130f
                  add          s1, s0, s0
                  blt          sp, t1, 121f
                  slt          a3, t0, sp
                  xor          t3, s1, s7
                  srli         a4, a5, 17
121:              bge          s5, a6, 127f
122:              bgeu         ra, ra, 128f
                  bltu         t1, zero, 129f
                  auipc        a0, 1017390
125:              bgeu         zero, a0, 143f
                  add          t3, t5, a3
127:              sub          s6, s1, a2
128:              sra          a1, s10, s10
129:              sra          s3, a7, a7
130:              srai         s11, a0, 26
                  slli         t3, gp, 23
                  lui          s4, 559256
                  sltu         a2, a0, s8
                  slli         s2, s9, 0
                  slli         s7, t1, 13
                  sll          s7, s11, t0
                  slli         gp, s4, 20
                  or           t4, a0, a6
                  beq          a7, a2, 156f
                  nop
                  slli         gp, s5, 2
                  slti         s6, s4, -1377
143:              addi         s1, s5, -1447
                  lui          s8, 858765
                  addi         s9, a1, -10
                  bge          t5, t5, 162f
                  sltu         s7, t6, tp
                  bltu         s7, s0, 161f
                  nop
                  bge          a5, t3, 166f
                  srli         s8, s2, 1
                  slt          s8, t2, s4
                  lui          s4, 986320
                  bgeu         s5, a6, 174f
                  bgeu         t6, s11, 171f
156:              bgeu         s0, tp, 157f
157:              srai         a4, t3, 12
                  srli         s10, s11, 18
                  sra          s2, s10, s1
                  lui          s5, 796037
161:              srl          a3, t0, gp
162:              addi         tp, a4, 1213
                  blt          sp, a7, 183f
                  sll          gp, s9, gp
                  nop
166:              lui          s9, 175688
                  srai         a2, t4, 13
                  ori          s2, s9, -905
                  srli         s11, t4, 24
                  blt          t5, t3, 183f
171:              xori         t2, s8, 584
                  beq          a0, a2, 189f
                  srai         s0, s5, 23
174:              bltu         a4, s6, 180f
                  or           s1, a0, a7
                  sltiu        s8, t4, -1484
                  bge          a3, gp, 196f
                  sra          s7, s5, tp
                  or           s11, gp, t1
180:              srai         tp, a3, 9
                  srai         t1, t3, 16
                  srl          s9, s0, s7
183:              and          a5, s0, tp
                  ori          s8, s7, 981
                  xori         s2, s0, 767
                  add          gp, t1, s2
                  srl          s10, a0, s1
                  nop
189:              bltu         s6, s5, 196f
                  sub          zero, gp, s3
                  and          sp, sp, a2
                  ori          tp, a6, 756
                  ori          s10, t4, 728
                  srli         s11, t4, 26
                  bltu         zero, gp, 196f
196:              slt          s2, s9, s6
                  lw           t1, 4(t6)
                  lui          t2, 12830
                  addi         t6, t6, 28
                  auipc        gp, 953724
                  addi         s9, s5, -1897
259:              addi x29, x6, 1
259:              jalr x29, x29, 0
sub_2:            slti         a2, a5, -1307
                  srli         s1, a7, 11
                  lui          t2, 566352
                  bne          t0, s7, sub_2_stack_p
sub_2_stack_p:    addi         t6, t6, -16
                  sw           t1, 4(t6)
                  ori          t2, t1, 118
                  addi         s7, t5, -1650
                  la           s7, region_0+1787 #start riscv_load_store_rand_instr_stream_0
                  sub          a7, t4, s5
                  slt          s9, a3, s6
                  srai         s1, t4, 2
                  lh           s6, -1295(s7)
                  sub          t3, sp, a6
                  slt          s3, s1, t3
                  sub          tp, tp, s10
                  xor          t1, s4, a4
                  sltiu        s10, gp, -1521
                  sltiu        s6, a3, 642
                  auipc        t3, 357607
                  add          a5, t3, a1
                  lbu          s10, 204(s7)
                  sltiu        a3, s2, 1572
                  slli         s5, a6, 5
                  sb           s10, 88(s7)
                  sb           ra, -421(s7)
                  nop
                  sb           a1, -74(s7)
                  lui          a2, 858881
                  sw           s4, -443(s7)
                  or           a0, a2, s11
                  srai         s10, a4, 17
                  slli         s8, t1, 15
                  sra          gp, gp, t3
                  andi         s1, zero, -614
                  auipc        gp, 833117
                  lb           a4, -535(s7)
                  lui          s3, 801238
                  sra          ra, zero, s2
                  xori         s10, s5, -123
                  lbu          s9, -1452(s7)
                  srli         t4, gp, 27
                  andi         a0, a4, -386
                  andi         s1, a6, 810
                  lb           s9, -1708(s7)
                  lui          a5, 216920
                  xor          t5, s2, a7
                  lbu          t5, -61(s7)
                  lb           s5, 162(s7)
                  or           s6, t3, sp
                  lb           t5, -771(s7)
                  lbu          t5, -964(s7)
                  lb           sp, -184(s7) #end riscv_load_store_rand_instr_stream_0
                  slli         sp, t0, 11
                  bne          t5, s9, 20f
                  addi         s6, t5, 1773
                  sll          zero, a7, a1
                  addi         a3, zero, 1268
                  srli         t2, t2, 26
                  andi         t4, t1, 1304
                  slt          a0, a2, t0
                  blt          a2, a4, 18f
                  bne          t3, sp, 23f
                  lui          sp, 639891
                  bne          s11, a3, 12f
12:               lui          a3, 344152
                  add          a3, zero, s9
                  andi         s5, t3, 1648
                  addi         tp, a3, -461
                  xor          s9, s5, a6
                  lui          s8, 119187
18:               slt          a5, s1, s9
                  addi         a5, s2, -428
20:               ori          t5, s2, -268
                  bgeu         zero, t5, 28f
                  sub          s8, s5, a6
23:               sltiu        s3, s6, -1883
                  sltiu        s4, a0, -1856
                  xor          a5, a1, ra
                  addi         a4, ra, 1251
                  nop
28:               sra          s6, s5, s8
                  sltu         gp, gp, t4
                  add          t1, s3, s5
                  srli         s10, t4, 24
                  sltu         s4, s4, s2
                  beq          a2, a6, 42f
                  sll          s11, a2, s9
                  nop
                  nop
                  srli         t5, s1, 3
                  lui          t5, 377285
                  blt          s4, s6, 59f
                  sltu         s6, s6, gp
                  nop
42:               sll          s3, s8, s6
                  sub          a7, a3, t6
                  blt          s1, a4, 46f
                  srl          a3, s9, s8
46:               srai         s11, tp, 17
                  slt          s9, t1, sp
                  bne          a1, t0, 65f
                  bge          s2, t6, 64f
                  srai         gp, s1, 10
                  auipc        s2, 275278
                  srai         s1, t1, 12
                  sra          zero, a0, sp
                  slt          s2, s6, a6
                  nop
                  xori         s10, sp, -841
                  addi         s7, s1, 1918
                  and          s10, a0, a6
59:               sra          s2, s1, s0
                  blt          t0, s4, 62f
                  auipc        a0, 969797
62:               ori          t4, t2, 684
                  and          gp, t1, a4
64:               andi         a5, a2, -909
65:               srli         s2, t5, 18
                  addi         s6, s8, 76
                  sltiu        gp, t6, 1268
                  and          s1, t0, a0
                  nop
                  slt          a0, s0, zero
                  lui          s2, 297398
                  nop
                  slti         s4, s11, -115
                  bltu         sp, s11, 90f
                  srai         a4, s8, 6
                  sll          a0, tp, s8
                  or           s9, zero, t4
                  bne          a3, a4, 97f
                  srl          gp, t4, s11
                  srl          t1, zero, s11
                  bne          t1, tp, 99f
                  bne          s2, s6, 86f
                  xor          s4, sp, s10
                  blt          a3, s6, 93f
                  beq          s10, t1, 89f
86:               auipc        s2, 810251
                  bgeu         s2, a5, 105f
                  blt          tp, gp, 99f
89:               slti         t3, s5, -662
90:               sltu         s5, zero, s2
                  bge          t2, s5, 106f
                  sltu         s4, a2, t3
93:               sub          sp, a0, t1
                  bne          s2, gp, 108f
                  sra          t5, s5, s10
                  or           t5, t3, ra
97:               bltu         s3, t5, 117f
                  sltiu        t1, t4, 2036
99:               sra          a2, a5, a1
                  xori         a5, a6, 1245
                  slti         t1, s11, -429
                  xor          s9, t5, t4
                  or           s5, s8, s11
                  bge          s11, s5, 114f
105:              lui          a0, 293548
106:              sra          t3, gp, t3
                  bge          s0, a4, 115f
108:              sra          t4, s9, s3
                  xor          s10, s7, s0
                  auipc        zero, 524348
                  slti         a7, s6, 1505
                  beq          a2, a7, 119f
                  nop
114:              nop
115:              sll          t5, a6, s4
                  sltiu        gp, s5, -301
117:              and          sp, t6, s7
                  bgeu         s6, a5, 133f
119:              blt          sp, a6, 132f
                  bltu         t3, s7, 131f
                  nop
                  bne          s10, a7, 125f
                  nop
                  sra          t2, a5, s8
125:              srl          ra, s4, t3
                  auipc        t4, 488750
                  bgeu         t3, t4, 128f
128:              srli         s2, t3, 15
                  auipc        a1, 886063
                  xor          a5, a2, t6
131:              sub          a0, s9, a6
132:              addi         a3, t4, 697
133:              lui          s3, 198633
                  ori          s5, s3, 526
                  xor          t5, gp, t6
                  nop
                  auipc        s8, 690129
                  and          zero, s2, t5
                  blt          s2, a5, 158f
                  xor          t4, a6, t3
                  bltu         a5, s4, 154f
                  andi         s3, sp, -357
                  sltiu        a4, s9, -234
                  andi         a4, s3, -1318
                  lui          a2, 625543
                  bltu         a2, s5, 162f
                  lui          a4, 74034
                  srai         a4, s2, 8
                  bgeu         a1, s8, 163f
                  srl          s9, a4, s11
                  xori         s6, t0, -311
                  srli         s9, t1, 16
                  slti         s9, a6, -913
154:              bne          s4, s4, 163f
                  sltu         s3, a4, t3
                  blt          sp, t2, 175f
                  add          s6, a4, s7
158:              slti         s10, s2, -1922
                  and          a4, t2, t2
                  and          s9, a5, s10
                  ori          t2, s1, -655
162:              srl          s4, a6, s5
163:              srli         s1, a7, 26
                  sltu         t4, s1, t2
                  srai         gp, s4, 13
                  sra          s8, s5, a4
                  andi         a0, s3, -359
                  xor          t1, s0, a0
                  andi         s10, a3, -471
                  slti         s4, s5, 425
                  la           s11, region_1+1631 #start riscv_load_store_rand_instr_stream_1
                  sltu         a2, s0, a2
                  slli         s0, s6, 25
                  or           a1, s5, t0
                  sh           t5, -125(s11)
                  lb           t2, -461(s11)
                  sll          s5, a2, t4
                  sltu         a5, s11, s0
                  lb           a5, -205(s11)
                  lw           s9, -1039(s11)
                  sb           s9, -623(s11)
                  lb           s2, 10(s11)
                  srl          s9, sp, a0
                  lb           s1, 321(s11)
                  lbu          s0, -1426(s11)
                  srl          s7, s7, t2
                  lui          t1, 272390
                  sll          s4, gp, a7
                  sb           t0, -1441(s11)
                  slli         a1, a0, 12
                  lbu          s5, -91(s11)
                  lb           s3, -678(s11)
                  sb           s0, -441(s11)
                  lb           s4, -610(s11)
                  lui          s5, 807787
                  sub          t4, t5, s2
                  sb           zero, 204(s11)
                  ori          s9, a2, 250
                  lb           a0, -888(s11)
                  lb           s0, -312(s11)
                  sltiu        a7, s6, -1525
                  lh           t5, 107(s11)
                  lhu          sp, -209(s11)
                  sh           s11, 197(s11)
                  sb           s9, -540(s11)
                  xor          a5, t4, s11
                  lbu          a1, -1589(s11)
                  lb           tp, -56(s11)
                  lb           a0, -986(s11)
                  add          a7, t2, a7
                  sb           t2, -391(s11)
                  lh           s2, -1175(s11)
                  sb           a3, -204(s11)
                  slt          sp, t6, a4
                  lb           s1, -1275(s11)
                  lbu          s7, -532(s11)
                  lb           s5, 263(s11) #end riscv_load_store_rand_instr_stream_1
                  slli         s3, t4, 23
                  sub          s11, a2, tp
                  sra          s6, tp, s6
                  xori         s10, a4, 1995
175:              slt          s6, a2, t0
                  sub          t4, a7, a0
                  sra          a3, a6, s3
                  beq          s5, a2, 195f
                  sra          a1, t0, t6
                  sltiu        a5, t3, 1323
                  srli         tp, t6, 17
                  ori          s7, a2, -478
                  xor          a4, gp, zero
                  slli         tp, s4, 6
                  sra          zero, t0, tp
                  auipc        a1, 611677
                  andi         s9, s2, 1634
                  slti         a4, s5, -272
                  xori         a7, tp, -1006
                  slt          s0, a1, ra
                  bne          zero, t2, 193f
                  bltu         a0, t1, 212f
193:              blt          a5, s9, 201f
                  bltu         a7, a6, 195f
195:              bge          a6, s8, 210f
                  ori          sp, gp, -1026
                  blt          s6, t1, 215f
                  add          s10, s1, s0
                  sub          t4, s11, a4
                  sltu         a4, s3, a6
201:              add          s4, s9, a6
                  srli         tp, a5, 27
                  lui          a4, 163097
                  addi         zero, sp, -788
                  auipc        a1, 37590
                  slt          a1, tp, s0
                  slt          gp, zero, a5
                  bltu         t4, s7, 217f
                  bgeu         a7, s2, 227f
210:              bgeu         s3, s11, 230f
                  srl          s0, zero, t1
212:              addi         s10, s10, -76
                  srl          t4, t3, a0
                  slli         a4, sp, 5
215:              srl          a3, a3, s0
                  srai         s8, s5, 27
217:              slti         a1, s10, -1154
                  srli         s9, a6, 21
                  sltiu        s0, s0, 482
                  slti         t1, s1, 1461
                  srl          a0, a5, zero
                  sltu         t4, a6, a1
                  sltu         a1, t0, t4
                  bge          ra, s7, 231f
                  blt          a3, t6, 229f
                  srli         s4, a0, 14
227:              bge          t4, a6, 242f
                  slti         a7, a6, 1658
                  sltiu        t4, s10, 1332
                  sltiu        ra, tp, 1702
                  addi         s5, t5, -1391
                  srli         s5, t5, 7
                  slti         a2, a7, 1510
                  auipc        a3, 392331
                  sub          zero, s2, a2
sub_2_j6:         jal          t1, sub_4 #jump sub_2 -> sub_4
                  slti         a4, a1, 297
229:              sub          a4, zero, gp
230:              bne          a1, t4, 241f
231:              add          s6, t5, s6
                  or           s8, a1, tp
                  slt          s8, t2, s4
                  bltu         gp, t3, 248f
                  slt          s0, tp, a2
                  xori         tp, s1, 1660
                  sltiu        s5, a4, 1667
                  srai         a0, ra, 3
                  and          s2, s8, t5
                  xori         a2, tp, 1983
241:              srli         s11, t3, 1
242:              xori         gp, s4, -485
                  sltu         s11, t6, s8
                  slti         s0, a1, 601
                  sltiu        ra, s6, -1416
                  bge          tp, s9, 249f
                  srl          t4, sp, t4
248:              srli         a4, t0, 8
249:              auipc        t4, 496793
                  srli         a3, a6, 9
                  srli         ra, a7, 23
                  beq          s2, ra, 254f
                  lui          s0, 83269
254:              add          a0, a0, t3
                  lui          s3, 987415
                  sltu         a2, t3, zero
                  slt          a4, s6, a0
                  andi         ra, ra, -202
                  or           s9, s10, t2
                  bne          a7, a0, 275f
                  ori          gp, s0, -514
                  ori          s1, t5, -1657
                  sub          s4, t2, s8
                  lui          s10, 204774
                  bge          tp, t2, 275f
                  lui          a4, 711955
                  andi         t1, s11, 461
                  sub          s9, t0, a4
                  slti         s0, s1, 228
                  bltu         t6, s11, 277f
                  and          sp, a2, s6
                  slti         s2, a3, 445
                  andi         ra, sp, -529
                  auipc        s3, 79787
275:              slti         a1, s3, 2045
                  auipc        tp, 196109
277:              blt          t3, zero, 288f
                  bge          zero, gp, 288f
                  bltu         t0, s6, 283f
                  beq          s1, sp, 281f
281:              bltu         zero, a7, 300f
                  bne          t1, s3, 302f
283:              beq          zero, a3, 294f
                  auipc        a0, 329104
                  srli         a7, s10, 9
                  bne          s1, t3, 302f
                  nop
288:              nop
                  sll          s11, zero, a4
                  bge          tp, s0, 299f
                  sra          a3, s2, s1
                  srai         s6, sp, 22
                  sltu         s6, a5, s7
294:              auipc        s4, 424758
                  xor          s5, a1, s2
                  srl          a5, t2, sp
                  auipc        s0, 1032655
                  sra          gp, t1, t6
299:              srai         s3, s7, 23
300:              add          s4, s1, s4
                  lui          a3, 812066
302:              sltiu        s7, s6, 1512
                  srai         t3, s1, 21
                  slt          s10, t3, t5
                  sltu         s10, a5, t2
                  sltu         a4, a3, s1
                  sll          zero, s1, a2
                  srl          s6, s2, tp
                  bge          a3, a1, 317f
                  blt          a5, s10, 330f
                  xori         s0, a1, 755
                  auipc        a4, 734699
                  xori         s9, s6, -414
                  or           s10, s9, s3
                  sltu         s0, t3, t0
                  nop
317:              nop
                  bltu         sp, s1, 331f
                  bgeu         t5, t6, 331f
                  bltu         t1, s4, 331f
                  and          a2, a5, s6
                  sra          s1, a2, a2
                  bltu         s5, t6, 331f
                  auipc        a3, 1017394
                  slti         s11, s3, 830
                  slli         s7, sp, 26
                  lui          ra, 685673
                  sub          a2, s2, s6
                  nop
330:              bge          s10, t1, 331f
331:              slti         zero, t2, -240
                  xori         ra, s6, -588
                  lw           t1, 4(t6)
                  nop
                  or           a0, s1, a7
                  sub          a4, s0, t0
                  srai         s3, zero, 26
                  addi         t6, t6, 16
                  add          t5, s7, s3
                  add          s0, tp, t2
450:              addi x20, x6, 1
450:              jalr x20, x20, 0
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
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x16, x31, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_2:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x16, x31, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_3:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x16, x31, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_4:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x16, x31, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_5:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x16, x31, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_6:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x16, x31, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_7:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x16, x31, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_8:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x16, x31, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_9:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x16, x31, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_10:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x16, x31, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_11:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x16, x31, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_12:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x16, x31, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_13:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x16, x31, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_14:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x16, x31, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

mmode_intr_vector_15:
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x16, x31, zero
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 0x1f
                  beqz x19, 1f
                  j mmode_intr_handler
                  1: la x5, test_done
                  jalr x0, x5, 0

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
                  addi x31, x31, -128
                  sw  x1, 4(x31)
                  sw  x2, 8(x31)
                  sw  x3, 12(x31)
                  sw  x4, 16(x31)
                  sw  x5, 20(x31)
                  sw  x6, 24(x31)
                  sw  x7, 28(x31)
                  sw  x8, 32(x31)
                  sw  x9, 36(x31)
                  sw  x10, 40(x31)
                  sw  x11, 44(x31)
                  sw  x12, 48(x31)
                  sw  x13, 52(x31)
                  sw  x14, 56(x31)
                  sw  x15, 60(x31)
                  sw  x16, 64(x31)
                  sw  x17, 68(x31)
                  sw  x18, 72(x31)
                  sw  x19, 76(x31)
                  sw  x20, 80(x31)
                  sw  x21, 84(x31)
                  sw  x22, 88(x31)
                  sw  x23, 92(x31)
                  sw  x24, 96(x31)
                  sw  x25, 100(x31)
                  sw  x26, 104(x31)
                  sw  x27, 108(x31)
                  sw  x28, 112(x31)
                  sw  x29, 116(x31)
                  sw  x30, 120(x31)
                  sw  x31, 124(x31)
                  add x16, x31, zero
                  csrr x19, 0x341 # MEPC
                  csrr x19, 0x342 # MCAUSE
                  li x10, 0x3 # BREAKPOINT
                  beq x19, x10, ebreak_handler
                  li x10, 0x8 # ECALL_UMODE
                  beq x19, x10, ecall_handler
                  li x10, 0x9 # ECALL_SMODE
                  beq x19, x10, ecall_handler
                  li x10, 0xb # ECALL_MMODE
                  beq x19, x10, ecall_handler
                  li x10, 0x1
                  beq x19, x10, instr_fault_handler
                  li x10, 0x5
                  beq x19, x10, load_fault_handler
                  li x10, 0x7
                  beq x19, x10, store_fault_handler
                  li x10, 0xc
                  beq x19, x10, pt_fault_handler
                  li x10, 0xd
                  beq x19, x10, pt_fault_handler
                  li x10, 0xf
                  beq x19, x10, pt_fault_handler
                  li x10, 0x2 # ILLEGAL_INSTRUCTION
                  beq x19, x10, illegal_instr_handler
                  csrr x10, 0x343 # MTVAL
                  1: la x5, test_done
                  jalr x1, x5, 0

ecall_handler:    
                  la x19, _start
                  sw x0, 0(x19)
                  sw x1, 4(x19)
                  sw x2, 8(x19)
                  sw x3, 12(x19)
                  sw x4, 16(x19)
                  sw x5, 20(x19)
                  sw x6, 24(x19)
                  sw x7, 28(x19)
                  sw x8, 32(x19)
                  sw x9, 36(x19)
                  sw x10, 40(x19)
                  sw x11, 44(x19)
                  sw x12, 48(x19)
                  sw x13, 52(x19)
                  sw x14, 56(x19)
                  sw x15, 60(x19)
                  sw x16, 64(x19)
                  sw x17, 68(x19)
                  sw x18, 72(x19)
                  sw x19, 76(x19)
                  sw x20, 80(x19)
                  sw x21, 84(x19)
                  sw x22, 88(x19)
                  sw x23, 92(x19)
                  sw x24, 96(x19)
                  sw x25, 100(x19)
                  sw x26, 104(x19)
                  sw x27, 108(x19)
                  sw x28, 112(x19)
                  sw x29, 116(x19)
                  sw x30, 120(x19)
                  sw x31, 124(x19)
                  la x5, write_tohost
                  jalr x0, x5, 0

instr_fault_handler:
                  add x31, x16, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
                  mret

load_fault_handler:
                  add x31, x16, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
                  mret

store_fault_handler:
                  add x31, x16, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
                  mret

ebreak_handler:   
                  csrr  x19, 0x341
                  addi  x19, x19, 4
                  csrw  0x341, x19
                  add x31, x16, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
                  mret

illegal_instr_handler:
                  csrr  x19, 0x341
                  addi  x19, x19, 4
                  csrw  0x341, x19
                  add x31, x16, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x19, 0x300 # MSTATUS;
                  csrr  x19, 0x304 # MIE;
                  csrr  x19, 0x344 # MIP;
                  csrrc x19, 0x344, x19 # MIP;
                  add x31, x16, zero
                  lw  x1, 4(x31)
                  lw  x2, 8(x31)
                  lw  x3, 12(x31)
                  lw  x4, 16(x31)
                  lw  x5, 20(x31)
                  lw  x6, 24(x31)
                  lw  x7, 28(x31)
                  lw  x8, 32(x31)
                  lw  x9, 36(x31)
                  lw  x10, 40(x31)
                  lw  x11, 44(x31)
                  lw  x12, 48(x31)
                  lw  x13, 52(x31)
                  lw  x14, 56(x31)
                  lw  x15, 60(x31)
                  lw  x16, 64(x31)
                  lw  x17, 68(x31)
                  lw  x18, 72(x31)
                  lw  x19, 76(x31)
                  lw  x20, 80(x31)
                  lw  x21, 84(x31)
                  lw  x22, 88(x31)
                  lw  x23, 92(x31)
                  lw  x24, 96(x31)
                  lw  x25, 100(x31)
                  lw  x26, 104(x31)
                  lw  x27, 108(x31)
                  lw  x28, 112(x31)
                  lw  x29, 116(x31)
                  lw  x30, 120(x31)
                  lw  x31, 124(x31)
                  addi x31, x31, 128
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
