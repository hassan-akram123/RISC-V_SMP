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
                  li x19, 0x40000100
                  csrw 0x301, x19
kernel_sp:        
                  la x16, kernel_stack_end

trap_vec_init:    
                  la x19, mtvec_handler
                  ori x19, x19, 0
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
                  li x0, 0x0
                  li x1, 0x80000000
                  li x2, 0x3
                  li x3, 0x0
                  li x4, 0x1
                  li x5, 0x0
                  li x6, 0x80000000
                  li x7, 0xb
                  li x8, 0x0
                  li x9, 0x3
                  li x10, 0x3
                  li x11, 0xfef51ff8
                  li x12, 0x80000000
                  li x13, 0x6
                  li x14, 0x0
                  li x15, 0xf538b342
                  li x17, 0xc
                  li x19, 0xd765ed9
                  li x20, 0x7
                  li x21, 0xf77ee324
                  li x22, 0x34aa600f
                  li x23, 0xf62ebc61
                  li x24, 0x0
                  li x25, 0xf1da8070
                  li x26, 0x8
                  li x27, 0xf34f5e71
                  li x28, 0x0
                  li x29, 0x80000000
                  li x30, 0x80000000
                  li x31, 0xf295d774
                  la x18, user_stack_end
main:             sra          s4, a7, a1
                  addi         ra, sp, -96
                  ori          s8, s11, 1446
                  srli         s5, a3, 5
                  la           t5, sub_1
                  sltiu        gp, a5, 1925
                  slt          tp, gp, s3
                  xori         tp, a0, -388
                  addi         t5, t5, 439
                  addi         s1, t5, -1622
                  blt          gp, s2, main_j2 #branch to jump instr
                  srl          s9, a2, a1
main_j2:          jalr         ra, t5, -439 #jump main -> sub_1
                  la           sp, region_1+1490 #start riscv_load_store_rand_instr_stream_0
                  lb           a7, -95(sp)
                  sltiu        t4, s3, 76
                  sll          s8, s2, t5
                  sw           t3, -214(sp)
                  srli         a2, t0, 4
                  or           a3, s11, s1
                  lh           s5, -1320(sp)
                  sub          a3, a1, zero
                  nop
                  xor          t5, s8, a2
                  sb           zero, -1470(sp)
                  lb           s5, -660(sp)
                  lbu          s6, -173(sp)
                  lbu          tp, -1280(sp)
                  sra          s3, s0, a2
                  or           s4, ra, s11
                  slt          s9, s1, a3
                  lui          a3, 1026924
                  slti         s5, s2, -472
                  lhu          s3, -1254(sp)
                  auipc        t6, 824640
                  sltu         s3, s0, a0
                  lui          s3, 813605
                  sb           t0, -220(sp)
                  sh           t3, -594(sp)
                  auipc        t5, 722014
                  lhu          a5, -1398(sp)
                  lbu          a2, -572(sp)
                  lbu          tp, 240(sp)
                  lb           s9, -635(sp)
                  srl          a3, a3, s0
                  sb           sp, 15(sp)
                  and          a4, s2, gp
                  srai         s9, t4, 16
                  slt          a1, sp, a0
                  auipc        s8, 869280
                  lbu          tp, -1103(sp)
                  or           a3, a4, a5
                  lbu          t4, -341(sp)
                  slti         s5, a1, 344
                  sra          a3, s11, t0
                  srl          s5, sp, t2
                  slt          a0, s4, s11
                  sb           sp, -745(sp)
                  sb           t5, -235(sp)
                  lb           a3, -379(sp)
                  addi         t3, a2, -1154
                  lw           s7, -494(sp) #end riscv_load_store_rand_instr_stream_0
                  la           t4, region_1+100 #start load_store_instr_stream_1
                  la           a4, region_1+1517 #start load_store_instr_stream_3
                  la           s4, region_1+523 #start load_store_instr_stream_2
                  la           s10, region_1+805 #start load_store_instr_stream_0
                  lb           s3, -2(t4)
                  lb           a7, 192(s4)
                  sh           s3, -175(s10)
                  sb           a1, -63(a4)
                  lbu          t6, -9(t4)
                  la           s5, region_1+1667 #start load_store_instr_stream_4
                  lb           ra, -29(a4)
                  sb           s8, 241(s10)
                  lb           tp, -16(s5)
                  sb           t0, -28(a4)
                  lh           gp, -14(t4)
                  sb           s4, -12(s10)
                  lb           sp, -94(s4)
                  lb           s11, 38(s5)
                  lb           s6, 15(t4)
                  lb           sp, -14(s5)
                  lh           tp, 77(s10)
                  sb           t6, 26(s4)
                  lb           a5, -132(s10)
                  sb           s10, 3(s5)
                  sb           t4, -36(a4)
                  lbu          t0, 22(s4)
                  sw           s0, -29(a4)
                  sh           s1, 141(s4)
                  lbu          a2, -2(t4)
                  lbu          s7, 56(a4)
                  sb           t2, 22(a4)
                  lbu          gp, 19(s5)
                  sb           a7, -37(s5)
                  sw           s2, 225(s4)
                  lh           s7, -203(s10)
                  sh           s10, -14(t4)
                  lb           a2, 18(a4) #end load_store_instr_stream_3
                  lbu          s9, 11(t4) #end load_store_instr_stream_1
                  lw           s1, 73(s4)
                  sb           tp, 250(s4) #end load_store_instr_stream_2
                  sb           s5, 108(s10)
                  lb           a0, 2(s5) #end load_store_instr_stream_4
                  sb           s10, -152(s10) #end load_store_instr_stream_0
                  la           s5, region_0+759 #start riscv_load_store_hazard_instr_stream_0
                  lbu          t0, 11(s5)
                  lb           a4, 11(s5)
                  sltiu        s7, ra, 1432
                  lh           a2, -7(s5)
                  srli         s3, tp, 3
                  sra          t1, zero, t4
                  lh           t5, -7(s5)
                  lb           s9, -5(s5)
                  lbu          a5, -5(s5)
                  sub          t4, s11, a6
                  lb           a0, -3(s5)
                  lw           a4, -3(s5)
                  sb           a3, 12(s5)
                  sb           s0, -10(s5)
                  sub          a2, t3, t2
                  srli         s6, ra, 11
                  slt          s9, a2, s1
                  sb           s9, -2(s5)
                  lbu          a3, 5(s5) #end riscv_load_store_hazard_instr_stream_0
                  beq          a1, gp, 20f
                  srai         s0, a1, 9
                  srl          t1, a2, s0
                  sra          a3, t0, tp
                  andi         tp, t0, 2010
                  nop
                  ori          s0, ra, -1344
                  xori         a1, a2, -1997
                  bne          t3, a5, 18f
                  lui          s10, 690509
                  srl          a5, ra, s4
                  auipc        a4, 169185
                  add          s1, a1, t4
                  ori          a1, s3, 1322
                  addi         t6, s11, 897
                  ori          s8, a1, -450
                  or           s5, a5, a1
                  nop
18:               sltiu        a5, s2, 1381
                  bge          ra, a0, 28f
20:               or           a2, sp, ra
                  nop
                  slli         s9, tp, 18
                  bge          ra, tp, 29f
                  slli         gp, s11, 30
                  blt          a2, t4, 43f
                  slt          a4, s2, s5
                  addi         s0, a5, 1925
28:               slli         s7, a2, 0
29:               sll          a0, s5, t1
                  sra          t0, zero, t0
                  auipc        s6, 456976
                  blt          t6, s2, 36f
                  bne          s0, s8, 43f
                  lui          t4, 734493
                  bltu         s6, t0, 54f
36:               add          a5, s7, s4
                  sll          a4, s1, s1
                  lui          t3, 350701
                  srli         ra, t3, 19
                  auipc        a0, 225349
                  sub          a0, s7, t1
                  auipc        s7, 596065
43:               nop
                  bgeu         s4, a7, 46f
                  sltiu        t3, s2, -1512
46:               sra          gp, s5, t6
                  slt          s1, a4, t6
                  srl          s11, s2, t5
                  slti         a2, tp, 1542
                  sub          t0, tp, s2
                  sub          tp, a7, gp
                  beq          s8, a6, 71f
                  bge          a5, tp, 58f
54:               nop
                  bltu         t2, t3, 65f
                  nop
                  or           s8, a1, gp
58:               srai         t3, a1, 7
                  slli         ra, a4, 24
                  ori          a1, s7, -526
                  or           s4, a3, s9
                  sltu         zero, t3, sp
                  bne          s4, s4, 83f
                  xori         tp, a0, 490
65:               blt          a2, sp, 74f
                  andi         t6, a1, 1166
                  srl          a1, t1, s10
                  xori         s3, s7, 1439
                  bgeu         s0, t0, 72f
                  sltiu        zero, t5, -1700
71:               sub          t6, t6, s7
72:               bne          s1, s9, 79f
                  blt          t0, t4, 84f
