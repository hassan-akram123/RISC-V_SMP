.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x20, h0_start
jalr x0, x20, 0
h0_start:
                  li x29, 0x40000100
                  csrw 0x301, x29
kernel_sp:        
                  la x25, kernel_stack_end

trap_vec_init:    
                  la x29, mtvec_handler
                  ori x29, x29, 0
                  csrw 0x305, x29 # MTVEC

mepc_setup:       
                  la x29, init
                  csrw 0x341, x29

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x29, 0x1800
                  csrw 0x300, x29 # MSTATUS
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0xc2a3dba3
                  li x2, 0x0
                  li x3, 0xf72d0ae4
                  li x4, 0x0
                  li x5, 0xf05f69aa
                  li x6, 0x2
                  li x7, 0x80000000
                  li x8, 0xf68656c3
                  li x9, 0xd333d0a9
                  li x10, 0xf3ded494
                  li x11, 0x80000000
                  li x13, 0xe
                  li x14, 0xfa326ae5
                  li x15, 0xf8bce9c9
                  li x16, 0x0
                  li x17, 0x80000000
                  li x18, 0x80000000
                  li x19, 0x80000000
                  li x20, 0x4
                  li x21, 0x80000000
                  li x22, 0xaee10d93
                  li x23, 0x80000000
                  li x24, 0x708afbdf
                  li x26, 0x0
                  li x27, 0xd585a9bc
                  li x28, 0x0
                  li x29, 0xfec8b250
                  li x30, 0x0
                  li x31, 0x80000000
                  la x12, user_stack_end
main:             nop
                  la           s7, sub_2
                  ori          tp, s8, 478
                  addi         s7, s7, -650
                  sltu         t4, t3, a6
                  add          t1, s1, a0
                  sll          t1, t3, gp
                  ori          t3, t5, 728
main_j2:          jalr         ra, s7, 651 #jump main -> sub_2
                  la           tp, region_1+1805 #start riscv_load_store_rand_instr_stream_0
                  sltu         s3, t5, ra
                  lw           gp, -521(tp)
                  lb           a5, -97(tp)
                  or           s8, s5, s8
                  lbu          a7, 176(tp)
                  sub          s7, a1, s3
                  srai         a1, a5, 6
                  sb           s2, -1450(tp)
                  add          a0, s4, s4
                  sh           a2, -1691(tp)
                  addi         sp, zero, 171
                  slli         s6, sp, 18
                  sra          a1, sp, t3
                  auipc        s0, 547026
                  lbu          t6, -1769(tp)
                  lbu          s10, -668(tp)
                  and          t1, a3, s7
                  sw           s9, -1265(tp)
                  addi         sp, a7, -173
                  lhu          s3, -1547(tp)
                  srai         a4, s10, 13
                  sb           a2, -439(tp)
                  srai         a5, sp, 27
                  lbu          s11, -1059(tp)
                  sb           s10, -886(tp)
                  xor          ra, t0, t6
                  lh           a3, 129(tp)
                  sb           s9, 133(tp)
                  slli         t6, t4, 29
                  sb           a3, -1268(tp)
                  lbu          s2, -539(tp)
                  lbu          t6, -322(tp)
                  sb           s5, -1667(tp)
                  slt          a0, tp, a7
                  lb           a7, -2(tp)
                  lb           s0, -374(tp)
                  sub          s7, s6, a0
                  lhu          s1, -609(tp)
                  lbu          a4, -184(tp)
                  sb           gp, -256(tp)
                  sh           a2, -251(tp)
                  lbu          a5, -1010(tp)
                  lw           s10, -981(tp)
                  addi         s6, t5, 772
                  sltiu        a1, a3, 607
                  lbu          a5, -1344(tp)
                  lbu          t2, -1396(tp)
                  sra          s11, a2, a4
                  sb           t2, 99(tp)
                  lui          ra, 472357
                  lhu          a7, -927(tp) #end riscv_load_store_rand_instr_stream_0
                  la           a3, region_0+807 #start load_store_instr_stream_1
                  lbu          s3, -42(a3)
                  lh           s3, -27(a3)
                  la           ra, region_0+983 #start load_store_instr_stream_0
                  lbu          t6, 59(a3)
                  lbu          s7, -206(ra)
                  lbu          t3, 842(ra)
                  lbu          t1, 62(a3)
                  sb           sp, -668(ra)
                  lbu          t6, -27(a3)
                  lhu          a1, 15(a3)
                  lbu          t2, -838(ra)
                  sb           ra, 6(a3)
                  lbu          a6, 2(a3)
                  lb           s3, -204(ra)
                  lbu          s6, 15(a3) #end load_store_instr_stream_1
                  lhu          gp, -673(ra) #end load_store_instr_stream_0
                  la           a6, region_1+244 #start riscv_load_store_hazard_instr_stream_0
                  sra          s10, t1, s0
                  sw           zero, -188(a6)
                  addi         sp, t4, -973
                  lw           a1, -188(a6)
                  sb           t5, 6(a6)
                  sb           t3, 6(a6)
                  addi         s6, t0, -1970
                  xor          sp, a7, a2
                  sw           sp, 56(a6)
                  lh           s6, 36(a6)
                  auipc        sp, 39144
                  lb           s2, -139(a6)
                  sra          a7, s6, s7
                  lbu          s10, -139(a6)
                  lbu          tp, -139(a6)
                  lh           gp, -142(a6)
                  lh           tp, -142(a6)
                  sra          s6, s0, s0
                  sh           sp, -142(a6) #end riscv_load_store_hazard_instr_stream_0
                  srl          zero, s9, t4
                  addi         s1, a7, -943
                  sub          a7, s4, a3
                  srl          t2, t4, s0
                  addi         a3, a5, 1334
                  sltu         gp, s7, s8
                  sltu         s0, t0, zero
                  sltiu        s1, a5, -1920
                  bgeu         gp, t2, 23f
                  xor          s10, a1, t5
                  la           a1, sub_1
                  sub          zero, a1, s8
                  srl          ra, tp, gp
                  addi         a1, a1, -912
                  or           a4, t0, a2
                  andi         s8, s9, 1812
                  slli         s10, t5, 25
main_j1:          jalr         ra, a1, 912 #jump main -> sub_1
                  xor          sp, s3, a3
                  sub          a3, s1, a3
                  lui          a1, 149783
                  andi         sp, s7, 1489
                  nop
                  slli         t2, ra, 20
                  slti         s1, t3, 1955
                  blt          a3, s11, 27f
                  andi         a4, a1, 952
                  addi         a5, s7, 1896
                  srai         gp, gp, 27
                  slti         tp, gp, 1458
                  bne          s5, t2, 26f
                  srl          a3, tp, t1
23:               srli         s2, s4, 21
                  nop
                  bltu         a2, t5, 45f
26:               srai         t0, a7, 1
27:               sub          tp, ra, a5
                  bne          s10, a5, 43f
                  lui          a0, 617473
                  addi         t5, s5, 1678
                  xor          s7, zero, ra
                  slt          a1, s0, s9
                  sltu         tp, s7, tp
                  lui          a0, 737202
                  srli         s7, ra, 12
                  slti         s10, s9, 400
                  bne          s0, s0, 42f
                  and          s1, zero, t5
                  bgeu         s8, s9, 45f
                  sra          sp, s4, a7
                  nop
42:               or           a5, s7, sp
43:               nop
                  xor          tp, a4, a2
45:               srli         zero, s0, 29
                  auipc        t0, 162067
                  sltu         gp, s7, t1
                  addi         tp, t6, -9
                  bltu         s6, t0, 65f
                  nop
                  sub          ra, t5, a1
                  slti         gp, a5, 719
                  or           t0, a2, s10
                  addi         s8, a2, 1350
                  bgeu         s2, s11, 65f
                  bge          s4, t2, 60f
                  xori         s11, a7, -1619
                  sltu         ra, s7, a1
                  sltu         s7, t2, s7
60:               slt          s2, t1, a0
                  add          a5, s10, a0
                  srl          t6, ra, t0
                  blt          a0, t3, 67f
                  auipc        sp, 8726
65:               slli         s7, a7, 22
                  bgeu         t4, s9, 68f
67:               beq          s0, s10, 79f
68:               srai         s0, s8, 26
                  ori          t2, t5, -1515
                  bltu         t3, t0, 78f
                  slti         a5, a2, 948
                  srai         s6, s11, 24
                  or           a0, s10, a6
                  srli         a5, t4, 31
                  or           a3, gp, a3
                  and          a3, a3, s4
                  slt          a1, s7, gp
78:               bge          a7, s4, 84f
79:               bne          s6, a7, 96f
                  andi         s11, a7, 428
                  blt          t5, a6, 86f
                  srl          s2, a4, a4
                  srli         s6, a7, 31
84:               bltu         tp, t1, 103f
                  nop
86:               blt          s4, a4, 88f
                  slti         t3, a5, -1402
88:               srai         t2, a5, 9
                  slti         a0, t3, 412
                  addi         s0, t0, 1194
                  slti         gp, a3, -323
                  blt          s9, t6, 94f
                  or           t3, a6, zero
94:               xor          t6, t6, t4
                  bgeu         s8, t3, 109f
96:               xori         a7, t0, -717
                  sub          t5, s11, s8
                  addi         a5, s0, -1388
                  nop
                  ori          a3, ra, -2026
                  bgeu         s7, a5, 104f
                  bge          a6, t2, 110f
103:              sltu         s0, tp, t2
104:              slti         gp, s2, 1866
                  xori         a4, a2, 993
                  sltu         s5, s2, s0
                  srl          t4, s5, t1
                  blt          s3, a1, 110f
