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
                  la x22, kernel_stack_end

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
                  li x0, 0xfd5b83cd
                  li x1, 0x0
                  li x2, 0xf
                  li x3, 0x80000000
                  li x4, 0x80000000
                  li x5, 0xb
                  li x6, 0xf50b569d
                  li x7, 0xa
                  li x8, 0x460961e4
                  li x9, 0xf4bc52d6
                  li x10, 0x0
                  li x11, 0x67ac3298
                  li x13, 0x0
                  li x14, 0x80000000
                  li x15, 0x0
                  li x16, 0x0
                  li x17, 0xa95e0514
                  li x18, 0x86c11af4
                  li x19, 0x0
                  li x20, 0x80000000
                  li x21, 0x80000000
                  li x23, 0x0
                  li x24, 0xf0c6f3b7
                  li x25, 0x76f9f616
                  li x26, 0x0
                  li x27, 0xf3a18fc9
                  li x28, 0xf35fe606
                  li x29, 0xff43ecd6
                  li x30, 0x80000000
                  li x31, 0x0
                  la x12, user_stack_end
main:             la           s1, region_1+3 #start riscv_load_store_rand_instr_stream_14
                  slli         t3, ra, 4
                  lbu          t3, 51(s1)
                  lh           t4, 9(s1)
                  xori         a5, a5, 940
                  lb           tp, 40(s1)
                  lui          t0, 250006
                  ori          s9, a7, 993
                  lw           tp, 49(s1)
                  sll          t4, t6, s8
                  lh           sp, 51(s1)
                  srli         a7, s10, 19
                  lb           a4, 63(s1)
                  lui          s5, 287827
                  xor          s7, zero, a3
                  srai         s8, s8, 21
                  lbu          t4, 30(s1)
                  lb           t6, 22(s1)
                  sh           ra, 63(s1)
                  sltiu        a1, a0, 1154
                  addi         s9, s2, 393
                  addi         s10, s3, -651
                  lbu          s0, 54(s1)
                  slt          t2, s1, t4
                  lb           t5, 8(s1)
                  lbu          a4, 35(s1)
                  srl          t5, a3, t1
                  lb           s4, 56(s1)
                  srai         t6, t0, 17
                  sb           s0, 30(s1)
                  and          s0, a7, s10
                  andi         a5, a3, -498
                  lb           ra, 6(s1)
                  nop
                  lhu          s8, 5(s1)
                  lb           t6, 49(s1)
                  lbu          a4, 3(s1)
                  nop
                  lhu          s11, -1(s1)
                  sra          t4, s5, s9
                  add          sp, zero, s4
                  lbu          s8, 60(s1)
                  lb           a0, -3(s1)
                  lb           a7, 6(s1)
                  lb           a6, 6(s1)
                  lb           ra, 25(s1)
                  sltiu        tp, s0, -1698
                  sw           gp, 57(s1) #end riscv_load_store_rand_instr_stream_14
                  la           sp, region_1+1349 #start riscv_load_store_rand_instr_stream_6
                  lui          s10, 938931
                  lb           t5, -531(sp)
                  xori         gp, s1, -890
                  sltu         s9, a3, a4
                  sb           s10, -1179(sp)
                  andi         s5, s8, 552
                  sb           s11, -584(sp)
                  lui          zero, 437961
                  lb           t5, 276(sp)
                  srl          ra, sp, s1
                  xor          a6, t0, s2
                  add          s7, gp, s4
                  srl          t5, t0, sp
                  xor          s11, zero, a6
                  sb           t3, -1234(sp)
                  slli         t6, t2, 4
                  slti         s10, s2, 416
                  lbu          s0, 33(sp)
                  sltiu        a5, a1, 477
                  sw           s5, -717(sp)
                  ori          a6, t4, 455
                  addi         a4, s1, 1633
                  sb           s11, 464(sp)
                  addi         t2, t1, -1976
                  sb           t5, -858(sp)
                  lbu          s5, 378(sp)
                  sw           s7, -537(sp)
                  lh           t6, -843(sp)
                  lui          t0, 680666
                  ori          s5, tp, -751
                  sb           a6, 416(sp)
                  add          s0, t2, s10
                  xori         s0, a4, -1648
                  sltiu        t2, t1, -744
                  sltu         a5, s3, t3
                  slt          a5, t1, t1
                  lui          a3, 489959
                  ori          s4, s1, -151
                  lui          a3, 821914
                  ori          s3, t0, 1572
                  srai         s9, s3, 23
                  lb           s0, 269(sp)
                  andi         a7, gp, 35
                  ori          t2, tp, 1205
                  lbu          s9, -474(sp) #end riscv_load_store_rand_instr_stream_6
                  la           s10, region_0+1726 #start riscv_load_store_rand_instr_stream_15
                  slt          s0, a5, a2
                  sub          t1, s0, ra
                  add          s11, t2, s11
                  and          s1, s4, t0
                  sltiu        tp, s9, 1703
                  srl          a1, t0, a6
                  lbu          a5, -203(s10)
                  lb           a4, 185(s10)
                  sw           a7, 50(s10)
                  lbu          s4, 85(s10)
                  srai         ra, zero, 22
                  lb           gp, -119(s10)
                  sub          s7, t6, s2
                  or           zero, a7, s10
                  sltiu        s8, a5, 277
                  lbu          s11, 154(s10)
                  sh           t2, 112(s10)
                  ori          a7, ra, 250
                  slli         a3, s2, 6
                  andi         t0, tp, 38
                  lb           t2, 184(s10)
                  slli         t6, s11, 17
                  or           t0, s4, t0
                  sh           zero, -112(s10)
                  lb           ra, -121(s10)
                  nop
                  and          t2, s5, a3
                  srl          t2, s2, a7
                  sltiu        t5, t3, 824
                  or           a7, s2, t5
                  slt          s4, a6, t6
                  or           zero, s7, s1
                  sb           a5, -161(s10)
                  auipc        zero, 447154
                  xori         s7, s4, 733
                  lb           s0, 57(s10)
                  lbu          s3, -77(s10) #end riscv_load_store_rand_instr_stream_15
                  la           s4, region_1+792 #start riscv_load_store_rand_instr_stream_2
                  lh           s3, -138(s4)
                  lbu          a4, 55(s4)
                  sra          t3, sp, a0
                  lb           a5, -48(s4)
                  lb           s7, -69(s4)
                  xori         s8, a1, 1640
                  lbu          t5, 224(s4)
                  lhu          s10, -154(s4)
                  auipc        s10, 618197
                  lbu          a3, -167(s4)
                  lbu          s10, -50(s4)
                  sll          tp, zero, s1
                  or           a7, a7, s9
                  ori          t6, s6, 41
                  lhu          s8, 136(s4)
                  sb           tp, 191(s4)
                  add          t0, s2, sp
                  sh           s4, -204(s4)
                  xori         t1, t4, 545
                  lb           s5, 148(s4)
                  lb           t1, -14(s4)
                  srai         zero, s7, 5
                  srai         s9, a2, 17
                  lh           t5, 170(s4)
                  sll          t4, t2, s8
                  slt          s1, s2, a5
                  lh           t1, 18(s4)
                  lb           tp, 21(s4)
                  sll          tp, s7, t0
                  lhu          s9, -162(s4)
                  lb           t1, -165(s4)
                  or           t5, s7, s3
                  sll          a5, s6, s1
                  nop
                  lhu          t1, -112(s4)
                  sw           t0, 224(s4)
                  lhu          a6, -218(s4)
                  nop
                  lb           a4, -139(s4)
                  xor          s11, a5, s7
                  lbu          s9, 47(s4)
                  lhu          t1, -130(s4)
                  lbu          s7, -172(s4)
                  lb           t2, -149(s4)
                  lbu          s5, -126(s4)
                  lbu          tp, -114(s4)
                  lb           zero, 17(s4) #end riscv_load_store_rand_instr_stream_2
                  la           a7, region_1+350 #start riscv_load_store_rand_instr_stream_7
                  sub          a3, s2, a4
                  addi         sp, a3, 213
                  nop
                  addi         s7, t1, -1901
                  sll          t4, t1, t6
                  lb           a6, -9(a7)
                  sb           a3, 1(a7)
                  sb           t3, 15(a7)
                  nop
                  nop
                  lhu          t5, -8(a7)
                  srai         s1, sp, 29
                  sb           s2, -1(a7)
                  or           a1, tp, s1
                  lw           s0, -14(a7)
                  srl          a1, s11, a1
                  lbu          t4, 7(a7)
                  ori          s3, zero, 1052
                  sltiu        s8, s11, -1175
                  sh           t1, -2(a7)
                  lbu          s10, 1(a7)
                  sw           a7, 2(a7)
                  lb           gp, 3(a7) #end riscv_load_store_rand_instr_stream_7
                  la           sp, region_0+1248 #start riscv_load_store_rand_instr_stream_0
                  slt          s3, t1, s11
                  lui          ra, 202071
                  lbu          s7, -1099(sp)
                  or           a3, t6, s7
                  slti         s11, zero, -1247
                  or           a3, a7, s10
                  sb           ra, 197(sp)
                  lbu          a1, -1022(sp)
                  lb           s11, 153(sp)
                  lbu          s8, -317(sp)
                  lbu          s3, -266(sp)
                  sh           sp, 364(sp)
                  slt          a5, tp, a2
                  lbu          t2, -1191(sp)
                  lw           t0, -1020(sp)
                  or           s11, t2, gp
                  lbu          s9, 204(sp)
                  sw           s5, -168(sp)
                  and          t5, s11, s3
                  addi         s5, a6, 1276
                  lb           s3, -218(sp)
                  or           gp, t3, tp
                  sb           zero, -970(sp)
                  lbu          t5, 70(sp)
                  xor          ra, s4, gp
                  sltiu        a5, t3, 431
                  srli         t3, t1, 1
                  sw           tp, -428(sp)
                  add          a6, a7, s1
                  lbu          t1, 606(sp)
                  sb           a7, -401(sp)
                  sltu         a0, s2, t5
                  ori          t2, s5, -1576
                  sh           t1, 296(sp)
                  lhu          a4, 398(sp)
                  lbu          a4, -1078(sp)
                  and          a6, t2, s3
                  auipc        s11, 1034267
                  sub          t1, s7, t0
                  lbu          s1, 99(sp)
                  auipc        s0, 448284
                  slti         a4, a1, 22
                  xor          t2, a5, s2
                  sll          s3, a1, s10
                  lb           s0, 713(sp)
                  srli         s0, t3, 30
                  lb           t2, -449(sp)
                  srli         zero, t3, 1
                  lb           t5, -1065(sp)
                  ori          t4, s0, -1924
                  sb           s9, 689(sp)
                  ori          s10, a3, 2002
                  sll          s3, ra, a5
                  lbu          t5, -291(sp)
                  lb           a3, 25(sp) #end riscv_load_store_rand_instr_stream_0
                  la           s11, region_0+212 #start riscv_load_store_rand_instr_stream_5
                  sb           t6, -210(s11)
                  lbu          zero, -6(s11)
                  lbu          s3, -42(s11)
                  srl          gp, t3, s10
                  lb           tp, 159(s11)
                  sb           tp, -202(s11)
                  srl          tp, s9, sp
                  lh           s0, -62(s11)
                  lb           gp, 208(s11)
                  lbu          a7, 239(s11)
                  srl          a1, s4, s2
                  srli         zero, ra, 8
                  sb           s2, 17(s11)
                  srli         s1, zero, 26
                  lb           a4, -86(s11)
                  srli         t3, t5, 18
                  sltiu        a4, t4, 1098
                  lhu          tp, -154(s11)
                  sb           tp, 61(s11)
                  lbu          a5, 63(s11)
                  sltu         t0, s0, s8
                  lb           a6, 122(s11)
                  xori         a3, a4, -521
                  lbu          s7, -201(s11)
                  sub          a1, t6, s3
                  sw           s6, 192(s11)
                  sltiu        s5, sp, 1953
                  lb           a7, 251(s11)
                  lbu          s10, -193(s11)
                  lh           s10, 22(s11)
                  lb           zero, 127(s11)
                  lh           t1, 78(s11)
                  srl          a0, t2, t3
                  lhu          a5, 24(s11)
                  sb           s7, -154(s11)
                  sb           s4, 121(s11)
                  lbu          t4, 1(s11)
                  sll          t5, a2, gp
                  lbu          a1, 16(s11)
                  slt          s0, zero, s10
                  lbu          t6, 213(s11)
                  sll          t5, t2, s8
                  sb           sp, 79(s11) #end riscv_load_store_rand_instr_stream_5
                  la           tp, region_0+1095 #start riscv_load_store_rand_instr_stream_10
                  or           s11, gp, ra
                  xor          s5, s10, a4
                  lb           s11, 186(tp)
                  nop
                  lui          a4, 437238
                  slli         ra, t2, 6
                  ori          t0, s11, -1591
                  srai         gp, s0, 8
                  and          a1, s9, a0
                  sltiu        s1, s5, -669
                  or           s11, a7, t3
                  andi         a6, t1, -1649
                  sb           a4, -62(tp)
                  slt          t3, s1, a2
                  lbu          t2, 6(tp)
                  sub          zero, s7, s3
                  sltu         a6, t4, a6
                  addi         t5, s8, -1678
                  add          s1, s8, s3
                  and          s5, s1, t1
                  srli         t6, gp, 16
                  andi         t6, zero, -1357
                  sh           s9, -69(tp)
                  lbu          s11, -103(tp)
                  lb           ra, 14(tp)
                  sb           a2, 115(tp)
                  lbu          a7, -127(tp)
                  sh           s2, 147(tp)
                  lbu          a4, 173(tp)
                  xori         ra, tp, -913
                  sra          s11, t6, t2
                  sub          t6, t6, a5
                  nop
                  xor          a0, a6, a2
                  sb           a3, -164(tp)
                  slli         t6, a7, 26
                  sw           s2, -251(tp)
                  xori         s0, s7, -918
                  xori         zero, t4, 1466
                  or           t3, s4, t4
                  lb           s1, -47(tp)
                  lh           sp, -181(tp) #end riscv_load_store_rand_instr_stream_10
                  la           a3, region_0+742 #start riscv_load_store_rand_instr_stream_9
                  lb           s0, -16(a3)
                  sw           s7, -14(a3)
                  sb           t0, 4(a3)
                  sub          s3, sp, a0
                  slti         s7, a7, -554
                  lb           s11, 13(a3)
                  sltiu        t6, s11, 440
                  srai         t2, zero, 10
                  lb           s10, -1(a3)
                  sltiu        zero, a3, 388
                  nop
                  lb           s3, -10(a3)
                  sra          t0, s9, t5
                  nop
                  sb           t6, -15(a3)
                  lui          a1, 123938
                  lw           s9, 10(a3)
                  lui          s1, 855168
                  add          a5, s8, s10
                  lhu          t4, -16(a3)
                  lb           tp, -9(a3)
                  sltiu        t0, ra, -742
                  lbu          a7, 5(a3)
                  xori         s11, s6, -177
                  and          a7, a4, s3
                  sh           a0, -6(a3)
                  sb           a3, 1(a3)
                  sh           a1, -8(a3)
                  nop
                  sltiu        t5, t3, -953
                  sh           a2, -14(a3)
                  sb           t4, -15(a3)
                  sb           t2, 5(a3)
                  lbu          t2, 11(a3)
                  lbu          a5, 15(a3)
                  sb           zero, 7(a3)
                  ori          s10, s2, 1920
                  slti         zero, a2, -1051
                  lb           t5, -5(a3)
                  slli         s3, a2, 25
                  lb           tp, -3(a3)
                  lbu          s7, -15(a3)
                  lb           a7, 9(a3)
                  lbu          s9, 13(a3) #end riscv_load_store_rand_instr_stream_9
                  la           t2, region_0+756 #start riscv_load_store_rand_instr_stream_13
                  lb           a7, 14(t2)
                  sw           t1, -60(t2)
                  lhu          t4, 50(t2)
                  ori          s5, s5, -830
                  sltu         s10, ra, t0
                  sltu         ra, a7, s2
                  xor          s7, a1, s6
                  lw           s8, -56(t2)
                  lbu          a7, -41(t2)
                  lb           a0, 12(t2)
                  sb           s4, -21(t2)
                  sra          s5, s10, s9
                  auipc        t1, 565152
                  lbu          s9, 16(t2)
                  sb           s3, -28(t2)
                  addi         a1, gp, 1109
                  slti         t5, sp, 21
                  srl          gp, t1, s3
                  lb           sp, 15(t2)
                  sb           gp, -23(t2)
                  sb           s3, -33(t2)
                  sb           a6, 9(t2)
                  lbu          s0, 38(t2)
                  sb           s3, -19(t2)
                  ori          s8, a3, 1255
                  sb           t4, -49(t2) #end riscv_load_store_rand_instr_stream_13
                  la           a3, region_0+1469 #start riscv_load_store_rand_instr_stream_4
                  srl          t4, t6, a2
                  sltu         s3, ra, t4
                  srl          s11, s10, a0
                  lhu          s4, -169(a3)
                  or           t0, s0, a6
                  lhu          a1, -1115(a3)
                  lbu          a4, -704(a3)
                  lb           s10, -66(a3)
                  lui          t0, 109525
                  lbu          zero, -984(a3)
                  lbu          s1, -830(a3)
                  xori         s4, a4, 1344
                  andi         s0, s10, -472
                  or           a7, zero, s6
                  andi         a4, sp, 1619
                  slli         a4, t1, 16
                  sh           s1, -839(a3)
                  andi         a1, s6, -818
                  lb           t0, -740(a3)
                  or           a6, s5, tp
                  add          a6, a4, s10
                  slli         s7, a4, 18
                  lbu          t0, -602(a3)
                  lbu          t0, -1466(a3)
                  sub          a4, s8, sp
                  srli         s9, t6, 13
                  and          s3, t1, t6
                  sub          t2, a2, tp
                  add          a5, gp, s1
                  and          ra, zero, a2
                  addi         s9, zero, -1054
                  lui          s5, 406017
                  andi         a1, a0, -1025
                  sh           zero, -555(a3)
                  or           ra, a7, sp
                  lh           s3, -807(a3)
                  slli         s0, s9, 21
                  srl          a0, s1, tp
                  lbu          s1, -387(a3)
                  xori         sp, a6, 1706
                  lb           zero, 51(a3)
                  lbu          zero, -1372(a3) #end riscv_load_store_rand_instr_stream_4
                  la           tp, region_1+830 #start riscv_load_store_rand_instr_stream_8
                  nop
                  and          a6, a0, t0
                  sltu         s3, t1, s8
                  lb           gp, -109(tp)
                  lb           a1, 141(tp)
                  slt          s9, s1, ra
                  sb           s8, 46(tp)
                  srli         t0, s9, 9
                  srl          a7, t5, s9
                  lbu          a7, -171(tp)
                  xori         t3, zero, -127
                  lbu          t5, 1(tp)
                  srl          s8, s11, t0
                  lb           t4, 188(tp)
                  sb           a3, -165(tp)
                  lbu          t6, -95(tp)
                  lbu          s7, 97(tp)
                  lbu          a4, -217(tp)
                  xori         a4, t5, -1127
                  sh           s2, -20(tp)
                  lb           a6, -73(tp)
                  srl          t0, zero, t3
                  lbu          a6, 228(tp)
                  lb           t3, -110(tp)
                  slli         s3, t5, 2
                  lbu          s0, -27(tp)
                  xori         t5, s4, 1642
                  sra          a1, s2, t5
                  slti         a4, s4, -1241
                  and          a1, t1, t3
                  auipc        s8, 434571
                  srl          a4, s8, a1
                  auipc        a0, 1038306
                  nop
                  lb           sp, -83(tp) #end riscv_load_store_rand_instr_stream_8
                  lui          t0, 223506
                  sll          s3, ra, a0
                  bne          sp, a0, 17f
                  nop
                  nop
                  or           s7, a0, s8
                  sltiu        a0, ra, -200
                  andi         a6, ra, 367
                  or           tp, zero, a5
                  srai         s10, a7, 2
                  add          ra, s11, a1
                  xor          s3, s11, s10
                  bne          a5, s9, 15f
                  xor          s5, tp, s1
                  bltu         t3, s8, 17f
15:               slti         t3, a4, 1258
                  and          s1, s8, t1
17:               beq          t0, s3, 28f
                  nop
                  ori          s11, s4, 1200
                  bge          a5, sp, 34f
                  bge          ra, a6, 24f
                  bgeu         sp, t3, 23f
23:               ori          a3, zero, 1618
24:               bne          a0, s9, 27f
                  nop
                  ori          s9, t4, 1967
27:               xori         s9, t5, -115
28:               lui          s0, 937313
                  xori         s0, t6, -260
                  sltiu        ra, t0, 1746
                  addi         tp, s6, 1701
                  bne          a0, a7, 52f
                  andi         t4, a3, 727
34:               xori         t3, s6, -1674
                  add          t6, s6, tp
                  bge          s4, t1, 50f
                  srl          a3, gp, t0
                  slt          s10, a0, t3
                  auipc        s0, 511377
                  ori          s9, s1, 208
                  bne          t5, s3, 56f
                  blt          a4, t1, 47f
                  bne          t5, a0, 44f
44:               addi         tp, t0, 569
                  sll          a3, a3, a1
                  sltiu        s9, t2, -679
47:               bge          s7, s5, 62f
                  nop
                  bgeu         s6, t2, 52f
50:               bltu         s10, zero, 57f
                  or           t2, s10, s2
52:               sra          t3, t1, t2
                  sra          a7, a7, t4
                  add          s9, a5, s9
                  beq          t6, s10, 62f
56:               sra          s7, s5, a1
57:               addi         zero, a6, 225
                  and          a4, t2, a5
                  or           s3, s3, a3
                  srl          t1, s9, s9
                  sub          t3, s3, s9
62:               ori          zero, t0, 1995
                  sltiu        t6, a6, 1796
                  sub          s3, a1, s8
                  bge          t0, sp, 71f
                  slli         a7, s5, 25
                  ori          a0, zero, 1284
                  lui          zero, 764322
                  add          a1, s3, a7
                  bltu         t2, a5, 71f
71:               andi         t5, s10, 360
                  beq          s5, s10, 79f
                  sltu         ra, a2, s3
                  auipc        t6, 515136
                  bltu         t6, s7, 79f
                  slt          sp, zero, t5
                  sltu         t3, gp, tp
                  nop
79:               sltu         a1, a1, a3
                  sltu         t6, s4, s8
                  srai         s4, gp, 18
                  bge          t4, a3, 93f
                  xori         t3, s8, -271
                  sll          s10, s10, zero
                  lui          t3, 338782
                  nop
                  slti         tp, tp, 1498
                  addi         tp, a0, 538
                  bltu         t1, s5, 90f
90:               nop
                  and          t3, t1, a5
                  sltu         s1, s1, s7
93:               slt          gp, s2, ra
                  sll          a6, t0, t6
                  blt          a4, a2, 97f
                  xori         zero, s11, -1153
97:               srl          s9, zero, t4
                  blt          s2, s5, 112f
                  sra          a6, s1, s1
                  sll          tp, t2, t4
                  or           s3, s2, s10
                  and          s9, a6, s2
                  xori         t6, sp, 412
                  blt          a0, a3, 121f
                  add          s8, t1, t5
                  add          a6, s6, sp
                  srl          a4, t3, t0
                  srl          s11, a4, t5
                  blt          zero, s5, 112f
                  bgeu         t3, s6, 116f
                  bne          s3, a3, 123f
112:              sltiu        a5, sp, -815
                  sub          a1, t4, t4
                  slti         a4, gp, -1953
                  bgeu         t2, sp, 116f
116:              xor          a6, s4, s4
                  add          t0, sp, a6
                  srl          t3, s8, s1
                  and          a5, t0, ra
                  sra          a3, t3, s2
121:              srai         a6, s6, 22
                  nop
123:              slti         t4, a7, 1224
                  nop
                  sltu         a7, t5, t4
                  bge          a6, t0, 137f
                  sll          s5, ra, s8
                  beq          t3, a2, 130f
                  bltu         t4, s9, 136f
130:              slti         s7, s3, -991
                  srli         a0, s0, 14
                  sll          gp, s11, tp
                  bne          s5, ra, 148f
                  sltiu        t1, t2, -334
                  bgeu         s10, t1, 136f
136:              bltu         a4, s8, 139f
137:              and          s9, zero, tp
                  nop
139:              bltu         a4, s7, 153f
                  slti         t3, t3, -1524
                  srai         t2, a2, 13
                  xori         s8, s8, -479
                  bne          t6, s9, 160f
                  nop
                  or           s11, gp, a2
                  slli         a7, a5, 28
                  andi         s11, t3, 1875
148:              andi         a0, t5, 1927
                  lui          a1, 1008308
                  auipc        a6, 1044117
                  sltu         t1, t3, s0
                  bge          a4, a0, 167f
153:              ori          s5, gp, -884
                  srai         a0, ra, 23
                  sub          a4, zero, s11
                  slli         s3, sp, 14
                  srl          a1, s0, a2
                  ori          a7, a6, -1545
                  xori         a1, s10, 678
160:              blt          a2, a0, 164f
                  srl          s11, s0, ra
                  sltu         s5, s0, s10
                  add          a0, a5, t1
164:              beq          s4, gp, 184f
                  lui          a3, 142384
                  ori          gp, a1, 2009
167:              sll          s3, gp, t0
                  srli         s0, ra, 26
                  bne          a0, s11, 184f
                  and          t2, s9, a6
                  blt          s4, a0, 183f
                  lui          s0, 79824
                  bge          s4, t6, 176f
                  bltu         a2, t0, 175f
175:              srai         zero, a1, 26
176:              bgeu         t1, s1, 183f
                  slt          ra, t5, s4
                  slti         gp, s10, 205
                  srl          t4, a0, s4
                  nop
                  sub          zero, s11, a1
                  and          sp, s5, s0
183:              srai         t4, t3, 0
184:              nop
                  sub          t3, s9, a1
                  add          gp, gp, ra
                  slt          s3, gp, a4
                  auipc        s4, 911541
                  addi         ra, a5, 1492
                  sll          ra, t4, a4
                  ori          a4, t6, -133
                  sll          s3, t3, a0
                  and          s8, s4, a7
                  srli         zero, a2, 12
                  sra          a6, a5, a5
                  or           zero, a5, s2
                  sltu         sp, a5, s2
                  lui          t2, 680498
                  bne          s6, s9, 205f
                  sltu         s0, a6, a6
                  slt          a3, t5, a4
                  slt          t2, s6, a2
                  xor          ra, a5, s6
                  and          s10, t0, s11
205:              slt          t0, gp, tp
                  srl          t0, zero, t6
                  slt          s11, t5, ra
                  addi         s0, t6, 861
                  bge          s7, tp, 212f
                  srai         a7, s7, 9
                  beq          s0, t3, 216f
212:              xor          a5, gp, sp
                  sll          s1, a4, s5
                  slt          s5, s9, t0
                  andi         s11, s2, -1699
216:              xori         sp, a1, -1198
                  bltu         s10, a3, 224f
                  slti         s3, t5, 146
                  sub          a1, tp, zero
                  slt          t1, sp, a4
                  or           s7, a3, s10
                  add          a3, a5, s2
                  xor          s1, ra, s10
224:              bne          a1, s6, 225f
225:              addi         t5, s10, 1132
                  bge          t4, a7, 227f
227:              lui          s1, 414137
                  srai         a5, a6, 7
                  or           a1, s7, a6
                  beq          s7, s11, 236f
                  bgeu         s1, t2, 234f
                  bltu         a7, s0, 235f
                  sltiu        t1, a7, 1406
234:              and          a0, zero, zero
235:              add          s9, s10, s6
236:              beq          s6, t5, 239f
                  and          a5, zero, a4
                  srai         s4, zero, 5
239:              slti         gp, gp, 277
                  sltiu        a1, s4, -1727
                  sll          s9, zero, a4
                  addi         a3, t2, 1052
                  lui          t5, 710508
                  sll          a7, ra, t1
                  addi         s0, t2, -1736
                  bltu         s0, sp, 257f
                  slti         a0, s11, 258
                  addi         s1, s11, 887
                  lui          s7, 561704
                  bgeu         sp, s5, 264f
                  srai         s11, a2, 0
                  addi         s0, s2, -72
                  srl          sp, s2, a1
                  xori         s10, a3, 34
                  srai         s4, t4, 14
                  xor          a0, a3, sp
257:              slli         t2, s11, 29
                  ori          a5, a7, 288
                  lui          a7, 826132
                  beq          s1, t2, 261f
261:              blt          s1, s3, 275f
                  or           t4, s1, t0
                  add          s9, t1, gp
264:              add          a3, s7, s0
                  sll          s1, gp, a7
                  srl          a1, a1, t3
                  ori          tp, s6, -70
                  add          zero, a3, sp
                  bne          t0, s4, 273f
                  add          sp, sp, t2
                  bge          a1, s6, 272f
272:              bne          a4, a7, 284f
273:              srai         a3, t6, 1
                  bne          s10, s10, 281f
275:              xor          sp, s7, s10
                  srli         s3, s8, 1
                  nop
                  bgeu         t6, s8, 293f
                  sltiu        a3, a4, -1881
                  srai         s4, s5, 22
281:              sra          sp, a3, s7
                  nop
                  sub          a3, t5, t3
284:              blt          s3, s7, 285f
285:              sll          a3, t3, zero
                  bne          sp, s5, 300f
                  sltu         t5, gp, s4
                  auipc        t3, 785502
                  bltu         s0, ra, 292f
                  addi         a0, a2, 874
                  auipc        t0, 230467
292:              sll          t2, a6, s1
293:              slti         a4, s4, -1919
                  and          t4, s4, t0
                  bne          s5, a5, 306f
                  lui          t3, 656981
                  add          t2, t6, a7
                  ori          sp, a5, 296
                  srli         t4, s5, 13
300:              blt          s6, s1, 306f
                  bltu         a7, s9, 304f
                  blt          t1, a7, 303f
303:              addi         s1, s11, -558
304:              slti         a7, a5, 68
                  sltiu        s10, s8, 953
306:              ori          s10, a5, -1506
                  addi         s8, zero, 112
                  beq          t3, t3, 323f
                  beq          a3, t3, 329f
                  xor          s3, a6, s11
                  ori          s7, a1, 1137
                  sub          t2, s10, a4
                  xor          s10, a2, tp
                  slt          a3, t4, a6
                  beq          t4, s9, 317f
                  xor          a4, s3, s1
317:              srli         t3, a0, 16
                  blt          s2, t1, 321f
                  and          t0, a1, s11
                  bne          s10, s6, 326f
321:              xor          t4, t1, s5
                  bgeu         s7, a2, 336f
323:              ori          a1, a3, -1407
                  sll          t1, a2, a3
                  bge          a0, s7, 328f
326:              and          s11, a2, s7
                  blt          s5, zero, 330f
328:              xor          ra, t3, s11
329:              nop
330:              bge          t5, ra, 337f
                  nop
                  addi         a5, t2, 1936
                  nop
                  sltiu        t6, s10, 2046
                  slt          a3, tp, a5
336:              srai         a3, t2, 27
337:              srli         s7, tp, 11
                  srli         s11, s4, 22
                  bgeu         s7, t5, 350f
                  nop
                  lui          a0, 783533
                  bgeu         t4, t5, 359f
                  srl          s1, a6, a1
                  bne          sp, t0, 358f
                  bge          t1, s8, 352f
                  blt          sp, gp, 351f
                  xor          tp, t5, a7
                  slli         a6, s7, 21
                  add          a1, ra, s8
350:              sll          a7, s0, a4
351:              and          s1, a7, a1
352:              auipc        t4, 707710
                  sra          s7, s7, t0
                  sra          t1, t5, gp
                  auipc        tp, 371278
                  auipc        t3, 727295
                  or           s11, zero, a5
358:              srl          s7, t5, s9
359:              srli         ra, s6, 16
                  add          gp, zero, a3
                  and          s10, t6, a4
                  slti         a3, a1, -1084
                  srl          a0, s9, s2
                  xor          t2, ra, t2
                  sra          t2, t5, a0
                  or           s11, a5, a2
                  xor          t4, t2, t5
                  beq          t5, a2, 383f
                  bltu         zero, t0, 370f
370:              add          a6, a6, sp
                  xor          gp, tp, s0
                  auipc        s4, 101026
                  srai         s10, t6, 27
                  bge          a6, a6, 375f
375:              xor          s1, gp, s2
                  bge          t4, t4, 379f
                  add          a3, t1, a4
                  srli         s1, s6, 24
379:              beq          a2, a5, 380f
380:              xor          t2, s11, t6
                  xori         zero, a1, -640
                  bgeu         t6, s5, 389f
383:              bge          t4, t3, 398f
                  sll          s8, s0, s8
                  ori          t2, s5, 260
                  andi         s8, s10, 721
                  sltiu        s5, a3, 1533
                  andi         s11, s7, -1911
389:              bltu         sp, s0, 396f
                  bgeu         gp, a5, 393f
                  sll          s10, a2, t1
                  slli         a7, a6, 11
393:              srai         t3, s4, 31
                  sltu         s0, t4, s1
                  lui          s5, 493939
396:              srl          ra, s3, s6
                  sltu         a3, s0, gp
398:              or           a3, t1, s9
                  sltu         s8, a5, s0
                  srl          s3, a0, s7
                  sra          gp, s9, s5
                  bgeu         a5, t4, 422f
                  ori          t5, s6, -26
                  sub          gp, t3, a2
                  bge          a6, a1, 410f
                  addi         s8, s6, -116
                  or           a4, ra, a3
                  bltu         a0, a7, 411f
                  bgeu         a7, t6, 410f
410:              auipc        s0, 512994
411:              beq          t6, gp, 413f
                  srl          s9, gp, t2
413:              slti         gp, s0, 1543
                  blt          t0, s0, 421f
                  slti         s3, sp, 206
                  sltu         ra, t0, t2
                  and          a7, s5, a3
                  sub          t6, zero, a4
                  xor          s3, s9, s4
                  add          a5, s2, a2
421:              sub          s1, s3, a0
422:              nop
                  auipc        t0, 468911
                  auipc        s7, 889091
                  or           ra, s9, a6
                  sra          s11, s2, sp
                  xor          s1, a1, s10
                  bltu         tp, s2, 431f
                  sltu         s4, a5, s3
                  slt          ra, a0, sp
