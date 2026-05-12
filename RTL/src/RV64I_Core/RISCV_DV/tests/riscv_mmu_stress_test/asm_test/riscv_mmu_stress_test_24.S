.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x13, h0_start
jalr x0, x13, 0
h0_start:
                  li x12, 0x40000100
                  csrw 0x301, x12
kernel_sp:        
                  la x11, kernel_stack_end

trap_vec_init:    
                  la x12, mtvec_handler
                  ori x12, x12, 1
                  csrw 0x305, x12 # MTVEC

mepc_setup:       
                  la x12, init
                  csrw 0x341, x12

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x12, 0x1800
                  csrw 0x300, x12 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0xce170b31
                  li x2, 0xf14c2df2
                  li x3, 0xfc2024e8
                  li x4, 0x4
                  li x5, 0x1
                  li x6, 0x5
                  li x7, 0xee110711
                  li x8, 0x8
                  li x9, 0xa
                  li x10, 0x80000000
                  li x12, 0x0
                  li x13, 0x80000000
                  li x14, 0x0
                  li x15, 0xf3b453cc
                  li x16, 0x27226c0a
                  li x17, 0x80000000
                  li x18, 0x20ae5cf
                  li x19, 0x80000000
                  li x20, 0x0
                  li x21, 0x80000000
                  li x22, 0x8
                  li x24, 0xe
                  li x25, 0xf022f6d4
                  li x26, 0x0
                  li x27, 0x5
                  li x28, 0x783bebe2
                  li x29, 0x6
                  li x30, 0x458319fb
                  li x31, 0xfa78c439
                  la x23, user_stack_end
main:             la           s8, region_1+1620 #start load_store_instr_stream_4
                  la           s0, region_1+629 #start load_store_instr_stream_2
                  la           s11, region_1+7 #start load_store_instr_stream_1
                  sh           a5, -22(s8)
                  lb           a6, 49(s8)
                  sb           t4, 194(s0)
                  sb           t3, 85(s11)
                  la           a0, region_1+758 #start load_store_instr_stream_0
                  sw           t5, 182(a0)
                  la           tp, region_1+1476 #start load_store_instr_stream_3
                  lhu          s3, -147(s0)
                  lb           t3, -21(s8)
                  lh           s9, -52(tp)
                  sw           s11, 194(a0)
                  lw           t0, -32(s8)
                  sh           tp, 24(s8)
                  lb           a6, -54(s0)
                  lb           ra, -49(s8)
                  sh           a2, 64(s8)
                  sh           s7, -170(a0)
                  lbu          a7, 104(s0)
                  lhu          t6, 18(tp)
                  lh           gp, 249(s11)
                  lbu          t4, -31(a0)
                  lbu          zero, -55(tp)
                  sh           t6, -81(s0)
                  sh           a0, 71(s11)
                  lbu          s3, -256(s0)
                  lb           t6, -14(tp)
                  sb           s10, 220(s11)
                  sb           tp, 25(s8) #end load_store_instr_stream_4
                  lb           a6, -80(s0)
                  lbu          gp, 80(s11)
                  lb           s5, 45(tp)
                  lb           t2, 167(a0)
                  sh           s1, 60(tp)
                  lbu          a4, -25(tp)
                  lbu          s9, 147(s11)
                  sh           s10, -183(s0)
                  sb           s9, -24(a0)
                  lb           t2, 228(s0)
                  sh           s4, 54(tp) #end load_store_instr_stream_3
                  sb           s8, 200(s11)
                  sh           s10, 165(s0) #end load_store_instr_stream_2
                  lb           s2, 91(s11) #end load_store_instr_stream_1
                  sb           s4, -184(a0) #end load_store_instr_stream_0
                  la           gp, region_0+936 #start riscv_load_store_rand_instr_stream_0
                  sltiu        sp, ra, -547
                  sb           s1, 44(gp)
                  lb           a6, -29(gp)
                  sltu         s9, s6, a0
                  lb           a0, -60(gp)
                  lh           t6, 34(gp)
                  andi         s10, a3, -1758
                  lbu          s10, 47(gp)
                  ori          s2, t1, 817
                  sb           tp, 29(gp)
                  lui          s0, 750341
                  lui          a0, 765470
                  sra          t2, a0, t1
                  srli         a2, t2, 29
                  lb           zero, -31(gp)
                  sltu         a2, s1, a1
                  sb           a4, 33(gp)
                  sb           t5, -59(gp)
                  srai         a6, a5, 22
                  lh           s11, -30(gp)
                  slt          s1, s2, t4
                  sll          a7, gp, t3
                  nop
                  lb           a4, -33(gp)
                  lui          t6, 552245
                  ori          t5, t4, -1196
                  sb           ra, 14(gp)
                  ori          t1, t2, -1391
                  slli         a4, t2, 23
                  lb           a0, -34(gp)
                  lbu          t1, -21(gp)
                  lhu          sp, -12(gp)
                  lb           a0, 18(gp)
                  auipc        s3, 351339
                  slt          a6, t3, s10
                  addi         a0, s2, -69
                  lh           t4, -54(gp)
                  nop
                  lh           a5, 26(gp) #end riscv_load_store_rand_instr_stream_0
                  bgeu         sp, t3, 10f
                  blt          a0, zero, 10f
                  nop
                  blt          a6, s7, 9f
                  srli         a6, tp, 5
                  andi         s2, t1, -1447
                  srai         s8, t5, 24
                  bgeu         a3, s0, 20f
                  slt          gp, s6, t6
9:                srai         a5, t4, 25
10:               bltu         t3, a3, 15f
                  auipc        s10, 983331
                  srli         t6, t0, 15
                  or           a5, a0, t6
                  sltu         t0, t2, t4
                  srl          a2, a1, s4
                  sll          t0, s0, s2
                  srli         t6, a3, 7
                  la           s4, sub_1
                  addi         s4, s4, -300
                  or           s1, t2, t2
                  ori          a0, zero, -192
main_j1:          jalr         s9, s4, 300 #jump main -> sub_1
                  sub          s5, sp, t5
                  sltu         s1, a2, s4
                  beq          t1, s3, 33f
                  auipc        gp, 24388
15:               bge          t0, s7, 16f
16:               bltu         t3, a1, 20f
                  xor          s5, ra, a4
                  ori          s4, gp, -1559
                  blt          s2, s1, 31f
20:               addi         t3, s10, -1240
                  or           a6, s4, t6
                  xor          s2, a4, a1
                  and          s1, t3, t0
                  srl          t2, s9, t1
                  sltu         t1, s4, t5
                  srl          s9, s2, a4
                  xori         s1, a3, 1191
                  sltu         sp, t3, a1
                  andi         sp, tp, 187
                  xor          s0, zero, a3
31:               beq          t3, s0, 46f
                  slli         t1, t5, 21
33:               sll          a0, a6, a6
                  sltiu        a6, a5, -624
                  bltu         s6, ra, 53f
                  and          s4, t6, s1
                  beq          s7, s3, 50f
                  blt          tp, s2, 41f
                  and          s6, t3, a5
                  slti         t3, s10, 93
41:               xori         t0, a6, -1964
                  sltu         t1, t5, t0
                  bgeu         s6, s1, 60f
                  slli         t5, t5, 9
                  sra          s9, t4, s0
46:               and          a4, s1, s1
                  beq          t4, t3, 49f
                  xor          s0, s4, tp
49:               auipc        gp, 418319
50:               srl          ra, a5, s5
                  and          a2, s7, a2
                  bgeu         t6, t1, 60f
53:               bltu         s10, a7, 56f
                  slli         s3, a2, 25
                  sll          t5, t0, ra
56:               bge          gp, t3, 75f
                  srl          a4, s5, a4
                  sltu         t6, a2, a2
                  srai         t6, t1, 31
60:               bgeu         t1, a1, 70f
                  la           sp, region_0+1913 #start riscv_load_store_hazard_instr_stream_0
                  lb           a7, -176(sp)
                  lbu          a5, -176(sp)
                  lb           tp, -176(sp)
                  lb           s9, -176(sp)
                  slt          s0, s0, a5
                  sll          t5, a0, gp
                  sw           s8, 71(sp)
                  lb           ra, -143(sp)
                  lb           ra, 68(sp)
                  slt          ra, zero, s7
                  slli         s8, t2, 0
                  auipc        t6, 162686
                  sb           s10, -183(sp)
                  lw           s1, -241(sp)
                  lbu          s8, 54(sp)
                  lb           t3, -62(sp)
                  lbu          tp, 12(sp)
                  sb           s10, 12(sp)
                  lbu          a5, 12(sp)
                  slli         s9, s11, 16
                  sh           s11, -17(sp) #end riscv_load_store_hazard_instr_stream_0
                  srl          t1, s1, t0
                  bgeu         s9, a0, 64f
                  xor          s11, s9, s10
64:               sll          s3, tp, a3
                  bge          s2, t5, 84f
                  slli         s1, s3, 27
                  srl          s4, tp, a0
                  slli         t4, s11, 18
                  xor          s11, s4, gp
70:               sltiu        ra, t4, -329
                  bltu         s5, t1, 84f
                  xori         t6, a4, 1071
                  srl          s1, tp, s10
                  and          t0, t2, s11
75:               bge          tp, t4, 83f
                  addi         s3, tp, -284
                  sub          t3, a6, t4
                  sltu         a7, t3, s11
                  addi         s3, zero, 763
                  sltu         a4, sp, a7
                  bge          s7, s6, 97f
                  add          t4, s0, a2
83:               sll          t1, s11, a6
84:               slti         s0, a0, 1771
                  slli         s1, s1, 9
                  auipc        a0, 102028
                  nop
                  ori          t3, t5, 832
                  bne          t3, s7, 102f
                  or           t4, s7, s0
                  add          s2, a3, s2
                  andi         a7, t3, -1119
                  bgeu         a5, t0, 112f
                  auipc        t4, 561355
                  or           s3, s11, sp
                  srl          a6, t0, a5
97:               slli         a6, s9, 26
                  add          ra, ra, s3
                  bne          s11, s3, 101f
                  lui          s6, 285819
101:              xori         zero, gp, -76
102:              blt          s0, s8, 110f
                  slt          s5, a7, s9
                  xor          s10, ra, a2
                  srli         a4, zero, 31
                  sltiu        sp, a5, -1716
                  sltiu        t6, s4, -1709
                  lui          tp, 577832
                  nop
110:              nop
                  sub          t0, s8, s1
112:              bltu         s2, zero, 115f
                  add          s3, t3, t0
                  beq          t6, a1, 126f
115:              sltu         t2, sp, s5
                  or           s11, a1, a4
                  and          a4, tp, gp
                  slti         t5, t4, 281
                  sra          s8, s1, a7
                  srl          sp, t1, s9
                  slti         a2, s6, 161
                  add          t3, t6, s1
                  and          s6, a4, a1
                  sltiu        t1, sp, -1528
                  srl          s5, gp, a1
126:              sltu         a6, t0, t4
                  srl          a0, t3, zero
                  slli         s0, s9, 0
                  sltu         zero, t6, s0
                  andi         zero, t2, -914
                  addi         a2, s7, -237
                  lui          gp, 25070
                  sltu         sp, t6, a4
                  srli         a5, a7, 31
                  slt          a4, s2, s9
                  bgeu         a0, s2, 142f
                  srai         s9, s1, 20
                  srai         a4, zero, 26
                  slli         s9, tp, 17
                  srai         t6, t2, 2
                  slli         t3, a3, 17
142:              xor          s4, s8, t4
                  la x13, test_done
                  jalr x0, x13, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            bge          a3, t4, sub_1_stack_p
                  sltiu        s4, gp, -1213
                  add          gp, s2, a3