109:              xori         t2, a3, 771
110:              andi         t1, zero, -445
                  la x20, test_done
                  jalr x0, x20, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            addi         a2, a2, -32
                  slli         t0, s10, 22
                  xor          a0, a7, t5
                  or           s11, sp, a3
                  or           t0, t2, t6
                  slt          s5, s11, a5
                  sltu         a0, s3, ra
                  or           t4, s1, t2
                  sw           ra, 4(a2)
                  and          s3, a5, t4
                  addi         a6, tp, 824
                  and          t6, a2, s6
                  la           sp, region_1+1556 #start riscv_load_store_rand_instr_stream_6
                  sltu         s0, s4, s8
                  lb           a1, -15(sp)
                  lbu          t2, -1(sp)
                  sub          tp, a2, t1
                  sltu         s5, t0, a0
                  auipc        s6, 822992
                  lbu          t0, 11(sp)
                  sltu         t3, t0, s10
                  lw           s11, 0(sp)
                  sll          t4, zero, s4
                  sll          zero, s8, gp
                  lhu          t5, -12(sp)
                  lb           a7, 5(sp)
                  slli         ra, t2, 19
                  srli         a6, gp, 23
                  sub          a3, t3, s2
                  sb           t2, 0(sp)
                  lb           s2, 1(sp)
                  sw           a4, 8(sp)
                  sh           s3, 10(sp)
                  andi         t5, tp, -1317
                  add          s3, s10, t1
                  xor          gp, s9, t6
                  lw           t4, -8(sp)
                  andi         t4, s2, -1716
                  add          t0, gp, t5
                  ori          ra, s6, -529
                  lbu          s11, -15(sp)
                  lh           ra, -16(sp)
                  addi         t0, s5, -940
                  srai         s0, t1, 16
                  lh           a0, -10(sp)
                  sub          s11, a0, t5
                  sltiu        a5, gp, 535
                  sltu         a4, t3, t1
                  or           a5, s6, s9
                  sb           s3, -3(sp)
                  lh           ra, 10(sp)
                  addi         s3, sp, -1796
                  sb           zero, 3(sp)
                  lbu          s6, 7(sp)
                  or           s2, a3, a0
                  srl          s5, s8, t2
                  slli         s11, s7, 3
                  slt          a3, s11, sp
                  sb           s1, -13(sp) #end riscv_load_store_rand_instr_stream_6
                  la           sp, region_0+852 #start riscv_load_store_hazard_instr_stream_4
                  sb           s9, 81(sp)
                  lhu          s5, 954(sp)
                  sh           s6, 954(sp)
                  lbu          s10, 954(sp)
                  sb           a0, 954(sp)
                  lh           t2, 342(sp)
                  lh           a4, 342(sp)
                  lhu          t4, 342(sp)
                  xor          t3, a4, s11
                  lhu          s5, 342(sp)
                  sb           tp, 63(sp)
                  lbu          ra, 63(sp)
                  srai         s7, s5, 0
                  lb           a6, 483(sp)
                  sll          s8, a3, s11
                  sb           zero, -461(sp) #end riscv_load_store_hazard_instr_stream_4
                  la           gp, region_1+138 #start riscv_load_store_rand_instr_stream_2
                  nop
                  sltiu        t1, s7, 1109
                  sh           s1, 834(gp)
                  xori         s11, s10, -363
                  addi         s5, a5, 1738
                  lh           t6, 628(gp)
                  slti         s2, t2, 1281
                  lbu          tp, 1352(gp)
                  srli         s2, gp, 7
                  sltiu        s0, ra, -1754
                  lbu          t4, 441(gp)
                  sb           s1, 1615(gp)
                  lbu          s1, 1659(gp)
                  add          a6, t1, a4
                  ori          t1, s3, -925
                  lbu          s2, 1655(gp)
                  sb           s1, 1395(gp)
                  lb           a0, 1067(gp)
                  lhu          a1, 188(gp)
                  lw           s8, 730(gp)
                  lb           zero, 1197(gp)
                  sh           zero, 560(gp)
                  srli         t3, s5, 24
                  lb           s3, 561(gp)
                  sh           a5, 1802(gp)
                  lb           s8, 139(gp)
                  lhu          t2, 1642(gp)
                  sb           a7, 149(gp)
                  xor          t6, a4, tp
                  lb           sp, 1107(gp)
                  sw           s1, 1622(gp)
                  srli         t3, a7, 14
                  lhu          s0, -26(gp)
                  sb           t6, 343(gp) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_0+148 #start riscv_load_store_hazard_instr_stream_6
                  sb           s10, 6(sp)
                  lbu          t3, 6(sp)
                  lhu          a6, 6(sp)
                  sb           t2, 6(sp)
                  sh           gp, 6(sp)
                  nop
                  xori         s5, s4, 1973
                  lbu          s5, 6(sp)
                  sh           s11, 6(sp)
                  lbu          s5, 6(sp)
                  lh           tp, 6(sp)
                  lbu          a3, 6(sp)
                  lbu          s2, 6(sp)
                  lb           s6, 6(sp)
                  sb           ra, 6(sp)
                  lh           s0, 6(sp)
                  lh           a5, 6(sp)
                  lbu          gp, 6(sp)
                  sh           s0, 6(sp)
                  lb           a5, 6(sp) #end riscv_load_store_hazard_instr_stream_6
                  la           a0, region_1+811 #start riscv_load_store_rand_instr_stream_5
                  lb           a6, -232(a0)
                  lb           s2, -214(a0)
                  xori         s6, s2, -1976
                  or           a6, s5, t3
                  lh           t2, -57(a0)
                  andi         t2, a5, 1982
                  lb           ra, 49(a0)
                  slt          a5, a1, zero
                  srl          s3, a7, a3
                  sra          s7, s1, t1
                  lb           s5, -152(a0)
                  nop
                  lb           zero, 214(a0)
                  or           s5, s11, s3
                  srl          t4, a6, s6
                  sb           s5, -29(a0)
                  add          a1, a5, s2
                  lb           a6, 92(a0)
                  lbu          s7, 25(a0)
                  srl          s1, zero, gp
                  xori         ra, a5, 382
                  lb           t4, -116(a0)
                  sltu         s1, a5, a7
                  sltu         t2, a2, gp
                  xor          a6, a5, zero
                  xori         s2, gp, -1334
                  lhu          a3, -21(a0)
                  sb           s11, -98(a0)
                  sb           gp, 48(a0)
                  or           s5, a5, t5
                  and          t3, a5, a6
                  andi         a3, a0, 1080
                  lbu          s3, -185(a0)
                  sw           zero, 221(a0)
                  lui          zero, 525396
                  lb           t6, 76(a0)
                  sh           tp, -159(a0)
                  sh           a5, 15(a0)
                  ori          t6, a3, -1198
                  auipc        t3, 983183
                  slt          t6, a4, a1
                  lbu          s8, 171(a0)
                  auipc        t6, 355059
                  lhu          s8, 5(a0) #end riscv_load_store_rand_instr_stream_5
                  la           ra, region_1+1133 #start load_store_instr_stream_2
                  la           s11, region_1+1453 #start load_store_instr_stream_3
                  la           a5, region_1+744 #start load_store_instr_stream_1
                  lbu          sp, -30(s11)
                  lbu          tp, 134(ra)
                  lb           t4, 38(a5)
                  lb           s6, 43(s11)
                  sb           s9, -88(ra)
                  lbu          t0, 212(ra)
                  la           gp, region_1+388 #start load_store_instr_stream_0
                  lbu          s6, -156(ra)
                  sb           a5, -15(gp)
                  sb           s1, -59(a5)
                  sh           t5, -233(ra)
                  lb           t1, 73(ra)
                  lbu          s1, -2(s11)
                  lhu          t5, 14(gp)
                  sb           zero, -37(s11)
                  lbu          s0, -27(a5)
                  lbu          tp, 6(gp)
                  sb           s1, 66(ra)
                  sb           s6, 17(s11)
                  lb           t5, -5(a5)
                  lbu          a7, 47(a5)
                  lb           t0, -46(ra)
                  lhu          t3, 10(gp)
                  sh           ra, -24(a5)
                  lhu          t1, 4(a5)
                  sb           a7, 47(s11)
                  sw           sp, 183(ra)
                  lbu          a4, -7(gp)
                  lh           t0, -48(a5)
                  sb           a5, 15(a5)
                  sb           t4, 159(ra) #end load_store_instr_stream_2
                  lbu          s0, 62(s11)
                  lb           s1, 25(a5) #end load_store_instr_stream_1
                  sw           zero, -41(s11) #end load_store_instr_stream_3
                  lbu          a7, -10(gp) #end load_store_instr_stream_0
                  la           ra, region_1+65 #start load_store_instr_stream_0
                  la           sp, region_1+1404 #start load_store_instr_stream_1
                  lbu          zero, 966(ra)
                  sb           a4, 69(sp)
                  lb           t5, -23(sp)
                  sb           s3, -118(sp)
                  lbu          gp, 234(sp)
                  sb           t5, 323(ra)
                  sw           s2, 76(sp) #end load_store_instr_stream_1
                  lb           s1, 364(ra)
                  lhu          s11, 1065(ra)
                  lb           gp, 304(ra)
                  lb           s7, 263(ra) #end load_store_instr_stream_0
                  la           a7, region_1+1045 #start riscv_load_store_hazard_instr_stream_5
                  lb           a3, -22(a7)
                  nop
                  lbu          a3, -22(a7)
                  sltu         t4, s0, ra
                  lhu          s11, -53(a7)
                  sw           ra, -53(a7)
                  lhu          s11, -53(a7)
                  sw           s11, -53(a7)
                  lbu          s10, -53(a7)
                  lhu          a5, -53(a7)
                  sh           s1, -53(a7)
                  ori          a5, a6, -310
                  lbu          a3, -53(a7) #end riscv_load_store_hazard_instr_stream_5
                  la           t3, region_0+670 #start load_store_instr_stream_3
                  la           s5, region_0+1333 #start load_store_instr_stream_1
                  la           tp, region_0+1375 #start load_store_instr_stream_2
                  sh           tp, -31(tp)
                  lb           s3, -8(s5)
                  lh           t2, -100(t3)
                  la           t5, region_0+1445 #start load_store_instr_stream_4
                  la           t0, region_0+1564 #start load_store_instr_stream_0
                  sh           s11, 29(t5)
                  sb           tp, 226(t3)
                  lbu          t4, 14(s5)
                  sh           t6, 1(s5)
                  lb           s3, 38(tp)
                  lbu          t1, 2(s5)
                  sb           a3, 471(t3)
                  lbu          t1, 42(tp)
                  lhu          s1, -254(t0)
                  lbu          s3, 0(s5)
                  sb           a7, 10(s5)
                  lb           a0, -27(t5)
                  sb           s7, 119(t0)
                  lbu          a6, -20(t5)
                  lbu          t1, 691(t3)
                  lbu          a7, -2(s5)
                  sb           t3, -11(t5)
                  lh           a4, 53(t5)
                  lb           t4, -55(tp)
                  lhu          s0, -236(t0)
                  lbu          s6, -20(t5)
                  lb           a0, -30(t5)
                  sb           a4, -179(t0)
                  sb           t4, 0(t5)
                  lb           t4, 12(s5)
                  lbu          a5, -9(t0)
                  sb           t4, 41(tp)
                  sw           gp, -41(t5) #end load_store_instr_stream_4
                  lb           s0, 16(s5)
                  lbu          s7, 78(t0)
                  sh           a4, 1170(t3)
                  lbu          s11, 0(tp) #end load_store_instr_stream_2
                  sb           t3, 692(t3) #end load_store_instr_stream_3
                  sb           t0, 4(s5) #end load_store_instr_stream_1
                  lbu          a6, 150(t0) #end load_store_instr_stream_0
                  la           sp, region_0+1526 #start riscv_load_store_hazard_instr_stream_3
                  lb           s5, 53(sp)
                  lbu          s2, 53(sp)
                  lb           a5, 53(sp)
                  sh           s7, 60(sp)
                  lbu          a7, 60(sp)
                  sb           t6, 60(sp)
                  sh           s3, 60(sp)
                  lb           t5, 60(sp)
                  sh           t4, 60(sp)
                  sb           a3, -9(sp)
                  lb           gp, -9(sp)
                  sltu         s11, a2, a1
                  lb           t3, -9(sp)
                  lbu          a3, -9(sp)
                  lb           t5, -9(sp)
                  sb           sp, -9(sp)
                  lb           t6, -9(sp)
                  sb           s9, -9(sp)
                  sb           t5, -59(sp) #end riscv_load_store_hazard_instr_stream_3
                  la           t5, region_0+1042 #start load_store_instr_stream_4
                  la           gp, region_0+1867 #start load_store_instr_stream_1
                  la           ra, region_0+205 #start load_store_instr_stream_3
                  la           s2, region_0+363 #start load_store_instr_stream_0
                  lbu          t0, 7(t5)
                  sw           t3, -6(t5)
                  sw           t3, -6(t5)
                  sh           s1, 5(gp)
                  lbu          a4, -12(ra)
                  sw           s1, 113(s2)
                  lbu          zero, -26(ra)
                  lbu          s3, -6(gp)
                  lhu          a3, 16(t5)
                  lhu          t6, 7(ra)
                  lhu          s7, 57(ra)
                  sb           a5, -154(s2)
                  lbu          t1, 74(gp)
                  lbu          s11, -16(t5)
                  la           sp, region_0+772 #start load_store_instr_stream_2
                  sw           t1, 192(sp)
                  sb           gp, 206(s2)
                  sb           t1, 58(ra)
                  lbu          a3, 210(sp)
                  sb           a5, 6(t5)
                  lbu          t3, 101(gp)
                  lb           s11, 1(s2)
                  lbu          a4, -3(t5)
                  lbu          s3, -226(gp)
                  lb           t0, 171(s2)
                  lb           a5, 64(gp)
                  sb           t3, -220(s2)
                  lbu          a5, 74(s2)
                  sb           tp, 44(ra)
                  sb           t5, -60(ra) #end load_store_instr_stream_3
                  lb           t0, -65(sp)
                  lw           a3, 2(t5)
                  lb           t2, -5(t5)
                  sb           s0, -17(gp) #end load_store_instr_stream_1
                  sb           a4, 235(sp)
                  sb           a0, 17(sp)
                  lbu          s0, -7(t5) #end load_store_instr_stream_4
                  lbu          s8, 212(s2)
                  sb           a5, -204(sp) #end load_store_instr_stream_2
                  lb           a6, 210(s2) #end load_store_instr_stream_0
                  la           sp, region_1+337 #start riscv_load_store_rand_instr_stream_1
                  lh           s3, -7(sp)
                  nop
                  slti         a0, t5, -1914
                  sw           t4, -41(sp)
                  lui          t5, 480675
                  sh           a2, 17(sp)
                  lbu          a3, -22(sp)
                  lb           s3, 59(sp)
                  nop
                  sh           a1, 31(sp)
                  lh           a6, 37(sp)
                  sb           s6, 56(sp)
                  lh           s6, 21(sp)
                  lh           a4, -9(sp)
                  sh           a3, 37(sp)
                  lbu          a5, -53(sp)
                  lh           t3, -25(sp)
                  lbu          s11, -50(sp)
                  lbu          s6, 64(sp)
                  sra          t6, gp, sp
                  ori          s10, sp, 1300
                  lhu          t3, 45(sp)
                  nop
                  sh           s4, 15(sp)
                  sll          t1, ra, s5
                  lhu          gp, 23(sp)
                  xor          s5, s9, t4
                  lbu          a7, 10(sp)
                  sh           s4, 43(sp)
                  lbu          a3, 34(sp)
                  lb           s10, 16(sp)
                  sb           t4, 6(sp)
                  lbu          a3, 12(sp)
                  lb           t4, 39(sp)
                  and          s2, gp, ra
                  sb           a1, -35(sp) #end riscv_load_store_rand_instr_stream_1
                  la           a6, region_0+1443 #start load_store_instr_stream_1
                  la           t0, region_0+1021 #start load_store_instr_stream_3
                  la           a5, region_0+1117 #start load_store_instr_stream_2
                  sh           t0, -1(a6)
                  la           s6, region_0+526 #start load_store_instr_stream_4
                  la           t4, region_0+1049 #start load_store_instr_stream_0
                  lb           s2, -54(a6)
                  lbu          s3, 20(s6)
                  lhu          a1, -1019(t4)
                  lb           t6, -58(a6)
                  lb           a0, 485(t4)
                  lbu          t2, 24(a6)
                  lbu          a7, 858(t0)
                  lhu          s10, -963(t0)
                  lw           a7, -229(t4)
                  sb           s4, 412(t4)
                  sb           s10, -51(a5)
                  lhu          a4, 234(s6)
                  sb           zero, 34(a6)
                  lb           a1, -4(a5)
                  sb           zero, 34(a5)
                  sb           a0, 572(t0)
                  sb           a5, -123(s6)
                  lb           t6, 62(a5)
                  sb           a7, -17(s6)
                  sb           s11, -42(a6)
                  lb           t2, -207(s6)
                  sb           ra, 270(t0)
                  lhu          s1, -981(t4)
                  lb           t5, 359(t4)
                  lh           s8, -375(t0)
                  sb           s2, -306(t0) #end load_store_instr_stream_3
                  lbu          a7, -25(s6) #end load_store_instr_stream_4
                  sh           sp, 25(a5) #end load_store_instr_stream_2
                  sh           a5, 39(a6) #end load_store_instr_stream_1
                  lb           a1, -276(t4) #end load_store_instr_stream_0
                  la           sp, region_0+1379 #start riscv_load_store_rand_instr_stream_4
                  sb           t1, 28(sp)
                  lbu          a6, -110(sp)
                  srli         s6, t5, 17
                  sra          t6, s10, s5
                  add          s3, s3, t5
                  srl          a7, a3, s3
                  lui          zero, 279511
                  lui          t1, 555037
                  or           t0, a4, sp
                  sll          s3, s11, s1
                  andi         t1, a5, 2029
                  lh           s2, -3(sp)
                  lb           t6, 230(sp)
                  sb           tp, 251(sp)
                  lw           s6, -199(sp)
                  lw           t0, 201(sp)
                  lb           a5, -135(sp)
                  lbu          t3, -202(sp)
                  lhu          s11, -217(sp)
                  lw           s2, -35(sp)
                  xor          a4, s10, s9
                  lbu          s10, -256(sp)
                  lbu          s7, 239(sp)
                  auipc        a0, 213864
                  lh           a5, -185(sp)
                  lbu          s1, 217(sp)
                  lb           s1, 248(sp)
                  auipc        s0, 892186
                  lb           t0, 22(sp)
                  sub          a1, t3, s8
                  lb           a4, -6(sp)
                  sb           s11, 136(sp)
                  andi         a0, s3, -832
                  lbu          t6, 172(sp)
                  sh           s2, -239(sp)
                  lb           s10, 176(sp)
                  sb           t0, -194(sp) #end riscv_load_store_rand_instr_stream_4
                  la           t2, region_1+509 #start load_store_instr_stream_3
                  lbu          s2, 9(t2)
                  la           a5, region_1+1693 #start load_store_instr_stream_1
                  la           t5, region_1+828 #start load_store_instr_stream_0
                  lbu          t3, -148(a5)
                  lhu          s8, -1225(a5)
                  sb           s3, -1346(a5)
                  lb           t0, -1522(a5)
                  la           s11, region_1+929 #start load_store_instr_stream_2
                  lh           t4, 9(a5)
                  lh           s8, -5(t2)
                  sh           s2, -757(a5)
                  sb           a7, -26(s11)
                  sh           s7, 5(t2)
                  sb           s2, -7(t5)
                  lh           a0, 229(s11)
                  sb           t4, -11(t5)
                  lb           s6, -64(s11)
                  lb           tp, 16(t2)
                  sb           s6, -10(t5)
                  lbu          s2, -10(t2)
                  sb           s4, -474(a5)
                  lhu          a6, -1(t2)
                  lbu          ra, -208(s11)
                  sb           a5, 11(t5)
                  lb           s7, -15(t2)
                  lhu          t4, 41(a5)
                  lbu          t1, 6(t5)
                  lbu          t3, -488(a5)
                  lb           s5, 9(t2)
                  lbu          a3, -883(a5) #end load_store_instr_stream_1
                  lbu          gp, 41(s11) #end load_store_instr_stream_2
                  lbu          s2, -12(t2)
                  lb           ra, 6(t2) #end load_store_instr_stream_3
                  sw           s0, -12(t5) #end load_store_instr_stream_0
                  la           sp, region_1+1596 #start riscv_load_store_hazard_instr_stream_0
                  lb           s5, -141(sp)
                  sb           t3, -141(sp)
                  sb           a0, -141(sp)
                  lb           t5, -201(sp)
                  lbu          s1, -201(sp)
                  add          a3, tp, s0
                  lb           s8, -201(sp)
                  sb           s0, -201(sp)
                  lbu          s7, -201(sp)
                  and          a3, s8, t4
                  lbu          t4, -201(sp)
                  lbu          s1, -201(sp)
                  sra          t1, s3, s10
                  sltiu        t3, a4, 845
                  sb           t6, -201(sp)
                  slli         t2, a0, 21
                  lb           s11, -201(sp)
                  srli         t2, gp, 0
                  lbu          s11, -201(sp)
                  lbu          gp, -201(sp) #end riscv_load_store_hazard_instr_stream_0
                  la           sp, region_0+1616 #start riscv_load_store_rand_instr_stream_3
                  sub          s0, s11, s5
                  lbu          tp, -20(sp)
                  lb           a3, 6(sp)
                  sub          s5, t2, t3
                  xori         a3, a1, 1971
                  slti         s7, s5, -437
                  slt          t2, s5, a4
                  lb           a4, 45(sp)
                  sub          s1, gp, gp
                  xor          s5, a5, s8
                  srai         a1, s8, 8
                  lb           t2, 49(sp)
                  sra          a6, a0, tp
                  sltiu        a7, a0, -222
                  lbu          s3, 53(sp)
                  lh           s10, -48(sp)
                  lbu          s3, -11(sp)
                  sltu         a7, t5, t2
                  lh           s7, -44(sp)
                  sb           s4, -58(sp)
                  lb           t6, 56(sp)
                  lh           t0, 38(sp)
                  sb           s9, -45(sp)
                  sh           a7, 14(sp) #end riscv_load_store_rand_instr_stream_3
                  la           s1, region_1+1740 #start riscv_load_store_hazard_instr_stream_1
                  sb           s10, -161(s1)
                  add          t5, t1, a7
                  lbu          t3, -161(s1)
                  sub          a6, a4, tp
                  sb           a1, -161(s1)
                  xori         a3, s4, 357
                  sb           t4, -161(s1)
                  sb           gp, -145(s1)
                  srl          t4, a5, a7
                  sh           s0, -892(s1)
                  sb           s1, -42(s1)
                  lhu          a1, -42(s1)
                  andi         a6, s7, 846
                  lbu          t3, -528(s1)
                  xor          ra, s0, t5
                  nop
                  lbu          s2, -528(s1)
                  lb           zero, 91(s1)
                  lbu          a1, 91(s1) #end riscv_load_store_hazard_instr_stream_1
                  la           a5, region_1+1471 #start load_store_instr_stream_1
                  lbu          ra, -139(a5)
                  la           t5, region_1+422 #start load_store_instr_stream_0
                  lb           a3, 121(t5)
                  lbu          a3, 48(a5)
                  sb           s5, 7(t5)
                  lb           t4, -15(a5)
                  lb           ra, 111(t5)
                  lbu          s8, -248(a5)
                  sb           a1, -193(t5)
                  sb           tp, -104(a5)
                  lb           s2, -130(a5)
                  lbu          s1, 50(a5)
                  lw           s6, 62(t5)
                  lb           a7, -46(t5)
                  lb           a1, 24(a5)
                  lbu          s8, -215(t5)
                  lbu          t6, 120(t5)
                  sb           t2, 172(a5) #end load_store_instr_stream_1
                  sw           ra, 86(t5) #end load_store_instr_stream_0
                  la           sp, region_0+1793 #start riscv_load_store_rand_instr_stream_0
                  xori         t3, s3, 1348
                  sra          a7, s2, a0
                  addi         a1, s2, -1383
                  addi         ra, s2, -1863
                  lh           t4, -11(sp)
                  slli         ra, sp, 27
                  addi         s10, s4, -952
                  auipc        s1, 812503
                  lb           s0, -2(sp)
                  nop
                  addi         s8, a6, -1341
                  sh           t4, 5(sp)
                  sll          t2, s3, s8
                  sb           a4, -9(sp)
                  sltu         gp, sp, t0
                  srli         s11, s8, 24
                  or           tp, t0, a5
                  sltiu        s10, zero, -741
                  add          s2, tp, s0
                  sb           a0, 4(sp)
                  andi         s10, a3, 344
                  lbu          s7, -14(sp)
                  slli         s3, gp, 9
                  sub          s11, s5, s1
                  xori         a0, t6, 393
                  srli         t6, t6, 28
                  sltiu        t4, s0, -1097
                  or           a5, t2, a2
                  add          s0, tp, s5
                  lbu          s5, 4(sp)
                  sltiu        t3, a5, 1762
                  xori         t0, t3, 288
                  sll          a0, s6, s4
                  sltiu        tp, s2, 1345
                  lb           s5, 12(sp)
                  srai         t0, t5, 20
                  lh           zero, -5(sp)
                  sw           ra, 11(sp) #end riscv_load_store_rand_instr_stream_0
                  srl          s1, t4, sp
                  slti         t3, t4, 1973
                  beq          tp, t0, 5f
                  srl          s2, s10, t5
                  lui          s11, 526157