431:              and          t3, a6, a2
                  bltu         a4, t2, 447f
                  xor          s11, s4, a7
                  blt          tp, s5, 448f
                  sll          a5, a4, s6
                  nop
                  sltu         t2, sp, s11
                  sltu         a7, s0, t0
                  sra          zero, s4, s6
                  bge          t5, s5, 443f
                  slt          a7, t2, s8
                  sub          a5, a1, a6
443:              bne          gp, sp, 455f
                  sltiu        sp, t2, 1691
                  beq          a3, gp, 459f
                  srai         gp, a2, 6
447:              sra          tp, s6, a2
448:              bgeu         a4, t3, 454f
                  slt          a0, ra, a4
                  nop
                  beq          t3, a4, 452f
452:              and          s8, a7, s10
                  blt          a0, s4, 454f
454:              andi         s3, s7, -1196
455:              sub          a6, s2, a4
                  bgeu         s5, s9, 457f
457:              bne          s2, a0, 468f
                  sub          a3, s3, gp
459:              bltu         t0, t3, 462f
                  slt          s7, tp, a5
                  sltu         ra, s11, t0
462:              blt          a6, t1, 468f
                  lui          s7, 997419
                  addi         a7, s8, 719
                  sll          s8, a6, s0
                  sub          a0, t2, a3
                  slti         ra, a6, -1292
468:              slli         s0, a1, 10
                  sra          a7, a5, s4
                  xori         s1, tp, 839
                  nop
                  nop
                  srli         t5, s6, 16
                  bne          a4, s2, 478f
                  slt          s4, t3, s10
                  ori          t2, a2, -242
                  bge          a7, t4, 492f
478:              and          t4, s4, s1
                  srl          a4, s3, s3
                  srli         a4, t6, 29
                  bltu         ra, t6, 492f
                  addi         s10, s3, -1725
                  nop
                  xor          zero, s3, sp
                  andi         t4, a3, 1232
                  and          t1, s6, t2
                  bge          t0, t4, 501f
                  sltu         a3, s11, a1
                  slli         ra, t0, 1
                  auipc        s7, 714249
                  or           s1, s10, s10
492:              and          a7, s5, s8
                  xori         a7, t5, -658
                  or           s8, s11, sp
                  sll          a6, s9, t3
                  sltiu        a1, s9, -31
                  xori         s5, t0, -1127
                  andi         s8, s9, -594
                  nop
                  add          s5, s1, s4
501:              srli         s5, t2, 24
                  bge          s8, s2, 519f
                  sltu         s8, t2, t0
                  sltu         t6, t6, a2
                  addi         s10, t3, 1019
                  and          s5, s7, s1
                  bge          a5, a0, 510f
                  beq          tp, a5, 511f
                  bne          s1, t5, 516f
510:              sub          tp, s2, s8
511:              bltu         zero, a6, 522f
                  auipc        a7, 877142
                  bltu         t6, tp, 514f
514:              srli         s5, s8, 30
                  slli         t5, a1, 24
516:              blt          s0, s10, 518f
                  sub          s1, a1, a5
518:              sub          s7, a5, t5
519:              sra          ra, s11, tp
                  slli         a4, t5, 8
                  sll          s9, a4, s8
522:              auipc        t5, 31258
                  blt          s7, a6, 538f
                  or           t6, a2, a6
                  nop
                  or           a0, t5, s7
                  and          t4, t2, s10
                  add          a4, tp, s1
                  nop
                  and          t4, a6, s0
                  srli         s9, t6, 6
                  blt          a2, s3, 546f
                  xor          a5, a3, zero
                  slti         t0, s9, 362
                  or           tp, t0, t5
                  sll          t0, a6, t0
                  sltu         s4, a7, ra
538:              slt          a0, s8, t5
                  srl          t5, s9, t4
                  lui          s5, 592377
                  srai         s11, a6, 23
                  lui          s4, 1015515
                  slt          a1, a7, tp
                  addi         s1, zero, 503
                  blt          s8, a2, 546f
546:              srli         a4, a3, 24
                  beq          s2, t2, 562f
                  slti         t3, t2, -906
                  slti         t6, t2, -1678
                  sltiu        s9, s2, 473
                  andi         s1, ra, -834
                  beq          s5, sp, 553f
553:              lui          a0, 914991
                  sra          t0, s5, s9
                  sll          t1, t4, t2
                  auipc        s9, 507439
                  srai         a6, t0, 9
                  xor          gp, t5, s5
                  srai         ra, t4, 29
                  slt          s7, s7, s11
                  bltu         a6, s1, 572f
562:              or           s8, tp, a6
                  sra          sp, s4, ra
                  auipc        t1, 435618
                  nop
                  andi         a0, s3, 1942
                  srli         a4, ra, 19
                  andi         t5, t0, -1949
                  lui          t1, 675494
                  srl          s0, t6, zero
                  slti         a5, tp, -1629
572:              xor          tp, t0, s10
                  slli         t5, s9, 11
                  lui          a3, 853918
                  andi         t0, zero, -1465
                  auipc        tp, 536129
                  blt          s8, tp, 583f
                  bgeu         t0, ra, 585f
                  and          s1, t0, t6
                  beq          a6, s1, 597f
                  blt          s9, s8, 584f
                  sll          t6, t6, a3
583:              ori          gp, t1, -1500
584:              or           s7, t2, a2
585:              and          t4, s7, t3
                  srl          s7, gp, a1
                  sub          a6, s9, a7
                  bne          s5, tp, 593f
                  xori         a4, s4, 184
                  sra          s7, s8, s0
                  bgeu         s1, a0, 603f
                  or           a5, tp, s2
593:              add          s0, t0, s8
                  xori         t4, a0, 253
                  addi         t1, s6, -848
                  auipc        a0, 232358
597:              bge          t1, t2, 600f
                  addi         a7, zero, -26
                  auipc        a5, 645895
600:              bltu         s9, tp, 601f
601:              blt          a2, t3, 608f
                  auipc        t4, 994890
603:              andi         t2, s11, 1338
                  slt          t0, s4, t2
                  blt          a0, t0, 619f
                  auipc        sp, 792774
                  bge          zero, a6, 610f
608:              bne          s0, s4, 609f
609:              ori          t6, s6, 525
610:              xori         s5, s7, -2034
                  and          s1, t6, a2
                  auipc        s0, 239766
                  sra          a4, s7, a5
                  srli         t6, s6, 28
                  bge          s3, t4, 629f
                  srai         s7, gp, 11
                  addi         a1, a3, -815
                  lui          t6, 693581
619:              andi         a0, a0, -1670
                  nop
                  lui          t3, 635626
                  beq          s2, t0, 628f
                  sltu         a7, a5, tp
                  sra          tp, a4, zero
                  ori          s10, a1, 113
                  bge          tp, s5, 641f
                  and          s3, s9, a1
628:              auipc        s10, 237557
629:              sltu         s4, t4, t6
                  xor          s8, s10, s1
                  sub          s4, t5, a1
                  addi         a6, zero, -1639
                  and          a1, t4, t4
                  sltu         t3, s10, a7
                  andi         s10, s8, -1410
                  nop
                  beq          s7, s0, 641f
                  bltu         t4, ra, 641f
                  xor          s7, sp, zero
                  xor          s10, s1, t3
641:              ori          t0, a5, 998
                  xor          a3, s10, t6
                  nop
                  bne          s0, a5, 664f
                  or           zero, s4, a5
                  add          s10, t2, s8
                  or           t2, s3, a6
                  blt          t3, ra, 651f
                  sub          a5, s1, tp
                  srai         a5, s11, 14
651:              sltiu        s3, s6, -1035
                  sub          s10, s5, t2
                  add          a5, s2, a2
                  sll          sp, a0, s1
                  addi         a1, a2, -1426
                  la           a7, region_1+1394 #start riscv_load_store_rand_instr_stream_11
                  nop
                  nop
                  addi         t0, s4, 1710
                  or           s11, t1, a1
                  sll          t1, a5, a7
                  xori         ra, s0, -1652
                  lb           t6, -1052(a7)
                  sb           t0, 91(a7)
                  sb           t1, -483(a7)
                  sb           s6, -190(a7)
                  lh           gp, 538(a7)
                  lhu          a5, -1048(a7)
                  lhu          s7, 448(a7)
                  add          t0, s5, s7
                  lbu          a1, 187(a7)
                  auipc        s11, 27792
                  srl          s7, s5, s11
                  lbu          a1, 462(a7)
                  nop
                  lbu          t6, -500(a7)
                  xori         s10, t2, 570
                  lbu          s11, -1329(a7)
                  sra          sp, tp, s9
                  lw           a5, -1222(a7)
                  nop
                  slli         s7, s0, 15
                  lhu          t5, 318(a7)
                  lbu          t5, -771(a7)
                  ori          s11, s0, 1654
                  lbu          a0, -197(a7)
                  sub          a6, s0, s11
                  xor          t4, a6, a1
                  xori         a0, a0, 309
                  lb           s9, -1031(a7)
                  lbu          a1, -1099(a7)
                  lbu          a5, -350(a7) #end riscv_load_store_rand_instr_stream_11
                  slli         s11, s5, 20
                  bgeu         a7, a4, 660f
                  blt          t1, a3, 672f
                  srli         t0, a4, 0
660:              slt          t5, a6, t5
                  add          zero, s0, s9
                  beq          gp, s7, 669f
                  lui          ra, 329252
664:              xori         s7, tp, -300
                  lui          a7, 498429
                  slti         s7, s11, -285
                  slti         s11, sp, 493
                  slti         a5, a1, -552
669:              nop
                  srli         s7, s0, 26
                  bge          s3, s7, 672f
672:              or           t0, ra, gp
                  bne          a1, tp, 688f
                  sltu         a6, t4, s9
                  bge          s8, sp, 677f
                  slt          ra, t1, zero
677:              srli         s4, t0, 15
                  auipc        t4, 66413
                  slt          zero, a2, s5
                  or           zero, s7, s9
                  beq          s11, t5, 684f
                  srai         s7, a5, 10
                  sub          a3, a1, s3
684:              bge          t2, t6, 687f
                  srai         tp, t4, 25
                  beq          t1, a2, 692f
687:              nop
688:              auipc        a1, 882970
                  bne          t4, a5, 709f
                  sra          a6, t3, a0
                  add          s5, a0, s9
692:              blt          s6, s10, 703f
                  addi         t1, t6, 381
                  sra          sp, t0, s10
                  bgeu         t6, gp, 709f
                  xor          t2, s2, s1
                  xori         a7, t4, 1894
                  bgeu         s8, t6, 713f
                  auipc        a4, 62943
                  slti         t3, a3, -1890
                  slli         t5, s8, 0
                  beq          a7, s6, 708f
703:              bgeu         sp, s1, 706f
                  bne          t1, s10, 705f
705:              slt          a7, s10, t4
706:              andi         t0, s9, -659
                  srli         t1, sp, 15
708:              sltiu        t0, s6, -1772
709:              bge          a1, t0, 710f
710:              bne          gp, t6, 722f
                  and          t0, a7, s4
                  or           t3, s6, t0
713:              nop
                  sub          s4, t5, s3
                  bgeu         a4, s9, 732f
                  bne          ra, s11, 721f
                  or           a7, s0, zero
                  bge          t6, t6, 729f
                  srl          s7, tp, s11
                  la           s9, sub_2
                  srai         s3, s6, 12
                  slti         t2, tp, -1824
                  lui          t6, 723514
                  xori         s4, s1, 1160
                  or           t0, sp, s7
                  ori          a0, t5, 1291
                  addi         s9, s9, 792
                  bltu         s10, s0, main_j1 #branch to jump instr
                  slli         a4, s10, 25
                  sll          s5, s5, s2
main_j1:          jalr         t1, s9, -792 #jump main -> sub_2
                  bltu         gp, a4, 727f
721:              srli         s4, a5, 6
722:              slli         sp, a5, 25
                  and          s5, s6, t4
                  slti         t1, s0, 1697
                  add          ra, s2, t0
                  nop
727:              slli         zero, a5, 10
                  bgeu         t1, s4, 743f
729:              slt          zero, gp, a1
                  srl          t6, tp, s8
                  lui          sp, 681533
732:              sll          a3, t6, s4
                  bne          a1, a0, 734f
734:              addi         s3, gp, -1125
                  sub          a0, s5, a0
                  ori          t6, s3, 1664
                  auipc        a3, 440335
                  sltu         zero, t3, a0
                  ori          s9, t6, 160
                  beq          a0, a4, 754f
                  xor          a7, t2, s2
                  slti         s5, t4, -152
743:              bgeu         t5, s3, 746f
                  andi         s0, s1, 107
                  nop
746:              sltu         a5, s2, t4
                  slt          tp, s10, a5
                  xor          tp, a2, s5
                  sub          s10, s9, t5
                  andi         a5, s4, 1731
                  blt          a3, s11, 754f
                  bltu         t5, sp, 756f
                  sub          s9, a2, s4
754:              auipc        a7, 21762
                  slli         s9, s5, 29
756:              bltu         zero, t3, 763f
                  add          a0, a2, t4
                  add          a4, sp, a0
                  bgeu         s3, a4, 760f
760:              blt          t3, zero, 763f
                  bgeu         t3, sp, 781f
                  add          t0, t6, t1
763:              slti         t1, s10, 974
                  or           s0, s4, s5
                  ori          tp, t2, 482
                  srli         a6, s7, 13
                  add          a6, a7, s6
                  bgeu         t0, t5, 769f
769:              lui          s11, 631273
                  bne          a7, a2, 784f
                  slli         s7, s6, 26
                  slli         s3, s10, 6
                  or           tp, s4, a6
                  ori          tp, a7, 744
                  bltu         s4, t3, 782f
                  ori          tp, t0, -631
                  sll          a5, a4, t4
                  srai         s7, t3, 0
                  andi         a1, t3, 987
                  sra          s7, tp, t3
781:              auipc        gp, 912599
782:              beq          t0, t4, 797f
                  slt          a5, s9, t1
784:              slli         t2, s3, 25
                  auipc        s8, 864675
                  bne          s8, a0, 789f
                  xori         s4, t3, -992
                  blt          zero, a5, 791f
789:              sub          t0, zero, sp
                  addi         s5, s1, 788
791:              auipc        s8, 615312
                  srl          s3, t0, s9
                  ori          t6, s8, -1234
                  sltu         a5, s2, t0
                  sltiu        t6, t5, -606
                  sll          sp, a7, ra
797:              ori          s10, s7, -1551
                  slt          sp, s8, s5
                  nop
                  xor          a4, s0, s5
                  sll          a7, t6, s7
                  bne          s1, zero, 804f
                  srl          zero, t0, t4
804:              slti         t4, s7, 1760
                  auipc        a1, 732442
                  sltu         ra, a1, t6
                  slli         tp, a4, 13
                  srli         t4, s10, 22
                  bge          s3, a5, 820f
                  xor          t5, s10, zero
                  srli         s0, a3, 1
                  slti         t1, a7, -835
                  xori         s11, s2, 490
                  bgeu         tp, zero, 820f
                  nop
                  nop
                  sub          t3, s8, a7
                  sltu         a0, a4, s9
                  sub          zero, sp, s2
820:              sll          s10, a5, a1
                  beq          s10, a0, 833f
                  andi         s11, t2, 54
                  bgeu         a1, a3, 828f
                  nop
                  lui          a5, 244930
                  beq          s2, t6, 833f
                  bltu         t1, t2, 828f
828:              sub          t5, t5, t1
                  xor          tp, s5, s10
                  andi         s0, t2, 774
                  andi         a1, s2, -1213
                  bge          a2, t6, 836f
833:              xori         a1, zero, 455
                  add          t4, t4, a0
                  ori          s10, s2, 1062
836:              add          s0, zero, t5
                  lui          s0, 197072
                  lui          a6, 945089
                  addi         a5, s0, -712
                  sub          tp, s6, t3
                  beq          s3, s2, 844f
                  srai         t4, a3, 6
                  and          a6, s8, a1
844:              auipc        a4, 327745
                  sra          a4, gp, s10
                  bne          a6, a4, 863f
                  bltu         a6, s5, 848f
848:              sra          s0, t5, a5
                  xor          s3, sp, s10
                  srl          a7, t3, tp
                  slt          t5, sp, a5
                  srai         s5, s5, 15
                  bgeu         t6, t0, 864f
                  ori          a6, a3, -2018
                  sltu         t0, t5, a4
                  sll          s10, t1, a6
                  sll          s1, a3, t4
                  bltu         tp, s11, 859f
859:              sll          a4, s9, t1
                  bgeu         s9, t5, 875f
                  xor          a5, s3, s9
                  xor          ra, t6, a1
863:              slli         ra, a1, 4
864:              sra          t4, sp, a2
                  slli         a3, a7, 5
                  blt          s2, gp, 873f
                  add          a1, t5, a2
                  nop
                  lui          a1, 126090
                  srli         tp, s11, 18
                  bgeu         sp, a5, 872f
872:              add          s4, tp, s7
873:              beq          gp, t2, 879f
                  or           t1, a7, a6
875:              or           sp, tp, t5
                  sub          s11, s6, s5
                  or           s10, s0, s10
                  auipc        s9, 109423
879:              and          a5, gp, s9
                  slti         t1, t1, 513
                  lui          gp, 516901
                  bge          t4, tp, 896f
                  bltu         zero, a0, 897f
                  slli         a3, a5, 11
                  andi         s4, s1, -722
                  blt          a3, s3, 889f
                  sub          t0, a6, a6
                  andi         s3, s11, 1277
889:              bltu         s1, t2, 904f
                  slli         a1, s5, 11
                  add          t5, t6, s6
                  xor          t2, s1, s1
                  ori          s7, s0, 1493
                  bge          t0, s10, 897f
                  bne          t5, a6, 902f
896:              slt          s10, s1, sp
897:              blt          a1, s3, 912f
                  sll          s4, a3, a2
                  lui          s9, 58003
                  and          a7, s2, s10
                  bne          ra, t3, 908f
902:              sra          s0, a2, a5
                  bne          s7, tp, 914f
904:              or           s1, s2, t1
                  xor          s9, t2, s1
                  slt          t1, t3, a6
                  auipc        s3, 121250
908:              srli         t5, a2, 5
                  xori         tp, s9, -825
                  nop
                  lui          s3, 973146
912:              srai         t2, a1, 24
                  addi         s11, s5, -1006
914:              lui          s3, 506150
                  andi         tp, s5, 914
                  sltu         a6, a5, t0
                  xor          s3, s6, gp
                  sltiu        s1, a0, 1315
                  srl          s11, t3, t2
                  beq          ra, s1, 934f
                  bge          s9, s7, 935f
                  sra          t0, a2, ra
                  srl          s5, s4, s1
                  slli         s5, gp, 27
                  sltu         t3, s3, t3
                  slli         s9, s10, 10
                  and          s1, t5, tp
                  bge          a7, s6, 931f
                  srli         t5, t5, 14
                  slli         s11, ra, 30
931:              beq          ra, sp, 934f
                  bgeu         t0, a6, 933f
933:              nop
934:              sltiu        t5, s1, 702
935:              blt          ra, t3, 938f
                  blt          s8, t2, 939f
                  andi         gp, t6, -18
938:              or           t0, ra, tp
939:              sltu         s7, s1, s4
                  add          t6, ra, a4
                  slli         s1, a4, 10
                  ori          sp, a5, -842
                  bge          a7, t5, 954f
                  addi         a5, a6, 1038
                  sll          a1, a0, tp
                  bltu         t1, s4, 963f
                  sltiu        t3, s0, 222
                  srai         sp, t1, 29
                  sra          tp, a4, a3
                  auipc        s7, 730947
                  sll          sp, s5, s0
                  bltu         gp, t3, 957f
                  srl          ra, t0, t4
954:              slt          s1, s8, a6
                  srli         gp, a3, 1
                  bne          sp, tp, 962f
957:              add          s3, s3, t2
                  or           s5, a5, s0
                  or           a3, s7, a3
                  andi         s10, a3, 1899
                  srl          t5, a5, t4
962:              slti         s0, t1, -161
963:              or           tp, a5, s4
                  srl          s5, a1, s7
                  sltu         t4, a3, a4
                  sra          s3, s6, t4
                  addi         a5, s1, -175
                  sll          t6, t3, t5
                  addi         s3, t4, 271
                  srli         t1, a2, 12
                  ori          tp, zero, -1168
                  srai         gp, t5, 13
                  sll          a0, zero, a3
                  nop
                  auipc        ra, 416436
                  srl          a6, a6, s6
                  add          a4, s5, s6
                  bne          s5, a6, 998f
                  or           s10, s0, t2
                  slt          t0, s5, t5
                  xori         tp, s0, -1718
                  auipc        s10, 310997
                  xor          t6, s1, s6
                  srli         t5, a3, 15
                  add          t5, s8, t2
                  sltiu        a3, ra, -606
                  lui          t0, 1015198
                  beq          s11, s4, 995f
                  or           s9, s2, s1
                  or           s10, a2, a4
                  bne          t3, t5, 1003f
                  bgeu         s2, s4, 993f
993:              bne          s4, t4, 994f
994:              or           sp, s0, zero
995:              sll          s11, s4, s6
                  addi         sp, t2, -1773
                  andi         zero, a1, -1059
998:              andi         s10, s4, 308
                  addi         a7, s8, -1401
                  srli         s3, ra, 7
                  bge          zero, s3, 1004f
                  xor          sp, s2, s6
1003:             blt          s6, s4, 1006f
1004:             nop
                  xori         t6, a1, 1412
1006:             slli         ra, t3, 4
                  slti         gp, zero, -1685
                  la           sp, region_1+348 #start riscv_load_store_rand_instr_stream_1
                  andi         s3, t4, -552
                  addi         t3, a2, 1677
                  sb           s10, 1571(sp)
                  sb           t0, 1471(sp)
                  srl          s7, t3, a2
                  slti         s1, s3, 435
                  lb           t0, -211(sp)
                  srli         a1, a0, 31
                  nop
                  sh           t6, 118(sp)
                  addi         s5, tp, 242
                  lb           a3, 1018(sp)
                  or           t1, s6, s6
                  addi         s9, s2, 1696
                  sb           t4, -57(sp)
                  lbu          s4, 179(sp)
                  sltiu        t2, t1, -1950
                  srai         a7, a5, 28
                  auipc        tp, 923315
                  sll          s10, a5, a7
                  addi         t4, t6, -1046
                  sh           s9, 952(sp)
                  lh           s10, -272(sp)
                  sub          s10, t3, tp
                  lbu          s7, 1123(sp)
                  add          t5, t4, s8
                  lb           t3, -210(sp)
                  and          ra, zero, s1
                  sltiu        s4, t3, -969
                  sub          t3, gp, a4
                  sll          t2, a6, s6
                  sb           s5, 1404(sp)
                  nop
                  nop
                  lw           s4, 1488(sp)
                  slti         tp, s1, 725
                  sh           s11, 618(sp)
                  andi         s5, a2, 344
                  sb           s7, 395(sp)
                  sh           t1, -40(sp)
                  andi         s8, ra, -1607
                  srli         tp, t2, 13
                  sb           ra, -278(sp)
                  srai         gp, s3, 31
                  or           t3, s10, a6
                  lbu          a1, 595(sp) #end riscv_load_store_rand_instr_stream_1
                  srli         t0, sp, 16
                  addi         t2, s0, 288
                  srli         s0, t5, 23
                  srai         t6, s11, 15
                  or           t6, s1, s7
                  auipc        s0, 836794
                  bge          t5, t2, 1029f
                  sll          t4, t1, s8
                  nop
                  beq          sp, tp, 1018f
1018:             sub          t6, t4, t2
                  ori          t2, t0, -1558
                  xor          ra, s9, sp
                  lui          t2, 752492
                  and          s5, s2, zero
                  auipc        t3, 565749
                  bge          t2, a5, 1025f
1025:             addi         s1, s7, -1153
                  beq          s10, a0, 1032f
                  lui          a1, 786142
                  sltiu        tp, s3, -1286
1029:             slti         s1, a5, -583
                  ori          a6, t6, 1128
                  sub          a1, zero, t1
1032:             or           a0, t3, t5
                  or           s10, t0, a6
                  auipc        s5, 824225
                  slt          sp, s5, s5
                  sll          gp, s9, s8
                  sll          a3, s10, a1
                  bgeu         s1, a5, 1042f
                  ori          s0, a1, 174
                  andi         s3, s6, 484
                  sltu         s11, t0, zero
1042:             sltu         s5, t4, t4
                  xori         s1, s9, 1226
                  and          s3, s6, s6
                  bge          s1, s8, 1060f
                  and          t3, s9, zero
                  bge          t4, t2, 1061f
                  or           t2, t0, s4
                  lui          t4, 375962
                  bltu         a5, ra, 1052f
                  sltu         zero, s11, s0
1052:             sll          t5, t6, t6
                  srai         s3, s8, 16
                  bltu         t1, s0, 1069f
                  sltiu        t3, s6, -1416
                  srl          s9, s7, ra
                  or           a0, s0, t4
                  xori         s0, a7, 213
                  sll          s5, s3, s8
1060:             beq          a1, t4, 1077f
1061:             lui          t4, 620396
                  lui          s8, 497957
                  andi         t2, sp, -1885
                  sll          tp, s3, a0
                  slli         a5, t3, 17
                  bgeu         s4, a5, 1081f
                  bgeu         s0, a3, 1081f
                  srai         s7, t0, 31
1069:             sltiu        a3, a2, -1670
                  slt          s3, zero, ra
                  sra          t2, s1, ra
                  ori          a5, s5, 497
                  srli         s5, t1, 11
                  srl          zero, s3, s8
                  slli         a3, t2, 23
                  bgeu         sp, s7, 1079f
1077:             sltu         a3, a2, s2
                  slti         s4, t3, -976
1079:             xori         zero, s5, 1468
                  bne          t2, s8, 1081f
1081:             sltiu        t1, a5, -1291
                  srli         zero, s9, 31
                  sra          t6, t4, a5
                  bltu         t0, s10, 1087f
                  ori          s11, s1, -2048
                  sltiu        a6, a2, 1199
1087:             xor          s10, t2, t0
                  nop
                  blt          a4, zero, 1095f
                  sltiu        s8, tp, 840
                  bge          s8, a5, 1102f
                  srli         a7, gp, 21
                  sub          s3, s7, s5
                  or           s0, ra, t6
1095:             bgeu         a7, t0, 1107f
                  bge          t1, t3, 1107f
                  bgeu         a2, a1, 1111f
                  sltiu        s5, zero, 1055
                  or           a7, t3, t1
                  bge          t3, t6, 1101f
1101:             bgeu         t2, t1, 1104f
1102:             slt          s9, s2, a3
                  and          s1, t2, a6
1104:             andi         a7, t0, 1686
                  bge          t0, a7, 1112f
                  bgeu         t3, s10, 1109f
1107:             addi         t2, t2, -1132
                  nop
1109:             beq          s8, a3, 1123f
                  sub          s3, sp, a1
1111:             slti         a1, a2, -471
1112:             or           t0, zero, s4
                  xori         ra, sp, 1274
                  sltiu        tp, t6, -68
                  sub          a7, s1, t3
                  bne          sp, a1, 1131f
                  sltu         t1, s3, s0
                  srli         t4, ra, 13
                  sltiu        a3, s8, 1437
                  andi         s8, s11, -855
                  sub          a3, a5, a5
                  bgeu         s6, a2, 1123f
1123:             blt          zero, s7, 1126f
                  sub          a0, t6, sp
                  sub          tp, s0, zero
1126:             sub          t2, a1, t1
                  bltu         s7, zero, 1130f
                  bltu         s0, t4, 1135f
                  lui          t1, 277997
1130:             bltu         s11, a7, 1132f
1131:             slt          t2, t0, s5
1132:             xori         ra, tp, -900
                  sub          s3, t1, a7
                  xori         t2, s9, -1623
1135:             lui          s3, 848870
                  andi         t1, a1, 453
                  addi         s11, tp, -379
                  slt          zero, ra, s11
                  srli         s1, t4, 29
                  sltiu        t1, a5, -856
                  srli         t5, a5, 27
                  srli         s8, gp, 17
                  beq          a6, s0, 1144f
1144:             sll          a3, s0, a1
                  sra          s8, s2, t6
                  bgeu         ra, gp, 1147f
1147:             srai         t3, s7, 1
                  blt          a6, t6, 1155f
                  bne          s4, t0, 1154f
                  beq          zero, a7, 1156f
                  lui          zero, 165158
                  slti         zero, s3, 1717
                  and          s3, gp, s10
1154:             sra          a5, zero, s10
1155:             sub          t1, gp, a3
1156:             srai         s11, a3, 31
                  bge          t1, a4, 1177f
                  nop
                  auipc        s11, 680379
                  sub          a7, a3, t6
                  xor          s9, ra, a6
                  srli         a3, s10, 22
                  srli         t6, t3, 4
                  srli         s7, zero, 2
                  xor          a7, a0, a0
                  slli         gp, tp, 6
                  ori          a3, s2, -58
                  nop
                  blt          sp, a7, 1173f
                  ori          t4, s3, 1436
                  slti         a7, t5, 2014
                  sll          s10, zero, s5
1173:             beq          s7, t6, 1176f
                  ori          s10, s0, 1675
                  xori         a0, s9, -1371
1176:             or           s0, a2, tp
1177:             andi         s8, a0, 822
                  ori          s11, s1, 995
                  blt          t4, a7, 1182f
                  bltu         gp, s3, 1200f
                  slli         t4, s8, 15
1182:             slti         t3, s7, 205
                  or           t5, a2, t2
                  srli         a1, sp, 20
                  beq          s1, s2, 1200f
                  ori          t0, s9, -5
                  bne          a3, t4, 1188f
1188:             or           s4, t3, s11
                  beq          t2, tp, 1201f
                  blt          t1, gp, 1191f
1191:             srli         t4, a5, 10
                  bge          a4, a0, 1199f
                  bne          t5, a7, 1204f
                  bge          a5, s9, 1209f
                  sra          t1, t5, a2
                  slli         a5, s8, 28
                  ori          t5, t2, -241
                  srl          sp, sp, s0
1199:             bne          a3, t0, 1206f
1200:             beq          a2, sp, 1207f
1201:             sltu         a7, t0, s11
                  xor          s5, a2, t5
                  or           s0, t3, s10
1204:             bgeu         s9, s8, 1221f
                  sub          gp, a0, t4
1206:             and          s8, a4, gp
1207:             nop
                  bgeu         a5, s8, 1223f
1209:             sll          t4, s9, s9
                  sltu         t0, s4, s3
                  bltu         a4, s4, 1213f
                  bne          s0, s7, 1213f
1213:             bne          s7, s2, 1214f
1214:             add          s9, s6, t1
                  sll          zero, s3, ra
                  srai         s8, s4, 3
                  addi         a7, s11, 1996
                  lui          t2, 196517
                  addi         a6, t2, 401
                  sub          s8, tp, a3
1221:             sltu         t0, s5, s3
                  or           gp, a0, s10
1223:             sub          gp, ra, t5
                  sub          s1, s7, a1
                  sltu         s8, a5, t2
                  sltiu        gp, t2, -1732
                  beq          a3, s9, 1230f
                  sll          t4, s1, a2
                  andi         t5, s9, 1772
1230:             addi         t0, s1, 816
                  bne          ra, s3, 1235f
                  addi         a4, a4, 939
                  srli         t6, gp, 6
                  xor          a0, a7, s10
1235:             auipc        t1, 571971
                  sra          ra, t2, s3
                  bne          s11, sp, 1243f
                  xor          t4, zero, t5
                  bgeu         a0, s9, 1250f
                  and          a7, gp, ra
                  bge          a5, s5, 1255f
                  and          s9, a2, a5
1243:             ori          zero, sp, 1387
                  beq          zero, t3, 1247f
                  srl          a0, s1, s6
                  sltiu        s0, s0, -1767
1247:             sltu         s0, t4, s11
                  slti         a6, s9, -69
                  srli         a7, a0, 20
1250:             slt          a5, s6, a5
                  srli         a4, s3, 26
                  auipc        a0, 632320
                  lui          s8, 822190
                  bne          t1, gp, 1268f
1255:             ori          s8, a3, 1720
                  srl          ra, s10, s0
                  srai         s4, gp, 3
                  slt          s4, s2, sp
                  bge          s5, gp, 1265f
                  auipc        zero, 227808
                  lui          s9, 802538
                  srli         s4, s1, 13
                  xori         s7, s5, -759
                  addi         s1, a5, 1902
1265:             sub          t4, s2, ra
                  sra          s7, ra, gp
                  beq          a3, t2, 1270f
1268:             sub          ra, s8, s5
                  xor          s8, s7, t5
1270:             sub          gp, zero, tp
                  ori          s9, s0, 265
                  xori         t5, t6, -899
                  sub          s10, s3, t0
                  srl          tp, s7, s1
                  xor          t3, sp, a0
                  addi         s1, s3, -1144
                  bge          a4, s7, 1282f
                  srai         t0, gp, 0
                  lui          t5, 775525
                  srai         t5, s8, 7
                  beq          s6, t2, 1284f
1282:             bne          s11, s8, 1296f
                  srl          s9, gp, s7
1284:             ori          s0, tp, -1571
                  addi         t6, t3, -1609
                  lui          s1, 232525
                  andi         s9, s11, -62
                  slt          zero, tp, a5
                  srli         a4, s5, 6
                  srai         gp, sp, 12
                  bgeu         s10, s3, 1292f
1292:             bge          s5, s4, 1299f
                  addi         zero, t3, 195
                  or           tp, t5, a2
                  beq          s6, a6, 1301f
1296:             lui          gp, 1032967
                  ori          s11, t4, 565
                  srl          s9, a6, s8
1299:             auipc        tp, 536209
                  srai         a6, s0, 11
1301:             slli         a3, t5, 4
                  auipc        a1, 1024728
                  andi         s11, zero, 193
                  srli         a4, a0, 11
                  blt          s8, t5, 1317f
                  srai         t4, a3, 25
                  blt          t5, a5, 1311f
                  xor          s11, a2, a5
                  add          t5, s3, a0
                  sltu         s9, a2, t6