74:               sub          tp, s10, a5
                  addi         s11, t6, 544
                  auipc        t6, 425259
                  sltu         a1, s11, s7
                  srli         a5, s10, 19
79:               bgeu         s10, s5, 85f
                  nop
                  slti         t1, a3, -229
                  or           s11, s0, t2
83:               srl          s0, a1, ra
84:               lui          ra, 308189
85:               sltiu        ra, s10, 1084
                  slt          ra, s3, t5
                  bgeu         ra, s8, 99f
                  andi         a1, t6, -204
                  beq          t3, a7, 90f
90:               sub          a5, s3, t1
                  sltiu        s9, a2, 1318
                  xori         tp, s7, -85
                  slt          s7, t1, s3
                  xor          a7, s5, ra
                  bne          t3, s0, 105f
                  srli         s3, a1, 9
                  bgeu         s6, t3, 113f
                  sub          s9, s1, s4
99:               nop
                  and          s1, a4, s7
                  lui          t0, 1018474
                  beq          s3, s6, 117f
                  sra          s11, a1, t6
                  and          a7, t4, t1
105:              or           t3, s5, s10
                  srai         a2, s5, 15
                  slti         tp, a6, 211
                  blt          s2, gp, 109f
109:              srl          s11, a0, s0
                  auipc        ra, 711928
                  srl          t0, s11, t0
                  xor          t4, a0, a6
113:              srai         t6, a5, 24
                  auipc        gp, 17560
                  srai         a5, t2, 20
                  srl          s3, s7, s4
                  srli         s5, a2, 6
                  la           a1, sub_1
                  sub          zero, a5, s4
                  addi         a1, a1, 51
                  slli         t1, s4, 24
                  bgeu         t5, sp, main_j1 #branch to jump instr
                  ori          a7, s8, -471
main_j1:          jalr         ra, a1, -50 #jump main -> sub_1
                  sra          a5, s8, s3
                  srai         a0, a5, 12
                  sub          a4, s1, a0
117:              blt          s5, s2, 118f
118:              slt          a1, s5, a6
                  xor          sp, a4, s9
                  bne          a4, t6, 136f
                  add          s6, a3, a4
                  lui          zero, 605858
                  auipc        a2, 509746
                  and          ra, a6, s10
                  sltiu        a5, t5, -1646
                  srl          s11, a0, s6
                  nop
                  srli         s9, ra, 9
                  sltu         s7, s7, t5
                  srl          gp, a3, t3
                  and          a1, gp, s1
                  nop
                  srai         a4, s5, 10
                  addi         s7, s6, 1089
                  slti         tp, a7, -1148
136:              srai         s6, a7, 24
                  ori          s8, gp, 945
                  slti         s7, gp, 1985
                  nop
                  xori         t6, a5, 120
                  or           t6, gp, s5
                  bge          a6, t4, 143f
143:              nop
                  la x7, test_done
                  jalr x0, x7, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            and          t6, s9, sp
                  srli         a7, s8, 13
                  sltiu        a2, s9, -982
                  srai         zero, s11, 11
                  addi         s2, s2, -20
                  add          s11, ra, a4
                  sw           ra, 4(s2)
                  auipc        s9, 395629
                  sll          zero, a1, t2
                  la           sp, region_0+211 #start riscv_load_store_rand_instr_stream_2
                  andi         t3, s5, -981
                  sh           a2, 7(sp)
                  lbu          t6, -28(sp)
                  andi         s10, t1, -1288
                  slti         a1, s5, 1120
                  srli         a0, s5, 22
                  sh           ra, -13(sp)
                  srl          s7, t4, s5
                  sw           s0, 1(sp)
                  slti         s3, a0, 1845
                  lbu          a2, -50(sp)
                  or           s4, ra, s9
                  sra          s5, s10, a2
                  sltu         zero, t0, t6
                  lb           a4, 7(sp)
                  sb           zero, -23(sp)
                  sb           a7, -8(sp)
                  lb           t3, -22(sp)
                  slli         gp, t3, 30
                  sb           a5, 8(sp)
                  add          s10, sp, a1
                  or           a3, s0, t6
                  sb           ra, 4(sp)
                  srli         t1, s6, 19
                  and          s9, t3, s5
                  lh           a1, 7(sp)
                  nop
                  lui          t1, 625490
                  srai         a5, tp, 18
                  lbu          a3, 60(sp)
                  srl          tp, s4, t6
                  lb           s0, 32(sp)
                  srai         s11, sp, 24
                  sh           s1, -53(sp)
                  sb           s10, 34(sp)
                  lhu          s8, 17(sp)
                  sb           s3, 58(sp)
                  slt          t5, s7, t3
                  sb           ra, 4(sp)
                  lui          s1, 772574
                  srl          a3, t4, a5
                  andi         t0, tp, -69
                  lui          s10, 355287
                  nop
                  sb           t4, -57(sp)
                  sw           a7, 13(sp)
                  xor          s8, a6, s0
                  lbu          s1, 22(sp)
                  nop
                  lbu          a1, 30(sp)
                  srli         s0, a4, 20
                  sb           a0, 44(sp)
                  lb           a7, -16(sp) #end riscv_load_store_rand_instr_stream_2
                  la           s9, region_1+1198 #start load_store_instr_stream_3
                  la           sp, region_1+1737 #start load_store_instr_stream_4
                  la           s6, region_1+808 #start load_store_instr_stream_1
                  la           s5, region_1+700 #start load_store_instr_stream_0
                  la           a5, region_1+545 #start load_store_instr_stream_2
                  lbu          tp, 22(a5)
                  sh           s6, -4(s9)
                  lhu          s10, 10(s6)
                  sb           s6, -13(s6)
                  lh           s7, 15(a5)
                  lhu          a3, -34(s5)
                  lb           t6, -11(s6)
                  lb           a4, 11(s5)
                  lbu          t3, -4(s6)
                  lbu          a3, 39(a5)
                  lbu          gp, -22(s5)
                  sh           zero, -10(s9)
                  lbu          t4, 6(a5)
                  lbu          a7, -9(s9)
                  lbu          a0, 8(s6)
                  lb           a0, -7(s9)
                  sb           t5, -179(sp)
                  sh           t1, -38(s5)
                  lbu          t1, -3(s6)
                  lb           t0, -87(sp)
                  sb           s5, 43(s5)
                  lh           t1, 14(s6)
                  lhu          t4, -663(sp)
                  sb           t0, 52(a5)
                  lb           s4, -1(s6)
                  sb           a5, -10(a5)
                  lb           a1, -210(sp)
                  sb           s10, 16(s9)
                  lbu          a3, 24(a5)
                  lb           tp, -236(sp)
                  sw           tp, 36(s5)
                  sb           a3, -5(s9)
                  lb           s4, 1(s9)
                  lb           tp, -13(s6) #end load_store_instr_stream_1
                  lh           t3, 251(sp) #end load_store_instr_stream_4
                  lh           a7, 21(a5)
                  lh           t3, -2(s5)
                  lhu          a4, -6(s9) #end load_store_instr_stream_3
                  lbu          gp, 38(s5)
                  lb           s4, 36(a5) #end load_store_instr_stream_2
                  lb           t0, 38(s5) #end load_store_instr_stream_0
                  la           a4, region_0+1283 #start load_store_instr_stream_0
                  la           s1, region_0+497 #start load_store_instr_stream_1
                  lb           s10, -188(a4)
                  sb           s0, -22(s1)
                  sb           sp, -23(s1)
                  sh           a0, -45(a4)
                  lh           s9, 57(s1)
                  lb           a1, -39(a4)
                  lb           gp, 0(s1)
                  lbu          s7, 13(s1)
                  lh           s0, -139(a4)
                  lb           s11, 16(s1)
                  sb           s1, -6(s1)
                  lbu          a3, 229(a4)
                  sb           tp, -52(s1)
                  sb           ra, -35(s1)
                  lb           t4, -57(s1) #end load_store_instr_stream_1
                  sh           gp, 137(a4) #end load_store_instr_stream_0
                  la           a5, region_0+608 #start riscv_load_store_hazard_instr_stream_0
                  lb           t4, -13(a5)
                  xor          s0, a0, a0
                  sb           s4, -13(a5)
                  lb           t3, 9(a5)
                  lui          t1, 431852
                  lb           s5, 9(a5)
                  lb           a1, 16(a5)
                  lbu          s0, -1(a5)
                  srli         s3, s11, 12
                  sll          a1, t5, a7
                  lb           s1, -1(a5)
                  sra          a0, gp, sp
                  lbu          t0, -1(a5)
                  and          t1, s8, t1
                  nop
                  lh           s11, 14(a5)
                  sb           s8, 11(a5)
                  lb           a4, 3(a5) #end riscv_load_store_hazard_instr_stream_0
                  la           t0, region_1+1965 #start riscv_load_store_hazard_instr_stream_2
                  lb           s5, 31(t0)
                  lb           a2, 31(t0)
                  sh           a4, 31(t0)
                  sb           s1, 31(t0)
                  sb           a3, 31(t0)
                  sb           s2, 31(t0)
                  sb           zero, 31(t0)
                  sh           s3, 31(t0)
                  srl          s11, s4, s4
                  lb           t4, 31(t0)
                  sw           t1, 31(t0)
                  lw           a2, 31(t0)
                  sh           s9, 31(t0)
                  lh           s5, 31(t0)
                  lhu          s9, 31(t0)
                  lh           ra, 31(t0) #end riscv_load_store_hazard_instr_stream_2
                  la           sp, region_1+62 #start riscv_load_store_rand_instr_stream_0
                  andi         t3, tp, -296
                  lb           ra, 45(sp)
                  lbu          s3, -21(sp)
                  lhu          a5, 18(sp)
                  lh           tp, -8(sp)
                  lbu          ra, 9(sp)
                  lh           s10, -46(sp)
                  lhu          gp, 0(sp)
                  xori         a7, sp, 1928
                  add          a3, s4, t1
                  srai         s0, a4, 11
                  sltiu        s3, a6, 212
                  and          a4, a4, t2
                  srli         a4, t5, 2
                  sltiu        a2, a2, -389
                  or           gp, sp, a2
                  auipc        a7, 524416
                  andi         a3, a4, 1717
                  sub          a7, a3, s3
                  sub          t5, s9, s1
                  srai         a2, s5, 26
                  lb           s7, 28(sp)
                  lbu          t5, 47(sp)
                  lbu          s3, 37(sp)
                  auipc        zero, 896003
                  sra          tp, a5, t0
                  lh           a4, 8(sp) #end riscv_load_store_rand_instr_stream_0
                  la           a5, region_0+918 #start load_store_instr_stream_2
                  lb           s0, 1(a5)
                  la           s4, region_0+1456 #start load_store_instr_stream_1
                  lh           t0, 16(s4)
                  sb           t0, 1(a5)
                  la           s10, region_0+450 #start load_store_instr_stream_0
                  lbu          gp, -9(s4)
                  sw           gp, -16(s4)
                  lb           t0, -13(s4)
                  sb           s7, 57(s10)
                  sb           s2, -5(a5)
                  sb           t6, 202(s10)
                  sb           a3, -2(a5)
                  lb           s11, -1(a5)
                  lbu          s1, -44(s10)
                  sb           s2, 11(a5)
                  sb           s3, 11(s4)
                  lh           t0, -12(s10)
                  lbu          t5, -13(s4)
                  lbu          a1, 12(s4) #end load_store_instr_stream_1
                  lb           t4, 3(a5)
                  lh           a7, 2(a5) #end load_store_instr_stream_2
                  sb           t6, -77(s10)
                  sw           t3, 122(s10) #end load_store_instr_stream_0
                  la           a5, region_0+113 #start riscv_load_store_hazard_instr_stream_1
                  sh           s7, 997(a5)
                  sw           a4, 1007(a5)
                  lb           s4, 149(a5)
                  lb           a2, 1626(a5)
                  sb           t3, 987(a5)
                  add          t6, t6, s1
                  lbu          s3, 1018(a5)
                  auipc        a7, 410615
                  sh           a1, 221(a5)
                  lh           t6, 871(a5)
                  slti         a7, s6, -891
                  ori          a1, t5, -2048
                  sb           a5, 1364(a5)
                  sltiu        a0, t4, 1789
                  lbu          s10, 1160(a5)
                  lb           ra, -104(a5)
                  lb           gp, -104(a5) #end riscv_load_store_hazard_instr_stream_1
                  sub          s3, t2, ra
                  or           s1, s3, s10
                  srli         s3, s9, 19
                  or           s9, t4, s0
                  and          tp, s2, zero
                  slti         s0, s10, -343
                  bge          tp, a0, 19f
                  sll          s4, a6, s3
                  addi         s0, s4, -1226
                  srl          t6, s3, s2
                  or           s4, s9, zero
                  slli         a5, a1, 23
                  slti         s1, s8, 631
                  slti         sp, s4, 119
                  srai         t5, s0, 18
                  sltu         a2, a0, s10
                  sra          s1, a0, a2
                  lui          ra, 759321
                  srai         a2, s6, 1