5:                sub          t2, s11, a1
                  xor          ra, s6, s3
                  sra          a1, s7, t5
                  addi         a3, a1, -504
                  blt          t3, s2, 18f
                  slli         s11, s1, 29
                  srl          a0, a6, a6
                  sub          a1, s6, t4
                  sll          a3, s6, t2
                  blt          s5, s4, 22f
                  auipc        s3, 632697
                  xori         s7, s0, -1688
                  slti         s1, gp, -1335
18:               lui          a4, 756892
                  nop
                  addi         a6, t4, 1389
                  srai         a3, a1, 8
22:               add          s11, tp, ra
                  slli         s5, zero, 1
                  ori          s8, t4, 1581
                  srl          tp, s7, zero
                  blt          t2, a4, 34f
                  srai         a0, s2, 14
                  or           s8, a0, a7
                  slt          t1, s9, s10
                  slti         t1, t0, -385
                  add          t3, t4, s0
                  nop
                  add          t4, a3, t4
34:               bgeu         a6, a1, 51f
                  sltiu        s1, t5, -1101
                  sll          a7, t2, t6
                  lui          a7, 85042
                  and          t3, s7, a6
                  slli         t4, t4, 11
                  bgeu         t3, a3, 48f
                  nop
                  slli         t4, sp, 19
                  slli         a1, t2, 12
                  bne          s7, s6, 62f
                  slli         a0, a5, 2
                  bge          s8, t1, 48f
                  nop