sub_1_stack_p:    addi         s7, s7, -32
                  srl          s1, t0, s3
                  and          a7, a6, a3
                  sw           s9, 4(s7)
                  srai         a4, t0, 13
                  la           sp, region_0+1589 #start riscv_load_store_hazard_instr_stream_4
                  lhu          a5, 27(sp)
                  sh           zero, 27(sp)
                  lbu          zero, 27(sp)
                  add          a2, a5, sp
                  lb           s10, -48(sp)
                  lb           t2, -48(sp)
                  lhu          s0, -31(sp)
                  lb           a0, -31(sp)
                  sb           s11, 6(sp)
                  lh           s6, -25(sp)
                  lb           a5, -6(sp)
                  lb           t5, -6(sp)
                  sltiu        tp, t2, -77
                  lb           t1, -6(sp) #end riscv_load_store_hazard_instr_stream_4
                  la           s0, region_0+1826 #start load_store_instr_stream_1
                  la           a7, region_0+1935 #start load_store_instr_stream_0
                  lbu          sp, 49(s0)
                  lbu          s10, -1446(a7)
                  lhu          a5, 32(s0)
                  sw           s1, 50(s0)
                  lbu          t4, -1261(a7)
                  sb           a3, -42(s0)
                  lh           s11, -609(a7)
                  lbu          s1, 29(s0)
                  lhu          a4, -1483(a7)
                  sw           s0, -42(s0)
                  lbu          s5, -289(a7)
                  sh           ra, -46(s0)
                  lh           a2, -8(s0)
                  lbu          s6, -30(s0) #end load_store_instr_stream_1
                  lbu          s5, -546(a7) #end load_store_instr_stream_0
                  la           ra, region_1+906 #start riscv_load_store_rand_instr_stream_6
                  lb           s8, 159(ra)
                  slli         t5, a0, 24
                  sb           t3, 71(ra)
                  sh           s1, -74(ra)
                  sra          s3, s11, ra
                  lbu          s0, 100(ra)
                  xori         gp, t1, 1991
                  lhu          s11, 56(ra)
                  lbu          a0, -203(ra)
                  sltu         t2, gp, sp
                  nop
                  auipc        t6, 159413
                  andi         s10, a6, -453
                  sw           a3, -26(ra)
                  nop
                  slt          s8, a1, t3
                  ori          a6, s11, 824
                  sb           s10, -227(ra)
                  xor          s5, ra, a7
                  slt          a6, s10, s7
                  lui          s6, 961103
                  lbu          a5, -117(ra)
                  lb           s8, 221(ra)
                  addi         a6, s1, 145
                  lhu          sp, -232(ra)
                  sb           t2, 31(ra)
                  lh           gp, 250(ra)
                  slti         a6, t4, 808
                  srli         gp, s5, 7
                  lw           a4, -214(ra)
                  lb           s4, 81(ra)
                  or           t0, a3, t2
                  and          s1, t1, t2
                  xori         s11, t0, 951
                  sh           a4, 56(ra) #end riscv_load_store_rand_instr_stream_6
                  la           a0, region_0+965 #start riscv_load_store_hazard_instr_stream_5
                  lui          a6, 881408
                  sb           a0, 258(a0)
                  lb           a6, 258(a0)
                  slti         t3, t2, 1023
                  sb           a6, 258(a0)
                  lb           a6, 258(a0)
                  lbu          a6, -788(a0)
                  lb           ra, 114(a0)
                  lw           t6, 923(a0)
                  add          s8, s5, t5
                  lb           s3, -792(a0)
                  lb           t0, -792(a0)
                  sb           a4, 684(a0)
                  slt          s10, t3, t1
                  lb           s3, 684(a0)
                  srli         ra, t5, 0
                  lb           t3, 614(a0) #end riscv_load_store_hazard_instr_stream_5
                  la           a6, region_1+96 #start riscv_load_store_hazard_instr_stream_6
                  lb           t6, 52(a6)
                  lh           t0, 52(a6)
                  lb           a2, 52(a6)
                  lui          a0, 710201
                  lh           s5, 52(a6)
                  srli         a5, a6, 17
                  sh           s8, 52(a6)
                  sb           a0, 17(a6)
                  sb           zero, -7(a6)
                  sb           t1, -7(a6)
                  add          s1, s1, t6
                  lb           t2, -7(a6)
                  sb           a2, 63(a6) #end riscv_load_store_hazard_instr_stream_6
                  la           s4, region_0+1248 #start riscv_load_store_hazard_instr_stream_1
                  lui          s8, 732784
                  sb           s6, 35(s4)
                  lhu          t3, 196(s4)
                  lb           s11, -169(s4)
                  sb           a4, 46(s4)
                  or           tp, s1, s2
                  lb           a2, 70(s4)
                  xor          s11, s11, t5
                  sltiu        a7, s0, -966
                  nop
                  sb           gp, 14(s4)
                  lbu          s9, 42(s4)
                  sb           ra, 42(s4)
                  sh           a7, -42(s4)
                  sll          a5, s8, t5
                  lhu          zero, -152(s4)
                  sb           s8, 41(s4)
                  sb           t2, 13(s4)
                  lbu          a5, 13(s4)
                  lw           a4, -72(s4)
                  lbu          s1, 1(s4)
                  lb           zero, 79(s4)
                  sltiu        gp, s7, -1281
                  lbu          t2, 79(s4) #end riscv_load_store_hazard_instr_stream_1
                  la           gp, region_1+1985 #start load_store_instr_stream_4
                  la           a7, region_1+343 #start load_store_instr_stream_0
                  la           tp, region_1+348 #start load_store_instr_stream_2
                  la           s4, region_1+133 #start load_store_instr_stream_1
                  lbu          a4, -286(tp)
                  lbu          s3, -2(s4)
                  sb           a7, -1312(gp)
                  lh           t3, -23(a7)
                  lbu          t5, 1241(tp)
                  lbu          s10, -58(a7)
                  la           s1, region_1+1091 #start load_store_instr_stream_3
                  lbu          s10, -1700(gp)
                  lb           a0, 95(tp)
                  sb           tp, 590(tp)
                  lb           ra, -4(a7)
                  lb           s5, 16(s4)
                  lhu          t0, -237(s1)
                  lbu          s10, -1123(gp)
                  sw           sp, -283(s1)
                  lb           s10, -274(tp)
                  lb           ra, -86(gp)
                  sb           a4, 1590(tp)
                  lw           t5, -1361(gp)
                  sb           gp, 6(s4)
                  sb           t1, -6(a7)
                  lb           s2, -818(gp)
                  lb           zero, 11(s4)
                  lbu          sp, 5(s4)
                  lbu          a6, 234(s1)
                  sb           s10, -7(s4)
                  sh           a6, -21(a7)
                  sb           sp, -258(tp)
                  lw           t3, -1061(gp)
                  lh           t3, 477(s1)
                  lb           a4, -1331(gp)
                  lw           t1, 145(s1) #end load_store_instr_stream_3
                  lh           a6, -1739(gp)
                  sb           s7, 55(a7)
                  lbu          t6, -196(gp) #end load_store_instr_stream_4
                  lhu          zero, 1632(tp) #end load_store_instr_stream_2
                  sh           s2, 3(s4) #end load_store_instr_stream_1
                  lbu          t3, -40(a7) #end load_store_instr_stream_0
                  la           sp, region_1+85 #start riscv_load_store_rand_instr_stream_4
                  lh           t5, 153(sp)
                  sra          s6, t3, s4
                  srai         s8, s7, 10
                  addi         a5, sp, -1373
                  sb           s5, 237(sp)
                  lhu          a4, 153(sp)
                  lb           s1, 214(sp)
                  lbu          s1, 116(sp)
                  lbu          zero, 157(sp)
                  sw           t5, 223(sp)
                  lui          t1, 853876
                  slt          s11, t5, s1
                  add          s6, s3, a7
                  srai         a0, a0, 20
                  sb           s6, 12(sp)
                  xori         s11, gp, -1052
                  sra          s1, a3, a2
                  lb           t6, 122(sp)
                  xor          ra, s6, t1
                  sh           s8, 231(sp)
                  sb           gp, 8(sp)
                  lb           t0, -4(sp)
                  auipc        t0, 5172
                  sb           t6, -12(sp)
                  srli         t4, a0, 23
                  ori          a4, s1, 670
                  lbu          s11, 238(sp)
                  add          gp, t2, a2
                  lbu          s5, 87(sp)
                  sub          s5, t0, t2
                  xor          s5, s0, t0
                  lb           s2, 0(sp)
                  lbu          t3, 204(sp) #end riscv_load_store_rand_instr_stream_4
                  la           ra, region_0+1925 #start riscv_load_store_hazard_instr_stream_3
                  add          s4, a1, t3
                  lb           t3, -872(ra)
                  lb           s9, -872(ra)
                  lhu          s5, -83(ra)
                  lbu          t4, -47(ra)
                  lh           tp, -195(ra)
                  sh           t1, -195(ra)
                  lb           tp, -626(ra)
                  sra          a2, ra, a3
                  sh           t3, -953(ra)
                  lb           s5, -1888(ra)
                  lb           s1, -346(ra)
                  and          t0, a6, s3
                  sb           s5, -858(ra) #end riscv_load_store_hazard_instr_stream_3
                  la           a4, region_0+463 #start riscv_load_store_rand_instr_stream_2
                  slli         s4, a3, 31
                  nop
                  slti         t4, a2, 1079
                  sb           a1, 1316(a4)
                  sll          t6, s8, zero
                  srl          s5, t4, ra
                  lbu          zero, 290(a4)
                  andi         a2, a3, 1801
                  lw           t3, -55(a4)
                  sw           a6, -151(a4)
                  sh           s9, 1153(a4)
                  lbu          t4, 256(a4)
                  sb           s9, -370(a4)
                  xor          a6, t2, a2
                  lb           zero, -137(a4)
                  and          t4, s11, zero
                  or           a5, t0, t5
                  lb           a2, 295(a4)
                  sb           s7, -71(a4)
                  xori         gp, s6, 208
                  or           t1, s4, s0
                  lh           a2, 1433(a4)
                  srai         s10, a3, 21
                  sb           s5, 576(a4)
                  lw           a0, 553(a4)
                  lb           t1, 444(a4)
                  slti         t5, t2, 1719
                  nop
                  xori         a0, t1, 482
                  andi         t2, s3, -1784
                  sb           a1, 410(a4)
                  sltiu        t6, t6, -334
                  sub          t5, t1, a6
                  sh           s10, 27(a4)
                  and          t1, a7, s8
                  and          s3, zero, a0
                  sltu         ra, s2, t6
                  lb           s6, 1167(a4) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_1+870 #start riscv_load_store_rand_instr_stream_1
                  nop
                  lw           t3, 6(sp)
                  sb           a4, 13(sp)
                  sltiu        s3, s9, 484
                  lb           a2, -8(sp)
                  lb           tp, -15(sp)
                  sh           t4, -6(sp)
                  nop
                  srl          tp, s3, t6
                  and          t3, a2, t3
                  lui          a6, 420024
                  lui          t3, 874401
                  lb           ra, 0(sp)
                  lhu          s9, 8(sp)
                  lbu          ra, -8(sp)
                  lbu          tp, -3(sp)
                  sll          t0, t2, a0
                  lhu          s10, -2(sp)
                  sltiu        s8, t2, -202
                  ori          s9, a4, -434
                  addi         s9, s6, 1578
                  addi         a7, gp, -1046
                  lbu          t0, -13(sp)
                  lh           s4, -2(sp)
                  lb           a4, 10(sp)
                  sb           s9, 1(sp)
                  srl          t3, t6, tp
                  sb           tp, -8(sp)
                  lbu          a0, -3(sp)
                  sll          a2, s11, a3
                  lw           s6, 10(sp)
                  sb           a7, 13(sp)
                  lbu          s1, 1(sp)
                  sb           a1, 3(sp)
                  sb           sp, 7(sp)
                  auipc        s4, 610504
                  lw           s9, -14(sp)
                  lbu          a7, -11(sp)
                  lhu          t4, 2(sp)
                  lbu          t5, 4(sp)
                  srli         t6, s2, 17
                  sll          s9, a5, s3
                  lb           a0, 3(sp)
                  sh           a7, -12(sp)
                  sw           s1, -2(sp) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_1+496 #start riscv_load_store_hazard_instr_stream_2
                  sb           s0, 135(sp)
                  sb           zero, 135(sp)
                  lb           gp, -41(sp)
                  lbu          s9, -131(sp)
                  xori         a7, s4, 984
                  slti         s0, s0, -32
                  sb           t5, -131(sp)
                  auipc        t0, 726485
                  sh           t1, -66(sp)
                  lhu          a7, 44(sp)
                  lb           t4, 44(sp)
                  lhu          s1, 44(sp)
                  lw           a6, 44(sp)
                  slt          zero, ra, t3
                  sra          s2, a7, s1
                  lb           tp, 83(sp)
                  lb           t4, 73(sp)
                  srl          t1, s8, a1
                  sb           sp, 73(sp)
                  lbu          a4, -221(sp)
                  lbu          zero, 45(sp)
                  sb           s5, 45(sp) #end riscv_load_store_hazard_instr_stream_2
                  la           a0, region_0+163 #start riscv_load_store_rand_instr_stream_5
                  srli         sp, s1, 15
                  sltiu        s10, t5, -1766
                  lb           s11, -118(a0)
                  lbu          s10, -91(a0)
                  srl          s9, a3, s8
                  addi         t2, s11, -96
                  sb           s7, 126(a0)
                  slt          s6, s8, s2
                  sh           ra, 123(a0)
                  srai         s9, s9, 9
                  srli         a5, t5, 4
                  lbu          s1, -98(a0)
                  sh           s8, -81(a0)
                  lui          s6, 1044357
                  slli         a5, s8, 8
                  sh           s3, -17(a0)
                  sltiu        s10, a2, 512
                  lh           t0, 139(a0)
                  add          t2, t3, s7
                  slt          t0, a0, ra
                  lb           t0, 255(a0)
                  slt          t1, s9, s10
                  lb           t0, 33(a0)
                  lbu          a2, -28(a0)
                  sub          s5, gp, s9
                  slli         s3, s10, 18
                  lbu          s6, 84(a0)
                  sltu         t5, zero, a7
                  lb           s3, 139(a0)
                  sb           a7, -86(a0)
                  lh           t3, 163(a0)
                  lui          sp, 365812
                  add          s4, s2, s3
                  addi         s0, a1, 1564
                  slt          t5, sp, a7
                  sw           a4, -87(a0)
                  lbu          tp, 76(a0)
                  lbu          s3, -24(a0)
                  lb           zero, -132(a0)
                  lbu          s10, 156(a0)
                  sub          t0, a3, t6
                  sltiu        s1, t3, -965
                  lbu          ra, 139(a0)
                  lb           sp, 46(a0)
                  sll          a6, s11, a2
                  auipc        ra, 868918
                  addi         a7, gp, -163
                  lbu          s9, 103(a0)
                  lbu          s11, 229(a0) #end riscv_load_store_rand_instr_stream_5
                  la           t0, region_1+1666 #start load_store_instr_stream_3
                  la           t5, region_1+1803 #start load_store_instr_stream_1
                  lb           t2, 57(t0)
                  la           s9, region_1+752 #start load_store_instr_stream_4
                  lbu          s0, 779(s9)
                  la           tp, region_1+493 #start load_store_instr_stream_0
                  la           s5, region_1+875 #start load_store_instr_stream_2
                  lhu          zero, 506(s9)
                  lhu          t3, 7(tp)
                  lb           sp, 959(s9)
                  lbu          s11, 38(t0)
                  sh           s0, 141(t5)
                  sb           s9, -5(t0)
                  lhu          t3, -35(tp)
                  sh           a1, -24(t0)
                  lb           sp, 12(s5)
                  lhu          s8, -266(s9)
                  lbu          t3, -153(t5)
                  sh           ra, 984(s9)
                  lb           sp, 21(t0)
                  lbu          a4, 45(tp)
                  lb           s6, -38(t0)
                  lbu          t3, -4(s5)
                  sb           s10, -58(tp)
                  lbu          s10, 59(tp)
                  lb           s3, 272(s9)
                  sb           a5, -16(s5)
                  sb           zero, 3(t5)
                  sb           t6, -64(tp)
                  lhu          s1, 5(s5)
                  lb           ra, 628(s9)
                  lbu          ra, -3(tp)
                  lbu          s2, 46(t5)
                  lh           s8, 91(t5)
                  sb           sp, -64(tp)
                  lb           gp, -9(s5)
                  sw           s2, 2(t0)
                  sh           sp, 13(tp)
                  lbu          s4, 31(t0) #end load_store_instr_stream_3
                  lhu          s11, -9(s5)
                  sh           a0, 77(t5)
                  lb           a7, -377(s9) #end load_store_instr_stream_4
                  lbu          s2, 14(s5)
                  lb           a6, -16(s5) #end load_store_instr_stream_2
                  lh           sp, -49(t5) #end load_store_instr_stream_1
                  lb           t6, -15(tp) #end load_store_instr_stream_0
                  la           s0, region_0+1150 #start riscv_load_store_rand_instr_stream_3
                  lb           s11, -8(s0)
                  sll          a4, t6, s4
                  sb           ra, 9(s0)
                  nop
                  auipc        t0, 55479
                  addi         tp, ra, 223
                  xor          a2, a5, gp
                  or           t2, a3, t1
                  sh           a5, -14(s0)
                  xori         s4, t0, -920
                  slt          s6, sp, a7
                  srai         a7, t4, 15
                  lbu          tp, -1(s0)
                  srli         ra, zero, 8
                  sll          zero, a1, a0
                  sb           t2, -10(s0)
                  lh           a4, -8(s0)
                  lb           a5, -5(s0)
                  lb           s2, 7(s0)
                  sll          s6, s10, s2
                  lw           s6, 2(s0)
                  sb           t1, 12(s0)
                  sltu         ra, s10, t3
                  srai         a6, ra, 3
                  sb           ra, 5(s0)
                  nop
                  lb           t1, -1(s0)
                  lb           ra, -3(s0)
                  lw           s10, -14(s0)
                  lbu          s9, -12(s0)
                  sb           a4, 12(s0)
                  lb           t1, -15(s0)
                  sw           tp, 6(s0)
                  lui          s4, 979461
                  lh           a4, -2(s0)
                  slti         s4, t0, -1277
                  addi         t2, gp, -734
                  lh           s8, 8(s0)
                  lh           tp, 16(s0)
                  lb           a6, 5(s0)
                  sub          ra, s5, zero
                  sltu         s6, s6, t4
                  xor          t2, tp, sp
                  sb           t1, -9(s0)
                  sra          a4, sp, t5
                  sltu         a6, t5, s5
                  slti         zero, sp, 1038
                  sb           s3, 4(s0)
                  lbu          sp, 9(s0)
                  srai         s3, t1, 14
                  sub          t1, s8, a4
                  lb           zero, 9(s0)
                  sb           t1, -14(s0)
                  lb           s3, 15(s0)
                  auipc        gp, 744934
                  xor          s2, t1, a5
                  lbu          t3, -4(s0) #end riscv_load_store_rand_instr_stream_3
                  la           ra, region_1+1547 #start riscv_load_store_hazard_instr_stream_0
                  sb           a2, -1357(ra)
                  lh           t3, -1357(ra)
                  lw           t1, -47(ra)
                  lb           gp, -47(ra)
                  lw           a2, -47(ra)
                  lbu          s1, -725(ra)
                  lhu          a5, -725(ra)
                  sb           t2, -725(ra)
                  lbu          t4, -725(ra)
                  lh           t5, -709(ra)
                  lhu          s9, -709(ra)
                  lb           s9, -899(ra)
                  add          t0, s4, s4
                  sb           s5, -622(ra)
                  lbu          a5, -622(ra)
                  lbu          s3, -622(ra)
                  lw           s2, -967(ra)
                  slt          gp, s10, s10
                  sw           s4, -967(ra)
                  sb           s3, -967(ra) #end riscv_load_store_hazard_instr_stream_0
                  la           a7, region_0+575 #start riscv_load_store_rand_instr_stream_0
                  srli         s4, t2, 12
                  lui          s1, 673346
                  lhu          t2, 305(a7)
                  add          s3, s8, t2
                  add          a6, zero, s9
                  lui          t1, 381935
                  lbu          s2, 658(a7)
                  lbu          gp, 696(a7)
                  sub          sp, gp, t6
                  xori         s9, tp, 1575
                  lb           s1, -16(a7)
                  or           tp, s1, gp
                  slli         s3, gp, 10
                  sra          s10, ra, sp
                  lbu          s9, 932(a7)
                  srai         s4, tp, 17
                  sltu         s9, s1, s1
                  srai         s10, t0, 27
                  sll          zero, t4, s9
                  sub          s10, a4, t4
                  sltu         s10, t5, a3
                  auipc        zero, 1043729
                  slt          t1, ra, s1
                  lb           ra, 688(a7)
                  auipc        zero, 421397
                  sb           t0, -413(a7)
                  lhu          zero, 1053(a7)
                  lbu          tp, 524(a7)
                  xor          t4, t2, s0
                  add          s1, s0, ra
                  slli         s4, s9, 28
                  sltu         s10, tp, s3
                  lb           t1, 1098(a7) #end riscv_load_store_rand_instr_stream_0
                  la           t1, region_1+1479 #start riscv_load_store_rand_instr_stream_7
                  auipc        s9, 537977
                  slli         s0, a4, 30
                  sltu         s11, tp, s1
                  sltu         s10, s1, s7
                  lb           zero, 0(t1)
                  ori          s3, s0, -378
                  lbu          a6, 15(t1)
                  lbu          a6, -18(t1)
                  xori         s3, sp, -113
                  sub          s0, a5, s8
                  lb           s9, -62(t1)
                  lh           t6, 55(t1)
                  or           a4, sp, gp
                  sh           s1, 7(t1)
                  lb           s9, -10(t1)
                  srai         a5, a4, 29
                  slt          s1, s11, s10
                  srli         s9, sp, 22
                  sb           t5, -6(t1)
                  lbu          s6, -58(t1)
                  addi         s1, s8, -816
                  xor          s5, t4, a6
                  add          tp, s7, t5
                  sra          a7, s11, a1
                  slli         s9, gp, 29
                  lb           t4, -60(t1)
                  or           a4, t3, zero
                  lw           t6, -3(t1) #end riscv_load_store_rand_instr_stream_7
                  la           s9, region_1+875 #start load_store_instr_stream_1
                  la           s3, region_1+559 #start load_store_instr_stream_4
                  la           t4, region_1+1433 #start load_store_instr_stream_2
                  sb           t5, -4(t4)
                  la           a5, region_1+237 #start load_store_instr_stream_3
                  sh           s6, -15(t4)
                  lb           s5, -24(s3)
                  sh           ra, -13(a5)
                  lw           s10, 19(a5)
                  la           s8, region_1+1755 #start load_store_instr_stream_0
                  lb           s4, -1094(s8)
                  lb           t0, -1548(s8)
                  lhu          s2, -535(s8)
                  sh           t4, -33(s3)
                  lbu          sp, -47(t4)
                  lhu          a2, 21(t4)
                  sb           s11, 29(s3)
                  lb           gp, 54(s9)
                  lb           t1, 7(t4)
                  lbu          t3, 176(a5)
                  lbu          s11, 6(s9)
                  lh           t5, 7(s3)
                  lbu          gp, -14(s3)
                  lb           t3, -632(s8)
                  lbu          t1, -50(s9)
                  lb           s2, 61(s9)
                  lb           t6, 44(s9)
                  sb           t5, 24(s9)
                  lbu          t5, 17(s3)
                  lb           a0, 11(t4)
                  lb           s4, 175(s8)
                  lh           t5, 3(a5)
                  sb           t5, -6(s3)
                  sb           t4, 20(t4)
                  sb           s8, -60(s3)
                  lh           s0, -55(s9)
                  lb           a4, -17(t4)
                  lbu          s1, 63(s3) #end load_store_instr_stream_4
                  lb           s5, 36(s9)
                  sb           tp, 9(t4)
                  lh           sp, 189(a5)
                  lb           s5, 48(s9) #end load_store_instr_stream_1
                  lbu          a4, -27(t4) #end load_store_instr_stream_2
                  lbu          s1, -211(a5) #end load_store_instr_stream_3
                  sb           a0, -1389(s8)
                  lbu          t5, -904(s8) #end load_store_instr_stream_0
                  la           sp, region_1+1639 #start riscv_load_store_hazard_instr_stream_7
                  sw           tp, 5(sp)
                  sw           t6, 5(sp)
                  lbu          t3, -196(sp)
                  sltu         s9, a7, gp
                  sb           sp, -196(sp)
                  lb           tp, -196(sp)
                  lbu          s4, -196(sp)
                  lbu          t2, -196(sp)
                  srl          s2, s3, a7
                  andi         zero, s4, 1231
                  sll          s10, tp, s11
                  lb           t6, -196(sp)
                  lbu          s2, -196(sp)
                  lb           zero, -196(sp)
                  sb           s11, -196(sp)
                  lbu          a7, -214(sp)
                  lb           t4, -214(sp)
                  lb           zero, -214(sp)
                  lb           s0, 12(sp)
                  lb           s1, 12(sp)
                  andi         s3, ra, -1507
                  lbu          s9, -148(sp)
                  sb           s10, 152(sp)
                  sra          t5, s10, s3
                  lbu          s4, 152(sp) #end riscv_load_store_hazard_instr_stream_7
                  la           t4, region_1+1744 #start load_store_instr_stream_0
                  la           s4, region_1+1689 #start load_store_instr_stream_1
                  la           s9, region_1+695 #start load_store_instr_stream_2
                  sb           s11, -14(s4)
                  sh           sp, 170(t4)
                  sb           t6, -2(s4)
                  lbu          s1, 58(s9)
                  la           ra, region_1+1813 #start load_store_instr_stream_4
                  lbu          s1, 66(t4)
                  lb           s11, 42(s9)
                  sw           sp, -132(t4)
                  lbu          s3, 4(s9)
                  lbu          a4, -972(ra)
                  lb           t6, -512(ra)
                  la           s0, region_1+58 #start load_store_instr_stream_3
                  lbu          tp, -1176(ra)
                  lb           t1, 10(s4)
                  sb           a1, 249(s0)
                  lh           a5, 252(t4)
                  sb           t5, -1033(ra)
                  lh           s2, -1(s4)
                  lb           s2, 219(s0)
                  lbu          sp, -150(t4)
                  sb           a2, 10(t4)
                  sb           ra, -55(s0)
                  lb           t5, 11(s4) #end load_store_instr_stream_1
                  lbu          s5, -2(s0)
                  lb           s10, 76(t4)
                  lbu          a6, 115(s0)
                  lhu          s11, -33(s9)
                  sb           t3, -1522(ra)
                  sb           tp, 73(t4)
                  lw           t2, 122(s0)
                  sw           s5, 80(t4)
                  sb           s7, -1690(ra)
                  sb           s2, -38(s9)
                  lhu          a0, -3(s9) #end load_store_instr_stream_2
                  lhu          t1, -1025(ra) #end load_store_instr_stream_4
                  lb           a5, -47(s0) #end load_store_instr_stream_3
                  sb           s4, 205(t4) #end load_store_instr_stream_0
                  sll          a7, s8, s5
                  srai         t4, a7, 27
                  sltu         t2, tp, a6
                  auipc        sp, 130558
                  sll          t3, a0, a6
                  bltu         s8, t6, 25f
                  slt          t5, a5, zero
                  sll          a4, s4, ra
                  srai         s10, s7, 22
                  sra          a6, ra, s3
                  sll          t2, a2, s7