19:               and          s4, t0, t6
                  srai         gp, a5, 3
                  andi         s7, t5, -1535
                  and          s3, s10, a7
                  or           t0, s6, ra
                  slt          t1, a6, zero
                  nop
                  xori         s4, s3, -834
                  addi         t0, t5, -930
                  auipc        s7, 638058
                  srai         t5, t4, 23
                  sltu         a4, s6, a3
                  xor          a4, t0, s7
                  bge          s9, t2, 44f
                  srai         s8, t3, 2
                  ori          s5, ra, -1892
                  bne          sp, gp, 40f
                  auipc        t6, 708617
                  andi         a3, s7, -1565
                  sub          s4, s8, t0
                  add          s3, s3, t2
40:               slli         a0, a7, 19
                  andi         t3, t0, 1182
                  bgeu         s4, t3, 47f
                  addi         s9, s8, -904
44:               beq          zero, t1, 52f
                  xor          zero, s5, t5
                  srai         a5, s0, 5
47:               xor          s4, t2, gp
                  sra          gp, tp, s5
                  slti         ra, t3, 264
                  bltu         t4, a0, 51f
51:               slt          a3, s3, t2
52:               or           t5, t2, t2
                  bltu         a2, s8, 69f
                  bltu         a7, s3, 71f
                  sub          a1, ra, t0
                  bne          t4, t5, 68f
                  add          ra, t1, s5
                  slt          zero, a0, t0
                  bge          s11, zero, 66f
                  sltu         a7, s9, s7
                  sll          gp, s5, t1
                  sll          s0, s1, a5
                  sub          zero, a6, t2
                  nop
                  srl          gp, a6, s2
66:               bltu         s11, s4, 71f
                  and          a7, a2, gp
68:               andi         a5, s8, 1783
69:               bltu         s5, tp, 83f
                  slt          t6, ra, sp
71:               nop
                  lui          s8, 560500
                  beq          s4, s7, 91f
                  slt          a5, s8, t0
                  bne          ra, s7, 91f
                  or           a1, s3, s7
                  beq          a6, a2, 92f
                  xor          a2, t2, sp
                  bge          s6, tp, 87f
                  bltu         a0, t6, 92f
                  bge          s7, a6, 100f
                  sra          t5, s6, s5
83:               andi         s5, s1, 1387
                  srl          a4, s4, a6
                  bge          a1, ra, 89f
                  lui          a1, 67833
87:               ori          s10, t2, 879
                  beq          zero, zero, 94f
89:               sub          s6, t6, a5
                  srl          s11, t2, a1
91:               srl          t4, s5, t0
92:               nop
                  bgeu         s8, tp, 113f
94:               bltu         s4, tp, 109f
                  sub          t4, a2, ra
                  bge          t2, a6, 108f
                  sra          gp, ra, a2
                  ori          zero, t0, -1826
                  bltu         s5, t1, 100f
100:              ori          a4, s8, -496
                  bltu         t6, s4, 113f
                  bne          gp, t2, 122f
                  slt          t6, s1, t4
                  slli         t4, s11, 5
                  or           t5, t2, t0
                  sra          s7, t6, s9
                  and          t1, gp, s4
108:              and          t4, s4, s6
109:              bltu         s3, t0, 128f
                  srli         t1, s9, 23
                  or           s10, a2, t6
                  bne          t4, t2, 123f
113:              slli         s5, tp, 3
                  beq          s11, t1, 119f
                  sra          a3, sp, ra
                  andi         s6, s4, 375
                  slti         a4, s11, -298
                  slti         a7, t1, -114
119:              auipc        s6, 374349
                  xor          a0, s7, a5
                  bgeu         s9, t4, 138f
122:              bltu         s4, a0, 129f
123:              slli         a7, a5, 27
                  nop
                  addi         a1, t3, 1949
                  sub          sp, ra, t5
                  bne          a0, s6, 139f
128:              lui          s3, 709362
129:              xor          s6, s4, sp
                  ori          t4, s4, -549
                  and          s8, a5, s2
                  ori          s6, t1, 83
                  srl          t1, t6, t5
                  bltu         a4, t1, 139f
                  bltu         s6, zero, 154f
                  sll          t4, t1, zero
                  bltu         t0, s10, 138f
138:              srl          a3, s5, a7
139:              bne          gp, s10, 144f
                  slti         a5, t1, -211
                  addi         s3, a3, 1783
                  beq          t6, a3, 150f
                  andi         s4, s1, -1677
144:              addi         s5, a0, 1234
                  slli         s7, t5, 0
                  slti         t3, s11, 1253
                  add          tp, t5, s6
                  addi         sp, t1, -986
                  slt          s0, s9, gp