48:               bne          a0, s10, 54f
                  sltiu        s10, tp, -899
                  sltu         a4, s4, a2
51:               bgeu         a7, s11, 65f
                  addi         zero, ra, 1896
                  xor          t4, s10, a4
54:               add          t4, s6, s8
                  andi         s10, t1, -1834
                  or           s6, a7, s11
                  slt          s11, t0, s0
                  auipc        t4, 308208
                  bne          a3, tp, 73f
                  beq          a3, tp, 63f
                  slli         a3, ra, 8
62:               slli         s5, a0, 13
63:               sll          t0, a2, tp
                  ori          t4, s5, -513
65:               andi         s5, gp, 1400
                  bne          t5, t3, 68f
                  beq          s9, t2, 72f
68:               xor          s6, a3, s6
                  add          a4, a6, s4
                  beq          t5, a0, 83f
                  auipc        s2, 248065
72:               sltu         gp, a5, a6
73:               slt          s11, a5, a3
                  ori          t3, t0, 448
                  xor          t4, a1, t2
                  andi         a0, s2, -1974
                  blt          t0, t5, 93f
                  lui          t1, 715146
                  slt          gp, s5, a6
                  beq          a7, ra, 91f
                  auipc        a5, 715571
                  sltu         zero, t2, s3
83:               add          a6, a6, t5
                  srai         a6, s2, 29
                  sub          t2, s5, gp
                  beq          s1, zero, 87f
87:               xor          a3, t4, s6
                  blt          s6, s7, 96f
                  sra          t5, a1, a2
                  slt          t5, s8, s8
91:               nop
                  auipc        a5, 1026837
93:               sltiu        t2, gp, 916
                  ori          s11, t4, -196
                  xori         s0, gp, -1533
96:               sltiu        t4, a5, -1698
                  xor          a4, s10, s3
                  sub          s7, t4, s8
                  sub          a1, s11, s2
                  slt          s0, s9, t2
                  add          a4, a0, t4
                  beq          s10, s3, 107f
                  blt          s0, s2, 107f
                  bne          t5, t4, 124f
                  sll          tp, a5, s4
                  blt          t1, s9, 119f
107:              ori          s6, t3, 2013
                  blt          s6, s1, 121f
                  and          s11, s3, t5
                  sll          a0, s6, a0
                  bgeu         s1, s6, 129f
                  or           s11, s4, ra
                  ori          t6, s8, 307
                  srl          ra, a6, s3
                  add          s8, a3, s11
                  auipc        zero, 843833
                  sub          t1, a3, s10
                  blt          s2, a0, 120f
119:              srli         s5, s7, 29
120:              srli         s2, t6, 18
121:              or           zero, a5, a5
                  bne          s0, a1, 140f
                  lui          s7, 451024
124:              sltu         t4, s9, s11
                  bgeu         t0, s6, 133f
                  add          sp, a2, a6
                  andi         a0, s0, 1154
                  slt          s1, s8, sp
129:              bge          s1, s2, 136f
                  sra          tp, sp, tp
                  bltu         tp, s2, 134f
                  nop
133:              srai         s11, s4, 23
134:              slli         a1, t6, 30
                  beq          s6, t4, 155f
136:              srli         sp, s0, 19
                  add          t1, gp, a1
                  srli         a5, a4, 20
                  sub          a4, a4, t3
140:              srl          t4, a7, t4
                  and          sp, t5, t1
                  bltu         s7, t2, 150f
                  xori         s2, t0, -862
                  lui          a3, 65244
                  sub          a1, s8, s4
                  ori          ra, a5, -1068
                  nop
                  slti         s2, s9, 1818
                  slti         s0, t5, 17
150:              srai         a6, t5, 2
                  or           tp, s1, a2
                  and          s8, s9, zero
                  nop
                  auipc        s6, 469087
155:              sub          t5, s2, s10
                  ori          s7, s2, 1311
                  bne          tp, t3, 160f
                  srli         a7, t6, 4
                  lui          s1, 94241
160:              srai         zero, s6, 19
                  xor          s3, s9, t6
                  slti         s2, sp, 1584
                  srai         a3, a6, 24
                  sltu         a1, a0, t6
                  sub          s7, t1, a2
                  andi         t2, s11, -1007
                  slt          ra, s1, s4
                  nop
                  xori         t0, s0, -283
                  nop
                  sub          a6, s4, a1
                  xor          t4, s4, ra
                  bne          s3, t1, 177f
                  sll          gp, t6, a3
                  sra          t3, a3, ra
                  srai         gp, t4, 25
177:              lui          t5, 867133
                  srl          a6, a7, a5
                  lui          t4, 631314
                  srli         s0, zero, 1
                  slli         zero, sp, 25
                  bltu         a4, s9, 184f
                  or           ra, s7, t2
184:              srl          a3, t5, tp
                  lui          s0, 471315
                  nop
                  lui          a6, 136021
                  sltiu        ra, a4, 456
                  bgeu         s4, s4, 192f
                  bltu         t3, sp, 203f
                  sra          t5, t3, a4
192:              lui          a7, 897151
                  srli         s2, tp, 18
                  xor          s8, a3, t3
                  srli         s11, sp, 18
                  slt          t4, ra, s6
                  beq          t4, a1, 210f
                  bne          t5, s11, 204f
                  bltu         s1, zero, 201f
                  beq          s10, s7, 211f
201:              sll          t5, t0, sp
                  srl          a7, a3, s3
203:              or           a1, t4, tp
204:              nop
                  nop
                  auipc        t1, 850335
                  add          t6, s5, tp
                  ori          a5, s10, 1242
                  srai         tp, a2, 22
210:              bne          s2, s4, 218f
211:              bgeu         a4, tp, 220f
                  add          a1, s4, s5
                  addi         s8, t1, 1077
                  ori          s7, a2, 355
                  sra          t1, ra, s3
                  srl          a1, s6, t0
                  sll          t2, tp, sp
218:              addi         s6, a1, -852
                  beq          s9, a3, 226f
220:              add          gp, s5, s5
                  and          a7, s2, a7
                  auipc        s10, 738829
                  nop
                  slli         a0, s3, 30
                  sltu         s8, a6, a1
226:              slti         s8, s4, 2042
                  sltiu        t1, t5, 1331
                  bgeu         s10, s8, 233f
                  ori          s6, s4, -812
                  andi         a0, s11, 647
                  andi         a7, s2, 824
                  srl          a6, t0, s10
233:              lui          s8, 97333
                  sltu         t0, t5, s1
                  bne          t5, a0, 240f
                  sll          s5, s2, tp
                  bge          s11, s11, 255f
                  srli         gp, s7, 22
                  nop
240:              sltu         a1, s8, s9
                  sll          sp, gp, s11
                  add          t5, a2, a2
                  nop
                  sra          t5, s9, s1
                  nop
                  nop
                  slt          s10, t0, s11
                  lui          zero, 78187
                  la           a3, region_1+1592 #start riscv_load_store_hazard_instr_stream_2
                  sb           s0, -241(a3)
                  sb           a5, -241(a3)
                  lb           s8, -241(a3)
                  sb           zero, -241(a3)
                  lb           s6, 129(a3)
                  lbu          s0, 129(a3)
                  lbu          sp, 129(a3)
                  auipc        s11, 709201
                  lb           s11, -19(a3)
                  lb           s6, -142(a3)
                  lbu          t0, -247(a3)
                  lbu          a0, -113(a3)
                  lbu          s1, -33(a3)
                  sb           tp, -33(a3) #end riscv_load_store_hazard_instr_stream_2
                  slti         t1, zero, 46
                  srl          s5, a0, s8
                  bge          s11, s5, 252f
252:              xor          s1, sp, a1
                  srli         a0, s4, 31
                  and          a4, zero, a4
255:              bge          s10, sp, 258f
                  add          s7, a6, a6
                  addi         s10, a2, 1510
258:              addi         t4, s4, 1803
                  or           s11, a6, s5
                  srai         t4, t3, 26
                  bgeu         t3, sp, 269f
                  lui          zero, 678387
                  bge          s6, s8, 281f
                  bltu         t5, a0, 278f
                  sltiu        s10, t3, 1567
                  srli         t6, a6, 9
                  slti         s2, s2, 1717
                  lui          s1, 894049
269:              bgeu         s1, zero, 283f
                  sra          s10, tp, t3
                  bltu         ra, t4, 287f
                  sltiu        zero, s9, 1848
                  beq          a3, t5, 281f
                  bltu         s7, a3, 282f
                  srl          sp, a2, a2
                  beq          ra, a5, 293f
                  sub          s2, t1, t4
278:              sltiu        a5, t1, -1539
                  add          s7, zero, a1
                  bge          gp, a4, 298f
281:              slti         s1, a5, -901
282:              srl          s11, t0, s4
283:              sltu         zero, s7, s9
                  slti         t1, t1, 69
                  ori          zero, s1, 671
                  add          zero, a4, s9
287:              srli         s8, s11, 10
                  auipc        a7, 96440
                  srl          s10, sp, s7
                  andi         a7, t6, 1634
                  bltu         a6, t6, 293f
                  and          a3, zero, a7
293:              slti         a5, s3, 1237
                  slt          s10, s7, t5
                  slt          zero, s7, t4
                  sub          tp, a3, t3
                  srai         ra, tp, 5
298:              srli         s6, a4, 18
                  sub          t2, s7, a4
                  beq          ra, a2, 313f
                  srai         s7, s10, 27
                  xori         s3, a4, -1741
                  bne          s0, s2, 311f
                  add          t3, t2, t2
                  and          ra, s0, s1
                  or           a5, a4, t2
                  slt          t1, t0, ra
                  bltu         s11, a4, 326f
                  sra          t4, a6, s0
                  bgeu         a5, s5, 313f
311:              blt          s0, s2, 324f
                  sub          s7, s6, s6
313:              sra          s5, s10, a2
                  auipc        s7, 440833
                  sltu         zero, sp, s7
                  sll          a5, s2, a2
                  sub          s11, s4, a7
                  addi         t6, a3, 1630
                  sltu         a1, a2, a5
                  and          a4, a3, a3
                  srli         a7, a7, 21
                  sll          t2, s2, a3
                  slt          t6, t1, a6
324:              sra          s6, s11, s4
                  beq          s1, t3, 331f
326:              andi         s3, t1, 128
                  add          s3, s2, s3
                  ori          tp, t6, -162
                  srli         s3, s11, 19
                  auipc        t2, 326312
331:              bltu         a7, a0, 336f
                  lui          t6, 85028
                  ori          a5, zero, 608
                  blt          s0, t2, 336f
                  andi         a5, a6, -1959
336:              andi         s7, a1, 352
                  ori          s7, a5, 1931
                  srl          s10, gp, a0
                  slti         t4, s10, -125
                  xori         a5, a4, -1953
                  bgeu         s5, s3, 343f
                  srl          t6, a3, s8
343:              blt          a7, s5, 344f
344:              slti         s11, a7, -398
                  blt          s4, a0, 348f
                  srli         zero, a4, 19
                  nop
348:              xori         s11, s2, -662
                  xori         s3, t5, 695
                  bltu         t5, a1, 363f
                  or           t1, a2, a3
                  bne          a2, t2, 359f
                  or           t1, a2, s6
                  slti         t3, s5, -1738
                  ori          a5, s3, 1912
                  blt          t5, s2, 364f
                  lui          a0, 159785
                  sra          s7, s9, gp
359:              xor          s11, s3, t5
                  srai         t4, s2, 24
                  andi         sp, a2, -326
                  sltiu        s3, ra, 438
363:              bge          s2, t5, 371f
364:              srl          gp, s6, a6
                  xor          a0, t0, a3
                  nop
                  srai         t1, ra, 12
                  srl          s6, ra, a4
                  slti         s3, t4, -212
                  srai         t0, a7, 26