sub_1_j3:         jal          s9, sub_2 #jump sub_1 -> sub_2
                  auipc        a5, 1013896
                  slti         s1, t3, 1876
                  sub          t3, t0, t4
                  bltu         t3, gp, 29f
                  ori          t4, a7, 860
                  sll          sp, a6, s3
                  blt          s0, sp, 23f
                  auipc        s8, 61486
                  bge          gp, t4, 22f
                  srli         a7, a6, 19
                  slti         gp, s6, 1144
                  add          s3, a2, a5
                  beq          t4, s3, 20f
                  slt          s0, a5, a2
20:               bltu         gp, t3, 40f
                  xor          t2, s10, t0
22:               slti         s2, t3, 305
23:               slti         ra, s1, 1433
                  auipc        s11, 311136
25:               bge          s9, a4, 28f
                  slti         s4, a7, -1696
                  beq          s8, s0, 30f
28:               sll          t4, t3, a1
29:               srai         s11, s4, 17
30:               slli         t1, s1, 26
                  srl          s9, t3, tp
                  srli         a0, gp, 27
                  slli         t5, t0, 16
                  addi         t3, s6, -687
                  bltu         t2, s4, 42f
                  add          sp, t5, t6
                  beq          s10, t3, 57f
                  nop
                  sltiu        zero, a4, -1738