150:              and          ra, t4, a0
                  andi         s7, a0, 103
                  srai         a7, t6, 19
                  blt          s8, a7, 172f
154:              bgeu         s3, t5, 174f
                  or           s7, t5, s1
                  addi         a1, s6, -1727
                  bltu         gp, s1, 175f
                  slt          s7, zero, a0
                  srl          s4, s8, s2
                  sll          t6, s1, t2
                  bne          s6, a7, 162f
162:              sll          a1, a3, s11
                  sra          a0, s11, s3
                  xor          a0, tp, t6
                  andi         s6, a5, -1385
                  addi         s5, t1, -379
                  andi         t6, s5, 352
                  beq          t6, gp, 173f
                  sltiu        s1, t0, -35
                  sltu         s3, s6, a1
                  slli         t0, a3, 10
172:              lui          t3, 479257
173:              sub          s11, gp, s8
174:              xori         sp, a6, -1549
175:              xori         sp, ra, -1139
                  sra          s4, t6, s5
                  addi         t6, s9, -1210
                  lui          s10, 332935
                  xor          t3, s3, t4
                  bgeu         t4, a2, 192f
                  xor          s11, ra, a6
                  sltiu        tp, s9, -772
                  and          zero, s0, t0
                  andi         s1, s4, -1253
                  sra          tp, t4, ra
                  and          ra, t5, a2
                  sub          s10, s9, s5
                  srli         s7, a1, 18
                  xori         a2, s1, -944
                  addi         zero, s4, -1547
                  slli         s0, a7, 24
192:              slli         ra, sp, 2
                  sltiu        ra, a6, 1889
                  sltu         t4, a0, gp
                  sltu         s1, t0, s2
                  beq          s6, s6, 208f
                  srl          s7, s8, s0
                  srli         t4, s1, 11
                  srai         a7, ra, 22
                  sub          t6, t5, sp
                  bge          t2, a2, 206f
                  addi         s8, s1, -1290
                  slli         t5, t0, 22
                  and          a1, a5, sp
                  slti         s0, s9, 1301
206:              lui          a4, 75208
                  add          a2, s2, a7
208:              sub          s10, a0, t4
                  slli         t1, tp, 22
                  srli         s5, s2, 0
                  nop
                  sra          s4, a2, s9
                  ori          a0, a6, -740
                  bltu         t1, s9, 230f
                  srl          a4, a7, a4
                  and          s4, t1, t3
                  auipc        s0, 269083
                  lui          a7, 914178
                  and          t0, t2, s6
                  beq          a4, ra, 228f
                  ori          t5, sp, -501
                  slt          s11, s7, a4
                  sll          gp, s9, gp
                  srai         t1, t5, 2
                  slli         s4, t3, 13
                  sra          a1, s7, t5
                  slli         a4, s5, 21
228:              bgeu         gp, a3, 232f
                  sltiu        a7, s3, 1012
230:              xor          s0, zero, a5
                  bge          s5, s6, 248f
232:              sltu         s9, s0, s1
                  and          s6, t4, t3
                  addi         s11, a1, -1033
                  add          gp, a0, t5
                  xor          t6, s5, s7
                  addi         t3, a7, 1938
                  nop
                  add          a0, t0, ra
                  sra          tp, t1, sp
                  xori         t6, a5, 268
                  slt          s8, a6, s5
                  srli         s10, s10, 12
                  sll          t0, s8, a1
                  srli         tp, s8, 13
                  lui          s0, 1018775
                  sub          s8, s3, s3
248:              bltu         a7, a1, 263f
                  srai         t5, ra, 17
                  bne          zero, t4, 267f
                  la           tp, region_0+1232 #start riscv_load_store_rand_instr_stream_1
                  add          t3, s7, s2
                  lh           s11, -40(tp)
                  sub          a4, s7, s11
                  lhu          zero, -238(tp)
                  sh           s8, -124(tp)
                  auipc        s1, 431770
                  sub          s11, s8, s0
                  lh           t1, -162(tp)
                  sb           t5, 213(tp)
                  lhu          a7, -22(tp)
                  sb           a5, -215(tp)
                  lbu          sp, 151(tp)
                  sb           s5, 131(tp)
                  sb           s11, 240(tp)
                  add          s3, t4, a7
                  srl          t6, t3, s2
                  sb           ra, -21(tp)
                  andi         s8, a1, -171
                  auipc        a5, 730336
                  sb           s1, 43(tp)
                  lb           ra, -119(tp)
                  srli         s10, s7, 16
                  sb           s11, 102(tp)
                  lh           s6, 166(tp)
                  srai         s0, a3, 20
                  sub          a5, a1, sp
                  ori          a3, s3, -137
                  sh           s1, -146(tp)
                  sh           s1, -126(tp)
                  slt          a1, s1, a1
                  lbu          t1, 49(tp)
                  sra          t3, s8, s8
                  addi         s8, s10, -1493
                  srli         s1, s6, 23
                  sra          a4, s1, a6
                  xor          ra, s4, s11
                  sra          s7, s9, s7
                  lbu          s7, 17(tp)
                  lh           gp, 232(tp)
                  lui          s11, 358121
                  sll          a1, t5, a6
                  ori          s0, s9, -1687
                  sb           a3, -164(tp)
                  lbu          t6, -31(tp) #end riscv_load_store_rand_instr_stream_1
                  or           s6, t1, a0
                  add          s3, s11, t5
                  lui          tp, 493705
                  srai         t0, a4, 19
                  ori          ra, s4, -1932
                  bgeu         a2, s6, 267f
                  addi         a3, t0, -1749
                  nop
                  xori         ra, a0, 1788
                  sra          a5, a3, s4
                  auipc        a1, 974496
                  srl          t0, t0, sp
263:              sll          s9, s10, s11
                  nop
                  srl          s8, t1, t6
                  and          t0, s6, t1
267:              ori          s9, a1, -631
                  or           t3, sp, s7
                  lui          a1, 38214
                  sub          s7, ra, s9
                  blt          a0, s0, 283f
                  srl          t4, a0, t5
                  beq          s3, s6, 293f
                  srai         a2, a7, 17
                  beq          zero, a3, 287f
                  bgeu         s0, a5, 282f
                  srl          zero, a2, a2
                  sll          s4, s0, s5
                  auipc        tp, 742963
                  andi         s6, a7, -1396
                  sub          sp, a4, t2
282:              blt          s1, s7, 298f
283:              nop
                  bge          t4, t1, 297f
                  sub          t1, t0, ra
                  sltu         t0, t2, gp
287:              bltu         a6, a5, 302f
                  addi         t3, t3, 162
                  ori          a2, a6, -1486
                  slli         s0, s5, 25
                  sltiu        s8, s11, -566
                  sra          a1, s7, gp
293:              and          a5, s10, s3
                  bne          t4, s4, 308f
                  xor          ra, sp, a7
                  sub          s5, zero, s7
297:              bge          t4, s1, 305f
298:              blt          a1, t5, 313f
                  xori         gp, t3, 949
                  add          a4, s8, t3
                  add          t3, s1, a7
302:              and          s5, s10, a4
                  srli         s10, s0, 17
                  srli         s7, tp, 13
305:              sub          tp, a0, s6
                  nop
                  auipc        a0, 47854
308:              srai         tp, a0, 11
                  slti         t0, t0, 1386
                  slli         t4, s8, 8
                  bge          t2, a5, 331f
                  sra          zero, a4, t0
313:              sltiu        tp, t1, -1694
                  sra          s6, gp, a7
                  bltu         t5, zero, 335f
                  auipc        zero, 900154
                  addi         tp, s11, -1417
                  srl          t6, t2, t3
                  sltu         t3, s6, sp
                  nop
                  sltiu        a7, a6, -728
                  addi         s5, s8, 135
                  ori          s3, s7, 1725
                  xor          ra, s5, t2
                  sltu         s11, s2, s8
                  srli         s10, t5, 22
                  bgeu         zero, s3, 338f
                  andi         s1, a2, -181
                  xori         s9, t2, -535
                  and          ra, ra, gp
331:              beq          a7, t1, 350f
                  sltu         a7, gp, a1
                  slti         s0, a1, -1852
                  slli         s4, tp, 17
335:              slli         a3, a2, 15
                  bgeu         gp, a7, 352f
                  sltu         s4, s11, s2
338:              ori          s11, a4, 1575
                  slli         a1, t2, 30
                  srli         s9, s8, 16
                  bltu         sp, s10, 358f
                  slli         t3, ra, 29
                  xor          sp, t4, s10
                  srl          a7, s3, a2
                  sltu         t6, t6, t1
                  or           a5, s7, t4
                  addi         s11, tp, 1482
                  andi         s6, s4, -950
                  sra          sp, gp, s1
350:              xor          s6, zero, t5
                  blt          gp, a7, 361f