1311:             sltiu        a6, a2, 1701
                  beq          s5, gp, 1315f
                  sltu         s11, s6, a6
                  srai         a6, t0, 31
1315:             bge          a6, a3, 1318f
                  blt          a1, a7, 1319f
                  srli         t0, s0, 16
                  la           t6, sub_1
                  addi         t6, t6, -54
                  lui          sp, 30580
                  sub          t2, s5, ra
                  lui          t0, 1011809
                  addi         zero, sp, -294
main_j2:          jalr         t1, t6, 55 #jump main -> sub_1
1317:             sub          tp, a5, s3
1318:             xori         s7, a4, 120
1319:             ori          s9, s8, 1382
                  srai         t5, s7, 22
                  addi         t1, s9, 428
                  sltu         s11, gp, s8
                  beq          s6, t1, 1343f
                  sltu         a3, t6, a6
                  srli         a0, sp, 3
                  srli         sp, t5, 9
                  sub          zero, s6, s8
                  lui          a1, 310519
                  lui          tp, 744120
                  bne          t3, gp, 1331f
1331:             nop
                  sra          s8, s0, a4
                  bge          t0, t3, 1336f
                  andi         t5, t1, -82
                  blt          gp, ra, 1338f
1336:             nop
                  andi         sp, tp, 1358
1338:             slt          s9, gp, sp
                  bge          s0, s2, 1340f
1340:             addi         a7, a5, -177
                  andi         zero, zero, 1442
                  nop
1343:             auipc        s0, 861445
                  sub          t6, s3, s4
                  bgeu         tp, s9, 1359f
                  or           t1, s6, a5
                  addi         s4, s0, 839
                  blt          t3, s9, 1355f
                  bge          sp, s11, 1356f
                  srli         ra, ra, 8
                  add          a4, s1, a3
                  sltu         sp, s10, ra
                  sltu         s8, t0, s0
                  and          t3, s3, a3
1355:             srli         a4, s0, 31
1356:             slt          s1, t5, a0
                  srai         s5, s3, 10
                  bltu         t5, s4, 1369f
1359:             add          tp, a7, ra
                  srai         sp, gp, 25
                  bltu         s1, s11, 1375f
                  xori         a0, a0, -582
                  nop
                  sltiu        a5, s3, 2041
                  srli         s5, zero, 16
                  nop
                  sll          s1, s10, t6
                  ori          a5, sp, 42
1369:             blt          t3, a6, 1371f
                  srli         zero, gp, 24
1371:             srai         a1, s7, 18
                  slt          a6, sp, t1
                  beq          s0, s9, 1390f
                  xor          s9, t3, t1
1375:             and          a7, s7, s10
                  and          zero, t0, a6
                  slli         a0, s3, 18
                  add          gp, s0, s10
                  addi         tp, s11, -1267
                  slti         s9, s3, 1073
                  bge          gp, a1, 1384f
                  slli         zero, gp, 24
                  srli         s11, a6, 4
1384:             sll          a6, t0, t1
                  xori         t2, gp, 1828
                  bne          a2, a3, 1401f
                  andi         s5, t6, 1954
                  addi         s11, t2, -471
                  bne          gp, a4, 1403f
1390:             bge          t6, t3, 1391f
1391:             sra          s11, s9, s3
                  add          ra, t4, s1
                  nop
                  beq          s6, t0, 1395f
1395:             add          s3, t3, a1
                  bltu         s4, s1, 1401f
                  bne          a7, tp, 1412f
                  add          s0, s3, s0
                  srli         a0, sp, 19
                  lui          s11, 1036056
1401:             slti         s4, a1, -501
                  bge          a0, a7, 1417f
1403:             beq          t6, sp, 1409f
                  blt          s2, s4, 1405f
1405:             bge          t2, a7, 1416f
                  sll          t1, t5, s5
                  addi         a5, zero, 439
                  srli         a5, a0, 1
1409:             slti         t3, zero, -191
                  slt          t5, zero, t4
                  bne          zero, a4, 1414f
1412:             xor          a4, s1, t1
                  bltu         s5, s11, 1428f
1414:             sra          ra, ra, s10
                  srai         ra, tp, 17
1416:             or           s10, tp, a2
1417:             blt          s1, s4, 1437f
                  and          s4, ra, t1
                  beq          t2, a5, 1434f
                  slt          a0, a7, a5
                  sub          s3, s2, a0
                  blt          a3, s9, 1424f
                  auipc        s0, 26519
1424:             xori         zero, s8, -731
                  auipc        s7, 558920
                  andi         t6, zero, 88
                  addi         a6, s6, 822
1428:             auipc        sp, 531512
                  srai         t1, s5, 13
                  sltiu        zero, t1, -1448
                  srl          s11, s3, s9
                  srli         sp, s5, 7
                  bgeu         s7, a0, 1436f
1434:             auipc        s5, 23889
                  xor          gp, t2, s1
1436:             bge          t4, gp, 1442f
1437:             and          s3, a1, t3
                  slli         t0, tp, 1
                  or           t3, t6, gp
                  lui          zero, 337973
                  andi         s7, s1, 1093
1442:             blt          a4, s0, 1454f
                  beq          s8, a7, 1446f
                  lui          s3, 490278
                  or           t0, a2, sp
1446:             auipc        s9, 1001491
                  sltu         zero, a3, a1
                  nop
                  slti         s3, zero, -1207
                  slt          sp, t4, t5
                  sltiu        t2, zero, -1000
                  and          a0, t0, s2
                  xori         t2, tp, -616
1454:             sra          s7, a7, tp
                  sltiu        tp, a0, -8
                  add          zero, t5, t2
                  srl          zero, s10, s10
                  srai         s10, t5, 23
                  auipc        s8, 859731
                  lui          s0, 804153
                  xor          s8, sp, t5
                  sra          sp, s1, a4
                  sll          a5, t1, s8
                  sltu         s9, gp, a3
                  and          t3, s1, t0
                  srl          t4, zero, t6
                  sltiu        s7, t3, -1036
                  beq          a0, a5, 1485f
                  bgeu         s10, s0, 1472f
                  ori          t3, s2, -1515
                  slt          a6, s11, s4
1472:             nop
                  srl          t2, t3, a2
                  lui          a4, 669442
                  sltiu        a7, tp, -897
                  nop
                  nop
                  sll          a7, s3, t6
                  xor          s11, t1, s10
                  beq          t0, s7, 1485f
                  sll          a3, ra, a0
                  slt          t2, s4, t0
                  sub          zero, tp, t6
                  sll          tp, a5, a3
1485:             addi         t3, t5, 1723
                  sra          s7, a7, tp
                  bgeu         s1, t2, 1488f
1488:             add          s3, tp, s1
                  slli         a1, a6, 17
                  srli         s3, zero, 29
                  xori         t1, a3, 1217
                  add          s10, s4, s11
                  xori         s1, a7, 1516
                  sltiu        t4, a6, -1333
                  or           s1, a3, s1
                  or           t0, s7, s1
                  beq          s4, t6, 1498f
1498:             srli         a1, sp, 11
                  sra          t6, s7, s9
                  sub          s0, t3, a4
                  nop
                  auipc        t3, 1027726
                  add          t2, a0, tp
                  blt          t3, s0, 1511f
                  srai         s5, s0, 27
                  sll          t2, t3, s3
                  auipc        s5, 552851
                  bge          s1, t4, 1515f
                  ori          s4, s5, 646
                  add          s1, a1, s1
1511:             srai         a6, gp, 21
                  andi         a3, ra, -443
                  andi         s3, s1, 557
                  slt          s9, s2, s9
1515:             slti         t2, a2, 1438
                  or           a0, s8, s1
                  slli         s4, s11, 22
                  bltu         t3, s0, 1533f
                  add          a3, t2, s5
                  addi         s9, sp, -1281
                  nop
                  slli         zero, a5, 1
                  ori          s1, s7, -709
                  addi         t6, s1, 1801
                  sltiu        a0, s0, 1377
                  sltu         a1, s10, t2
                  addi         a1, a4, -1340
                  xor          t4, gp, sp
                  auipc        a1, 524570
                  slli         a3, sp, 23
                  xori         ra, t5, -343
                  sra          s0, t0, a1
1533:             lui          s7, 657648
                  auipc        s8, 552378
                  blt          a5, s5, 1541f
                  blt          t5, s6, 1550f
                  sltiu        s0, a2, -1282
                  sltiu        t0, s3, 199
                  bgeu         s8, s3, 1553f
                  bltu         s0, t0, 1543f
1541:             sub          a3, s6, t5
                  addi         gp, t1, 972
1543:             and          a0, s8, sp
                  or           sp, t2, s10
                  lui          s11, 290966
                  addi         s1, s8, 448
                  blt          gp, s9, 1550f
                  add          t3, s0, tp
                  add          s8, a1, s2
1550:             or           t1, sp, s6
                  blt          a6, t6, 1555f
                  auipc        a3, 855425
1553:             lui          a5, 971510
                  sra          s5, a2, a2
1555:             slli         a0, s1, 10
                  slt          s10, s3, s6
                  sub          s4, a2, s1
                  sra          a5, s7, a3
                  sub          s7, s3, a1
                  sltu         s4, a0, t6
                  sll          s10, s4, a5
                  addi         gp, s10, 1691
                  slli         s0, ra, 16
                  slti         a5, s5, -1009
                  slt          sp, s0, t5
                  srl          zero, a0, s0
                  beq          s5, s3, 1578f
                  bge          s3, t2, 1569f
1569:             ori          a7, t5, 1158
                  slti         s3, ra, -109
                  srli         tp, s7, 31
                  sll          a0, t6, t0
                  sltu         a4, s0, a2
                  sll          t5, t3, s8
                  lui          a6, 128055
                  xori         a0, sp, -1783
                  add          a0, t3, t4
1578:             srli         a5, a4, 2
                  add          s4, s9, a0
                  addi         t3, a1, 739
                  bne          t4, s0, 1582f
1582:             andi         sp, t3, -1212
                  srl          s3, t4, a6
                  nop
                  sll          gp, s7, t0
                  addi         a7, a6, -1200
                  bgeu         s8, a1, 1601f
                  auipc        s4, 886013
                  add          t2, a2, a0
                  sltu         a4, t2, s11
                  bgeu         a1, a3, 1592f
1592:             and          zero, s3, a1
                  andi         t0, s11, 153
                  sltiu        s5, t2, 774
                  sll          a7, s7, ra
                  bne          t0, t5, 1603f
                  srl          t0, s3, s10
                  xor          t0, t4, s5
                  ori          t0, s6, 1819
                  srl          a4, s1, s5
1601:             slli         s1, s8, 8
                  nop
1603:             addi         t1, s6, -30
                  lui          ra, 534716
                  xori         gp, s1, 352
                  xor          a6, s9, a0
                  bge          t4, t3, 1618f
                  xori         a0, t4, 1684
                  lui          s1, 623343
                  sll          s5, t6, s6
                  bge          a7, t0, 1616f
                  xori         ra, sp, 769
                  srai         ra, gp, 23
                  beq          a3, gp, 1629f
                  sltiu        t2, zero, 647
1616:             nop
                  blt          t2, s4, 1618f
1618:             blt          s8, s2, 1633f
                  srl          t4, s8, s0
                  ori          s1, s9, -481
                  beq          gp, t1, 1627f
                  addi         s10, s8, 805
                  slt          a4, s7, t0
                  srl          s7, s7, s7
                  or           ra, t1, t2
                  sltu         s7, a0, s1
1627:             slti         s7, s4, -916
                  blt          t2, s2, 1640f
1629:             sra          t0, s7, s1
                  srl          gp, s8, a4
                  blt          t0, s7, 1645f
                  srl          s0, s2, t2
1633:             xor          s10, a5, t3
                  nop
                  andi         s7, gp, 1250
                  srai         a1, a2, 13
                  slt          sp, a0, ra
                  lui          sp, 163772
                  auipc        s0, 362567
1640:             beq          a4, t4, 1641f
1641:             sltu         a6, t5, s2
                  and          s7, s1, a4
                  bltu         zero, gp, 1650f
                  srli         s5, t0, 27
1645:             sub          t2, gp, a0
                  sll          s8, s2, sp
                  add          t2, s4, zero
                  bgeu         t1, s8, 1651f
                  lui          a0, 653668
1650:             or           s8, t1, t4
1651:             auipc        t2, 250547
                  auipc        s0, 965429
                  lui          a5, 33531
                  xori         a0, sp, -116
                  lui          s11, 1006818
                  srl          s3, s7, s7
                  sltiu        s4, t2, -1397
                  sra          zero, a4, t3
                  sra          zero, zero, a4
                  bltu         a7, sp, 1674f
                  bge          a0, a0, 1672f
                  bltu         t1, a1, 1663f
1663:             xori         s4, s1, 1833
                  bge          a0, sp, 1670f
                  bgeu         tp, a5, 1680f
                  addi         s11, tp, 469
                  srl          s10, s3, s7
                  beq          t1, a6, 1671f
                  blt          gp, gp, 1670f
1670:             bltu         zero, t2, 1673f
1671:             bltu         s4, a6, 1685f
1672:             sll          t0, a2, t0
1673:             xor          s0, s1, tp
1674:             or           t6, s1, ra
                  bltu         a3, s6, 1678f
                  bge          t1, tp, 1677f
1677:             xori         s4, a3, -1892
1678:             auipc        gp, 277583
                  xor          gp, a7, a6
1680:             bgeu         t6, s7, 1684f
                  blt          a2, s9, 1688f
                  beq          s11, s2, 1685f
                  slt          tp, s9, tp
1684:             or           s10, a5, s6
1685:             srli         s1, t4, 16
                  slli         s5, s1, 29
                  srl          s7, sp, a4
1688:             and          s10, s7, s0
                  bne          a1, t3, 1696f
                  sltu         a3, t0, t2
                  or           s5, a5, s8
                  bgeu         a5, s4, 1703f
                  lui          t6, 994458
                  sll          a3, a3, a4
                  srli         s3, t4, 11
1696:             add          t2, s6, s2
                  bge          t0, t1, 1700f
                  xori         ra, a7, -84
                  nop
1700:             sra          a4, ra, s10
                  sub          t0, a3, zero
                  slt          a4, a0, s2
1703:             or           a1, a3, s8
                  nop
                  sltiu        zero, ra, 1112
                  bgeu         s6, a4, 1723f
                  nop
                  addi         s8, s10, 63
                  bltu         t2, a6, 1729f
                  nop
                  sltiu        t3, zero, -754
                  addi         t3, a6, -945
                  sra          s1, t4, zero
                  sltiu        a6, s4, 816
                  sltu         a5, t2, t2
                  slli         s11, a1, 12
                  andi         a0, zero, -1485
                  slli         gp, t5, 21
                  sll          s0, s8, s2
                  xori         s8, s6, 57
                  beq          s6, s4, 1723f
                  slti         a6, gp, -56
1723:             or           zero, s10, a3
                  xori         a0, t3, 937
                  bltu         s3, zero, 1740f
                  beq          t1, a4, 1727f
1727:             sub          t6, s3, t2
                  sub          s3, a1, t5
1729:             slti         s9, s7, -835
                  bltu         a1, t5, 1744f
                  blt          a6, a1, 1734f
                  bgeu         s8, t0, 1735f
                  slti         s4, ra, -123
1734:             xori         t2, a3, 888
1735:             sltu         t5, ra, sp
                  bgeu         a3, s9, 1743f
                  srai         t4, t1, 30
                  srli         a5, s3, 18
                  lui          s10, 587354
1740:             xor          t6, t4, s7
                  ori          t3, a5, -761
                  ori          s4, zero, -10
1743:             nop
1744:             sub          a1, ra, a7
                  srl          sp, t4, a5
                  bgeu         s2, a3, 1761f
                  ori          tp, t5, 339
                  la           s5, region_0+323 #start riscv_load_store_rand_instr_stream_12
                  sw           s5, -63(s5)
                  sh           ra, 51(s5)
                  lbu          t3, -21(s5)
                  sb           tp, 11(s5)
                  and          tp, sp, a7
                  sub          ra, s3, ra
                  srl          a4, t5, s2
                  lbu          zero, 17(s5)
                  sltiu        a5, s3, 76
                  lbu          s1, 11(s5)
                  lb           ra, -20(s5)
                  nop
                  sh           t4, -43(s5)
                  xor          a0, s3, s9
                  lb           a5, 36(s5)
                  lb           s3, -61(s5)
                  and          sp, s6, sp
                  lbu          s9, -2(s5)
                  sb           a5, -26(s5)
                  lb           sp, -46(s5)
                  lb           s8, 60(s5)
                  xor          a6, sp, s5
                  xor          t0, ra, sp
                  sb           s3, 35(s5)
                  lb           t0, -8(s5)
                  sh           s4, 55(s5)
                  sub          s8, t3, a6
                  srli         a3, a2, 23
                  slti         s10, tp, -681
                  srli         a7, sp, 11
                  sb           a4, -60(s5) #end riscv_load_store_rand_instr_stream_12
                  sll          s3, t2, s10
                  slt          t6, s11, sp
                  bge          gp, gp, 1757f
                  slti         t0, s10, 629
                  slti         s0, sp, -828
                  srl          a3, s5, s8
                  add          a4, sp, t2
                  addi         a0, a4, -165
                  xori         t5, gp, 1681
1757:             slti         s4, s10, -664
                  srli         a1, gp, 18
                  auipc        s11, 647645
                  andi         a7, s5, 962
1761:             nop
                  srai         t4, s10, 2
                  or           zero, s10, sp
                  sub          a3, gp, a2
                  srli         gp, ra, 0
                  xor          s3, a2, s2
                  beq          t2, a6, 1770f
                  sra          s10, gp, s10
                  andi         t1, t3, 43
1770:             slti         t1, s3, -65
                  slli         t2, s5, 15
                  xori         tp, s1, -392
                  bge          t2, zero, 1774f
1774:             xor          s9, s8, s1
                  srl          t5, a2, s5
                  xori         s11, sp, 81
                  auipc        zero, 590079
                  addi         t2, a0, -1322
                  ori          gp, s10, 798
                  andi         a0, ra, -1737
                  sll          a5, s11, a5
                  slti         s4, s3, -771
                  srai         sp, a0, 20
                  lui          s0, 601647
                  xori         t2, s5, 1546
                  srai         t1, t0, 2
                  sll          s3, zero, t5
                  sra          s1, t4, s7
                  and          a4, s11, t5
                  sll          t0, a3, s7
                  xori         s5, a3, 627
                  slt          a5, a4, t2
                  sltiu        t3, a1, -1282
                  slt          s10, s2, s10
                  sll          ra, s2, t4
                  addi         tp, a4, 940
                  bgeu         s11, s10, 1811f
                  srl          a7, s8, gp
                  slti         s10, t5, 490
                  bltu         tp, s9, 1811f
                  xor          s0, t6, zero
                  ori          a7, a0, 724
                  blt          a5, tp, 1806f
                  bge          s10, s10, 1805f
1805:             sltiu        t1, t4, -1279
1806:             bgeu         s6, s9, 1823f
                  nop
                  auipc        a0, 896061
                  beq          t5, t2, 1813f
                  and          s7, gp, a5
1811:             bltu         gp, t5, 1825f
                  sll          s10, t6, a5
1813:             bltu         s11, sp, 1825f
                  and          t5, t2, s7
                  or           t1, s0, s1
                  xor          a5, a0, a3
                  and          a0, ra, s5
                  xori         s7, s6, 890
                  bne          s5, a1, 1825f
                  xor          a0, s8, s8
                  srli         a5, a7, 25
                  sltu         s11, t5, s10
1823:             bgeu         ra, tp, 1826f
                  blt          a5, ra, 1826f
1825:             bltu         s9, t6, 1830f
1826:             srai         s11, a4, 15
                  addi         s9, a5, 1469
                  sub          s4, s10, s1
                  or           t2, s10, s1
1830:             bge          t1, a4, 1831f
1831:             srl          s0, s2, a7
                  beq          a3, s0, 1838f
                  sltiu        t1, a4, 1891
                  lui          ra, 81338
                  srl          s9, gp, sp
                  sll          s8, s3, zero
                  xori         t6, s3, -386
1838:             sltu         s4, a6, a7
                  blt          t5, sp, 1842f
                  andi         s11, ra, -1407
                  nop
1842:             and          zero, s11, zero
                  xor          zero, t3, s4
                  or           s7, a3, s3
                  sll          tp, a1, zero
                  addi         s11, a7, 532
                  srl          t6, a7, gp
                  slli         t2, s5, 23
                  srli         s4, s8, 2
                  beq          a5, s10, 1870f
                  blt          a1, s3, 1852f
1852:             beq          s7, s5, 1859f
                  sra          s4, t6, s10
                  nop
                  srl          a4, s9, t6
                  auipc        t3, 200511
                  sltiu        t3, t4, 265
                  bltu         t1, a6, 1869f
1859:             addi         t1, tp, -1016
                  auipc        t0, 207188
                  blt          t0, tp, 1876f
                  nop
                  sra          t4, tp, a4
                  andi         t5, s4, -1504
                  bgeu         a4, tp, 1876f
                  slti         s1, ra, 1925
                  beq          t6, s10, 1878f
                  sra          t2, zero, a5
1869:             srli         s1, a0, 12
1870:             slli         s1, t6, 22
                  slli         s8, tp, 7
                  srli         s3, a7, 25
                  xori         a4, s5, 1256
                  bne          a6, s9, 1875f
1875:             or           s4, t2, t2
1876:             sub          s11, a3, s11
                  bgeu         a0, t2, 1883f
1878:             slt          s10, t1, t1
                  bne          a4, a7, 1893f
                  blt          a6, a5, 1897f
                  bltu         t2, a5, 1888f
                  srl          gp, a0, t6
1883:             nop
                  add          s5, s6, a4
                  addi         t5, gp, -104
                  srai         s8, a4, 14
                  or           s9, zero, t3
1888:             or           t0, a3, gp
                  and          t3, ra, a2
                  nop
                  slti         a5, a4, 429
                  andi         t1, s2, -704
1893:             sub          a1, t4, t1
                  srli         a0, s1, 22
                  sltiu        s9, s9, -1064
                  sub          a1, s6, s0
1897:             srli         a7, t6, 8
                  lui          t2, 432029
                  sra          a7, s10, gp
                  add          t6, t5, a6
                  beq          a7, s1, 1905f
                  add          a0, zero, a7
                  srai         t3, a5, 7
                  slt          s9, sp, a2
1905:             slli         t0, s6, 13
                  beq          t2, a4, 1920f
                  sltu         s3, s5, s0
                  sll          ra, s3, s4
                  and          a3, a2, t6
                  xor          a0, t3, sp
                  or           gp, s1, t0
                  blt          t2, a5, 1915f
                  sub          s0, t6, t4
                  xor          a5, t1, t0
1915:             slti         sp, a3, 1727
                  srl          a4, s11, a5
                  blt          gp, s8, 1922f
                  slt          zero, t5, s1
                  slt          s11, t2, t4
1920:             lui          a6, 888012
                  andi         sp, a1, 695
1922:             xori         s9, sp, 1145
                  slt          s5, t4, a2
                  slli         t2, s8, 8
                  sub          s10, s0, t6
                  bge          t1, s7, 1938f
                  xori         s9, ra, 105
                  srl          zero, t4, a5
                  and          s0, t0, t2
                  srl          s11, t2, t4
                  andi         t4, s10, 754
                  bgeu         a2, s6, 1938f
                  srli         s4, a0, 8
                  nop
                  sll          t5, tp, a7
                  bge          t1, t4, 1939f
                  sra          s10, s8, s2
1938:             sub          s4, t3, t2
1939:             beq          s2, a1, 1942f
                  bgeu         s0, ra, 1941f
1941:             sub          s4, s10, t2
1942:             bge          a6, t2, 1945f
                  slli         s0, a1, 27
                  sltu         s4, t0, zero
1945:             sra          t6, t5, tp
                  srl          t5, s5, s8
                  bne          gp, s1, 1954f
                  lui          s5, 693811
                  xori         s1, s7, -1784
                  nop
                  auipc        a0, 428630
                  nop
                  slli         s4, gp, 19
1954:             sub          s0, s10, a4
                  bge          a4, t6, 1956f
1956:             andi         s7, s8, -686
                  slli         a6, a6, 20
                  xori         t5, a4, 535
                  sltu         s3, a4, s11
                  xor          a3, zero, s2
                  or           s10, s9, a4
                  sub          t0, t6, s1
                  sll          s8, s11, a6
                  sub          s1, a6, gp
                  addi         a0, zero, -646
                  andi         s8, t4, -1605
                  srl          s11, t3, s1
                  ori          t5, sp, -892
                  bge          t1, a5, 1984f
                  bgeu         s11, s9, 1990f
                  slti         a0, s1, -33
                  sll          a4, zero, s2
                  addi         a0, t0, 1639
                  nop
                  xori         a5, tp, 1183
                  blt          t6, gp, 1983f
                  ori          s4, t5, 1172
                  beq          a3, s3, 1981f
                  bne          s10, s5, 1994f
                  beq          s0, t5, 1983f
1981:             or           s11, s0, tp
                  slli         s1, s7, 27
1983:             beq          a6, ra, 1997f
1984:             slti         s0, s9, -854
                  bge          sp, s0, 1986f
1986:             auipc        a1, 473580
                  srli         t1, t2, 15
                  blt          s7, a4, 1989f
1989:             sra          a0, t4, gp
1990:             add          tp, s5, sp
                  or           t6, s9, s8
                  lui          a0, 168564
                  la           ra, region_1+1143 #start riscv_load_store_rand_instr_stream_3
                  sra          a1, t6, t6
                  xor          t3, zero, s7
                  xor          t2, s4, t3
                  sh           t4, -55(ra)
                  auipc        a1, 229927
                  lb           t2, 62(ra)
                  sltu         s11, s9, s0
                  lbu          a0, 22(ra)
                  srai         a5, a7, 6
                  lbu          t2, -62(ra)
                  srli         zero, a5, 12
                  slli         a4, t0, 2
                  slti         s11, t1, -220
                  lb           t2, -60(ra)
                  addi         s11, s9, -816
                  lui          s8, 226137
                  sll          a1, t4, s3
                  slli         s0, a1, 9
                  xor          s0, s3, a3
                  and          s1, s4, a4
                  sh           a5, 57(ra)
                  sb           t2, -26(ra)
                  sw           t5, -3(ra)
                  xor          s0, a6, t1
                  lbu          s3, -35(ra)
                  sh           t5, 55(ra)
                  ori          a1, a1, 928
                  sub          a4, s7, t0
                  sb           a4, 26(ra)
                  lw           a6, 53(ra)
                  xor          t4, s3, a6
                  lb           a3, -40(ra)
                  lbu          s7, 32(ra)
                  ori          s9, s6, 1120
                  andi         tp, s2, -256
                  sra          a0, a1, s2
                  lb           s10, -18(ra)
                  sra          s7, ra, s3
                  lb           t0, -36(ra)
                  lbu          t2, -17(ra)
                  lbu          t5, 41(ra)
                  sb           t5, -36(ra)
                  addi         s5, s9, -918
                  and          s8, s3, ra
                  ori          a1, s11, 2018
                  lb           t1, -40(ra) #end riscv_load_store_rand_instr_stream_3
                  and          s3, a7, s0
1994:             srli         a6, a4, 8
                  andi         a5, tp, -2021
                  srli         a3, tp, 27
1997:             and          a1, s8, gp
                  addi         ra, a4, -609
                  sltiu        zero, t6, -651
                  and          t2, sp, a2
                  slli         a4, t5, 5
                  srli         t5, a7, 22
                  srai         t5, a6, 22
                  bge          tp, s1, 2006f
                  or           t3, s3, t3
2006:             slli         t6, s5, 18
                  la x18, test_done
                  jalr x0, x18, 0
test_done:        
                  li gp, 1
                  ecall
sub_6:            bge          s0, t0, sub_6_stack_p
                  addi         a6, s10, -1875
sub_6_stack_p:    addi         a2, a2, -24
                  sll          a3, t1, t2
                  sw           t1, 4(a2)
                  or           t3, sp, t2
                  sra          a5, t5, s11
                  sub          a7, t5, t1
                  sltu         s11, a7, zero
                  srli         s1, s10, 8
                  slt          t2, a2, a4
                  la           gp, sub_7
                  sltu         ra, s9, s10
                  addi         gp, gp, -322
                  addi         zero, t4, 537
                  slti         a1, t5, -688
                  andi         t4, s3, 1350
                  sub          t5, a1, zero
                  xori         a0, t2, 953
                  sltu         t6, t6, t3
                  bltu         a0, t4, sub_6_j9 #branch to jump instr
                  ori          t1, s2, -87
sub_6_j9:         jalr         t1, gp, 322 #jump sub_6 -> sub_7
                  la           t6, sub_7
                  and          zero, s5, a6
                  xori         s0, s9, 1848
                  ori          gp, a5, -583
                  addi         t6, t6, -875
                  slti         s7, s1, 302
                  lui          a7, 372385
                  and          t4, t6, s8
                  bge          a1, t6, sub_6_j10 #branch to jump instr
                  add          t2, sp, s11
                  and          s1, s2, a0
sub_6_j10:        jalr         t1, t6, 876 #jump sub_6 -> sub_7
                  la           s3, region_1+726 #start riscv_load_store_rand_instr_stream_0
                  sb           a7, -31(s3)
                  sh           t5, 74(s3)
                  sb           t4, -7(s3)
                  and          s5, s1, a0
                  lb           s0, 135(s3)
                  sw           gp, 106(s3)
                  lb           t2, -31(s3)
                  andi         t6, s9, 988
                  srl          s10, a1, gp
                  xor          s9, a2, s6
                  lbu          s1, -15(s3)
                  lhu          s5, -20(s3)
                  addi         s7, t6, -1515
                  lb           t4, -223(s3)
                  srai         t2, s5, 30
                  sb           t0, 25(s3)
                  lbu          t5, -145(s3)
                  lbu          s1, -157(s3)
                  lb           a0, -209(s3)
                  or           s9, zero, s9
                  lbu          tp, 241(s3)
                  slti         s5, ra, -1156
                  sb           s10, 231(s3)
                  lw           s7, 246(s3)
                  sll          s11, t6, a6
                  xori         t1, a6, 820
                  sb           s6, 133(s3)
                  and          a6, s3, a0
                  srl          t4, s2, a5
                  sub          t5, a2, s8
                  lbu          s4, 81(s3)
                  sb           t0, 11(s3)
                  sub          t3, a1, s7
                  lbu          ra, -29(s3)
                  lb           s1, 3(s3) #end riscv_load_store_rand_instr_stream_0
                  slli         a0, a2, 18
                  beq          t4, ra, 21f
                  sra          a0, s10, t0
                  bltu         t4, a6, 5f
                  xori         s1, s3, 1211
5:                or           s8, s0, zero
                  and          a1, s2, s5
                  and          s3, s11, t6
                  srl          t0, gp, a5
                  slti         s1, gp, -1803
                  slti         a5, s10, 170
                  andi         a6, t6, -383
                  bne          s10, a5, 30f
                  xor          ra, s8, s7
                  srai         gp, sp, 13
                  sub          s11, s5, s1
                  slti         s5, t4, 1342
                  bne          s10, s2, 21f
                  lui          a7, 63715
                  bltu         s2, a7, 23f
                  bge          s1, t4, 31f
21:               bltu         zero, s9, 35f
                  bne          s8, t2, 33f
23:               andi         t4, t0, 217
                  sub          a5, t2, t1
                  and          t0, gp, t4
                  sra          s0, s0, s2
                  nop
                  slt          ra, a6, a5
                  srl          s3, t1, s2
30:               beq          sp, s9, 32f
31:               srl          s3, gp, t6
32:               blt          a1, s11, 35f
33:               auipc        ra, 352092
                  auipc        ra, 613045
35:               bne          s3, s9, 52f
                  sll          t4, t3, t6
                  sra          sp, s1, s9
                  lui          s10, 377592
                  sll          t4, s5, zero
                  slti         tp, t6, -858
                  bgeu         zero, t3, 43f
                  or           s11, s6, a3
43:               srai         a1, t1, 29
                  blt          s8, s4, 60f
                  bltu         a4, s10, 48f
                  sll          s4, zero, s1
                  slli         gp, t1, 6
48:               slti         a1, t2, 497
                  add          t6, s8, s8
                  bltu         s8, t1, 65f
                  slti         s11, t1, 1221
52:               bne          zero, t1, 55f
                  srli         a5, t6, 18
                  nop
55:               sltiu        t2, s5, -482
                  srli         a7, s0, 22
                  nop
                  sltu         t3, s5, t3
                  beq          zero, a6, 75f
60:               bne          s11, s2, 77f
                  sub          s10, a2, s4
                  bgeu         a5, ra, 77f
                  add          t5, t3, s10
                  lui          gp, 527699
65:               slli         t6, t3, 11
                  andi         s4, a5, 1182
                  sra          a4, s0, ra
                  srli         a0, s6, 15
                  bgeu         a5, a6, 78f
                  bge          a4, t6, 83f
                  add          a4, s8, a3
                  or           s9, t5, a4
                  slli         s10, ra, 12
                  or           a6, s7, t5
75:               nop
                  add          zero, a7, t1
77:               bgeu         a5, s0, 87f
78:               blt          s5, s0, 94f
                  srai         a7, t1, 24
                  bgeu         t2, zero, 89f
                  slli         s8, t2, 17
                  xori         gp, t6, 1356
83:               addi         a6, s7, 1155
                  blt          t2, a1, 99f
                  srl          a4, tp, t0
                  addi         a6, a4, 1032
87:               srli         t5, t2, 22
                  sltiu        tp, ra, -1125
89:               bne          t1, tp, 92f
                  add          t6, a3, a3
                  bne          t2, sp, 103f
92:               sub          s10, s8, s5
                  slt          t2, gp, a1
94:               addi         s7, a0, 707
                  srai         a6, a6, 26
                  sub          ra, s5, t1
                  andi         s3, t5, -745
                  and          a4, s11, t4
99:               slti         t3, t1, 139
                  lui          a0, 349032
                  beq          s3, s7, 114f
                  srai         s10, s3, 21