371:              nop
                  lui          t4, 427432
                  sltu         t4, s3, a3
                  sltu         s3, s2, a5
                  bne          s10, t1, 383f
                  andi         a3, s1, 2041
                  slti         s10, s7, 1959
                  srl          s0, s0, t1
                  bltu         s5, s11, 397f
                  ori          t4, tp, 1286
                  slli         s0, gp, 2
                  auipc        t2, 706042
383:              slti         a0, t0, -1508
                  nop
                  slti         s7, gp, -1288
                  bltu         ra, s2, 391f
                  slli         t5, t2, 8
                  blt          s11, gp, 397f
                  slti         s3, s6, 856
                  bne          ra, s7, 398f
391:              bne          a6, s1, 395f
                  xor          s0, gp, s1
                  sltiu        t2, s4, 1434
                  bne          s6, s3, 397f
395:              add          t2, a3, gp
                  bge          s1, t5, 410f
397:              slt          s0, s1, t3
398:              add          tp, t5, s7
                  auipc        s2, 937708
                  bne          tp, s0, 411f
                  sra          a1, s4, t0
                  sltu         t2, t4, s6
                  srli         t0, a2, 1
                  slt          s2, gp, t3
                  beq          t0, t6, 425f
                  slti         t0, s2, 100
                  srli         t4, t0, 1
                  bge          t0, ra, 410f
                  srli         zero, s5, 3
410:              slt          a4, a3, s9
411:              add          gp, t1, t2
                  slt          s1, t2, t3
                  slti         s3, s3, -1448
                  sltiu        a4, t5, 1998
                  sra          t5, t4, s11
                  add          t2, t0, t0
                  xori         a7, s11, 645
                  add          a6, t5, a3
                  lui          sp, 880158
                  beq          s4, t2, 438f
                  ori          a5, s4, -1956
                  sltu         s7, s4, s3
                  bge          s9, s7, 436f
                  and          t1, tp, s0
425:              sltiu        zero, s7, -938
                  sll          t0, a0, a0
                  add          s1, ra, a2
                  ori          s2, t0, 1392
                  sll          a1, t4, t5
                  bge          zero, s4, 444f
                  srai         s6, s2, 28
                  nop
                  sltiu        a7, a0, 1757
                  andi         zero, tp, -530
                  auipc        a4, 475781
436:              ori          a0, zero, 1480
                  xori         ra, s1, 83
438:              sub          zero, a4, s4
                  srl          a1, t4, s10
                  add          s2, zero, gp
                  bgeu         zero, t0, 458f
                  slti         t5, s8, 1507
                  ori          zero, s8, 1642
444:              bne          a3, a7, 460f
                  sltu         a7, a3, t0
                  bge          s9, s7, 459f
                  bne          t3, t2, 460f
                  sll          t4, t1, tp
                  slli         s6, a5, 9
                  slli         s11, a3, 25
                  bgeu         t5, a0, 471f
                  slli         t0, a6, 30
                  andi         a1, sp, -515
                  sltu         t6, s7, t3
                  auipc        a0, 62505
                  slti         s2, s9, -1182
                  srai         a3, s4, 21
458:              nop
459:              auipc        a3, 840337
460:              beq          t5, s8, 473f
                  bne          t5, s10, 469f
                  bgeu         s5, s9, 465f
                  and          a4, t0, t4
                  auipc        a3, 751460
465:              slti         s2, t6, 550
                  andi         s5, t4, -1890
                  bgeu         a6, t3, 475f
                  auipc        s1, 45164
469:              ori          s2, t0, 503
                  srai         t6, sp, 8
471:              sub          sp, s8, s11
                  sll          a1, a1, s6
473:              bne          s1, a1, 480f
                  auipc        t2, 739972
475:              and          gp, a2, sp
                  add          t5, a4, a7
                  sll          s0, a7, s2
                  xor          a3, s0, s4
                  bne          sp, a7, 493f
480:              slli         t4, s4, 26
                  ori          ra, t6, 1031
                  srl          s0, gp, s5
                  sub          t0, sp, a0
                  slti         t6, t4, -1080
                  blt          s5, s5, 494f
                  slt          t4, sp, zero
                  slti         zero, t6, 271
                  addi         s7, a0, -62
                  slli         s1, t0, 24
                  beq          t1, t4, 504f
                  xor          s3, sp, t3
                  bltu         s5, t1, 500f
493:              or           a1, t2, s10
494:              sltu         a5, s5, zero
                  lui          s10, 923163
                  nop
                  ori          a5, s2, 1146
                  beq          s0, sp, 516f
                  auipc        a6, 544209
500:              bne          zero, a2, 508f
                  and          tp, a6, s7
                  ori          s1, s7, -1895
                  auipc        a5, 29373
504:              auipc        a3, 1031877
                  slli         s0, t0, 22
                  sltu         gp, t6, s10
                  srai         tp, s4, 5
508:              addi         a1, s6, 149
                  and          s8, a0, s1
                  sltu         a6, zero, a4
                  auipc        t1, 634276
                  xor          a4, a6, s11
                  sltu         a0, s2, t4
                  sll          s11, a5, s5
                  nop
516:              slt          s0, s7, a7
                  srl          gp, t6, s9
                  bge          s5, gp, 521f
                  slti         s5, gp, -1051
                  beq          a7, s2, 537f
521:              slli         s3, s9, 30
                  beq          s8, t3, 540f
                  ori          sp, sp, 19
                  and          s1, ra, t5
                  addi         ra, s0, -1386
                  beq          s2, a6, 528f
                  xor          a5, s2, tp
528:              lui          a3, 965518
                  nop
                  or           s0, sp, s3
                  slli         t2, s3, 23
                  sra          s0, tp, a4
                  bltu         t0, sp, 551f
                  nop
                  beq          s5, a5, 541f
                  and          s2, s9, t2
537:              srl          s8, t2, s11
                  sltu         s10, a3, t3
                  sltiu        s1, s5, 714
540:              nop
541:              auipc        t0, 261592
                  andi         a0, s0, 1356
                  blt          s10, t3, 545f
                  bltu         tp, s1, 549f
545:              beq          t1, ra, 550f
                  sltu         a7, s7, a3
                  nop
                  addi         a0, a0, 446
549:              addi         gp, s6, -1876
550:              sra          ra, s10, s4
551:              ori          t3, s0, 748
                  slti         a5, t4, 786
                  sll          zero, t6, t2
                  and          s6, s0, s11
                  auipc        s5, 974481
                  nop
                  slti         gp, s0, -926
                  srl          s11, s1, t5
                  bltu         tp, t4, 575f
                  slti         a7, a0, -1745
                  beq          t4, a4, 565f
                  slt          s7, s4, t3
                  srai         s8, a4, 10
                  srli         t3, a4, 13
565:              bge          s4, t4, 567f
                  blt          s4, s3, 574f
567:              xori         t3, s1, -1219
                  srli         sp, s3, 23
                  srl          t2, a7, tp
                  srli         a1, s6, 11
                  add          a6, t1, a5
                  bltu         t6, t6, 573f
573:              nop
574:              xor          t6, tp, s11
575:              srai         t3, s8, 22
                  bne          s0, t5, 579f
                  srli         zero, t2, 7
                  srai         a5, s0, 14
579:              srai         t1, t2, 18
                  sra          s8, t6, zero
                  slli         s1, s10, 20
                  addi         s11, s7, 855
                  andi         a7, s1, -742
                  sltu         t6, s2, s2
                  bgeu         a4, t4, 596f
                  sltu         s6, zero, s0
                  xor          t6, t2, s9
                  slti         s6, s3, 573
                  add          sp, t3, s4
                  srai         a1, a2, 22
                  srai         a4, s3, 15
                  or           s5, s8, s5
                  add          t0, tp, gp
                  blt          t2, sp, 611f
                  lui          a0, 451734
596:              sll          gp, s0, s8
                  and          s8, tp, t0
                  nop
                  sra          tp, a4, s5
                  sltu         s3, s3, s6
                  xor          t1, a6, s6
                  bge          a6, s1, 604f
                  xor          t0, a3, s11
604:              andi         ra, t6, 1489
                  srai         s5, zero, 27
                  xor          t4, t6, ra
                  xor          s8, s8, s2
                  srli         s6, a6, 28
                  auipc        t4, 719094
                  auipc        t6, 474079
611:              sltiu        t6, s1, 1715
                  slli         s7, tp, 4
                  sub          t0, tp, t0
                  srl          s5, s7, a3
                  addi         a0, t5, -529
                  bne          sp, s4, 630f
                  slt          a0, t5, t0
                  sub          t2, t2, t6
                  sltu         s5, sp, t5
                  sll          a1, s4, s1
                  xor          s0, a1, s8
                  slti         s6, a1, -750
                  sra          s5, s10, s5
                  xor          a3, t1, gp
                  xori         s2, a0, 1306
                  sra          a3, s4, s10
                  bge          t2, zero, 640f
                  bge          a6, t4, 637f
                  srli         t5, s8, 20
630:              nop
                  bne          sp, zero, 651f
                  addi         t0, s8, -1885
                  or           t0, t2, t5
                  srl          gp, tp, tp
                  bge          a0, s10, 641f
                  nop
637:              bge          a1, a6, 642f
                  bge          zero, t0, 640f
                  xori         tp, s2, 334
640:              bge          s5, t2, 642f
641:              xor          a4, s7, t5
642:              slti         a7, s11, 1647
                  nop
                  slli         s2, s11, 26
                  blt          t0, t4, 663f
                  sltu         zero, s4, t6
                  sltu         a6, s1, t4
                  sra          sp, ra, s6
                  lui          s2, 594048
                  slli         s0, a1, 23
651:              blt          gp, s9, 658f
                  sltu         s11, s10, t6
                  sltu         t2, s11, t6
                  lui          s10, 469049
                  andi         s3, tp, 1717
                  and          zero, t6, gp
                  srai         t5, s0, 0
658:              slti         t3, t1, 616
                  slli         t1, zero, 10
                  slli         a3, gp, 14
                  slt          s6, t2, t6
                  sub          s3, zero, s10
663:              sub          s0, s6, t3
                  beq          t5, a3, 667f
                  slt          a7, t3, a7
                  ori          t4, a3, -1765
667:              bltu         t2, ra, 670f
                  add          a7, s10, s2
                  or           t0, sp, s7
670:              add          a7, a2, a1
                  sra          a7, ra, a2
                  or           s3, s0, s2
                  bne          a6, s11, 686f
                  nop
                  sra          s2, zero, s5
                  blt          a5, t4, 684f
                  slti         a4, a3, -1787
                  lui          a5, 796837
                  srai         a5, gp, 13
                  or           sp, zero, t0
                  bge          t2, s0, 689f
                  nop
                  ori          s2, a2, 1930
684:              ori          s0, t2, -1748
                  addi         a3, s7, 1326
686:              blt          a7, s4, 690f
                  nop
                  sub          t5, t1, s6
689:              or           a1, a2, a5
690:              xori         s11, t0, 619
                  andi         s11, s6, 1607
                  add          a4, t3, a1
                  auipc        s7, 369783
                  blt          s6, s4, 708f
                  and          a4, s1, t2
                  slti         zero, t3, -1870
                  lui          t5, 927551
                  srai         zero, a1, 24
                  sltu         a5, t3, a0
                  sub          s6, t6, s2
                  lui          t5, 277136
                  beq          a0, t1, 720f
                  lui          s6, 455928
                  slli         s7, s5, 29
                  or           a6, s11, t0
                  bne          s8, s2, 714f
                  or           t0, s5, s2
708:              bge          s5, s6, 716f
                  blt          t3, a6, 712f
                  sltu         s5, s6, a5
                  addi         a6, t2, -350
712:              lui          s5, 122409
                  bne          a5, gp, 721f
714:              or           s6, a7, s2
                  or           t5, a2, a5
716:              bge          a7, s10, 727f
                  srai         a0, a3, 7
                  ori          a3, s10, -773
                  bgeu         s4, a4, 737f
720:              sll          t2, s4, s5
721:              sra          tp, a2, zero
                  or           s7, s7, s8
                  andi         t6, s6, 1397
                  sra          sp, t1, tp
                  sltiu        a0, s8, 1459
                  xor          gp, s4, t0