352:              lui          a7, 227546
                  blt          s11, s10, 361f
                  sltiu        a3, a0, 1397
                  nop
                  nop
                  bltu         tp, t0, 361f
358:              bge          a6, s11, 361f
                  bltu         t5, a1, 361f
                  lui          a4, 584195
361:              and          gp, s7, sp
                  lw           ra, 4(s2)
                  add          gp, t6, s7
                  xor          t3, gp, s4
                  sltu         t4, zero, ra
                  sltiu        s0, s9, 714
                  addi         s2, s2, 20
                  addi         s8, a1, 1055
                  or           a1, a5, a2
648:              addi x23, x1, 0
648:              jalr x23, x23, 0
sub_1:            bltu         t6, a1, sub_1_stack_p
                  xor          s6, s10, s10
sub_1_stack_p:    addi         s2, s2, -56
                  and          a3, zero, zero
                  and          zero, t4, t6
                  auipc        gp, 957478
                  sw           ra, 4(s2)
                  nop
                  lui          a1, 183938
                  la           sp, region_0+142 #start riscv_load_store_rand_instr_stream_1
                  xori         a7, a5, -909
                  lb           s5, -23(sp)
                  srl          a0, a2, ra
                  lbu          zero, 26(sp)
                  sb           ra, 56(sp)
                  lhu          a5, 44(sp)
                  slt          a2, t0, a2
                  sb           t3, 9(sp)
                  addi         s3, t5, -901
                  sltiu        t3, sp, 1092
                  lb           s9, -8(sp)
                  lb           s5, -31(sp)
                  slt          t4, s0, t5
                  sb           zero, -23(sp)
                  slli         s1, sp, 4
                  xor          s11, t4, s7
                  and          s4, zero, s3
                  addi         gp, t3, -1888
                  lb           s1, -19(sp)
                  lb           s6, -1(sp)
                  xor          s4, s2, a3
                  lbu          s9, 4(sp)
                  sltiu        t5, s9, 1515
                  add          t1, a7, t5
                  lui          ra, 469064
                  lh           a1, -10(sp)
                  sh           t3, -8(sp)
                  ori          s4, a0, 392
                  sb           s1, -50(sp)
                  sb           a5, 54(sp)
                  sltiu        s1, t1, -1481
                  lw           s4, 38(sp)
                  xor          t3, s2, s4
                  add          t3, s5, s7
                  lbu          s6, -31(sp)
                  srai         a2, t1, 28
                  sb           t6, 60(sp)
                  sltiu        ra, a2, 1973
                  addi         t5, t3, -925
                  nop
                  and          t1, a4, s4
                  sub          s1, s8, ra
                  slt          s6, t6, s6
                  addi         a7, zero, 57
                  sll          s5, t0, t1
                  lb           tp, -45(sp) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_0+1671 #start riscv_load_store_hazard_instr_stream_2
                  lw           gp, -3(sp)
                  lhu          t3, -3(sp)
                  sub          a4, s6, a2
                  lb           s1, -4(sp)
                  sw           a3, 13(sp)
                  lb           t1, 3(sp)
                  lbu          a5, 56(sp)
                  sb           a7, -18(sp)
                  sb           a2, 60(sp)
                  lh           s9, -31(sp)
                  sb           s6, -31(sp)
                  add          ra, s5, a2
                  sb           a4, 44(sp)
                  lui          a1, 251481
                  lb           a5, 18(sp)
                  lbu          a0, 11(sp)
                  andi         t6, t4, 1819
                  lb           s9, -52(sp)
                  xori         a3, a5, -17
                  lbu          ra, -52(sp)
                  sb           s9, -62(sp)
                  lbu          a0, -47(sp)
                  srli         a4, a4, 19
                  lbu          a5, 20(sp)
                  lhu          s3, -47(sp) #end riscv_load_store_hazard_instr_stream_2
                  la           s5, region_1+451 #start load_store_instr_stream_2
                  sh           t0, 61(s5)
                  lbu          a2, 184(s5)
                  la           t0, region_1+1059 #start load_store_instr_stream_1
                  la           s3, region_1+1192 #start load_store_instr_stream_0
                  sb           a4, 64(t0)
                  lhu          s6, 47(s5)
                  lbu          s7, -227(s5)
                  lbu          s8, -199(s3)
                  lw           s8, 17(t0)
                  sw           s11, 121(s5)
                  sb           tp, -179(s5)
                  sb           s6, 100(s3)
                  sb           s6, 12(t0)
                  lb           a5, -36(s5)
                  sb           s1, 223(s3)
                  lbu          gp, -168(s5)
                  lb           a4, -197(s3)
                  sb           s4, 28(t0)
                  sb           s2, -244(s3)
                  lh           tp, 61(t0)
                  sh           a7, 43(t0)
                  lb           t4, 35(t0)
                  lbu          t5, -106(s3)
                  lb           s1, -37(s3)
                  lhu          gp, -55(t0) #end load_store_instr_stream_1
                  lh           a1, 235(s5) #end load_store_instr_stream_2
                  lhu          gp, 150(s3) #end load_store_instr_stream_0
                  la           a7, region_0+814 #start load_store_instr_stream_0
                  lhu          a4, -234(a7)
                  lbu          s4, 81(a7)
                  sw           t6, -218(a7)
                  la           t6, region_0+1447 #start load_store_instr_stream_1
                  lbu          a0, -41(t6)
                  sb           s2, -182(t6)
                  sb           s0, -241(a7)
                  sw           t0, -115(t6)
                  sh           tp, -241(t6)
                  lbu          s0, 169(a7)
                  lh           s1, -194(a7)
                  sw           s0, 221(t6)
                  lbu          t4, -205(a7)
                  sb           t0, -140(t6)
                  lb           t4, -132(t6) #end load_store_instr_stream_1
                  lbu          s3, -88(a7) #end load_store_instr_stream_0
                  la           t5, region_0+15 #start riscv_load_store_hazard_instr_stream_0
                  lb           a2, -7(t5)
                  lb           s3, -7(t5)
                  srl          t4, a4, t1
                  sb           t4, 18(t5)
                  lbu          s3, 18(t5)
                  lbu          s5, 18(t5)
                  lbu          s0, 64(t5)
                  lbu          t6, 64(t5)
                  add          s5, s9, t1
                  lbu          s4, 64(t5)
                  lh           s7, 43(t5)
                  sb           ra, 43(t5)
                  lh           t0, 1(t5)
                  lh           a5, 1(t5)
                  xor          s3, s4, s7
                  sh           a3, 1(t5)
                  lw           t1, 1(t5)
                  sll          a5, t5, a5
                  lw           tp, 1(t5)
                  lbu          s8, 64(t5)
                  lbu          sp, 64(t5) #end riscv_load_store_hazard_instr_stream_0
                  la           s4, region_0+1273 #start load_store_instr_stream_1
                  la           gp, region_0+1798 #start load_store_instr_stream_0
                  lb           sp, -16(gp)
                  sb           s1, -654(s4)
                  lhu          t1, 0(gp)
                  lbu          s3, -108(s4)
                  lhu          s0, 459(s4)
                  sh           gp, 6(gp)
                  lbu          s6, 570(s4)
                  lbu          s11, 650(s4)
                  lbu          a4, 385(s4)
                  sb           t5, 7(gp)
                  sb           s0, -622(s4) #end load_store_instr_stream_1
                  sh           a5, -10(gp) #end load_store_instr_stream_0
                  la           t3, region_1+36 #start riscv_load_store_hazard_instr_stream_1
                  lb           s4, 40(t3)
                  lw           s11, 40(t3)
                  sb           a3, 40(t3)
                  lb           zero, 40(t3)
                  lbu          s7, 84(t3)
                  lh           s3, 84(t3)
                  lhu          s1, 84(t3)
                  sb           s2, 185(t3)
                  sb           a6, 185(t3)
                  lb           s0, 185(t3)
                  sb           s11, 139(t3)
                  sb           s6, 139(t3)
                  lui          a2, 683909
                  sb           t2, 45(t3)
                  sh           s6, 164(t3)
                  sb           a3, 164(t3) #end riscv_load_store_hazard_instr_stream_1
                  la           t4, region_0+4 #start riscv_load_store_rand_instr_stream_3
                  lbu          a5, 1414(t4)
                  lbu          s7, 761(t4)
                  add          t6, s11, gp
                  lbu          s10, 1617(t4)
                  and          t0, s5, tp
                  sh           s11, 1842(t4)
                  slt          gp, s8, zero
                  lbu          s1, 1885(t4)
                  sub          gp, s8, s11
                  lui          zero, 251048
                  sb           s1, 1865(t4)
                  lh           a1, 1076(t4)
                  srli         zero, gp, 30
                  slli         a1, a0, 11
                  auipc        s10, 513859
                  nop
                  lb           s4, 1499(t4)
                  lb           a5, 1442(t4)
                  lb           gp, 1667(t4)
                  lbu          s4, 1815(t4)
                  lw           ra, 16(t4)
                  andi         tp, s4, -937
                  lb           t0, 1173(t4)
                  sb           s3, 1467(t4)
                  slt          t5, zero, a0
                  lb           a0, 495(t4)
                  sb           s10, 1344(t4)
                  lb           s10, 673(t4)
                  sll          zero, s5, sp
                  auipc        s6, 677994
                  lui          s1, 470923
                  srli         s4, s2, 29
                  sra          a0, gp, s9
                  sltiu        t6, a7, 1121
                  lhu          sp, 488(t4)
                  lb           s8, 1783(t4)
                  sll          s1, s1, t6
                  sb           s11, 1993(t4)
                  sltu         a4, a5, t6
                  lb           a0, 101(t4)
                  sb           s7, 253(t4)
                  lui          s8, 781615
                  add          sp, s2, t1
                  sltu         s0, s11, s7
                  srai         tp, s8, 17
                  sb           s5, 699(t4)
                  auipc        sp, 504619
                  lbu          a3, 1115(t4)
                  sb           s8, 1935(t4)
                  sb           s8, 1106(t4) #end riscv_load_store_rand_instr_stream_3
                  blt          t5, a7, 15f
                  slt          a0, t1, gp
                  and          sp, t4, s1
                  lui          ra, 1008780
                  andi         zero, t0, 1768
                  sub          t3, a4, s2
                  srai         a2, s0, 18
                  slli         tp, s7, 6
                  sltiu        s4, s7, -28
                  bge          a0, s11, 10f