103:              sltiu        t3, t2, -1753
                  srli         sp, a2, 17
                  or           t1, ra, a3
                  srai         a3, t0, 17
                  bgeu         s10, s5, 120f
                  srli         a4, a3, 3
                  addi         a0, a0, 1365
                  xor          s4, a1, sp
                  bgeu         s3, s5, 115f
                  sll          a1, a5, a6
                  sra          s7, a0, a0
114:              and          a1, t6, sp
115:              sra          tp, s8, a5
                  or           sp, t3, t5
                  bge          a1, ra, 130f
                  srli         a1, s0, 10
                  ori          s8, a1, -1031
120:              or           s8, t3, tp
                  sra          t4, s6, a0
                  addi         sp, s6, -922
                  lui          s4, 20848
                  srai         a6, zero, 10
                  slti         t2, t2, -757
                  auipc        a6, 451506
                  xor          t4, s9, a3
                  andi         a3, sp, -1376
                  and          ra, s3, a0
130:              sub          s4, t3, ra
                  beq          s4, s4, 144f
                  srli         s3, s8, 16
                  bltu         tp, s3, 135f
                  slli         t0, tp, 23
135:              sra          t6, a4, a3
                  auipc        s7, 862016
                  sll          a5, s3, s1
                  blt          a2, s3, 144f
                  addi         a4, s4, -270
                  slt          a5, t1, s6
                  sll          t3, a1, t2
                  addi         a0, t3, 1602
                  bltu         a4, a2, 144f
144:              srli         t6, t2, 1
                  and          a7, t1, a4
                  xori         ra, s4, -847
                  sll          ra, s6, a4
                  lw           t1, 4(a2)
                  sll          sp, sp, s6
                  or           t5, s8, t6
                  addi         a2, a2, 24
                  sll          a1, a3, s0
224:              addi x9, x6, 0
224:              jalr x9, x9, 0
sub_9:            add          s3, a5, t4
                  and          s4, s2, a5
                  andi         t5, zero, -957
                  addi         a2, a2, -24
                  sw           t1, 4(a2)
                  auipc        a0, 319187
                  slti         tp, t6, -112
                  sltu         s1, t5, zero
                  slti         s5, gp, -171
                  la           ra, sub_10
                  addi         ra, ra, 881
                  bgeu         t1, gp, sub_9_j12 #branch to jump instr
                  add          t0, s11, a2
                  slli         s8, s11, 23
sub_9_j12:        jalr         t1, ra, -880 #jump sub_9 -> sub_10
                  srli         s5, a0, 4
                  la           t5, sub_10
                  xori         s0, t3, -1298
                  sub          s0, t2, a7
                  sll          t3, s10, t2
                  slt          a0, t1, a3
                  addi         t5, t5, 1014
                  addi         a3, s5, 763
                  ori          a3, s7, 128
                  sltiu        s9, s8, 1498
sub_9_j13:        jalr         t1, t5, -1013 #jump sub_9 -> sub_10
                  nop
                  sll          a0, t5, s7
                  slt          tp, s9, sp
                  sltiu        s3, a5, -1130
                  and          s7, a5, t4
                  srl          s9, sp, a5
                  blt          s3, a0, 11f
                  lui          a4, 553568
                  xori         t4, t1, -1440
                  and          s1, sp, a1
                  sub          s5, a0, s3
11:               bltu         a1, t5, 26f
                  lui          s10, 631053
                  sub          a1, gp, t4
                  lui          a0, 821175
                  and          t4, s2, ra
                  blt          s8, zero, 23f
                  slli         s9, a2, 9
                  bne          a7, t6, 20f
                  srli         t6, t2, 12
20:               slt          ra, s7, a5
                  srai         a4, a5, 23
                  beq          tp, t1, 24f
23:               xor          t4, t0, t1
24:               andi         a0, s10, -1032
                  add          a7, a5, a7
26:               auipc        s11, 797431
                  auipc        a4, 822392
                  sra          a1, s0, a5
                  ori          gp, s7, -428
                  slli         s0, t6, 1
                  slt          s3, s4, a3
                  auipc        t5, 740407
                  slli         a0, sp, 31
                  sll          t2, a4, t2
                  auipc        sp, 947981
                  bge          t2, a0, 44f
                  xor          ra, a2, a4
                  sltu         a3, a1, a1
                  sll          t3, t5, a2
                  auipc        t6, 919308
                  sltiu        ra, gp, -1149
                  nop
                  sltu         s3, s3, sp
44:               srai         s1, s5, 7
                  slt          t1, a6, s6
                  bltu         a2, s7, 62f
                  slti         a6, t6, -1778
                  and          s0, a2, a2
                  sltiu        t4, tp, -409
                  blt          ra, s5, 68f
                  bne          s8, s5, 67f
                  srli         a1, t0, 11
                  xori         t0, t0, -1089
                  bltu         a3, a3, 60f
                  slli         s1, a3, 19
                  sra          s7, t3, a1
                  addi         a0, s8, -763
                  bne          s10, a7, 61f
                  sll          sp, a1, t0
60:               lui          s9, 683323
61:               auipc        t1, 620996
62:               addi         gp, a3, -1912
                  and          s9, s9, t2
                  xor          t3, a7, a0
                  nop
                  xor          t5, s0, s10
67:               srl          t4, s10, ra
68:               bltu         s10, zero, 75f
                  bgeu         s10, s9, 82f
                  blt          s6, t4, 87f
                  lui          s3, 379951
                  lui          t6, 790654
                  bltu         s0, s6, 76f
                  xor          t1, s11, s9
75:               srli         s7, s5, 25
76:               srl          s10, ra, t2
                  slt          s11, s11, s7
                  add          t5, s0, s2
                  and          tp, t3, s5
                  sltu         a4, a4, s2
                  xori         s7, s5, -788
82:               or           sp, s7, sp
                  lui          s4, 862378
                  andi         zero, t4, 123
                  slli         t6, a5, 28
                  lui          t1, 715725
87:               srl          s0, gp, s6
                  sltu         t6, t1, s11
                  xori         a4, tp, 1222
                  sltiu        a3, s11, -723
                  slti         ra, t4, -1707
                  sra          s8, t2, s4
                  addi         zero, a0, -2012
                  lw           t1, 4(a2)
                  xor          s5, s3, s3
                  slti         s10, a6, -1172
                  xor          t2, t0, t6
                  addi         a2, a2, 24
                  slli         s8, t5, 28
                  or           t3, t5, a7
                  srl          t0, s3, s6
                  xor          s0, a6, a4
                  addi         a5, s2, -353
130:              addi x5, x6, 1
130:              jalr x5, x5, 0
sub_4:            bne          t1, a1, sub_4_stack_p
                  and          s4, sp, s5
                  sltu         a5, t5, t0
sub_4_stack_p:    addi         a2, a2, -52
                  sw           t1, 4(a2)
                  andi         ra, s4, 1194
                  auipc        t1, 825215
                  slli         s11, a0, 7
                  bge          s3, s0, 9f
                  andi         s11, t3, 1412
                  bgeu         s6, s11, 16f
                  srli         a7, t3, 24
                  slli         t4, s1, 2
                  sll          s5, s8, a3
                  xori         zero, a4, -1065
9:                sll          s3, a2, tp
                  auipc        s7, 864629
                  srl          t5, a7, sp
                  addi         a5, t0, 367
                  sltu         gp, s0, t3
                  bltu         t6, s1, 15f
15:               nop
16:               beq          t3, t6, 22f
                  nop
                  slli         t6, t2, 10
                  bne          s0, zero, 22f
                  bge          t4, t4, 21f
21:               srli         a6, s7, 20
22:               ori          t0, s8, -1979
                  slt          s9, zero, ra
                  add          s10, zero, t0
                  auipc        s4, 1031333
                  lw           t1, 4(a2)
                  xor          a4, s3, tp
                  andi         s9, ra, -549
                  auipc        t6, 444617
                  srai         s8, t2, 10
                  addi         a2, a2, 52
                  srl          s1, t3, a3
                  xor          tp, t5, t6
                  nop
41:               addi x7, x6, 1
41:               jalr x7, x7, 0
sub_10:           add          s1, ra, t4
                  sll          s10, s3, s1
                  sltiu        a5, a7, -932
                  slli         s5, s10, 0
                  beq          a0, t1, sub_10_stack_p
                  sltiu        s9, tp, -58
sub_10_stack_p:   addi         a2, a2, -40
                  sw           t1, 4(a2)
                  and          tp, a0, a2
                  andi         t3, a1, -634
                  bltu         a7, s3, 9f
                  bltu         zero, s10, 6f
                  beq          s10, tp, 9f
                  ori          gp, s11, 335
                  sra          t5, s7, s5
6:                sltiu        s5, a1, -1753
                  auipc        a3, 540055
                  slti         t2, s4, 1420
9:                sltu         s9, a4, a4
                  and          t5, a5, a7
                  lw           t1, 4(a2)
                  slt          s4, s1, tp
                  addi         a2, a2, 40
                  or           a6, a7, t5
                  slli         a1, a5, 5
                  lui          ra, 93275
                  addi         t2, s10, -987
27:               addi x7, x6, 1
27:               jalr x7, x7, 0
sub_5:            sll          a5, sp, a5
                  xor          t4, a0, t2
                  or           zero, s11, a6
                  srl          s0, zero, s8
                  addi         a2, a2, -48
                  srai         a1, s3, 29
                  nop
                  sll          a5, s6, t3
                  sw           t1, 4(a2)
                  srli         s5, t4, 27
                  la           a5, region_1+1839 #start riscv_load_store_rand_instr_stream_2
                  sb           ra, -371(a5)
                  sub          sp, a1, gp
                  lhu          a4, -1611(a5)
                  sh           a3, -605(a5)
                  add          t4, s6, a5
                  xor          s4, a4, tp
                  or           gp, zero, s3
                  nop
                  nop
                  slt          t2, t2, zero
                  lhu          a1, -1603(a5)
                  lbu          s4, -1462(a5)
                  lb           gp, -1011(a5)
                  sh           a0, -39(a5)
                  lb           s7, -1370(a5)
                  sub          tp, a1, s4
                  lui          t4, 119846
                  lb           zero, -874(a5)
                  slti         s4, t5, -1202
                  lui          s0, 121862
                  sb           ra, -45(a5)
                  lbu          ra, -1626(a5)
                  sub          s5, ra, zero
                  sb           s6, -66(a5)
                  sw           t2, -427(a5)
                  lb           a6, 32(a5)
                  lb           s4, -518(a5)
                  slti         t6, t1, -283
                  srli         a1, t0, 27
                  srai         a1, a5, 5
                  sltiu        a7, t4, 299
                  slli         sp, t1, 13
                  lb           s4, -1612(a5)
                  lbu          a3, -1479(a5)
                  and          t6, t4, a7
                  sb           a6, -669(a5)
                  sb           t4, -328(a5)
                  sub          s1, t4, s7
                  lbu          s0, -99(a5)
                  sb           t3, -1338(a5)
                  lhu          t6, -1415(a5)
                  slli         s5, s5, 5
                  lw           t2, -819(a5)
                  xori         tp, a6, -1108
                  sb           gp, -798(a5)
                  lbu          tp, -1831(a5)
                  sll          a0, a6, t0
                  nop
                  srai         s0, a0, 6
                  sb           s7, -1133(a5)
                  auipc        tp, 719654
                  lbu          a1, -1450(a5)
                  xor          a3, s7, s4
                  lb           t2, 150(a5)
                  lb           gp, -949(a5) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_0+125 #start riscv_load_store_rand_instr_stream_5
                  lbu          zero, -28(sp)
                  addi         zero, s5, -837
                  lb           a6, 228(sp)
                  slti         s8, t2, -1298
                  srai         s1, t4, 25
                  and          t4, zero, a7
                  srli         s11, t0, 16
                  lbu          s0, 10(sp)
                  sll          s11, a4, sp
                  sltu         a0, t6, t2
                  slli         s7, a5, 24
                  lbu          s11, 201(sp)
                  sltu         s0, t6, s10
                  sb           a3, -87(sp)
                  lbu          a5, 14(sp)
                  srai         t2, s1, 26
                  srli         a0, s8, 16
                  slli         t5, gp, 4
                  nop
                  slt          s1, a5, sp
                  sb           s2, 102(sp)
                  sub          tp, ra, a6
                  sb           a2, -35(sp)
                  lb           a7, -27(sp)
                  sb           zero, 29(sp)
                  sb           t3, 110(sp)
                  sw           s2, 211(sp)
                  lb           t4, -118(sp)
                  lb           zero, 126(sp)
                  lb           a7, 246(sp)
                  sb           s11, 45(sp)
                  slli         s8, a0, 24
                  and          s0, s4, a0
                  lbu          a1, 29(sp) #end riscv_load_store_rand_instr_stream_5
                  la           sp, region_0+715 #start riscv_load_store_rand_instr_stream_3
                  nop
                  lb           ra, 196(sp)
                  slti         a0, ra, 1397
                  ori          s5, sp, -70
                  slt          s8, s1, t2
                  lb           gp, -9(sp)
                  add          s7, s11, tp
                  sh           s2, 149(sp)
                  add          a6, t3, t4
                  ori          a4, t0, 1744
                  slt          zero, s9, t3
                  add          s10, zero, zero
                  xori         t3, t6, 659
                  lbu          a0, 174(sp)
                  srl          a1, t2, s6
                  slt          s3, sp, s11
                  lbu          s8, 218(sp)
                  addi         t1, s1, 16
                  sb           s1, -37(sp)
                  sb           sp, 62(sp)
                  slti         s1, t3, 1008
                  auipc        t2, 1000744
                  lhu          t3, -29(sp)
                  add          t5, s4, a3
                  slli         a6, a2, 15
                  srl          a5, t1, t2
                  auipc        s1, 175726
                  slti         a0, s10, -427
                  lbu          a6, 232(sp)
                  lb           a7, -106(sp)
                  lhu          t6, 11(sp)
                  lh           a5, -95(sp)
                  lui          t6, 1013752
                  lh           s9, -127(sp)
                  sll          s10, s6, s5
                  sh           t4, 243(sp)
                  or           s3, a5, a0
                  sh           gp, 239(sp)
                  lbu          s0, 255(sp)
                  lh           t4, -185(sp) #end riscv_load_store_rand_instr_stream_3
                  la           a7, region_1+986 #start riscv_load_store_rand_instr_stream_4
                  lui          a4, 793657
                  lb           t2, -7(a7)
                  lbu          t2, 0(a7)
                  lbu          s4, 8(a7)
                  sb           s0, -13(a7)
                  srli         t4, gp, 10
                  slli         t4, s6, 26
                  sb           s0, -15(a7)
                  lbu          t5, -11(a7)
                  sltiu        a1, s8, 784
                  sb           s10, 8(a7)
                  sll          s8, a2, s5
                  lh           s4, -16(a7)
                  slli         t6, t2, 7
                  lb           a1, 4(a7)
                  lbu          s5, 9(a7)
                  sb           t0, -11(a7)
                  lb           tp, 4(a7)
                  sb           s11, 13(a7)
                  slli         s1, s11, 29
                  ori          a5, sp, -1949
                  add          s9, a1, s9
                  andi         s8, s6, -473
                  lb           t0, 3(a7) #end riscv_load_store_rand_instr_stream_4
                  la           t2, region_1+165 #start riscv_load_store_rand_instr_stream_9
                  sra          a6, s7, t6
                  lui          ra, 721206
                  sltu         t0, s5, a6
                  lb           t6, 726(t2)
                  lhu          s10, 1513(t2)
                  sub          s5, t0, t6
                  slli         s1, s8, 4
                  lbu          s0, 398(t2)
                  nop
                  lui          a1, 548532
                  lb           s4, 1828(t2)
                  slli         t1, s1, 29
                  lb           s11, 1449(t2)
                  srl          t1, gp, a4
                  andi         zero, s8, -57
                  auipc        s1, 1036892
                  sb           s2, 130(t2)
                  xori         s9, s1, 1155
                  and          t0, ra, a2
                  addi         a0, s9, 137
                  lbu          s0, 534(t2)
                  sb           a3, 196(t2)
                  or           s5, a3, s9
                  sra          a1, s6, s9
                  srli         t0, s8, 11
                  xori         a1, s0, 675
                  lui          s11, 58034
                  sltiu        ra, t6, -1161
                  lhu          gp, 1411(t2)
                  srli         tp, t5, 14
                  sw           a3, 727(t2)
                  sb           a5, 1506(t2) #end riscv_load_store_rand_instr_stream_9
                  la           t6, region_0+565 #start riscv_load_store_rand_instr_stream_6
                  or           a1, t2, s0
                  xori         t2, a2, 3
                  lbu          a3, 2(t6)
                  srai         a7, t6, 4
                  lui          s3, 417905
                  xori         s9, t6, -1156
                  and          s11, a1, s10
                  lb           a1, -13(t6)
                  sra          a0, a6, ra
                  srai         s8, t5, 23
                  sltiu        s10, s11, 646
                  sb           a5, -174(t6)
                  addi         a6, t3, 481
                  add          s4, a2, ra
                  slti         a7, t3, -1994
                  slti         s11, gp, -1849
                  andi         t5, sp, 1014
                  lb           ra, 30(t6)
                  lb           s9, 172(t6)
                  srli         zero, s3, 10
                  lui          a3, 786451
                  xori         a0, s1, -1908
                  lbu          s8, -5(t6)
                  sltiu        s1, s7, -2017
                  srl          a6, a1, s0
                  sb           s6, -6(t6)
                  auipc        a4, 494797
                  andi         a4, s8, -1916
                  sb           zero, -226(t6)
                  nop
                  srl          a6, t6, t1
                  xor          s0, t5, s11
                  lui          zero, 828787
                  sltu         s5, s5, a7
                  andi         ra, s10, -1665
                  lh           t0, -91(t6)
                  sltu         s3, s1, s8
                  srli         a4, t2, 24
                  lhu          a5, -119(t6) #end riscv_load_store_rand_instr_stream_6
                  la           ra, region_1+110 #start riscv_load_store_rand_instr_stream_1
                  sb           tp, 438(ra)
                  srai         tp, a0, 6
                  andi         s11, s4, 1752
                  addi         s11, t3, 1932
                  lb           s1, -16(ra)
                  nop
                  xor          t0, a5, s0
                  lhu          s0, 574(ra)
                  lb           a0, 811(ra)
                  srl          s5, t1, a3
                  sltiu        t2, a2, -828
                  or           s7, t1, tp
                  lb           s9, 1033(ra)
                  lbu          t2, 1288(ra)
                  sltiu        t0, s5, -608
                  lbu          zero, -9(ra)
                  xor          a7, t5, a2
                  lbu          tp, 293(ra)
                  lbu          s3, 1024(ra)
                  and          a6, s10, s0
                  sub          a6, a1, s4
                  sb           s1, 177(ra)
                  lhu          a1, 1824(ra)
                  lh           tp, 72(ra)
                  srai         s4, s6, 10
                  slt          zero, gp, s1
                  sb           t0, 1115(ra)
                  lhu          t0, 328(ra) #end riscv_load_store_rand_instr_stream_1
                  srai         t1, zero, 31
                  andi         ra, t0, 1547
                  sra          zero, a7, s7
                  bge          t5, a2, 7f
                  srl          s1, a0, sp
                  sra          s10, a7, a6
                  slt          sp, a5, t2
7:                sltiu        t5, s7, -1500
                  ori          a7, s6, 1337
                  sra          a4, zero, s9
                  xor          a0, a5, s1
                  and          s1, s7, s4
                  or           s5, s2, a2
                  slli         sp, t4, 12
                  ori          s5, s11, 1828
                  sll          s11, s2, t2
                  ori          s1, t0, -1917
                  add          t3, t4, s11
                  xor          s8, ra, a5
                  lui          t5, 293929
                  sra          s1, s8, s9
                  add          s8, a3, a3
                  or           ra, s9, s8
                  ori          a6, s3, 612
                  slti         t3, s7, 955
                  lui          s3, 1039560
                  sra          t3, zero, s5
                  sltiu        t0, t5, 723
                  bltu         a6, ra, 38f
                  xori         a6, t2, 1781
                  sra          s8, t1, s2
                  sll          a3, t2, s4
                  sub          a7, a6, t1
                  bne          s8, a1, 50f
                  or           t2, s10, a3
                  beq          a6, s9, 42f
                  slli         t3, ra, 15
                  beq          s9, zero, 47f
38:               auipc        t6, 583957
                  addi         ra, t1, 53
                  ori          gp, s6, -823
                  add          s4, t2, a4
42:               add          tp, t0, s1
                  and          s1, t0, gp
                  sra          t3, t2, s5
                  lui          t6, 902410
                  sltiu        s10, s11, 1238
47:               xori         s1, gp, -1648
                  or           t4, s4, t3
                  xori         t2, zero, 1756
50:               slli         sp, a5, 22
                  and          a5, s2, t4
                  lui          a4, 762441
                  add          a7, t1, s3
                  beq          s11, s1, 67f
                  srli         a7, gp, 5
                  bgeu         s6, s0, 60f
                  ori          s9, tp, 1339
                  slti         s1, s7, 925
                  addi         a5, a6, 1511
60:               bltu         s7, t3, 64f
                  sub          s11, a0, t5
                  beq          tp, t6, 78f
                  slli         s5, t0, 29
64:               addi         s4, s5, -1765
                  and          t6, s8, t2
                  slti         s3, a0, 1279
67:               or           a6, t1, t5
                  sll          ra, sp, t1
                  blt          s10, a5, 79f
                  slt          t2, s4, s0
                  xor          gp, t3, t1
                  bge          a1, a1, 90f
                  or           a0, a4, a7
                  or           a1, t2, ra
                  andi         t6, s0, 1599
                  beq          a3, t4, 86f
                  srli         a4, ra, 11
78:               nop
79:               lui          s11, 730936
                  slli         zero, t5, 13
                  sltu         s8, a2, a2
                  srai         t1, tp, 24
                  sltu         s4, s1, a7
                  bltu         a0, s7, 101f
                  xor          t0, t0, s0
86:               slt          s0, tp, a0
                  sltiu        s0, s9, 90
                  blt          t5, s4, 105f
                  and          a6, t2, gp
90:               xor          s3, a3, t3
                  lui          zero, 947105
                  slt          t4, a7, a0
                  andi         ra, zero, -636
                  bge          s8, a2, 100f
                  or           s5, s8, s11
                  blt          s2, s0, 103f
                  blt          sp, t1, 105f
                  or           a6, t6, s9
                  bgeu         a1, s8, 118f
100:              andi         a3, s9, 198
101:              bltu         s5, sp, 102f
102:              slti         t4, s9, 406
103:              xor          s10, t2, a7
                  and          a7, tp, t0
105:              bge          s8, a4, 123f
                  auipc        tp, 744823
                  and          s1, t4, s3
                  bltu         a6, sp, 119f
                  and          s8, a1, s6
                  addi         a0, a2, 998
                  bne          s10, s8, 122f
                  auipc        t4, 339718
                  xor          t4, t6, sp
                  xor          s7, t1, sp
                  lui          gp, 261883
                  andi         zero, s4, 1816
                  andi         s4, s9, -418
118:              nop
119:              slt          a0, a7, s5
                  andi         t0, s8, 548
                  beq          s1, a2, 138f
122:              bne          s8, s11, 132f
123:              blt          s11, a4, 136f
                  or           s7, t5, t5
                  sll          s0, a5, a2
                  slt          t1, a0, s3
                  bne          s3, s6, 142f
                  xor          s5, tp, a5
                  bge          s6, s11, 135f
                  xori         s8, s7, 1867
                  and          a7, s3, a3
132:              bltu         a2, t2, 146f
                  slli         s1, a1, 4
                  auipc        t2, 845345
135:              xori         zero, s7, -97
136:              lui          sp, 375235
                  slli         t2, s9, 21
138:              slli         s8, a4, 27
                  bge          s3, ra, 145f
                  add          t4, t4, s9
                  slt          a4, t2, tp
142:              or           a6, t2, s8
                  nop
                  bltu         a5, s11, 145f
145:              addi         t6, tp, 1773
146:              sltu         a6, t0, a5
                  blt          s0, s4, 164f
                  slli         t2, s2, 19
                  sll          t0, t5, s2
                  xor          a7, s0, t1
                  lui          a4, 304488
                  or           s3, s1, a0
                  xori         s11, a0, -1753
                  sll          s10, a5, s4
                  bge          s4, a6, 165f
                  bltu         s7, s11, 166f
                  sltiu        a0, t2, 2023
                  beq          a3, sp, 172f
                  bgeu         t3, a6, 167f
                  ori          t5, s10, -841
                  blt          tp, s1, 168f
                  xori         s1, t0, -1242
                  or           s7, s6, zero
164:              sub          gp, a1, gp
165:              sra          s8, t2, zero
166:              addi         t1, a5, -1385
167:              sra          a1, s7, s5
168:              ori          ra, s8, 1284
                  lui          s8, 41980
                  nop
                  blt          s7, ra, 184f
172:              bgeu         t6, t6, 176f
                  bltu         a7, tp, 190f
                  slti         ra, s6, -1955
                  slt          ra, a5, a5
176:              or           ra, s2, sp
                  ori          s10, a3, -1912
                  bltu         s0, gp, 184f
                  add          s11, a5, t1
                  xori         a3, t2, 1666
                  sltu         t1, a4, s6
                  sltu         gp, t0, s11
                  sll          s3, tp, t4
184:              ori          tp, s0, 46
                  blt          s10, t1, 186f
186:              bge          a5, s8, 204f
                  andi         s10, s7, 893
                  sltu         t3, t0, t4
                  ori          t6, t2, 447
190:              srai         s0, a7, 10
                  srai         s9, t4, 7
                  beq          s2, a7, 202f
                  nop
                  bge          a4, gp, 205f
                  blt          a5, a2, 201f
                  sltu         gp, s7, t0
                  sltu         s0, s7, a5
                  sll          ra, t1, a5
                  srl          t2, a1, t2
                  srl          s7, sp, a5
201:              sra          a4, s2, gp
202:              auipc        a0, 483697
                  auipc        sp, 450411
204:              slti         s4, a1, 1287
205:              bge          s2, s3, 211f
                  sltu         s1, t4, sp
                  nop
                  lui          t6, 1022608
                  and          s11, s11, a6
                  auipc        a7, 604283
211:              sra          t0, t5, s2
                  sra          a6, a6, s6
                  auipc        t5, 728474
                  bne          s1, s9, 232f
                  or           a3, a0, t3
                  sra          t0, t6, t3
                  addi         s9, a4, 1835
                  beq          s4, s2, 225f
                  xori         s1, t2, -1402
                  blt          s8, a2, 224f
                  lui          s5, 508142
                  sra          s5, s10, a7
                  slt          a0, s1, ra
224:              addi         s4, a7, -1122
225:              and          s3, s4, tp
                  blt          s0, t3, 241f
                  nop
                  add          sp, a4, gp
                  sra          s0, s0, a3
                  and          t1, s1, ra
                  nop
232:              addi         a5, t3, -243
                  nop
                  add          s5, s7, a2
                  blt          s0, s9, 245f
                  lui          t1, 32630
                  srl          tp, t4, s8
                  blt          s2, s6, 255f
                  bltu         s2, sp, 252f
                  bne          s4, t1, 257f
241:              bne          t5, tp, 251f
                  auipc        t6, 180465
                  andi         s4, a5, 1232
                  and          tp, t1, t3
245:              and          a7, sp, a0
                  andi         s11, a5, -1005
                  or           a3, s4, s1
                  la           a7, region_0+1714 #start riscv_load_store_rand_instr_stream_0
                  lb           t5, 6(a7)
                  lbu          ra, -19(a7)
                  ori          s8, a4, 586
                  and          a1, zero, s10
                  sub          a1, sp, s6
                  auipc        t1, 372173
                  lb           s5, -53(a7)
                  lb           a6, -24(a7)
                  xor          gp, t1, a6
                  sb           t3, -63(a7)
                  srai         sp, t3, 20
                  lbu          s5, -52(a7)
                  lbu          a3, 33(a7)
                  lh           s7, 2(a7)
                  sltu         s0, s1, sp
                  addi         zero, a2, 1925
                  srli         s1, a2, 26
                  lbu          sp, 52(a7)
                  xor          t6, t0, s0
                  and          t3, t4, gp
                  sll          t3, gp, s11
                  lb           s8, -39(a7)
                  sub          a6, s9, s1
                  or           s8, t3, s3
                  lhu          s1, 2(a7)
                  nop
                  srli         s8, s1, 28
                  sltiu        a1, t2, -1581
                  srl          s4, a6, a5
                  lui          a3, 330581
                  sh           t2, -22(a7)
                  sb           zero, 61(a7)
                  lh           s8, -64(a7)
                  andi         s1, s6, -519
                  xor          s9, s5, s6
                  sb           t0, -51(a7) #end riscv_load_store_rand_instr_stream_0
                  add          a0, s7, a0
                  and          tp, gp, s3
                  auipc        s4, 822665
251:              bne          tp, ra, 262f
252:              blt          gp, s1, 268f
                  or           a4, t6, a2
                  la           sp, region_0+1544 #start riscv_load_store_rand_instr_stream_7
                  lui          s11, 994377
                  lb           a7, 41(sp)
                  lb           s4, -161(sp)
                  lbu          s10, 111(sp)
                  slli         t2, t2, 5
                  sb           t3, -209(sp)
                  lb           t5, 152(sp)
                  lbu          zero, 1(sp)
                  addi         zero, s0, 31
                  sltu         s7, a6, a5
                  sub          zero, tp, t5
                  ori          t6, s1, 1197
                  lbu          t0, 172(sp)
                  sh           t6, -30(sp)
                  lui          a0, 541822
                  lh           t4, 134(sp)
                  lhu          a7, 90(sp)
                  sb           t1, -213(sp)
                  lbu          zero, 207(sp)
                  xori         s10, s8, -1519
                  lb           s9, 25(sp)
                  sb           s8, 73(sp)
                  sw           a6, 144(sp)
                  lhu          tp, 220(sp)
                  srai         a1, t0, 26
                  lh           a6, -132(sp)
                  lhu          t1, 76(sp)
                  lh           t2, -234(sp)
                  lb           a0, 137(sp)
                  sb           ra, -164(sp)
                  slt          t1, s9, s9
                  srai         t6, a6, 6
                  lbu          s0, -173(sp)
                  lbu          gp, 47(sp)
                  lb           t4, -243(sp)
                  andi         a3, a7, -1130
                  xori         tp, sp, 1647
                  or           zero, zero, t4
                  xor          a7, a5, s6
                  slt          a3, s7, a5
                  lb           t1, -255(sp)
                  auipc        s10, 702360
                  lbu          a7, -51(sp)
                  lbu          s10, -89(sp)
                  sb           s8, 114(sp)
                  lhu          s0, -122(sp) #end riscv_load_store_rand_instr_stream_7
                  bgeu         s3, a6, 258f
255:              add          t5, s1, a3
                  andi         t3, zero, -545
257:              sll          a4, t6, a7
258:              auipc        t4, 997406
                  srli         t0, sp, 11
                  auipc        zero, 411679
                  xor          t3, s0, s3
262:              sub          sp, sp, gp
                  sltiu        a3, tp, 1861
                  srai         a7, s0, 23
                  slti         ra, s5, -724
                  or           t2, sp, t6
                  auipc        s0, 707968
268:              lui          t3, 147867
                  and          a0, t6, sp
                  add          t2, t5, a1
                  ori          a1, t3, 735
                  blt          t1, s0, 291f
                  blt          a3, t6, 274f
274:              slt          t3, s0, a3
                  auipc        t0, 212268
                  nop
                  and          a4, a4, s3
                  sra          t3, ra, a0
                  nop
                  beq          a5, s11, 299f
                  lui          t5, 761756
                  blt          s2, s11, 283f
283:              srai         a0, a6, 9
                  or           s11, t6, s11
                  blt          t3, sp, 299f
                  srai         t1, s1, 14
                  nop
                  bltu         s5, s2, 289f
289:              sltu         s0, a5, zero
                  bge          s11, sp, 296f
291:              bltu         s4, ra, 309f
                  ori          t5, s10, 1691
                  addi         t6, a2, 1027
                  and          s11, a5, t3
                  nop
296:              srai         t2, zero, 11
                  slli         t6, zero, 8
                  sll          t5, a5, s8
299:              sltu         s4, gp, s7
                  sltu         s4, a6, tp
                  lui          zero, 451584
                  bgeu         a0, s2, 312f
                  lui          tp, 580854
                  ori          t1, s5, 1516
                  slt          sp, a5, a7
                  slti         t0, t5, 629
                  slti         s5, a7, 377
                  bltu         tp, a1, 312f
309:              blt          t4, sp, 325f
                  auipc        t0, 790337
                  slti         gp, a5, 737
312:              sub          s8, ra, t0
                  sub          s10, t1, s11
                  addi         s7, s6, -1700
                  slli         a5, zero, 9
                  add          s4, a7, a7
                  lui          t6, 774137
                  bgeu         a5, a7, 335f
                  slti         t4, t6, 1188
                  or           a7, s2, t3
                  lui          sp, 442703
                  ori          a5, a3, -1640
                  andi         a4, gp, 1280
                  beq          t6, t1, 330f
325:              lui          s4, 615293
                  slti         t2, s0, -1037
                  xor          a0, s0, t1
                  ori          a7, s2, 610
                  bge          s4, a2, 333f
330:              addi         s1, s5, 1019
                  bne          s1, a5, 335f
                  srl          t4, t0, a6
333:              xori         a1, a2, 790
                  or           s11, t4, tp
335:              slt          t5, t5, s11
                  and          tp, t0, t5
                  srli         s5, a3, 29
                  bge          sp, s1, 355f
                  lui          t4, 574052
                  sll          t5, s8, t5
                  srai         t4, a1, 0
                  andi         s0, t3, -1315
                  srl          s10, a5, ra
                  srl          t4, tp, ra
                  sra          t0, s11, a0
                  slti         s10, a0, 740
                  lui          s9, 909483
                  lui          sp, 104859
                  bge          t0, s1, 359f
                  sra          a0, s0, s3
                  bltu         s0, s3, 361f
                  addi         s7, t4, 2018
                  sub          s10, tp, a2
                  sltu         s10, s6, a5
355:              xori         ra, s8, 748
                  srli         t4, s7, 22
                  lui          s11, 62857
                  bltu         s3, s8, 373f
359:              srli         t5, s9, 10
                  slli         s0, t1, 15