727:              nop
                  ori          s0, s1, -268
                  nop
                  andi         t3, a6, 1360
                  bltu         t0, sp, 747f
                  srai         gp, zero, 27
                  sra          t2, s11, a0
                  srai         a3, t6, 22
                  sltiu        s11, t5, 1290
                  and          a1, s3, s0
737:              ori          t0, tp, -303
                  auipc        gp, 901662
                  sra          tp, s0, t4
                  auipc        ra, 554950
                  srli         t6, a7, 22
                  auipc        a1, 145837
                  sltiu        sp, t6, -292
                  bgeu         t2, a4, 745f
745:              andi         t3, s10, 1168
                  bgeu         a4, a3, 759f
747:              and          s1, ra, a0
                  lui          s2, 438681
                  xori         s5, gp, -434
                  srai         s11, tp, 0
                  nop
                  bne          t3, s9, 757f
                  ori          sp, s8, 1580
                  sra          s10, a4, t6
                  sltiu        a5, s9, 853
                  ori          t5, a1, 562
757:              sltiu        a5, ra, 684
                  sra          t1, s1, a5
759:              and          t5, a6, ra
                  or           s8, ra, a2
                  andi         s3, s0, 1373
                  srli         a1, gp, 20
                  sll          s11, s9, a7
                  slli         s1, a4, 12
                  lui          s5, 31308
                  nop
                  slt          s6, t3, s9
                  bgeu         s5, s3, 771f
                  bne          s5, s0, 777f
                  sub          a3, t5, s1
771:              addi         s6, s7, 1573
                  slti         tp, a1, -91
                  slli         s7, sp, 2
                  xori         s11, s8, -1305
                  and          t3, s6, s1
                  or           s10, s11, t4
777:              andi         a0, sp, 1362
                  lw           ra, 4(a2)
                  ori          t1, s0, -471
                  sltu         s5, s4, t0
                  addi         a2, a2, 32
                  addi         s5, s0, -1536
1418:             addi x8, x1, 1
1418:             jalr x8, x8, 0
sub_2:            add          s6, a4, s1
                  bge          s9, s3, sub_2_stack_p
                  sltu         t5, a6, s7
sub_2_stack_p:    addi         a2, a2, -32
                  auipc        t6, 801966
                  sw           ra, 4(a2)
                  and          a0, a7, sp
                  addi         s11, a6, 1221
                  la           sp, region_1+1667 #start riscv_load_store_rand_instr_stream_0
                  lb           t4, 326(sp)
                  sub          s8, a0, sp
                  sb           t6, -1206(sp)
                  sb           a3, 118(sp)
                  add          a1, s6, s6
                  addi         s11, s6, 1574
                  xori         s11, zero, 1689
                  sb           s2, -689(sp)
                  xori         a0, a0, -1963
                  lhu          a4, -1289(sp)
                  ori          a5, t6, 1392
                  srai         a6, s0, 16
                  sb           s4, -1637(sp)
                  lhu          t5, -1317(sp)
                  sltu         ra, sp, a5
                  srl          s1, s11, tp
                  lb           t2, 310(sp)
                  lbu          t2, 238(sp)
                  lbu          t1, -58(sp)
                  sb           t4, -1128(sp)
                  slli         t0, s0, 6
                  sb           s7, -1310(sp)
                  lbu          zero, 166(sp)
                  sb           ra, 114(sp)
                  lw           s5, -467(sp)
                  xor          s7, gp, s3
                  slli         s1, s2, 4
                  sll          t1, t4, a6
                  lb           s0, -212(sp)
                  lb           t5, -1318(sp) #end riscv_load_store_rand_instr_stream_0
                  la           s5, region_1+1876 #start load_store_instr_stream_1
                  la           s10, region_1+1235 #start load_store_instr_stream_0
                  lhu          a0, -9(s10)
                  lb           t0, -9(s5)
                  sb           t2, -14(s10)
                  sb           ra, -16(s10)
                  sb           a3, 3(s5)
                  lbu          t6, -12(s10)
                  sh           t3, 14(s5)
                  lb           t1, -7(s5)
                  sb           s4, 5(s5) #end load_store_instr_stream_1
                  lb           s2, 14(s10) #end load_store_instr_stream_0
                  la           sp, region_1+1669 #start riscv_load_store_hazard_instr_stream_0
                  sb           t2, -12(sp)
                  lb           t0, -8(sp)
                  andi         a3, s3, 1607
                  sb           s10, 7(sp)
                  lbu          t4, -14(sp)
                  and          s5, s8, s4
                  lbu          t4, 16(sp)
                  lb           t3, 16(sp)
                  sb           s4, 16(sp)
                  lb           a0, 16(sp)
                  sra          s6, a4, tp
                  slt          s2, a5, t4
                  sh           s9, 15(sp)
                  lhu          tp, 15(sp)
                  or           a7, a0, sp
                  auipc        s2, 392680
                  lhu          t5, 5(sp)
                  lbu          a3, 5(sp)
                  lb           s6, 16(sp)
                  ori          s1, t3, 600
                  lbu          s8, 16(sp)
                  lb           tp, -4(sp)
                  sw           s7, 15(sp) #end riscv_load_store_hazard_instr_stream_0
                  blt          a2, a6, 12f
                  ori          sp, ra, -1854
                  slt          zero, t6, s9
                  andi         a5, s11, 1809
                  xori         s5, a1, -1945
                  sltiu        t1, t4, -247
                  nop
                  srl          s2, s2, t3
                  and          t2, t1, t5
                  ori          a4, s2, -1830
                  ori          a1, s9, -1956
                  lui          zero, 543525
12:               slli         ra, s2, 16
                  bge          a7, t2, 15f
                  bgeu         s10, s1, 16f
15:               sltiu        gp, s9, -1779
16:               add          s5, s11, s3
                  lui          s7, 73252
                  blt          s4, zero, 26f
                  blt          s6, a6, 31f
                  ori          s8, t6, 2017
                  xori         t1, t6, 17
                  sll          a5, ra, t1
                  bne          a6, a0, 43f
                  beq          a0, a4, 28f
                  beq          t6, s8, 40f
26:               addi         s11, s11, -1513
                  slt          t2, t4, s11
28:               slti         t5, s1, 300
                  add          a5, s4, t5
                  bge          s3, s6, 50f
31:               bne          s2, s2, 47f
                  lui          a6, 780858
                  ori          a5, t1, -685
                  srli         gp, a6, 17
                  bltu         a0, a2, 37f
                  lui          s8, 460184
37:               srai         zero, sp, 17
                  add          s1, zero, sp
                  xori         sp, s5, 1762
40:               lui          a0, 151828
                  lui          s10, 646155
                  beq          t3, s0, 58f
43:               ori          sp, a5, 790
                  sltu         t4, sp, a7
                  addi         ra, s6, 1540
                  srli         tp, t4, 12
47:               xori         tp, s9, 871
                  srli         a1, a1, 0
                  sltiu        s11, s1, -250
50:               sra          a5, s1, a0
                  bgeu         a1, a2, 61f
                  xori         s11, t3, -1388
                  add          s2, s5, t0
                  lui          a6, 692262
                  andi         s7, a5, -1299
                  sltiu        s2, s6, -1932
                  slli         t6, t5, 31
58:               slli         s2, a7, 4
                  srl          s10, t4, s3
                  srai         t3, t0, 10
61:               slt          t5, ra, a3
                  xori         a6, t4, -738
                  auipc        t0, 885598
                  and          ra, t1, t3
                  beq          a1, t6, 70f
                  slt          a4, s11, s6
                  bne          sp, s5, 75f
                  slli         s11, s8, 17
                  slli         s3, t5, 13
70:               xori         s5, a1, -1497
                  slt          s7, ra, tp
                  slli         t1, a5, 22
                  bne          tp, t1, 84f
                  and          a5, s6, a0
75:               lui          gp, 146391
                  sltu         a0, ra, t3
                  add          tp, t3, t5
                  auipc        a4, 965574
                  bne          a4, a4, 84f
                  slli         a7, s9, 25
                  slti         s3, a2, -434
                  nop
                  bgeu         t3, zero, 101f
84:               add          t2, t3, s4
                  sltu         ra, t4, s3
                  xor          s6, a4, a5
                  srl          t5, t0, s4
                  sll          a7, sp, s3
                  xori         t3, s1, -1396
                  sra          a6, s9, s0
                  sll          a1, s0, tp
                  sltu         a6, t1, s7
                  sltu         s7, s5, s9
                  ori          s11, a4, 798
                  and          t0, t1, gp
                  sra          t6, a4, a4
                  auipc        a4, 84413
                  slti         sp, s1, -1760
                  srai         s5, a4, 4
                  andi         s1, s1, -1371
101:              or           t0, t0, sp
                  ori          s2, a5, 861
                  slt          t5, s2, a1
                  bne          t4, t6, 110f
                  add          sp, t0, sp
                  xori         a7, tp, -1956
                  bltu         t3, a5, 110f
                  xor          tp, t3, gp
                  lui          sp, 136641
110:              or           s8, t1, a1
                  srl          tp, s9, t3
                  lw           ra, 4(a2)
                  sra          s0, tp, t6
                  xori         a4, a2, 318
                  addi         a2, a2, 32
                  slli         t3, t0, 30
                  sltiu        t3, s0, 434
                  srai         sp, s10, 1