40:               xor          s8, s7, a4
                  bge          t0, s5, 50f
42:               sll          sp, s5, a4
                  slt          a5, t0, s0
                  bne          t4, t2, 49f
                  and          a5, s0, tp
                  srli         s5, t6, 21
                  slli         a5, a5, 29
                  addi         t0, a3, -1261
49:               bge          s6, ra, 69f
50:               xor          s8, t3, s9
                  bltu         ra, a3, 52f
52:               slti         t2, t6, 1630
                  slli         a5, tp, 2
                  bge          s7, tp, 73f
                  bge          s0, s1, 60f
                  xor          a7, s0, t2
57:               srl          s5, s9, t2
                  addi         tp, s1, 162
                  blt          ra, s1, 69f
60:               add          s2, s2, s1
                  sra          t1, a5, a3
                  xor          s11, s5, a4
                  slli         s2, s5, 21
                  srai         t0, s2, 1
                  sltiu        zero, t5, 480
                  blt          a3, s10, 80f
                  la           s5, region_1+1614 #start load_store_instr_stream_0
                  la           s2, region_1+1629 #start load_store_instr_stream_2
                  la           t2, region_1+750 #start load_store_instr_stream_3
                  la           tp, region_1+1397 #start load_store_instr_stream_1
                  lbu          s1, -1198(s2)
                  sh           s0, 32(t2)
                  sh           t1, -214(s5)
                  lbu          s3, -1558(s2)
                  lbu          t6, 268(s2)
                  sb           t3, -100(tp)
                  lbu          t5, -151(s5)
                  lb           ra, 7(t2)
                  lhu          a5, -623(s2)
                  lbu          t0, -77(tp)
                  lb           s3, 236(s5)
                  sw           zero, -90(s5)
                  sh           t6, 215(tp)
                  lhu          a4, 33(s2)
                  lb           t6, -1239(s2)
                  lb           s3, 121(tp)
                  lw           t5, -497(s2)
                  lhu          s9, 192(t2)
                  lhu          gp, -65(tp)
                  lbu          gp, -1094(s2)
                  lb           s6, -193(s5)
                  sb           s7, 123(t2)
                  lbu          a0, -87(s2) #end load_store_instr_stream_2
                  lb           a5, 23(t2)
                  lb           gp, -48(tp)
                  lb           t5, 49(t2)
                  lbu          s8, 96(tp) #end load_store_instr_stream_1
                  sb           s2, -83(t2) #end load_store_instr_stream_3
                  lbu          zero, 164(s5) #end load_store_instr_stream_0
                  nop
                  beq          a5, a4, 74f
69:               bgeu         s7, s10, 76f
                  sra          s8, s10, a4
                  slt          tp, s7, a7
                  bge          s4, a5, 81f
73:               srl          a2, sp, t6
74:               srai         a5, sp, 26
                  bltu         ra, s3, 78f
76:               slt          s1, s9, t5
                  bne          s10, t5, 88f
78:               sltu         s6, t6, s7
                  srli         gp, a1, 23
80:               ori          zero, s10, -57
81:               beq          s2, a7, 93f
                  sra          s8, a4, gp
                  ori          s9, t1, 372
                  add          a5, s6, gp
                  sra          s9, a0, gp
                  srai         tp, s0, 16
                  bltu         s11, s2, 92f
88:               srli         t4, t1, 10
                  slti         s2, a4, -294
                  slli         s6, ra, 28
                  srli         t1, s9, 27
92:               nop
93:               blt          sp, s6, 105f
                  sra          s9, s9, s1
                  xor          t1, a4, a5
                  add          a0, ra, tp
                  bge          s3, a6, 112f
                  sra          a2, s7, a4
                  slt          t6, t6, s3
                  addi         t1, s6, -764
                  sltiu        s5, a1, 80
                  addi         a0, t3, -2
                  bne          s10, a7, 105f
                  sub          t3, a3, a0
105:              sll          s10, a0, s9
                  sltiu        t5, t1, 1491
                  sub          s10, a5, t6
                  xor          a5, s4, a0
                  xor          t5, s9, a1
                  slti         zero, t5, -1936
                  slt          s8, s11, s5
112:              xori         sp, gp, -187
                  andi         t3, sp, 190
                  xori         s6, zero, 590
                  lui          s6, 666437
                  and          t5, tp, s6
                  sll          tp, tp, a5
                  sub          a7, t6, s4
                  blt          s5, s2, 121f
                  andi         a0, t5, -785
121:              bne          s2, a4, 138f
                  bgeu         s11, s6, 131f
                  sra          tp, a0, a1
                  bltu         s3, sp, 129f
                  xori         a6, a6, 887
                  slti         t1, a7, -1653
                  lui          s0, 38825
                  slt          t6, sp, s6
129:              xori         s9, a7, -837
                  or           a2, a1, tp
131:              slli         t0, s0, 1
                  slti         tp, s7, -239
                  sra          a2, a3, s6
                  slli         a7, a0, 9
                  bne          zero, a2, 155f
                  lui          s11, 705987
                  bge          a5, t6, 148f
138:              slli         a0, a0, 23
                  and          s4, sp, s9
                  or           s8, t6, s1
                  sltiu        a7, a2, 1513
                  sltu         s1, s0, t4
                  xor          s1, s6, s8
                  sra          s6, t3, s11
                  auipc        a4, 489573
                  add          s10, sp, a1
                  addi         s8, s3, 357
148:              lui          sp, 226811
                  sltu         zero, t6, s9
                  bge          t2, s11, 165f
                  bge          gp, s3, 165f
                  beq          s4, t5, 164f
                  or           gp, zero, t4
                  slli         s11, t4, 19
155:              beq          s2, s1, 160f
                  ori          t5, a2, 1825
                  xor          s10, s11, a1
                  add          t4, a4, a3
                  bltu         a5, a5, 162f
160:              andi         s10, a2, -460
                  slli         a0, zero, 28
162:              sll          s9, s9, s4
                  slti         s3, a0, -1035
164:              sll          sp, zero, a0
165:              blt          s8, a3, 167f
                  or           a2, s5, tp
167:              andi         s2, t1, -1469
                  srli         ra, a0, 5
                  srl          s0, a6, tp
                  bne          s10, t5, 178f
                  andi         s6, gp, 1068
                  nop
                  sltiu        s9, a3, 948
                  srli         a2, a7, 25
                  srai         t1, t3, 3
                  beq          tp, t3, 187f
                  srli         t4, t2, 26
178:              srli         s2, a2, 10
                  slt          t5, s0, a0
                  sub          a5, a7, t4
                  and          s0, s11, s1
                  sub          s8, s0, a2
                  addi         s10, ra, -509
                  lui          s5, 804132
                  xori         sp, a5, -1523
                  srli         a4, s11, 28
187:              srai         t5, a2, 18
                  srl          t3, a7, a3
                  srai         t1, s3, 7
                  slli         a0, s8, 30
                  andi         a0, a6, -943
                  sltiu        t4, t3, -1158
                  ori          s4, t4, -2029
                  beq          s1, t3, 204f
                  sltu         s8, t4, t5
                  beq          s4, a3, 197f
197:              bge          a1, t1, 214f
                  nop
                  sub          ra, a6, a0
                  srai         s8, gp, 28
                  bgeu         t1, t4, 207f
                  auipc        tp, 688739
                  auipc        a5, 233388
204:              bgeu         s5, s4, 211f
                  sub          a7, s10, s11
                  xori         s10, s9, -563
207:              bne          s10, s1, 209f
                  sub          sp, a4, t5
209:              sub          s4, a1, t6
                  sub          a5, s0, a6
                  la           s0, region_0+1017 #start load_store_instr_stream_2
                  sb           zero, 6(s0)
                  la           t0, region_0+1015 #start load_store_instr_stream_3
                  la           ra, region_0+1048 #start load_store_instr_stream_1
                  lb           t3, 12(s0)
                  lhu          s5, -5(t0)
                  la           t1, region_0+995 #start load_store_instr_stream_0
                  lbu          t4, -7(t0)
                  lbu          s4, -14(t0)
                  lbu          s1, 495(t1)
                  lb           zero, -12(s0)
                  lb           s4, 32(t1)
                  sw           s6, -196(ra)
                  lh           s8, -7(s0)
                  sb           s5, -6(s0)
                  lbu          s3, -109(ra)
                  lh           a0, 15(t0)
                  sb           s8, 364(t1)
                  lhu          a2, -15(t0)
                  lbu          t5, 137(ra)
                  lbu          gp, 710(t1)
                  sb           s6, -13(t0)
                  sh           s1, -170(ra)
                  lhu          a5, 7(t0)
                  sb           t6, 928(t1)
                  lbu          t6, -4(s0)
                  lbu          tp, -2(t1)
                  lb           s5, -100(ra)
                  lhu          sp, 50(ra)
                  lb           a0, -153(t1)
                  sb           ra, -95(ra)
                  lbu          s1, -12(t0)
                  sh           t2, -137(t1)
                  lb           s8, -232(ra)
                  lb           gp, 0(s0) #end load_store_instr_stream_2
                  sb           s1, 14(t0) #end load_store_instr_stream_3
                  lbu          s9, 91(ra)
                  lbu          s4, 91(ra) #end load_store_instr_stream_1
                  lbu          s2, 180(t1) #end load_store_instr_stream_0
211:              xor          a2, s8, s1
                  bltu         s1, a4, 215f
                  blt          s9, s10, 220f
214:              andi         s8, a2, 472
215:              auipc        s4, 501305
                  srl          s9, t5, a0
                  sltiu        a0, gp, -750
                  bgeu         a5, a3, 237f
                  srli         s6, s11, 25
220:              sra          s6, gp, s5
                  bge          s5, t0, 224f
                  andi         s11, a1, 12
                  sltiu        t5, a7, -1180
224:              sll          s3, a1, a2
                  srli         s8, tp, 1
                  slt          s0, t0, s5
                  srli         sp, a0, 28
                  slli         s2, s4, 12
                  sub          s2, a4, a6
                  and          t3, s9, t5
                  sub          s3, s0, a2
                  srli         s6, t4, 22
                  bltu         a7, a6, 238f
                  bge          sp, s1, 246f
                  bne          a4, s5, 237f
                  and          a5, t0, s7
237:              bgeu         s8, s5, 257f
238:              bne          s8, t3, 258f
                  xori         t1, a1, 1041
                  add          gp, ra, ra
                  ori          s4, a5, -892
                  sub          s1, t5, t6
                  srli         t2, a6, 21
                  beq          tp, s10, 264f
                  sltiu        s0, s3, -1704
246:              blt          t0, s0, 255f
                  beq          s2, s11, 267f
                  srai         s2, gp, 17
                  andi         gp, s10, -929
                  bgeu         t5, a5, 253f
                  sub          s8, zero, sp
                  beq          s1, s4, 261f
253:              sub          s10, a4, s1
                  beq          a6, t2, 255f
255:              beq          s3, t5, 275f
                  beq          s10, a4, 276f
257:              srai         s10, a2, 30
258:              sltu         t6, a7, sp
                  sltiu        s10, a5, 1528
                  bne          s5, s8, 280f