361:              srl          t4, t2, t0
                  auipc        t6, 654065
                  andi         s9, s6, 1491
                  sub          s11, a5, t2
                  slt          s1, zero, a6
                  bltu         a1, s5, 374f
                  beq          t1, t3, 378f
                  bltu         a4, t4, 375f
                  bltu         s3, a6, 375f
                  and          s0, t1, s3
                  blt          a0, tp, 388f
                  and          a5, s4, s10
373:              blt          s8, t4, 383f
374:              sub          a7, s1, s8
375:              or           s9, a0, a7
                  blt          s10, t4, 389f
                  sra          s5, s3, sp
378:              bgeu         s8, tp, 388f
                  nop
                  sll          s9, ra, gp
                  or           s1, s7, s11
                  sltiu        t6, a6, 682
383:              xor          s5, s8, s4
                  and          t1, s9, a2
                  slt          gp, ra, sp
                  slti         a1, s10, 12
                  sll          s11, t5, s3
388:              slli         t0, s8, 20
389:              sub          a0, sp, s6
                  slli         t1, a7, 18
                  andi         a1, s1, -370
                  auipc        a6, 682043
                  sll          s3, s7, a4
                  bltu         s10, a3, 407f
                  andi         t1, t2, -1792
                  sub          s8, s11, s0
                  sltiu        t0, t1, -1660
                  sltiu        t0, s4, -2013
                  andi         t1, t5, 1283
                  bne          a7, s7, 407f
                  or           ra, s4, a4
                  srai         tp, gp, 15
                  andi         a6, s9, -1496
                  xori         a5, s5, -43
                  andi         t6, zero, 691
                  sltu         t6, s1, ra
407:              slti         a4, t6, 1484
                  nop
                  srai         s11, s8, 25
                  srli         t4, s7, 8
                  or           s1, t1, a6
                  sll          s1, s8, gp
                  srai         s11, s7, 21
                  srai         gp, a4, 2
                  slti         t6, tp, -480
                  bgeu         s2, s7, 427f
                  beq          t1, s2, 434f
                  blt          a5, s9, 436f
                  lui          ra, 182918
                  srl          a7, a4, tp
                  slt          ra, s4, t3
                  lui          t6, 572333
                  sub          t5, s8, s3
                  slti         a4, s8, -1221
                  slti         tp, s11, -452
                  nop
427:              blt          sp, a2, 445f
                  sltu         s10, s2, s2
                  and          s7, t4, s6
                  slt          gp, a4, t5
                  beq          t5, s9, 441f
                  bgeu         s8, zero, 436f
                  beq          s6, t3, 439f
434:              bltu         t5, s3, 442f
                  add          s0, t0, t3
436:              add          s8, t2, tp
                  srl          sp, t0, a2
                  blt          s0, s7, 439f
439:              blt          zero, a2, 449f
                  andi         t2, t3, -923
441:              srl          t1, tp, s7
442:              beq          t3, s10, 459f
                  auipc        s10, 596426
                  auipc        s8, 802537
445:              slti         t5, s7, -389
                  slli         a4, a1, 7
                  sltiu        s1, s3, -2020
                  sll          s5, a0, sp
449:              lui          s5, 768439
                  sra          t2, a1, t3
                  and          a3, s1, t6
                  sltiu        s3, s11, 611
                  slt          t0, a6, a3
                  lui          s0, 182761
                  nop
                  beq          s6, gp, 473f
                  addi         s5, zero, -1379
                  sub          gp, a0, t6
459:              sra          t6, a4, s6
                  srl          t6, a4, t1
                  bltu         s0, a1, 478f
                  or           s9, s4, t1
                  bgeu         s7, tp, 481f
                  and          tp, ra, s9
                  beq          s7, tp, 475f
                  sll          ra, ra, s2
                  andi         a6, zero, -1557
                  bltu         s7, a3, 472f
                  lui          ra, 224100
                  slli         s0, s4, 6
                  srl          s1, s10, s4
472:              slti         t3, a1, 1576
473:              nop
                  sltu         gp, a5, s0
475:              srai         tp, s1, 26
                  lui          sp, 333406
                  sra          a3, s5, s10
478:              xori         s9, t3, 1153
                  add          t3, t3, zero
                  slti         a4, s4, 1443
481:              bgeu         s0, a1, 487f
                  bltu         s9, zero, 495f
                  bltu         s3, s9, 496f
                  srai         a1, s8, 9
                  sltiu        s10, t2, 1185
                  srai         s10, a5, 31
487:              sra          a0, t5, s8
                  auipc        t4, 391774
                  addi         a0, t2, 1411
                  blt          t6, s5, 496f
                  and          a4, s3, a4
                  sltu         t4, a2, t0
                  bge          a3, s9, 500f
                  bgeu         t0, a0, 504f
495:              nop
496:              xori         a7, s4, 726
                  srli         t2, a0, 1
                  beq          t1, t4, 513f
                  nop
500:              sll          s11, t0, s11
                  add          a1, s9, t3
                  sltiu        a6, ra, 1788
                  slt          t0, t2, s8
504:              ori          sp, a2, -96
                  xori         zero, ra, 600
                  slti         s8, s8, -729
                  andi         t5, s2, 799
                  bgeu         gp, a1, 512f
                  sll          a6, s9, s7
                  slt          s10, s2, sp
                  andi         t1, zero, -1670
512:              srl          s8, a4, a0
513:              bge          a0, a0, 529f
                  slt          s7, s0, s4
                  auipc        s4, 483349
                  beq          s10, s4, 533f
                  add          zero, a6, t1
                  blt          t5, s2, 525f
                  sltiu        t6, s11, 2016
                  add          a1, s11, s10
                  or           sp, s4, zero
                  nop
                  and          s4, s5, gp
                  blt          t4, tp, 538f
525:              sub          tp, s0, a5
                  xor          sp, gp, gp
                  sltiu        t0, gp, -1048
                  srl          s1, a0, t6
529:              slti         a0, s3, -1395
                  or           t3, a4, s10
                  beq          s0, a7, 532f
532:              sra          s8, ra, a2
533:              srli         s10, s4, 24
                  xori         s1, t4, -664
                  and          s3, s8, s3
                  lui          s10, 516296
                  sra          s5, s6, s8
538:              slli         t6, a5, 8
                  ori          gp, s2, -966
                  slti         a3, s11, -322
                  slti         s9, s7, 824
                  slti         t2, t1, 395
                  bgeu         ra, s11, 554f
                  xori         t3, tp, -1889
                  srai         ra, a0, 12
                  or           t4, a3, tp
                  ori          s5, a6, -643
                  ori          s4, s6, 468
                  srl          s1, a1, t2
                  auipc        s1, 132941
                  nop
                  sll          t6, a7, t1
                  nop
554:              srli         a3, a6, 22
                  srai         s7, t3, 25
                  or           s5, s3, ra
                  ori          t2, t6, 1139
                  slt          s10, a7, s2
                  bge          s0, a2, 578f
                  xori         s5, s5, -2039
                  slli         s11, a3, 13
                  sltu         t1, s7, t4
                  bltu         gp, a2, 573f
                  bge          t2, s7, 575f
                  bltu         a5, a4, 582f
                  ori          a0, tp, -1232
                  sra          a3, s9, tp
                  blt          t3, a0, 582f
                  addi         gp, t1, 90
                  srl          s11, gp, tp
                  andi         s8, a4, 133
                  slti         a7, s7, -1170
573:              nop
                  srli         s9, t4, 0
575:              slli         s0, s7, 3
                  bge          s2, gp, 586f
                  bge          a5, a0, 592f
578:              xor          t6, a1, a4
                  xori         s5, s7, 1796
                  lui          s8, 332916
                  sltu         t4, s9, t5
582:              blt          s8, t5, 588f
                  lui          t3, 109576
                  sltiu        s7, a2, -669
                  auipc        a1, 796390
586:              xor          a5, a4, s9
                  andi         a4, s2, 112
588:              lui          s9, 809872
                  addi         t6, t6, -1099
                  addi         s1, a6, -618
                  add          s0, a3, s4
592:              bne          t1, tp, 610f
                  beq          s5, t3, 597f
                  slti         ra, a4, -1701
                  sltu         a0, s2, a2
                  xor          ra, t6, a4
597:              bge          a0, t3, 616f
                  beq          t1, s4, 615f
                  blt          t6, s7, 607f
                  and          a7, tp, zero
                  nop
                  srl          s3, t2, tp
                  bltu         a7, a6, 613f
                  srli         s3, s0, 12
                  bne          a4, t3, 622f
                  andi         ra, s6, 1665
607:              srai         s11, s4, 21
                  srl          s7, a5, s3
                  sltiu        s9, s1, 1003
610:              addi         tp, s5, -758
                  sltu         sp, s9, s5
                  xor          s7, s0, zero
613:              nop
                  srli         sp, t2, 22
615:              sll          t5, s11, s1
616:              addi         t2, ra, -45
                  sub          s9, sp, a5
                  srai         a3, a1, 19
                  srai         s9, s2, 11
                  slt          ra, s2, t3
                  xor          tp, t2, a4
622:              add          sp, gp, a1
                  blt          s0, a7, 629f
                  slt          a1, a0, a2
                  srl          a0, s9, t3
                  nop
                  and          t5, s10, a1
                  xor          s5, s4, a7
629:              and          t6, s2, t6
                  srl          t3, t4, s11
                  srli         t5, a5, 21
                  srl          t6, s3, t4
                  bgeu         s11, t2, 646f
                  add          s3, sp, s3
                  sll          s4, a2, sp
                  slt          t0, a1, tp
                  lui          t6, 754552
                  srai         zero, s11, 18
                  bltu         s10, s11, 646f
                  bltu         a5, t6, 641f
641:              sltu         s0, a4, a4
                  srl          t5, a1, s10
                  sub          s3, a7, t2
                  ori          s7, s0, 1318
                  bge          t6, s7, 658f
646:              add          s7, s0, t0
                  andi         s3, a7, 1118
                  add          tp, gp, s9
                  xor          ra, s3, a0
                  nop
                  srl          tp, t5, s8
                  or           t5, a5, sp
                  bgeu         s8, t3, 664f
                  blt          s6, t5, 661f
                  bltu         s6, ra, 659f
                  ori          s10, t0, -259
                  add          t0, a7, t1
658:              sra          s0, gp, s9
659:              srli         s7, a3, 14
                  slt          s11, t3, t1
661:              sltu         s1, t6, ra
                  bne          a0, s8, 672f
                  slt          s7, a6, s1
664:              slli         s4, tp, 29
                  ori          a3, t2, 1405
                  blt          t3, a7, 682f
                  blt          a4, s4, 677f
                  bne          a7, t3, 686f
                  bgeu         a3, t4, 686f
                  or           t6, a1, t5
                  sra          s10, s5, t2
672:              ori          a5, ra, -1035
                  bgeu         s11, t6, 679f
                  slti         s0, t5, 1380
                  addi         s7, ra, -1980
                  bge          a5, s8, 677f
677:              andi         a4, s9, -859
                  nop
679:              blt          t6, t4, 689f
                  slt          s0, t3, s6
                  bgeu         s3, a2, 685f
682:              bltu         tp, gp, 693f
                  slti         t5, s4, 1805
                  or           t6, t0, t0
685:              or           a3, s4, a0
686:              lui          t6, 746785
                  sltu         a5, t3, t6
                  slti         sp, t2, -770
689:              sub          a7, a1, t6
                  bltu         a4, s2, 704f
                  slt          s8, sp, s7
                  andi         t5, sp, 616
693:              add          sp, a0, a6
                  srl          s10, s0, t2
                  and          a6, s3, a4
                  bltu         a3, sp, 709f
                  sra          s10, sp, s7
                  nop
                  srli         t6, gp, 22
                  bltu         s5, a6, 718f
                  bne          t5, a2, 711f
                  slli         a1, t4, 14
                  srai         s11, s8, 15
704:              bltu         s4, s6, 710f
                  bge          s11, s10, 712f
                  srai         s8, s0, 28
                  srli         s0, s4, 0
                  and          a3, a7, gp
709:              andi         t5, a1, 1755
710:              slli         s7, zero, 15
711:              lui          a3, 948693
712:              bge          a5, s5, 731f
                  sltiu        s7, t6, 144
                  srl          ra, s0, t1
                  bltu         a3, s11, 732f
                  bne          tp, t3, 726f
                  or           ra, ra, t1
718:              sra          s9, gp, t6
                  add          a5, t3, t6
                  sub          s9, t3, s9
                  srai         s3, gp, 31
                  lui          t2, 939240
                  and          sp, a4, a5
                  lui          s9, 1035985
                  nop
726:              srai         sp, a5, 24
                  srl          s5, s6, s3
                  bltu         s8, s3, 729f
729:              blt          t4, t3, 736f
                  slti         a0, tp, 1736
731:              sub          s4, a2, t6
732:              sltiu        s4, a4, -29
                  nop
                  or           s10, a6, s6
                  auipc        a1, 682153
736:              slti         s11, a6, -1495
                  srai         ra, t0, 22
                  bge          a3, s9, 749f
                  and          a1, s9, t4
                  andi         tp, t3, 384
                  beq          zero, s8, 747f
                  lui          a0, 956806
                  bge          a7, t0, 760f
                  slt          a6, a5, t6
                  blt          t2, gp, 761f
                  beq          s1, t4, 763f
747:              andi         s11, s10, -964
                  bgeu         a2, s7, 758f
749:              and          a5, a5, s0
                  srli         t4, s11, 2
                  xor          a0, t0, tp
                  lui          s7, 592262
                  sll          a0, s7, a3
                  sra          s4, zero, ra
                  bne          s6, a6, 765f
                  sra          a3, s7, s9
                  sll          s3, a3, s10
758:              lui          a3, 321087
                  beq          s4, s6, 763f
760:              bgeu         s5, a2, 771f
761:              sltiu        tp, tp, -613
                  slti         s11, s11, 1866
763:              lui          t6, 65616
                  sra          s7, zero, s4
765:              sub          gp, tp, a3
                  or           a4, a0, a0
                  sub          a5, t6, gp
                  beq          a4, t2, 785f
                  add          s10, t5, s11
                  and          a3, s8, a3
771:              slli         t0, a3, 7
                  sll          s5, a1, a6
                  bge          s11, t4, 783f
                  sltu         t5, s5, s9
                  sra          t2, tp, a7
                  srli         s4, t5, 6
                  slt          s5, a5, tp
                  sub          a6, a7, s11
                  bge          tp, t1, 783f
                  nop
                  auipc        t0, 394912
                  bge          a6, a3, 786f
783:              bge          s9, gp, 789f
                  bge          a3, s10, 785f
785:              and          s1, s0, t6
786:              addi         a6, t0, -525
                  slli         tp, s0, 21
                  bgeu         s9, a7, 796f
789:              srli         a7, s4, 27
                  and          s0, s10, a7
                  sltiu        zero, tp, -876
                  slti         a6, t0, 1305
                  addi         t5, s6, -731
                  andi         a7, gp, -437
                  blt          a7, t6, 808f
796:              srai         s10, s4, 10
                  beq          t5, s9, 815f
                  sub          s8, t6, t0
                  bgeu         s10, zero, 814f
                  srli         a3, a2, 14
                  addi         t3, a2, 364
                  ori          a7, s4, -665
                  ori          a5, a3, 1286
                  srli         zero, a5, 21
                  andi         zero, s7, -10
                  xori         a1, a3, 641
                  bne          s8, s3, 820f
808:              srl          s1, a3, s5
                  srli         t6, t6, 5
                  srai         s8, sp, 2
                  sltiu        t2, a6, 2035
                  lui          t5, 558415
                  nop
814:              lui          a5, 898360
815:              or           a4, a0, a7
                  auipc        gp, 808233
                  slt          a1, a0, s8
                  slli         gp, s10, 30
                  addi         sp, t0, 750
820:              ori          s7, t1, 235
                  ori          t6, a4, 1674
                  lui          t5, 398611
                  and          t5, s6, s2
                  slti         s1, gp, 404
                  add          s0, t0, a2
                  sub          tp, s1, s3
                  blt          a5, a0, 844f
                  and          a1, t4, s2
                  nop
                  sltu         a7, s2, s1
                  beq          a4, tp, 848f
                  srai         a4, s5, 3
                  srl          s3, a0, s9
                  bge          s0, s5, 838f
                  xor          s8, gp, t3
                  sltiu        a6, ra, 677
                  xor          tp, a6, t4
838:              srli         s10, t1, 30
                  sltu         s1, s11, t2
                  bltu         s1, s5, 847f
                  sra          t0, a3, a0
                  nop
                  nop
844:              add          a3, a4, t5
                  beq          s0, s2, 858f
                  or           t4, a6, a1
847:              bge          s3, s3, 866f
848:              sltiu        a6, tp, 1387
                  addi         s10, a5, 2010
                  sub          t0, t5, gp
                  bge          s11, s6, 869f
                  beq          a6, tp, 862f
                  xori         t6, s10, 1996
                  bltu         a0, a4, 865f
                  auipc        ra, 442524
                  srl          zero, s4, t4
                  srai         t2, a3, 18
858:              beq          sp, s2, 864f
                  xori         s5, a7, -1878
                  nop
                  beq          t0, ra, 865f
862:              and          a4, s11, s5
                  xori         s8, s7, -1314
864:              srl          t1, t4, sp
865:              auipc        s4, 918449
866:              beq          ra, t5, 883f
                  srl          sp, a6, t3
                  slti         a3, a5, -341
869:              nop
                  bne          s6, a0, 885f
                  bge          s4, s3, 875f
                  lui          t5, 803170
                  and          sp, t3, zero
                  addi         t4, a2, 1858
875:              andi         zero, s3, -1447
                  add          a0, sp, a3
                  addi         ra, a1, 411
                  sltiu        tp, t6, -826
                  sra          s0, zero, a6
                  beq          a5, ra, 881f
881:              sltu         gp, tp, s5
                  sub          t1, s11, t4
883:              sub          s5, s1, s2
                  slti         tp, s5, -518
885:              or           a0, zero, ra
                  auipc        tp, 1022074
                  sll          t1, t5, s8
                  sll          ra, s1, a2
                  add          a0, t2, t1
                  srai         a4, a4, 10
                  sll          s0, s11, a4
                  sltu         t6, a2, ra
                  bge          a4, s0, 911f
                  and          s9, s6, t5
                  sltu         a0, t5, a4
                  slti         tp, a7, -1722
                  beq          a2, t4, 904f
                  slt          s8, a3, a5
                  auipc        s1, 866815
                  or           a4, s7, s6
                  srai         a0, s1, 19
                  xor          a6, sp, a4
                  and          s1, a0, tp
904:              nop
                  sra          t1, a0, s6
                  and          s11, sp, a7
                  srl          s1, s4, t3
                  or           gp, tp, a0
                  and          sp, a1, t4
                  sll          s7, gp, t4
911:              bge          s4, s2, 925f
                  sltu         a0, sp, sp
                  srli         s11, a1, 31
                  bne          a6, sp, 924f
                  sltiu        a0, t1, -1254
                  blt          s7, a4, 927f
                  srli         a5, s4, 1
                  xori         zero, a5, 599
                  sll          tp, t3, ra
                  sra          s7, s11, s0
                  nop
                  srli         ra, s8, 2
                  beq          a7, a1, 924f
924:              sra          a1, s11, s7
925:              beq          s3, ra, 935f
                  xor          s4, s1, a5
927:              sub          ra, s3, a2
                  ori          s5, t0, -1516
                  srli         s5, a1, 11
                  slli         t3, sp, 16
                  sltu         s3, s3, t3
                  add          t0, t5, tp
                  lui          sp, 997680
                  bltu         s6, sp, 950f
935:              sub          a7, ra, t5
                  auipc        s3, 423145
                  beq          t4, a1, 954f
                  beq          t5, a4, 946f
                  sltu         t1, t3, gp
                  or           s1, s11, s4
                  sra          t6, t3, s3
                  srl          t2, s9, s4
                  xori         t0, t5, -1820
                  and          a0, t3, t2
                  add          s5, s0, sp
946:              xor          t4, ra, a1
                  srai         s11, t3, 18
                  nop
                  slli         t4, gp, 17
950:              auipc        t1, 151558
                  sltu         ra, a7, gp
                  or           a7, a7, s11
                  srl          t2, t5, a0
954:              nop
                  auipc        tp, 281257
                  bgeu         a5, s8, 962f
                  sltu         t5, s11, t2
                  xori         sp, a4, -1535
                  blt          t6, a2, 969f
                  sltiu        a4, s11, -1945
                  bltu         t3, s1, 971f
962:              lui          sp, 403016
                  bne          s3, s7, 969f
                  sub          t3, a0, t6
                  nop
                  bge          a2, t5, 972f
                  sltu         s0, sp, s11
                  bltu         ra, gp, 974f
969:              auipc        s0, 660140
                  and          t6, a5, a0
971:              sra          sp, s0, s11
972:              slli         s3, t2, 31
                  slli         s8, t1, 5
974:              addi         sp, s1, -1588
                  bne          s5, s0, 992f
                  bltu         t2, tp, 993f
                  bge          s2, a4, 981f
                  sltiu        s11, s5, -1005
                  xor          s11, a0, a0
                  slli         a1, s9, 13
981:              srl          t4, a4, a0
                  addi         s9, gp, 651
                  sll          a6, s1, t5
                  bltu         t1, t4, 994f
                  add          t3, zero, s3
                  slti         t3, a3, -355
                  auipc        a4, 897242
                  ori          a0, gp, -1430
                  blt          t3, a7, 1008f
                  or           s0, s2, a7
                  bltu         t4, gp, 1002f
992:              slti         gp, t4, -521
993:              bgeu         s3, gp, 1003f
994:              bgeu         s9, a1, 1011f
                  ori          t4, t1, 913
                  sra          t3, t3, t3
                  srai         t0, s5, 3
                  and          s5, a5, s8
                  auipc        t2, 922119
                  add          t4, tp, a6
                  sll          s4, sp, s3
1002:             xor          t3, s3, a6
1003:             bgeu         s1, a0, 1009f
                  srli         t1, s11, 31
                  beq          a7, s4, 1009f
                  bge          zero, tp, 1014f
                  sra          t2, a2, t6
1008:             xori         s9, a0, -1620
1009:             ori          s3, a2, -1998
                  bgeu         t2, ra, 1020f
1011:             sra          t1, s5, s11
                  xori         gp, t0, 1536
                  sra          zero, s8, t5
1014:             xori         t2, s1, -1333
                  sltiu        a1, s0, -1957
                  bltu         s7, t2, 1034f
                  andi         s10, s6, -432
                  bge          a2, a3, 1028f
                  slti         t1, s11, 297
1020:             add          s8, t2, a4
                  or           t4, s1, a5
                  andi         s10, t0, -709
                  andi         a6, t1, 1812
                  auipc        s3, 70199
                  srai         s0, s2, 19
                  lui          s5, 994949
                  bltu         t5, s10, 1045f
1028:             ori          t2, a5, 1031
                  slt          a4, a5, s10
                  bltu         a4, s7, 1044f
                  andi         a1, t2, -1369
                  add          a3, s11, a1
                  xor          sp, sp, sp
1034:             slli         sp, s3, 25
                  nop
                  addi         a3, sp, -1065
                  andi         s1, t6, -1274
                  beq          zero, t3, 1039f
                  la           s1, region_0+637 #start riscv_load_store_rand_instr_stream_8
                  lbu          t3, 908(s1)
                  sltiu        s11, a0, 1637
                  lbu          a3, 318(s1)
                  lb           t6, 716(s1)
                  lhu          s7, -477(s1)
                  sb           s10, -626(s1)
                  srl          tp, a2, t3
                  lhu          t3, 447(s1)
                  lui          s3, 878161
                  slti         s4, a2, 1982
                  sh           a6, 901(s1)
                  lbu          a5, 1194(s1)
                  lbu          zero, -211(s1)
                  lb           s7, -101(s1)
                  lbu          s11, 12(s1)
                  sltiu        s3, a6, 182
                  sh           s10, 147(s1)
                  lb           t6, 973(s1)
                  or           t5, s0, tp
                  lui          s9, 384668
                  sub          tp, sp, t6
                  lbu          sp, 358(s1)
                  slti         s0, t3, -859
                  sb           s8, -480(s1)
                  sltiu        s10, a5, 140
                  lb           a6, 162(s1)
                  slli         s10, s0, 19
                  sra          s10, s1, a1
                  add          s8, s1, t4
                  sw           s9, 423(s1)
                  lbu          zero, -448(s1)
                  lb           s9, 315(s1)
                  auipc        s8, 318220
                  slti         s4, s9, 471
                  addi         a7, a6, -365
                  lbu          a3, 1329(s1)
                  sll          ra, a5, t3
                  add          s9, a2, t5
                  addi         t2, t4, -1499
                  auipc        a4, 444059
                  sb           s5, -31(s1)
                  lbu          t2, 808(s1) #end riscv_load_store_rand_instr_stream_8
1039:             bge          tp, s3, 1043f
                  sltu         ra, t1, zero
                  bne          a1, a0, 1048f
                  bne          t6, s1, 1055f
1043:             auipc        a0, 582306
1044:             xori         ra, a2, 1928
1045:             add          s1, t4, t5
                  srai         a6, s11, 9
                  auipc        a5, 167257
1048:             xor          s1, t5, gp
                  andi         t4, s8, -479
                  slti         ra, a0, -449
                  nop
                  auipc        zero, 697309
                  sll          s0, s0, t2
                  blt          zero, tp, 1069f
1055:             bgeu         s8, a2, 1056f
1056:             auipc        tp, 38927
                  beq          s3, s2, 1064f
                  nop
                  sra          a6, s6, s3
                  srai         a3, a6, 6
                  slt          t2, s5, t3
                  srl          t5, s7, s11
                  nop
1064:             bne          s1, t5, 1077f
                  lui          t1, 979539
                  blt          gp, t6, 1076f
                  sltiu        s7, tp, 486
                  lui          s0, 780226
1069:             addi         s10, a2, -2009
                  srli         gp, s3, 21
                  blt          t2, a3, 1082f
                  bgeu         a6, s11, 1088f
                  and          s8, t0, t2
                  sll          t0, a7, t4
                  andi         a4, sp, -92
1076:             bne          t1, a4, 1093f
1077:             and          a7, gp, s4
                  xor          s7, s9, s9
                  blt          t6, a6, 1083f
                  slti         a1, s8, 1372
                  slti         a1, ra, 1124
1082:             beq          a5, a2, 1099f
1083:             bltu         t4, s0, 1084f
1084:             bge          s4, s7, 1095f
                  srli         t2, s3, 21
                  slti         t6, tp, 1166
                  and          t3, t1, s9
1088:             bge          t0, s6, 1098f
                  bne          s7, a3, 1106f
                  nop
                  sub          tp, ra, s10
                  srai         s10, t6, 25
1093:             srl          s10, s4, s2
                  blt          t6, t2, 1111f
1095:             bltu         ra, zero, 1103f
                  srai         t4, s7, 15
                  add          t2, a1, zero
1098:             andi         s9, s6, -1579
1099:             auipc        s3, 150134
                  slti         t6, a3, -1342
                  slt          a0, a6, a3
                  bgeu         a5, a4, 1119f
1103:             sra          a6, s8, gp
                  sltu         t0, s3, s10
                  bge          s3, a5, 1115f
1106:             xori         t4, t0, 549
                  slli         s11, s6, 28
                  bne          s4, t0, 1114f
                  bgeu         s11, a1, 1116f
                  or           s0, ra, a0
1111:             bgeu         a6, s5, 1129f
                  sll          tp, t2, zero
                  addi         s7, s10, 1755
1114:             bne          s6, a6, 1121f
1115:             sltiu        t3, s1, 244
1116:             and          t2, s11, s3
                  blt          a3, a4, 1133f
                  ori          a5, s6, -50
1119:             slti         ra, a5, 1147
                  ori          s9, s11, 2001
1121:             bge          zero, a3, 1132f
                  andi         a3, s8, -1563
                  nop
                  slli         s1, a2, 29
                  sll          a0, s3, t2
                  slt          t1, t3, t3
                  srai         a3, a1, 19
                  or           zero, t6, a3
1129:             add          tp, t4, s1
                  bne          gp, a7, 1140f
                  bgeu         t2, a3, 1135f
1132:             slli         ra, a1, 21
1133:             slt          s11, gp, t1
                  slt          gp, a6, s1
1135:             srl          s10, s10, tp
                  sra          s1, tp, t3
                  sub          s7, a5, t4
                  sltiu        t6, ra, -400
                  beq          a1, s8, 1153f
1140:             xor          sp, tp, t4
                  or           t1, s5, a5
                  sub          s5, a0, a0
                  addi         t1, t5, 1054
                  xori         s10, s2, 1254
                  add          a3, s9, a4
                  auipc        s7, 553496
                  auipc        t0, 614974
                  ori          a0, t0, 1853
                  bltu         gp, t1, 1150f
1150:             xori         t5, tp, 527
                  blt          a0, t2, 1169f
                  add          zero, t0, a1
1153:             bne          a7, sp, 1163f
                  srai         s0, s3, 25
                  beq          s9, a0, 1161f
                  addi         a0, t5, 369
                  slli         ra, tp, 23
                  bge          t6, a4, 1171f
                  sltu         zero, s6, a0
                  lui          s1, 1026287
1161:             slt          s1, t0, t6
                  or           s11, t5, a1
1163:             sltiu        t0, s11, -1854
                  slt          s0, zero, s8
                  addi         s9, ra, 1950
                  or           s5, s2, s9
                  sub          a6, t5, t6
                  sltiu        a4, t4, -972
1169:             beq          zero, t3, 1175f
                  srl          t5, s1, gp
1171:             xori         zero, gp, -403
                  or           s3, s2, a4
                  srli         tp, a7, 26
                  auipc        t0, 105383
1175:             slti         zero, a4, -470
                  nop
                  auipc        s3, 840860
                  nop
                  addi         s3, s1, 712
                  bne          s0, s2, 1195f
                  lui          a7, 452628
                  bge          s5, s9, 1195f
                  bge          t4, t6, 1193f
                  slt          s11, s8, a5
                  add          s11, a5, sp
                  slti         s5, a6, -454
                  srl          sp, s0, s1
                  bge          s11, ra, 1207f
                  srl          s7, ra, s6
                  sltiu        t5, t1, -574
                  xor          zero, s8, a2
                  blt          s10, ra, 1196f
1193:             bne          s3, s11, 1209f
                  sub          s1, s3, s10
1195:             nop
1196:             xor          s7, s4, a7
                  sll          s3, t0, t3
                  or           a0, s4, s6
                  blt          t2, s8, 1205f
                  xori         t5, a1, 458
                  sltu         s0, s5, t5
                  srl          s3, a0, s6
                  srli         t0, t5, 4
                  slli         t3, s2, 22
1205:             auipc        t3, 414634
                  bge          a1, s11, 1223f
1207:             sltiu        t3, sp, -1809
                  bge          s1, t6, 1214f
1209:             sra          t6, zero, a6
                  andi         s8, s6, 264
                  xor          s8, t5, t4
                  blt          zero, zero, 1229f
                  srli         a3, s3, 20
1214:             andi         a1, s11, 1138
                  bltu         ra, a6, 1222f
                  lui          a1, 738031
                  slt          a7, s1, s4
                  blt          s0, t5, 1232f
                  andi         zero, a6, -234
                  srai         t0, sp, 6
                  bne          a1, s5, 1231f
1222:             lui          a4, 133630
1223:             andi         sp, a4, -821
                  lui          s4, 1004466
                  ori          a1, t4, -1140
                  bgeu         tp, s11, 1241f
                  sra          t5, s9, t3
                  or           a1, t1, s7
1229:             xor          t0, a2, a4
                  blt          s4, t3, 1241f
1231:             slti         t6, a5, 1293
1232:             sltiu        t3, s1, 2028
                  andi         a7, t1, 485
                  bltu         t1, a5, 1251f
                  sltu         t3, s1, s6
                  bltu         a1, t5, 1240f
                  or           t3, zero, a3
                  and          zero, s2, s0
                  xori         t1, s11, -1049
1240:             xori         t3, s5, 754
1241:             lui          ra, 509780
                  nop
                  srli         t2, a4, 26
                  andi         a5, s4, 365
                  ori          a1, sp, 1661
                  sltiu        a4, t4, 119
                  beq          s11, t6, 1258f
                  bne          t3, a3, 1252f
                  sra          a0, t5, s2
                  andi         t5, s1, -410
1251:             lui          a0, 925072
1252:             bgeu         t3, ra, 1253f
1253:             xori         gp, t5, 405
                  sll          ra, zero, gp
                  sltu         s8, s0, a4
                  ori          t6, s7, -930
                  slli         s3, s10, 20
1258:             srli         a0, t4, 3
                  srai         s8, a7, 13
                  sll          s7, t3, gp
                  srai         zero, t3, 19
                  lui          s4, 985513
                  bne          t4, sp, 1273f
                  slti         s5, zero, 580
                  srai         s4, s11, 12
                  sltiu        ra, zero, -2018
                  blt          gp, s8, 1285f
                  beq          a0, s4, 1278f
                  andi         s3, a1, -966
                  slli         s5, s4, 25
                  srli         t0, s1, 22
                  beq          s0, a3, 1280f
1273:             auipc        a4, 281637
                  nop
                  auipc        a7, 106739
                  la           s0, sub_8
                  add          t2, a1, t4
                  add          s8, a5, t2
                  addi         t1, t4, 904
                  addi         s0, s0, -79
                  auipc        a4, 937567
                  blt          s5, gp, sub_5_j8 #branch to jump instr
                  sra          a1, s10, a6
                  sltu         gp, a2, zero
sub_5_j8:         jalr         t1, s0, 79 #jump sub_5 -> sub_8
                  auipc        zero, 644487
                  sra          a6, t6, t0
1278:             srai         s7, tp, 21
                  auipc        gp, 363946
1280:             xor          tp, s9, s10
                  bge          s9, a3, 1293f
                  add          zero, a7, t3
                  sll          tp, s1, t2
                  sltu         gp, s5, s7
1285:             slti         t6, a5, -493
                  sub          t4, t1, a4
                  lui          a6, 657438
                  addi         t4, s10, -1690
                  slli         ra, a4, 4
                  bgeu         a0, s5, 1293f
                  slli         a0, s10, 31
                  and          t5, s6, s0