194:              addi x6, x1, 1
194:              jalr x6, x6, 0
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
.word 0x56f9980b, 0xace9e249, 0xef6532bb, 0x6697bb0d, 0x5a97559d, 0x7f44f1fd, 0x4c4304bf, 0x973da26b
.word 0xd54aafc6, 0xd5b6b0b0, 0xb47da260, 0xaab895dd, 0xc8364dcd, 0xc6c8c334, 0x7c33efa6, 0xc3e6f76a
.word 0x76329a54, 0xa4985756, 0x20d53cd6, 0x1c362ffd, 0x9fbbd4b7, 0x83a5ae88, 0x8b933e21, 0xff74f5bb
.word 0xd294cd69, 0xc940e5bd, 0xd7bf7a29, 0x66354bd5, 0x2a50a7a1, 0x946e8b81, 0x4785eb11, 0x22d27ee4
.word 0x52341a44, 0xecdd9fc0, 0xb3b42a2c, 0x113dd5be, 0x7b8ebb43, 0x12812c9b, 0x26afcab4, 0xde857e7b
.word 0x3fa330fa, 0xc2d947b9, 0xb1fbba7d, 0xd5f86075, 0x9772d38e, 0x3d701bc1, 0x918ad4d3, 0xbe028743
.word 0x6ad4a691, 0xd49e856f, 0xd087e34e, 0x61c9d67c, 0x5fe4f527, 0x2a813cde, 0xb2568bc4, 0x020f0fca
.word 0x58dd865c, 0x75919195, 0x8c6c877e, 0x7464e37d, 0xa3a82fa0, 0x00c5c62c, 0x01ae30f4, 0x4c69a244
.word 0x49569b07, 0xfd556c4a, 0x3b654927, 0x87b6f3d3, 0x1ad3c0e0, 0xca8e26c3, 0x1a673bc9, 0x9e332439
.word 0x33756c33, 0x2ddba45a, 0xcfb0b4b7, 0x2056fa10, 0xf75a588b, 0x92cf3b71, 0xf7a29575, 0x3e43b805
.word 0x767e9f5e, 0x7a547685, 0x012e8354, 0x71ce4ce0, 0xeb41f0e4, 0x9afe23aa, 0xcd8fd3e5, 0x01bef3a7
.word 0xc0f5d347, 0x4b70aee7, 0xf2882cd3, 0x063defb0, 0x1e692e0a, 0x8c31bafd, 0xc8fdc939, 0x07c0279d
.word 0x94b24b62, 0x412feb9c, 0xd2235249, 0x81015742, 0x7f54542e, 0x6b4359ce, 0xe3f379c3, 0xffc4e6ee
.word 0x907083b4, 0x663cd9e2, 0xebe9ea68, 0xfe729f17, 0xa261690a, 0xcfccbed4, 0x6b833204, 0x5b3d9db1
.word 0x0d046ab0, 0x0ab71cca, 0xf825095f, 0x0e542da2, 0xddee6f3f, 0x97e4b307, 0x5eeed160, 0xf15d3722
.word 0x92cc3c2a, 0xe6b36f2b, 0x1b4816f1, 0x2f36017f, 0x530202ad, 0xac630204, 0x9ba9b119, 0xa7e29c9e
.word 0xf6a4cde9, 0x585fb884, 0x35558116, 0xe220e5c5, 0x6897828e, 0x89032195, 0x583cd566, 0x7a2cfc16
.word 0x7bffab10, 0x012b5967, 0xe12a7118, 0x3bc61425, 0xb0d1673c, 0xe2c41a20, 0x5c6b64af, 0x04736260
.word 0x77877d0a, 0x5c744cca, 0x65a9273d, 0x7baa7854, 0x02050791, 0x8f8d4999, 0x99facb35, 0x5cb8e4a8
.word 0x3ffae9bd, 0x00f216e1, 0x766ccf4e, 0xd580fa87, 0x70143d1d, 0x288efab1, 0xbc69a98f, 0xa67333cb
.word 0x231ccfe4, 0xd22e432d, 0xaf4f6689, 0xd36fd6b2, 0x6acec9d8, 0x1d1daa50, 0x09489900, 0xd11732a3
.word 0xd1dc8c2f, 0xc2f76ce2, 0xc577bcc9, 0x535d0bb6, 0xcbe78239, 0xb37ae23d, 0x5010be92, 0x92d00493
.word 0x09b5b067, 0x6c9ac741, 0x1ed09351, 0xde79d89a, 0x5fcccc18, 0x0521a5f6, 0xad3deea4, 0x1fa807f8
.word 0x75662172, 0x8677f39e, 0x5081834d, 0x052835a6, 0xb721b4cb, 0xac9da799, 0x80af4b91, 0x76dff826
.word 0x9f97ee37, 0xd7e1048c, 0x9feb10f3, 0x1181fd76, 0x5ca99919, 0x08392c5a, 0x9a389fed, 0xebe0b75e
.word 0x553f1b10, 0x6c77aac9, 0x33c93ad4, 0x70d94b26, 0x858864e6, 0xf6a2b2aa, 0x9b952c69, 0xc92c486d
.word 0xdddb4962, 0xb1acb6a5, 0x2fee1c6a, 0x216e51de, 0xb99ad45d, 0x65f8d4b7, 0x3ad74684, 0xb40a79d3
.word 0xf105013e, 0x8ada63d6, 0x16924bd9, 0xc122c687, 0xa650056a, 0xf040a8c7, 0x93ea6976, 0xea64b621
.word 0xe43ec224, 0x698c42b8, 0x326569cd, 0xe38dacb9, 0xefd5bcc9, 0xf43fcafd, 0x448740ef, 0x3eaa6036
.word 0xbef36259, 0x39e746ad, 0x85ad3d6b, 0xeae5696f, 0xaf766b57, 0x02ae7709, 0x1321d180, 0x69ad918d
.word 0xcf1f1beb, 0xbd1e9bc3, 0x4bf8f125, 0x7bba4117, 0xbce63dbf, 0x25456190, 0x597a4b91, 0x5af446ad
.word 0xf6d5bcf1, 0xe2ce642d, 0xe9f66f25, 0xb3ee8f93, 0x4646d732, 0x4619158c, 0xde32ae49, 0xc5f70d6f
.word 0x56809ce7, 0x1e245484, 0xfd2ad864, 0xa6246be5, 0xf57b3234, 0x4d8e8e4d, 0xa03624a3, 0x02dceb7c
.word 0x8105085b, 0x9f03d50c, 0xbf34f06c, 0x4fe05cf2, 0xfe96a19f, 0xcb639082, 0x26a68e27, 0x35c287ef
.word 0x017d7e77, 0xbb795761, 0x72149a31, 0xe3281192, 0x58248820, 0x182c5c43, 0x630d4890, 0xfcdfe038
.word 0xd3f90e71, 0x268cbced, 0x13dbb0e4, 0x4e74cd9a, 0x03a410a3, 0x229c09b7, 0x4a6b7e78, 0x51706f6f
.word 0x5aa05d36, 0xc833307f, 0x35882547, 0x27ea3c75, 0x4f742e9c, 0x6da4daa8, 0xa69674e6, 0xefb2b229
.word 0x155ce6a5, 0x140bc1d4, 0xb649fe2c, 0x59dd2fa6, 0xa49c9462, 0x692cc64d, 0x5c9464f5, 0x98111d5d
.word 0x1a227dae, 0x656f061e, 0x4236ecff, 0xb80cb508, 0xc8ae6932, 0x10135240, 0x08dbde8b, 0x2ea41695
.word 0x0c23b46c, 0x6eb11e46, 0xd16e1c86, 0x4165ff87, 0x42aadfbe, 0xff0ebe85, 0x8b347144, 0xa6fdbae6
.word 0xb3f183f7, 0x365f1582, 0x3762c2c5, 0x128dec22, 0xada88524, 0xedfd1ee2, 0x363e83e0, 0x7e1b6cb0
.word 0x3bf4a6d4, 0xb5f0faa1, 0xf5a1d948, 0x7ae08885, 0x277fe4d2, 0x1bbb4f60, 0x1f2e9c8d, 0x576297c8
.word 0x03aca78c, 0x0cad37db, 0x6f51e992, 0x2fc44453, 0x80e4838c, 0x44636491, 0xea1385d7, 0x9b3b17e0
.word 0x6cfb1b92, 0x748f12a9, 0x8837ecc6, 0x0585926b, 0x397adb9c, 0x30a69d23, 0xbe044353, 0xa4a44d86
.word 0x51d1afb9, 0x8b98133c, 0xa6011377, 0x4dd0d68c, 0xc776323c, 0x71792071, 0x79004068, 0x7558d3f7
.word 0x8e322f1c, 0x4d186081, 0x59014502, 0xbc61dede, 0x9e30d976, 0xb5a8ff97, 0x5285754a, 0x13d1a7cc
.word 0x7145a0b4, 0x0985a165, 0x97b92147, 0xcdab4ffc, 0xcb88ebc5, 0x5e86f9c7, 0x88a0d350, 0xac4fd8c0
.word 0xfa641703, 0x0933efb6, 0xd3018baa, 0x23574a82, 0xefafb647, 0xa8be9801, 0xdf5b921e, 0xea3c9ea7
.word 0xea3fdad7, 0xa3b95e08, 0x94a9f448, 0x13707553, 0xa68a6daf, 0x5442827c, 0x2eee3f7d, 0x27ed61d1
.word 0xd463fdbd, 0x2975357f, 0xedbca34c, 0x13440faf, 0x82b86efb, 0x0c3bfd12, 0x0d628c74, 0x5a50712a
.word 0x27f36bbb, 0xadc23e60, 0x7c5e5648, 0x37531542, 0x4cd99ce0, 0x5474ef71, 0xd8aaf9e7, 0x7f3f808c
.word 0xec102674, 0x226a4c4d, 0x1230388d, 0xbcfe5c86, 0xba79864f, 0xfff1decf, 0x98460fbf, 0xcbb94a10
.word 0xd8d910af, 0xe780dae6, 0x547a1644, 0x3cd2434f, 0x7248e78b, 0xdd9f7134, 0xc4ad5fb9, 0x04b2948f
.word 0x6c47b7a7, 0xfeadbbe1, 0xa79938dc, 0x3e90afe7, 0xc0613532, 0x720a6fb0, 0x55d6aefc, 0x55d76c63
.word 0x74d179ab, 0x632f0d8a, 0x1fce41f7, 0x5e73d142, 0x9ff4344e, 0x334fb5fb, 0xace5ec08, 0xa05968e8
.word 0x2a23ebf7, 0x142ed819, 0x39ddab9c, 0x09cb53c1, 0xf401ef3d, 0x180d5eee, 0xd4d5bdfd, 0x483445c8
.word 0x47d13493, 0xc6b2e7bd, 0xdb419602, 0xeb1aa564, 0x1ee6d1a1, 0x6a99c722, 0x81a97a68, 0xb1480475
.word 0xff2b6281, 0x2769586b, 0xa998c4cf, 0x7589e882, 0x302b569b, 0x28270a2b, 0x88f9612e, 0xed3afbbe
.word 0x03bf64c3, 0x67ccc501, 0x4396e43b, 0x92d87d9f, 0x1dcc1e39, 0x9b35ffcb, 0x322a042c, 0xd81483a8
.word 0x095b1ee7, 0xbaa3ded2, 0x9f6cc5a5, 0x04c4a3c6, 0x1c9b17fb, 0x15076597, 0xe3eb053b, 0x7d9ad2d7
.word 0x47e81bc4, 0x894655b6, 0x1f3e3ea1, 0x76236df7, 0x54a1df69, 0xc9e56baa, 0x59b3b997, 0x6f6ec9f5
.word 0x83988a15, 0xcf9a496a, 0x8fde22ba, 0x2bb822c9, 0x3123ed32, 0x12524d05, 0x5514a550, 0x99bcb335
.word 0xfbe43c44, 0x998aa190, 0x897ad066, 0x0baf3128
.section .region_1,"aw",@progbits;
region_1:
.word 0xf08efa3e, 0x4ea186e1, 0xd0e4e330, 0xa30e3896, 0x8dc8cc1d, 0xae176da4, 0xf7a4e60b, 0xfbbdf169
.word 0x549848c8, 0x26309ae8, 0x7d8b1f2b, 0x5fc3f3d8, 0x507ce4e9, 0x7e08b7e3, 0x303d9365, 0x4047fcd4
.word 0x0bf4f7bf, 0xf5fee5c2, 0x9960a2e0, 0x62ad1e53, 0xe5674737, 0xe1d04a3a, 0x166dd979, 0xe501be0d
.word 0x6f28e255, 0x781196b2, 0xce8c6612, 0x0ac89791, 0x0e631832, 0xf8e9741e, 0xdd7a2013, 0xcd93c736
.word 0x8f89a648, 0xa3c3e563, 0xe91ee37e, 0xb584a8ea, 0x8026f63f, 0x01801b23, 0x3d46f1f2, 0xdfaea2a7
.word 0x9678a95e, 0x79727bd8, 0xdb232686, 0xd1fd50a7, 0x6dac831d, 0x006d81af, 0xf1afc43c, 0x06e35507
.word 0x29a33560, 0x80f59bfe, 0x0ec6166a, 0xf4d1c9f7, 0x9d92f6a7, 0x9db2037e, 0xf591c588, 0x46f33935
.word 0x2083656c, 0xd4a32d79, 0xd553a1c3, 0x572a49d8, 0x2658acc5, 0xbb7e064c, 0x5e74a56b, 0x7ef6aa5c
.word 0x071a0ace, 0x8c8e4ce2, 0xa59f2bde, 0x8392d33f, 0x10e7c38e, 0x2e9b7181, 0x731a4398, 0x4e71e638
.word 0x244e2f51, 0x8e858897, 0xe6a01157, 0x04818f4b, 0xb7b6594d, 0x0fa9b8b4, 0xfe95ab8e, 0x0b137f8d
.word 0xb7a279cd, 0x0ff7dba4, 0x3abd1833, 0x1a921c4e, 0xeb315c76, 0xca4aa10d, 0x4c94e378, 0x409c9636
.word 0xd8e5b648, 0x0927cd63, 0xb2ed0c8f, 0xa4c6d721, 0x667c07ae, 0xfd2842cc, 0x5b3a7913, 0xda69bbbf
.word 0xa9e7f6e8, 0x7e5874de, 0x66adf00e, 0x50f39e74, 0xba55e9ab, 0xa20b2798, 0x211d66ed, 0xff008026
.word 0xc26684d3, 0x44285a8b, 0x2f529b38, 0x4b46102e, 0xc4eebbb9, 0x8b48495e, 0x75a085d0, 0x48ff1a60
.word 0x077a4d0d, 0xe5febf66, 0x62255f0b, 0xc18d93e9, 0xba4d8c75, 0xc0d1e741, 0x33faa1d9, 0x499da0c2
.word 0x0768c56e, 0xf5692de3, 0x533c740f, 0xdf4521b4, 0x944fde8d, 0x1e0d0863, 0x969a47c3, 0xf5782276
.word 0xc88e7ecc, 0xc836af05, 0xf7793e5e, 0xc103afd2, 0x3d6fe0b1, 0xdebdc283, 0x1464e4ca, 0x9249f065
.word 0x2879c298, 0xe6a256d1, 0x2e0bd183, 0x2fd40ab6, 0xc8664f4b, 0xc41d8fda, 0x45cb4e9e, 0xc9adf8d7
.word 0xc6bb585f, 0xadc3a21d, 0x8599ab1c, 0xe2165794, 0xfd46c518, 0x5b9aa673, 0x1db42641, 0x2a72f2fc
.word 0xb6c70f2f, 0x484f4d61, 0xbf7f84a9, 0xa63f4c39, 0xc1e1b550, 0x45029d9c, 0x647dd537, 0x1ef1ad95
.word 0xb83c1a8f, 0x0dc5af8e, 0x6951d10d, 0xe32ce330, 0x188b61e2, 0xfd4ec7dd, 0x9cf4c53f, 0x2acaa239
.word 0x15d85871, 0x006ec0da, 0xeca7219a, 0x7946a5e0, 0x32506837, 0xb9e7a821, 0x305ce3cc, 0x1e602a86
.word 0xd7cc7538, 0x35dc28b7, 0xce553b95, 0xbf7a23a4, 0x10d2df32, 0xed08ab5a, 0x38b6a625, 0x562892d5
.word 0xaf403bc7, 0x59b0eaf6, 0x6ba3b723, 0x533125f2, 0x29b8f9a3, 0xf6487137, 0xd0f6a64f, 0xfeb03244
.word 0xcf8c45de, 0x2da3c038, 0xbbc0b8f8, 0xa679d1fd, 0x603eb953, 0xf40ad39b, 0xfa85f8be, 0x5cbddbdb
.word 0x842321e1, 0x0b113d9f, 0x4b8900b3, 0x9b464aa0, 0xee7bf8dc, 0x364787bf, 0xec92fbe2, 0x8505494c
.word 0x7a06c51c, 0x0dd0b63b, 0x34226356, 0x00168d4b, 0x4d199344, 0x3afc255f, 0x7ec0910f, 0x19b4b27e
.word 0xd7a8ed3c, 0xf20d9531, 0xc2fd7502, 0xd7a75b1e, 0x60180764, 0x31524705, 0x0918f402, 0x47ec84dd
.word 0xe4eff764, 0xfb7ae6ad, 0x1b64f931, 0xf3a41839, 0xf7da4433, 0x34fe62a8, 0x77fcc677, 0x6691af8b
.word 0x027259fc, 0xd080109e, 0xa7fc1168, 0x0ca25113, 0xf8ea0925, 0xedf311b2, 0x0e4d26c5, 0xf5353a6d
.word 0xd873b768, 0x227ebbe3, 0x8698e7e7, 0x1101c998, 0xd496c68a, 0x198d6b25, 0xf0042ff7, 0x99ffac3f
.word 0x6b231843, 0x5657107b, 0xca70110f, 0x63112c57, 0x656a1c2e, 0x691eedf3, 0xe326b484, 0x2c30ae35
.word 0x9b0dbeb8, 0x027877b0, 0xa1786192, 0x9b71d4e1, 0x0aabe1df, 0xf4d3689f, 0xe022df90, 0x8a53ab35
.word 0x69386b0d, 0x2844e3ca, 0xece4b80b, 0xf9673cc1, 0x3c6c3293, 0xa0a92f19, 0x977b4698, 0x5fd98f4e
.word 0xbf5d6014, 0x15433eb2, 0x8fad1500, 0x80c958a4, 0x28dbebe7, 0x6c464323, 0x5de2d844, 0x48d60e3a
.word 0x20356760, 0x338c4e6b, 0xaab8fe1e, 0xc6b0dc9d, 0x6acfcb83, 0x5dfb0350, 0xee3902a9, 0x6f0cbe52
.word 0x514932d3, 0x18262c99, 0xe1269b96, 0x078def72, 0x515b792d, 0x573d0e18, 0xe12b70a2, 0x3704bcff
.word 0x042709d7, 0x14ab4321, 0x2743c1d1, 0xe1140d62, 0x7da2355d, 0x0f29e8c1, 0x53ab9cca, 0xeee73889
.word 0x1f5d5474, 0x6fa2a781, 0xa297a9fe, 0x09fc9d43, 0x55eb2ea5, 0x8ec7d326, 0xbbdba7d5, 0xa473be34
.word 0x69d67a2d, 0xce3c8908, 0xc0bc55cb, 0x46b300ed, 0xc4decede, 0x904ad5bd, 0x4fc4cef0, 0x142dfb47
.word 0xe00fb5bc, 0x80b468f4, 0x7bec9820, 0x33cd1048, 0xb4e155c5, 0xda755aa9, 0xbd2aff1c, 0x66c8a070
.word 0xcba279c8, 0xcc15f2c6, 0x06ea4d16, 0x3d06e59a, 0x31b38927, 0x021d62a2, 0x5bf8baec, 0x92e672e9
.word 0x7abc5245, 0x60958e3c, 0x9b4887fd, 0x5e1c487e, 0xcc69320e, 0x6b343c77, 0xddafcf0d, 0x22a81984
.word 0xd0fb7084, 0x1c969018, 0xafb0033b, 0xa7d65d52, 0x97959bc9, 0x7ed1be37, 0xf36a7157, 0x4be63423
.word 0xbdcca323, 0x21b423d0, 0x5ec67f2f, 0x6461c1f5, 0xb950ee51, 0xbd0f9269, 0xa136dd2f, 0x98772823
.word 0x2a3c8f61, 0xc3e094cd, 0x572eed17, 0x22067522, 0xbfc66dce, 0xf74826df, 0x7422a8a1, 0x1f155b5a
.word 0xa557d0f9, 0x7c9eb252, 0xe16ef3eb, 0xaf124903, 0x05d17623, 0x7f91b361, 0x8a28880c, 0x16db755a
.word 0x9895f94a, 0x3a12fbe9, 0x471703a7, 0x2adde959, 0xd89e9b70, 0xf6b470b8, 0x4cdf5ac6, 0x87623737
.word 0x8961620a, 0xa626cf14, 0xc46fcaf5, 0x14ef4f94, 0xe9f02d17, 0x657aeb1b, 0x29ffe199, 0x3e58b5d4
.word 0x795f922d, 0xa1735fb9, 0xb4d5237f, 0x7829dcde, 0x93a990bb, 0x7c51b21c, 0xade717c7, 0x9ff86804
.word 0x1abf6eaa, 0x8b1f0c0d, 0xe67fc6db, 0x35f9d224, 0x45bb6605, 0xa18cec5b, 0x83cf88ca, 0xd4efe723
.word 0x1a85bec2, 0x6e2354ab, 0x2d629bc2, 0xadd92fa7, 0xeef25af0, 0x2c1e8f86, 0x0f201728, 0x13f6f7a5
.word 0xdfea14f7, 0xed112f84, 0xa0bf62c3, 0x392dec25, 0x96bb1d4b, 0xd2aac56e, 0x893338e0, 0x08793670
.word 0xa598d376, 0xd2ba09b5, 0x58b5a5ec, 0x8ac12e83, 0x53e82b50, 0x3733b980, 0xdec12987, 0xe0bbe514
.word 0x5809b239, 0x8fc502fc, 0xcb9b545c, 0x1d3f0f34, 0xbf5ca617, 0x491d7abd, 0xdaaa52ff, 0x7b5925f7
.word 0x7c12a8f7, 0x1caaaee6, 0xc5ec77db, 0x5b399756, 0xfdee800e, 0xee7e9871, 0x88b8c0f1, 0x294956e9
.word 0x5cea4cbf, 0xbb4dd5b3, 0xacbc9344, 0xd3c9ff33, 0xb7a5fb3b, 0x18c608e6, 0x6b9bb319, 0x544a67c3
.word 0xfa21841a, 0x50ad56d2, 0x198f5221, 0x97d69e68, 0x04910602, 0x480fd0cb, 0x25dc5d46, 0x9a9028c1
.word 0xbd50cfb8, 0x0353b8b1, 0x3d1a1c0b, 0xc97dbe36, 0x52c2ec64, 0x8a8b9fd1, 0xf72ab217, 0x6e95046f
.word 0x464e7eb5, 0xb2600d50, 0x5fef38f0, 0xc17b7f56, 0x5d56a684, 0x90866f9d, 0x74336e8c, 0x38286254
.word 0x85d068aa, 0xc5961f7b, 0x72c78b9b, 0x1f869487, 0x9e6f0b52, 0xc6bf54e6, 0x58558ab0, 0x20f22f28
.word 0xa60c5a57, 0x26a04a16, 0xe3a28b17, 0x2bf2b038, 0x0ba794b1, 0xd8a84e39, 0x4b658562, 0x031b85ed
.word 0xafb2331d, 0x88103aa1, 0x0457c806, 0xa7d3d5d6
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
                  add x25, x12, zero
                  csrr x29, 0x300 # MSTATUS
                  csrr x29, 0x342 # MCAUSE
                  srli x29, x29, 31
                  bne x29, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x29, 0x341 # MEPC
                  csrr x29, 0x342 # MCAUSE
                  li x2, 0x3 # BREAKPOINT
                  beq x29, x2, ebreak_handler
                  li x2, 0x8 # ECALL_UMODE
                  beq x29, x2, ecall_handler
                  li x2, 0x9 # ECALL_SMODE
                  beq x29, x2, ecall_handler
                  li x2, 0xb # ECALL_MMODE
                  beq x29, x2, ecall_handler
                  li x2, 0x1
                  beq x29, x2, instr_fault_handler
                  li x2, 0x5
                  beq x29, x2, load_fault_handler
                  li x2, 0x7
                  beq x29, x2, store_fault_handler
                  li x2, 0xc
                  beq x29, x2, pt_fault_handler
                  li x2, 0xd
                  beq x29, x2, pt_fault_handler
                  li x2, 0xf
                  beq x29, x2, pt_fault_handler
                  li x2, 0x2 # ILLEGAL_INSTRUCTION
                  beq x29, x2, illegal_instr_handler
                  csrr x2, 0x343 # MTVAL
                  1: la x20, test_done
                  jalr x1, x20, 0