261:              srai         s8, s2, 8
                  slli         sp, a4, 23
                  blt          a6, t1, 270f
264:              xor          s6, a2, s5
                  bltu         a3, t6, 277f
                  auipc        s4, 798236
267:              blt          s5, s10, 281f
                  sltu         sp, s4, a7
                  bge          s8, a7, 281f
270:              addi         s6, a1, -802
                  slli         a0, a4, 13
                  slti         tp, gp, 1000
                  bgeu         a5, s8, 275f
                  srli         s5, s6, 25
275:              nop
276:              srai         a4, t6, 18
277:              auipc        s2, 954726
                  sltiu        s0, s9, 1045
                  srl          t5, s8, s8
                  slli         t6, s9, 8
                  srli         a0, s6, 1
                  andi         s1, s7, -978
                  nop
                  slti         s1, a6, 493
                  srl          s6, t4, s10
sub_1_j2:         jal          s9, sub_2 #jump sub_1 -> sub_2
                  nop
                  sltu         t0, s8, a6
280:              sra          s4, a1, s5
281:              auipc        t5, 600611
                  ori          a2, s7, -1791
                  blt          t0, t6, 286f
                  andi         gp, gp, 1964
                  srai         a6, s6, 3
286:              ori          a7, t1, -1761
                  bltu         gp, s8, 289f
                  sll          sp, t4, s11
289:              slli         a0, a0, 11
                  ori          gp, s5, -589
                  xori         gp, sp, -296
                  or           ra, a3, s1
                  or           t0, s5, a0
                  srl          t6, a1, ra
                  srl          t3, a1, t3
                  bne          s6, a2, 316f
                  xor          a6, a7, s10
                  slli         a7, gp, 30
                  srai         s9, s7, 15
                  sll          ra, t2, s1
                  ori          ra, s4, -105
                  and          s8, s11, a7
                  slli         t0, zero, 24
                  srai         s8, s11, 16
                  sltu         s5, a5, s3
                  slti         s10, a4, 1004
                  and          t4, gp, tp
                  and          s8, t3, t2
                  or           a6, s9, a7
                  slti         t4, t0, 1735
                  bge          ra, s3, 328f
                  slli         a4, sp, 1
                  sltiu        s1, a5, -1010
                  addi         t3, zero, 65
                  add          tp, s7, a4
316:              srl          t5, a1, tp
                  bltu         gp, sp, 332f
                  and          a5, t3, zero
                  sltu         s2, a5, s9
                  bge          t4, t1, 325f
                  bltu         s6, s8, 328f
                  sub          a4, a7, a7
                  bne          t5, t6, 343f
                  sltu         t1, a3, t2
325:              sra          a2, s7, s9
                  slli         a6, t4, 0
                  srli         s5, s10, 6
328:              sub          s4, s9, tp
                  andi         sp, a4, 282
                  or           s0, a0, ra
                  sltiu        tp, t0, 1345
332:              bltu         s2, t3, 341f
                  xor          a5, s8, a3
                  bne          a2, s9, 337f
                  srai         a7, a0, 12
                  xori         s3, s3, 1345
337:              sltu         s8, s0, sp
                  blt          a3, a7, 349f
                  bne          t5, s10, 349f
                  beq          t0, zero, 342f
341:              nop
342:              srl          sp, ra, s0
343:              add          s2, a2, s7
                  slli         t2, t4, 2
                  srai         a7, a0, 27
                  add          s10, t5, a4
                  sra          s9, s0, a7
                  slti         a5, t1, -1738
349:              slli         s10, a1, 5
                  auipc        zero, 758829
                  or           t3, s3, s7
                  slt          s4, a4, s9
                  auipc        s2, 861807
                  sll          s11, a5, s0
                  srai         s1, t2, 24
                  blt          s8, a5, 362f
                  xori         s10, s8, -1034
                  bne          a1, t2, 363f
                  sra          t4, zero, t1
                  nop
                  blt          t6, s3, 369f
362:              slt          zero, s2, a6
363:              xor          t4, t5, s11
                  sub          ra, tp, tp
                  add          t6, t0, s11
                  addi         s11, s4, -333
                  auipc        s1, 244784
                  ori          s5, a1, -296
369:              slti         t3, a6, -232
                  bgeu         s4, s5, 381f
                  and          zero, s0, t0
                  sll          s6, sp, s1
                  bgeu         t6, sp, 378f
                  add          s6, a1, s8
                  ori          a5, t1, 1933
                  nop
                  slti         a4, s0, 1936
378:              sltiu        s1, s10, -1056
                  add          t2, t2, sp
                  srl          t1, s7, tp
381:              xor          a5, a0, zero
                  blt          s6, t6, 401f
                  slti         t3, a3, 389
                  sltu         a4, s3, s4
                  xor          s5, a7, t3
                  srai         t3, gp, 31
                  slt          s4, a6, s3
                  sltiu        a6, t4, -517
                  addi         a4, s3, 946
                  xori         s3, s3, -295
                  add          tp, t0, a2
                  sltu         s6, s10, s8
                  bltu         s5, s8, 413f
                  lui          t3, 494812
                  xor          sp, a3, s5
                  or           t2, t0, a3
                  slti         sp, sp, -50
                  bge          a6, s8, 418f
                  sll          tp, s6, t5
                  xor          zero, t4, zero
401:              srl          sp, ra, s1
                  slli         a4, zero, 7
                  slt          a7, s2, s5
                  or           s0, s1, s1
                  bgeu         sp, sp, 420f
                  sltiu        t1, s11, -251
                  add          sp, a0, tp
                  auipc        zero, 1010141
                  lui          gp, 361704
                  bgeu         s7, s8, 417f
                  srai         s4, t3, 16
                  xor          t1, ra, a7
413:              xori         t5, s5, -420
                  slli         s8, zero, 25
                  sra          ra, a5, t6
                  srl          a5, s6, t2
417:              add          s9, s11, t2
418:              sltu         s4, gp, a7
                  bgeu         a7, tp, 438f
420:              lui          a0, 688770
                  lui          a5, 244991
                  bne          a5, gp, 425f
                  beq          tp, t0, 435f
                  slti         a4, s2, 1000
425:              bne          s2, s10, 427f
                  add          t4, t0, t5
427:              add          a5, a7, a2
                  auipc        t5, 552345
                  xori         t0, s4, -1145
                  bgeu         s5, sp, 438f
                  ori          a7, t2, -2027
                  slt          s3, t3, s11
                  blt          s2, zero, 436f
                  sltiu        a5, t4, -1806
435:              and          s6, a7, a3
436:              andi         ra, a6, -39
                  slti         a6, a0, -1225
438:              xori         s10, a3, 163
                  slt          tp, s11, s10
                  andi         s6, sp, -1188
                  nop
                  srli         s3, t2, 22
                  sltu         a6, t2, t6
                  srli         s6, s10, 23
                  sra          s5, s7, a7
                  slti         s10, a5, -1945
                  sub          t1, zero, a2
                  lui          s11, 733904
                  slli         a5, gp, 10
                  slt          s1, t6, t3
                  lui          ra, 584990
                  andi         a0, a2, -1322
                  nop
                  ori          s6, t4, -430
                  bge          tp, t4, 457f
                  bne          a7, gp, 457f
457:              xor          a7, sp, a3
                  slt          s0, zero, s8
                  sub          t4, a4, s7
                  srl          t4, s8, a6
                  xor          a4, gp, s4
                  sll          a5, s9, sp
                  sltiu        s4, t2, 668
                  sub          s0, zero, a3
                  sll          a7, a0, t1
                  sltu         s6, t0, t4
                  lui          t3, 482270
                  xor          s1, a6, tp
                  slti         gp, s10, 181
                  sltu         t3, s0, a3
                  srai         zero, t0, 4
                  bltu         a3, a0, 482f
                  srai         t3, ra, 13
                  xori         s3, zero, 667
                  slt          a4, sp, s11
                  srli         t0, s4, 23
                  bltu         a5, s1, 497f
                  sra          t3, ra, t2
                  bgeu         ra, s8, 490f
                  bltu         s10, zero, 491f
                  add          t4, s1, s0
482:              sra          s0, a2, s9
                  addi         tp, s10, -1816
                  beq          t6, s7, 489f
                  sra          zero, t1, a3
                  andi         s1, a6, 522
                  slti         a0, sp, 277
                  srli         a0, sp, 14
489:              bne          s2, zero, 509f
490:              sra          tp, a7, s7
491:              and          tp, t5, a0
                  add          tp, a7, s8
                  nop
                  or           s0, s11, s10
                  srai         a5, s4, 1
                  sll          s1, s3, t0
497:              slli         sp, a1, 26
                  srl          t4, t0, s9
                  nop
                  sltu         a5, a0, zero
                  bltu         a2, s2, 507f
                  nop
                  sub          a6, a6, s11
                  auipc        s1, 293231
                  bgeu         s8, a7, 507f
                  blt          s2, t0, 515f
507:              bge          s2, s4, 524f
                  sltu         sp, t1, a6
509:              nop
                  sltiu        gp, a1, 612
                  bge          a3, gp, 531f
                  and          ra, tp, a7
                  beq          a1, a7, 518f
                  bge          s0, t5, 521f
515:              auipc        s4, 248075
                  srai         a4, s6, 24
                  srai         t3, sp, 3
518:              andi         a7, a3, 1554
                  bgeu         s11, a5, 522f
                  sltu         s1, s10, t0
521:              sll          t5, t6, t5
522:              bne          a1, t3, 531f
                  sll          t3, s1, s5
524:              lui          s9, 835603
                  sltu         s9, zero, a1
                  bne          s1, a3, 531f
                  sltu         s2, s6, s7
                  beq          s2, t2, 540f
                  slli         s5, s6, 12
                  bge          t5, t3, 544f
531:              bltu         t5, a4, 538f
                  sltu         t2, a0, a6
                  slli         t3, s5, 6
                  sll          gp, sp, zero
                  lui          t2, 103217
                  sltu         s5, t6, s3
                  or           zero, gp, a7
538:              srai         a7, s8, 8
                  sltu         gp, a1, a1
540:              xor          s3, s5, t4
                  blt          s4, s1, 561f
                  beq          sp, s0, 553f
                  andi         s1, s1, -157
544:              bltu         gp, t2, 550f
                  sra          a4, s10, a2
                  xor          s10, a1, a0
                  bltu         s0, t1, 552f
                  blt          ra, a0, 567f
                  add          t5, s4, a2
550:              slti         t4, a2, 1426
                  auipc        t4, 549610
552:              sra          gp, a0, t4
553:              lui          sp, 495942
                  sltu         t2, s11, s0
                  bge          a0, a6, 567f
                  sll          s0, s10, t6
                  sra          s5, s8, s1
                  xori         t4, ra, -187
                  sltiu        t2, s6, 670
                  beq          t3, s11, 561f
561:              sll          a6, a6, s3
                  andi         a0, a4, 829
                  srli         t1, a2, 6
                  sll          s2, zero, t0
                  xori         a7, t6, -1906
                  slti         s6, t2, -444
567:              xor          t3, a6, t2
                  and          a7, a0, s0
                  bltu         a3, s7, 578f
                  auipc        s9, 362563
                  slli         s9, a4, 5
                  beq          a2, a4, 589f
                  andi         s1, s6, -453
                  and          t5, t6, s9
                  srli         tp, t0, 24
                  sltu         s9, s2, t4
                  srl          ra, a2, tp
578:              xor          a5, t2, a0
                  blt          t6, s10, 582f
                  and          s4, t0, s0
                  sra          t5, s7, t5
582:              addi         s4, t6, -306
                  xori         t6, ra, -551
                  auipc        tp, 336110
                  slti         s8, s1, -815
                  andi         s6, s7, 1766
                  srl          s1, t0, s10
                  srai         s6, t2, 4
589:              add          t1, t0, s9
                  andi         s6, s6, 1912
                  auipc        s8, 732986
                  slli         zero, a3, 17
                  sll          ra, t6, a2
                  and          s1, t6, s7
                  xor          a5, ra, s2
                  beq          sp, t0, 605f
                  or           s8, tp, tp
                  beq          a3, a4, 605f
                  andi         a4, t2, -194
                  beq          tp, t4, 614f
                  sltu         tp, s5, t2
                  bltu         a6, t4, 604f
                  srai         t6, a3, 2
604:              lui          a2, 566648
605:              bgeu         s11, s6, 608f
                  bge          s7, a4, 616f
                  slt          t4, s5, t2
608:              bltu         s8, t1, 620f
                  andi         t3, a2, 1755
                  auipc        a2, 308336
                  bge          s5, t0, 619f
                  bgeu         s3, gp, 632f
                  bgeu         tp, a6, 618f
614:              slti         a2, a6, -442
                  bltu         s0, a6, 635f
616:              beq          s8, a5, 636f
                  ori          s8, t6, -530
618:              xori         s5, t6, -1220
619:              slti         s3, sp, 1743
620:              blt          ra, tp, 635f
                  blt          s1, s0, 624f
                  bgeu         ra, t4, 642f
                  add          a0, s0, s11