1293:             sub          a4, s11, s11
                  srl          a1, s8, t5
                  or           s0, t1, a3
                  ori          t5, s6, 25
                  srl          s5, s7, s1
                  sll          s0, t0, t6
                  auipc        t6, 95298
                  lw           t1, 4(a2)
                  addi         a2, a2, 48
                  lui          a6, 790980
                  slti         s4, s6, -1254
                  sra          t3, s10, t2
1711:             addi x14, x6, 1
1711:             jalr x14, x14, 0
sub_3:            bgeu         s3, s11, sub_3_stack_p
sub_3_stack_p:    addi         a2, a2, -64
                  auipc        a4, 25865
                  sw           t1, 4(a2)
                  sub          a5, a3, s10
                  srli         s0, a7, 21
                  sub          s10, tp, tp
                  xor          a1, t6, t5
                  beq          a5, t4, 12f
                  slli         a1, a7, 2
                  sub          s11, s3, a1
                  bltu         t5, s3, 18f
                  sltiu        zero, s9, -1377
                  sltiu        a5, t1, 1312
                  beq          t1, a1, 13f
                  xori         t3, s8, -260
                  sltu         s0, a6, t1
                  ori          a3, a0, -1182
12:               beq          t6, a1, 20f
13:               bge          sp, sp, 23f
                  or           s1, zero, s9
                  sub          gp, s0, s8
                  bge          t4, a0, 25f
                  nop
18:               bge          s3, s9, 27f
                  bgeu         sp, a1, 25f
20:               bge          s11, tp, 27f
                  beq          t4, ra, 32f
                  slt          s4, a6, zero
23:               sra          s10, s7, t3
                  addi         s5, ra, 1783
25:               nop
                  blt          s5, s0, 39f
27:               sltiu        a1, s2, 1141
                  sub          t6, a7, s0
                  sltu         t4, a4, a5
                  srl          tp, s6, t0
                  addi         ra, a0, -1035
32:               sltu         a1, s4, tp
                  auipc        t3, 251476
                  blt          s11, t0, 38f
                  slli         s0, tp, 31
                  add          s8, zero, a7
                  ori          a4, a5, -1707
38:               xor          a7, s5, sp
39:               srl          a5, s8, t2
                  addi         a6, gp, 1135
                  sub          t0, a7, s7
                  sltiu        a6, t6, -784
                  lui          sp, 721381
                  sub          a4, t4, gp
                  srai         t3, a6, 22
                  bge          gp, t6, 50f
                  slli         a3, a4, 25
                  andi         ra, sp, 1749
                  slti         t1, sp, -1462
50:               bge          t0, a0, 54f
                  and          t4, tp, gp
                  bge          a5, sp, 54f
                  blt          t6, a1, 54f
54:               and          s0, a3, a3
                  lw           t1, 4(a2)
                  xor          a1, s4, s5
                  slli         t3, s2, 17
                  addi         a2, a2, 64
                  sra          t3, s8, s10
                  lui          a4, 233162
67:               addi x10, x6, 1
67:               jalr x10, x10, 0
sub_8:            bge          s6, s7, sub_8_stack_p
                  slti         ra, zero, 479
                  sltiu        a5, s11, 1714
                  slt          a7, s6, a1
                  ori          a7, s6, 81
                  xori         t5, a5, 1837
                  nop
                  auipc        s4, 186226
sub_8_stack_p:    addi         a2, a2, -48
                  sw           t1, 4(a2)
                  xori         s8, sp, 107
                  la           sp, region_0+190 #start riscv_load_store_rand_instr_stream_1
                  sltiu        ra, s10, 1032
                  lhu          s4, 4(sp)
                  sltiu        a1, s0, -794
                  lbu          s7, -1(sp)
                  sb           t5, -3(sp)
                  lb           t4, -15(sp)
                  sltiu        a4, s2, -400
                  srli         tp, s6, 2
                  lbu          a4, 1(sp)
                  or           s5, a1, a3
                  ori          gp, s9, -544
                  lw           t3, -14(sp)
                  sh           a2, 4(sp)
                  auipc        a1, 313012
                  lw           s10, 14(sp)
                  or           s5, tp, a0
                  slti         t5, s6, -1348
                  slti         a0, s6, -483
                  sw           ra, 2(sp)
                  sb           a2, 6(sp)
                  srl          a5, s2, s4
                  sb           s10, 3(sp)
                  lbu          s1, 9(sp)
                  sb           t3, 8(sp)
                  sb           zero, -12(sp)
                  sll          s10, s5, s8
                  slli         zero, a0, 15
                  srl          a6, s7, ra
                  sltu         t0, sp, s5
                  lh           s3, -10(sp)
                  sh           ra, -2(sp)
                  slt          t4, t2, a6
                  srai         s1, s9, 18
                  sb           a6, -3(sp)
                  sra          s5, t0, s3
                  lbu          zero, 9(sp)
                  lb           a3, -15(sp)
                  sb           s6, -3(sp)
                  lb           t6, 5(sp)
                  lbu          s11, 1(sp)
                  andi         t5, a6, -1287
                  srai         a5, a0, 5
                  sb           t1, 8(sp)
                  lbu          a1, 16(sp)
                  sb           s11, 14(sp)
                  slli         a0, sp, 3
                  lb           t5, 9(sp)
                  lh           s8, -12(sp)
                  lbu          a0, -7(sp)
                  sb           gp, -5(sp) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_0+1059 #start riscv_load_store_rand_instr_stream_0
                  sb           s6, 119(sp)
                  sw           t5, -415(sp)
                  lh           a6, -757(sp)
                  sw           s8, 377(sp)
                  sh           a0, 539(sp)
                  srl          a6, s8, s4
                  sltu         s11, a3, t1
                  lh           a5, 839(sp)
                  lb           a4, 177(sp)
                  sltiu        ra, tp, -1688
                  lbu          tp, 170(sp)
                  xori         s9, a4, 1687
                  sub          t2, ra, s4
                  or           s4, a0, s5
                  lb           s11, 548(sp)
                  lbu          a5, 216(sp)
                  slli         t1, s9, 0
                  lbu          a6, 264(sp)
                  addi         t2, a2, 930
                  lb           s1, -620(sp)
                  sll          s1, s5, t0
                  slt          s4, t6, s6
                  nop
                  sll          a6, t6, a4
                  lb           a4, 782(sp)
                  sh           s8, 465(sp)
                  lb           a4, 26(sp)
                  slli         s0, sp, 16
                  sltu         t4, s2, ra
                  sra          t2, tp, s4
                  srai         a1, a3, 12
                  sltiu        s11, a3, 207
                  sb           a3, -447(sp)
                  sb           zero, 910(sp)
                  sh           s5, -1023(sp)
                  xor          t0, t0, a5
                  srl          ra, a6, s1
                  slt          a4, t2, a4
                  sra          a6, tp, t1
                  sltiu        s3, s11, 1439
                  lbu          t0, 517(sp)
                  xor          s9, t1, t6
                  xori         a1, a0, -1546
                  nop
                  nop
                  sb           s7, 900(sp)
                  nop
                  lw           s11, -1031(sp) #end riscv_load_store_rand_instr_stream_0
                  auipc        a3, 980510
                  blt          t6, a2, 6f
                  andi         t3, ra, -1909
                  la           gp, region_0+75 #start riscv_load_store_rand_instr_stream_2
                  sll          s3, sp, t0
                  lbu          s8, 39(gp)
                  or           s9, t0, s7
                  lb           s3, -32(gp)
                  auipc        t3, 83317
                  sll          s7, a5, s3
                  sra          t2, gp, t5
                  addi         s0, t3, 1223
                  sub          t5, s1, a3
                  andi         ra, t4, -28
                  add          t4, s7, s1
                  sll          s0, ra, a7
                  or           a4, a2, s1
                  andi         t1, t4, -1302
                  sw           sp, -31(gp)
                  lhu          a4, 35(gp)
                  sb           gp, -28(gp)
                  sh           s5, 9(gp)
                  srl          ra, s7, t4
                  sub          t0, s4, a1
                  lb           a4, 1(gp)
                  lb           a6, 38(gp)
                  xor          zero, tp, zero
                  sb           s9, 50(gp)
                  lbu          sp, 53(gp)
                  slti         t1, s5, -1960
                  lui          tp, 299731
                  lbu          zero, -5(gp)
                  lb           a3, 19(gp)
                  xor          zero, tp, t0
                  srli         tp, a4, 10
                  lh           s10, 51(gp)
                  auipc        s1, 427865
                  sb           s4, 22(gp)
                  sb           tp, 52(gp)
                  and          s7, s4, t0
                  sb           s2, 50(gp)
                  sltu         a3, gp, s8
                  lhu          s3, 37(gp)
                  lbu          s4, -28(gp)
                  lhu          zero, 51(gp) #end riscv_load_store_rand_instr_stream_2
                  sll          ra, ra, sp
                  sltiu        sp, t5, 1267
                  slti         t2, ra, 367
6:                slt          gp, s6, s0
                  srli         a7, t0, 9
                  sltu         a1, gp, a6
                  bgeu         a2, t0, 27f
                  bge          a2, t0, 19f
                  lui          s11, 624228
                  slti         a7, t5, 418
                  and          gp, s0, s5
                  addi         s9, s4, -1003
                  slt          a4, s0, s9
                  nop
                  bge          t5, s6, 21f
                  or           t4, s11, t1
19:               sltiu        s0, t1, 1205
                  bgeu         t5, tp, 35f
21:               and          a6, s6, s7
                  nop
                  ori          t6, s9, -35
                  sltiu        gp, s10, -1105
                  srli         s7, s8, 11
                  andi         a6, a7, -777
27:               addi         s11, t6, 507
                  srl          a5, s9, tp
                  add          s11, t1, zero
                  lui          s9, 804626
                  slti         a3, t5, 736
                  bge          t5, t5, 43f
                  bge          s6, s10, 47f
                  srai         s4, s11, 18
35:               addi         s10, t1, -1628
                  or           s9, s2, a7
                  srai         sp, gp, 0
                  nop
                  lui          s8, 713284
                  xori         a7, s8, 1432
                  add          s3, s1, a4
                  bltu         a3, s0, 53f
43:               blt          a5, gp, 59f
                  lui          a0, 1003817
                  xori         s11, t0, 202
                  bne          gp, s10, 60f
47:               slli         t3, s5, 28
                  andi         s3, a1, -417
                  sltiu        t2, t6, -1590
                  beq          t0, zero, 66f
                  auipc        zero, 661424
                  slt          t2, t4, s11
53:               auipc        zero, 99682
                  xor          s11, sp, t4
                  auipc        a4, 101914
                  slti         t0, a2, 568
                  add          s4, a5, s0
                  blt          s7, t3, 73f
59:               slti         s4, t6, -783
60:               addi         zero, s6, -292
                  nop
                  andi         s3, s0, 1995
                  xori         t0, t0, -63
                  nop
                  ori          a7, t1, 221
66:               ori          a0, ra, -1482
                  bgeu         t1, a0, 80f
                  nop
                  andi         s8, a4, 1461
                  sltiu        gp, s10, 45
                  sltiu        s10, s11, 343
                  bltu         a1, gp, 84f
73:               slt          a1, a2, t3
                  bgeu         s10, tp, 85f
                  sra          a0, s4, a0
                  blt          t1, ra, 88f
                  xor          s5, s1, gp
                  xori         a0, zero, 1465
                  xor          a7, s11, s8
80:               ori          t2, a0, 121
                  beq          a6, sp, 92f
                  sub          t3, a0, ra
                  slti         a6, t4, 1180
84:               sra          a1, t1, a0
85:               andi         t2, a1, -1002
                  auipc        t1, 399050
                  slt          zero, tp, gp
88:               addi         s8, a7, -513
                  sub          s1, t0, s2
                  add          tp, a0, s7
                  lui          tp, 102497
92:               beq          a5, gp, 104f
                  add          s3, zero, s1
                  sub          a0, s4, a2
                  sll          s11, a6, t2
                  blt          a1, s5, 100f
                  sra          s1, t5, a0
                  sub          s4, a6, s9
                  srai         t0, a3, 14
100:              bgeu         s10, s8, 107f
                  xor          s9, a1, a4
                  ori          s3, zero, -663
                  andi         a7, tp, -492
104:              sll          a0, gp, a0
                  sra          s10, s4, a6
                  add          t6, s1, sp
107:              bltu         t6, a3, 109f
                  sra          s9, ra, ra
109:              xori         a4, s6, -515
                  or           t2, s11, s0
                  sll          a5, gp, t6
                  sltu         a0, s4, s6
                  ori          tp, t6, -1261
                  slt          s7, a0, s5
                  bgeu         t3, s11, 133f
                  srl          a6, gp, s4
                  xor          a5, s1, s2
                  sub          s4, t0, t1
                  auipc        zero, 949384
                  bne          tp, a0, 121f
121:              slti         s1, t3, 1511
                  beq          a3, tp, 138f
                  slli         s7, tp, 5
                  sltiu        t1, s8, -1487
                  bge          t0, t0, 138f
                  and          s4, sp, ra
                  sra          s3, a6, sp
                  srl          sp, s4, a6
                  add          s0, zero, s8
                  sltu         ra, s9, s10
                  or           a1, t3, a1
                  add          s10, t3, zero
133:              bne          s10, a7, 136f
                  xor          s9, ra, t3
                  srli         t2, s4, 3
136:              bgeu         a2, s2, 139f
                  slt          s10, a2, a4
138:              ori          t3, t1, -1281
139:              nop
                  ori          s4, t3, -1393
                  andi         a3, s9, -1117
                  ori          a6, a4, -1282
                  and          s0, s3, t3
                  auipc        t1, 708730
                  and          sp, sp, a7
                  nop
                  xori         a4, t6, 1937
                  sub          a0, s3, zero
                  srl          a5, s4, a2
                  auipc        a3, 701320
                  add          t4, s8, t3
                  sltiu        t1, s8, -2036
                  bge          t0, s0, 173f
                  lui          s4, 875175
                  beq          a3, s10, 174f
                  srli         a6, t1, 26
                  bltu         a3, gp, 162f
                  andi         s11, s6, 749
                  sra          t0, t6, s6
                  srai         tp, s7, 25
                  srai         t3, sp, 5
162:              bge          s2, a7, 178f
                  nop
                  or           a4, s0, a3
                  and          s1, zero, t5
                  sll          t0, s3, s9
                  nop
                  slt          a5, s9, a0
                  sub          s7, sp, s9
                  sltiu        t3, s7, 1268
                  sra          a7, a1, ra
                  sltu         a1, s4, s9
173:              sll          s9, t6, s6
174:              blt          s0, a0, 179f
                  slli         a7, a6, 18
                  ori          s9, a2, -1950
                  slt          t6, ra, s0
178:              addi         s3, s10, 1186
179:              sra          s0, t3, t6
                  beq          a6, t5, 191f
                  and          t5, zero, s8
                  auipc        ra, 319171
                  srli         sp, ra, 23
                  bgeu         a4, a1, 199f
                  slti         a6, a5, 1858
                  andi         s11, a1, -1564
                  bge          t2, a2, 188f
188:              slt          s5, a2, t0
                  sltu         s10, s1, a5
                  bge          s3, t0, 208f
191:              bne          s11, s11, 205f
                  or           s3, s8, s2
                  bltu         a3, t5, 197f
                  sub          s0, t0, t0
                  beq          t5, a0, 210f
                  xor          s0, t5, ra
197:              slti         s8, t5, -977
                  slti         zero, s0, -969
199:              addi         t0, s4, -177
                  bgeu         a2, a2, 212f
                  or           t0, a1, s10
                  lui          a0, 187507
                  srli         sp, a3, 18
                  slli         s8, s5, 31
205:              sll          ra, a6, sp
                  srai         a6, s2, 1
                  slt          tp, s11, s7
208:              addi         a7, s10, 801
                  slli         t0, zero, 24
210:              sra          s3, gp, a1
                  bne          s3, s7, 231f
212:              sra          s7, a0, s8
                  or           s5, s4, a5
                  xor          s10, s7, s2
                  lui          gp, 946210
                  bgeu         s6, ra, 227f
                  auipc        s7, 163419
                  bne          a7, s2, 225f
                  srli         a5, a3, 4
                  srl          t6, zero, t5
                  bltu         t1, a5, 224f
                  slt          a5, a3, a2
                  sub          s10, gp, s5
224:              srli         t6, t6, 31
225:              bne          s5, t4, 241f
                  slti         gp, zero, -1414
227:              bgeu         s10, t0, 240f
                  beq          sp, t5, 237f
                  ori          gp, a2, -788
                  addi         t3, s10, 1999
231:              blt          t4, t2, 245f
                  andi         t0, s0, 1799
                  sub          t6, t0, s5
                  auipc        t3, 33860
                  ori          a4, ra, -428
                  ori          zero, t2, 1940
237:              bltu         s6, ra, 248f
                  sll          t3, a4, s6
                  srli         t1, a2, 25
240:              blt          a7, t0, 243f
241:              lui          a7, 174962
                  add          s1, s7, s10
243:              sub          ra, s10, a2
                  andi         s0, a6, 1044
245:              srl          ra, a6, t2
                  blt          t5, a4, 258f
                  sra          s7, s8, ra
248:              bltu         t2, s5, 261f
                  ori          a4, a1, -657
                  sra          zero, s0, s4
                  slli         tp, ra, 14
                  xori         s4, s3, -2012
                  srai         t3, s3, 2
                  bge          ra, s0, 272f
                  ori          ra, s1, 1100
                  andi         s4, a6, -141
                  ori          a6, s3, 567
258:              sltu         s0, s10, a1
                  srli         a3, s1, 2
                  slt          a1, s5, zero
261:              xor          s7, sp, sp
                  or           s0, t4, t0
                  slt          t0, s5, a2
                  sra          s4, t1, s11
                  ori          zero, s0, 360
                  sra          s4, s4, ra
                  srl          t4, a0, zero
                  slli         t5, t5, 7
                  add          s11, a5, t4
                  sub          a4, ra, s6
                  sra          s8, s7, t1
272:              or           s0, gp, s2
                  bltu         t0, t5, 277f
                  ori          a1, t5, -2025
                  add          t0, s10, a2
                  bgeu         s3, zero, 281f
277:              auipc        a0, 134005
                  bge          t6, a2, 294f
                  srai         sp, gp, 6
                  bne          a5, t1, 291f
281:              beq          t5, tp, 293f
                  slli         s5, a2, 2
                  bge          t6, s2, 302f
                  sll          a7, a0, ra
                  xori         t5, t2, 1521
                  slt          a1, ra, t4
                  nop
                  slli         s11, s1, 0
                  auipc        t0, 931068
                  add          sp, a6, s2
291:              srli         zero, t2, 24
                  addi         s0, a1, -1108
293:              sub          sp, s5, t6
294:              xor          a4, s0, s10
                  sltu         s3, a1, a7
                  ori          a4, s11, 1103
                  bne          s3, a2, 299f
                  sll          a5, a0, t5
299:              or           t5, zero, ra
                  srai         t3, s0, 0
                  bne          t1, a4, 319f
302:              srli         t6, zero, 6
                  lui          s7, 675640
                  slt          t3, a1, t3
                  ori          s0, s9, 293
                  sub          t2, zero, s4
                  srl          s8, a0, s4
                  andi         a3, tp, -618
                  sra          ra, t6, s10
                  xori         s4, t1, 2025
                  add          s5, s2, t0
                  addi         s5, tp, -892
                  srli         s7, a4, 0
                  bltu         zero, a4, 327f
                  srli         t6, a4, 7
                  nop
                  bgeu         s1, a3, 329f
                  srl          a5, s8, tp
319:              sltiu        s0, a2, -1878
                  blt          a5, a0, 325f
                  bltu         a2, sp, 336f
                  andi         t6, ra, -1503
                  add          s3, a2, t3
                  xori         a3, s0, 1160
325:              andi         t0, s7, 5
                  xor          t1, a2, a6
327:              ori          s5, s5, 984
                  xor          s7, t4, s9
329:              sub          ra, s1, a5
                  srli         s8, a5, 26
                  auipc        t5, 481786
                  beq          t1, a1, 352f
                  slli         t4, t5, 1
                  srai         s1, s10, 13
                  lui          t1, 888267
336:              nop
                  bgeu         s8, s10, 342f
                  nop
                  sltu         t5, sp, s2
                  or           s0, s6, t2
                  srai         sp, s6, 19
342:              sltu         t1, a1, sp
                  xor          tp, t6, a5
                  ori          a7, s4, 472
                  srli         a1, s1, 8
                  slti         s11, a4, 1702
                  bne          s1, s2, 358f
                  sub          s7, a0, t5
                  bgeu         t6, a5, 365f
                  bne          s7, sp, 369f
                  or           t1, a5, t4
352:              addi         s11, t0, 1831
                  slti         s5, s2, 1170
                  beq          t4, a2, 370f
                  beq          s9, gp, 370f
                  sub          a1, s6, t1
                  srli         a5, t6, 31
358:              srai         t1, a1, 0
                  xor          a1, s9, t0
                  xori         t6, s2, 1928
                  beq          t0, t0, 362f
362:              slli         a6, gp, 15
                  bne          t3, a5, 372f
                  sltiu        tp, s8, 1443
365:              slli         a7, s7, 6
                  and          s0, t6, s8
                  bne          a7, a6, 371f
                  xor          a1, s10, a6
369:              slli         a4, t3, 24
370:              slli         s10, sp, 12
371:              sll          s0, s3, a1
372:              nop
                  addi         s0, zero, -1085
                  sll          s5, s10, s2
                  srai         a3, t5, 0
                  sra          a4, a3, s0
                  srli         s1, t4, 25
                  bgeu         s6, s0, 381f
                  sltiu        zero, s8, -1460
                  xor          s5, s10, zero
381:              bgeu         ra, a4, 392f
                  bne          s0, a1, 386f
                  sub          a5, t6, a0
                  bltu         tp, s5, 397f
                  nop
386:              slti         s5, t4, -907
                  auipc        sp, 339962
                  andi         t1, t0, -1265
                  addi         a7, s4, 1747
                  sltu         s11, s5, tp
                  addi         a1, s2, 1473
392:              lui          a4, 464592
                  bgeu         a0, s2, 409f
                  bgeu         s4, a6, 396f
                  lui          a6, 746752
396:              bne          gp, t6, 408f
397:              auipc        s4, 815004
                  lui          t2, 10150
                  beq          s6, a0, 417f
                  srai         ra, ra, 14
                  nop
                  slli         s8, a6, 4
                  slt          s0, t2, s10
                  sll          s8, t2, a5
                  nop
                  srl          t5, zero, s9
                  sll          a0, a1, s6
408:              bge          s2, a5, 420f
409:              sll          gp, t4, a2
                  andi         t1, t1, -777
                  sub          gp, t2, s9
                  and          s5, a4, tp
                  slt          s3, t0, a3
                  srai         a7, a4, 17
                  bne          s5, a3, 426f
                  xori         a3, a4, 1452
417:              sll          t0, a3, a3
                  sll          t0, sp, sp
                  sltiu        s0, t4, -1042
420:              xor          s1, s4, s6
                  lui          a5, 546943
                  bltu         a1, t0, 429f
                  srai         s0, a2, 5
                  srl          s9, tp, s8
                  or           t1, s2, s1
426:              addi         a0, a6, 1726
                  addi         tp, sp, 1192
                  sltiu        s0, t3, 327
429:              bltu         s3, s3, 443f
                  beq          t3, s1, 444f
                  beq          s10, a7, 434f
                  slt          t4, s9, t1
                  beq          s5, t1, 444f
434:              bge          s10, s0, 435f
435:              srl          sp, t3, a6
                  auipc        a7, 710522
                  blt          gp, sp, 450f
                  srl          s11, s4, s3
                  addi         t2, gp, -575
                  blt          ra, s4, 455f
                  auipc        s3, 124626
                  sll          s9, s6, a3
443:              sltiu        s5, t4, -1781
444:              srl          s0, t0, a7
                  sll          t3, s0, s0
                  andi         s0, s6, -752
                  slti         gp, tp, 1729
                  srli         t2, t1, 31
                  sub          a6, t4, tp
450:              sub          s3, s2, a1
                  bne          a5, t5, 462f
                  ori          s4, a0, -105
                  slt          a0, s2, t5
                  sub          a3, zero, s1
455:              auipc        s5, 421437
                  srli         a1, gp, 16
                  slti         t5, s3, 1720
                  srai         a5, s11, 17
                  beq          s0, zero, 474f
                  xor          t4, a5, s5
                  srai         t6, sp, 8
462:              srli         s10, s8, 1
                  sltiu        t2, a3, -157
                  slli         a6, t6, 24
                  bge          a3, s6, 468f
                  addi         a5, t4, -1338
                  sltiu        s11, a0, 729
468:              bge          s9, a3, 479f
                  andi         sp, s7, 1329
                  sub          s0, s0, s3
                  and          a6, t2, a1
                  sltu         t3, a3, s10
                  auipc        s11, 295398
474:              slti         s0, s11, 1016
                  bltu         s5, s9, 479f
                  beq          s2, ra, 479f
                  ori          s1, t6, -402
                  srai         tp, s4, 30
479:              sltu         s0, a4, s6
                  slt          t0, s6, ra
                  lw           t1, 4(a2)
                  xori         t4, a1, 2036
                  nop
                  addi         a2, a2, 48
                  sltu         s4, t2, ra
639:              addi x10, x6, 1
639:              jalr x10, x10, 0
sub_7:            addi         a2, a2, -56
                  sw           t1, 4(a2)
                  slti         tp, a2, 683
                  xor          s9, t5, s3
                  add          t5, s3, t1
                  sub          s0, s11, s11
                  la           s11, region_0+950 #start riscv_load_store_rand_instr_stream_0
                  auipc        gp, 304926
                  sb           s11, 912(s11)
                  lb           s10, 452(s11)
                  and          s4, a2, tp
                  add          t4, zero, s8
                  lh           s4, 848(s11)
                  lbu          s4, 419(s11)
                  sltu         t2, s6, s5
                  sll          s8, s3, s8
                  addi         a3, t3, -1249
                  sra          s5, a0, s10
                  sltiu        a5, t3, 56
                  sltiu        a4, a6, -762
                  sub          t2, s8, t6
                  lb           s5, 907(s11)
                  sb           t4, -774(s11)
                  lb           t5, -29(s11)
                  lh           a7, 964(s11)
                  srl          t1, s6, t6
                  lb           zero, -203(s11)
                  sh           s9, -260(s11)
                  sh           a2, -832(s11) #end riscv_load_store_rand_instr_stream_0
                  la           s10, region_1+427 #start riscv_load_store_rand_instr_stream_1
                  xor          s8, s2, s9
                  srli         t4, s7, 13
                  or           t5, t5, sp
                  sll          s0, s1, s8
                  lb           s1, -53(s10)
                  add          s1, t6, a2
                  sll          s3, t0, t5
                  lbu          a5, -38(s10)
                  lbu          s11, 53(s10)
                  add          zero, s6, s10
                  lbu          s7, 21(s10)
                  auipc        s4, 13160
                  lbu          a7, 30(s10)
                  and          t0, s10, s5
                  srai         t2, s7, 23
                  andi         sp, a4, 1352
                  lui          a0, 162279
                  addi         s5, s7, 140
                  lbu          a5, 0(s10)
                  sub          a6, s5, a5
                  sh           t1, 11(s10)
                  lb           s1, -34(s10)
                  lh           a5, -51(s10)
                  sb           t2, -58(s10)
                  xori         s0, s9, 1571
                  nop
                  sb           a6, -20(s10)
                  sb           t3, 37(s10)
                  xor          zero, s5, t1
                  lb           s5, 30(s10)
                  lb           s7, -14(s10) #end riscv_load_store_rand_instr_stream_1
                  la           t2, region_0+1407 #start riscv_load_store_rand_instr_stream_2
                  sb           s5, -1194(t2)
                  lh           t5, 195(t2)
                  and          s9, t6, s3
                  add          a3, t4, t1
                  or           ra, t0, t3
                  sra          t4, tp, a1
                  sh           s6, -729(t2)
                  slli         a6, s5, 2
                  xor          s7, s10, s9
                  xori         t3, a3, -1155
                  sh           s2, -1117(t2)
                  lui          ra, 995311
                  lbu          zero, -1069(t2)
                  ori          t4, t3, 675
                  slt          t3, a3, a3
                  sltu         s11, a6, s4
                  xori         s5, s11, 1348
                  addi         a7, s2, 1977
                  lui          t3, 501032
                  srai         tp, t1, 14
                  lbu          t6, 59(t2)
                  andi         s0, s3, -42
                  lbu          s9, -1210(t2)
                  add          s4, a1, a7
                  xori         t5, s1, -1788
                  sub          s10, a0, s4
                  lb           s1, 461(t2)
                  xori         t0, t3, 712
                  lbu          s11, 361(t2)
                  sra          a6, t0, ra
                  nop
                  lbu          sp, 26(t2)
                  sb           a4, -740(t2)
                  addi         a3, a6, -325
                  add          t1, sp, s5
                  andi         a6, a3, -1714
                  srai         ra, a4, 26
                  slli         t3, a4, 0
                  xori         t6, s10, -871
                  lh           zero, 523(t2) #end riscv_load_store_rand_instr_stream_2
                  sll          s1, s4, gp
                  ori          t3, s8, -1548
                  bgeu         s3, a4, 13f
                  add          a7, t6, s0
                  slt          a7, s7, a4
                  auipc        gp, 361268
                  ori          s3, s6, -1936
                  slli         s3, s10, 19
                  andi         t5, t1, 284
                  sll          sp, s6, tp
                  sltiu        s4, t3, -1597
                  bgeu         a4, a3, 12f
12:               or           s3, s5, s10
13:               sra          t2, sp, sp
                  sra          t3, s4, s11
                  sltiu        s5, t1, -946
                  bgeu         t3, t6, 17f
17:               add          s11, s6, t3
                  sltiu        ra, t1, -1810
                  bltu         a4, s9, 31f
                  srli         s9, a0, 0
                  or           s10, tp, sp
                  slt          s3, a5, sp
                  bne          zero, s9, 32f
                  xor          t1, t1, s9
                  sra          t4, t4, s8
                  sltu         t6, s9, a0
                  ori          zero, t2, -1651
                  bne          tp, s1, 34f
                  slt          a1, s8, sp
                  beq          a0, s5, 46f
31:               or           a1, t1, s10
32:               sll          s0, t1, s4
                  sra          s1, a3, a4
34:               sra          s0, zero, a5
                  sub          t4, s10, s0
                  xori         a0, s9, -635
                  bge          s7, t1, 45f
                  xori         a7, s10, -1297
                  xori         a7, a2, -1584
                  sltu         s3, s11, a1
                  srai         s5, s8, 6
                  add          t2, zero, s5
                  blt          gp, s9, 58f
                  slt          t5, t5, s10
45:               and          tp, ra, s1
46:               sra          t6, s11, a6
                  srli         t5, s4, 22
                  srl          s7, a5, s8
                  sltiu        t6, s2, -592
                  bne          a5, t4, 60f
                  bltu         s0, s3, 55f
                  bge          a1, s11, 64f
                  xori         gp, s11, -16
                  lui          t6, 706329
55:               sltiu        sp, a4, 1324
                  auipc        sp, 92519
                  xor          s3, s5, zero
58:               sltu         t3, s1, a7
                  add          a4, ra, s2
60:               sub          s1, zero, zero
                  blt          tp, a3, 67f
                  addi         a0, gp, 1035
                  sra          a4, s10, s1
                  ori          s5, gp, -610
                  add          s0, gp, t4
                  sltu         t0, zero, a4
                  sub          t6, tp, s4
                  slti         zero, zero, 1670
                  nop
                  addi         s9, sp, 403
                  sltiu        s1, s6, 479
sub_7_j11:        jal          t1, sub_9 #jump sub_7 -> sub_9
64:               auipc        t6, 342990
                  bge          ra, s10, 76f
                  sltu         s0, s2, s2
67:               bltu         zero, s3, 72f
                  andi         a3, t5, 1211
                  bltu         s6, s4, 87f
                  add          t2, a1, s1
                  blt          s5, a4, 81f
72:               sltu         sp, a1, a4
                  nop
                  add          a1, s2, s1
                  srl          gp, a2, a7
76:               slli         a7, a4, 14
                  auipc        s9, 912072
                  slt          s8, a0, a5
                  srl          t2, a7, a5
                  ori          s0, sp, 498
81:               lui          a5, 441939
                  beq          s4, s8, 92f
                  bltu         s10, a3, 94f
                  auipc        t0, 990205
                  blt          s9, t2, 96f
                  xor          tp, t4, s11
87:               sra          tp, s1, tp
                  beq          a0, zero, 103f
                  srl          ra, a0, ra
                  ori          s7, a7, 230
                  andi         s5, s4, 1480
92:               bgeu         t1, t1, 94f
                  srli         t6, s11, 19
94:               bne          sp, s5, 98f
                  blt          a5, a1, 107f
96:               bgeu         s10, s11, 103f
                  nop
98:               xor          t4, t0, t2
                  sll          s10, s7, ra
                  xor          a6, a0, s4
                  addi         s0, a0, 1794
                  bne          sp, t4, 115f
103:              sltiu        a4, s5, 965
                  andi         tp, a7, -301
                  sra          a3, t2, a0
                  sltu         t3, s9, a5
107:              sltiu        t4, zero, 1267
                  sll          gp, a3, a0
                  lui          s11, 645587
                  nop
                  sll          s3, s4, s5
                  slt          zero, s9, s4
                  sltiu        t3, sp, 1774
                  andi         t2, s0, -1702
115:              bltu         t4, s9, 125f
                  bltu         s7, a1, 118f
                  lui          a5, 934958
118:              andi         a7, s4, -445
                  srai         a5, t4, 13
                  sll          a3, a5, s11
                  sll          a3, s2, t5
                  or           a3, s10, a2
                  nop
                  ori          a4, a7, 181