ecall_handler:    
                  la x29, _start
                  sw x0, 0(x29)
                  sw x1, 4(x29)
                  sw x2, 8(x29)
                  sw x3, 12(x29)
                  sw x4, 16(x29)
                  sw x5, 20(x29)
                  sw x6, 24(x29)
                  sw x7, 28(x29)
                  sw x8, 32(x29)
                  sw x9, 36(x29)
                  sw x10, 40(x29)
                  sw x11, 44(x29)
                  sw x12, 48(x29)
                  sw x13, 52(x29)
                  sw x14, 56(x29)
                  sw x15, 60(x29)
                  sw x16, 64(x29)
                  sw x17, 68(x29)
                  sw x18, 72(x29)
                  sw x19, 76(x29)
                  sw x20, 80(x29)
                  sw x21, 84(x29)
                  sw x22, 88(x29)
                  sw x23, 92(x29)
                  sw x24, 96(x29)
                  sw x25, 100(x29)
                  sw x26, 104(x29)
                  sw x27, 108(x29)
                  sw x28, 112(x29)
                  sw x29, 116(x29)
                  sw x30, 120(x29)
                  sw x31, 124(x29)
                  la x20, write_tohost
                  jalr x0, x20, 0

instr_fault_handler:
                  add x12, x25, zero
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
                  add x12, x25, zero
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
                  add x12, x25, zero
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
                  csrr  x29, 0x341
                  addi  x29, x29, 4
                  csrw  0x341, x29
                  add x12, x25, zero
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
                  csrr  x29, 0x341
                  addi  x29, x29, 4
                  csrw  0x341, x29
                  add x12, x25, zero
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
                  csrr  x29, 0x300 # MSTATUS;
                  csrr  x29, 0x304 # MIE;
                  csrr  x29, 0x344 # MIP;
                  csrrc x29, 0x344, x29 # MIP;
                  add x12, x25, zero
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