624:              bgeu         a3, t6, 626f
                  sll          s0, t3, a1
626:              andi         a7, s0, -571
                  blt          a0, s1, 632f
                  xor          sp, t2, s8
                  bne          zero, s8, 640f
                  blt          s0, a3, 632f
                  srli         t4, s4, 24
632:              sra          s2, a5, a0
                  and          s2, a3, a1
                  bgeu         t1, s11, 644f
635:              addi         gp, s0, -2025
636:              slt          s5, s1, s2
                  beq          s7, s1, 639f
                  or           s5, t0, t4
639:              nop
640:              slti         t3, t3, -2030
                  srli         gp, a1, 29
642:              beq          a6, a6, 653f
                  xor          a7, s0, s9
644:              sltu         s8, a4, s8
                  srli         t4, t0, 2
                  srl          s1, s11, s8
                  slt          a4, t6, t2
                  sll          t1, s1, sp
                  bgeu         s9, ra, 658f
                  bgeu         t1, zero, 665f
                  bltu         s9, t1, 653f
                  add          t6, s5, s8
653:              or           a7, s2, s8
                  and          s3, sp, s1
                  bge          zero, ra, 675f
                  srli         a7, s4, 27
                  slti         s8, s11, -1723
658:              auipc        s3, 828164
                  lui          t6, 1013565
                  sub          s11, s7, t2
                  or           a2, s5, a2
                  sll          t5, s7, tp
                  srai         s11, a5, 0
                  and          t4, a6, t0
665:              lui          a6, 695125
                  add          t4, s1, s11
                  bne          s2, s11, 681f
                  sll          s6, s6, a6
                  slli         s6, tp, 1
                  ori          t2, t0, 1926
                  slli         a5, a5, 4
                  srli         gp, s2, 31
                  bltu         a5, s2, 678f
                  bgeu         t6, gp, 683f
675:              auipc        s1, 608335
                  sltu         a7, t4, s5
                  xor          s2, t5, t2
678:              addi         a7, s11, 1201
                  srl          s10, t2, tp
                  and          zero, s1, s2
681:              and          ra, s1, sp
                  slli         s9, s6, 20
683:              nop
                  or           gp, s1, s7
                  xor          s8, t5, s5
                  and          t6, a1, tp
                  beq          zero, t3, 689f
                  slti         a0, t1, 1813
689:              or           s9, a6, s0
                  srli         s10, a7, 6
                  andi         a5, t4, 799
                  bgeu         t4, t1, 700f
                  auipc        sp, 56790
                  or           gp, s4, a2
                  blt          t1, t3, 715f
                  sll          t0, s5, a4
                  srli         s11, a4, 25
                  sltiu        t4, a0, -141
                  srli         s1, s2, 13
700:              sltiu        s11, a0, 1914
                  addi         t1, a2, 1453
                  slt          s6, s9, s3
                  ori          s5, gp, -1011
                  addi         t1, s9, 932
                  beq          gp, a4, 717f
                  srli         s2, a6, 13
                  bge          t6, t0, 727f
                  blt          s6, s2, 715f
                  xor          a4, t2, gp
                  bltu         a0, a6, 722f
                  slti         t5, ra, 91
                  beq          s8, zero, 715f
                  sltu         t5, zero, tp
                  slli         a2, t4, 14
715:              sra          s5, a5, t4
                  sll          t6, a7, t3
717:              auipc        s0, 379193
                  ori          t6, a2, 1907
                  sltiu        s10, s7, -1717
                  beq          s1, s6, 739f
                  bne          s3, a3, 741f
722:              bne          s3, t1, 739f
                  bltu         gp, s9, 726f
                  beq          s0, s6, 725f
725:              and          a4, a4, t5
726:              sltiu        a0, t5, 906
727:              and          s8, s10, zero
                  auipc        s2, 559137
                  addi         gp, t6, 592
                  sra          t3, a3, a2
                  xori         s8, s9, -683
                  sll          a4, s11, a2
                  beq          s7, s5, 740f
                  andi         a7, s9, -80
                  srli         gp, s4, 20
                  sll          a4, s11, a7
                  sltiu        s9, s5, 15
                  srl          s5, gp, t3
739:              or           t2, s11, a6
740:              and          gp, a0, a5
741:              srli         a4, s6, 19
                  sltiu        ra, a4, -1325
                  bltu         a7, s11, 746f
                  addi         t5, t1, -1435
                  lui          s0, 242076
746:              slti         t2, zero, 1387
                  srl          s9, s4, a3
                  addi         a0, s4, 1049
                  slti         s3, s10, -1807
                  srai         t2, t0, 11
                  sub          s0, s6, a5
                  bge          ra, t3, 758f
                  lui          s2, 697854
                  beq          t2, s0, 765f
                  sltu         t5, s1, s5
                  srl          zero, t3, tp
                  srli         s6, a1, 22
758:              srai         t6, s0, 12
                  slti         s2, s4, -1233
                  bgeu         a1, a6, 780f
                  bne          a5, t5, 766f
                  blt          s3, t5, 767f
                  slli         a2, s2, 13
                  addi         a5, a1, -274
765:              bltu         t2, s11, 777f
766:              slli         t6, s5, 20
767:              beq          s6, t3, 787f
                  and          s1, zero, t3
                  sltiu        s0, t3, 881
                  sltiu        a6, s10, -743
                  srl          tp, s11, s2
                  sra          a6, gp, s11
                  bne          a3, s10, 787f
                  sltu         s1, s10, s3
                  or           zero, zero, a5
                  add          s11, t0, s7
777:              add          t6, s7, t1
                  ori          t5, s2, 784
                  beq          zero, s11, 788f
780:              andi         gp, s3, -1569
                  or           s11, t6, s8
                  sll          zero, t6, s0
                  sll          t5, t3, s0
                  and          a4, s3, s2
                  addi         s2, s1, 909
                  srli         s9, t3, 14
787:              xori         a2, s0, 1057
788:              xor          t5, t4, s0
                  sltu         t3, s2, a7
                  xori         t3, sp, -1256
                  sll          t1, s0, t5
                  srli         a5, ra, 0
                  sltiu        s0, a2, -1059
                  sltiu        s3, t1, 1173
                  andi         s4, s5, 327
                  andi         gp, a0, 495
                  slti         t1, s0, -631
                  add          s6, s2, a3
                  srli         s1, tp, 31
                  slli         a6, s10, 28
                  xor          t5, t5, t5
                  xori         t6, zero, -139
                  sll          a4, ra, t0
                  bge          ra, zero, 806f
                  auipc        tp, 218494
806:              slt          gp, s9, s5
                  sltu         t2, s1, s10
                  sll          t6, s0, a5
                  srli         a6, sp, 25
                  sra          sp, a6, s9
                  bge          s11, t4, 823f
                  bne          s8, a7, 815f
                  bltu         s11, s0, 823f
                  xor          s0, s4, s1
                  la           s9, region_0+226 #start load_store_instr_stream_1
                  lb           t1, 2(s9)
                  la           s11, region_0+1696 #start load_store_instr_stream_0
                  lb           t2, 4(s9)
                  lbu          ra, -63(s11)
                  sh           a7, 12(s9)
                  sb           t0, -35(s11)
                  lbu          s4, 64(s11)
                  lb           ra, 7(s9)
                  lbu          a5, -42(s11)
                  lbu          a0, -3(s9)
                  lbu          a6, 37(s11)
                  sw           t0, -14(s9)
                  lbu          s6, 23(s11)
                  sb           t2, 31(s11)
                  sb           a1, 12(s9) #end load_store_instr_stream_1
                  sb           s6, 2(s11) #end load_store_instr_stream_0
815:              slli         gp, s9, 14
                  bne          s11, s5, 818f
                  beq          t5, s8, 823f
818:              slti         s0, t4, 815
                  nop
                  srl          s9, a2, a6
                  lui          s0, 224158
                  add          a7, s2, t0
823:              or           s2, s9, s3
                  slli         a4, a3, 20
                  srl          t3, tp, a3
                  slt          s5, s4, s1
                  add          t6, s6, s8
                  addi         s8, ra, -1793
                  srl          t1, s9, t3
                  ori          s11, s11, 1152
                  lui          zero, 71886
                  lw           s9, 4(s7)
                  auipc        s10, 504365
                  addi         s7, s7, 32
                  or           s1, a0, s3
1622:             addi x4, x25, 0
1622:             jalr x4, x4, 0
sub_2:            bne          s3, s6, sub_2_stack_p
                  slt          s3, tp, tp
                  ori          a0, a0, 813
sub_2_stack_p:    addi         s7, s7, -64
                  slti         a2, tp, 1574
                  add          sp, a4, s3
                  or           s0, s0, s7
                  lui          t5, 1023039
                  xori         t1, s5, -619
                  add          t4, sp, a7
                  sw           s9, 4(s7)
                  xori         s3, a6, 1330
                  slli         a2, s10, 3
                  slli         a7, ra, 9
                  blt          s0, s3, 14f
                  bgeu         s10, s11, 21f
                  slti         s5, s10, 1684
                  and          a0, ra, sp
                  or           s3, t4, s1
                  bltu         s10, tp, 11f
                  blt          t3, a6, 24f
                  addi         t1, s1, -1618
                  auipc        s4, 865476
                  and          a5, t5, t3
11:               bge          t6, a0, 28f
                  and          s3, s1, s6
                  andi         s5, t6, -1290
14:               bltu         s9, a1, 25f
                  srli         a5, s8, 0
                  or           t6, s0, tp
                  sll          t2, t2, t0
                  lui          s1, 756404
                  ori          s0, s5, 286
                  bgeu         zero, zero, 30f
21:               srai         tp, s5, 28
                  bltu         s0, gp, 26f
                  or           gp, a3, a1
24:               sltu         s6, gp, t4
25:               slt          s3, s1, s11
26:               addi         gp, a3, -856
                  sra          zero, t5, sp
28:               srl          a4, s8, t1
                  slt          a5, a0, a6
30:               xori         t6, t5, -1392
                  andi         sp, t6, 1339
                  xor          gp, s1, s3
                  xori         s5, a3, 836
                  srl          a6, ra, t1
                  add          s10, sp, t4
                  slli         gp, t6, 14
                  srli         s0, s6, 10
                  add          a2, a0, t0
                  srl          t2, tp, t5
                  sltiu        s11, t2, 635
                  lw           s9, 4(s7)
                  addi         s7, s7, 64
                  addi         a5, t2, 1917
                  add          s10, t6, t4