10:               slli         s8, t3, 22
                  slli         ra, a7, 20
                  or           a5, t5, gp
                  bgeu         s1, s9, 29f
                  slti         a5, s6, -574
15:               nop
                  and          s7, sp, s4
                  sub          ra, s3, a1
                  bgeu         s6, a3, 27f
                  bne          a2, t5, 30f
                  xori         t0, zero, -1003
                  bgeu         s0, a4, 25f
                  slli         t6, s7, 19
                  slt          ra, gp, gp
                  bge          a5, t6, 44f
25:               srai         s5, s5, 24
                  slt          t5, a3, s6
27:               andi         s10, t6, -214
                  beq          s6, s5, 29f
29:               sltiu        tp, a6, 636
30:               slti         sp, t4, -866
                  bgeu         s3, t5, 48f
                  slt          a0, t5, a1
                  bge          a2, s1, 45f
                  srai         ra, a2, 20
                  xor          a4, s8, s5
                  nop
                  addi         a5, a5, -2038
                  addi         s4, s7, -214
                  sltiu        s5, a0, 1081
                  auipc        s6, 382945
                  bltu         t3, s5, 44f
                  sra          a1, a2, t4
                  sltiu        t5, sp, 8
44:               slt          a1, gp, zero
45:               sub          a3, s5, a6
                  lui          t5, 788223
                  xor          t1, t0, s5
48:               sra          s0, t5, t4
                  auipc        s5, 597707
                  andi         t0, a4, 852
                  and          t0, s6, a4
                  srl          t6, t2, t0
                  xori         t3, s0, 256
                  slli         a3, s6, 31
                  sub          s11, gp, a2
                  add          s3, a2, gp
                  xori         a3, s9, -1680
                  bge          s8, a5, 78f
                  addi         a4, s8, 366
                  ori          tp, t3, 1550
                  add          t0, t0, zero
                  add          t6, t4, tp
                  blt          t2, gp, 70f
                  bne          a0, gp, 67f
                  addi         t1, t4, -2022
                  add          t5, t6, a3
67:               sltiu        s10, a7, 733
                  srai         a7, s0, 4
                  nop
70:               and          s3, zero, s1
                  srai         t3, s8, 7
                  xori         t4, a1, 1141
                  sra          t6, zero, s2
                  or           zero, gp, a1
                  bge          s7, t5, 77f
                  slt          s7, a6, s3
77:               lui          a7, 628001
78:               nop
                  andi         a7, a2, -1554
                  xori         s11, s8, -378
                  bltu         zero, a0, 90f
                  or           s3, t1, t6
                  nop
                  or           s11, a5, s4
                  sltu         s8, a1, a7
                  srai         s1, t1, 29
                  sll          a5, a5, t6
                  slt          a4, t5, a6
                  xor          t4, zero, a4
90:               srli         s10, a7, 28
                  slli         t3, s3, 11
                  slli         a1, tp, 28
                  srai         sp, a6, 26
                  nop
                  sll          s3, t6, t6
                  xori         gp, s11, -807
                  sra          a2, a6, s5
                  sltiu        t4, s9, 1828
                  bne          s5, s9, 103f
                  xor          a5, s1, s9
                  xori         gp, tp, -690
                  srai         s6, s8, 8
103:              sub          a5, s2, t5
                  bge          s4, a4, 109f
                  ori          ra, s8, -2008
                  ori          s3, t2, -1378
                  srli         s4, s2, 5
                  sra          s0, s6, s11
109:              slli         t3, a3, 4
                  xori         s8, a6, 1520
                  add          sp, s1, a0
                  srai         ra, a4, 25
                  bltu         s6, s1, 123f
                  nop
                  nop
                  bltu         zero, s6, 135f
                  nop
                  beq          t4, s0, 127f
                  blt          a0, s9, 139f
                  slli         t1, s9, 2
                  sub          s10, a1, s9
                  bne          ra, t5, 124f
123:              srli         s10, t2, 12
124:              add          a2, s5, a2
                  sll          t1, s0, zero
                  bgeu         s11, s11, 140f
127:              slti         a7, s11, 1687
                  addi         s3, a5, -197
                  auipc        s9, 105134
                  srai         gp, s5, 7
                  slti         t1, ra, 1587
                  and          s10, s1, gp
                  xor          t4, s2, t5
                  sltu         s11, a4, t6
135:              sll          sp, s9, a1
                  sll          s11, s7, tp
                  sltu         t5, a5, t0
                  ori          a2, s10, -955
139:              bne          a3, s4, 151f
140:              andi         a0, a2, -171
                  nop
                  blt          t4, s8, 157f
                  addi         a2, s9, 1693
                  lui          s4, 905382
                  beq          s8, ra, 157f
                  srli         t4, s6, 6
                  sra          s1, t6, s7
                  auipc        sp, 173989
                  beq          s7, s1, 150f
150:              lui          t0, 27646
151:              andi         a7, s0, 1560
                  bne          s9, t2, 153f
153:              add          s10, s5, zero
                  bltu         t2, a6, 172f
                  srli         a4, s7, 28
                  or           t5, tp, s8
157:              sltiu        a7, s2, -839
                  slli         tp, t0, 13
                  srl          s0, s1, s9
                  and          t6, t5, sp
                  andi         t3, ra, 907
                  ori          tp, a4, 656
                  srl          s8, a2, s9
                  nop
                  sltu         a4, a0, t3
                  sra          a5, a1, t6
                  bltu         a5, a5, 184f
                  add          a3, s1, t0
                  sub          t3, s4, s11
                  nop
                  sub          s6, tp, s8
172:              sltu         t1, s10, t6
                  lui          a1, 135496
                  sltu         s3, t6, s3
                  add          s4, t3, a5
                  srli         t4, gp, 29
                  slti         sp, a5, -625
                  srli         a0, a3, 1
                  bge          t5, t6, 193f
                  slt          a2, s10, ra
                  and          t4, s2, a7
                  slt          a5, a5, a2
                  beq          s6, s10, 194f
184:              or           t0, gp, t2
                  ori          s5, a0, -1107
                  bgeu         s10, s11, 189f
                  add          ra, s2, s7
                  nop
189:              sltiu        t0, a6, 418
                  srli         a2, s10, 18
                  bge          s6, t3, 192f
192:              bltu         s7, s10, 210f
193:              blt          a3, a5, 213f
194:              sra          s6, s1, s6
                  bge          s6, t4, 200f
                  slli         s1, s2, 8
                  bltu         a4, s8, 209f
                  blt          a4, a5, 207f
                  sra          s5, t2, a1
200:              bgeu         s10, tp, 203f
                  sra          s9, s8, ra
                  sll          s10, s9, a1
203:              srli         a1, s1, 27
                  beq          s3, s2, 211f
                  bltu         s1, s5, 221f
                  sra          s0, s10, s4
207:              beq          t0, t6, 226f
                  and          s8, a6, t2
209:              ori          s10, a2, -949
210:              blt          a4, zero, 222f
211:              or           a5, a6, s9
                  addi         t3, t3, -1122
213:              bgeu         t0, sp, 214f
214:              sltu         a1, s2, s5
                  auipc        s7, 1027989
                  sltu         s3, t2, s7
                  lui          s9, 712021
                  beq          t0, s0, 227f
                  xor          s5, a5, a2
                  bge          sp, s6, 224f
221:              srl          t4, s3, t4
222:              addi         sp, a1, 629
                  bne          gp, s1, 227f