125:              srai         a0, a5, 5
                  srli         a7, a5, 11
                  sub          t5, t4, s11
                  sltu         sp, ra, s0
                  or           ra, s5, a1
                  and          s8, t1, s11
                  xori         s8, s3, 60
                  andi         s8, a3, 1599
                  bgeu         s4, t1, 149f
                  xori         s9, gp, 108
                  lui          s0, 734350
                  add          a5, s0, t3
                  xori         t1, a6, -724
                  beq          a0, t5, 154f
                  sll          s11, t6, tp
                  sub          t5, a5, zero
                  slli         tp, a0, 16
                  ori          s5, t3, -517
                  nop
                  nop
                  bltu         zero, a4, 151f
                  lui          s5, 74641
                  sltiu        s11, t2, 1716
                  lui          t6, 1020245
149:              slti         a7, a4, 1695
                  add          t5, s9, s4
151:              sltu         ra, tp, a1
                  slli         s3, a3, 4
                  slt          s8, a6, a5
154:              andi         zero, t6, -1709
                  slli         t1, s11, 26
                  sra          s5, s9, a4
                  sub          s0, gp, s2
                  slti         s0, s2, -870
                  bltu         a3, sp, 171f
                  bne          t0, t0, 168f
                  add          s3, gp, t2
                  and          t4, tp, t1
                  ori          t1, t3, -1674
                  slli         zero, a3, 3
                  andi         t3, gp, -1409
                  addi         t5, t6, 889
                  ori          t6, a5, 751
168:              nop
                  sra          a6, s10, s11
                  addi         sp, s4, 667
171:              slli         t0, ra, 22
                  nop
                  bne          s11, s2, 175f
                  lui          zero, 134703
175:              sll          gp, tp, s0
                  sltiu        t2, sp, -203
                  bltu         t3, s3, 193f
                  ori          s1, s7, 1172
                  xor          t5, gp, sp
                  addi         t0, s10, -1612
                  sltu         t5, a3, s9
                  bge          s2, a6, 198f
                  sltiu        t0, a0, 1618
                  and          s8, s1, a0
                  sra          t0, t0, a1
                  srli         a4, s2, 19
                  beq          t5, a2, 198f
                  xori         s4, t2, 587
                  ori          zero, t4, 451
                  sltu         t1, a4, s10
                  beq          t0, ra, 203f
                  srli         zero, s5, 17
193:              bgeu         a7, zero, 197f
                  sll          s3, s7, s0
                  ori          t2, t5, 1715
                  xor          a6, a5, t5
197:              slti         s0, t1, 1561
198:              slli         s7, s3, 27
                  addi         s10, t2, -1402
                  nop
                  lui          zero, 19592
                  slti         s11, s2, 1984
203:              slli         zero, a0, 8
                  slt          a3, a3, s11
                  srl          t5, s4, s5
                  bltu         t5, s6, 216f
                  srai         t2, t6, 16
                  lui          t1, 971135
                  sltiu        ra, zero, 1972
                  beq          t4, s6, 228f
                  sll          s0, t4, s9
                  sub          s5, a7, t0
                  beq          s5, a0, 224f
                  bltu         s9, s8, 218f
                  sra          t3, s1, a1
216:              andi         a6, a1, -1027
                  slti         a7, t6, -1112
218:              lui          a3, 56756
                  slti         t6, s2, 534
                  andi         a4, t5, 1701
                  sub          s3, a4, s0
                  ori          t2, a1, -1457
                  srai         zero, s6, 25
224:              blt          a6, a3, 236f
                  sub          a3, t0, a3
                  sltu         a3, a1, a6
                  sra          gp, t0, s5
228:              bltu         s1, s0, 244f
                  sll          a0, s3, s4
                  add          tp, t2, a4
                  sra          ra, t5, t4
                  slt          s11, a1, s11
                  bltu         t6, s7, 238f
                  and          s4, zero, s3
                  bltu         s6, t1, 242f
236:              and          s4, t3, s4
                  blt          s6, a3, 248f
238:              srai         a7, tp, 5
                  nop
                  sll          sp, a4, s4
                  bne          s2, a5, 242f
242:              add          gp, tp, s0
                  bltu         t6, s1, 244f
244:              or           sp, s8, a3
                  blt          s2, t1, 255f
                  bgeu         t5, t3, 261f
                  bltu         a0, t3, 257f
248:              xori         s1, tp, 618
                  lui          a6, 771185
                  bge          t2, a2, 265f
                  nop
                  beq          s10, s3, 254f
                  slli         a0, sp, 30
254:              andi         a1, a2, 612
255:              bne          sp, a3, 266f
                  and          t1, s6, ra
257:              add          t0, tp, gp
                  srli         a7, a5, 3
                  sltiu        s3, t2, -1261
                  bne          s2, a0, 270f
261:              sll          a0, a0, t0
                  addi         t6, t2, -535
                  slt          a4, s4, s1
                  nop
265:              slli         a7, t3, 0
266:              sltiu        t4, a7, -506
                  sltiu        s5, a5, -1463
                  and          s5, s11, t1
                  sub          s9, a4, t3
270:              and          s3, t6, s1
                  blt          a4, t6, 277f
                  add          t4, tp, t5
                  sra          s0, s3, s9
                  slti         a6, s6, 1750
                  lui          t1, 762627
                  bne          s3, a3, 289f
277:              addi         t2, gp, -170
                  andi         s0, s4, 857
                  lui          sp, 260491
                  beq          s4, s6, 289f
                  srl          a1, zero, a4
                  bgeu         a7, a6, 298f
                  ori          a3, a6, 1351
                  bne          t3, s11, 300f
                  sub          tp, s1, s7
                  sltu         t1, t1, s11
                  slti         a0, s1, -54
                  bne          t0, a1, 292f
289:              sll          t1, a5, tp
                  sltiu        a3, s3, -1684
                  and          a7, gp, s4
292:              lui          a4, 708008
                  addi         sp, t4, 691
                  blt          t6, s8, 296f
                  ori          s0, t2, -46
296:              andi         a0, s6, -89
                  auipc        t5, 611559
298:              nop
                  slti         t4, s2, -500
300:              srai         zero, sp, 22
                  blt          s9, t2, 306f
                  srli         t4, gp, 4
                  and          tp, t0, s2
                  blt          a0, gp, 314f
                  ori          s10, ra, 1182
306:              bne          t4, s11, 321f
                  bge          tp, a3, 317f
                  srl          zero, t1, a7
                  bne          sp, a5, 317f
                  slt          gp, s10, a3
                  slt          zero, s4, s1
                  beq          t2, t0, 325f
                  bge          ra, s8, 323f
314:              and          gp, t0, tp
                  auipc        tp, 6181
                  bgeu         s10, s11, 327f
317:              sub          t2, s7, s5
                  addi         t1, s9, 1208
                  andi         s5, t5, 1288
                  auipc        s10, 617810
321:              bgeu         s8, a3, 336f
                  sll          ra, ra, s10
323:              sll          zero, s6, s7
                  slt          a5, s7, t2
325:              sltu         a1, a4, t6
                  sltiu        s1, s5, 1233
327:              sra          a7, t4, t0
                  nop
                  srai         sp, ra, 29
                  xor          zero, a6, t4
                  beq          s0, s4, 337f
                  or           ra, gp, gp
                  bgeu         tp, zero, 343f
                  bne          t3, t5, 346f
                  slt          s3, s6, ra
336:              sltiu        t3, tp, 704
337:              sltu         t5, gp, tp
                  xori         s5, t2, 1722
                  nop
                  or           gp, s4, s6
                  addi         s0, a6, -812
                  srl          a0, a5, s8
343:              xor          a6, s5, s6
                  sra          zero, s10, s9
                  sra          t3, a2, sp
346:              srl          t1, t4, t0
                  blt          ra, s4, 359f
                  add          s5, s6, a3
                  and          a5, s10, s5
                  bge          zero, a5, 351f
351:              slti         t2, t6, -906
                  lui          s4, 785164
                  sll          t0, s5, t4
                  bltu         a3, t6, 355f
355:              and          a5, s6, a7
                  xor          s5, s8, t6
                  xor          t1, t0, a2
                  sub          s5, s3, ra
359:              nop
                  srai         t6, s7, 26
                  xor          a0, a5, s8
                  srl          a5, t0, s8
                  addi         s4, gp, 1622
                  beq          t0, ra, 371f
                  sra          t2, s10, sp
                  sra          s0, t3, a7
                  slti         s1, a3, 511
                  ori          a3, a0, -298
                  xor          a3, gp, s5
                  sra          a6, s10, s9
371:              and          a6, a1, s0
                  addi         ra, a0, -1749
                  sltu         t4, a4, a2
                  slli         a1, s11, 7
                  sll          a1, s5, s10
                  addi         t2, a1, 2002
                  sltiu        s3, s2, 156
                  andi         a5, a0, 548
                  slti         t1, a2, -1949
                  add          t1, t4, t6
                  or           t2, s8, a4
                  bge          s0, s10, 388f
                  xor          t4, a7, a2
                  slti         s0, s9, 1211
                  and          s7, t5, a7
                  andi         t1, a7, 322
                  sltiu        t2, t5, 1663
388:              sltiu        tp, a1, 1539
                  srai         gp, t1, 13
                  slti         zero, t4, 1193
                  sltiu        s5, a3, 1694
                  sub          a3, s6, t3
                  sll          s4, s9, s5
                  ori          s9, a5, 1098
                  bne          s0, s10, 397f
                  lui          s5, 633897
397:              addi         a5, a5, 180
                  slt          s10, a1, s2
                  slt          t6, tp, ra
                  sltu         s7, s6, zero
                  srai         zero, s11, 29
                  bne          s0, t1, 409f
                  or           t3, s4, a0
                  andi         s5, s2, 985
                  add          t4, a1, s4
                  srai         s3, s11, 16
                  auipc        zero, 166995
                  bltu         t5, a3, 409f
409:              sub          s7, t0, t1
                  ori          a3, ra, 1195
                  srai         s4, t1, 9
                  lw           t1, 4(a2)
                  addi         a2, a2, 56
                  addi         a4, t2, 473
                  xor          a5, a2, s4
                  slli         s4, sp, 15
528:              addi x31, x6, 0
528:              jalr x31, x31, 0
sub_2:            auipc        t2, 691038
                  addi         a2, a2, -8
                  slt          t3, a2, s7
                  sw           t1, 4(a2)
                  add          a7, tp, ra
                  slli         a5, s6, 12
                  andi         sp, t2, -1075
                  la           a7, sub_5
                  nop
                  addi         a7, a7, -922
                  bne          t6, s2, sub_2_j5 #branch to jump instr
                  srli         a3, a6, 31
                  or           ra, s9, t4
sub_2_j5:         jalr         t1, a7, 922 #jump sub_2 -> sub_5
                  srli         a0, a3, 31
                  srai         a7, t2, 21
                  sra          a0, s4, s2
                  slti         s0, s11, 100
                  add          t5, a1, s11
                  sll          a5, t1, s1
                  srai         ra, sp, 27
                  sra          a3, t2, a3
sub_2_j6:         jal          t1, sub_3 #jump sub_2 -> sub_3
                  la           a4, sub_5
                  srli         tp, s10, 16
                  xor          s1, a4, s11
                  slt          t5, t2, a6
                  srai         t1, a4, 22
                  addi         a4, a4, 447
                  srli         s5, t0, 19
                  sltiu        t4, t2, -926
sub_2_j7:         jalr         t1, a4, -447 #jump sub_2 -> sub_5
                  auipc        sp, 559162
                  sra          a6, sp, s10
                  nop
                  sub          t1, t0, t3
                  auipc        ra, 507491
                  xor          s4, s6, s9
                  bgeu         gp, s5, 25f
                  srli         a6, a1, 24
                  slli         t5, a0, 9
                  sltu         t6, s6, s3
                  blt          a3, s9, 14f
                  bgeu         s1, a3, 31f
                  xor          t5, s1, t2
                  ori          t5, s5, -1690
14:               andi         s11, s5, 1607
                  xori         t3, a6, -756
                  beq          a6, t6, 30f
                  or           s0, s0, s2
                  sub          ra, t3, a2
                  andi         s9, s9, 1909
                  blt          s0, s1, 39f
                  and          t3, s7, t3
                  lui          s3, 228753
                  andi         s3, t5, 1874
                  bne          s11, a6, 30f
25:               sll          zero, a1, s2
                  slt          s11, gp, s0
                  xori         s3, a3, 1062
                  sltiu        gp, s5, -1301
                  slt          s5, t5, a7
30:               ori          a1, t5, 1416
31:               bltu         t2, a5, 42f
                  or           s4, s8, sp
                  sra          s5, s0, a0
                  bge          t5, s7, 44f
                  srl          t3, s0, a6
                  or           s11, s6, s7
                  sll          s10, a0, sp
                  xori         gp, a2, 1621
39:               addi         s11, a5, 771
                  bge          a5, t5, 50f
                  beq          sp, s8, 46f
42:               slli         a7, t5, 29
                  add          s9, a7, s5
44:               srli         a6, ra, 6
                  nop
46:               xor          s11, a4, ra
                  bltu         ra, t6, 59f
                  slt          t0, t5, t3
                  xor          s11, a2, s6
50:               slti         a3, a4, 1218
                  bne          s8, a0, 59f
                  sltiu        s3, ra, 1748
                  nop
                  bltu         t4, s1, 59f
                  auipc        zero, 523972
                  or           zero, a0, ra
                  or           a4, s3, s1
                  bgeu         t0, s2, 59f
59:               xori         tp, t3, 1830
                  and          s0, a1, ra
                  sltu         tp, s5, a5
                  srli         s8, s10, 13
                  lw           t1, 4(a2)
                  addi         a2, a2, 8
                  andi         a3, t5, 1628
98:               addi x24, x6, 0
98:               jalr x24, x24, 0
sub_1:            srl          s3, t1, a2
                  auipc        s0, 705948
                  sll          s3, a2, zero
                  bltu         a6, a3, sub_1_stack_p
                  nop
sub_1_stack_p:    addi         a2, a2, -60
                  sw           t1, 4(a2)
                  xori         tp, a2, -428
                  la           t1, region_0+931 #start riscv_load_store_rand_instr_stream_0
                  addi         s7, t0, -1432
                  slli         s5, a5, 8
                  lw           a7, -43(t1)
                  sltu         s8, s3, s10
                  lb           t2, -32(t1)
                  lb           s7, -8(t1)
                  lui          a4, 829904
                  lui          a0, 760365
                  lb           s9, 41(t1)
                  sltu         s0, s0, t1
                  lw           ra, -11(t1)
                  slt          s1, t5, s0
                  andi         t6, a0, -1197
                  ori          t0, s1, -1870
                  lbu          s3, -5(t1)
                  lbu          zero, 24(t1)
                  add          t6, gp, sp
                  slti         t3, t3, -395
                  xor          s10, a0, gp
                  srl          a0, t2, a5
                  sw           tp, 45(t1)
                  sltu         a4, t5, s4
                  addi         t6, a0, -1244
                  lhu          tp, 31(t1)
                  add          t4, a0, s8
                  lb           a4, -18(t1)
                  sb           s5, -28(t1)
                  sll          s11, s11, s4
                  srai         s0, t1, 27
                  or           s11, t5, s7
                  lb           t0, 0(t1)
                  sltu         sp, t3, s8
                  lw           t3, -63(t1)
                  lbu          t4, -48(t1)
                  sltiu        ra, a5, 1711
                  sltiu        s9, a0, -1328
                  and          a5, a5, s1
                  or           s10, a3, t3
                  lbu          a5, 43(t1)
                  xori         s5, s6, -1248
                  slt          t4, ra, s7
                  srai         t3, a2, 8
                  auipc        t5, 725105
                  sra          s8, s8, ra
                  lb           a6, -2(t1)
                  sb           s9, 30(t1)
                  lb           t2, -4(t1)
                  lhu          a5, -55(t1) #end riscv_load_store_rand_instr_stream_0
                  la           ra, region_1+248 #start riscv_load_store_rand_instr_stream_1
                  lui          gp, 1025269
                  andi         t3, a0, -432
                  auipc        s10, 669957
                  sb           t4, 603(ra)
                  lw           s9, -212(ra)
                  srl          a0, t6, s5
                  srli         s0, a7, 26
                  sb           s2, 1028(ra)
                  lbu          t5, 1028(ra)
                  andi         s8, a2, 937
                  and          t1, a6, gp
                  sltu         s5, t1, t6
                  srai         t2, s10, 13
                  sll          a0, t3, s11
                  ori          s9, a1, 88
                  auipc        t2, 51560
                  or           a6, a5, sp
                  lb           s11, 1211(ra)
                  lbu          s8, 840(ra)
                  lhu          a7, 392(ra)
                  lb           t6, 589(ra)
                  sb           s0, 29(ra)
                  lbu          a5, 918(ra)
                  lb           s0, -172(ra)
                  lbu          t6, 546(ra)
                  srli         a0, sp, 19
                  srli         a3, a4, 10
                  lbu          a5, 1095(ra)
                  sb           t0, 583(ra)
                  lb           gp, 1249(ra)
                  auipc        t3, 791786
                  sltiu        a3, s3, -421
                  addi         s0, sp, 1777
                  srl          a1, s10, s10
                  sh           s1, 1082(ra)
                  xori         s7, s1, -1558
                  addi         s7, t3, 1818
                  slti         s8, s5, -946
                  and          s11, t2, a5
                  andi         s7, t3, 1121
                  sll          a7, s3, s8
                  lb           s10, 287(ra)
                  sh           s11, 1058(ra)
                  sltu         s4, a7, s9
                  xor          s10, t5, gp
                  srli         sp, s10, 8
                  auipc        s10, 81756
                  lb           t1, 937(ra)
                  lb           t4, 1263(ra) #end riscv_load_store_rand_instr_stream_1
                  beq          s2, a6, 14f
                  sll          a0, t0, s11
                  bltu         t0, s6, 17f
                  srai         ra, tp, 19
                  ori          t0, s10, 965
                  bne          s10, a7, 9f
                  bne          s10, s9, 12f
                  xori         a5, a1, -713
                  beq          s2, s3, 13f
9:                blt          s9, a5, 29f
                  srai         a4, s4, 5
                  srl          a4, s6, s6
12:               bge          a2, t5, 20f
13:               add          t0, s5, s10
14:               sltiu        t3, sp, -49
                  sltu         a4, t3, zero
                  ori          s8, t5, 291
17:               or           t6, t5, s5
                  sub          s4, a2, s10
                  addi         zero, t6, 31
20:               sub          t0, s9, a5
                  slti         ra, t2, 790
                  sra          t2, a6, s9
                  add          s11, s5, a0
                  xori         t3, gp, 1394
                  srli         a1, t1, 27
                  addi         s0, s3, -1601
                  nop
                  bge          a4, t3, 35f
29:               bne          a6, a7, 30f
30:               xor          s1, s3, s8
                  bne          s0, a7, 47f
                  bge          t5, a3, 40f
                  andi         s5, s9, 1096
                  lui          t0, 94443
35:               sub          s10, a3, a1
                  andi         a5, s10, -1282
                  sltu         s0, a4, t0
                  srai         s0, a0, 8
                  slli         s1, a6, 5
40:               srai         s4, gp, 29
                  slti         t0, ra, 783
                  and          a6, s2, t6
                  srl          s3, t5, sp
                  or           s10, s9, t5
                  beq          a4, sp, 48f
                  sltu         a0, zero, s4
47:               bge          tp, a4, 66f
48:               srl          s10, s5, t1
                  slli         gp, t4, 5
                  and          t5, s5, sp
                  lui          a1, 628102
                  srli         s10, sp, 27
                  srl          s9, a5, a2
                  slt          s8, a4, a1
                  bltu         s2, s1, 64f
                  bne          ra, s2, 58f
                  slli         sp, s11, 31
58:               auipc        s10, 773341
                  sra          a1, zero, s11
                  auipc        a7, 113
                  auipc        s9, 259299
                  xor          t6, a6, s11
                  addi         t6, s9, -640
64:               sltiu        ra, a0, -1924
                  add          ra, a5, tp
66:               beq          a5, s9, 70f
                  sub          s10, sp, a0
                  srli         tp, t5, 12
                  bltu         s8, a7, 73f
70:               add          s3, sp, s4
                  or           s1, a1, a0
                  add          a3, t5, t1
73:               srli         t2, s2, 4
                  sra          a6, zero, s7
                  sltiu        s11, a5, 1617
                  add          a4, a4, a5
                  la           s4, region_0+1493 #start riscv_load_store_rand_instr_stream_2
                  lui          t2, 335007
                  sll          ra, a3, ra
                  sb           a0, 494(s4)
                  sub          ra, a4, ra
                  lui          a7, 920783
                  sltiu        t5, t4, -1094
                  ori          a6, s2, -976
                  srli         s10, t2, 1
                  ori          t3, t3, -1381
                  lw           a7, -353(s4)
                  sltu         t4, a4, gp
                  lb           s9, 142(s4)
                  sra          a6, t2, t3
                  sh           a6, -1475(s4)
                  lbu          s10, -323(s4)
                  xor          s8, s0, t3
                  srl          a5, s0, s5
                  lbu          a3, -1418(s4)
                  lb           t2, 376(s4)
                  and          s10, s11, sp
                  ori          s1, s10, -2040
                  auipc        s10, 173370
                  addi         a0, a0, -368
                  srli         a7, a6, 9
                  lbu          s9, -938(s4)
                  lbu          s3, -516(s4)
                  sb           t5, -399(s4)
                  srai         a4, ra, 18
                  add          s0, t0, s2
                  sb           a1, 446(s4)
                  lb           t3, -152(s4)
                  xor          s7, zero, t1
                  add          a6, a5, a0
                  sw           t6, 115(s4)
                  lbu          t2, 436(s4)
                  lbu          s8, -1132(s4)
                  srl          s5, s5, t6
                  lbu          a6, -1401(s4)
                  slti         a3, s4, -1114
                  lbu          t4, -1242(s4)
                  sb           t2, -1065(s4)
                  lw           s10, -1209(s4)
                  xori         s10, t1, 1372
                  lbu          s9, -87(s4) #end riscv_load_store_rand_instr_stream_2
                  sltu         t3, s9, zero
                  bgeu         tp, t2, 80f
                  or           t3, t6, s8
80:               sll          s5, t2, s10
                  sltiu        t3, ra, -1757
                  or           a4, s2, t3
                  sll          s10, t1, s1
                  sltu         zero, s6, sp
                  bltu         s8, a4, 87f
                  nop
87:               srl          zero, s6, s2
                  slt          a3, t4, tp
                  sub          t6, t1, s3
                  andi         zero, t3, -1708
                  bltu         s1, s8, 100f
                  andi         s3, s9, 775
                  slt          a4, t2, t0
                  lui          s3, 1040344
                  slti         t0, a4, -149
                  addi         a1, t6, 1952
                  auipc        s5, 530966
                  xor          a0, t3, a5
                  sltu         a7, t1, gp
100:              sub          s5, s11, s6
                  addi         s4, ra, 260
                  xor          t6, t4, t0
                  add          s0, t6, t0
                  and          s8, a4, s3
                  addi         t6, a5, 387
                  slt          s10, t1, s10
                  srl          zero, s2, t5
                  blt          tp, t6, 110f
                  or           a1, a4, s10
110:              add          s8, t1, sp
                  srl          t3, s1, t2
                  bgeu         t1, a6, 116f
                  bne          a3, a4, 129f
                  la           t1, sub_6
                  or           s4, s9, s2
                  add          a4, t0, s4
                  sltiu        tp, a0, 857
                  addi         t1, t1, -852
                  slti         ra, s2, 1088
                  or           t0, a1, a7
                  and          s8, a1, s9
sub_1_j4:         jalr         t1, t1, 852 #jump sub_1 -> sub_6
                  ori          ra, a3, -946
                  or           s1, s3, ra
116:              auipc        t6, 164663
                  nop
                  sll          a0, s10, t2
                  bltu         s1, s0, 121f
                  auipc        ra, 390400
121:              sltiu        t2, a4, 297
                  beq          a0, s0, 132f
                  sltu         a1, a4, a4
                  or           t0, s5, t3
                  sll          t1, ra, t4
                  xori         a4, a2, 1304
                  bge          s6, t4, 136f
                  slli         a7, t3, 20
129:              bge          s3, a5, 148f
                  slti         a7, a1, 1390
                  addi         a7, ra, 1339
132:              nop
                  addi         t4, s10, 1743
                  sltiu        t6, sp, 1142
                  or           s10, t3, s6
136:              xor          s0, a2, a6
                  nop
                  bge          a1, s4, 143f
                  lui          s10, 999862
                  srl          zero, tp, zero
                  sub          ra, s7, s5
                  ori          gp, t3, -1130
143:              addi         s10, s10, -1521
                  bge          t6, t4, 159f
                  sra          s11, t5, zero
                  sra          s8, zero, s7
                  xori         t2, a2, 1459
148:              srl          s8, s8, t1
                  beq          a1, s0, 153f
                  lui          s11, 448283
                  nop
                  sltiu        a7, s5, 1203
153:              andi         a7, a7, 311
                  xori         s4, a3, -1567
                  xori         t0, zero, -1521
                  add          t3, t0, s10
                  addi         t5, a7, -1165
                  and          a1, t1, s4
159:              blt          ra, t4, 174f
                  sltu         s4, zero, s1
                  add          a3, a5, a4
                  slli         s5, a3, 11
                  sltiu        t4, t0, -1048
                  srai         t3, t2, 20
                  slti         s9, tp, -956
                  sltiu        ra, t0, -145
                  and          s1, a6, s2
                  srai         s10, t4, 30
                  srli         s9, a1, 2
                  slt          s9, a2, gp
                  sub          t5, tp, s6
                  srli         a0, t1, 16
                  srli         t4, a5, 29
174:              slti         s7, t1, 728
                  srl          gp, s0, a1
                  or           tp, s6, t6
                  ori          tp, t4, -1870
                  xor          a1, t2, s1
                  bgeu         t4, ra, 188f
                  sltiu        t0, a0, -984
                  xori         a4, a6, -1004
                  sltu         t6, a6, a0
                  auipc        t5, 635680
                  auipc        a1, 561530
                  andi         a6, s4, -145
                  beq          a0, t3, 188f
                  sltu         s10, t2, a5
188:              sra          t5, s10, s0
                  srli         sp, s0, 14
                  slli         s11, zero, 12
                  addi         s0, t0, -1786
                  bne          s7, zero, 194f
                  slli         a1, a6, 19
194:              blt          ra, s6, 214f
                  beq          t4, a5, 202f
                  beq          sp, sp, 200f
                  addi         gp, s3, -968
                  srai         s1, s10, 1
                  ori          a5, t0, -201
200:              sltiu        a7, t6, -339
                  srai         s8, a0, 17
202:              srl          s0, s5, tp
                  andi         sp, a6, 1825
                  lui          s11, 562696
                  bgeu         a5, t5, 219f
                  bne          s3, zero, 210f
                  bltu         s2, t4, 211f
                  sltiu        t1, s4, -1822
                  slt          t4, s6, s9
210:              slt          t4, t2, s3
211:              nop
                  addi         a1, a0, 818
                  srl          a6, s8, a7
214:              bne          sp, t0, 220f
                  xor          a5, s3, t1
                  bgeu         t2, gp, 218f
                  auipc        t1, 290303
218:              addi         t5, s0, 403
219:              xori         s7, s8, -608
220:              slli         tp, a3, 21
                  sll          a1, s7, t3
                  beq          a3, s3, 230f
                  slli         zero, t3, 17
                  srli         a3, a7, 4
                  srli         a7, s7, 14
                  andi         a4, gp, 533
                  srl          t4, zero, t1
                  srai         s7, gp, 28
                  sra          t3, zero, s0
230:              bge          a7, s5, 239f
                  and          gp, ra, a0
                  bne          gp, t5, 235f
                  addi         s7, t5, -693
                  bne          t0, tp, 253f
235:              sll          t0, zero, s2
                  sra          s1, t6, t6
                  bne          s6, a2, 247f
                  xor          s8, s9, t5
239:              bge          t3, a0, 240f
240:              srai         s3, s8, 0
                  sra          s4, ra, s8
                  sub          s0, a7, t5
                  ori          s8, s1, 1990
                  bgeu         s0, s11, 253f
                  sltu         t2, t0, a5
                  nop
247:              sltiu        t0, s4, 320
                  or           tp, a5, s5
                  bne          a4, s10, 251f
                  sra          a4, s6, s4
251:              sra          a7, t0, t3
                  sltiu        s8, a3, 1816
253:              add          t5, a6, s0
                  blt          sp, a4, 273f
                  xor          s10, gp, t2
                  and          s8, a0, t0
                  nop
                  bgeu         a2, s11, 266f
                  bne          s9, ra, 275f
                  bge          a6, a4, 264f
                  ori          s3, s1, -1884
                  or           a1, t6, t5
                  auipc        ra, 130756
264:              ori          a5, s11, -1664
                  xor          a5, ra, t5
266:              srli         a7, a1, 10
                  sra          s1, gp, s5
                  add          a3, a4, a1
                  auipc        s11, 604708
                  and          gp, s1, t6
                  srai         a3, a2, 7
                  xor          sp, t6, a2
273:              blt          a4, gp, 278f
                  sltu         s10, s4, t6
275:              sll          a6, t6, ra
                  srl          t0, s8, s2
                  slt          t5, tp, t6
                  add          a5, gp, a2
                  la           a4, sub_4
                  srai         tp, sp, 15
                  srl          s0, a0, s7
                  addi         a4, a4, -428
                  slli         s8, a7, 6
                  sra          s10, s2, t1
                  addi         ra, s8, -204
                  srai         s8, a4, 21
sub_1_j3:         jalr         t1, a4, 429 #jump sub_1 -> sub_4
                  blt          s11, s3, 278f
                  sra          s0, a0, s8
278:              lui          ra, 660163
                  add          a4, s5, t4
                  xor          a3, a2, s2
                  slt          a5, s7, tp
                  bgeu         a5, a6, 287f
                  add          t5, s10, t5
                  sra          gp, s1, s9
                  sltu         s3, gp, ra
                  srli         ra, tp, 7
287:              srai         a6, s0, 2
                  srl          s5, t4, s11
                  and          s4, a0, a4
                  xori         a5, s1, 1444
                  bne          sp, tp, 306f
                  and          a0, s8, a4
                  and          s5, t0, t4
                  beq          t2, t3, 298f
                  srai         sp, s8, 0
                  beq          ra, a4, 312f
                  srl          s11, s6, s5
298:              bge          a5, a6, 303f
                  beq          s0, tp, 307f
                  slti         a1, a0, -633
                  srli         gp, s6, 18
                  bltu         s2, t6, 306f
303:              bltu         s8, s5, 307f
                  add          gp, t5, s8
                  xori         s9, t5, 1643
306:              bgeu         s8, ra, 309f
307:              nop
                  sltu         a3, a3, s10
309:              slti         tp, s2, -1873
                  blt          a1, s0, 315f
                  bne          s4, s5, 318f
312:              and          a3, tp, s11
                  beq          t0, s10, 315f
                  bge          s0, t6, 323f
315:              sll          s10, a7, s7
                  blt          a6, t6, 320f
                  blt          t3, zero, 332f
318:              bne          s0, s1, 320f
                  sub          zero, a7, a1
320:              slti         s9, t3, -817
                  bltu         t5, t0, 323f
                  srl          t6, s9, s5
323:              ori          ra, a1, -1774
                  ori          s3, sp, -680
                  srl          s8, a7, s10
                  sltu         s0, s2, s2
                  bge          s11, s0, 328f
328:              add          a4, s8, s5
                  lui          s1, 845244
                  slli         s1, ra, 31
                  bltu         ra, t4, 340f
332:              bne          zero, t5, 342f
                  bgeu         s3, a5, 335f
                  sll          s1, s3, t3
335:              lui          s0, 352067
                  or           s10, a7, a1
                  and          zero, s1, t1
                  xori         sp, t1, 1508
                  sltiu        a6, ra, 186
340:              auipc        s10, 105119
                  sltiu        t5, s4, -430
342:              srl          zero, s0, s10
                  sll          a0, zero, t4
                  xori         gp, t0, -1817
                  bgeu         t2, t0, 359f
                  add          s5, t6, t6
                  bge          s6, t2, 366f
                  slti         gp, gp, -628
                  addi         a4, s7, -1064
                  ori          s9, t5, 1002
                  srl          a1, t5, s2
                  sltu         a7, gp, t1
                  sltu         a4, tp, s0
                  beq          a4, ra, 358f
                  xor          a4, ra, zero
                  xori         t4, a1, 1698
                  srli         t3, t0, 31
358:              bne          t4, a0, 366f
359:              srli         a1, ra, 25
                  bge          t2, s9, 375f
                  bge          gp, zero, 380f
                  sll          a3, s3, s1
                  blt          t4, a7, 369f
                  lui          tp, 971490
                  sltiu        zero, t0, -1988
366:              addi         a7, t6, 948
                  add          t6, a0, a3
                  bgeu         a0, a4, 377f
369:              srl          s7, a7, t3
                  slti         s3, a7, 118
                  auipc        t0, 202535
                  and          s10, t2, t4
                  bge          t0, s5, 389f
                  slt          t0, t1, s4
375:              bne          a6, a4, 395f
                  blt          a2, t2, 378f
377:              and          a4, s1, a0
378:              sltu         sp, a1, a1
                  beq          a5, s6, 383f
380:              sll          t1, t3, s3
                  slli         zero, s0, 28
                  xor          t2, s6, zero
383:              srai         s8, s1, 4
                  srai         gp, s6, 17
                  xori         s1, tp, -1133
                  srai         a5, s8, 22
                  lui          s3, 249683
                  slt          s0, zero, t4
389:              or           a1, a6, a7
                  slli         t0, t1, 8
                  sub          s5, ra, s6
                  slli         a1, s11, 15
                  srl          t5, s10, t4
                  nop
395:              sub          a1, a5, t2
                  or           s1, s10, s8
                  slli         t2, t0, 5
                  auipc        s7, 344477
                  lui          s10, 814095
                  andi         a5, a4, -342
                  auipc        t0, 313892
                  slli         a5, s2, 19
                  beq          t0, s5, 419f
                  andi         a0, t6, 953
                  andi         s9, s11, -299
                  srli         a0, sp, 18
                  auipc        a5, 312455
                  beq          t4, t0, 422f
                  or           a0, a4, a0
                  sra          a6, s0, a1
                  nop
                  xor          s5, a6, s5
                  bgeu         s8, sp, 415f
                  or           t1, t3, t5