58:               addi x4, x25, 1
58:               jalr x4, x4, 0
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
.word 0x44c2ceb8, 0x1684627c, 0xcd85a870, 0x8190d47b, 0xb8f5bcf5, 0x81a1bb95, 0xf01b3b15, 0x0227ec12
.word 0x2170204d, 0x80555479, 0xb0e5e5a2, 0xd1f18b11, 0xfbc4b42e, 0x399c9103, 0x2eb88848, 0x9b843e3a
.word 0x05229959, 0x56684c8e, 0xb91b85e3, 0x19f1892a, 0x6edbfb49, 0x924236c6, 0x62a08e94, 0xfb1f5e47
.word 0xc8ed4034, 0x7954fb11, 0xfd6f11c0, 0x6ddeeb79, 0xca677ad6, 0x96230f2e, 0xa3ded707, 0x404dc553
.word 0xacd8221e, 0x8c9f7dc3, 0x6add8987, 0x3ebd1c73, 0xf19f5fb1, 0x41eaf7ca, 0x43b529ff, 0xe51c13f6
.word 0x563685cd, 0xc90c8334, 0x23ae4495, 0x30a91e2e, 0xa9b3bdfd, 0xcaaf4d49, 0x404b6fc6, 0x9fa5235d
.word 0x8c0a2c7f, 0xb62c155a, 0x3f97ff91, 0x04245833, 0xe64af85d, 0x62a849d7, 0x7f18236d, 0xd89bae60
.word 0x3d996633, 0x60172e45, 0x11cc08be, 0x929b6b2c, 0xbe1407db, 0x0f1925ad, 0xcb1d4751, 0x100ae208
.word 0x9ce17b87, 0x55ffce03, 0x2338cb81, 0x8d085857, 0x82ad322d, 0xb10d0ee0, 0x6a05a8c6, 0xcb2119d5
.word 0x32e60bb9, 0xd3cc4dba, 0x07b0aeb5, 0x1c037ddf, 0xfcabf49e, 0x659c9b7e, 0x8304ae10, 0x93bdcc39
.word 0x82866b29, 0xf0c66182, 0xbc01382e, 0x4f30f1b7, 0x2e884e0b, 0x9bca2eaa, 0xe1264da0, 0x52eea01b
.word 0x9dd3cbc5, 0x50e7d6aa, 0x286f70b1, 0x93edf091, 0xe59cf8be, 0x08299ab2, 0xde6f230f, 0x6ebc33c0
.word 0x33ee2892, 0x49a9ce94, 0xe3002759, 0x4bfcb621, 0x59f4b0bd, 0x1d6e04bd, 0x76b56fcd, 0xc6c4f95a
.word 0x02e600a1, 0xa47fda70, 0x71f973f7, 0x9b638c3f, 0x2f818e02, 0x91f1fe6a, 0xd3d1568f, 0x35b5f48f
.word 0xf6d5acea, 0x297525ba, 0x0ba2eaa5, 0x3bd2af5d, 0xbf8c7a74, 0xa8009333, 0x2163e7a2, 0xfcb58128
.word 0xd57f189a, 0x69e5a2be, 0x265d134b, 0xb411a648, 0x6c2e86b4, 0xf2e91f2b, 0x0d56ee8d, 0x055787cb
.word 0x046043e1, 0xcf10edf0, 0xad07de65, 0xd3a624c6, 0x5853805c, 0xc0e9dec8, 0x418a0b49, 0xf2f71f5d
.word 0xb85a1620, 0x242eae1f, 0xddd7f43d, 0x0d77ba82, 0x1619b4d4, 0x6c8a139e, 0x96adf461, 0x3ede72f1
.word 0xafc7e78e, 0x8ed61439, 0x92a86af6, 0xdf36f1a4, 0xbce4af9a, 0x7aa838a1, 0x993f1089, 0x63c52450
.word 0x570dcbb4, 0x9fbc26bd, 0x0f5f39d2, 0x71cd9229, 0x0765780d, 0xf70f05ef, 0xc4e19bb4, 0x349e5a4f
.word 0x9d33ca80, 0x3e2e2080, 0xcc9028d5, 0x675a7b55, 0x4fabad76, 0x9209195f, 0xeab83e6d, 0x2f2787c0
.word 0xeb2be31e, 0xdd235691, 0x51f0f03a, 0x375bd3d6, 0xed08abe1, 0x4412f628, 0xc6310821, 0xfc4049be
.word 0x8331f90e, 0x867d5dbc, 0xc409f17d, 0x3420150b, 0x8cedf33e, 0x830b12ef, 0x139e48b6, 0xc956f267
.word 0xf74b0284, 0x5848df81, 0xe179ec75, 0xc7671d04, 0x04a19b78, 0xc6b3b5e6, 0x0bf52079, 0xa86a8dcb
.word 0x50e8a996, 0x6f95d4ef, 0xe22c6b8e, 0xeac28b9e, 0x10b69beb, 0xa1cd1671, 0x68abb246, 0xc0e48d43
.word 0x3220cf62, 0x418d6e40, 0x2057ac7b, 0x71440c4a, 0x599cf2da, 0x4a69f627, 0xab53b507, 0xfb744afd
.word 0x862c03ff, 0xd7188a88, 0xf532e78f, 0x7d8989bd, 0x14f51785, 0xb41dc9e7, 0xc2b828e8, 0xa752774f
.word 0xb2e7bcab, 0xd5bd40d4, 0xbd761ea9, 0xd6b88b7c, 0xa4754547, 0x1fa5ce5e, 0x7a5c545d, 0x1d13990d
.word 0xa6675c55, 0x9a33e5a7, 0xf3ef849d, 0xdb1c8768, 0x47ecba98, 0x387b6995, 0x481196b8, 0x8e683222
.word 0xe0a3805d, 0x2478ccc3, 0xb83dd8f8, 0x12e38d26, 0x23d4c55c, 0x84c2a965, 0x741077bc, 0xc49dd6f1
.word 0x099ba2a3, 0x1d910e18, 0xb5c68535, 0x6f53d6a4, 0x39253d82, 0x555cc51f, 0x7bc6f5a1, 0xba6ec80a
.word 0x5690af4c, 0x474dd108, 0x7a3b7cc8, 0x744f14b7, 0x43cdd0f0, 0xb09c2bad, 0x7acb8d9f, 0x595ddee8
.word 0xd228ead2, 0x3ed554dc, 0xcf4d0a22, 0x38fd284e, 0x2d801a58, 0x0259a189, 0xb6900348, 0x606d5f80
.word 0xb9272e57, 0xf87ff386, 0xf83a84d6, 0x58b707a2, 0x7b0b3be2, 0x2c024452, 0xde76f731, 0xd764a32b
.word 0x751667c7, 0x7c0ffa97, 0xd5b003ea, 0x5e2b8486, 0x44cc9cc2, 0x7ec68f31, 0x2ef251fd, 0x80591b6a
.word 0xf13191ee, 0xa4f12561, 0x3f127cf1, 0x0d3e11b6, 0x1b3dabc5, 0xb0078142, 0xccb64a24, 0xeffbb1e4
.word 0x0da2c580, 0x823cd278, 0x6877c401, 0x166838e1, 0x17a14d5b, 0xc8c60995, 0xd3f47e45, 0x0d672272
.word 0x1bde2b28, 0xf4f40c4c, 0x2e1e495d, 0xf1adec39, 0xd6d9a42c, 0x68ea01c8, 0x8cf02bef, 0x032646d9
.word 0xe0779f79, 0xb7326f19, 0xbedbab7a, 0x54ad4bbc, 0xbc917194, 0x2a974922, 0x6215e2e3, 0x9afcbbc0
.word 0x23e4260b, 0xec639462, 0xa79c7fed, 0x92a40389, 0x4179aef1, 0x532d1ce4, 0x5e6bb974, 0x21506788
.word 0x609c6496, 0x99cab44c, 0xa2792f11, 0x63dc681e, 0x5d5275cc, 0xb28ae29d, 0x8f6f560f, 0x07c5b581
.word 0x40bf1843, 0x6c46fad5, 0xbdf7a6ea, 0x35f3b81d, 0x8977c279, 0x6528ee95, 0x594b6a3c, 0x37727325
.word 0x2d7c37b2, 0xce4283d7, 0xa10f3801, 0x6696b811, 0x0209b95a, 0xdf939f51, 0xbe8cfd8f, 0xccb53fc2
.word 0x2ce393a1, 0xba227647, 0xcfd17d99, 0x8fc071dd, 0x257e8aaf, 0x9398e683, 0xd2e9e2f4, 0x7d8f077a
.word 0x8103778f, 0x1cc1f830, 0x859cd1b4, 0x735442e7, 0xa25ee65a, 0xa298e40b, 0xb9d01782, 0x5573dd5b
.word 0x2abd7ce0, 0xd714d634, 0x09dee171, 0xf8d138ec, 0xffdff92e, 0xcf2104a0, 0xa1a7ca5f, 0xc54ee878
.word 0x9bc672e5, 0x44bfeb8d, 0xd4dccc49, 0x296d0d2d, 0x11d545b3, 0xc5d2f24a, 0xecf19829, 0x14f26412
.word 0x3b3bee89, 0x23968aa5, 0x433ce4ba, 0x3c1e0282, 0xc551fd65, 0x3d4cbab5, 0xd103f1d7, 0xcc4c98e4
.word 0x3473637e, 0xd3ee5793, 0x6cc2e148, 0x89647293, 0x0353460a, 0x1cd313a4, 0xe8a1cfe2, 0xcc897b76
.word 0x209f051a, 0x8fba1a0e, 0xe9132715, 0xc94dc3d0, 0x3aef74e1, 0x045260a6, 0x67dc75c0, 0xd73ff53a
.word 0x168cf856, 0x9df211a5, 0x3e925035, 0xb1ba3f3e, 0xe4296b80, 0x3489aa50, 0x943bfd7f, 0xd222e893
.word 0x095a1f59, 0xcd76fe77, 0xdcd87b73, 0xd6d68d7e, 0x3a1f02d8, 0x0794ebd4, 0x05deff3d, 0x48cdf632
.word 0x1ba45eca, 0x1eeb1a72, 0xad452844, 0x92c62356, 0x1983f326, 0x0859bf35, 0xf27b3da3, 0xa7b51d0b
.word 0x4c8c7ef7, 0xd7404d4d, 0x272635c6, 0x578573c1, 0x908a22ec, 0xd8ed5107, 0x72ff557f, 0x7e423ab3
.word 0xb1d0f963, 0x4a1017c4, 0x4f95cff7, 0xb97a17b6, 0x10bc0294, 0x72d690eb, 0xf676339a, 0x1bde9e53
.word 0xba7e705e, 0x42948360, 0x91642b54, 0x6c300563, 0x4539f8e9, 0x8c4f6105, 0x319449a0, 0x42735770
.word 0xf4c695f2, 0xadc36cc0, 0xcb313854, 0xa432c7de, 0xc5bc59dc, 0x1f8fed23, 0xfaf781cf, 0x1dcd406d
.word 0x3f949538, 0x8af50b69, 0x6177b053, 0x4ccdbcae, 0x45f86da0, 0x00f833e4, 0x29e26067, 0x43d97d23
.word 0x3b77e6ac, 0xcde14ecb, 0x25b073e6, 0xe3d59c0a, 0xd0145e79, 0x188fd3ad, 0x0498152a, 0xeca58ac9
.word 0x9d6e7fd5, 0xff4987a8, 0x79b15cee, 0x1ec0acfd, 0x99f304d7, 0x8bdc81ba, 0x5e49e97d, 0xd5bd3ada
.word 0xd5b8bbe2, 0xf33c33f6, 0x09ffd7af, 0x190b1654, 0xea6457a0, 0xf8b046f2, 0x3db71b9f, 0xdd948f66
.word 0xab8ba614, 0xad5b4d8c, 0xa73cfae3, 0x10488310, 0x8e1eaaef, 0x5476d144, 0x7f64f6e2, 0x8d89fb2e
.word 0x62fc4593, 0x03511f03, 0x8c55384f, 0x7e85537a
.section .region_1,"aw",@progbits;
region_1:
.word 0xc8eb2471, 0x7158d018, 0x711200b2, 0x99f6758e, 0x42a82f60, 0x755de5d8, 0x46f94daf, 0x9ee105ad
.word 0x072baecd, 0x61f4c086, 0x7dcfb9f9, 0xd9f8f179, 0x07d25a32, 0x76ab1db8, 0x6f692030, 0xee663656
.word 0x0eabcf07, 0x410b07c2, 0x76c27f5c, 0x6e60d331, 0xd36d8cf1, 0x23fd23b5, 0x51256cf5, 0x2d2ad7e2
.word 0xb8c062b7, 0x70ac15aa, 0x9360e5e1, 0x60a15f2d, 0xc86c9476, 0x8507cc5e, 0xf92bdb8c, 0x4ce69c1c
.word 0xdb676815, 0xd6b709f3, 0x32cb2258, 0xb4a316ed, 0x1e1d3726, 0x6bb2d906, 0x001ec299, 0x73c2d09c
.word 0x2e0b7872, 0x12d22840, 0xc09d3ae5, 0x6fe38f7b, 0x342058b4, 0x47084e23, 0x0ba8815e, 0x35ab5980
.word 0xdb6f8ab8, 0xa38e3b41, 0x76bcee5a, 0x66dbebda, 0x26180568, 0xef4adf41, 0xccbaef5d, 0x5b2e2952
.word 0xb80a551e, 0x02cac3b1, 0xdeda64ae, 0x9e288399, 0x9fb67659, 0xe73f700d, 0x243f301b, 0xc6209e64
.word 0x13d4f218, 0x0306a9b9, 0x30f10466, 0xc89f88d2, 0xf8378cf2, 0x952ca590, 0xf556e215, 0x92ef2947
.word 0xc81cb8ad, 0xd8c79162, 0xb8421938, 0x0fade011, 0x93a7d923, 0x3b47386b, 0xab5ac5c7, 0x3d1649bb
.word 0xdd6e23ab, 0x45a04117, 0xd38f328e, 0x9481499d, 0x053fe0f1, 0x4d47c28a, 0xf69150db, 0x9f1a71da
.word 0xad57d19b, 0x548db30a, 0xc37a31e9, 0x539d3588, 0xa418b208, 0x7328317d, 0xe84093a8, 0xb7a7b0e4
.word 0x111eb3cd, 0x003a14eb, 0xa20a91f9, 0x96662721, 0xbaac21df, 0x110c3a4f, 0x7be6fb9a, 0x78125c6d
.word 0x12817eec, 0x0cdc0406, 0x03f434cb, 0xff521f40, 0xe9126b18, 0x5e8426ee, 0x0a75f1b5, 0x12791c0e
.word 0x808cd016, 0xa1ee142b, 0x57ef0936, 0x67c0687e, 0xb0367773, 0x0ff4bf4a, 0x509e5f40, 0x0f5de88c
.word 0x68db7f6e, 0x86a71504, 0x8d5deb3a, 0xab6a765d, 0xb124ac9a, 0xbed82df5, 0x74d4c432, 0xf6569fdd
.word 0x1d007e49, 0x283cd0a8, 0x0e1bfa48, 0xb9c94353, 0xe2c948e9, 0x334ca1a3, 0xe94e6a87, 0xecb88591
.word 0xa7af7a5d, 0x8ca8821b, 0xc31116e2, 0x457d64dc, 0xa6710de3, 0xa741bd9f, 0x9592a1a8, 0x835a5963
.word 0x65887bc4, 0xcfe95126, 0xc12cc409, 0x832e8ba7, 0x2302d653, 0xbe3b24dd, 0x606a54d6, 0x9c37dbb7
.word 0x4a24a06d, 0x5dc2afdc, 0x41c66092, 0x6d39a705, 0x8bb38e70, 0xf060573c, 0xd5339585, 0x6660a31e
.word 0xe8d259c7, 0xfc0f02a3, 0x830cbebf, 0x4a94985d, 0xc8d7ade5, 0x305f2c9e, 0xb4865329, 0x634f91b8
.word 0x6cf45d83, 0xbe39d006, 0xab70c47d, 0x0cc5cbea, 0x9ee21042, 0x52bc1a3c, 0x3508705f, 0xf415a4d8
.word 0x3cd7ee78, 0x7d003a9c, 0x1e90f1ac, 0xfdd45080, 0xb69a723b, 0x04bd04cc, 0x6215c07b, 0xc7dc1a89
.word 0xb13c0e9e, 0x68aee6fb, 0x691cc8eb, 0x2cf23da4, 0xca50e23f, 0x981f2e57, 0x7fd09a4d, 0xd39af3d8
.word 0x26f80d0f, 0x3ec11288, 0x0bfcb781, 0xff1f8b0c, 0x9f78dcf1, 0xc1853f19, 0xcdfe8453, 0x8df65e87
.word 0xb113bbde, 0xa0f92b7f, 0x0dddce4d, 0x76e66146, 0xb41bb3ab, 0xde4e2813, 0xbd5e0824, 0x8f48452c
.word 0x934b681b, 0x76a9d82f, 0x72212bc7, 0x1fd6e2e3, 0x515bdb04, 0xba9104a3, 0x87591e94, 0x8ccf2b76
.word 0x33919fe8, 0x128fc462, 0xc8483caf, 0xd74a68ae, 0x0ab9d426, 0x7084793b, 0xe24e11e6, 0xefbb34bd
.word 0xc6ca4258, 0xd7e1465f, 0x20116423, 0xee4319d7, 0x9c5c39fc, 0xf2ebaecf, 0xe79e231e, 0x30d4943e
.word 0xb2f3045d, 0xda66f1e6, 0xe0a53ed5, 0xa576ed24, 0x08170043, 0x51e7cf9b, 0xe215a857, 0x0fe235db
.word 0x1a775831, 0xbf1ac29e, 0x4c38a545, 0x8339b6b2, 0x461ad48f, 0xbad9c682, 0x621fb903, 0x2b34fdcb
.word 0x4b55ea5a, 0xbf8cc940, 0x9bee739d, 0x7971ee28, 0xbf588a3f, 0x23cb71ce, 0x9aebbacb, 0x8f9e86bc
.word 0xf121fb8e, 0x1352b9d5, 0xe4857862, 0xebbb381d, 0x5a46d360, 0x0918f12c, 0xd43d4c37, 0x22c35998
.word 0x9d8625cf, 0x017b51ab, 0xa92dfcaf, 0x9e424a0e, 0x3ba4128b, 0x7db11285, 0xd1fce85c, 0x75a48726
.word 0xa01ef6a9, 0xa85f85f2, 0xba3b36bb, 0x2e08e2a1, 0x2a9df757, 0xaf443c44, 0x48c95ae6, 0x6eb0be2e
.word 0xc362b9d8, 0x2bcb4719, 0x7d6f272a, 0x834d8e07, 0x8e13f748, 0x08a73867, 0xcca78a47, 0xb4da4fe0
.word 0xe5810c8e, 0xb631a265, 0x1e6b2928, 0x9f9d42e4, 0x79d3a725, 0x034e48b3, 0x9d044339, 0x6380ed9c
.word 0xd6a834bb, 0x4c42858a, 0x0203e4bf, 0x557cbb8f, 0xde2de6e3, 0xd5ce5cb8, 0x152203c0, 0xff0b6cdd
.word 0x7d005157, 0x2c76e59b, 0xc7a5d8fe, 0xf1ee5d8c, 0x49933e32, 0x27204477, 0x151372f0, 0x903616d4
.word 0x2b268767, 0xd4fbbe58, 0x6f56df1c, 0xace38b0d, 0x182a5b65, 0x0928ead2, 0x3443ee47, 0x77eeb2d5
.word 0xdcacf894, 0x6e0e1e17, 0x541936a6, 0x7947d280, 0x8d2e2b3f, 0x2a6e9ba5, 0xf8178319, 0x9ac4bef3
.word 0x2bc5b5cb, 0xfac680d6, 0x2c675889, 0x346a8e40, 0x1fa5dccd, 0x81d90f9b, 0xf188649d, 0xce7aeed4
.word 0x1c532414, 0x9b335168, 0x354750e3, 0x78cbeae3, 0x02db466e, 0x115446b5, 0x322e6a1c, 0x1cf6cd5b
.word 0x322682a9, 0xa36547ea, 0x1b40bedf, 0xc29609cf, 0x33afa35d, 0x48616b19, 0x39846115, 0x28d366e3
.word 0x2d596f36, 0x4f81188c, 0x8706fb64, 0xd37cf7c7, 0x01fa7698, 0xb1d3a7e8, 0x7aabcbbe, 0x0c9d4a1b
.word 0x8357a5fb, 0xa260b3be, 0xb01a806a, 0x3221dc13, 0xab51d462, 0x1d9a94c0, 0xae26256d, 0xbd87c231
.word 0xab0a00b7, 0x57210893, 0xcf77b6ca, 0x771a0af6, 0x2589c25e, 0x5b16251c, 0xa8ec4348, 0x986ecf18
.word 0x147ad6c5, 0xa06ccd07, 0x9667359a, 0x3d61ba4c, 0xf946bc32, 0xf95af435, 0x45d76f34, 0x7f050d5f
.word 0xa81ea101, 0xa3a15623, 0x1121954f, 0xa138db7f, 0x218f154c, 0x4bbbba7b, 0x2ee1c37c, 0xf6d6e923
.word 0xadcefcfb, 0xa6efd8fa, 0x65e7f10e, 0x2d8420c4, 0xdc28b840, 0x5f9eff45, 0x4c4fb2f5, 0x89eb07b0
.word 0x07bd29af, 0x677554d4, 0x0a2f3ecc, 0x95ca1ef2, 0x3aab2c8c, 0xade9b7e5, 0xef8d6127, 0xede1ee06
.word 0x506b32a8, 0x0374415b, 0xda1cdd35, 0x1f451c53, 0xf9e7a6a8, 0x1f802273, 0x736e3453, 0x8f5d1259
.word 0x8cee9d38, 0x38d95d39, 0xe96a49a9, 0xca4ce276, 0x3ceaf2c0, 0x7fa1897c, 0xc21b8803, 0xf3d3c2c3
.word 0xc31f8b96, 0x72520d2d, 0x4d8258c1, 0xee1a32c5, 0x917c04e7, 0x4ac6ca02, 0x03305a69, 0x3b0e6d50
.word 0x04428c9e, 0x76e3be5e, 0x815dbc2d, 0x9dd9a9ef, 0xbfe117d8, 0xd876bb69, 0x1a7f893a, 0x611f2a79
.word 0xc7b2b7fb, 0x7152fa99, 0xc702f62a, 0x2db33b2f, 0x1e5cf8d7, 0x0b1e773c, 0x95335114, 0xc63f0d5b
.word 0x6526a788, 0x13f4b531, 0x04d1260c, 0x16f42ccb, 0x4798b339, 0xca375666, 0x740b6918, 0x8f2e5b0f
.word 0x953a2e7e, 0x1a5ba9b5, 0xa0dfb749, 0x039fcef9, 0xa0959889, 0x13425e7a, 0x1f72cfcf, 0xfedfd360
.word 0x3f8a9227, 0x13d2c033, 0xfb7053fe, 0x2891d1d5, 0xd5c76a86, 0xebbf8b83, 0x6035272e, 0x674f7794
.word 0xb0511e8e, 0x9f2bf5b0, 0x661a0987, 0x1fdb7ccf, 0x57cfd9f1, 0x27a1fe11, 0x8af62b6c, 0x64b86530
.word 0xdc3d7e8b, 0x18e57290, 0x6286a815, 0x0b2e3fb8, 0xf9b17032, 0x4862af0d, 0xbe56745e, 0xac4f291d
.word 0xec25c6f9, 0xb4ab9edf, 0xb6b62d43, 0x846472d7, 0xced9eae4, 0x3f31c888, 0x8325abf1, 0x087b14e5
.word 0xad5cefcd, 0x339cdded, 0xa1637eeb, 0x9dfef595
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
                  add x11, x23, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x13, test_done
                  jalr x0, x13, 0

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
                  add x11, x23, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x13, test_done
                  jalr x0, x13, 0

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
                  add x11, x23, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x13, test_done
                  jalr x0, x13, 0

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
                  add x11, x23, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x13, test_done
                  jalr x0, x13, 0

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
                  add x11, x23, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x13, test_done
                  jalr x0, x13, 0

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
                  add x11, x23, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x13, test_done
                  jalr x0, x13, 0

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
                  add x11, x23, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x13, test_done
                  jalr x0, x13, 0

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
                  add x11, x23, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x13, test_done
                  jalr x0, x13, 0

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
                  add x11, x23, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x13, test_done
                  jalr x0, x13, 0

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
                  add x11, x23, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x13, test_done
                  jalr x0, x13, 0

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
                  add x11, x23, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x13, test_done
                  jalr x0, x13, 0

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
                  add x11, x23, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x13, test_done
                  jalr x0, x13, 0

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
                  add x11, x23, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x13, test_done
                  jalr x0, x13, 0

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
                  add x11, x23, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x13, test_done
                  jalr x0, x13, 0

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
                  add x11, x23, zero
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 0x1f
                  beqz x12, 1f
                  j mmode_intr_handler
                  1: la x13, test_done
                  jalr x0, x13, 0

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
                  add x11, x23, zero
                  csrr x12, 0x341 # MEPC
                  csrr x12, 0x342 # MCAUSE
                  li x19, 0x3 # BREAKPOINT
                  beq x12, x19, ebreak_handler
                  li x19, 0x8 # ECALL_UMODE
                  beq x12, x19, ecall_handler
                  li x19, 0x9 # ECALL_SMODE
                  beq x12, x19, ecall_handler
                  li x19, 0xb # ECALL_MMODE
                  beq x12, x19, ecall_handler
                  li x19, 0x1
                  beq x12, x19, instr_fault_handler
                  li x19, 0x5
                  beq x12, x19, load_fault_handler
                  li x19, 0x7
                  beq x12, x19, store_fault_handler
                  li x19, 0xc
                  beq x12, x19, pt_fault_handler
                  li x19, 0xd
                  beq x12, x19, pt_fault_handler
                  li x19, 0xf
                  beq x12, x19, pt_fault_handler
                  li x19, 0x2 # ILLEGAL_INSTRUCTION
                  beq x12, x19, illegal_instr_handler
                  csrr x19, 0x343 # MTVAL
                  1: la x13, test_done
                  jalr x1, x13, 0