224:              slli         a5, s3, 1
                  andi         gp, t5, 1904
226:              sltu         s9, s7, t6
227:              and          zero, zero, a6
                  bne          t0, a5, 229f
229:              sltu         sp, sp, s6
                  xori         t6, a1, 9
                  sltiu        a1, tp, -1052
                  bgeu         zero, s2, 241f
                  srai         s1, s9, 14
                  srli         t0, sp, 6
                  and          a5, t1, ra
                  bgeu         t6, s10, 256f
                  lui          zero, 182353
                  beq          s4, t3, 240f
                  sub          zero, a4, s0
240:              andi         a0, s0, 1378
241:              sltu         s1, t1, s5
                  sub          t1, t1, a0
                  sub          sp, a1, s0
                  slti         s6, sp, 842
                  srl          t3, s2, s1
                  blt          t4, s3, 261f
                  sltu         a3, s6, a2
                  sltiu        a7, s3, 615
                  slti         s7, sp, -1825
                  slt          s10, s4, s5
                  bgeu         t1, a5, 271f
                  srli         t1, s3, 23
                  add          s9, a0, a5
                  bltu         a1, t5, 256f
                  or           s11, t0, t3
256:              or           s8, a5, s2
                  slli         a4, a3, 9
                  andi         t5, t0, 1443
                  sll          t3, zero, s0
                  srai         s0, a2, 27
261:              sub          s11, a3, s11
                  slt          s9, t5, zero
                  bne          s11, t4, 273f
                  srli         s5, a7, 3
                  bltu         t2, t2, 277f
                  and          tp, a7, a6
                  bgeu         a7, s1, 268f
268:              bne          ra, t3, 283f
                  bgeu         gp, s11, 289f
                  srai         s11, t3, 1
271:              sub          t6, t3, s0
                  bge          s4, s9, 273f
273:              sll          a7, s6, t6
                  srli         a0, a5, 8
                  sltiu        s3, sp, -1999
                  srai         sp, sp, 10
277:              sltiu        s11, t6, -794
                  andi         s7, gp, -1445
                  bgeu         s9, tp, 291f
                  bltu         s1, s7, 295f
                  sltiu        s5, sp, 1921
                  nop
283:              bltu         a2, s9, 284f
284:              srl          t6, tp, t5
                  slt          s7, t0, s4
                  slt          sp, s3, a4
                  sra          s4, a2, a4
                  sll          a1, a4, t2
289:              xori         sp, t3, 281
                  slt          a1, t5, t2
291:              sltiu        s11, t2, 934
                  addi         a5, gp, -480
                  sll          s5, s2, a1
                  sltiu        sp, s10, 1593
295:              ori          s5, t5, -637
                  lui          a3, 633882
                  beq          zero, s0, 306f
                  bne          s7, t6, 317f
                  slli         s5, a2, 10
                  sub          s4, s8, s1
                  addi         s8, t6, 1762
                  bge          s3, s2, 304f
                  lui          t5, 842915
304:              xori         zero, s3, -1448
                  add          a0, t0, tp
306:              andi         s4, t3, -287
                  sltiu        a4, t2, -1934
                  slti         a5, s11, 2023
                  sll          s1, a4, s1
                  srli         a4, t4, 16
                  add          s1, s11, zero
                  slli         a4, sp, 27
                  slt          ra, a2, a7
                  beq          t0, s1, 316f
                  srli         t1, zero, 15
316:              srl          t5, t5, t5
317:              or           s3, t6, a5
                  blt          a4, t1, 330f
                  andi         t4, s2, -453
                  xor          gp, t2, t1
                  sub          t6, a5, s5
                  nop
                  lui          tp, 976795
                  xori         s8, s3, -1276
                  ori          s5, s9, 1438
                  auipc        ra, 622412
                  slt          t4, s4, s10
                  sra          gp, a0, ra
                  srai         s8, a2, 15
330:              sra          sp, a4, t6
                  bge          s7, a4, 346f
                  andi         sp, s10, -950
                  xor          s1, t4, a4
                  andi         ra, s9, -999
                  add          s11, s2, a6
                  slli         gp, t2, 17
                  slt          s3, s5, gp
                  slli         gp, a1, 19
                  or           s10, s7, a2
                  bne          t5, s4, 352f
                  bge          t5, tp, 345f
                  srl          zero, t4, a0
                  addi         a7, a5, -24
                  sltu         a0, a0, a4
345:              lui          a7, 95777
346:              bltu         ra, s4, 347f
347:              sll          s8, t3, t2
                  nop
                  bge          s4, s1, 354f
                  or           t6, s3, a3
                  sra          t3, tp, tp
352:              lui          s5, 262993
                  nop
354:              lui          t1, 622377
                  and          s6, a3, s7
                  lui          tp, 567165
                  sltiu        t1, a3, 610
                  slti         t1, sp, -1030
                  bne          s0, t4, 362f
                  la           a2, region_0+655 #start load_store_instr_stream_2
                  sb           s4, 25(a2)
                  la           a0, region_0+1330 #start load_store_instr_stream_4
                  lb           t0, 382(a0)
                  la           a5, region_0+1120 #start load_store_instr_stream_3
                  la           a3, region_0+100 #start load_store_instr_stream_0
                  sb           s1, 483(a0)
                  lb           s0, 52(a2)
                  lbu          a4, -57(a3)
                  la           t1, region_0+822 #start load_store_instr_stream_1
                  lb           zero, 585(a0)
                  sb           s2, -55(a3)
                  lb           s7, -1(a5)
                  lh           s9, 39(a2)
                  lb           a1, -24(a3)
                  sb           a2, -24(a2)
                  lbu          s7, -6(a5)
                  lb           s10, 13(t1)
                  sb           tp, -1124(a0)
                  lb           a1, 9(a5)
                  lbu          a4, 63(a2)
                  lbu          zero, -7(a5)
                  lhu          sp, 2(a3)
                  lb           s8, 593(a0)
                  lhu          a4, 14(a5)
                  lbu          ra, 173(a0)
                  lbu          s10, -56(a2)
                  lb           s4, 15(a2)
                  lbu          s1, -19(a3)
                  lbu          s3, 26(a3)
                  lw           a7, 12(a5)
                  sb           s7, 4(t1)
                  lbu          s4, -14(a2)
                  sh           s3, -58(a3)
                  sb           a7, -48(a2)
                  sh           s4, -1328(a0)
                  sh           a7, 516(a0)
                  sb           s0, 13(t1)
                  sb           tp, 35(a3)
                  lb           t3, 6(t1)
                  lb           t5, -3(a5) #end load_store_instr_stream_3
                  lh           t4, -45(a2) #end load_store_instr_stream_2
                  lbu          s4, 505(a0) #end load_store_instr_stream_4
                  sh           t6, 8(t1) #end load_store_instr_stream_1
                  lb           ra, -26(a3) #end load_store_instr_stream_0
                  srli         a4, sp, 19
                  sll          a2, t0, s1
362:              andi         t5, sp, -905
                  xori         a2, a3, -1957
                  or           a7, s8, t0
                  slti         t1, t4, 523
                  slt          t6, ra, s1
                  sltiu        a0, t0, -1675
                  auipc        s3, 564938
                  slli         s0, s2, 19
                  srli         t4, s8, 9
                  bne          t4, s11, 375f
                  sra          t1, s10, a2
                  sub          s3, t5, a3
                  bgeu         s8, zero, 388f
375:              srli         a3, t5, 22
                  beq          s11, s5, 385f
                  slli         s4, s7, 3
                  blt          a1, tp, 398f
                  srli         s11, t0, 6
                  sra          s3, s2, t3
                  xor          a2, s1, s11
                  and          t3, sp, sp
                  beq          a0, t3, 384f
384:              slli         s6, t3, 15
385:              andi         t1, a0, 175
                  srl          tp, ra, s1
                  srli         s1, s1, 3
388:              andi         gp, t6, -562
                  slti         a5, t1, -1823
                  andi         t5, ra, 1685
                  add          gp, t5, a7
                  sltu         s7, s8, s1
                  blt          s9, a0, 400f
                  addi         t0, t4, -1683
                  xor          s10, s6, t4
                  slti         s7, s7, -579
                  xor          a1, sp, tp
398:              ori          zero, s0, 307
                  slli         a7, s1, 15