415:              or           a6, a0, s5
                  bgeu         t0, t4, 420f
                  ori          sp, s10, 1964
                  andi         s4, sp, -905
419:              blt          t6, sp, 422f
420:              slti         a4, s9, 845
                  sra          a7, t2, s6
422:              add          s11, s5, s11
                  lw           t1, 4(a2)
                  auipc        s9, 835352
                  addi         a2, a2, 60
                  xor          t2, gp, s4
                  add          a1, s2, ra
601:              addi x4, x6, 1
601:              jalr x4, x4, 0
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
.word 0x2f2e9a93, 0x771e4a8b, 0x2d77983d, 0xa1db3c2a, 0x494fc513, 0x019fcfe7, 0xa52cf66c, 0xdd0976dd
.word 0xbb53c2df, 0x5dccadde, 0x3f24ceb5, 0xbdbdc60d, 0x6e43b1f6, 0xb143f2da, 0x35e0e3a2, 0x11c0f478
.word 0xa8c999df, 0x1f306c53, 0x0827e75e, 0x0fa0553f, 0x49e670b7, 0xa8ab0e0c, 0xe400dd8d, 0x9ccd0eb1
.word 0x15006c49, 0x0d75fa3c, 0x483829b0, 0xf94ae675, 0x7e0e50a2, 0x0e4fcbe4, 0xac4bbc9d, 0x388056c2
.word 0x1fa7a860, 0xc6d4b302, 0xea6bdd69, 0x900f1962, 0x517196c5, 0x15be1972, 0x7b0d8475, 0x038ee2ba
.word 0x6be3d425, 0x0f80fdf5, 0xf6a3df1d, 0xa83d16d4, 0x8c803ef7, 0x5cf28d1b, 0x09fb0b6c, 0x7aa5fcf7
.word 0x9684d146, 0xc72db700, 0x48560011, 0x71d83f0b, 0x6a5ce7e8, 0x43f1fb94, 0xd4e84db3, 0x3d0a9118
.word 0x55a43d27, 0x1916b12c, 0xdf04ee70, 0xf139649c, 0x3e1dc55c, 0x593867a1, 0x165753a5, 0x04e80845
.word 0xad13395d, 0x0d7577cd, 0x3e1b4fc2, 0x16216b69, 0xd81f0ce0, 0xc42ecbc9, 0xc0a2f787, 0x799f1a40
.word 0xcefd46be, 0x06ad6bdf, 0x3d2401d1, 0x048b9448, 0xa55f8078, 0x9e78c3ac, 0x44c78354, 0x5e480ecb
.word 0x4db7be61, 0x4656e0ee, 0xc7fbef49, 0x0abd91ad, 0xe459c38e, 0x3e954688, 0xa3a759e9, 0x1750a785
.word 0x37ea5e7e, 0x410f215f, 0x395a799d, 0xddb1b458, 0x8a64f656, 0xe0a14a07, 0xaa88f9c4, 0x289bee00
.word 0x1bc258b2, 0xd59fd0a2, 0x2b2067d6, 0x945a1471, 0xc0ed6e59, 0x858270a4, 0x0ff2e314, 0x80ba13b6
.word 0xb76e4cc8, 0xe7414cb1, 0x251e1d1f, 0xf316c882, 0xfcb22302, 0xfcbf97a8, 0xdf02f341, 0x9df99c73
.word 0xb705b82c, 0x0a54e49e, 0x1d11b9be, 0x282eb335, 0x324be1ff, 0x4302116e, 0x791698f8, 0xf0ef8808
.word 0xcd9ffb9e, 0xf047e932, 0x22fa8668, 0x361770b6, 0xc946807c, 0x02581ee2, 0xa10939b1, 0xfae01bc0
.word 0x81ee9da6, 0xd6d7d602, 0xbbc36e50, 0xead03bcd, 0xe807603a, 0x393b842c, 0x8c1014d9, 0x30bdcbaf
.word 0x80a3ebf4, 0x0d90b115, 0x61b02aa9, 0xc6c9c5d5, 0x6a8ee080, 0x887b5937, 0xfd86894a, 0xc50c5a97
.word 0x3fa2b91b, 0x589d4487, 0x45a03f31, 0xd336637a, 0x2acac994, 0xd481ceee, 0xaaaac155, 0x94f124ae
.word 0x56931a65, 0x409e1d03, 0x929cc15c, 0x1b56f85a, 0xeffbeaa8, 0x064e60eb, 0x1c1288c5, 0x3af156f7
.word 0xb4d16f1c, 0x209646aa, 0x3e18f4e6, 0x851cb564, 0x1cbebcc4, 0xa7707184, 0x48879e1b, 0x5297ee1e
.word 0x2ae81d32, 0x61d93c12, 0x1604217f, 0x49926ae3, 0x89b20327, 0x82adeb32, 0xd2299f75, 0xc92d952f
.word 0xbd1b2de9, 0x07611450, 0x8dccb70f, 0xc5369b25, 0x7770130a, 0xea3958fd, 0xbe875a16, 0x4a3493bf
.word 0x1681cb35, 0xaf7919af, 0xa932b1db, 0x5a068555, 0x978ffd57, 0xdeddff78, 0x48922366, 0x4071939d
.word 0x35f63d39, 0xef1ab7d7, 0xc852f90b, 0x46876829, 0x591c961f, 0x461f6caf, 0x001d9596, 0x71ab2694
.word 0x2dd97e3d, 0x0ace0052, 0x08408434, 0xd093c770, 0x4506327d, 0xec24f6b2, 0x77cad678, 0x283d421f
.word 0xb2232f54, 0x88f3591f, 0xf56caa42, 0x94d21503, 0x59f33975, 0xb09d818d, 0xf8dba0f0, 0x523a9061
.word 0x06779593, 0x017ec34c, 0x6eaa034b, 0x7302ad98, 0x651225a0, 0xcfb4ddbe, 0x83b85b4a, 0x5d138f75
.word 0x07960328, 0x102bccff, 0xc9d0b43d, 0xfdc7ca6b, 0x24a4c85f, 0x8af90d5a, 0x617afadc, 0x05f3e7af
.word 0x0f9917f6, 0x09eaafa0, 0xfc62b69f, 0xe5c1a9fd, 0x14f6ec5d, 0x52565919, 0x16174d3f, 0xef36a3f8
.word 0x44eb392e, 0x5a078d53, 0x26eb28e3, 0xdcede723, 0xb9e1f4c0, 0x7431eb3c, 0x270cade9, 0x46a012c5
.word 0xbb2f3042, 0x83e5af88, 0x4ed25d5f, 0xd83c3fde, 0x77dec2fd, 0xed22da89, 0x63cc5fe7, 0xf0be0fde
.word 0x33dee551, 0x2dbe72d3, 0xffe036a8, 0x6801ff26, 0x256061b1, 0xf5e2c98e, 0x525d7e18, 0xe6cc745f
.word 0xc34ad70d, 0x89556fb9, 0x4173621d, 0x14de96b1, 0xbed99e38, 0x424e23f4, 0xd769e245, 0x918965f6
.word 0x8e199ad4, 0x1516f876, 0xdd793cf7, 0xbfa85c4b, 0x37b638d8, 0xbce20f3a, 0x74378fe2, 0x8f40e4e5
.word 0x27f22d8f, 0x3843278b, 0x1777877b, 0x6c62460f, 0xed1272f6, 0xd604ee20, 0x43bfdcec, 0xd9279bcf
.word 0x41c66344, 0xf11234fb, 0xa7e3af1f, 0x22f63d3e, 0xc7aeee51, 0x0e6abe7c, 0x9ec76014, 0xc2ae36cb
.word 0x3c4ebe9e, 0xb54ba936, 0xe0f1a0ab, 0x7928262c, 0xe37fead9, 0xe80883ce, 0x11a464de, 0xab9951ba
.word 0x337b08f9, 0xf4bcdc0a, 0xc3776a98, 0xa1345ee4, 0xbf632d4d, 0x35eb1a01, 0xa628883d, 0x4a5d0dc2
.word 0xc23a1733, 0x43888792, 0x245d1a8c, 0x9ba166fd, 0x0de33857, 0x7943de9c, 0x45d3a7c3, 0x43055ec4
.word 0x4c9ee13f, 0x1de7cd18, 0x83d6005d, 0xc40afbd2, 0x7ae2a8fd, 0x9ba16538, 0x04672846, 0x8cc2b6f1
.word 0xa97525fb, 0xed6a2a4a, 0x31ad896b, 0x3f2b3eaf, 0x8d2e81a4, 0xa27b77ac, 0x96414765, 0xf1d8d6cb
.word 0x32752709, 0x764ac76f, 0x2b1378d2, 0x3e2ef081, 0x1f7c28ff, 0x77c6ed9c, 0xd9ccf845, 0x5058dff2
.word 0xa231c886, 0xfe93af13, 0xbbb234b2, 0x87baf0c6, 0xecf55d31, 0x5332cc25, 0xb585dfba, 0x2f0e8e2b
.word 0xa60dec05, 0x6a33fb44, 0x58c3b149, 0xfd6aab3a, 0x56b3990d, 0xbeebd334, 0xb8724255, 0x85f4bcbd
.word 0xa81c09ac, 0x02f94760, 0x49b6c08c, 0xfd3df09a, 0x31b95625, 0xfe1d8937, 0x83a6c1dd, 0xe1ec552b
.word 0xe92dd93a, 0x2e34523f, 0xd18580f6, 0xa96e3000, 0xe9acf715, 0xaade5abb, 0xf2445135, 0x3b2d3b2b
.word 0x3d608ad8, 0x0bf04785, 0xbbf35ad8, 0x2bb019e5, 0x7fd667a9, 0x08e727b7, 0x8de7d99c, 0xf118dc79
.word 0xbd5503c7, 0xfb7fa2d3, 0x5e058544, 0xf0196598, 0x76b11c63, 0xf1b3f046, 0x9990d4a2, 0x7802ab63
.word 0xfc37673f, 0x1e0e9f1b, 0x2748e485, 0xe4979346, 0x943fcdf0, 0xcc1c9d46, 0xbe5c36ec, 0x73a9f1f9
.word 0x7eb3c5eb, 0x6600ce8a, 0xd9aa8cca, 0xfe0494c9, 0x60e6c69f, 0x92fd1d53, 0x8773416c, 0xa972a3d6
.word 0xeef85c90, 0x6118139f, 0xabcc5a84, 0xe011b126, 0x342d9c34, 0x1761d5f3, 0xdd5cc5f5, 0xcf7659e9
.word 0x866eaa03, 0x3331837b, 0x4e8260f0, 0xc58ac00b, 0x164ac11d, 0xf29a9624, 0x4b89ba71, 0x265b0205
.word 0xd6298c87, 0xed3afd71, 0x28f3b228, 0xbc07ed29, 0xe31f8e35, 0x22794039, 0x95e84620, 0x381b8592
.word 0x2c975bbf, 0xf11c01fd, 0x0dff73ef, 0xfd76d967, 0xd5b7a0b0, 0x202f67a5, 0xa6a9bc9d, 0x148f7e85
.word 0x9be503c5, 0xefaf873d, 0x6b6942ae, 0xd91bb4de, 0x6b2d8739, 0xb3de3e06, 0xce4530a3, 0x24334949
.word 0xef77dc70, 0x8682af85, 0xacb9d4ab, 0x9498684c, 0xbfba412f, 0x33e3d57f, 0xaf90a20a, 0x57c7f812
.word 0xc8cb877c, 0xf557f895, 0xa3f56a0b, 0x1cac74d2, 0x6a03bf5f, 0x5b2755cd, 0xa67021ad, 0xc8c57e09
.word 0xb5e2e509, 0x93f8db61, 0xf27f46b7, 0x9d967259, 0xd42e247b, 0x54481857, 0xde07dadc, 0xe7981009
.word 0x5c09cf45, 0xf2e7bf73, 0x4f827644, 0xf81f3269, 0xba324b4e, 0x4617247f, 0xc1b0b419, 0x4e016a5a
.word 0x38cf94b1, 0x1b1b8d88, 0xb174bdc6, 0x25ba5b1c, 0x3911066c, 0x47398f30, 0x07f0dc2e, 0x3e1e4932
.word 0xf0942245, 0x4f67d7a4, 0xec0cba23, 0x8ee73252, 0xa75bcbc7, 0x4adb5cfe, 0x8ff9274a, 0x9779daa5
.word 0x064aea2c, 0x951f5511, 0xa41ef735, 0x62b9cae7
.section .region_1,"aw",@progbits;
region_1:
.word 0x7e43f522, 0xd482dbe0, 0xe3283867, 0x4bd660a4, 0xdd2c3785, 0xb5853354, 0x03bc0494, 0xfc81858a
.word 0x1e3121a4, 0x046245a1, 0x147c8ed3, 0xb831202c, 0xbc49090e, 0xbedda127, 0x65ec08ac, 0x6f9bcc59
.word 0x8e364b3e, 0xa7b7d41e, 0x134cc8d8, 0x7aa50ad5, 0x3ac47781, 0xbce8c28f, 0x2b685030, 0xcdae8a1c
.word 0xf27792f8, 0x2a6d20cc, 0x6dc96d61, 0xb612eecf, 0x7139bc52, 0xdfe17d1f, 0xc15fabc1, 0x932f66a6
.word 0x220f26c6, 0x829eb705, 0xa7a61331, 0x175c3911, 0xd74753cd, 0x3c242c9f, 0x5f39689a, 0x3745d7c7
.word 0xd6d293f4, 0x40ef32ae, 0xa8d6470c, 0x9565f69d, 0x143e0b97, 0x11aee943, 0xdc1048c0, 0x59e79f38
.word 0x1c05ed0f, 0x79f695e8, 0x2d853975, 0xb4ad6704, 0x711532e2, 0xa015a818, 0xbaa1e0a5, 0xec81de3c
.word 0xead2e2c5, 0xded77c3a, 0x822db6c5, 0x43a575e6, 0x20977a72, 0x64b34f19, 0x49c2ce5f, 0xde572b77
.word 0x04b28a34, 0x1774401d, 0x76b9323c, 0xecd18649, 0x398f1607, 0x42e03adf, 0x3de96ee1, 0x6b49723a
.word 0x1dfbae53, 0x91f0fed7, 0xc4eb9183, 0x3f697f36, 0x47b073dc, 0x2adca514, 0xcda11bff, 0xc508b688
.word 0xc6888d1a, 0x138e1782, 0x2b438b48, 0xe2ba0a9d, 0xd8cfa9b6, 0xf19f2e41, 0x2c7ba5f1, 0x53bdff23
.word 0xeb19db48, 0x876e37c5, 0x1dd377ed, 0xe046a31a, 0x42a4d796, 0xa4c05a72, 0x55113643, 0x63252a3d
.word 0x311b4a05, 0xdac0b8f3, 0xb6f73c9b, 0x5667d0bf, 0x075c1ca1, 0x8fc6fa07, 0x6fe98725, 0x63cec6a2
.word 0x5c1b6c69, 0x6d749652, 0x26c59937, 0x221be4fe, 0xcd216cb1, 0xac369567, 0xa72ea1ba, 0x7455b574
.word 0x2968968a, 0x7221afe7, 0x3d10e502, 0x033c819e, 0x7ff51155, 0xdd501f36, 0x08396d96, 0xa8eb3fc1
.word 0xd2631318, 0xd17a5bbe, 0x5777612c, 0xf13e98cf, 0xfedf2ad6, 0x12e2a858, 0x96d101fb, 0x2f3ccf21
.word 0x7b6e0645, 0x14c94fe5, 0x461d6e22, 0x13ee00a5, 0x93011bf7, 0xfc24c55b, 0x3492bdfe, 0x96a70ba2
.word 0x8a1e7e8a, 0xb407f592, 0x2aa39ee6, 0x50f7d43d, 0xa0f4dd28, 0xd1f24d24, 0xa628a15b, 0x52d4c549
.word 0xb30eeeea, 0x6ef8954b, 0xbca19739, 0xf5d68c05, 0xe400a50b, 0xf6583426, 0x193e8d0b, 0xbab41575
.word 0x20893a1f, 0x6f87c689, 0x5ea344df, 0x3af28b0a, 0x77478486, 0x56da6689, 0xf69c2ae9, 0xc90026e7
.word 0xfc42540f, 0x7c524471, 0xb93971fc, 0xf1141f14, 0x3970a109, 0x97d9dc29, 0x8b144289, 0xd1ae31c2
.word 0x21a4ef98, 0xf688f973, 0x98d22a16, 0x3ba7529b, 0xd1149a15, 0x9e203269, 0xaec20b89, 0x528ed191
.word 0x4151fbc9, 0x63f2f397, 0xc3deccbd, 0x2aafc3ef, 0xa071193b, 0x4290593e, 0x16faf21e, 0x6cb43361
.word 0x3e06e5e5, 0x358cd144, 0x450e016e, 0x04761d82, 0x89d9521d, 0xf97adb12, 0xa0843d3d, 0x5c53e32a
.word 0x7d2396f8, 0xe2e84753, 0xeee329f1, 0x3552dfa0, 0x87088b09, 0x7b831c77, 0x206ce428, 0x6f618b39
.word 0x05907659, 0x2519a7b8, 0x4ad9b212, 0x363fd27b, 0x4b8c2bd2, 0xd1f4f971, 0xf821e616, 0x23eea6ee
.word 0xfcdd55cd, 0x474fe4cd, 0x5cba4bbd, 0xcf1b6bf1, 0xe107a7f7, 0xa5de2823, 0x7a095555, 0x871e7db5
.word 0x759907e6, 0xb6c5e276, 0x63575492, 0x132d31af, 0x64cd7370, 0xceaf5c2d, 0x73f5b652, 0xba607d3c
.word 0x3cbefdec, 0x2239de9d, 0x99c5d316, 0xef979f08, 0x4261167d, 0x22374b52, 0x63e8e048, 0x8a5f10ab
.word 0x9e2ba950, 0xced025de, 0x4ea564c9, 0xc351ebe4, 0x7d3968a5, 0x1a09ec9d, 0x8dfb3dda, 0xd682f8b9
.word 0x011802cd, 0x84c885d5, 0x26fbbff3, 0x403836fb, 0x1995c702, 0xc9adb419, 0x28e9a3a8, 0x129df457
.word 0x73e7c841, 0xec95861f, 0x3c3faf56, 0x82f5afb7, 0x179b0035, 0x6923e382, 0xe7373e26, 0x549e1336
.word 0xf8d033c2, 0xb76c8f60, 0x74cc2ce6, 0x755116a1, 0x5aa32c36, 0xb7bf96a5, 0x642c0bd3, 0x1366f4bb
.word 0x8e40efe2, 0x65c185de, 0x72369896, 0xb566cd5d, 0x02d072fd, 0xee1f056d, 0x9cc96334, 0x4f3c411f
.word 0x9ecaeba6, 0x66c0d3e3, 0x12961270, 0xdb387b0b, 0x60f3d2bf, 0xad8df5be, 0x9200ddc4, 0xc637f2bf
.word 0x2c5cf1f5, 0x84ed61f4, 0xb09e376d, 0xee3958bf, 0x5a90f3b7, 0x729b1ac5, 0x96dfe6fe, 0x094f67fc
.word 0xb52d0f9c, 0x57b70079, 0xd84a46f6, 0x7287da23, 0x2a30d89b, 0xe1595566, 0x7f58fb38, 0x50d4c0e2
.word 0x55f021dc, 0xfd950507, 0x97235b1d, 0xb6e92350, 0x0d0b4c57, 0xba52ac39, 0xc2733a3a, 0xacd021e8
.word 0xab2d542e, 0x6cc37107, 0xd1a6bc9f, 0xd781fb67, 0x236232ba, 0xea80200d, 0xf1cd92bb, 0xf3dbc194
.word 0xa60816b7, 0x6463453e, 0x751accfc, 0x66306f3f, 0x98ba20be, 0xdd02fb32, 0x692c8885, 0x8a271f83
.word 0x698b28d0, 0x53f093b9, 0x96b35959, 0x1b7b05c7, 0xd4bb3497, 0x2bd9a262, 0x6a2dbbbd, 0x76dc69f1
.word 0x0ab25c26, 0x591c60cf, 0xb3425fa3, 0x8e38e3c2, 0x341e31b3, 0xf36689c2, 0xb7c0e1c8, 0x1c2e11ab
.word 0x8b394fe5, 0x1b27f51a, 0xb6e0b51c, 0x87bb2c0e, 0x23c5e629, 0x32bfacea, 0x7a11d0fa, 0x29ded5aa
.word 0x717125e2, 0x6b8e5bb9, 0x6e263220, 0x1ff7be4a, 0x493992f7, 0x21e0a028, 0x2d489713, 0xa9ee6ed1
.word 0xf65d6fd5, 0x44d63633, 0x7ff2f869, 0x839490ae, 0x27b9f731, 0x5bc6d625, 0xe2363481, 0xb82c6a09
.word 0x7e7b170b, 0x89ff00a9, 0x10a9318c, 0x67bad0b8, 0xb0765e15, 0xb1a3be2f, 0x0e0a750c, 0x1da88a72
.word 0xc47f6c35, 0xc790a33b, 0xb0e72f31, 0xcb0d7635, 0x427c7d14, 0x9d9c1e6c, 0xbcfc0766, 0x4d4d9717
.word 0xaa193fe8, 0xea23f4e0, 0x4029a106, 0x5b0b596b, 0xe29f7812, 0xb7e3c5d5, 0x20ade0ec, 0x3699f64c
.word 0x721f3e9b, 0x574d2640, 0xef6875aa, 0xc81fd7d7, 0x6cfb1dc0, 0xf99e16e6, 0x7ca7678e, 0x28bc9f5a
.word 0xa4f6442d, 0xc5c8e585, 0x7de48111, 0xc186d0bd, 0x262ed82b, 0x57814272, 0xc007a7aa, 0x0aade8e0
.word 0xdf7165ca, 0xab56f4f2, 0x4a827cbf, 0x9e459894, 0xc76d7e63, 0x6c150b83, 0x6cc1265b, 0xbec8e201
.word 0xc640af19, 0x80dde089, 0x0635bb93, 0x06b4e921, 0x830e83f3, 0xd52724d2, 0x50187c4b, 0xe1f7c5fc
.word 0x4f47682c, 0x79cb1551, 0x87797551, 0x84f6dfe6, 0x41b4d25e, 0x9c596f21, 0xf40b63d1, 0xdba6d8a1
.word 0x8616dfc8, 0xf17cfafa, 0xc2b003bf, 0x881f6502, 0x4c097ab8, 0xbe506a05, 0x5ac440a1, 0xa5f06434
.word 0xd502a65b, 0x32cc35ab, 0x0f4aadbe, 0x2436e277, 0xc129cbde, 0x107aa018, 0xb419c646, 0xd29f8ced
.word 0xadd3c1d8, 0xd08c7553, 0x21215e65, 0x2c00fb94, 0xafead781, 0x2b4ff049, 0x5a5a81b4, 0xa0b308ae
.word 0x5b6b062f, 0x68b765b6, 0x46b6cd11, 0x32ab037e, 0xe8a00a41, 0x85e10015, 0xa0b5c481, 0xfd7bb27b
.word 0x948b0d03, 0xcf31d0ae, 0xb8ef4c39, 0x37b85210, 0xfdf752af, 0xe3fa1d3f, 0xc9704b0f, 0xa59795e1
.word 0x30f6ed67, 0x90776b69, 0x2970cfb3, 0x535fed84, 0x32912256, 0xb3875d59, 0x2c941f64, 0x5ae07f6d
.word 0x0cd129b9, 0xd46d1665, 0xe3bff84f, 0xe4e8c131, 0xceccc0c1, 0xf266b543, 0x13dbea24, 0x63eaff1e
.word 0xc93fffda, 0x51b71584, 0x085844fd, 0xce955a4a, 0x6872733a, 0x57a1ad8f, 0x85bb7375, 0x81c81f75
.word 0xe202e55c, 0xb7b374c5, 0x0efdeb91, 0xbf6809d0, 0x0eb1da19, 0xecc350b9, 0x147cb80a, 0xba9f2878
.word 0x849cf4e0, 0x8aa4d0b6, 0x3df81c55, 0xdd945144
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
                  addi x12, x12, -128
                  sw  x1, 4(x12)
                  sw  x2, 8(x12)
                  sw  x3, 12(x12)
                  sw  x4, 16(x12)
                  sw  x5, 20(x12)
                  sw  x6, 24(x12)
                  sw  x7, 28(x12)
                  sw  x8, 32(x12)
                  sw  x9, 36(x12)
                  sw  x10, 40(x12)
                  sw  x11, 44(x12)
                  sw  x12, 48(x12)
                  sw  x13, 52(x12)
                  sw  x14, 56(x12)
                  sw  x15, 60(x12)
                  sw  x16, 64(x12)
                  sw  x17, 68(x12)
                  sw  x18, 72(x12)
                  sw  x19, 76(x12)
                  sw  x20, 80(x12)
                  sw  x21, 84(x12)
                  sw  x22, 88(x12)
                  sw  x23, 92(x12)
                  sw  x24, 96(x12)
                  sw  x25, 100(x12)
                  sw  x26, 104(x12)
                  sw  x27, 108(x12)
                  sw  x28, 112(x12)
                  sw  x29, 116(x12)
                  sw  x30, 120(x12)
                  sw  x31, 124(x12)
                  add x22, x12, zero
                  csrr x25, 0x300 # MSTATUS
                  csrr x25, 0x342 # MCAUSE
                  srli x25, x25, 31
                  bne x25, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x25, 0x341 # MEPC
                  csrr x25, 0x342 # MCAUSE
                  li x16, 0x3 # BREAKPOINT
                  beq x25, x16, ebreak_handler
                  li x16, 0x8 # ECALL_UMODE
                  beq x25, x16, ecall_handler
                  li x16, 0x9 # ECALL_SMODE
                  beq x25, x16, ecall_handler
                  li x16, 0xb # ECALL_MMODE
                  beq x25, x16, ecall_handler
                  li x16, 0x1
                  beq x25, x16, instr_fault_handler
                  li x16, 0x5
                  beq x25, x16, load_fault_handler
                  li x16, 0x7
                  beq x25, x16, store_fault_handler
                  li x16, 0xc
                  beq x25, x16, pt_fault_handler
                  li x16, 0xd
                  beq x25, x16, pt_fault_handler
                  li x16, 0xf
                  beq x25, x16, pt_fault_handler
                  li x16, 0x2 # ILLEGAL_INSTRUCTION
                  beq x25, x16, illegal_instr_handler
                  csrr x16, 0x343 # MTVAL
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
                  add x12, x22, zero
                  lw  x1, 4(x12)
                  lw  x2, 8(x12)
                  lw  x3, 12(x12)
                  lw  x4, 16(x12)
                  lw  x5, 20(x12)
                  lw  x6, 24(x12)
                  lw  x7, 28(x12)
                  lw  x8, 32(x12)
                  lw  x9, 36(x12)
                  lw  x10, 40(x12)
                  lw  x11, 44(x12)
                  lw  x12, 48(x12)
                  lw  x13, 52(x12)
                  lw  x14, 56(x12)
                  lw  x15, 60(x12)
                  lw  x16, 64(x12)
                  lw  x17, 68(x12)
                  lw  x18, 72(x12)
                  lw  x19, 76(x12)
                  lw  x20, 80(x12)
                  lw  x21, 84(x12)
                  lw  x22, 88(x12)
                  lw  x23, 92(x12)
                  lw  x24, 96(x12)
                  lw  x25, 100(x12)
                  lw  x26, 104(x12)
                  lw  x27, 108(x12)
                  lw  x28, 112(x12)
                  lw  x29, 116(x12)
                  lw  x30, 120(x12)
                  lw  x31, 124(x12)
                  addi x12, x12, 128
                  mret

load_fault_handler:
                  add x12, x22, zero
                  lw  x1, 4(x12)
                  lw  x2, 8(x12)
                  lw  x3, 12(x12)
                  lw  x4, 16(x12)
                  lw  x5, 20(x12)
                  lw  x6, 24(x12)
                  lw  x7, 28(x12)
                  lw  x8, 32(x12)
                  lw  x9, 36(x12)
                  lw  x10, 40(x12)
                  lw  x11, 44(x12)
                  lw  x12, 48(x12)
                  lw  x13, 52(x12)
                  lw  x14, 56(x12)
                  lw  x15, 60(x12)
                  lw  x16, 64(x12)
                  lw  x17, 68(x12)
                  lw  x18, 72(x12)
                  lw  x19, 76(x12)
                  lw  x20, 80(x12)
                  lw  x21, 84(x12)
                  lw  x22, 88(x12)
                  lw  x23, 92(x12)
                  lw  x24, 96(x12)
                  lw  x25, 100(x12)
                  lw  x26, 104(x12)
                  lw  x27, 108(x12)
                  lw  x28, 112(x12)
                  lw  x29, 116(x12)
                  lw  x30, 120(x12)
                  lw  x31, 124(x12)
                  addi x12, x12, 128
                  mret

store_fault_handler:
                  add x12, x22, zero
                  lw  x1, 4(x12)
                  lw  x2, 8(x12)
                  lw  x3, 12(x12)
                  lw  x4, 16(x12)
                  lw  x5, 20(x12)
                  lw  x6, 24(x12)
                  lw  x7, 28(x12)
                  lw  x8, 32(x12)
                  lw  x9, 36(x12)
                  lw  x10, 40(x12)
                  lw  x11, 44(x12)
                  lw  x12, 48(x12)
                  lw  x13, 52(x12)
                  lw  x14, 56(x12)
                  lw  x15, 60(x12)
                  lw  x16, 64(x12)
                  lw  x17, 68(x12)
                  lw  x18, 72(x12)
                  lw  x19, 76(x12)
                  lw  x20, 80(x12)
                  lw  x21, 84(x12)
                  lw  x22, 88(x12)
                  lw  x23, 92(x12)
                  lw  x24, 96(x12)
                  lw  x25, 100(x12)
                  lw  x26, 104(x12)
                  lw  x27, 108(x12)
                  lw  x28, 112(x12)
                  lw  x29, 116(x12)
                  lw  x30, 120(x12)
                  lw  x31, 124(x12)
                  addi x12, x12, 128
                  mret

ebreak_handler:   
                  csrr  x25, 0x341
                  addi  x25, x25, 4
                  csrw  0x341, x25
                  add x12, x22, zero
                  lw  x1, 4(x12)
                  lw  x2, 8(x12)
                  lw  x3, 12(x12)
                  lw  x4, 16(x12)
                  lw  x5, 20(x12)
                  lw  x6, 24(x12)
                  lw  x7, 28(x12)
                  lw  x8, 32(x12)
                  lw  x9, 36(x12)
                  lw  x10, 40(x12)
                  lw  x11, 44(x12)
                  lw  x12, 48(x12)
                  lw  x13, 52(x12)
                  lw  x14, 56(x12)
                  lw  x15, 60(x12)
                  lw  x16, 64(x12)
                  lw  x17, 68(x12)
                  lw  x18, 72(x12)
                  lw  x19, 76(x12)
                  lw  x20, 80(x12)
                  lw  x21, 84(x12)
                  lw  x22, 88(x12)
                  lw  x23, 92(x12)
                  lw  x24, 96(x12)
                  lw  x25, 100(x12)
                  lw  x26, 104(x12)
                  lw  x27, 108(x12)
                  lw  x28, 112(x12)
                  lw  x29, 116(x12)
                  lw  x30, 120(x12)
                  lw  x31, 124(x12)
                  addi x12, x12, 128
                  mret

illegal_instr_handler:
                  csrr  x25, 0x341
                  addi  x25, x25, 4
                  csrw  0x341, x25
                  add x12, x22, zero
                  lw  x1, 4(x12)
                  lw  x2, 8(x12)
                  lw  x3, 12(x12)
                  lw  x4, 16(x12)
                  lw  x5, 20(x12)
                  lw  x6, 24(x12)
                  lw  x7, 28(x12)
                  lw  x8, 32(x12)
                  lw  x9, 36(x12)
                  lw  x10, 40(x12)
                  lw  x11, 44(x12)
                  lw  x12, 48(x12)
                  lw  x13, 52(x12)
                  lw  x14, 56(x12)
                  lw  x15, 60(x12)
                  lw  x16, 64(x12)
                  lw  x17, 68(x12)
                  lw  x18, 72(x12)
                  lw  x19, 76(x12)
                  lw  x20, 80(x12)
                  lw  x21, 84(x12)
                  lw  x22, 88(x12)
                  lw  x23, 92(x12)
                  lw  x24, 96(x12)
                  lw  x25, 100(x12)
                  lw  x26, 104(x12)
                  lw  x27, 108(x12)
                  lw  x28, 112(x12)
                  lw  x29, 116(x12)
                  lw  x30, 120(x12)
                  lw  x31, 124(x12)
                  addi x12, x12, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x25, 0x300 # MSTATUS;
                  csrr  x25, 0x304 # MIE;
                  csrr  x25, 0x344 # MIP;
                  csrrc x25, 0x344, x25 # MIP;
                  add x12, x22, zero
                  lw  x1, 4(x12)
                  lw  x2, 8(x12)
                  lw  x3, 12(x12)
                  lw  x4, 16(x12)
                  lw  x5, 20(x12)
                  lw  x6, 24(x12)
                  lw  x7, 28(x12)
                  lw  x8, 32(x12)
                  lw  x9, 36(x12)
                  lw  x10, 40(x12)
                  lw  x11, 44(x12)
                  lw  x12, 48(x12)
                  lw  x13, 52(x12)
                  lw  x14, 56(x12)
                  lw  x15, 60(x12)
                  lw  x16, 64(x12)
                  lw  x17, 68(x12)
                  lw  x18, 72(x12)
                  lw  x19, 76(x12)
                  lw  x20, 80(x12)
                  lw  x21, 84(x12)
                  lw  x22, 88(x12)
                  lw  x23, 92(x12)
                  lw  x24, 96(x12)
                  lw  x25, 100(x12)
                  lw  x26, 104(x12)
                  lw  x27, 108(x12)
                  lw  x28, 112(x12)
                  lw  x29, 116(x12)
                  lw  x30, 120(x12)
                  lw  x31, 124(x12)
                  addi x12, x12, 128
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