ecall_handler:    
                  la x12, _start
                  sw x0, 0(x12)
                  sw x1, 4(x12)
                  sw x2, 8(x12)
                  sw x3, 12(x12)
                  sw x4, 16(x12)
                  sw x5, 20(x12)
                  sw x6, 24(x12)
                  sw x7, 28(x12)
                  sw x8, 32(x12)
                  sw x9, 36(x12)
                  sw x10, 40(x12)
                  sw x11, 44(x12)
                  sw x12, 48(x12)
                  sw x13, 52(x12)
                  sw x14, 56(x12)
                  sw x15, 60(x12)
                  sw x16, 64(x12)
                  sw x17, 68(x12)
                  sw x18, 72(x12)
                  sw x19, 76(x12)
                  sw x20, 80(x12)
                  sw x21, 84(x12)
                  sw x22, 88(x12)
                  sw x23, 92(x12)
                  sw x24, 96(x12)
                  sw x25, 100(x12)
                  sw x26, 104(x12)
                  sw x27, 108(x12)
                  sw x28, 112(x12)
                  sw x29, 116(x12)
                  sw x30, 120(x12)
                  sw x31, 124(x12)
                  la x13, write_tohost
                  jalr x0, x13, 0

instr_fault_handler:
                  add x23, x11, zero
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
                  add x23, x11, zero
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
                  add x23, x11, zero
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
                  csrr  x12, 0x341
                  addi  x12, x12, 4
                  csrw  0x341, x12
                  add x23, x11, zero
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
                  csrr  x12, 0x341
                  addi  x12, x12, 4
                  csrw  0x341, x12
                  add x23, x11, zero
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
                  csrr  x12, 0x300 # MSTATUS;
                  csrr  x12, 0x304 # MIE;
                  csrr  x12, 0x344 # MIP;
                  csrrc x12, 0x344, x12 # MIP;
                  add x23, x11, zero
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