400:              bgeu         t0, t4, 410f
                  blt          s11, t5, 418f
                  sra          gp, a0, s8
                  ori          tp, t0, 1821
                  sra          ra, t2, s8
                  slt          a4, ra, t1
                  blt          t4, t0, 415f
                  la           t3, region_1+1584 #start riscv_load_store_rand_instr_stream_2
                  lbu          s3, 4(t3)
                  sb           s10, 24(t3)
                  sb           t6, 59(t3)
                  sll          t6, a3, a5
                  lbu          a2, -21(t3)
                  or           t6, a5, t4
                  andi         s3, tp, 302
                  slti         s3, s0, 245
                  sh           zero, -12(t3)
                  slli         zero, t5, 0
                  ori          t5, a3, -483
                  slt          t5, t3, a2
                  lbu          s1, -18(t3)
                  lbu          a4, -18(t3)
                  lh           s0, -44(t3)
                  sb           s3, 21(t3)
                  lui          a4, 186332
                  lhu          a7, 2(t3)
                  lui          s7, 1026464
                  slli         s6, s6, 10
                  srli         zero, s2, 12
                  addi         s8, s9, -19
                  srl          tp, s2, s2
                  lbu          s5, 1(t3)
                  xor          s5, a4, s1
                  sltu         t4, s4, a2
                  andi         a0, a7, -770
                  lb           ra, -4(t3)
                  xori         sp, s8, -1518
                  slti         gp, t6, 1945
                  slt          gp, a6, ra
                  lbu          t5, -43(t3)
                  or           t6, a5, a6
                  slt          s1, tp, s6
                  lbu          s10, 40(t3)
                  ori          tp, a3, -163
                  sb           t6, -22(t3)
                  sltiu        s11, s5, 961
                  sb           t2, -50(t3) #end riscv_load_store_rand_instr_stream_2
                  beq          a2, zero, 423f
                  srl          zero, t3, s10
                  blt          s11, t5, 412f
410:              nop
                  blt          t3, sp, 429f
412:              bge          a6, s9, 423f
                  nop
                  or           s0, t4, t3
415:              or           ra, a0, s4
                  la           s1, region_1+1472 #start riscv_load_store_rand_instr_stream_0
                  lb           s5, -4(s1)
                  lbu          t4, -13(s1)
                  or           s3, zero, t4
                  or           s3, s1, s4
                  srl          a3, a1, t4
                  lb           s11, 0(s1)
                  lh           a3, -10(s1)
                  lbu          ra, -4(s1)
                  lb           s3, -7(s1)
                  lui          t0, 315631
                  lb           s5, 2(s1)
                  lbu          s11, -3(s1)
                  srli         s0, a5, 7
                  lb           a7, 7(s1)
                  srl          s6, t6, a6
                  srai         t6, t3, 17
                  lbu          a7, 7(s1)
                  sb           s1, 11(s1)
                  lbu          t6, -11(s1)
                  lb           t3, 15(s1)
                  sb           s8, -3(s1)
                  srl          a4, s7, s7
                  addi         s3, a5, -125
                  andi         ra, a4, 1494
                  slt          tp, s9, s0
                  lb           t3, 16(s1) #end riscv_load_store_rand_instr_stream_0
                  bltu         s8, s2, 436f
                  slt          s0, s3, zero
                  xor          s10, s10, s0
                  slti         s7, a1, 1666
                  srai         s5, zero, 2
                  xori         a2, s0, -1177
                  and          t5, s3, t5
                  xori         s9, zero, 777
                  or           s11, a7, a7
                  la           t1, sub_2
                  addi         t1, t1, -413
                  sra          s3, tp, a5
sub_1_j3:         jalr         ra, t1, 413 #jump sub_1 -> sub_2
418:              slti         t5, t4, 441
                  add          tp, t2, t3
                  nop
                  bge          zero, gp, 426f
                  srl          a3, t3, s5
423:              bge          a2, a1, 433f
                  andi         zero, s1, 1337
                  srli         zero, a3, 4
426:              slti         s6, zero, 1246
                  sll          t5, a1, ra
                  la           s3, region_0+1603 #start riscv_load_store_hazard_instr_stream_3
                  sra          s4, s4, t3
                  lw           tp, -55(s3)
                  lhu          tp, -55(s3)
                  lbu          s6, -55(s3)
                  sw           s9, -55(s3)
                  sw           a4, -55(s3)
                  sb           a3, -55(s3)
                  sw           s4, -55(s3)
                  sw           s8, -55(s3)
                  sb           a2, -55(s3)
                  lb           zero, -24(s3)
                  sb           s9, -24(s3)
                  lb           sp, -24(s3) #end riscv_load_store_hazard_instr_stream_3
                  sltu         tp, tp, s5
429:              slti         t4, a6, -1259
                  bltu         a7, s6, 434f
                  add          s4, t1, t3
                  srli         gp, s0, 0
433:              or           s6, a2, t0
434:              sub          a5, t2, t0
                  add          s3, s11, t4
436:              slti         a0, t1, -1275
                  xor          a2, s5, a1
                  add          a4, s8, a2
                  lui          zero, 359565
                  addi         zero, tp, 843
                  xori         a0, s9, -1399
                  xori         ra, t5, -288
                  sltu         t1, t5, zero
                  blt          a1, t2, 445f
445:              xori         a3, s0, -1119
                  bltu         s8, s3, 448f
                  nop
448:              auipc        ra, 30470
                  bne          a1, sp, 469f
                  bgeu         gp, a7, 453f
                  slti         t6, s6, -902
                  xor          t3, t2, a3
453:              bge          t1, t0, 454f
454:              srl          a7, s9, zero
                  sub          a4, t4, t1
                  auipc        t5, 73984
                  auipc        ra, 927811
                  andi         a2, s1, 791
                  lui          s8, 56049
                  sltu         gp, t2, a6
                  bge          zero, s8, 470f
                  lui          s11, 312180
                  bgeu         s11, a3, 472f
                  or           t1, ra, sp
                  or           s0, t4, sp
                  sltu         a5, s10, a7
                  srai         s11, t6, 3
                  sltiu        zero, t3, -204
469:              sub          a2, sp, t6
470:              lui          s11, 909152
                  addi         s9, t1, 1409
472:              andi         a5, s9, 1063
                  beq          a2, s10, 474f
474:              bne          zero, a5, 489f
                  xori         t1, zero, 418
                  srl          a1, a7, sp
                  bge          a1, a2, 491f
                  slti         a4, a0, -671
                  lui          t1, 406557
                  sll          t4, zero, sp
                  auipc        t1, 318592
                  bgeu         a5, a3, 492f
                  srai         gp, t3, 1
                  sltiu        s4, a0, -181
                  sltiu        a5, a7, -1810
                  and          t1, s10, t6
                  xori         s9, s2, -509
                  ori          t5, s6, -1475
489:              xori         a1, s1, -763
                  sra          s5, tp, zero
491:              slti         a7, t5, -1571
492:              addi         a3, a3, -682
                  lw           ra, 4(s2)
                  xori         s1, a5, 345
                  slli         s3, s7, 5
                  auipc        t5, 493450
                  addi         s2, s2, 56
                  sltiu        a7, t3, -776
                  andi         s0, s4, 982
                  sll          a7, zero, s7
                  slti         a1, a3, -1128
                  slt          a4, s4, t6
                  srli         a5, a7, 13
                  slli         t5, t1, 31
873:              addi x25, x1, 0
873:              jalr x25, x25, 0
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
                  add x16, x18, zero
                  csrr x19, 0x300 # MSTATUS
                  csrr x19, 0x342 # MCAUSE
                  srli x19, x19, 31
                  bne x19, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x19, 0x341 # MEPC
                  csrr x19, 0x342 # MCAUSE
                  li x30, 0x3 # BREAKPOINT
                  beq x19, x30, ebreak_handler
                  li x30, 0x8 # ECALL_UMODE
                  beq x19, x30, ecall_handler
                  li x30, 0x9 # ECALL_SMODE
                  beq x19, x30, ecall_handler
                  li x30, 0xb # ECALL_MMODE
                  beq x19, x30, ecall_handler
                  li x30, 0x1
                  beq x19, x30, instr_fault_handler
                  li x30, 0x5
                  beq x19, x30, load_fault_handler
                  li x30, 0x7
                  beq x19, x30, store_fault_handler
                  li x30, 0xc
                  beq x19, x30, pt_fault_handler
                  li x30, 0xd
                  beq x19, x30, pt_fault_handler
                  li x30, 0xf
                  beq x19, x30, pt_fault_handler
                  li x30, 0x2 # ILLEGAL_INSTRUCTION
                  beq x19, x30, illegal_instr_handler
                  csrr x30, 0x343 # MTVAL
                  1: la x7, test_done
                  jalr x1, x7, 0

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
                  la x7, write_tohost
                  jalr x0, x7, 0

instr_fault_handler:
                  add x18, x16, zero
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
                  add x18, x16, zero
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
                  add x18, x16, zero
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
                  csrr  x19, 0x341
                  addi  x19, x19, 4
                  csrw  0x341, x19
                  add x18, x16, zero
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
                  csrr  x19, 0x341
                  addi  x19, x19, 4
                  csrw  0x341, x19
                  add x18, x16, zero
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
                  csrr  x19, 0x300 # MSTATUS;
                  csrr  x19, 0x304 # MIE;
                  csrr  x19, 0x344 # MIP;
                  csrrc x19, 0x344, x19 # MIP;
                  add x18, x16, zero
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
