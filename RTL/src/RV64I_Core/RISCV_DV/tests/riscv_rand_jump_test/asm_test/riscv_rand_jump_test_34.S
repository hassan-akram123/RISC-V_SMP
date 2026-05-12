.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x15, h0_start
jalr x0, x15, 0
h0_start:
                  li x26, 0x40000100
                  csrw 0x301, x26
kernel_sp:        
                  la x24, kernel_stack_end

trap_vec_init:    
                  la x26, mtvec_handler
                  ori x26, x26, 1
                  csrw 0x305, x26 # MTVEC

mepc_setup:       
                  la x26, init
                  csrw 0x341, x26

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x26, 0x1800
                  csrw 0x300, x26 # MSTATUS
                  mret
init:             
                  li x0, 0xb
                  li x1, 0x80000000
                  li x2, 0x80000000
                  li x3, 0x80000000
                  li x4, 0x0
                  li x5, 0x0
                  li x6, 0x80000000
                  li x7, 0x2
                  li x8, 0xfea4598f
                  li x9, 0x5
                  li x10, 0xd
                  li x11, 0xb9c4cd16
                  li x12, 0x5
                  li x14, 0xf4df52f8
                  li x15, 0x0
                  li x16, 0x0
                  li x17, 0xb20f73c0
                  li x18, 0x80000000
                  li x19, 0xc39e62b3
                  li x20, 0x0
                  li x21, 0x80000000
                  li x22, 0xfb9e9ff7
                  li x23, 0x0
                  li x25, 0xf8bd0ffa
                  li x26, 0x1
                  li x27, 0xe
                  li x28, 0x0
                  li x29, 0x417788bc
                  li x30, 0xf6c4bd6d
                  li x31, 0xf78b960b
                  la x13, user_stack_end
main:             la           tp, region_0+210 #start riscv_load_store_rand_instr_stream_0
                  lb           a4, 141(tp)
                  slt          t5, a6, a7
                  lhu          a7, 52(tp)
                  lbu          t5, 187(tp)
                  sltu         t5, ra, s11
                  lbu          s9, -205(tp)
                  add          s4, s6, t0
                  sb           s1, 155(tp)
                  sw           s1, 78(tp)
                  sub          s3, s9, tp
                  sb           s9, 96(tp)
                  sh           t3, 140(tp)
                  srli         s3, s7, 16
                  addi         t1, a0, 1418
                  lbu          t5, -80(tp)
                  lui          a2, 938838
                  sb           a4, 30(tp)
                  addi         s7, a1, 611
                  srai         t1, s7, 14
                  lb           s10, 166(tp)
                  lbu          ra, -29(tp)
                  sltiu        s6, t5, -1206
                  add          a0, ra, t4
                  sb           a0, 203(tp)
                  sll          a4, a4, a7
                  sb           a2, -61(tp)
                  lbu          a2, 73(tp)
                  lhu          s2, 168(tp)
                  slli         s7, a7, 2
                  lb           s4, 247(tp)
                  lb           s9, 171(tp)
                  and          t4, a3, a2
                  and          s5, a7, s10
                  lhu          t5, 28(tp)
                  sb           a2, -140(tp)
                  sh           s6, 46(tp)
                  lw           a1, 102(tp)
                  and          a2, s9, zero
                  slli         s2, s2, 15
                  lb           a7, -139(tp) #end riscv_load_store_rand_instr_stream_0
                  la           tp, region_0+1393 #start riscv_load_store_rand_instr_stream_7
                  lbu          t0, -128(tp)
                  lb           t1, 230(tp)
                  sll          ra, zero, tp
                  lb           zero, 146(tp)
                  lb           gp, -184(tp)
                  lb           s11, 171(tp)
                  sltu         sp, s9, s4
                  andi         s1, a0, 1494
                  sb           s0, -252(tp)
                  sltiu        s5, s6, 1220
                  lhu          t1, 23(tp)
                  sltu         s3, s2, a2
                  lb           gp, -21(tp)
                  slt          s1, s0, s9
                  lbu          a1, 112(tp)
                  lh           s7, 143(tp)
                  srai         t1, s0, 16
                  lh           t0, 127(tp)
                  sb           sp, -154(tp)
                  addi         zero, s4, -758
                  ori          s0, ra, 1079
                  sb           s0, -126(tp)
                  sb           a2, -126(tp)
                  sh           s8, 215(tp)
                  lb           s7, -166(tp)
                  lbu          t5, 111(tp)
                  sra          ra, a4, gp
                  slt          t0, a3, s3
                  or           sp, t1, a0
                  sh           t3, -179(tp)
                  add          a2, s0, s3
                  ori          s7, s5, 263
                  lhu          s11, 53(tp)
                  lbu          a4, 228(tp)
                  lb           t4, 4(tp)
                  or           s4, a1, s2
                  xor          zero, s10, s6
                  sb           zero, 48(tp)
                  lui          a4, 1042034
                  andi         s6, s6, 640
                  sb           a1, -28(tp)
                  xor          s2, a6, s11
                  lb           a1, 25(tp)
                  xor          ra, gp, a3
                  lbu          s6, 151(tp)
                  sb           a2, -103(tp) #end riscv_load_store_rand_instr_stream_7
                  la           s3, region_1+15 #start riscv_load_store_rand_instr_stream_1
                  sh           s6, -9(s3)
                  auipc        a4, 165529
                  lbu          t2, -3(s3)
                  lbu          t4, 42(s3)
                  xori         sp, a4, 1646
                  slti         a2, t1, -1037
                  or           a4, s2, t2
                  slt          tp, s3, sp
                  srai         t1, s11, 28
                  srai         s4, a7, 11
                  sw           t4, 57(s3)
                  lhu          t0, -5(s3)
                  lb           s11, 24(s3)
                  lui          sp, 923581
                  sltu         tp, a6, s9
                  sh           s7, 11(s3)
                  lb           t5, 56(s3)
                  sh           s7, 35(s3)
                  xor          a0, a2, s7
                  xori         s1, s5, -572
                  srl          t3, t3, a4
                  lbu          s11, 6(s3)
                  sb           t5, -2(s3)
                  sb           a2, 44(s3)
                  sb           a1, 2(s3)
                  add          t5, t2, a6
                  xor          s5, t0, s1
                  sb           t0, 23(s3)
                  auipc        s5, 491062
                  lb           t1, 32(s3)
                  sll          ra, a4, t6
                  sb           tp, 34(s3)
                  lb           a7, 8(s3)
                  lbu          a0, 40(s3)
                  sb           s8, -5(s3)
                  lbu          t6, 12(s3)
                  lbu          s9, 56(s3)
                  lb           t0, 28(s3)
                  sb           t6, -2(s3) #end riscv_load_store_rand_instr_stream_1
                  la           s0, region_0+1846 #start riscv_load_store_rand_instr_stream_6
                  lbu          a4, 27(s0)
                  sb           s10, -7(s0)
                  lbu          t6, 9(s0)
                  lui          t4, 216559
                  sll          t2, s9, zero
                  add          t1, s9, s6
                  sh           t0, -38(s0)
                  slli         tp, s8, 20
                  sra          a1, s2, s3
                  lbu          s5, 41(s0)
                  lw           a7, 62(s0)
                  addi         s6, s4, 1259
                  sh           t5, 44(s0)
                  lw           s7, -2(s0)
                  lbu          a4, -56(s0)
                  srai         s9, s10, 25
                  slti         t5, s11, 1887
                  sltiu        t2, s8, -329
                  sb           s8, -23(s0)
                  addi         s9, t5, 1759
                  lui          s4, 405409
                  andi         a4, s5, 1214
                  addi         a0, t0, 140
                  lui          t0, 758891
                  add          s1, s8, s3
                  lb           s1, -23(s0)
                  sh           s4, 30(s0)
                  lb           a6, 52(s0)
                  srai         a7, sp, 27
                  slli         t0, s8, 2
                  xori         gp, s11, -1914
                  lbu          s3, 55(s0)
                  lbu          s11, 41(s0)
                  sb           ra, 55(s0)
                  sra          tp, a0, s3
                  or           gp, s7, s11
                  lbu          s2, -4(s0)
                  lbu          t0, 32(s0)
                  slti         s6, s11, 1808
                  lb           s6, 15(s0)
                  lbu          a2, -51(s0)
                  srl          a7, t1, a6
                  sh           s8, -52(s0)
                  lui          t0, 583669
                  sh           gp, 48(s0)
                  lh           gp, 54(s0)
                  sra          tp, a5, sp
                  sb           a7, 0(s0) #end riscv_load_store_rand_instr_stream_6
                  la           t0, region_1+1304 #start riscv_load_store_rand_instr_stream_2
                  sh           gp, -38(t0)
                  sh           s7, -578(t0)
                  lbu          a0, -178(t0)
                  sb           s2, -873(t0)
                  auipc        s7, 514178
                  xor          t5, t0, t5
                  and          t3, t5, t1
                  lbu          t3, -707(t0)
                  lui          a1, 211987
                  sb           sp, -429(t0)
                  sb           gp, 534(t0)
                  sra          s4, gp, t2
                  slti         t2, a2, -1674
                  lbu          ra, -207(t0)
                  sb           t6, 507(t0)
                  addi         s9, zero, 578
                  xori         s10, a3, -1828
                  or           s6, s7, s4
                  xori         tp, a4, -1384
                  sb           sp, 267(t0)
                  lb           t3, -319(t0)
                  lb           tp, 626(t0)
                  srai         t6, tp, 31
                  lbu          t3, -761(t0)
                  sh           s8, 180(t0)
                  lb           s3, -987(t0)
                  srl          s0, t6, s4
                  sra          t3, a6, a7
                  lb           t4, 97(t0)
                  srli         s3, s2, 16
                  lhu          s3, -920(t0)
                  andi         a1, t0, 1760
                  nop
                  lbu          a1, -610(t0)
                  srai         s1, a5, 9
                  auipc        tp, 169999
                  ori          a7, a3, -659
                  lbu          t4, -34(t0)
                  sb           a0, -490(t0)
                  sh           t4, 140(t0)
                  add          t5, a1, a5
                  sltu         t6, a7, t1
                  sh           t1, -646(t0)
                  sub          s2, zero, a4
                  srli         t6, zero, 16
                  sltiu        t5, t6, 415
                  lw           a7, 464(t0)
                  lbu          a2, 245(t0) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_1+661 #start riscv_load_store_rand_instr_stream_4
                  sb           s9, -479(sp)
                  lb           zero, 390(sp)
                  or           t0, a5, s6
                  slti         t3, t0, -337
                  lh           t3, 785(sp)
                  sb           s7, 160(sp)
                  sb           sp, 376(sp)
                  lbu          t1, 187(sp)
                  lb           s3, -294(sp)
                  lbu          t2, 533(sp)
                  sb           t4, -436(sp)
                  lhu          t0, 327(sp)
                  sw           t3, 1135(sp)
                  addi         t6, a3, -156
                  slti         s9, zero, -412
                  sb           s7, 832(sp)
                  lbu          s0, -372(sp)
                  lbu          s3, 567(sp)
                  lbu          a0, -245(sp)
                  sb           s9, 830(sp)
                  lb           t5, 623(sp)
                  sb           s2, -612(sp)
                  lb           s7, 239(sp)
                  lui          s10, 191971
                  sb           s4, -356(sp)
                  or           a2, t3, s4
                  andi         s10, t4, -1063
                  lb           t0, 388(sp)
                  sb           tp, -366(sp)
                  lb           t3, 1170(sp)
                  slt          t4, s4, t5
                  nop
                  add          t5, s4, sp
                  sh           t4, -633(sp)
                  lbu          s7, 61(sp)
                  xori         t4, s4, -148
                  auipc        a0, 717408
                  lh           t1, -261(sp)
                  sb           a7, 1033(sp) #end riscv_load_store_rand_instr_stream_4
                  sra          a7, a0, ra
                  nop
                  slti         s11, t1, 1296
                  ori          t4, a2, -1618
                  addi         ra, gp, 1058
                  blt          tp, s3, 18f
                  srai         s3, s8, 25
                  lui          a2, 428257
                  beq          s1, a2, 27f
                  or           a1, a7, a6
                  addi         a6, t4, -1327
                  or           s6, a5, ra
                  xor          a4, s7, a3
                  addi         s5, s10, -1164
                  nop
                  sll          t4, a5, a5
                  andi         zero, a4, 430
                  or           a7, a6, zero
18:               slti         a6, s3, -1065
                  bge          a7, a1, 24f
                  sll          t0, a5, sp
                  slt          s6, s0, a6
                  lui          gp, 19618
                  srli         s4, s1, 17
24:               slt          s3, s1, a3
                  addi         ra, a0, -1286
                  addi         s0, sp, -1489
27:               andi         t3, t1, -780
                  xori         t3, a7, -865
                  sub          s9, a5, s3
                  sltu         a6, t1, t3
                  bge          t1, a4, 33f
                  beq          s5, a3, 50f
33:               or           t6, s6, s10
                  sltiu        sp, a1, 1152
                  xori         t4, a7, 2020
                  sll          a0, a7, s3
                  xori         s5, tp, 259
                  slti         a2, s9, -1411
                  addi         a2, s6, -1905
                  sra          s2, a2, s11
                  srl          t4, t2, a7
                  or           s4, gp, s1
                  bltu         a4, ra, 45f
                  srl          sp, t4, s6
45:               lui          a0, 508072
                  bge          s7, s6, 65f
                  bne          zero, t4, 64f
                  blt          sp, a4, 59f
                  andi         t5, t1, 347
50:               andi         s5, t4, -462
                  sltu         ra, t5, t6
                  nop
                  sltu         t4, s5, s7
                  srai         a1, s1, 1
                  sltiu        t3, zero, -1925
                  bne          s1, s8, 60f
                  beq          t4, s8, 72f
                  lui          t1, 46142
59:               bge          t2, tp, 78f
60:               srli         tp, sp, 13
                  bltu         t6, s11, 77f
                  slli         a6, s11, 24
                  and          s3, s10, a1
64:               sra          s2, a6, t3
65:               andi         t5, a3, -915
                  bne          s0, s5, 84f
                  bgeu         sp, s4, 73f
                  bgeu         a1, ra, 82f
                  ori          t6, s10, -1788
                  srli         t1, a2, 8
                  srai         t4, t2, 24
72:               lui          a1, 508335
73:               lui          tp, 466930
                  addi         a4, s1, 498
                  bgeu         s9, t4, 78f
                  bne          s0, tp, 87f
77:               sub          a6, s11, t5
78:               and          s3, a5, a4
                  auipc        s6, 197988
                  sub          s6, a3, s3
                  add          s0, t3, tp
82:               sra          s4, a2, s6
                  bltu         a4, t6, 99f
84:               bltu         s3, zero, 88f
                  nop
                  and          s9, t2, s10
87:               bgeu         s3, s1, 106f
88:               slti         t2, t0, -1416
                  slti         ra, s4, 1498
                  bge          s1, t4, 105f
                  andi         t4, s4, -733
                  slti         t6, gp, -1042
                  andi         t3, s7, 2025
                  and          s11, a7, a5
                  srli         sp, t6, 31
                  bgeu         a1, s11, 104f
                  nop
                  or           ra, a4, gp
99:               slt          s6, a5, s7
                  bge          a7, a5, 116f
                  xor          tp, t6, a4
                  srai         s4, sp, 2
                  sub          ra, gp, t5
104:              slli         t6, t4, 12
105:              srli         s11, s1, 6
106:              xor          a7, t1, s6
                  bne          t6, t3, 126f
                  slti         t4, s6, -1560
                  srai         t4, a2, 8
                  bge          t4, s9, 120f
                  sub          s10, s2, tp
                  srli         a7, gp, 2
                  beq          s0, gp, 128f
                  srl          s5, s9, s9
                  blt          s8, s8, 121f
116:              slt          t6, s9, a5
                  sub          gp, s8, s0
                  bne          s5, s1, 132f
                  xori         s2, t5, 437
120:              auipc        ra, 503343
121:              slti         t1, s0, -159
                  bgeu         s4, s7, 142f
                  srl          s1, a2, a7
                  bge          a3, s0, 137f
                  addi         s5, a6, -913
126:              blt          a1, a4, 143f
                  slti         a6, a5, -431
128:              bltu         t1, s4, 142f
                  slti         s3, a3, 2044
                  sll          t1, a6, t3
                  xori         s5, t1, 183
132:              sra          s1, a0, a1
                  xor          sp, gp, t3
                  lui          a7, 533720
                  lui          t5, 189569
                  sltu         s6, s4, s10
137:              xori         s4, s2, 1503
                  addi         s4, tp, -1642
                  xor          a0, zero, a6
                  srli         t6, a1, 21
                  or           a2, gp, s4
142:              bgeu         t4, a0, 161f
143:              bne          t0, s4, 159f
                  nop
                  srai         t4, a5, 28
                  srai         t0, s10, 23
                  lui          tp, 751793
                  addi         a4, a7, 521
                  bltu         ra, s8, 168f
                  sra          a6, a3, a2
                  nop
                  srli         s1, s5, 5
                  sltu         t1, zero, a3
                  or           a0, ra, s11
                  sra          t2, a2, ra
                  slti         a6, s6, -1657
                  nop
                  sltiu        a7, a2, 1639
159:              and          s10, a7, sp
                  ori          s11, s10, -1516
161:              lui          t5, 137178
                  bgeu         t1, t1, 167f
                  ori          s0, gp, 1581
                  xori         a4, t3, 1636
                  bgeu         s0, s1, 181f
                  sltiu        s2, tp, 1064
167:              slti         sp, ra, 265
168:              sltiu        gp, t0, 1444
                  sll          s3, a6, a2
                  or           s6, s9, a4
                  auipc        t6, 999398
                  la           s2, sub_1
                  nop
                  addi         s2, s2, 274
                  sub          s0, s11, t2
                  sub          s5, s0, gp
                  or           gp, a2, a6
                  and          t0, s7, a6
main_j1:          jalr         t1, s2, -273 #jump main -> sub_1
                  or           s0, a2, a2
                  srl          s0, s10, s9
                  srl          t5, a5, s11
                  beq          s1, t6, 191f
                  sltu         s1, t6, a0
                  bne          s7, s2, 178f
                  add          t4, t1, sp
                  slti         tp, t5, 987
178:              nop
                  blt          a5, s6, 194f
                  andi         t5, s6, 473
181:              xori         s9, a3, -1144
                  la           t3, region_0+1758 #start riscv_load_store_rand_instr_stream_5
                  lbu          ra, 12(t3)
                  sb           s3, 4(t3)
                  sll          s6, s1, s10
                  sb           s1, -1(t3)
                  sltiu        s7, a4, -965
                  and          t1, s5, t5
                  lb           s7, 13(t3)
                  xori         s0, s10, -1210
                  slli         s2, a0, 11
                  lb           t5, 1(t3)
                  xor          zero, s2, t3
                  auipc        t6, 578290
                  lbu          s3, -5(t3)
                  lw           t1, 6(t3)
                  srli         a0, a0, 13
                  srl          ra, a5, t3
                  and          s4, a4, a4
                  xor          t1, a2, s0
                  srai         t2, t1, 4
                  andi         gp, s3, -1615
                  slt          s5, a0, s11
                  lui          s2, 539873
                  lb           s7, -12(t3)
                  sltiu        s9, a0, 1354
                  slti         a0, s8, 239
                  slti         t6, tp, 466
                  add          a2, a2, t1
                  sw           s4, 14(t3)
                  sw           s2, 6(t3)
                  slt          s0, s11, t5
                  lb           t0, 1(t3)
                  add          zero, s9, s2
                  or           zero, s10, s2
                  sub          s4, t6, s3
                  slti         t6, a6, -1479
                  sb           s10, -13(t3)
                  sb           a6, -1(t3)
                  sh           a0, 0(t3)
                  lb           s1, 3(t3)
                  or           sp, a0, a2
                  lbu          t6, -7(t3)
                  sb           a1, 3(t3)
                  addi         sp, t2, 1595
                  sll          t4, s10, a2
                  lbu          t6, -13(t3)
                  sw           s4, 10(t3)
                  lbu          t5, 15(t3)
                  addi         zero, a6, 1181
                  sb           s6, 2(t3) #end riscv_load_store_rand_instr_stream_5
                  xori         t1, s8, -1851
                  lui          ra, 922477
                  sub          s10, s4, a3
                  add          t3, s8, s0
                  sll          t1, s3, a3
                  xor          t0, a5, a1
                  addi         s1, sp, -826
                  srl          a2, s2, s8
                  auipc        t0, 803831
191:              andi         tp, t3, -642
                  srl          s7, s7, s0
                  beq          zero, a5, 209f
194:              beq          s0, a6, 212f
                  lui          s6, 1007880
                  lui          s3, 939777
                  auipc        s0, 30891
                  sll          t2, t3, s4
                  sub          s10, s1, s8
                  xori         tp, s9, 1142
                  xor          sp, s11, s8
                  sub          a2, t1, t4
                  bltu         s0, a7, 211f
                  slli         a2, s11, 13
                  or           t6, s6, s2
                  sltu         zero, s8, s1
                  sub          sp, a6, t6
                  auipc        t4, 312861
209:              beq          s5, s5, 213f
                  slti         t4, a4, 1814
211:              xor          a4, t2, a3
212:              sra          s1, s0, s9
213:              beq          t0, s10, 224f
                  bne          s11, t1, 233f
                  srli         t3, ra, 8
                  ori          gp, t1, -195
                  bgeu         s6, tp, 221f
                  ori          sp, s8, 31
                  addi         s11, s6, -886
                  sltiu        t0, t4, 1626
221:              add          s4, s8, a0
                  or           s3, t1, t1
                  sra          t6, gp, s7
224:              beq          s5, s7, 244f
                  sub          s2, s3, a0
                  add          s10, a4, sp
                  bgeu         tp, a4, 229f
                  bgeu         tp, a2, 234f
229:              slti         a4, s0, 890
                  srli         a0, a0, 22
                  bltu         ra, s5, 242f
                  nop
233:              slt          s4, s8, s5
234:              bne          t3, t4, 253f
                  sra          a0, t1, s9
                  auipc        s10, 247812
                  bgeu         s7, t4, 239f
                  slt          t1, a2, a2
239:              blt          s11, s1, 253f
                  bge          a0, t1, 246f
                  slli         a6, a6, 8
242:              sltu         a4, sp, a7
                  beq          gp, s1, 258f
244:              ori          s7, t3, 1782
                  or           s11, t3, a4
246:              bge          tp, s5, 261f
                  xor          ra, a3, tp
                  and          a1, a3, tp
                  xori         s10, s9, -940
                  sltiu        a7, zero, 988
                  blt          s6, s3, 270f
                  blt          gp, s4, 262f
253:              slli         t6, s5, 0
                  slti         t3, a1, -308
                  addi         t5, s5, 1369
                  bne          a0, s11, 262f
                  blt          a4, t1, 261f
258:              lui          ra, 964926
                  bge          s11, s11, 279f
                  lui          a6, 1042845
261:              xori         t0, t5, -755
262:              and          s1, a6, t4
                  xor          tp, s2, a7
                  sltiu        t3, a4, 728
                  bltu         sp, t0, 279f
                  sltu         sp, a3, t1
                  xor          s9, a2, s0
                  beq          t4, s0, 270f
                  beq          s8, s5, 286f
270:              or           t3, s5, a2
                  auipc        s10, 478653
                  beq          s7, s4, 277f
                  srli         t6, s9, 10
                  slti         s0, t3, 1681
                  xori         s10, t5, -1006
                  slt          ra, s1, s9
277:              srai         s5, s2, 0
                  or           s5, tp, a2
279:              auipc        s3, 188913
                  auipc        a0, 741302
                  auipc        s11, 107248
                  srli         a0, s11, 7
                  bne          t1, s3, 302f
                  slti         s10, a4, -1423
                  xori         a2, s11, 1955
286:              srai         s5, s4, 25
                  slti         a7, s0, 2001
                  bge          a7, t5, 299f
                  blt          s0, s9, 307f
                  bgeu         s5, a1, 293f
                  sltiu        a4, s2, 554
                  beq          a1, s0, 308f
293:              blt          s6, a3, 308f
                  xor          t0, a6, gp
                  bgeu         s0, a7, 310f
                  sll          t2, s3, s7
                  srai         a2, s10, 1
                  beq          s8, a3, 304f
299:              bne          a6, t0, 318f
                  nop
                  nop
302:              slti         s2, zero, -643
                  srl          s4, t1, t0
304:              addi         t4, a5, -378
                  xor          t4, tp, a2
                  auipc        a0, 919484
307:              lui          a2, 858293
308:              lui          s9, 724168
                  auipc        a6, 205042
310:              sll          s4, sp, s3
                  or           s11, a7, t6
                  blt          t1, s0, 328f
                  slti         s3, a5, 1399
                  bltu         s4, zero, 330f
                  beq          gp, tp, 334f
                  sra          zero, t3, t4
                  nop
318:              ori          s7, t1, 1105
                  nop
                  beq          tp, sp, 330f
                  lui          a6, 968661
                  sltiu        a6, s10, 1871
                  slti         a1, sp, 866
                  sltu         s5, t0, t5
                  or           zero, s3, a5
                  sra          sp, t2, s8
                  lui          a2, 382929
328:              sltiu        a4, a2, -1731
                  ori          s3, t0, -1747
330:              or           s3, sp, a3
                  sltu         s3, t6, t6
                  bge          s0, a1, 351f
                  andi         s7, s1, -150
334:              sltiu        a6, s5, 1382
                  beq          a2, t1, 343f
                  or           s5, sp, s4
                  sltu         a0, s9, t2
                  srai         t0, a6, 2
                  sltu         a7, s6, a4
                  bge          a5, s4, 344f
                  sltiu        s0, gp, -1358
                  andi         t5, gp, 1061
343:              ori          t0, s10, 963
344:              xori         t0, s0, 1611
                  nop
                  addi         a0, s0, 945
                  sll          s9, a1, t2
                  ori          a7, t0, 677
                  or           s3, a0, a0
                  bgeu         ra, tp, 363f
351:              sltu         t0, a4, a0
                  andi         t3, a5, -1977
                  slli         zero, s9, 14
                  slt          s7, a6, t4
                  lui          a2, 862328
                  slt          s4, t4, s10
                  blt          zero, t5, 368f
                  xori         zero, a5, 1077
                  sll          s11, a2, t5
                  slt          s5, a6, t0
                  sub          gp, s9, a7
                  andi         t4, t6, 247
363:              sltiu        s9, t1, -591
                  or           s2, s4, s2
                  slli         s1, s4, 21
                  blt          a6, tp, 380f
                  sltu         t4, t3, a6
368:              bge          sp, s2, 386f
                  sltiu        a2, s4, 368
                  ori          s3, t5, 1992
                  bge          sp, s0, 373f
                  srli         a1, a5, 12
373:              sll          t3, s11, sp
                  or           sp, s1, a4
                  slt          t0, gp, t4
                  bltu         gp, a2, 395f
                  add          s4, s1, s9
                  srli         a0, s7, 18
                  bgeu         sp, s2, 394f
380:              xori         t1, t1, -875
                  sra          s6, tp, s0
                  blt          sp, t0, 396f
                  nop
                  andi         a7, a0, 2032
                  srli         gp, s1, 18
386:              ori          s3, t6, -1924
                  blt          s10, t4, 393f
                  srl          sp, s11, zero
                  xor          a6, a2, t0
                  slli         t2, tp, 23
                  nop
                  nop
393:              addi         zero, s11, -439
394:              or           t2, s2, t3
395:              andi         t0, a3, -769
396:              bltu         a5, a0, 407f
                  and          s4, s1, t4
                  bge          s8, t3, 400f
                  addi         t5, t5, -1288
400:              sra          t4, s6, t1
                  slti         a4, t3, 1037
                  ori          t0, a1, -618
                  srai         a1, t0, 2
                  add          a7, zero, s1
                  andi         ra, s7, -219
                  auipc        zero, 616767
407:              bgeu         t2, gp, 411f
                  or           t0, a6, sp
                  or           s1, t6, a4
                  nop
411:              bltu         sp, sp, 426f
                  addi         t3, t5, 1838
                  blt          a0, s5, 432f
                  or           s10, s6, s8
                  add          t4, sp, s7
                  or           s0, s6, s9
                  andi         t3, a5, 1001
                  srai         a4, s5, 10
                  sub          t2, s2, t3
                  srai         t6, t2, 26
                  slti         a7, tp, 26
                  slti         t4, a4, 727
                  add          s4, a3, s10
                  sub          s9, tp, s3
                  xori         a1, s4, -689
426:              bge          a2, a2, 442f
                  srli         s5, s0, 0
                  sll          a7, ra, zero
                  sub          s10, a5, t0
                  bge          t4, s5, 449f
                  and          s5, s5, a2
432:              addi         t0, a1, -11
                  slti         s6, a3, 1746
                  beq          a5, s2, 436f
                  andi         t5, a4, 364
436:              or           s6, a3, gp
                  nop
                  xor          a6, s6, s9
                  lui          t6, 461956
                  bne          a5, t1, 459f
                  srl          t6, ra, s9
442:              bge          s0, a5, 450f
                  beq          s11, t1, 448f
                  addi         a0, s3, 1156
                  sltiu        tp, t1, -1426
                  srl          t4, s0, s8
                  xori         a1, a6, -2013
448:              addi         t3, a0, 432
449:              nop
450:              srl          s6, s5, s6
                  lui          a0, 854048
                  bltu         s11, s0, 469f
                  beq          t4, a4, 472f
                  srai         s6, gp, 10
                  auipc        a0, 561180
                  and          t5, s5, a3
                  bgeu         s4, t4, 460f
                  or           t3, s0, s7
459:              bge          s10, s8, 475f
460:              slti         a2, sp, 1715
                  srai         a4, a3, 27
                  xor          t3, t2, a1
                  slt          t2, s9, sp
                  andi         a4, s1, 1127
                  lui          gp, 56869
                  bge          a3, t4, 470f
                  and          s1, s9, t2
                  bne          s0, s8, 484f
469:              bgeu         ra, t3, 480f
470:              srl          s10, s7, t2
                  sltiu        t3, a2, 719
472:              sll          gp, s10, s5
                  sra          a1, zero, s5
                  andi         s10, t0, -447
475:              xori         a6, t0, -34
                  xor          s2, s6, s10
                  srl          t3, s10, tp
                  addi         a4, t3, -1498
                  srl          s5, s4, s10
480:              or           s5, ra, t1
                  srai         t5, a6, 17
                  bltu         s3, s5, 501f
                  slli         tp, a1, 5
484:              beq          a3, s7, 499f
                  sltiu        s5, a0, -1823
                  sra          s0, t6, t1
                  sub          s6, t1, s1
                  xori         s6, zero, -1578
                  auipc        sp, 994316
                  nop
                  bne          s7, ra, 505f
                  slli         a2, t2, 10
                  slli         s6, t0, 24
                  bge          a1, t2, 500f
                  add          t3, s0, s10
                  srli         a2, a5, 29
                  srli         t2, t1, 9
                  or           s6, gp, gp
499:              slti         ra, s8, 2033
500:              sub          a0, zero, a3
501:              addi         t4, t4, 688
                  slli         a1, a2, 11
                  srl          s4, a0, s4
                  xori         t3, s10, -302
505:              bgeu         t4, s5, 525f
                  ori          tp, a7, -477
                  sltiu        t3, s3, -1190
                  slli         s4, a0, 20
                  bgeu         t3, t3, 519f
                  andi         t0, t6, -363
                  slti         a2, s3, 1432
                  blt          t6, tp, 525f
                  auipc        s1, 538179
                  or           s11, tp, a1
                  sra          a0, s0, a7
                  auipc        s4, 22783
                  blt          s3, t2, 535f
                  lui          sp, 247231
519:              lui          a6, 774504
                  bne          tp, t2, 535f
                  xori         t3, s11, -1821
                  add          a1, s10, t0
                  blt          s9, a6, 541f
                  bgeu         zero, a1, 542f
525:              bge          a3, t3, 530f
                  and          s9, s5, s9
                  srai         a6, s4, 12
                  blt          a4, s9, 530f
                  blt          t5, s7, 547f
530:              xor          s7, s10, a5
                  srl          s0, a5, s5
                  bne          s2, t6, 540f
                  addi         s9, t0, 1367
                  slli         t2, ra, 12
535:              and          t3, s4, s7
                  srli         s5, t3, 19
                  ori          zero, t0, -1294
                  addi         sp, a6, 136
                  auipc        a4, 3215
540:              bgeu         a7, tp, 544f
541:              bne          t0, t0, 547f
542:              nop
                  bgeu         s3, t4, 554f
544:              sra          a2, t1, t2
                  bgeu         s1, tp, 549f
                  bgeu         gp, a7, 565f
547:              bne          t1, a6, 561f
                  andi         t0, t5, -2031
549:              addi         t5, s3, -550
                  add          s10, gp, sp
                  srl          s5, gp, s4
                  add          ra, t4, ra
                  lui          a0, 386406
554:              nop
                  and          a7, s2, s10
                  lui          t1, 1047919
                  addi         s0, s1, 763
                  xor          t6, s3, s9
                  srl          t3, s9, s10
                  sltu         t3, a1, t6
561:              sltu         s9, s5, s10
                  sra          a7, ra, a0
                  sra          t2, s8, a7
                  bne          t2, s8, 579f
565:              sra          s6, t0, s0
                  xor          gp, t1, zero
                  srai         sp, t6, 12
                  or           t0, t6, s9
                  bge          a0, s0, 585f
                  sra          s11, s9, s4
                  xor          s6, s0, a4
                  slti         s2, t6, -1131
                  sll          a2, s11, a3
                  beq          t6, sp, 590f
                  slli         s11, t6, 18
                  srl          ra, s0, a7
                  sltu         t1, tp, s4
                  nop
579:              slti         s11, s9, 1244
                  add          t5, t2, s11
                  sll          s6, t5, ra
                  sll          s11, t6, t4
                  lui          tp, 859317
                  or           s1, t3, t0
585:              srai         a2, s1, 10
                  xori         a2, s10, -1154
                  srl          gp, t2, a4
                  bge          a0, sp, 605f
                  srl          t6, s10, a1
590:              andi         s9, t5, -603
                  sltiu        s11, s5, -823
                  bge          t6, t6, 602f
                  bne          t4, ra, 608f
                  auipc        a2, 190078
                  andi         s10, a1, 20
                  add          zero, tp, ra
                  sltu         a2, a2, a0
                  ori          a7, s8, -2010
                  ori          tp, s1, -630
                  and          t5, a0, a7
                  andi         s1, s3, -1400
602:              auipc        s9, 909865
                  srai         a1, sp, 8
                  srli         s2, a4, 13
605:              nop
                  slt          t3, ra, s9
                  beq          s9, s5, 626f
608:              xori         s6, s10, -2036
                  xori         a6, a3, 166
                  auipc        gp, 213348
                  sll          a7, a6, t6
                  beq          s3, s5, 631f
                  addi         a0, s6, 812
                  bge          s2, t2, 620f
                  or           t4, a1, zero
                  bne          a4, s2, 631f
                  slti         t3, gp, 1000
                  sltiu        s5, a3, 1449
                  srli         s9, s5, 26
620:              andi         t4, a0, 1068
                  bge          a7, s11, 632f
                  xor          t0, s10, ra
                  slli         a1, a0, 6
                  ori          sp, s11, 1566
                  srai         s7, s9, 18
626:              andi         a1, gp, -332
                  blt          a1, s6, 629f
                  slli         ra, t4, 15
629:              sra          s11, t3, gp
                  nop
631:              lui          ra, 350793
632:              srli         ra, s4, 30
                  sll          a1, a5, s5
                  bgeu         s5, sp, 647f
                  bgeu         gp, sp, 654f
                  srli         a1, s10, 12
                  bltu         s11, s7, 653f
                  xor          s6, s3, t3
                  blt          s5, s3, 653f
                  sub          t4, t3, a5
                  srli         a1, t6, 15
                  and          s7, t2, t0
                  lui          s7, 354839
                  slt          s11, s1, s4
                  addi         s3, sp, -384
                  xor          gp, t4, a2
647:              ori          zero, tp, -1279
                  bltu         t3, a1, 668f
                  ori          s5, t0, 15
                  bne          t3, s5, 653f
                  srai         s2, t1, 27
                  addi         ra, a7, 916
653:              sltiu        s9, s10, 0
654:              slt          t5, s10, a7
                  sltu         s9, gp, t5
                  nop
                  lui          s10, 780286
                  slti         t0, a7, 1596
                  bgeu         t4, s2, 678f
                  xor          sp, t5, t6
                  and          s5, gp, a7
                  add          ra, ra, t3
                  slli         s3, a6, 20
                  bne          tp, a1, 683f
                  addi         a2, sp, -1279
                  andi         a1, s7, 334
                  bge          s4, s10, 682f
668:              bltu         a3, s10, 671f
                  srli         zero, s2, 11
                  bge          s1, t4, 686f
671:              slli         zero, s2, 6
                  sub          s3, s9, gp
                  slli         s11, s7, 9
                  or           s5, t0, t5
                  srl          t0, s11, s10
                  sll          s5, t0, s5
                  addi         s7, s5, -711
678:              and          s4, a5, t2
                  bltu         tp, s4, 690f
                  srl          s9, t6, t2
                  slli         t0, ra, 13
682:              addi         t3, s10, -205
683:              srl          sp, t3, s0
                  beq          s1, s10, 694f
                  srai         a2, t1, 8
686:              bne          a6, s9, 690f
                  sll          a7, t6, a4
                  sltu         ra, ra, s1
                  sltiu        s7, t6, 136
690:              or           s4, s2, t1
                  lui          a0, 1006119
                  slli         s0, s5, 4
                  bgeu         s6, a2, 707f
694:              ori          s2, a1, 574
                  or           s0, t1, a1
                  blt          s8, a1, 702f
                  slt          s6, gp, a1
                  nop
                  slt          t6, s10, t0
                  blt          s7, s4, 715f
                  auipc        s4, 80314
702:              xori         a4, a5, 90
                  slli         a1, s6, 18
                  bgeu         a4, s2, 709f
                  auipc        sp, 150943
                  xor          t1, a0, t4
707:              andi         t1, s2, 229
                  xor          s9, s0, a2
709:              sll          gp, a1, s6
                  and          s2, ra, s7
                  ori          s1, s4, -187
                  srl          a6, s3, a2
                  or           sp, gp, a6
                  auipc        s10, 56420
715:              slli         t6, a6, 2
                  sltiu        t1, sp, -408
                  slt          sp, a0, s2
                  bgeu         t6, t5, 737f
                  addi         gp, t3, 550
                  slli         a2, a2, 22
                  bgeu         gp, s10, 737f
                  lui          s0, 555467
                  auipc        s9, 342602
                  bne          s9, s10, 741f
                  sltiu        t4, s2, -1688
                  bne          tp, t3, 741f
                  srli         a6, t6, 28
                  srai         a2, a1, 28
                  slti         s1, sp, -550
                  xori         t0, t5, 1666
                  ori          t6, a1, 1077
                  or           gp, t6, t1
                  srli         t2, a7, 21
                  auipc        t5, 62823
                  srl          t1, t6, s7
                  add          t3, ra, a7
737:              srli         ra, a7, 30
                  xor          t0, s2, zero
                  bltu         a1, a2, 747f
                  slti         s5, a6, -748
741:              slti         s5, s0, -1107
                  sub          t6, a7, zero
                  sub          a1, tp, a1
                  addi         s0, t3, 211
                  slt          t0, s7, sp
                  sll          a0, s11, s2
747:              bltu         s10, s5, 760f
                  lui          ra, 936969
                  bgeu         t1, s0, 768f
                  xori         t1, t6, 1440
                  sll          tp, ra, gp
                  xor          a0, s10, gp
                  add          s3, a2, a4
                  ori          a4, s11, 210
                  bgeu         a7, t5, 774f
                  slli         a7, a2, 28
                  addi         a6, t1, -789
                  srai         tp, s5, 8
                  slli         s1, a0, 10
760:              lui          t6, 101416
                  sltu         t6, s1, t3
                  bltu         t3, s2, 780f
                  and          t5, t2, t1
                  srai         s10, s5, 22
                  andi         s7, s6, -600
                  slti         t6, a4, -1474
                  slt          t6, t1, t0
768:              xor          ra, t4, tp
                  and          gp, a1, t6
                  bne          a5, sp, 786f
                  or           tp, s3, t6
                  bgeu         a7, t1, 774f
                  sll          s9, s4, a2
774:              or           zero, a1, s2
                  slti         s9, s5, 550
                  beq          s9, s8, 778f
                  lui          t5, 250410
778:              sltu         s5, s9, a3
                  srai         s1, zero, 29
780:              or           t5, t2, s2
                  ori          s9, s2, -1205
                  addi         a0, s5, 1857
                  and          gp, a6, t5
                  beq          s11, a0, 802f
                  blt          gp, s7, 804f
786:              auipc        s10, 176766
                  slti         t4, a0, -825
                  srai         s0, a3, 20
                  ori          s7, s7, -921
                  srai         s6, t1, 15
                  srai         s1, a3, 1
                  slti         s7, a1, -425
                  bne          s11, a0, 813f
                  and          a4, s9, s2
                  xor          s4, s11, s3
                  bgeu         t1, s2, 802f
                  auipc        a0, 728951
                  andi         zero, s1, -489
                  or           a4, s0, a5
                  slt          zero, s9, t4
                  xor          zero, s7, s10
802:              ori          t5, s5, 485
                  srai         ra, s0, 6
804:              lui          t6, 653459
                  slt          s7, sp, s6
                  andi         a7, s4, 1545
                  blt          a6, t4, 811f
                  auipc        t1, 592843
                  bne          a2, s7, 820f
                  nop
811:              bgeu         gp, a7, 825f
                  add          s7, a7, a7
                  la           sp, region_0+1662 #start riscv_load_store_rand_instr_stream_3
                  sw           s3, -630(sp)
                  slti         s2, a5, 199
                  sra          s6, t1, a7
                  lb           a7, -1095(sp)
                  xor          s4, t3, s2
                  lh           t3, 86(sp)
                  sra          s6, s4, t1
                  lbu          s5, -113(sp)
                  slt          s9, s3, s5
                  slt          s0, s3, s8
                  slt          a0, t2, sp
                  lh           a0, -1486(sp)
                  addi         t6, s9, -397
                  srai         a1, a4, 5
                  addi         s11, t4, 1243
                  add          s7, s11, s1
                  lb           t4, -880(sp)
                  sll          s3, s1, a6
                  srli         t6, s1, 6
                  addi         t6, s2, 222
                  srl          t4, sp, t3
                  andi         s5, t4, -706
                  ori          s2, s2, 344
                  lbu          s2, -497(sp)
                  slti         s0, t3, -1059
                  sh           s11, -858(sp)
                  lb           t0, -333(sp)
                  lb           s4, -404(sp)
                  sltiu        t5, s10, -815
                  andi         t3, gp, 505
                  sb           s11, -1119(sp)
                  xori         s2, t4, 286
                  sltu         a7, t0, a4
                  lhu          t6, -1228(sp)
                  lui          t6, 650743
                  srli         s0, a2, 27
                  addi         s6, s6, 1297
                  lui          s4, 490626
                  sb           zero, 7(sp)
                  sll          zero, tp, tp
                  lbu          s11, 221(sp)
                  lb           s2, -1455(sp) #end riscv_load_store_rand_instr_stream_3
813:              sltu         s3, t2, s10
                  ori          sp, a5, -932
                  srai         t3, a4, 29
                  xor          s9, t1, t2
                  or           a7, gp, a3
                  bne          s4, a2, 833f
                  bltu         s2, a6, 835f
820:              ori          s3, a3, -171
                  xor          s4, t4, a0
                  slt          t1, s8, s2
                  srai         a0, s1, 6
                  sll          a7, s7, zero
825:              slli         s0, s10, 23
                  srli         s10, s10, 11
                  xor          t2, s4, s0
                  sltu         s11, s0, s4
                  ori          t5, t1, -220
                  blt          s6, a1, 847f
                  sltiu        s3, a3, 1817
                  bge          a7, s6, 848f
833:              sltu         s7, s3, s8
                  srai         s1, s10, 21
835:              bge          a3, s5, 837f
                  or           t4, gp, s3
837:              add          t0, a7, a4
                  srl          t3, s2, a3
                  ori          s9, s7, -574
                  sub          a1, s5, a6
                  sra          t2, a1, a2
                  beq          tp, a2, 856f
                  add          a7, s8, tp
                  sra          sp, zero, sp
                  sltiu        a4, s11, 474
                  auipc        s9, 630699
847:              sll          sp, s7, a5
848:              slt          t1, t4, a5
                  sub          a7, s8, s9
                  srai         t0, s3, 28
                  or           a6, s8, s7
                  sltiu        s9, t1, 1002
                  addi         s2, a6, 936
                  srli         t2, zero, 25
                  sll          s11, s8, t6
856:              sltiu        tp, s8, -1159
                  auipc        s9, 975530
                  bne          t6, a1, 869f
                  ori          tp, sp, 725
                  lui          t0, 586913
                  auipc        a6, 1018486
                  sltiu        t0, s7, 703
                  sub          s11, gp, a1
                  sll          zero, s6, a1
                  ori          t0, s9, 857
                  andi         t1, s5, 652
                  lui          a7, 970284
                  srl          t1, s10, t1
869:              srai         s11, ra, 8
                  and          a7, s10, s5
                  add          s2, sp, ra
                  or           s7, t5, s5
                  bge          s5, s7, 877f
                  and          sp, a5, a3
                  sltu         s2, ra, tp
                  sltiu        a1, t5, 1666
877:              sub          zero, zero, t0
                  blt          tp, s5, 897f
                  bne          a4, s10, 889f
                  blt          s1, s9, 896f
                  sra          sp, t4, gp
                  srl          t5, a3, gp
                  andi         ra, a7, -1537
                  sub          s9, a5, t4
                  bge          a2, sp, 900f
                  and          s6, tp, s10
                  ori          s6, a1, -1110
                  slti         s10, s7, 780
889:              blt          s2, t1, 895f
                  xor          s10, t5, s2
                  xori         s3, t4, -1585
                  bne          ra, ra, 898f
                  bgeu         s8, s9, 912f
                  add          s1, t2, t5
895:              srli         a2, t3, 9
896:              beq          s11, s9, 914f
897:              srli         a4, s0, 20
898:              beq          a5, t3, 900f
                  and          s3, a3, s7
900:              lui          s10, 671989
                  bltu         a6, t2, 916f
                  srli         t2, tp, 20
                  sub          tp, s9, s6
                  bne          s7, s3, 907f
                  auipc        t1, 738314
                  sra          s0, t6, s7
907:              auipc        s3, 527055
                  xori         a7, a2, -627
                  andi         s1, t2, 1962
                  or           s4, zero, a3
                  add          a4, a1, s8
912:              slli         a0, s1, 25
                  sltu         ra, a7, t6
914:              sll          s2, s4, t4
                  slt          s4, t5, sp
916:              sltu         a4, t6, a5
                  srli         a1, tp, 25
                  slt          s7, s11, a1
                  ori          t1, t2, 773
                  slli         ra, a6, 14
                  or           t3, t2, s2
                  ori          a6, a7, 1990
                  nop
                  addi         s2, s4, 1851
                  add          s11, s7, t4
                  and          t5, gp, t2
                  srai         a0, ra, 18
                  andi         a6, tp, 1702
                  sub          t4, gp, a5
                  sltu         t0, t1, t5
                  sra          s6, a4, tp
                  bne          t1, s4, 946f
                  bge          tp, s9, 952f
                  bge          s1, t6, 954f
                  bne          s1, s7, 953f
                  slti         sp, s1, 755
                  bltu         a3, t0, 942f
                  sra          s0, a3, sp
                  slti         ra, ra, -249
                  la           t2, sub_1
                  sra          zero, s8, t3
                  sltu         s7, s8, s7
                  srli         s11, s1, 17
                  addi         t2, t2, 899
                  nop
main_j2:          jalr         t1, t2, -898 #jump main -> sub_1
                  slli         a1, a6, 17
                  andi         a0, a0, 1389
                  srai         a0, t6, 31
                  srai         s9, t3, 6
942:              bne          tp, tp, 953f
                  slt          a4, t6, s1
                  bne          a2, sp, 963f
                  sltu         a7, s11, tp
946:              addi         a7, a0, 1869
                  add          s4, s5, t5
                  sll          t4, a6, s9
                  addi         s1, a0, 328
                  ori          s6, t2, 30
                  and          tp, s0, s0
952:              auipc        s3, 296387
953:              ori          t6, gp, 1634
954:              blt          a7, ra, 958f
                  bltu         s11, s6, 968f
                  xor          t4, s5, s10
                  sltiu        ra, s0, 489
958:              sltu         t5, a6, t0
                  ori          s5, a5, -979
                  andi         t0, s5, 1171
                  add          s4, gp, ra
                  slt          t6, a0, ra
963:              lui          s9, 28585
                  sltu         t1, tp, s5
                  xor          s6, a5, t1
                  bgeu         ra, sp, 974f
                  auipc        s11, 820540
968:              or           a6, a2, t0
                  blt          zero, gp, 988f
                  sll          s9, a7, s4
                  slti         t2, gp, -755
                  and          a4, t0, t0
                  sltiu        a2, s3, 185
974:              srai         sp, t4, 8
                  andi         t0, s1, 861
                  sra          t5, a0, s4
                  sll          t3, a0, a5
                  bge          s3, s7, 996f
                  add          t5, t2, s10
                  xori         t4, a2, 1647
                  xor          sp, t1, a5
                  slli         a4, s4, 31
                  blt          zero, gp, 1000f
                  sub          s10, a3, a3
                  bge          s5, s7, 1004f
                  slt          t4, s11, a3
                  bne          a6, tp, 1000f
988:              slli         ra, t1, 13
                  lui          t5, 384161
                  or           s3, t1, t6
                  bge          s0, a2, 1009f
                  xori         t2, gp, 1433
                  sra          s6, sp, zero
                  xor          t3, t6, s0
                  addi         tp, t6, 663
996:              sra          ra, s8, s8
                  sltu         s9, s6, tp
                  sltiu        sp, a0, -1677
                  ori          t5, s11, -1439
1000:             blt          s11, s0, 1009f
                  nop
                  sltiu        s5, s11, -1440
                  and          s9, s9, a4
1004:             bne          a1, s1, 1009f
                  bltu         t3, t5, 1008f
                  srli         t0, s6, 11
                  srli         t5, t2, 23
1008:             and          a6, gp, t6
1009:             srai         s2, zero, 1
                  la x15, test_done
                  jalr x0, x15, 0
test_done:        
                  li gp, 1
                  ecall
sub_4:            addi         a3, a3, -56
                  lui          a7, 25360
                  addi         tp, ra, -1799
                  xor          s5, t1, s9
                  or           t3, tp, s5
                  ori          s2, t3, -1685
                  auipc        s10, 168007
                  sw           t1, 4(a3)
                  slt          t5, gp, s4
                  la           s6, region_1+1055 #start riscv_load_store_rand_instr_stream_6
                  and          t2, a4, zero
                  lbu          a6, -203(s6)
                  slt          t3, a1, sp
                  auipc        s4, 342720
                  addi         s11, a0, 1624
                  nop
                  lb           t6, -206(s6)
                  addi         s4, t4, -629
                  sb           zero, -210(s6)
                  addi         s2, a3, -650
                  add          s4, gp, zero
                  lh           s10, 147(s6)
                  lbu          a6, 239(s6)
                  lbu          s10, 32(s6)
                  lh           s9, -253(s6)
                  ori          sp, a6, 1203
                  srai         a6, s9, 17
                  and          t0, gp, t6
                  sltiu        s5, t6, 1741
                  sltu         a4, t3, a2
                  lh           t6, 175(s6)
                  ori          s4, s4, -167
                  auipc        t2, 358015
                  xori         s10, s3, -2015
                  lbu          t0, -64(s6)
                  slti         s7, t0, 1158
                  sub          s3, a3, s6
                  xori         s2, a5, -1859
                  lbu          a6, -174(s6)
                  sb           s8, -32(s6)
                  sltiu        s10, s2, 1457
                  sb           t0, 148(s6)
                  sltiu        tp, s7, -1328
                  or           t6, s0, s6
                  sb           s3, -242(s6)
                  lbu          a4, -162(s6)
                  sra          s0, s3, a1
                  sub          t2, s11, tp
                  slli         a1, a3, 10
                  lbu          t1, -26(s6)
                  sb           s4, -62(s6) #end riscv_load_store_rand_instr_stream_6
                  la           t5, region_1+846 #start riscv_load_store_rand_instr_stream_1
                  slli         s4, t1, 11
                  srai         s10, s7, 17
                  sb           a7, 183(t5)
                  slli         a4, ra, 6
                  lbu          a4, -156(t5)
                  lb           gp, -185(t5)
                  sll          t1, s7, s5
                  sra          s9, t1, s3
                  sra          s6, s3, s10
                  xori         a1, t0, 335
                  sb           a3, -136(t5)
                  addi         s1, s3, 459
                  add          gp, s3, s10
                  lui          s11, 952815
                  sb           s5, -201(t5)
                  slti         s4, s5, -801
                  sb           ra, -203(t5)
                  lh           t2, 50(t5)
                  sb           zero, 80(t5)
                  xori         t2, s5, 1778
                  lbu          a6, -109(t5)
                  sub          s2, s4, sp
                  ori          sp, s10, -795
                  srai         tp, s0, 10
                  sb           t1, 37(t5)
                  sb           t1, -219(t5)
                  slli         tp, t0, 8
                  sltiu        t2, gp, 970
                  auipc        s0, 538922
                  lhu          s2, 106(t5)
                  xori         ra, s4, 1810
                  lui          t1, 190036
                  sltiu        zero, s9, -1250
                  lw           a0, -66(t5)
                  or           t0, a2, tp
                  slti         gp, s8, 232
                  sh           tp, 168(t5)
                  lui          a1, 1024816
                  ori          s9, t4, 595
                  lh           t3, 20(t5)
                  lb           s1, -6(t5)
                  sltu         s2, a4, a3
                  lbu          a4, 69(t5)
                  slt          t3, s7, a6
                  slli         s3, s1, 7
                  sb           a5, 203(t5)
                  sw           t5, -182(t5) #end riscv_load_store_rand_instr_stream_1
                  la           a6, region_1+98 #start riscv_load_store_rand_instr_stream_8
                  lb           s10, 469(a6)
                  sll          t4, s11, s5
                  nop
                  addi         s10, s5, 584
                  sh           gp, 1808(a6)
                  sll          t1, s11, a4
                  sb           s10, 1766(a6)
                  lh           t4, 84(a6)
                  lb           gp, 571(a6)
                  sra          s2, t0, a4
                  sb           s6, 1086(a6)
                  lb           a4, 1893(a6)
                  xor          t4, a1, s9
                  lw           t3, 986(a6)
                  slti         t4, sp, 2022
                  sb           a7, 1587(a6)
                  srl          a1, a6, a0
                  sb           s0, 51(a6)
                  lbu          s10, 511(a6)
                  sra          t3, s3, t2
                  addi         s6, s5, 834
                  or           s0, s2, sp
                  lw           t5, 138(a6)
                  sb           a2, 1603(a6)
                  sll          t5, s9, s4
                  lw           sp, -30(a6)
                  sll          t1, a5, ra
                  sub          s3, t1, tp
                  sh           a0, 398(a6)
                  lhu          s2, 84(a6)
                  xor          t2, s2, s4
                  sb           s11, 1122(a6)
                  sh           s7, 828(a6)
                  lbu          a0, 35(a6)
                  sra          s0, s11, a1
                  sra          t4, a0, tp
                  slli         s7, a6, 15
                  lbu          s10, 715(a6)
                  xori         a1, ra, -142
                  lbu          t5, 975(a6)
                  sh           a7, 1708(a6)
                  slt          s9, t3, s0
                  lb           t1, 1342(a6)
                  xor          s0, sp, s7
                  and          t5, a2, t0
                  lb           ra, 249(a6)
                  lhu          gp, 522(a6)
                  xor          s3, t2, a0
                  lb           s4, 527(a6)
                  sb           s4, 144(a6) #end riscv_load_store_rand_instr_stream_8
                  la           s1, region_0+1214 #start riscv_load_store_rand_instr_stream_17
                  and          t0, s11, t0
                  andi         zero, s3, 2036
                  lui          a6, 814750
                  xori         s7, s0, -1748
                  lbu          s10, 16(s1)
                  andi         s9, t4, 1139
                  lb           s2, 16(s1)
                  sb           s2, 9(s1)
                  lhu          s5, 0(s1)
                  auipc        t5, 383549
                  srai         ra, t0, 29
                  lb           s11, 9(s1)
                  slli         zero, t3, 18
                  sh           a1, -12(s1)
                  lb           s6, -10(s1)
                  lhu          a6, 8(s1)
                  ori          s9, s2, -1642
                  sb           a1, -12(s1)
                  lh           gp, -14(s1)
                  sll          ra, s10, s0
                  add          a6, t2, s0
                  sub          a7, sp, s6
                  sltu         gp, a5, t1
                  slli         t1, s4, 28
                  add          ra, s0, t0
                  lh           s0, -14(s1)
                  ori          a0, a1, 1649
                  sub          s2, tp, t5
                  xor          t4, t3, s1
                  ori          t3, ra, -365
                  lbu          t5, 6(s1) #end riscv_load_store_rand_instr_stream_17
                  la           sp, region_0+702 #start riscv_load_store_rand_instr_stream_10
                  sra          t0, a6, s5
                  lbu          zero, -63(sp)
                  lbu          t2, 61(sp)
                  lbu          a6, 5(sp)
                  lhu          s1, -12(sp)
                  lbu          a0, 15(sp)
                  sh           t5, 64(sp)
                  lbu          s6, 33(sp)
                  andi         a6, a6, -499
                  slt          s1, tp, a1
                  sub          a0, a5, t1
                  lui          s6, 18417
                  sb           s5, -60(sp)
                  lh           a4, -56(sp)
                  lbu          s3, 60(sp)
                  lb           s7, -25(sp)
                  srli         t5, zero, 19
                  sb           s1, -35(sp)
                  lb           t2, -25(sp)
                  lbu          a1, 35(sp)
                  sltiu        s0, a3, 1287
                  lbu          s2, -36(sp)
                  sltiu        t1, a7, -1345
                  sh           a5, -46(sp)
                  slt          s9, s6, ra
                  sltu         a0, t6, s4
                  srli         s10, s11, 6
                  srl          gp, a0, s4
                  lhu          s5, -6(sp)
                  addi         t3, t2, 1720
                  lbu          a2, 19(sp)
                  lbu          s11, -49(sp)
                  lbu          s7, -47(sp)
                  lhu          t4, -48(sp)
                  sb           s5, 49(sp)
                  or           gp, tp, s9
                  lbu          ra, -31(sp)
                  and          s3, t4, t0
                  lui          s2, 543266
                  lh           s7, -4(sp)
                  sra          a2, t4, ra
                  sb           t2, -51(sp)
                  ori          s11, a7, 635
                  lhu          ra, -28(sp) #end riscv_load_store_rand_instr_stream_10
                  la           t4, region_0+92 #start riscv_load_store_rand_instr_stream_18
                  nop
                  slt          a2, t6, a6
                  sh           a1, 42(t4)
                  lbu          t2, -69(t4)
                  lb           s5, 105(t4)
                  sltiu        s3, s11, 582
                  nop
                  lbu          s5, -16(t4)
                  sb           s4, -39(t4)
                  sb           gp, -18(t4)
                  sb           a7, 6(t4)
                  lb           gp, 248(t4)
                  lbu          s1, 15(t4)
                  sb           s9, 34(t4)
                  slli         gp, t3, 18
                  addi         gp, a3, 1741
                  lh           s11, -6(t4)
                  ori          a6, t2, -1054
                  sh           t6, 182(t4)
                  slli         ra, a3, 16
                  and          tp, gp, t4
                  or           t0, s6, s1
                  andi         t5, s8, 1846
                  lbu          s2, 2(t4)
                  lbu          s6, -41(t4)
                  nop
                  lb           a7, -74(t4)
                  lb           s1, 167(t4)
                  add          s9, a3, ra
                  lb           t3, 81(t4)
                  sb           a3, -62(t4)
                  lui          tp, 944198
                  xori         t6, a1, 1699
                  xor          a4, s4, gp
                  lb           t3, 231(t4)
                  lw           sp, 28(t4) #end riscv_load_store_rand_instr_stream_18
                  la           sp, region_0+479 #start riscv_load_store_rand_instr_stream_15
                  nop
                  andi         s2, s4, 1600
                  xori         gp, a7, 1748
                  lb           a1, 940(sp)
                  sb           a7, -246(sp)
                  lui          ra, 363676
                  lbu          a6, 209(sp)
                  sltiu        t1, a7, 1859
                  sb           t0, 717(sp)
                  andi         s11, a5, -1966
                  add          t3, s8, s0
                  sub          a0, t1, a1
                  sb           s8, -240(sp)
                  sub          a1, sp, t3
                  lbu          t3, 422(sp)
                  lbu          s2, 1362(sp)
                  sh           t2, 475(sp)
                  add          s3, t0, s9
                  lbu          a0, -212(sp)
                  sh           ra, -155(sp)
                  sltiu        a7, s0, 539
                  nop
                  srli         s4, a0, 23
                  xori         s5, s1, -916
                  slti         a6, s2, 1332
                  auipc        ra, 611049
                  lbu          zero, 1222(sp)
                  and          ra, zero, t6
                  lbu          s11, -49(sp)
                  or           t3, t5, s4
                  srl          a2, s7, s5
                  sub          s4, s2, t2
                  slti         s7, t0, -1266
                  nop
                  sh           a7, 1031(sp)
                  or           s6, zero, a7
                  lh           a2, -257(sp)
                  srai         a2, s2, 27
                  auipc        ra, 83959
                  lb           s3, 1071(sp)
                  lb           ra, 687(sp)
                  xor          t0, s2, t0
                  sw           s5, 1445(sp)
                  lui          t0, 304022
                  lbu          s2, 603(sp)
                  sb           s9, 389(sp)
                  sb           t3, -366(sp)
                  sb           a1, 1434(sp)
                  lbu          t1, 838(sp)
                  lbu          gp, 152(sp)
                  sra          a6, a6, t2
                  andi         a0, a7, -1331
                  lbu          gp, -444(sp) #end riscv_load_store_rand_instr_stream_15
                  la           s2, region_0+1549 #start riscv_load_store_rand_instr_stream_20
                  srl          s10, s5, t3
                  lb           tp, 6(s2)
                  slli         a4, s5, 27
                  lb           tp, -16(s2)
                  lbu          t2, 6(s2)
                  sb           s5, 16(s2)
                  lbu          tp, 4(s2)
                  sltu         a2, s7, s9
                  lh           s10, 11(s2)
                  lui          s4, 387312
                  sub          t2, s2, a5
                  or           a1, s10, gp
                  auipc        a0, 296274
                  sub          t3, s0, s9
                  slti         gp, t3, 1466
                  or           tp, a7, sp
                  srai         gp, tp, 20
                  srl          t0, s4, t3
                  or           s0, gp, s0
                  lbu          gp, -6(s2)
                  slt          t4, s4, a3
                  lb           s9, 16(s2)
                  or           zero, s9, a5
                  lbu          s4, -12(s2)
                  srai         t1, a7, 6
                  nop
                  lb           s5, 5(s2)
                  lb           t2, -16(s2)
                  sb           s11, -1(s2)
                  sw           gp, 3(s2)
                  xori         s1, s8, -2039
                  lui          a0, 572817
                  srai         a7, s6, 31
                  sh           s11, 3(s2)
                  lw           t6, 11(s2)
                  and          s1, a2, s2
                  lbu          t0, -1(s2) #end riscv_load_store_rand_instr_stream_20
                  la           s9, region_1+1551 #start riscv_load_store_rand_instr_stream_11
                  sb           s1, 26(s9)
                  slti         s6, s10, 800
                  sh           a1, 23(s9)
                  lh           t5, 39(s9)
                  sll          s0, a7, s3
                  sra          s7, a7, t6
                  lhu          sp, -37(s9)
                  auipc        t1, 691744
                  sh           sp, 63(s9)
                  slti         gp, t0, -423
                  xor          s4, a6, s1
                  lhu          s6, 7(s9)
                  auipc        a6, 1040934
                  lb           a6, -9(s9)
                  lhu          a1, 21(s9)
                  lbu          s3, -2(s9)
                  lb           t0, 10(s9)
                  andi         t4, t5, 176
                  sh           sp, 49(s9)
                  lbu          a1, 40(s9)
                  srai         t6, zero, 11
                  lbu          t2, -11(s9)
                  xori         s3, t0, -1026
                  auipc        a0, 612517
                  sltu         s0, s1, t6
                  lui          tp, 369256
                  lb           a7, -44(s9)
                  srli         t2, a2, 17
                  lb           t4, 17(s9)
                  slli         gp, a3, 20
                  lhu          s4, 17(s9)
                  slti         a2, a0, -429
                  lb           s5, -5(s9)
                  sh           s5, -13(s9)
                  lhu          s3, -37(s9)
                  sb           t4, -54(s9)
                  add          s10, t0, t6
                  lbu          s1, 52(s9)
                  lb           a4, 57(s9)
                  lbu          s2, -53(s9)
                  sh           s9, 11(s9)
                  lb           t1, 16(s9)
                  andi         s5, a7, 73
                  lbu          t4, -60(s9)
                  sltiu        s2, s11, 1971
                  lbu          gp, -17(s9)
                  sltu         s6, a7, s7
                  andi         t5, t0, -1434
                  lb           t0, 36(s9)
                  sub          t2, s5, a6
                  lb           t3, -40(s9) #end riscv_load_store_rand_instr_stream_11
                  la           sp, region_1+333 #start riscv_load_store_rand_instr_stream_19
                  srl          t1, a0, s6
                  lbu          t2, 1(sp)
                  slti         gp, a4, 1937
                  add          gp, zero, gp
                  xor          a0, a6, sp
                  lhu          a0, -21(sp)
                  sb           s3, -30(sp)
                  xor          s4, a3, s11
                  auipc        s1, 44383
                  srai         s6, t3, 8
                  sb           t4, 5(sp)
                  sll          t5, t0, t5
                  slti         t5, s7, 1673
                  xor          ra, s11, s10
                  lbu          s7, 10(sp)
                  ori          s2, a0, -581
                  slli         s0, t0, 26
                  slli         s1, s0, 11
                  lui          s4, 896289
                  slt          s7, s7, sp
                  ori          s6, a2, 690
                  and          s4, t1, a1
                  sb           ra, 30(sp)
                  lbu          t2, 45(sp)
                  slt          a2, s5, a2
                  lhu          gp, 19(sp)
                  slt          t1, t2, gp
                  slli         t3, t1, 2
                  sltiu        s3, a0, -937
                  sb           a6, 31(sp)
                  srl          a7, t3, a5
                  xori         s5, ra, -1547
                  and          a0, s11, t1
                  sra          s4, s10, ra
                  slti         ra, sp, 196
                  lui          t2, 791673
                  xori         gp, s6, -1531
                  xor          t4, sp, s2
                  xori         a4, a6, 610
                  lb           a1, 9(sp) #end riscv_load_store_rand_instr_stream_19
                  la           s3, region_0+439 #start riscv_load_store_rand_instr_stream_13
                  xor          t2, a2, s11
                  xori         t0, t6, 197
                  sra          t5, s0, a1
                  lb           ra, 111(s3)
                  lb           tp, -96(s3)
                  sb           a4, 57(s3)
                  ori          a1, t6, -1290
                  andi         s2, t0, 666
                  sb           s7, 128(s3)
                  nop
                  lui          s1, 708688
                  lb           t6, -247(s3)
                  lbu          a7, -156(s3)
                  andi         zero, gp, 1289
                  ori          a7, a0, -654
                  xori         s10, s0, 1914
                  sw           s8, 241(s3)
                  sub          a4, a7, a0
                  lb           s10, 214(s3)
                  lui          a0, 854754
                  slt          s5, t3, s11
                  lui          t2, 759144
                  slt          a4, s1, s7
                  sb           a1, 64(s3)
                  xori         gp, s0, -1308
                  lbu          s7, 23(s3) #end riscv_load_store_rand_instr_stream_13
                  la           s9, region_1+1133 #start riscv_load_store_rand_instr_stream_12
                  and          a6, s9, a4
                  lbu          s1, -1032(s9)
                  lb           a0, 48(s9)
                  lb           sp, 232(s9)
                  auipc        t3, 965668
                  sb           s11, -224(s9)
                  sltiu        a0, s2, 363
                  auipc        s6, 627774
                  sub          s5, ra, s2
                  lbu          t2, -1010(s9)
                  lb           a7, -740(s9)
                  sltu         gp, a4, s6
                  xor          s3, t0, gp
                  sw           sp, 71(s9)
                  lb           a1, 42(s9)
                  andi         s0, s8, 1711
                  lui          a2, 715648
                  lhu          t1, 647(s9)
                  slli         gp, t6, 3
                  srli         s10, s11, 22
                  nop
                  lb           a7, -1078(s9)
                  slt          zero, a5, t3
                  and          a1, ra, t2
                  sb           s6, 728(s9)
                  nop
                  sub          sp, t0, s8
                  sra          s4, a6, t6
                  slli         s3, t5, 11
                  sra          s0, tp, a1
                  sb           zero, -1128(s9)
                  sb           s8, -67(s9)
                  andi         s11, a0, 239
                  add          t1, s6, t1
                  sb           s1, 832(s9)
                  sll          s4, a5, ra
                  lb           a6, 704(s9) #end riscv_load_store_rand_instr_stream_12
                  la           t3, region_1+1059 #start riscv_load_store_rand_instr_stream_0
                  sb           ra, -238(t3)
                  sub          s1, s3, a7
                  lbu          tp, -109(t3)
                  xor          t6, a2, a6
                  add          t6, s2, s4
                  sra          a7, tp, s9
                  sb           s8, -210(t3)
                  addi         a1, a0, 313
                  lbu          s0, -208(t3)
                  lb           a2, -161(t3)
                  sll          s11, tp, sp
                  ori          t4, ra, -1705
                  sb           s3, -98(t3)
                  srli         s2, t5, 26
                  lui          s0, 1036769
                  sb           sp, 114(t3)
                  addi         tp, zero, -2003
                  sh           s10, -75(t3)
                  xori         t2, a5, 324
                  and          s6, a2, t3
                  xor          t1, a2, a5
                  nop
                  slti         s4, t6, -1816
                  srl          t0, a4, s1
                  addi         ra, t1, -1909
                  sb           s4, -116(t3)
                  lui          a1, 914747
                  sltu         a7, s2, a5
                  sltiu        t0, s8, -1191
                  lbu          s7, 97(t3)
                  lb           t1, -9(t3)
                  sltu         tp, t1, s0
                  sltu         gp, ra, tp
                  slli         t6, a1, 16
                  lbu          gp, 56(t3)
                  sltu         s1, s0, s2
                  sh           s3, -83(t3)
                  nop
                  sh           s0, 65(t3)
                  xor          s0, tp, t1
                  andi         a2, a6, -1991
                  lhu          s0, -137(t3) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_1+1146 #start riscv_load_store_rand_instr_stream_14
                  sb           a1, -11(sp)
                  ori          s7, s0, 1698
                  lbu          s6, -9(sp)
                  sb           s2, 11(sp)
                  or           t4, zero, s6
                  lbu          s3, 3(sp)
                  srai         tp, s1, 2
                  lhu          s3, 4(sp)
                  lh           s11, 4(sp)
                  sh           s4, -10(sp)
                  sw           s6, 6(sp)
                  lbu          a2, -13(sp)
                  lb           s1, -11(sp)
                  or           ra, t6, gp
                  slti         ra, a3, 392
                  srai         t4, s11, 13
                  lh           ra, 10(sp)
                  lb           s11, -9(sp)
                  srai         t0, t4, 15
                  addi         s4, t1, -1599
                  and          t6, t2, s3
                  lb           a6, 0(sp)
                  lbu          ra, 1(sp)
                  lb           t4, -8(sp)
                  sb           a6, 5(sp)
                  xor          t0, a6, s7
                  sb           gp, 1(sp)
                  addi         a6, ra, 1684
                  sb           a1, -14(sp)
                  lbu          a1, 4(sp)
                  lw           t0, 10(sp)
                  sra          tp, a4, t0
                  srai         t1, tp, 6
                  sb           t0, -1(sp)
                  sra          a6, t6, s2
                  sra          s7, t5, t1
                  srli         t2, a4, 16
                  sra          t4, a3, gp
                  xori         a0, sp, -2008
                  lhu          a4, 12(sp) #end riscv_load_store_rand_instr_stream_14
                  beq          t4, a6, 13f
                  sra          zero, s1, a0
                  blt          s0, s7, 3f
3:                srai         a1, t5, 15
                  beq          s6, t2, 20f
                  bge          s2, t2, 16f
                  or           s7, t1, s3
                  andi         s6, tp, -595
                  bge          s1, s4, 23f
                  addi         t0, a3, 939
                  lui          t3, 129789
                  bgeu         s10, s0, 24f
                  beq          t3, s3, 32f
13:               slti         zero, s1, 1114
                  slti         s11, s2, 1739
                  auipc        a6, 300359
16:               or           gp, a7, gp
                  and          a1, sp, s3
                  bgeu         t5, a2, 19f
19:               bne          t5, sp, 37f
20:               sltu         tp, s7, a3
                  xor          s9, gp, a7
                  xor          s5, s1, t5
23:               xor          t4, s11, a6
24:               bge          tp, t1, 29f
                  bne          s7, s11, 34f
                  and          t0, a6, t5
                  xor          ra, s9, gp
                  add          t4, a4, a1
29:               sra          t6, a2, t1
                  slti         s4, t1, 770
                  sltiu        t0, t1, -101
32:               xor          gp, t3, a6
                  bne          tp, t2, 37f
34:               srli         t2, s1, 31
                  sltiu        a6, t0, -839
                  lui          s3, 230407
37:               nop
                  blt          zero, s3, 52f
                  xori         sp, a2, 1402
                  andi         t3, a5, -1781
                  andi         s7, s2, 988
                  xor          a4, s7, s10
                  slti         t1, sp, 131
                  xori         a6, t1, 1959
                  add          a0, tp, t6
                  slli         t3, s3, 31
                  andi         zero, s0, -1466
                  bltu         a5, a0, 68f
                  beq          s0, s6, 64f
                  andi         a2, t1, 1870
                  blt          zero, s7, 63f
52:               slti         s1, a3, -1460
                  ori          a1, ra, 1247
                  xor          a7, ra, s10
                  srli         s10, s2, 9
                  xor          ra, gp, t5
                  bgeu         t0, zero, 75f
                  slli         ra, t2, 4
                  or           t0, a0, ra
                  or           t2, ra, t1
                  sltu         s2, gp, zero
                  sra          a6, t5, s7
63:               andi         t2, t4, 645
64:               blt          s0, ra, 69f
                  xori         s1, s3, 1179
                  slt          a2, s3, a6
                  xori         a0, s9, 654
68:               bne          t5, s8, 75f
69:               slli         s5, sp, 7
                  sra          sp, t5, s0
                  ori          s0, t1, -1494
                  auipc        s11, 802880
                  sll          a1, sp, s0
                  slti         s6, t3, -994
75:               xor          s4, s9, t2
                  srl          a6, t4, s9
                  sltiu        t2, t3, 483
                  sll          t4, a7, ra
                  srai         a7, a7, 23
                  add          t2, t5, s0
                  srli         s10, a5, 27
                  slli         t6, a1, 12
                  srl          s9, t4, t5
                  add          s0, s9, s3
                  bne          sp, s9, 95f
                  nop
                  add          t1, t1, t5
                  blt          s6, sp, 104f
                  lui          t3, 400915
                  beq          t4, t0, 106f
                  sra          t6, s10, t0
                  lui          t4, 62148
                  srl          a7, sp, a3
                  bne          a0, a5, 98f
95:               slt          a7, t2, a0
                  xor          s1, sp, tp
                  nop
98:               ori          s4, s0, -863
                  slli         a6, s4, 18
                  or           s6, a0, s0
                  slli         s10, gp, 31
                  nop
                  beq          sp, tp, 119f
104:              bne          a1, t3, 121f
                  slt          s6, a5, s8
106:              lui          t0, 484835
                  bltu         s3, t1, 117f
                  addi         a7, gp, -979
                  auipc        t1, 330389
                  nop
                  slti         a4, zero, -360
                  lui          a2, 801074
                  nop
                  srl          t1, t1, s6
                  beq          zero, a7, 116f
116:              add          a6, a7, a6
117:              sra          s7, a6, t4
                  srai         t0, t1, 7
119:              srai         sp, a6, 6
                  bge          t2, gp, 133f
121:              ori          s3, s10, -1069
                  slt          s1, ra, s10
                  andi         t3, gp, -1933
                  slli         s9, s6, 31
                  slt          ra, t2, s11
                  addi         t1, t5, -1299
                  srai         t0, s7, 1
                  nop
                  sra          s0, a5, s1
                  slt          a7, sp, a4
                  srai         s4, a2, 11
                  bne          s2, s9, 145f
133:              blt          tp, s11, 151f
                  bgeu         t2, s8, 139f
                  srai         s10, s5, 5
                  auipc        t3, 463182
                  slli         zero, s10, 5
                  sltiu        s9, ra, -1179
139:              bne          a6, t1, 155f
                  bgeu         s11, a3, 149f
                  bne          t5, s4, 142f
142:              bltu         a2, t6, 154f
                  sltu         s11, s2, zero
                  sra          t1, s4, a5
145:              slli         a7, s5, 3
                  srli         t4, t4, 8
                  sltiu        t5, s1, 921
                  sll          a4, t0, a3
149:              bne          a6, t5, 153f
                  blt          s4, a3, 163f
151:              auipc        a2, 891367
                  slli         t5, s0, 7
153:              and          ra, s11, s2
154:              sub          a2, t6, t6
155:              slli         a7, tp, 0
                  slli         s5, s10, 1
                  srli         s6, s0, 24
                  srli         t6, s10, 9
                  sll          s4, a6, a0
                  and          s5, s3, zero
                  xori         zero, s11, -98
                  add          s1, s3, s11
163:              bgeu         a0, a5, 181f
                  ori          zero, a3, 1964
                  srai         t4, sp, 12
                  xori         s9, s8, -1713
                  sra          a4, s2, a1
                  srli         s11, tp, 15
                  beq          a7, s7, 189f
                  beq          s4, t2, 180f
                  lui          t6, 846985
                  srai         t4, t5, 6
                  bltu         s6, tp, 186f
                  auipc        s10, 359491
                  srli         t3, a4, 30
                  sra          t3, tp, t0
                  nop
                  xor          s4, t6, s5
                  auipc        a7, 872934
180:              andi         tp, a4, -408
181:              or           t2, s10, s3
                  addi         gp, a6, 1788
                  srli         s10, s1, 6
                  srai         s7, a6, 9
                  ori          a4, s7, 1782
186:              bltu         s9, tp, 206f
                  sltu         t3, sp, s8
                  bne          zero, s11, 189f
189:              beq          a4, s9, 202f
                  ori          gp, a2, 901
                  or           t4, s5, a5
                  xor          s9, ra, a5
                  sra          zero, s4, s10
                  auipc        s4, 43535
                  sub          a6, a7, t3
                  blt          t6, a1, 201f
                  addi         a0, a5, -1464
                  slti         a0, a4, 1340
                  beq          gp, s3, 215f
                  srai         s2, s6, 2
201:              xor          a2, a7, t5
202:              srli         zero, a7, 8
                  bltu         zero, gp, 218f
                  srli         a1, zero, 23
                  or           s1, a3, s6
206:              sra          s0, t2, sp
                  bltu         s9, t4, 208f
208:              xor          a2, ra, a7
                  sltiu        s3, s10, 400
                  auipc        a6, 328948
                  bne          s4, t1, 229f
                  addi         tp, s6, 340
                  sub          ra, a6, tp
                  xori         s4, a0, -726
215:              auipc        a2, 123909
                  nop
                  sub          sp, s9, t2
218:              bltu         s11, t0, 231f
                  srli         a1, t3, 19
                  or           t2, t2, zero
                  slli         t0, t1, 1
                  sltu         ra, s5, tp
                  sltu         a1, t1, s4
                  sll          s0, s4, a6
                  lui          s4, 477489
                  addi         zero, s6, 473
                  bltu         a1, t0, 241f
                  bne          tp, a3, 245f
229:              sll          t3, ra, a2
                  add          a0, t3, t1
231:              lui          s10, 865291
                  sra          t5, t5, a4
                  bge          t0, a7, 249f
                  slti         tp, t4, -1827
                  beq          s0, t5, 253f
                  srli         t5, s6, 0
                  nop
                  sub          s10, t4, tp
                  slli         s1, ra, 17
                  bgeu         t2, t0, 251f
241:              bltu         s6, s4, 256f
                  auipc        s2, 277617
                  blt          s2, a0, 247f
                  and          s10, a1, s9
245:              sltu         a2, s7, a4
                  sltiu        a2, s7, -1406
247:              bne          t0, sp, 254f
                  auipc        ra, 314636
249:              sltiu        s7, a2, -907
                  blt          tp, zero, 266f
251:              srai         s3, t2, 2
                  or           t0, t0, t0
253:              auipc        s0, 142640
254:              bne          a6, t4, 264f
                  sra          a4, t6, t5
256:              add          zero, a1, a5
                  bgeu         s4, s2, 258f
258:              nop
                  xor          t2, a6, s7
                  xori         t1, s9, 1652
                  sltu         t4, a7, s1
                  srl          t4, t3, t6
                  bne          a1, t1, 283f
264:              addi         s3, ra, -709
                  nop
266:              srl          gp, s0, a0
                  slli         s9, s10, 22
                  srai         a2, t5, 3
                  slt          t5, ra, a2
                  xori         t5, s10, 645
                  bgeu         s11, t6, 284f
                  xor          t1, a5, a3
                  sra          s7, sp, s9
                  sltiu        s1, s1, 561
                  la           t5, sub_9
                  addi         t5, t5, -42
                  xori         s10, ra, 485
                  slli         tp, t1, 17
                  bltu         t3, s9, sub_4_j10 #branch to jump instr
                  srli         s1, gp, 10
                  sub          sp, a4, s10
                  sll          sp, s4, a3
sub_4_j10:        jalr         t1, t5, 43 #jump sub_4 -> sub_9
                  addi         t3, a7, -1972
                  srai         a2, t0, 4
                  srli         s6, t1, 16
                  slt          s10, s7, a1
                  add          t0, s7, t0
                  add          t3, zero, a1
                  beq          s5, s9, 293f
                  auipc        s9, 796644
283:              lui          s11, 864924
284:              andi         a0, t0, 277
                  slli         t0, t2, 9
                  beq          s7, t3, 304f
                  srl          s9, s7, sp
                  slti         t6, s4, 1340
                  sra          t2, s7, t2
                  srl          a0, sp, s3
                  bgeu         a0, s3, 306f
                  bge          t3, zero, 309f
293:              slli         sp, gp, 5
                  add          s3, s7, s6
                  xori         t0, s2, 1797
                  addi         a7, s9, 686
                  beq          a7, s10, 304f
                  xori         s9, t0, -414
                  sll          sp, a3, a3
                  bltu         tp, sp, 316f
                  bltu         s8, s3, 319f
                  sltu         a4, a2, t2
                  xori         s0, s3, 24
304:              srl          s2, gp, s8
                  sltiu        s3, tp, -182
306:              sub          ra, t6, sp
                  addi         ra, s3, -385
                  ori          a7, t4, 891
309:              beq          s0, s4, 329f
                  lui          ra, 920591
                  sll          s10, t6, zero
                  slli         sp, a1, 7
                  sub          a0, s10, a6
                  andi         s11, t1, -343
                  beq          s0, t0, 316f
316:              andi         gp, s0, -470
                  and          s11, s1, sp
                  srl          s2, s8, a0
319:              srai         ra, s6, 7
                  bgeu         a2, t2, 338f
                  bltu         a1, s9, 334f
                  add          s11, s3, t1
                  sltu         s4, sp, t5
                  and          a4, a5, s3
                  lui          a0, 113931
                  sra          a7, t6, a3
                  srl          s0, t3, s10
                  addi         s4, a2, 1505
329:              bltu         s1, a3, 333f
                  ori          s11, sp, -233
                  slli         a7, s1, 19
                  bne          s3, a6, 333f
333:              ori          s11, s3, 838
334:              blt          t5, tp, 344f
                  addi         a0, a3, -1658
                  beq          s4, gp, 352f
                  sltu         s2, zero, sp
338:              addi         a1, t3, -2044
                  blt          t2, a7, 344f
                  bltu         sp, a5, 351f
                  slt          t3, s4, s9
                  sra          a4, a4, s0
                  sltu         t6, t5, a3
344:              add          s7, s8, a6
                  sll          s11, s6, t0
                  beq          s1, t4, 350f
                  sub          sp, s1, s6
                  andi         s4, s9, 397
                  bltu         a2, a3, 364f
350:              or           t4, s8, s0
351:              sub          s9, s6, ra
352:              bgeu         s11, t4, 357f
                  andi         a0, a3, 609
                  andi         t6, sp, -1034
                  and          t6, t4, s2
                  sub          a7, t3, s7
357:              beq          s6, t6, 370f
                  beq          s1, t3, 367f
                  addi         a2, zero, -684
                  sltu         sp, t5, t3
                  bge          s5, t5, 374f
                  bne          t5, a1, 378f
                  sll          s9, a0, sp
364:              nop
                  bge          a6, a5, 381f
                  add          t3, t1, tp
367:              nop
                  sll          t3, t4, a6
                  sll          s5, s11, a5
370:              bne          a4, t1, 384f
                  bgeu         sp, s6, 381f
                  andi         t2, s9, -1296
                  slti         t5, s5, -545
374:              ori          sp, s3, 7
                  bgeu         a3, a2, 382f
                  sll          t4, a5, a1
                  auipc        t1, 348316
378:              sra          s9, a7, a0
                  slt          a1, a0, s8
                  beq          s6, s5, 381f
381:              slti         s7, t3, 812
382:              slti         zero, sp, -1998
                  bltu         s1, sp, 401f
384:              srl          s1, ra, s7
                  bgeu         a5, s11, 397f
                  bne          s0, s1, 395f
                  and          s7, a5, t2
                  beq          s0, t3, 408f
                  srai         s11, t1, 23
                  slli         a2, a3, 28
                  srli         gp, t0, 14
                  sra          s3, s3, gp
                  xor          t3, s1, gp
                  nop
395:              sub          s7, a6, s10
                  sll          t5, s5, sp
397:              add          s4, s11, zero
                  ori          a2, s11, 728
                  xori         s3, a7, 1731
                  srli         tp, ra, 0
401:              sltu         t0, s2, a4
                  sub          sp, t5, sp
                  bgeu         s0, t0, 413f
                  sll          s5, s7, s11
                  addi         s4, gp, -337
                  nop
                  andi         a7, s4, 1802
408:              or           t0, t4, s3
                  xori         a4, s7, 1716
                  blt          a0, t6, 428f
                  ori          t2, t1, -1654
                  addi         ra, gp, -1101
413:              srai         gp, s7, 20
                  blt          s9, a2, 429f
                  add          zero, t5, ra
                  auipc        tp, 944537
                  auipc        a4, 836936
                  lui          a0, 513865
                  slt          s11, s4, tp
                  andi         t5, s1, 1586
                  and          s9, a2, a5
                  slt          s10, zero, a7
                  bgeu         s9, t5, 439f
                  xori         t3, t5, -1865
                  add          a1, t2, ra
                  slli         t1, s9, 22
                  sltiu        a1, t0, -1187
428:              bltu         t5, s11, 448f
429:              ori          s11, s2, 348
                  add          s2, t0, t2
                  blt          t2, s11, 445f
                  lui          s11, 329949
                  blt          zero, s11, 443f
                  blt          a6, a2, 450f
                  add          a2, s3, sp
                  sltu         a7, a5, t6
                  addi         t0, a1, -2019
                  slti         t0, s9, -1543
439:              nop
                  auipc        t2, 296148
                  or           sp, s8, sp
                  srai         ra, zero, 27
443:              srai         ra, t5, 26
                  sra          tp, s10, gp
445:              slti         s7, gp, -149
                  auipc        t3, 49763
                  add          t3, a2, a0
448:              bltu         t2, s7, 461f
                  bltu         a4, zero, 464f
450:              beq          s10, s0, 466f
                  or           gp, tp, t6
                  sll          ra, t5, a0
                  andi         zero, a7, 1176
                  srl          a7, gp, s2
                  sra          s5, t0, s8
                  slli         s11, zero, 4
                  ori          a1, s9, -804
                  blt          t6, t5, 459f
459:              bge          a0, s3, 463f
                  sra          a7, s6, t4
461:              and          s6, a4, s4
                  sltiu        a2, gp, -1406
463:              sll          a4, s9, t3
464:              auipc        s4, 458228
                  slli         s2, zero, 17
466:              srl          s0, t4, gp
                  nop
                  srli         zero, a6, 0
                  beq          ra, zero, 480f
                  beq          zero, a7, 488f
                  srli         s4, a4, 0
                  auipc        gp, 588270
                  slt          t4, zero, a3
                  andi         t2, s1, -946
                  sll          tp, t3, s9
                  srl          t0, t6, s8
                  addi         t6, a4, 1486
                  and          s0, t1, gp
                  srai         ra, s0, 5
480:              sltiu        gp, t5, 596
                  slli         a1, tp, 12
                  srli         s1, t5, 8
                  xor          s6, gp, a0
                  addi         zero, s5, 574
                  sub          a2, t1, s3
                  auipc        gp, 298980
                  add          t5, zero, s4
488:              srai         s6, t3, 29
                  addi         t5, t3, 925
                  sltu         a4, t4, s6
                  or           sp, s10, s1
                  lui          s0, 285453
                  sub          t5, s6, s8
                  sltu         a2, s0, gp
                  slli         ra, a0, 28
                  sltu         a6, a2, s6
                  slli         s9, s3, 9
                  bgeu         tp, t1, 499f
499:              lui          s5, 875602
                  bgeu         t1, gp, 513f
                  slli         a2, a3, 21
                  bne          s1, sp, 519f
                  lui          s4, 245618
                  bne          a3, ra, 509f
                  srl          gp, s0, s6
                  xori         s0, t5, -1820
                  la           s4, region_0+297 #start riscv_load_store_rand_instr_stream_16
                  and          zero, t0, s5
                  sltiu        zero, a0, 661
                  sltiu        s0, gp, -1510
                  srai         s9, s0, 8
                  lbu          s7, 2(s4)
                  sub          t3, a7, ra
                  slt          t4, sp, a1
                  add          s7, a1, t2
                  or           t1, a7, ra
                  lbu          a7, 6(s4)
                  addi         s9, t2, -1175
                  lbu          a1, -9(s4)
                  slti         t0, a1, -156
                  srl          a2, t6, t0
                  lbu          a1, -8(s4)
                  auipc        t0, 344270
                  sb           a1, 6(s4)
                  lui          a7, 541048
                  lw           t6, -9(s4)
                  lb           ra, 8(s4)
                  sll          t4, gp, t0
                  xori         s9, s8, 1215
                  lbu          t5, 4(s4)
                  lb           s0, -5(s4)
                  lh           s1, 7(s4)
                  or           gp, a0, t4
                  andi         t2, t5, 10
                  sltu         s11, t4, s7
                  sb           t5, 2(s4)
                  lb           sp, 9(s4)
                  sb           s3, 12(s4)
                  andi         s5, s11, -1379
                  srl          a2, s11, ra
                  slt          t2, t3, a5
                  auipc        s5, 918839
                  lb           t1, -12(s4)
                  slti         t5, t4, 122
                  lh           s11, 13(s4)
                  srli         s3, a5, 13
                  lbu          gp, -12(s4) #end riscv_load_store_rand_instr_stream_16
                  sll          s3, sp, tp
                  slti         s6, s5, 812
509:              bne          a1, s7, 525f
                  sll          t0, t1, s11
                  bltu         s4, a5, 524f
                  sra          s5, s4, t3
513:              slli         sp, s2, 13
                  beq          a7, a0, 518f
                  slt          a2, t4, t6
                  xor          s4, s9, a4
                  xori         s3, s6, 1260
518:              sra          s7, t0, ra
519:              srai         s2, s0, 21
                  sra          zero, s9, s9
                  slti         s3, a0, -847
                  lui          s6, 728632
                  or           t1, t3, s10
524:              bltu         a0, s5, 529f
525:              bne          s0, t2, 538f
                  bne          s5, s10, 530f
                  slti         s9, s9, 1433
                  ori          a6, t5, -679
529:              nop
530:              slt          a1, s10, t5
                  add          gp, t6, a3
                  xori         sp, a5, 857
                  xori         t6, t0, 73
                  ori          s0, s4, -2035
                  xori         a7, t6, -1542
                  slt          s0, ra, gp
                  addi         a6, a0, -1568
538:              sll          t0, zero, t6
                  slt          s10, a4, s1
                  add          zero, t1, a2
                  add          s1, s1, t5
                  lui          sp, 359183
                  slt          t5, s4, s2
                  slli         s10, a1, 23
                  add          zero, s10, a1
                  ori          s9, s10, -1141
                  lui          tp, 49447
                  sltiu        t3, t2, -1329
                  lui          sp, 859841
                  or           s2, s0, s4
                  xori         a7, zero, -1834
                  bge          t6, a5, 568f
                  slt          tp, t1, s1
                  srli         t5, a5, 7
                  sll          s5, s1, t3
                  lui          ra, 992752
                  addi         a0, s8, 640
                  add          s3, s7, a2
                  bltu         gp, a3, 575f
                  xor          s5, t4, t1
                  sra          t1, s9, tp
                  sll          t0, s6, s6
                  auipc        sp, 442702
                  and          s9, s1, a3
                  andi         s0, a7, 959
                  beq          s0, a6, 584f
                  andi         s4, a0, 1948
568:              srl          tp, s2, t0
                  srl          ra, t6, a7
                  beq          s4, s3, 590f
                  slt          a6, a7, zero
                  ori          a6, s5, -121
                  srl          s3, s11, a1
                  beq          a1, t4, 575f
575:              bgeu         t0, s0, 580f
                  slti         t0, s8, -1095
                  bge          s1, a0, 582f
                  bne          gp, s7, 592f
                  addi         s2, t2, 784
580:              add          s11, s6, s2
                  bltu         a7, a3, 597f
582:              sub          t0, t0, s8
                  bgeu         s6, a3, 593f
584:              slti         zero, gp, 1236
                  auipc        t2, 655649
                  bne          s8, a5, 602f
                  bgeu         s0, t2, 607f
                  add          a2, s9, s8
                  srli         s1, s7, 0
590:              beq          t5, t5, 605f
                  or           ra, s11, s10
592:              srli         s5, s6, 12
593:              sra          s3, s6, s11
                  auipc        s10, 703017
                  slti         s3, t0, 1489
                  addi         zero, s11, 1326
597:              bgeu         s9, s6, 610f
                  lui          t0, 245228
                  bgeu         t2, s11, 612f
                  sltiu        gp, gp, 944
                  lui          s0, 407543
602:              beq          s6, a4, 613f
                  andi         t2, a6, 306
                  and          t5, a2, t6
605:              addi         t2, s4, -994
                  auipc        t6, 917079
607:              bge          s1, tp, 620f
                  bgeu         gp, s0, 621f
                  slli         ra, a1, 15
610:              bltu         t0, s9, 617f
                  sltiu        gp, a7, -109
612:              slt          t4, t2, gp
613:              srl          t6, t4, a2
                  ori          a0, t3, 1895
                  bltu         zero, t4, 625f
                  or           a4, s4, s2
617:              bge          t5, gp, 626f
                  sll          s11, a3, s5
                  or           sp, s2, a4
620:              nop
621:              auipc        gp, 291241
                  sra          t2, a1, a1
                  bgeu         a6, s10, 624f
                  la           sp, region_0+1287 #start riscv_load_store_rand_instr_stream_4
                  lbu          ra, -12(sp)
                  lb           t6, -28(sp)
                  srli         a1, s10, 29
                  ori          zero, a4, -1669
                  lb           a4, 21(sp)
                  auipc        s0, 738303
                  sb           s6, 22(sp)
                  lw           a7, -59(sp)
                  sltiu        s9, s2, -884
                  lb           ra, 64(sp)
                  slt          s0, s4, s1
                  lhu          gp, 53(sp)
                  lh           t4, -39(sp)
                  sb           s2, -8(sp)
                  lhu          s2, 21(sp)
                  sb           s9, -61(sp)
                  xori         s6, s7, 1166
                  lh           s3, 51(sp)
                  lw           s3, -23(sp)
                  srl          t2, s3, s7
                  sll          t0, t1, s0
                  sub          s4, t3, s8
                  sb           t1, 56(sp)
                  xori         a6, gp, 1156
                  slt          s3, a3, gp
                  add          t4, s2, sp
                  slti         a0, a6, -1252
                  lb           s11, 10(sp)
                  xor          s1, s5, t4
                  lb           ra, -61(sp)
                  sub          a2, s7, s3
                  lbu          s0, 16(sp)
                  sb           s9, -6(sp)
                  lbu          ra, 46(sp)
                  sb           a2, 64(sp)
                  sra          s1, s4, s7
                  andi         a6, s1, -379
                  slli         a0, s0, 25
                  lb           a0, 46(sp)
                  sb           t5, 19(sp)
                  lb           s7, 53(sp)
                  sb           a3, 58(sp) #end riscv_load_store_rand_instr_stream_4
624:              add          s11, a0, tp
625:              bne          t3, s0, 626f
626:              addi         s2, s1, 1064
                  sltiu        s10, s4, 1847
                  sub          a0, s9, t1
                  srli         s10, s7, 2
                  sll          s4, a6, ra
                  nop
                  auipc        t3, 429091
                  slli         t5, s9, 19
                  la           a4, region_1+1859 #start riscv_load_store_rand_instr_stream_3
                  auipc        a2, 27790
                  or           ra, s1, a0
                  auipc        s0, 7169
                  xori         s10, t1, -366
                  andi         s11, t4, 750
                  sb           t2, 61(a4)
                  lh           ra, -55(a4)
                  srli         s6, a6, 29
                  sltiu        a7, sp, -1888
                  ori          s0, t3, 250
                  andi         s2, s9, -2002
                  lbu          s2, -22(a4)
                  lb           s0, -57(a4)
                  slti         t4, ra, 1216
                  sb           tp, 46(a4)
                  sra          s4, a7, a7
                  sra          s0, s1, t3
                  ori          s4, t4, -931
                  andi         sp, a4, 912
                  sb           ra, -50(a4)
                  lui          s10, 594144
                  sltiu        t3, s4, 1932
                  xor          s0, zero, t2
                  lbu          t0, 26(a4)
                  sltu         zero, t5, a7
                  sh           a3, -3(a4)
                  lb           t5, -16(a4)
                  lhu          sp, -61(a4)
                  srli         a6, a2, 15
                  sb           sp, 52(a4)
                  sb           s3, 27(a4)
                  slli         t2, t0, 9
                  sb           s5, -36(a4)
                  lbu          s3, -17(a4)
                  xor          a7, a6, s10
                  xori         zero, s11, 1726
                  srli         s1, a1, 18
                  slti         a1, a4, -1127
                  lb           t0, 44(a4)
                  and          s11, s9, gp
                  srai         zero, s5, 10
                  lbu          s9, -36(a4)
                  xori         t5, t1, -799
                  xori         t2, a4, -1064
                  lh           ra, 11(a4) #end riscv_load_store_rand_instr_stream_3
                  ori          s10, s0, 291
                  ori          s2, gp, -1864
                  sll          s2, s6, t6
                  srli         t5, t3, 30
                  srai         gp, t0, 19
                  and          s4, a7, t2
                  sub          t2, a5, t1
                  ori          t5, s0, -459
                  bge          a0, s6, 660f
                  srai         t3, tp, 19
                  lui          a7, 286552
                  beq          s2, zero, 663f
                  slli         s10, t3, 4
                  sltu         t6, a5, s3
                  sll          s3, t3, t3
                  xor          s11, a1, t1
                  beq          a5, s11, 667f
                  nop
                  slt          t0, a0, sp
                  ori          t6, zero, 1722
                  nop
                  lui          s5, 504305
                  lui          s5, 662239
                  addi         a2, s1, -1552
                  beq          sp, s6, 670f
                  bltu         ra, t5, 674f
660:              sub          a2, s4, t0
                  srli         t1, s11, 6
                  add          s4, a6, s6
663:              sltiu        t6, s6, 1535
                  blt          ra, s2, 668f
                  beq          a2, s11, 672f
                  bne          t4, tp, 683f
667:              slt          s6, sp, s7
668:              bne          t0, s10, 683f
                  slti         s11, tp, -77
670:              add          s7, t3, a1
                  xor          s9, gp, s0
672:              nop
                  srli         t5, s4, 29
674:              sll          s11, a3, ra
                  sltiu        s4, sp, -892
                  sltiu        a4, sp, -828
                  sltu         t2, s11, s5
                  slti         a0, s0, 1065
                  ori          s4, s0, -1327
                  nop
                  bne          a1, a7, 682f
682:              srl          t1, ra, t1
683:              sll          gp, sp, s5
                  ori          s5, s0, 1561
                  add          sp, s0, s1
                  slli         ra, gp, 16
                  nop
                  bge          t2, s5, 706f
                  addi         s5, s1, -261
                  addi         a2, s6, -922
                  slt          sp, t0, t1
                  sltiu        a6, a7, -50
                  addi         a6, s7, -1724
                  or           a0, s9, a2
                  slti         s11, t0, -531
                  sra          t3, gp, t6
                  sub          s4, s4, s11
                  slli         s4, a0, 0
                  add          s7, s3, t4
                  sra          gp, t1, t0
                  add          s2, s2, s7
                  or           t4, t4, t5
                  lui          s1, 515322
                  srai         a2, tp, 12
                  auipc        s3, 917067
706:              add          tp, ra, t5
                  sra          s1, s4, sp
                  and          t1, a2, s5
                  ori          ra, a6, 1266
                  bge          s3, tp, 730f
                  bge          t6, s8, 716f
                  srli         s0, s7, 8
                  nop
                  and          t4, t3, a5
                  auipc        t3, 24822
716:              blt          s0, a7, 726f
                  sll          gp, a1, a7
                  bne          t1, s10, 722f
                  nop
                  srai         t0, a1, 20
                  xori         a4, t5, 1159
722:              slt          s7, sp, s5
                  blt          a7, gp, 739f
                  bne          s4, a7, 738f
                  lui          a2, 772884
726:              andi         t4, tp, 434
                  auipc        s6, 433640
                  srai         t0, sp, 18
                  sub          s4, s3, s2
730:              srl          a0, t4, sp
                  slt          sp, t3, t6
                  sub          gp, s5, ra
                  xor          s5, sp, t0
                  slli         t1, gp, 9
                  bge          t6, t4, 747f
                  nop
                  ori          s0, a2, 590
738:              sltu         ra, s7, a6
739:              lui          s2, 887625
                  slli         s5, a0, 20
                  slti         a7, t4, -197
                  sltu         gp, s10, t3
                  sra          t3, s3, t0
                  bgeu         s11, t0, 757f
                  bge          a2, s3, 761f
                  sll          gp, a1, s7
747:              auipc        s4, 552106
                  xor          s7, ra, a3
                  slt          t4, t5, s4
                  sll          ra, a5, t2
                  and          t1, a4, t4
                  bne          s1, a5, 753f
753:              srai         s1, t0, 16
                  sub          sp, s7, s11
                  xor          t1, s0, s2
                  bne          s11, ra, 771f
757:              bge          tp, s7, 773f
                  slti         a1, t0, 414
                  bltu         s4, a4, 777f
                  sub          s6, zero, a7
761:              add          zero, s11, a5
                  slt          sp, s4, a4
                  slli         t2, s1, 23
                  sltiu        s4, s4, -1815
                  srli         ra, s2, 6
                  bge          a5, s1, 770f
                  bne          a0, a7, 778f
                  beq          a0, s8, 781f
                  slli         s3, a1, 10
770:              addi         a6, a2, -381
771:              nop
                  bgeu         zero, t1, 781f
773:              addi         a0, s5, 1699
                  srli         s0, t1, 18
                  sltu         s5, s0, s9
                  slti         t2, gp, -189
777:              slli         t4, a2, 14
778:              sra          t2, a3, t5
                  beq          s0, a4, 795f
                  bltu         s2, t5, 800f
781:              slti         a0, a4, -1070
                  add          t6, s0, a7
                  add          a1, s9, ra
                  nop
                  addi         s7, s10, -1843
                  xor          tp, gp, s9
                  ori          t5, s10, -1724
                  slt          t1, t6, s5
                  sltu         s4, gp, a3
                  xori         s1, t6, -277
                  bne          a4, ra, 804f
                  lui          zero, 354266
                  xori         a1, a7, 1345
                  xori         s11, s2, -1815
795:              or           s1, ra, zero
                  andi         t6, s0, 642
                  sltu         t2, t3, t2
                  srli         s2, s7, 15
                  blt          gp, s5, 804f
800:              sra          t6, a3, ra
                  bge          t4, t0, 819f
                  srai         s6, t2, 30
                  sltu         a4, a5, a4
804:              slli         s3, s2, 2
                  srai         s0, s3, 23
                  srai         zero, s2, 30
                  and          a2, t6, a4
                  sll          t1, t3, t3
                  bge          zero, a3, 819f
                  addi         s1, a2, -1283
                  sll          a4, s2, t0
                  slt          tp, tp, zero
                  sub          tp, a3, a5
                  beq          s6, sp, 827f
                  slli         a6, a5, 27
                  bltu         s1, t6, 817f
817:              sra          t6, s3, a7
                  sll          s4, s11, s1
819:              sltu         t6, zero, gp
                  nop
                  nop
                  slti         s11, t3, -681
                  slli         s6, s2, 31
                  lui          s4, 451376
                  bgeu         s3, s3, 841f
                  sra          s2, s6, a4
827:              xori         s2, a4, -763
                  blt          a1, t2, 833f
                  xori         s3, s11, -1942
                  add          sp, s8, s1
                  addi         s2, sp, -1224
                  beq          s4, s11, 833f
833:              sltiu        t0, t4, 1379
                  slti         s3, a6, 889
                  xori         s5, s11, -786
                  beq          s3, t6, 846f
                  sub          gp, gp, a4
                  srai         s9, s4, 16
                  sltiu        t2, a1, -495
                  beq          t5, s1, 847f
841:              srli         a6, s11, 4
                  auipc        s9, 561508
                  sub          s5, s3, t3
                  bge          a5, s0, 845f
845:              bgeu         t3, a1, 855f
846:              slt          a4, a0, s7
847:              srai         t2, t1, 10
                  ori          t3, t2, 948
                  auipc        a1, 1014415
                  sltiu        t3, a7, -515
                  ori          a2, a6, 1706
                  srl          t5, a2, a5
                  bge          s9, sp, 866f
                  slti         t1, zero, -1565
855:              sll          s1, tp, ra
                  sub          zero, a3, s7
                  sltu         t2, s7, t3
                  auipc        s10, 535642
                  addi         s3, a1, 762
                  add          tp, s11, t0
                  bge          s1, a7, 874f
                  bltu         s3, s3, 880f
                  sltiu        s9, s11, -1294
                  sltu         a7, t2, s2
                  sra          s11, s6, t4
866:              xor          t0, a7, a7
                  blt          t5, s0, 881f
                  srl          a0, t2, t1
                  nop
                  srl          s1, s1, s5
                  xori         s3, a5, -792
                  beq          t2, t5, 885f
                  ori          ra, t1, 1595
874:              andi         s4, s1, -1689
                  srli         sp, a4, 10
                  sub          s7, gp, gp
                  and          s4, a4, a3
                  srli         t4, s9, 15
                  ori          t6, t5, 651
880:              sltu         s9, gp, s1
881:              nop
                  srai         t4, s5, 14
                  bgeu         s9, s8, 896f
                  beq          a2, sp, 885f
885:              slli         zero, t4, 3
                  bltu         s5, s6, 906f
                  slti         gp, s8, -582
                  and          s6, a7, s11
                  andi         sp, gp, -949
                  bgeu         t2, s5, 905f
                  bltu         a7, a4, 911f
                  bne          t3, a5, 908f
                  sll          s2, t5, gp
                  sltiu        s4, t0, 721
                  auipc        a7, 987635
896:              auipc        s9, 153999
                  blt          a2, a2, 902f
                  beq          tp, s11, 915f
                  auipc        s4, 387337
                  xori         t0, gp, -1906
                  sltiu        t0, t5, -609
902:              or           t1, a4, t4
                  slli         s2, t0, 23
                  auipc        s2, 118489
905:              ori          tp, t1, 578
906:              srli         s10, s4, 21
                  andi         a4, a2, -205
908:              sltiu        s7, t6, 323
                  xori         t3, s9, 946
                  ori          gp, t3, 1681
911:              srli         zero, a3, 23
                  andi         s6, t3, 1721
                  slti         t3, s7, 1154
                  xor          t6, a7, t1
915:              bne          s11, a6, 924f
                  ori          gp, s8, 506
                  sub          sp, zero, t4
                  beq          s8, s5, 929f
                  bne          s2, a4, 935f
                  blt          s1, s0, 935f
                  la           ra, sub_6
                  and          a4, t5, t5
                  addi         t2, s11, 561
                  addi         ra, ra, 259
                  ori          s1, s8, -410
                  slli         t0, s4, 1
                  slti         a6, t4, -833
                  sra          zero, a4, a3
sub_4_j9:         jalr         t1, ra, -258 #jump sub_4 -> sub_6
                  nop
                  beq          s3, a1, 938f
                  xori         s2, t2, -1783
924:              ori          t6, s9, -917
                  addi         s3, t0, 332
                  bge          s6, a0, 938f
                  nop
                  sll          s1, s9, a5
929:              slt          t2, t6, a2
                  blt          t0, a6, 948f
                  bgeu         sp, a1, 949f
                  sltu         t6, t6, a1
                  sltu         gp, a0, s10
                  sra          s11, a7, s1
935:              sll          t1, s2, s7
                  sltu         a4, t4, t6
                  addi         a6, s2, 1135
938:              sll          t3, a6, s2
                  xori         s6, t0, -1687
                  sub          t3, a4, a5
                  sll          s9, s2, s2
                  sub          t0, a3, s6
                  slt          tp, a4, s6
                  bltu         a3, t6, 948f
                  or           ra, t3, t2
                  srli         s1, t5, 4
                  lui          s9, 817974
948:              sltu         s3, t5, t3
949:              lui          t4, 7957
                  slli         t2, a0, 9
                  sll          s9, s7, t1
                  bne          s5, s2, 956f
                  sub          t4, gp, s6
                  slti         s5, s5, -43
                  sltiu        s6, t4, 494
956:              bne          t4, s7, 957f
957:              xor          ra, a0, s3
                  bgeu         s3, s11, 968f
                  or           s3, a5, t3
                  sra          t1, s11, a0
                  lui          s3, 447993
                  or           tp, t5, a1
                  or           s6, sp, s7
                  xor          ra, t1, s2
                  lui          a7, 882799
                  auipc        zero, 672514
                  sra          ra, t3, s3
968:              bgeu         s7, a7, 978f
                  ori          s10, a7, -1175
                  sub          s1, t5, ra
                  ori          t6, a4, -1127
                  bltu         tp, a0, 973f
973:              nop
                  slti         t4, t6, 772
                  sltu         s9, a7, t2
                  srai         gp, t2, 9
                  and          a4, t5, s10
978:              sll          a4, s4, s8
                  beq          a7, s2, 996f
                  slti         gp, s4, 1364
                  bne          t5, a4, 999f
                  auipc        t6, 272953
                  sub          ra, t6, sp
                  blt          s5, a4, 997f
                  bltu         a6, s3, 989f
                  slt          a6, a7, a5
                  or           s1, t2, zero
                  nop
989:              srl          s10, t4, a2
                  srli         zero, s5, 25
                  nop
                  srai         ra, a1, 2
                  addi         s11, s6, -850
                  addi         s2, s10, 61
                  ori          a4, s6, 1340
996:              bgeu         a2, zero, 1009f
997:              and          ra, a1, gp
                  addi         t3, s7, 1062
999:              sltu         s5, gp, s5
                  bgeu         s1, a4, 1018f
                  lui          a2, 514128
                  nop
                  srai         t3, t5, 11
                  and          s9, t5, s1
                  bltu         t1, s9, 1025f
                  srl          t2, t4, t6
                  andi         t3, s8, -1774
                  addi         a7, s6, -226
1009:             andi         sp, a2, 1917
                  addi         a1, t3, 311
                  or           t4, t2, t4
                  slt          s0, t2, a2
                  sra          t6, t5, s6
                  bltu         s5, t1, 1018f
                  sll          s5, s11, zero
                  sll          s9, a0, t6
                  slt          t2, a5, a4
1018:             andi         sp, t1, 1026
                  auipc        t3, 1001537
                  nop
                  bne          s5, a2, 1026f
                  slti         s11, s10, -1173
                  slli         s9, a7, 9
                  addi         a4, s1, -832
1025:             or           t5, s8, s9
1026:             slli         s9, sp, 6
                  srl          s11, s1, s7
                  xori         s10, a0, -781
                  bltu         a7, a5, 1038f
                  nop
                  bltu         tp, s4, 1049f
                  blt          a5, s8, 1048f
                  srli         a4, s1, 14
                  and          a6, t2, s11
                  beq          a1, t5, 1050f
                  bltu         s9, gp, 1043f
                  andi         a0, s6, 1870
1038:             slt          zero, t1, sp
                  slli         zero, a6, 2
                  ori          s5, a2, -17
                  srl          t6, a0, sp
                  bltu         a3, tp, 1058f
1043:             srl          t5, a6, s2
                  sra          s3, s1, gp
                  slli         a0, s1, 5
                  bne          s3, zero, 1060f
                  lui          a4, 686114
1048:             srli         a6, a1, 6
1049:             srai         t1, a4, 3
1050:             bltu         s11, a2, 1063f
                  beq          s4, s6, 1063f
                  or           s4, t3, t4
                  slli         a7, a0, 9
                  ori          s6, s4, 459
                  sra          t4, zero, a5
                  sll          gp, t2, a1
                  sltu         tp, sp, t3
1058:             add          s7, s4, s0
                  bltu         a4, s7, 1074f
1060:             lui          a2, 87923
                  sra          a1, a1, t4
                  sltiu        t3, a3, -1644
1063:             bge          a0, t0, 1068f
                  addi         a2, a0, 750
                  srai         a2, tp, 6
                  xor          a0, s0, sp
                  bgeu         a7, t5, 1068f
1068:             addi         t3, a0, -797
                  add          t2, s0, t2
                  srai         a0, t1, 0
                  slli         s9, s8, 26
                  slt          t3, s9, s3
                  xor          ra, a6, t4
1074:             sub          a0, t4, s5
                  slti         a1, tp, 1496
                  auipc        a0, 215872
                  bltu         s9, a6, 1090f
                  bne          s8, s8, 1094f
                  srl          s11, s11, a0
                  ori          s2, a0, -1399
                  sub          t0, s0, sp
                  sll          a7, t6, t3
                  sll          a4, a6, s7
                  addi         tp, s10, 1077
                  slli         t3, t2, 26
                  lui          s4, 346776
                  slt          t6, a1, s0
                  or           a4, s10, s3
                  bltu         t0, ra, 1100f
1090:             andi         s7, s1, 691
                  bltu         s2, s11, 1107f
                  sub          s0, sp, s9
                  xor          s6, t2, s8
1094:             xori         a1, a6, 1202
                  beq          a4, a3, 1115f
                  slti         a4, ra, -289
                  xori         s5, s3, 1693
                  auipc        s0, 403524
                  bltu         t3, a1, 1116f
1100:             sub          ra, s6, t4
                  bltu         s7, s2, 1106f
                  srl          zero, sp, ra
                  ori          t0, s9, -2020
                  and          a4, s8, a5
                  xor          t3, s4, gp
1106:             xor          t5, a7, gp
1107:             sub          s0, s1, a5
                  bgeu         s3, s3, 1120f
                  slti         s3, a5, 715
                  addi         a0, a7, -1963
                  addi         t3, sp, -199
                  sub          s3, t4, a7
                  blt          s2, s7, 1129f
                  sll          a7, a4, t3
1115:             slt          s11, s4, t5
1116:             bne          s8, ra, 1120f
                  bge          a2, a1, 1122f
                  bltu         s7, t5, 1134f
                  slti         a0, t6, -750
1120:             xori         s10, a3, -486
                  bge          a4, t2, 1137f
1122:             srl          s1, t4, s6
                  andi         a0, s5, -598
                  srai         s3, s4, 5
                  srli         s5, zero, 0
                  nop
                  sub          t5, gp, a5
                  bgeu         t6, s2, 1143f
1129:             slli         t2, s7, 20
                  blt          t3, a2, 1140f
                  sub          s10, gp, a2
                  add          s1, s5, t1
                  slti         s0, a3, -1327
1134:             add          t5, s8, s0
                  nop
                  addi         s7, t5, -956
1137:             sra          t0, gp, a5
                  la           s3, region_1+1324 #start riscv_load_store_rand_instr_stream_2
                  auipc        gp, 59391
                  slti         s7, tp, -1186
                  lbu          s0, 13(s3)
                  auipc        s2, 460234
                  sb           ra, 7(s3)
                  nop
                  sb           a4, 3(s3)
                  andi         zero, ra, 1713
                  or           s5, s5, a2
                  slti         s7, t5, -825
                  addi         sp, t3, -1071
                  sltiu        t5, a7, -1455
                  xor          t0, gp, s8
                  add          t0, s10, a3
                  sub          s6, s4, a3
                  lw           s9, 16(s3)
                  lb           s2, -1(s3)
                  sb           s11, 8(s3)
                  addi         a6, t2, -1417
                  sll          t4, a4, s1
                  lbu          s2, -11(s3)
                  nop
                  andi         t6, a5, 768
                  sll          a4, a1, s2
                  srl          t5, a3, s7
                  sll          s6, s11, s3
                  lh           t1, -14(s3)
                  srl          s10, t3, s5
                  or           a4, a0, a6
                  sltu         a6, s6, t6
                  lb           s7, -1(s3)
                  lw           s5, 12(s3)
                  lb           zero, 13(s3)
                  lbu          a2, 15(s3)
                  lb           a4, 12(s3)
                  ori          a6, t4, 478
                  lbu          ra, -6(s3) #end riscv_load_store_rand_instr_stream_2
                  and          tp, t1, a3
                  add          t4, t5, a6
1140:             slti         sp, t3, 687
                  or           a1, a1, a3
                  xor          a1, ra, ra
1143:             auipc        s4, 685887
                  blt          a1, s1, 1162f
                  auipc        a0, 685696
                  beq          s7, tp, 1159f
                  bltu         tp, t1, 1165f
                  slti         t2, a5, -1648
                  ori          s3, t2, 435
                  auipc        gp, 331517
                  beq          tp, tp, 1164f
                  nop
                  srli         a0, s7, 8
                  sll          ra, s11, a0
                  addi         sp, t5, -1907
                  sub          s2, s3, s0
                  slti         s11, a6, 1983
                  srai         s6, a5, 22
1159:             sltu         t1, s8, a1
                  nop
                  nop
1162:             slt          t0, tp, s3
                  ori          s1, s0, 1646
1164:             and          sp, s11, s11
1165:             nop
                  bltu         t2, a6, 1175f
                  sltu         a2, t5, sp
                  addi         a2, s10, 1201
                  xor          tp, gp, s4
                  srl          t3, s7, a3
                  srli         a0, s6, 12
                  addi         zero, zero, 1058
                  or           t0, s5, a4
                  ori          a6, t1, -586
1175:             add          t2, a4, a7
                  xori         s6, t0, 831
                  or           t5, ra, s0
                  ori          a2, a0, 1227
                  lui          s10, 542963
                  srli         s3, sp, 26
                  srli         gp, a1, 28
                  slt          s4, ra, zero
                  srli         t3, s6, 29
                  bne          a0, s7, 1204f
                  slli         s10, t4, 11
                  srai         t0, t3, 25
                  bne          t6, s7, 1200f
                  sltu         a2, s3, t4
                  xor          s9, s2, zero
                  beq          a7, a6, 1208f
                  add          t3, s9, a0
                  xori         t4, gp, 1446
                  sra          zero, a7, s11
                  srai         ra, a3, 26
                  slti         s11, s10, -1165
                  sll          s10, s0, a2
                  and          s2, s6, s8
                  srli         s0, t3, 11
                  sra          s10, a2, a1
1200:             slli         a4, s5, 15
                  bgeu         t4, s4, 1212f
                  lui          s1, 1024749
                  or           a7, gp, s6
1204:             ori          s6, ra, 1399
                  sra          s5, s3, t3
                  sll          s11, s4, t1
                  sra          sp, s10, a3
1208:             bgeu         gp, sp, 1209f
1209:             bgeu         s4, a3, 1213f
                  beq          t3, a7, 1226f
                  bge          s5, a5, 1224f
1212:             ori          s5, ra, -1857
1213:             and          s7, a0, s6
                  srli         s6, s8, 12
                  sra          zero, a7, s10
                  lui          a7, 199973
                  sll          t4, a1, tp
                  addi         s1, a0, -565
                  add          t1, s9, s1
                  bltu         sp, a3, 1240f
                  sub          s2, s9, gp
                  srli         a1, t5, 22
                  lui          t1, 259184
1224:             slt          sp, gp, a2
                  xor          a2, s1, a4
1226:             slli         s4, s11, 2
                  xor          ra, s10, s7
                  sub          a2, a1, a3
                  addi         tp, t3, -1290
                  nop
                  slli         s7, a2, 17
                  sltiu        s9, t4, -1884
                  srai         s3, gp, 16
                  nop
                  slli         t6, s10, 2
                  ori          t0, s9, -481
                  blt          t5, s1, 1252f
                  add          s1, gp, s7
                  xori         t3, s9, 1001
1240:             slti         s6, a2, 388
                  addi         t3, a6, -751
                  sra          s11, a0, s2
                  sltiu        t6, a7, 1659
                  nop
                  auipc        t5, 801118
                  srli         s6, a2, 11
                  bgeu         s0, s7, 1261f
                  sub          s9, a3, s6
                  srli         a6, s6, 31
                  blt          s1, s7, 1260f
                  bltu         s5, s9, 1252f
1252:             add          t0, t1, a4
                  auipc        s11, 88796
                  bgeu         a1, t4, 1255f
1255:             blt          a0, s4, 1262f
                  sltiu        t5, s0, 917
                  sll          a6, sp, s6
                  srai         t6, s2, 21
                  ori          s7, s0, 1666
1260:             srli         s4, s7, 18
1261:             slli         a6, a5, 28
1262:             sltu         s0, a0, s3
                  and          t1, a6, a4
                  srai         s0, a2, 3
                  add          s9, gp, s5
                  auipc        a6, 1030779
                  addi         s3, s8, 658
                  sub          t2, a7, s11
                  xori         tp, s3, 1263
                  addi         s6, t3, 218
                  bltu         s4, t0, 1272f
1272:             or           t1, s9, a7
                  sll          zero, s11, s2
                  sra          t6, a4, gp
                  bne          t2, t4, 1285f
                  sltu         gp, t5, s4
                  srai         a1, ra, 27
                  bge          t5, s1, 1295f
                  sll          zero, t0, zero
                  sltiu        s0, t6, -1954
                  lui          ra, 441066
                  beq          s6, a3, 1289f
                  nop
                  slt          s6, s1, zero
1285:             auipc        s10, 346912
                  srl          t6, s10, s0
                  sltiu        sp, t5, -1384
                  xor          t6, sp, a2
1289:             srl          s2, a5, s5
                  xor          t5, t4, s1
                  bne          a7, t2, 1307f
                  auipc        a1, 720064
                  addi         s0, sp, 1273
                  bgeu         a4, zero, 1309f
1295:             slli         gp, t3, 18
                  slt          ra, tp, a1
                  srai         a7, t6, 28
                  beq          s11, s6, 1302f
                  lui          a7, 897222
                  slli         a7, s6, 8
                  bge          s6, t5, 1306f
1302:             bne          s7, a6, 1303f
1303:             add          a7, tp, t3
                  bgeu         s3, tp, 1324f
                  xori         s0, t5, -113
1306:             beq          s5, a6, 1324f
                  or           s4, tp, t3
                  slt          a6, zero, t0
                  and          a4, gp, a0
                  lui          a0, 701568
                  la           ra, sub_8
                  srli         s2, s2, 18
                  addi         ra, ra, -421
                  sltu         s4, a5, s8
sub_4_j8:         jalr         t1, ra, 422 #jump sub_4 -> sub_8
1307:             srai         s10, a2, 3
                  sltiu        s10, s3, -2034
1309:             and          gp, a0, sp
                  sub          s10, s0, a2
                  xor          s9, s6, t5
                  xor          a2, s7, s1
                  andi         s0, s5, 1363
                  xor          a7, tp, s1
                  slti         gp, a7, -1668
                  nop
                  beq          s4, a0, 1330f
                  slti         a4, s9, 1521
                  srai         s7, s0, 17
                  add          a6, s8, s1
                  slli         s11, gp, 28
                  sltu         s4, s9, t2
                  add          a7, s3, zero
1324:             slli         t3, s8, 6
                  sltu         s9, a7, a6
                  auipc        sp, 762834
                  beq          a6, s4, 1341f
                  sll          a7, t1, a1
                  sll          a4, s6, a5
1330:             sll          a7, a5, s8
                  blt          gp, s2, 1347f
                  slti         a4, s1, 22
                  bge          a5, ra, 1338f
                  sltu         s0, ra, s9
                  slt          t4, ra, s10
                  xor          a1, t4, a1
                  sll          t4, a6, tp
1338:             nop
                  nop
                  addi         s1, a4, 152
1341:             blt          gp, a6, 1357f
                  lui          a6, 152887
                  sub          s1, ra, s3
                  addi         s7, zero, 996
                  addi         s10, s7, -1445
                  addi         t0, ra, 1896
1347:             slti         sp, s10, -188
                  slt          s9, t2, s2
                  slli         sp, a6, 13
                  sltu         a6, a0, a6
                  sll          s0, tp, s5
                  srai         a4, a1, 10
                  sll          a4, a7, t4
                  la           t1, region_1+1279 #start riscv_load_store_rand_instr_stream_5
                  lbu          s4, -15(t1)
                  ori          ra, t2, -991
                  ori          s5, a4, 194
                  and          s2, t4, s7
                  lh           a6, 3(t1)
                  sra          a0, a0, t5
                  lbu          sp, 14(t1)
                  sh           s1, 15(t1)
                  lb           s6, 14(t1)
                  lbu          a7, 4(t1)
                  lbu          ra, 8(t1)
                  lb           s5, -2(t1)
                  srl          s2, s1, s2
                  lh           s3, -15(t1)
                  sltiu        a6, s0, 762
                  andi         s6, gp, -275
                  lbu          s5, 0(t1)
                  lbu          s11, -4(t1)
                  lbu          s0, 16(t1)
                  lb           s0, 8(t1)
                  sub          s1, s0, t3
                  addi         a1, sp, 250
                  sll          gp, zero, ra
                  srli         t5, a4, 20
                  sb           gp, 0(t1)
                  sltiu        s7, a4, -888
                  xori         s5, a3, -677
                  and          s11, t2, tp
                  lhu          t0, 7(t1)
                  lhu          s6, 15(t1)
                  or           t0, s5, a3
                  srai         a6, s3, 7
                  srl          a1, t5, t3
                  lhu          t3, -7(t1)
                  lhu          a0, 3(t1)
                  lbu          s4, -8(t1)
                  sw           s10, -3(t1)
                  lh           s7, -9(t1)
                  lw           t3, -7(t1)
                  lbu          a0, 5(t1)
                  sb           s0, -2(t1)
                  lh           t5, 13(t1)
                  lbu          s5, 11(t1)
                  sb           a3, -16(t1)
                  sltu         a0, ra, sp
                  sh           s9, 13(t1)
                  sw           a7, -11(t1)
                  lh           t6, -7(t1) #end riscv_load_store_rand_instr_stream_5
                  sub          s6, s11, tp
                  sll          a0, zero, s1
                  beq          t0, s0, 1369f
1357:             sub          t5, s8, s10
                  srl          a1, s10, a4
                  and          t0, a4, zero
                  slti         s4, s10, -867
                  bge          s3, t1, 1379f
                  andi         s6, t5, -1680
                  auipc        ra, 331828
                  nop
                  nop
                  sll          s4, s9, a1
                  auipc        t5, 443059
                  nop
1369:             add          s7, t1, a5
                  addi         ra, a3, 1010
                  sra          t6, s11, s2
                  bltu         a4, a4, 1384f
                  bgeu         s0, tp, 1393f
                  slt          t3, t1, a4
                  nop
                  srl          gp, s0, s0
                  lui          zero, 575212
                  nop
1379:             xori         sp, a5, -381
                  blt          a4, a6, 1390f
                  or           s4, s4, s11
                  sltu         s1, a0, s7
                  bge          a4, t4, 1384f
1384:             sub          a2, s4, s9
                  srli         zero, t2, 9
                  bne          t0, s1, 1390f
                  ori          a1, s8, -249
                  sltu         tp, a6, t5
                  beq          s4, t3, 1400f
1390:             xori         s2, s2, -1498
                  ori          gp, a1, 1617
                  slti         t3, t4, -1271
1393:             sltu         a2, a3, s8
                  slli         ra, a5, 11
                  andi         a4, a5, -1939
                  and          s4, tp, s1
                  nop
                  sll          a1, s0, a1
                  ori          s0, tp, -1931
1400:             sra          t4, s1, s2
                  srli         ra, t3, 6
                  sltiu        gp, s0, -1984
                  sra          s6, sp, s9
                  andi         t5, t1, 1851
                  slti         s6, t4, -1532
                  xor          t3, a5, t2
                  sra          t6, t4, a2
                  auipc        a6, 87364
                  sra          s3, s7, s5
                  auipc        t3, 399490
                  beq          sp, sp, 1420f
                  slti         t5, s11, 1646
                  bltu         t1, sp, 1431f
                  lui          s5, 798806
                  sltiu        t1, t5, 856
                  xori         s9, s9, -553
                  slli         ra, tp, 7
                  blt          s5, t0, 1431f
                  sub          s11, gp, t6
1420:             blt          s8, s10, 1436f
                  auipc        a0, 45906
                  bgeu         zero, a4, 1437f
                  sll          gp, a6, t2
                  sll          s7, s10, t2
                  srai         gp, zero, 6
                  bne          a7, a2, 1439f
                  xor          s2, gp, t1
                  slt          tp, s3, a4
                  auipc        s2, 426340
                  and          ra, a0, a4
1431:             nop
                  nop
                  blt          s0, s5, 1445f
                  bne          s4, s7, 1452f
                  xori         s7, t4, 823
1436:             or           t4, zero, s1
1437:             or           t2, s7, t5
                  sll          sp, s10, t1
1439:             sll          a6, s7, a6
                  srli         t4, s1, 19
                  nop
                  sltu         t5, t3, s10
                  bltu         s4, s8, 1447f
                  slt          s4, s5, zero
1445:             sra          s1, s6, s6
                  sub          a7, t5, t5
1447:             sub          a4, s8, a7
                  bne          s2, gp, 1449f
1449:             addi         t1, s1, 584
                  auipc        a7, 419177
                  sll          s0, s3, t6
1452:             sltiu        s5, s1, 1052
                  srai         s6, a3, 0
                  xori         t3, gp, -1672
                  sub          t3, a5, a3
                  sra          s9, zero, s8
                  addi         s6, a0, 1129
                  slli         zero, s6, 9
                  sltu         s11, s6, s3
                  sltiu        t1, a2, -1885
                  slt          a1, t5, a0
                  xor          t0, t5, a0
                  sra          a2, s11, t3
                  sra          t2, s9, s11
                  bgeu         s1, s4, 1480f
                  addi         sp, a7, -1177
                  srli         gp, s11, 25
                  srai         a1, sp, 2
                  blt          t2, s11, 1476f
                  bge          s11, t5, 1474f
                  sltu         s4, a3, s2
                  auipc        t5, 854792
                  srli         gp, a4, 0
1474:             and          a2, a2, s2
                  and          gp, s3, a6
1476:             ori          s6, a7, -727
                  nop
                  slti         s4, sp, -98
                  blt          a1, s2, 1494f
1480:             and          a7, s8, sp
                  sub          ra, t0, t4
                  srl          sp, s1, s0
                  xori         t2, sp, 1898
                  blt          s6, s11, 1495f
                  beq          tp, gp, 1499f
                  sll          gp, tp, a6
                  slti         t3, t5, 426
                  sltiu        s0, s6, -1379
                  addi         t6, s0, -452
                  or           s1, s9, s6
                  or           s1, zero, sp
                  addi         t6, zero, -221
                  or           s9, tp, s2
1494:             andi         s6, s10, 169
1495:             or           t0, s3, a2
                  or           s2, t2, s4
                  auipc        s10, 380927
                  and          a4, s5, t0
1499:             xori         t6, s2, 544
                  add          s7, a4, a5
                  slti         t4, t6, -704
                  sltiu        t5, s8, 1262
                  auipc        t2, 149190
                  bne          s9, a6, 1514f
                  beq          s3, t3, 1523f
                  bne          s6, t3, 1524f
                  sub          a2, a1, t2
                  bne          s5, t3, 1524f
                  sltiu        t1, gp, 1881
                  sub          sp, t1, s11
                  srai         t2, s0, 30
                  or           sp, s5, s6
                  or           s0, s0, s6
1514:             lui          s0, 812366
                  sra          s5, a4, t0
                  srl          s5, a3, s6
                  srai         a2, tp, 24
                  addi         t6, s3, 823
                  bgeu         s8, s2, 1539f
                  slt          t2, s4, ra
                  blt          sp, s1, 1541f
                  or           a7, t1, t1
1523:             and          s3, s9, a0
1524:             srli         t2, a4, 3
                  srl          a0, t6, s4
                  lui          s10, 631251
                  bltu         a2, a1, 1537f
                  auipc        gp, 1034281
                  xor          s7, a7, a1
                  blt          s4, t0, 1531f
1531:             and          a4, a0, t0
                  nop
                  xori         zero, t2, -1474
                  beq          zero, s3, 1550f
                  add          a6, a1, s5
                  andi         gp, s8, -878
1537:             and          t1, t4, s2
                  sltu         gp, a6, a0
1539:             slti         a4, a1, 1858
                  srai         a1, a6, 10
1541:             andi         s3, s10, -1476
                  srai         s2, s8, 18
                  sltu         tp, ra, s4
                  bgeu         sp, a6, 1557f
                  beq          a5, s9, 1562f
                  bltu         s4, s8, 1562f
                  nop
                  bgeu         a6, s9, 1561f
                  bltu         zero, t4, 1562f
1550:             bgeu         t6, zero, 1555f
                  sltu         s9, s0, s2
                  sltiu        s7, s8, 496
                  bltu         t1, t0, 1562f
                  bgeu         s6, a0, 1567f
1555:             auipc        t1, 640442
                  srli         a4, s8, 21
1557:             sub          t3, s5, a5
                  sub          tp, t6, s7
                  auipc        t0, 611600
                  lui          s1, 185892
1561:             sltu         s3, s5, t1
1562:             andi         zero, gp, 1532
                  slti         s9, a7, -1285
                  nop
                  blt          s6, a3, 1570f
                  xori         t0, s0, 1475
1567:             nop
                  andi         t3, a4, 403
                  lui          s6, 458904
1570:             sll          s11, a7, s7
                  add          t3, a5, s10
                  srli         a7, s10, 6
                  slti         s1, s7, 735
                  beq          s8, t6, 1575f
1575:             and          a2, s0, s11
                  xor          a4, s10, gp
                  blt          s3, a3, 1593f
                  sra          a6, t4, tp
                  lui          a2, 803645
                  lui          t5, 183704
                  beq          t6, t6, 1586f
                  slli         s0, s1, 16
                  sra          t4, a6, s4
                  bge          a0, t3, 1593f
                  bgeu         zero, s4, 1586f
1586:             blt          ra, s9, 1598f
                  andi         s11, a6, -640
                  srai         s2, tp, 14
                  xori         s1, t1, -934
                  sll          a4, t2, s0
                  srai         zero, tp, 4
                  xor          t5, t3, t6
1593:             auipc        s3, 1037917
                  sub          s7, s9, t1
                  andi         s7, a1, -1150
                  slti         zero, s7, 1748
                  or           s7, gp, ra
1598:             bge          s6, s0, 1616f
                  addi         s3, s8, -1329
                  bge          s8, s4, 1618f
                  sll          sp, tp, s11
                  blt          sp, a5, 1603f
1603:             sltu         a2, s1, ra
                  slli         s1, a3, 30
                  add          a7, s6, sp
                  nop
                  andi         a4, t5, -730
                  sll          t4, a5, t3
                  slli         s9, gp, 18
                  add          s7, s9, s10
                  nop
                  slti         s2, s3, 1361
                  srl          s3, s4, a7
                  addi         t4, s4, -1746
                  andi         a1, s10, -910
1616:             addi         a0, s2, 208
                  beq          a7, s3, 1630f
1618:             ori          ra, t3, 1975
                  bge          s3, s10, 1623f
                  srai         s11, s3, 10
                  bne          a6, s2, 1636f
                  bgeu         ra, gp, 1626f
1623:             nop
                  xor          sp, t1, s6
                  and          sp, a2, gp
1626:             bge          t2, zero, 1639f
                  sub          s4, a0, t4
                  sltiu        a2, t3, 1084
                  addi         s11, s5, 523
1630:             add          s5, t6, ra
                  sltu         a6, a4, t0
                  or           a2, s1, t0
                  srl          sp, t6, s1
                  sra          s11, t4, t2
                  xori         t0, t0, -1359
1636:             bne          t0, tp, 1654f
                  bgeu         t2, s4, 1644f
                  addi         s11, zero, 543
1639:             srl          a6, s0, s2
                  xori         a2, ra, -494
                  sra          s2, t0, s7
                  sra          t3, s4, a4
                  slti         a2, sp, 925
1644:             beq          t6, s11, 1657f
                  bne          s11, zero, 1661f
                  srl          t0, s1, t2
                  addi         s4, a0, -1190
                  srl          s7, a4, s8
                  add          t4, s8, a2
                  auipc        t2, 159234
                  sra          zero, s3, s10
                  srli         a6, zero, 5
                  sll          zero, s3, ra
1654:             slt          s4, a0, t0
                  xori         s5, s3, -159
                  nop
1657:             xori         s4, tp, 1375
                  and          t2, s11, t2
                  bgeu         s8, t3, 1669f
                  auipc        a2, 716831
1661:             bltu         a1, s9, 1678f
                  xori         t5, t0, 234
                  auipc        t2, 498449
                  bne          t1, a1, 1674f
                  addi         s2, s2, -569
                  nop
                  bltu         s11, a0, 1682f
                  or           s9, a5, s5
1669:             addi         ra, a3, -368
                  sub          a0, s10, a4
                  or           s0, a1, s1
                  auipc        a2, 74909
                  sll          s11, a3, a2
1674:             sltu         t4, s6, a1
                  blt          s5, s9, 1688f
                  xor          s9, t4, s11
                  and          a6, t6, a0
1678:             bgeu         s11, s2, 1692f
                  la           tp, region_1+1011 #start riscv_load_store_rand_instr_stream_9
                  xori         t5, ra, 2044
                  sra          a4, s11, a1
                  xori         s3, zero, 1345
                  sh           sp, 217(tp)
                  sub          a2, s4, a6
                  sll          t6, s7, a1
                  lbu          a7, -210(tp)
                  lh           a6, -219(tp)
                  slli         s7, t6, 6
                  lbu          t3, -48(tp)
                  lhu          a4, 205(tp)
                  lhu          t6, -105(tp)
                  nop
                  sb           s10, 8(tp)
                  auipc        s6, 133142
                  ori          t1, s1, 312
                  lui          s2, 658298
                  lbu          t1, 137(tp)
                  lb           a4, -183(tp)
                  lb           a0, -136(tp)
                  lhu          s3, -179(tp)
                  slt          a6, ra, sp
                  slti         s3, sp, 1441
                  sltu         a1, ra, s8
                  sh           ra, 41(tp)
                  srai         sp, t5, 19
                  srl          t3, a4, s7
                  sb           s1, 239(tp)
                  sh           t4, 123(tp)
                  lbu          a2, -176(tp)
                  lb           s1, 53(tp)
                  lbu          t4, -57(tp)
                  and          zero, a2, tp
                  sll          s1, s4, s5
                  sub          t4, s1, t2
                  sll          s1, t5, s7
                  lbu          zero, 179(tp)
                  and          t5, s5, ra
                  addi         t0, ra, 182
                  xori         s3, s8, 755
                  lui          a7, 184744
                  sltu         sp, s6, a4
                  lbu          s3, -219(tp)
                  slli         sp, t0, 23
                  lbu          t5, 162(tp) #end riscv_load_store_rand_instr_stream_9
                  xori         s4, s3, 527
                  or           s9, s5, a2
                  addi         gp, t5, 558
1682:             or           tp, a0, t5
                  slli         a7, t6, 10
                  xori         a6, a0, -1689
                  slti         tp, ra, -657
                  xor          t4, s0, s6
                  sltu         t3, s4, t1
1688:             sub          s9, s11, a0
                  slli         s7, s1, 4
                  sub          t4, s3, a5
                  and          s7, s9, zero
1692:             xor          s9, t1, s11
                  auipc        a0, 154535
                  bgeu         s0, sp, 1699f
                  slti         s7, t6, 1307
                  srl          s2, s3, a0
                  slt          s1, t1, a2
                  ori          a7, t0, 1578
1699:             sll          a2, a2, a2
                  beq          a3, s8, 1711f
                  bltu         s8, s9, 1717f
                  ori          s3, a5, 408
                  sub          s3, a7, a4
                  xor          s3, t5, s3
                  bltu         a4, s0, 1721f
                  srl          t2, s2, s2
                  add          s3, a7, sp
                  bgeu         t5, tp, 1728f
                  nop
                  addi         s10, a7, -1811
1711:             lui          a0, 654355
                  add          zero, t1, ra
                  sltu         s1, t5, s3
                  bltu         a0, s11, 1730f
                  or           t6, s3, tp
                  and          s1, a3, s11
1717:             srl          t0, t1, s8
                  nop
                  bge          t3, a1, 1720f
1720:             bgeu         t4, ra, 1740f
1721:             slti         s11, t5, -390
                  lui          t6, 120718
                  sub          s2, t2, t2
                  addi         t4, t6, -1529
                  or           tp, s3, s10
                  ori          t2, s6, -1725
                  ori          a6, s10, 157
1728:             sra          a4, ra, a0
                  sltiu        a0, a0, 412
1730:             beq          t2, s1, 1735f
                  xor          s0, t3, tp
                  sra          s9, s9, s1
                  ori          zero, t1, -23
                  andi         sp, s7, -919
1735:             add          gp, t3, s11
                  blt          t0, a2, 1752f
                  and          a2, a7, a3
                  bltu         ra, a2, 1747f
                  auipc        s1, 504777
1740:             slli         s4, t5, 5
                  slti         t4, s7, -1920
                  slti         s6, s3, 1270
                  xor          ra, a2, a5
                  srl          a4, t3, s3
                  srl          t4, tp, s10
                  bltu         a4, s1, 1758f
1747:             add          a4, sp, a1
                  srai         s11, a3, 30
                  bgeu         s11, a6, 1753f
                  blt          a5, a4, 1751f
1751:             srli         s3, t4, 26
1752:             bge          s4, t4, 1765f
1753:             or           t4, t4, s6
                  addi         a2, s0, 438
                  addi         gp, tp, 262
                  beq          s8, t4, 1776f
                  andi         t5, s4, 484
1758:             xori         s3, s4, -185
                  auipc        s3, 197921
                  slli         tp, s3, 9
                  auipc        t2, 491721
                  add          s0, s6, s2
                  bgeu         s6, zero, 1774f
                  add          a2, a5, s4
1765:             blt          s3, s1, 1781f
                  xor          s11, t6, s2
                  add          a1, a1, t6
                  bne          s5, t6, 1782f
                  auipc        ra, 26088
                  andi         s5, a4, 1544
                  add          gp, tp, a2
                  nop
                  nop
1774:             srai         t1, s7, 29
                  or           s3, a5, a0
1776:             nop
                  nop
                  slli         t0, a5, 12
                  srli         t1, s6, 6
                  bge          ra, sp, 1787f
1781:             srli         a6, s8, 18
1782:             bgeu         s11, a4, 1783f
1783:             srli         s1, s3, 27
                  blt          a3, t2, 1797f
                  addi         t0, s0, -338
                  sra          s5, t2, a2
1787:             sll          s7, s4, a2
                  slti         a6, t6, 69
                  addi         t5, s3, 177
                  sub          t6, t0, a0
                  srai         s11, a2, 28
                  srli         a4, s11, 23
                  srai         a7, sp, 4
                  slti         t6, zero, 429
                  bgeu         t5, t4, 1810f
                  slli         a2, a4, 31
1797:             slli         zero, t3, 3
                  bltu         t1, tp, 1816f
                  blt          gp, a0, 1809f
                  and          gp, s2, s10
                  xori         zero, s0, -1294
                  nop
                  sub          s7, a1, tp
                  srl          a4, t6, t6
                  nop
                  nop
                  bne          t3, a4, 1825f
                  bltu         a2, t3, 1812f
1809:             srai         t4, t2, 1
1810:             nop
                  or           s11, a3, a4
1812:             beq          t2, s9, 1827f
                  blt          a7, gp, 1833f
                  or           s10, ra, tp
                  sll          t1, tp, a2
1816:             slti         t5, t4, -909
                  add          tp, s8, s7
                  slli         s5, a5, 19
                  sltu         s9, a4, a0
                  beq          a3, s11, 1833f
                  sub          a1, a6, s11
                  xori         sp, t2, 573
                  slt          s2, a5, t0
                  lui          t1, 985368
1825:             auipc        t6, 985076
                  blt          a6, s11, 1842f
1827:             beq          s11, s1, 1832f
                  ori          gp, a3, 872
                  srl          t4, a7, t5
                  bgeu         tp, s8, 1831f
1831:             srai         s10, s5, 23
1832:             srl          sp, s10, gp
1833:             lui          zero, 681864
                  slli         s3, a3, 20
                  bge          s8, t5, 1845f
                  bne          gp, t5, 1854f
                  srl          s9, sp, zero
                  bne          a0, s7, 1851f
                  andi         zero, a6, -513
                  addi         a1, s8, 1306
                  slti         a7, a3, 334
1842:             slti         t5, a5, -1443
                  xor          s11, zero, s4
                  bne          t4, t5, 1860f
1845:             bltu         a0, s9, 1862f
                  slli         s6, t6, 11
                  lui          s7, 241721
                  sub          t5, t4, tp
                  addi         s5, s0, -1003
                  srai         s10, gp, 31
1851:             xori         s6, a2, -946
                  bgeu         s7, a5, 1862f
                  bgeu         s5, s8, 1868f
1854:             bge          s6, s5, 1874f
                  xori         a2, a7, -1071
                  bltu         s9, s0, 1872f
                  sltu         a1, s0, ra
                  and          gp, s4, t2
                  sltu         t6, a7, gp
1860:             xor          ra, gp, s11
                  nop
1862:             srl          t0, a4, a7
                  sub          t3, a4, s0
                  sub          tp, a6, a1
                  sltu         zero, a3, s6
                  add          t0, s4, a7
                  srl          a4, t1, t6
1868:             ori          zero, ra, -997
                  addi         s11, s7, -1232
                  and          s4, s8, sp
                  slli         t2, s11, 24
1872:             bne          t1, a5, 1876f
                  sltu         s1, s1, tp
1874:             sub          a0, a4, s5
                  sltiu        a0, zero, -38
1876:             sltu         a0, a7, gp
                  bgeu         ra, s4, 1893f
                  or           t4, t5, s2
                  sll          s5, s6, sp
                  andi         t1, a1, -317
                  andi         s4, s1, 936
                  srl          s11, s8, zero
                  xori         s5, zero, -199
                  auipc        s2, 254517
                  srli         t1, s4, 25
                  sltu         zero, a7, a3
                  sltu         a0, a4, s2
                  or           s10, s4, s8
                  add          s6, a2, a3
                  addi         t6, a5, 1722
                  xori         s7, a5, 568
                  sub          s1, s6, a0
1893:             sltu         s10, s7, a5
                  sltu         t5, a4, a7
                  lui          s2, 224804
                  auipc        s11, 505914
                  bgeu         ra, t1, 1898f
1898:             blt          s2, s6, 1911f
                  sltu         a0, zero, s11
                  and          s5, a7, s11
                  or           sp, sp, s1
                  and          t1, s8, a7
                  andi         ra, a0, -856
                  beq          s7, a3, 1922f
                  blt          ra, t0, 1920f
                  add          a4, a2, a6
                  sltiu        gp, a6, 1024
                  slti         a2, s2, -239
                  and          sp, s9, s4
                  bgeu         s0, s10, 1928f
1911:             srli         sp, t3, 28
                  bge          s7, t0, 1924f
                  slti         s1, s8, -1672
                  sltu         s2, t4, t3
                  or           a1, t4, a6
                  xor          s5, s9, ra
                  add          a0, s3, zero
                  blt          a2, a3, 1927f
                  addi         t5, t2, -455
1920:             ori          a7, a6, 837
                  xor          ra, sp, a3
1922:             nop
                  ori          s0, t3, -1950
1924:             bgeu         a4, s5, 1942f
                  xor          a0, s3, t6
                  xor          s5, a7, a3
1927:             add          t3, s7, s7
1928:             bge          t3, a0, 1933f
                  srl          s2, a0, s2
                  nop
                  andi         t5, s3, 345
                  add          t4, s0, ra
1933:             andi         t6, a7, 1168
                  sll          a0, ra, t5
                  and          a4, zero, t1
                  sll          s10, s8, s9
                  srl          s5, t2, s9
                  addi         s2, s3, -99
                  addi         a2, a7, -1751
                  bge          s11, ra, 1956f
                  nop
1942:             slti         s7, zero, -1447
                  bne          gp, s8, 1959f
                  bgeu         s0, a0, 1954f
                  sra          a0, t5, a4
                  bgeu         s1, s7, 1947f
1947:             bne          s6, t2, 1964f
                  beq          t4, s3, 1949f
1949:             andi         gp, a3, -1696
                  auipc        s10, 905819
                  andi         a4, s10, 147
                  auipc        s1, 136549
                  slt          a0, t5, t1
1954:             sltiu        gp, ra, -134
                  bge          t3, a3, 1968f
1956:             ori          a7, s1, -904
                  sll          s7, t4, t6
                  or           s11, s4, a1
1959:             lui          s1, 649864
                  beq          t4, sp, 1980f
                  slli         s4, a6, 12
                  auipc        s4, 132323
                  srai         a1, a4, 13
1964:             srl          a2, tp, t1
                  srai         s0, t0, 15
                  add          t1, t5, ra
                  addi         s6, s4, -1196
1968:             slti         ra, a1, -2034
                  sra          s2, s10, t1
                  sltiu        s7, t0, 1160
                  slti         t1, zero, 416
                  sub          sp, a2, s6
                  bgeu         zero, a2, 1978f
                  bgeu         s7, t2, 1985f
                  nop
                  sra          sp, s7, s4
                  slti         a7, s2, -1443
1978:             add          s0, tp, tp
                  bgeu         t4, zero, 1993f
1980:             sltiu        t5, tp, 908
                  srl          s2, t2, s8
                  add          gp, a3, t6
                  xor          s3, s5, gp
                  bltu         t4, gp, 1997f
1985:             sltiu        t1, s10, -1120
                  beq          a3, s3, 1993f
                  xor          zero, a3, t2
                  lui          a1, 28315
                  or           a6, a1, s9
                  sra          s7, s5, t3
                  xori         a7, tp, -960
                  andi         t1, s8, -1194
1993:             and          s1, a0, t3
                  blt          t2, tp, 2007f
                  sra          s7, s5, s9
                  auipc        s4, 763531
1997:             srl          s4, s11, a1
                  bge          a1, a7, 2002f
                  lui          s6, 22233
                  blt          s5, s4, 2005f
                  xori         ra, t5, -770
2002:             sra          t1, a3, s7
                  slt          t4, t2, t4
                  srl          s6, a5, a7
2005:             ori          ra, zero, -317
                  and          t2, s0, zero
2007:             bgeu         a2, t4, 2022f
                  lui          a6, 369540
                  slt          t0, t2, a4
                  nop
                  slti         s0, a7, 1138
                  slt          a4, zero, t2
                  nop
                  blt          t6, s0, 2034f
                  andi         a4, t3, 45
                  ori          tp, a1, 1563
                  slli         t1, s6, 30
                  srl          s4, s4, s9
                  nop
                  bge          s3, s2, 2033f
                  bgeu         a5, a5, 2037f
2022:             sltiu        t0, sp, 1215
                  sltiu        s0, gp, -1059
                  lui          s2, 917792
                  addi         a6, s1, -1304
                  sltu         s5, a0, a3
                  sltiu        s5, s7, -42
                  bltu         s3, a4, 2048f
                  sra          t3, tp, t0
                  sltu         t6, t2, s5
                  srl          s7, s9, t3
                  sll          sp, t1, s0
2033:             beq          a2, a2, 2051f
2034:             sub          s9, s1, s11
                  and          t6, s4, s0
                  xor          t3, s5, a3
2037:             bne          a0, a3, 2053f
                  nop
                  slt          t6, ra, s11
                  xori         s6, s6, 1062
                  blt          s2, t0, 2046f
                  srli         a7, t0, 14
                  srl          a6, a1, s4
                  slli         t3, s5, 29
                  bltu         s3, a0, 2054f
2046:             blt          a6, a5, 2059f
                  slti         tp, s7, -2008
2048:             bne          t2, s10, 2065f
                  addi         t6, a2, 313
                  srai         a0, gp, 22
2051:             addi         s2, t1, -1949
                  blt          zero, a4, 2056f
2053:             sra          a1, t0, t4
2054:             or           t1, t1, s5
                  sra          tp, t3, a6
2056:             srli         gp, s6, 20
                  slti         s4, s1, 382
                  add          s3, zero, s3
2059:             sll          s3, s0, s10
                  andi         s11, a6, -1226
                  sltu         a6, s11, s11
                  sll          a4, t1, s9
                  slt          t0, ra, s6
                  blt          a0, s10, 2065f
2065:             addi         s2, s6, -1543
                  add          a4, s2, t4
                  slti         t2, s6, -870
                  srl          a0, s2, t5
                  slli         a1, s9, 21
                  sll          a4, s5, t3
                  sltiu        a6, s2, -726
                  beq          s9, zero, 2088f
                  add          ra, gp, s9
                  xor          gp, tp, a1
                  xori         gp, t1, -1129
                  slti         a6, s1, -1504
                  and          a6, s11, t0
                  sub          s10, gp, t6
                  sub          t5, a7, a2
                  add          a1, s7, a7
                  andi         s7, s0, -1795
                  ori          s2, a2, 1442
                  ori          s10, t0, 432
                  slti         s7, s6, -744
                  bgeu         zero, a2, 2101f
                  xor          t3, s8, t4
                  bne          s4, s3, 2098f
2088:             srli         tp, a2, 9
                  sll          t4, t4, s3
                  bltu         s9, a6, 2094f
                  sltu         s11, gp, s1
                  blt          s4, a5, 2099f
                  bge          s0, s7, 2094f
2094:             andi         t3, tp, 450
                  bne          s5, s10, 2108f
                  or           zero, a5, s11
                  xor          t2, a2, gp
2098:             andi         t2, s7, -205
2099:             ori          a4, s4, -980
                  slt          s10, t5, s4
2101:             slt          s9, s4, zero
                  sltiu        a1, a1, 1460
                  sltiu        s6, t6, -409
                  blt          zero, a2, 2114f
                  bgeu         t2, t0, 2120f
                  sll          t5, s1, a6
                  xori         t1, s9, 1648
2108:             xor          s0, t3, t1
                  srli         s4, s1, 20
                  bgeu         s1, t2, 2128f
                  srl          zero, zero, a3
                  addi         s2, a4, 95
                  nop
2114:             beq          t2, s11, 2126f
                  add          a2, s8, a3
                  andi         t4, t0, -1361
                  bge          a5, gp, 2118f
2118:             and          s3, a0, t6
                  addi         tp, s1, 1780
2120:             beq          t3, a0, 2138f
                  xor          s3, a6, a5
                  nop
                  sub          s2, s11, t6
                  bgeu         s10, s7, 2137f
                  srai         t1, t0, 30
2126:             sltiu        zero, a7, -840
                  bne          s5, a2, 2141f
2128:             bltu         tp, a5, 2138f
                  lui          s10, 408642
                  sll          t3, s10, sp
                  slt          a7, gp, s10
                  sll          s7, s0, t1
                  or           t6, t5, a6
                  xori         s3, sp, 1534
                  andi         s0, a4, 1103
                  sltu         s3, s5, t1
2137:             sub          s10, s3, t0
2138:             auipc        t5, 427565
                  add          t5, s6, s7
                  slti         a7, a7, -222
2141:             slli         s10, zero, 18
                  ori          a4, t5, 1096
                  slt          a7, t4, s1
                  srai         a2, a4, 15
                  blt          zero, s9, 2152f
                  andi         s7, a4, -1503
                  bltu         s0, s7, 2163f
                  blt          zero, a3, 2161f
                  xor          s2, ra, s0
                  lui          tp, 407023
                  ori          s4, s5, 1011
2152:             ori          t4, t4, 633
                  addi         zero, sp, -683
                  auipc        s3, 441295
                  srai         s3, zero, 6
                  sra          s1, t6, t1
                  lui          gp, 1028389
                  srai         a4, s11, 30
                  sltu         t0, t6, s1
                  addi         t1, s11, -1737
2161:             nop
                  srli         t4, t0, 12
2163:             slli         a1, a7, 0
                  bltu         a7, a0, 2176f
                  blt          s0, s0, 2181f
                  srli         a1, s1, 24
                  beq          t1, s0, 2176f
                  slti         s3, a5, 1342
                  add          a4, s9, a1
                  sub          s10, tp, a7
                  beq          gp, s8, 2188f
                  bltu         ra, t5, 2190f
                  beq          a3, a2, 2183f
                  srl          zero, s1, s4
                  bge          t0, s8, 2190f
2176:             sltiu        gp, a4, -1326
                  bge          a7, s4, 2190f
                  slt          t0, s6, t1
                  srai         a2, a3, 20
                  nop
2181:             lui          s2, 146766
                  xor          s6, a4, s3
2183:             beq          s10, s11, 2196f
                  sra          a2, t2, a2
                  sltiu        s3, s0, 1609
                  sltiu        s10, s7, -999
                  slli         t1, a5, 13
2188:             sll          s1, tp, s3
                  bgeu         t6, t3, 2203f
2190:             bgeu         a3, s7, 2191f
2191:             andi         t1, t4, 1437
                  addi         sp, a5, -1141
                  andi         s5, s8, -737
                  nop
                  blt          a1, a4, 2200f
2196:             bltu         s0, s0, 2214f
                  blt          a0, t3, 2213f
                  slti         a2, s6, 1047
                  srai         s5, a1, 11
2200:             slli         s0, s8, 30
                  ori          a2, a3, 1325
                  xor          zero, a7, a6
2203:             sltiu        a4, a2, -298
                  ori          t0, a5, 1217
                  bgeu         s7, t1, 2225f
                  nop
                  ori          s0, s5, -1752
                  bne          s0, a5, 2209f
2209:             srl          t1, a6, a1
                  sltu         s9, zero, s11
                  ori          s7, s4, -2000
                  bne          tp, t2, 2225f
2213:             sltu         a0, s2, s7
2214:             beq          a3, s8, 2218f
                  xor          a1, s7, a0
                  bne          a3, s5, 2232f
                  sra          t3, t6, t2
2218:             auipc        a4, 175131
                  sll          a6, a2, s1
                  blt          t1, s1, 2230f
                  srl          gp, a5, s4
                  sltiu        t3, ra, -745
                  srai         sp, t0, 11
                  add          a7, s7, s7
2225:             nop
                  srli         t4, s7, 6
                  srl          a0, s2, s5
                  srl          t5, s8, s5
                  bge          a3, t4, 2247f
2230:             or           a4, gp, t3
                  addi         tp, s10, 1567
2232:             xor          s10, s6, sp
                  xori         a4, a1, 1829
                  srli         a1, a7, 13
                  slti         zero, s5, 36
                  bne          s10, a0, 2251f
                  srli         s1, s6, 30
                  bne          s2, tp, 2258f
                  xor          sp, s0, a2
                  srai         tp, t6, 25
                  bltu         t3, s1, 2242f
2242:             slti         s10, zero, 877
                  blt          tp, t4, 2254f
                  blt          a7, t0, 2248f
                  srli         s10, t0, 17
                  nop
2247:             xori         a2, a7, 1850
2248:             slt          a1, s6, a7
                  and          s6, gp, zero
                  and          a2, s5, s9
2251:             bne          s8, ra, 2256f
                  sub          a2, t2, a7
                  xor          a7, a7, ra
2254:             andi         s2, a4, 88
                  sltiu        t6, a4, -1340
2256:             srl          a7, a3, t5
                  nop
2258:             sltu         t0, sp, tp
                  srli         gp, s6, 31
                  ori          sp, s6, 282
                  sltiu        t6, t1, -37
                  xor          s9, a5, gp
                  srl          t0, t5, t0
                  xor          a4, a1, sp
                  srai         s11, s4, 3
                  sub          s7, a1, t1
                  srli         t1, s8, 22
                  bge          s1, gp, 2279f
                  or           s1, s9, s1
                  sll          a7, a1, t6
                  xor          a4, s7, a3
                  or           t5, s5, s6
                  ori          s3, t4, -844
                  or           t5, s2, t5
                  nop
                  sltiu        s5, a5, 120
                  lui          s3, 95581
                  auipc        s2, 955401
2279:             slti         ra, s7, 2030
                  srai         t5, s9, 25
                  sub          tp, t5, s0
                  xor          t5, s11, a0
                  add          a7, s8, gp
                  sub          a2, a5, a6
                  or           s5, s9, t5
                  sltiu        a6, zero, 1146
                  sltu         a6, a6, a7
                  sub          s9, a6, zero
                  addi         t0, a1, 859
                  blt          a3, s11, 2299f
                  sll          s6, s3, s7
                  srai         sp, a1, 19
                  slt          zero, ra, t3
                  bgeu         t1, s9, 2312f
                  bge          a0, s0, 2308f
                  sltiu        t2, a1, 181
                  sltu         a2, a3, a0
                  xori         a1, s5, 539
2299:             or           s2, s1, s9
                  lui          t4, 262292
                  addi         s9, a0, -1886
                  slt          tp, s5, s1
                  slti         t2, a2, 996
                  sub          s9, t0, s6
                  andi         t2, gp, 275
                  or           s1, s0, t5
                  bgeu         s0, a4, 2308f
2308:             xor          s5, s7, s9
                  bltu         s8, t1, 2326f
                  beq          zero, s5, 2323f
                  nop
2312:             beq          a4, s6, 2332f
                  or           t5, s9, s3
                  sltu         t2, s9, s9
                  slt          t6, a3, s9
                  bne          s4, s0, 2321f
                  ori          zero, s6, 819
                  srai         tp, t6, 30
                  xori         s1, t4, 204
                  nop
2321:             blt          a1, a4, 2341f
                  xori         s10, s6, 324
2323:             xori         s9, t0, -218
                  sub          s4, a2, s8
                  srai         s1, t4, 0
2326:             addi         s5, s2, -986
                  slti         t6, t5, -232
                  sra          a7, a3, a1
                  andi         a1, tp, -268
                  sra          s10, s10, s4
                  andi         a1, s2, 1022
2332:             sltu         t3, s4, s0
                  ori          sp, a4, 1060
                  xor          s11, s0, s9
                  xori         ra, a5, -1298
                  srli         sp, s1, 1
                  beq          zero, t6, 2342f
                  slti         t5, a6, -1057
                  bgeu         t1, s7, 2340f
2340:             add          a1, s8, sp
2341:             add          a2, s3, s6
2342:             xor          a6, t4, a2
                  sltiu        sp, s0, -1521
                  sra          s5, s6, s4
                  xor          s3, t3, t3
                  nop
                  or           s1, t0, a2
                  blt          s0, a6, 2366f
                  slli         tp, s4, 18
                  sltu         t6, s5, t4
                  andi         t3, a0, -1311
                  srai         sp, s0, 14
                  beq          a0, s11, 2360f
                  and          s0, t3, t3
                  addi         t6, a3, 122
                  and          s10, a2, s11
                  andi         s0, s5, 1832
                  slt          s0, t6, t5
                  srl          sp, s3, gp
2360:             srai         s6, t5, 19
                  bge          s11, t6, 2379f
                  slt          t3, zero, s4
                  xor          t2, a0, gp
                  sra          s1, a1, s1
                  xori         t4, a1, 987
2366:             or           t5, t0, a1
                  srai         t2, sp, 18
                  slti         t6, s11, -2030
                  bge          a4, s7, 2370f
2370:             and          zero, gp, a5
                  slli         t2, s2, 3
                  bne          a2, a2, 2382f
                  srli         s1, a2, 9
                  sltu         s1, a4, s0
                  srai         a7, t3, 18
                  addi         s4, t0, -1640
                  add          a0, t0, s9
                  sra          s3, s6, s6
2379:             srli         a7, t0, 26
                  lui          t4, 526320
                  auipc        s6, 692787
2382:             beq          t2, sp, 2386f
                  lui          s2, 702817
                  bge          s8, s8, 2399f
                  srai         s3, zero, 28
2386:             bltu         s11, s0, 2402f
                  andi         ra, t2, 735
                  sub          zero, sp, t2
                  sltu         a4, sp, s11
                  lui          s1, 729855
                  auipc        tp, 849707
                  bltu         zero, t2, 2405f
                  srli         s2, a0, 10
                  lui          s6, 912729
                  sltiu        t6, s9, -1825
                  sub          t4, s11, t0
                  beq          a1, a5, 2411f
                  ori          t3, a0, 1461
2399:             or           t6, t3, s7
                  xor          a4, s0, t1
                  sub          a4, t1, s7
2402:             bgeu         t2, t0, 2406f
                  bltu         a1, s6, 2415f
                  slti         t2, a4, -396
2405:             and          sp, ra, t3
2406:             bge          s2, s1, 2421f
                  bgeu         s6, ra, 2423f
                  slti         s1, s7, -1142
                  addi         tp, s4, 984
                  sra          s5, zero, s10
2411:             blt          a5, tp, 2427f
                  bgeu         sp, t4, 2425f
                  srai         t4, sp, 8
                  xori         s6, t2, 412
2415:             auipc        t1, 111415
                  auipc        a0, 375173
                  bgeu         t4, s7, 2433f
                  sub          gp, t5, s9
                  nop
                  lui          s4, 538484
2421:             srl          s1, a5, s11
                  auipc        s2, 920210
2423:             sra          gp, s4, s0
                  add          s3, t6, s11
2425:             add          zero, sp, t1
                  sub          s10, zero, t1
2427:             bne          t1, s1, 2437f
                  sub          t5, a5, s8
                  srli         s5, sp, 13
                  xori         s0, a3, -1726
                  blt          t6, gp, 2449f
                  nop
2433:             addi         s2, a6, -1299
                  ori          t0, s10, -1924
                  bge          sp, a6, 2455f
                  bgeu         s3, s8, 2452f
2437:             slti         a7, sp, -771
                  or           s1, s0, s7
                  beq          a7, s8, 2448f
                  bgeu         s2, s6, 2457f
                  srli         s10, t3, 13
                  beq          a2, t2, 2460f
                  srai         s3, s1, 27
                  sll          t4, s1, a4
                  and          s4, t5, t5
                  ori          gp, tp, 302
                  auipc        s3, 554544
2448:             slt          zero, t0, s10
2449:             ori          s0, s2, -742
                  bgeu         a6, t1, 2463f
                  sub          t5, tp, t0
2452:             bge          a5, s7, 2456f
                  addi         s3, s1, -643
                  blt          s8, s5, 2455f
2455:             bge          t4, s3, 2460f
2456:             sub          a0, s2, zero
2457:             srai         s9, s0, 6
                  xor          s0, s1, a6
                  bne          a4, t1, 2475f
2460:             beq          t3, t1, 2465f
                  bltu         s10, s11, 2476f
                  slti         s5, s9, 43
2463:             sll          s6, s2, s1
                  bne          ra, t2, 2465f
2465:             ori          s1, a4, -1427
                  auipc        s3, 472060
                  srli         s6, gp, 3
                  ori          gp, s9, -897
                  bgeu         t2, zero, 2487f
                  sltiu        s0, a6, 117
                  bgeu         s6, s5, 2485f
                  blt          t6, s5, 2485f
                  srl          s9, t3, s10
                  sltu         s9, t3, gp
2475:             sltu         a2, a2, ra
2476:             or           s4, a3, s7
                  xori         t5, t3, 969
                  slli         t1, sp, 16
                  sltiu        s3, t1, 51
                  auipc        s1, 70666
                  auipc        tp, 374668
                  addi         s9, t4, -1749
                  xori         a2, s9, 1301
                  add          a4, s6, t0
2485:             andi         a6, s6, -1494
                  or           t1, a4, t1
2487:             auipc        s3, 32626
                  slt          a7, t0, a3
                  bge          s5, a5, 2502f
                  xor          ra, a6, t6
                  slti         s6, sp, -364
                  srl          s4, a0, t3
                  sll          s11, a4, t4
                  sltu         s5, s5, s0
                  or           s7, s6, t3
                  nop
                  add          t4, gp, t5
                  lui          s9, 280291
                  lui          t2, 335410
                  auipc        ra, 503574
                  bgeu         t3, s9, 2512f
2502:             sltiu        t4, t3, -1180
                  and          tp, t0, s4
                  slti         t6, s7, -179
                  ori          a7, t1, -1437
                  andi         a1, ra, 1920
                  lui          t6, 631720
                  add          t4, t0, a7
                  bgeu         a5, a6, 2510f
2510:             and          a2, s4, s6
                  sltiu        a7, s9, 181
2512:             add          s5, s4, a1
                  blt          s6, a3, 2525f
                  auipc        a1, 811703
                  slti         ra, tp, 765
                  sra          t2, s8, a5
                  srl          zero, t2, t1
                  sub          s7, t2, s2
                  xor          s10, a5, s0
                  srai         ra, s3, 2
                  and          s6, t3, s10
                  slt          a6, s0, t6
                  bne          ra, gp, 2530f
                  sltu         t6, zero, s6
2525:             addi         gp, t0, -1789
                  andi         tp, a5, 1939
                  ori          s4, t3, 1952
                  bgeu         s2, sp, 2538f
                  srai         s3, a3, 28
2530:             bne          s8, s10, 2540f
                  xori         s11, s10, -228
                  bne          t6, s4, 2552f
                  ori          s0, a6, -33
                  srli         s2, gp, 24
                  ori          a4, a3, -1651
                  srl          t2, a2, t0
                  auipc        a1, 488128
2538:             sltiu        t4, a5, -1231
                  sltu         t4, t3, s3
2540:             and          s0, a5, s6
                  srl          a0, tp, s2
                  slti         s1, a2, 1271
                  xor          s6, tp, t2
                  xor          t3, t1, t0
                  or           t0, s10, gp
                  slt          s11, t6, t5
                  xor          s11, tp, gp
                  blt          a4, t4, 2564f
                  auipc        t0, 1003983
                  bge          s11, t5, 2563f
                  slt          gp, gp, t5
2552:             auipc        s11, 1014829
                  ori          t1, s9, 970
                  auipc        s1, 433894
                  xori         a0, s2, -664
                  andi         s2, zero, -1778
                  and          tp, s0, s4
                  slt          ra, s8, sp
                  slti         ra, ra, 1105
                  slti         t2, a4, 456
                  lui          tp, 22085
                  blt          a1, t3, 2577f
2563:             addi         a7, s1, -1257
2564:             xori         t2, t3, -893
                  sltu         s6, s8, s9
                  auipc        s7, 849980
                  bge          tp, zero, 2571f
                  bge          s8, a6, 2584f
                  slli         a2, t3, 30
                  srai         s5, a5, 12
2571:             sltiu        s4, a2, -1362
                  and          s0, a3, s2
                  bge          s10, t2, 2588f
                  bltu         a7, t1, 2590f
                  addi         zero, a1, -1838
                  bne          ra, t1, 2592f
2577:             bgeu         a2, t0, 2597f
                  sltiu        s4, s6, -841
                  or           sp, ra, s5
                  srl          t1, a2, s9
                  nop
                  beq          s7, tp, 2600f
                  nop
2584:             auipc        zero, 531151
                  sltu         s7, s6, t3
                  srai         sp, tp, 10
                  xor          zero, gp, t5
2588:             slti         t3, t3, -1019
                  lui          t5, 302631
2590:             sub          s2, s4, s10
                  xor          s7, s1, s8
2592:             srai         s7, a2, 27
                  and          s5, s9, a5
                  srai         s2, a5, 1
                  sltu         sp, t0, s2
                  slti         s2, ra, -1602
2597:             ori          ra, a2, -1414
                  srli         t3, tp, 3
                  add          s5, s9, s6
2600:             nop
                  xor          a1, t3, a5
                  or           t1, s5, a0
                  lui          a1, 1042842
                  bltu         a3, ra, 2615f
                  auipc        a4, 764754
                  xor          s9, sp, t6
                  srl          s2, s0, s9
                  slt          a1, a2, ra
                  bltu         t2, a0, 2619f
                  lui          s10, 348890
                  xori         s2, s8, -1309
                  nop
                  xori         s9, t3, 1253
                  andi         s6, s8, -1383
2615:             srl          t4, s9, a3
                  or           a2, a6, a4
                  beq          s11, sp, 2637f
                  srl          ra, s10, a6
2619:             srli         sp, gp, 5
                  or           t3, a4, s5
                  lui          s5, 799887
                  sll          s2, a3, s10
                  or           tp, s9, a6
                  slt          zero, s2, s8
                  bge          gp, s1, 2626f
2626:             auipc        s0, 660647
                  lui          s0, 114089
                  srl          a6, zero, tp
                  srli         s1, zero, 14
                  blt          t5, s3, 2643f
                  beq          ra, s10, 2640f
                  ori          tp, tp, 1298
                  bge          t5, s11, 2646f
                  bne          zero, a6, 2646f
                  sll          s6, s8, a5
                  sll          a6, t2, a6
2637:             xori         s1, s4, -175
                  and          ra, s8, t3
                  andi         a1, s1, 1092
2640:             sll          tp, t6, s5
                  xor          a1, s9, a4
                  xor          s3, a0, a0
2643:             srl          a4, t4, a5
                  sll          ra, s1, t1
                  bne          s4, t5, 2663f
2646:             beq          a7, a6, 2647f
2647:             sll          t1, a7, s1
                  nop
                  and          a4, s8, s6
                  srai         tp, a6, 28
                  bge          s11, t3, 2667f
                  slt          s9, sp, t2
                  sra          a2, s3, gp
                  sra          s6, gp, a4
                  srl          t6, t2, s9
                  xori         s3, s2, -187
                  sub          t4, t5, s2
                  slli         a6, zero, 1
                  slti         ra, s7, -912
                  srli         gp, a5, 3
                  sub          s6, t1, a4
                  ori          t1, a6, 1294
2663:             andi         s2, s7, -732
                  beq          s5, zero, 2671f
                  slti         a4, s7, -967
                  or           s9, s6, t4
2667:             addi         t4, t2, 1252
                  auipc        a6, 761841
                  blt          sp, s1, 2674f
                  slti         t2, a0, -218
2671:             lui          s10, 241606
                  sltiu        a2, t5, 608
                  nop
2674:             and          t1, a2, s1
                  or           zero, s0, a6
                  srli         s1, s5, 14
                  addi         t0, zero, 566
                  srai         zero, a4, 19
                  blt          a0, t6, 2693f
                  xori         s11, s1, -520
                  bltu         ra, s5, 2699f
                  lui          a1, 13310
                  sltu         t3, gp, t5
                  andi         s6, a1, -942
                  sra          s3, ra, s8
                  blt          t0, t1, 2696f
                  sra          a4, t4, t4
                  sub          s4, s9, t0
                  la           sp, region_0+303 #start riscv_load_store_rand_instr_stream_7
                  sub          a0, s2, t2
                  srli         t5, t0, 27
                  sb           t4, 190(sp)
                  slti         s6, tp, -1323
                  slli         s10, t2, 18
                  lb           t5, 228(sp)
                  lbu          a0, 6(sp)
                  srai         s10, s2, 4
                  sll          a0, s4, s6
                  srai         a1, s6, 6
                  srl          t6, a7, t1
                  lbu          s3, 50(sp)
                  sra          tp, tp, t6
                  andi         s3, s11, -1377
                  lb           tp, -72(sp)
                  sra          a1, t1, s1
                  and          gp, s11, s2
                  sb           tp, 174(sp)
                  and          a2, a0, s9
                  sb           t2, 8(sp)
                  nop
                  lui          s7, 800359
                  slt          a4, a7, t6
                  sh           a5, -213(sp)
                  slt          gp, s0, s11
                  lbu          t0, -48(sp)
                  lhu          s3, -229(sp)
                  sb           s5, 66(sp)
                  lbu          s2, 24(sp)
                  lbu          s10, -137(sp)
                  lb           s10, -234(sp)
                  xori         a7, a1, -633
                  lb           a4, 219(sp)
                  lb           t3, -166(sp)
                  lbu          a1, 40(sp)
                  sub          s10, a5, s10
                  sb           s11, 56(sp)
                  add          s1, a1, s4
                  sub          t5, a4, sp
                  slli         t2, a2, 4
                  lb           s11, -12(sp)
                  lb           a6, -241(sp)
                  auipc        t2, 398273
                  andi         t1, s0, 1562
                  slli         s4, zero, 31
                  sltu         t0, s3, s4
                  sltiu        t1, a7, 1608
                  addi         s10, gp, 619
                  sh           t2, -51(sp) #end riscv_load_store_rand_instr_stream_7
                  auipc        a2, 23310
                  sll          zero, s8, s0
                  sltu         a2, a4, ra
                  sll          a2, s5, gp
2693:             sra          s1, s9, s5
                  ori          s4, sp, -440
                  sltiu        a7, s6, 1289
2696:             sub          a7, a3, a6
                  beq          t4, s4, 2712f
                  addi         s11, s3, -835
2699:             srl          s3, ra, s10
                  sub          sp, a4, a1
                  bltu         t2, a1, 2714f
                  bne          a5, t4, 2714f
                  beq          s0, s10, 2707f
                  add          s9, s8, s1
                  srl          t4, zero, t1
                  andi         a0, t6, 846
2707:             sll          gp, sp, sp
                  beq          sp, s2, 2713f
                  andi         s0, t1, -431
                  bltu         a5, s3, 2711f
2711:             srai         zero, a5, 19
2712:             slli         a7, t0, 27
2713:             sll          t4, gp, a5
2714:             sltu         s1, t1, a6
                  lw           t1, 4(a3)
                  or           s1, t2, a6
                  addi         a3, a3, 56
                  slli         s4, s3, 24
                  srl          s11, s2, a6
3658:             addi x20, x6, 1
3658:             jalr x20, x20, 0
sub_7:            sll          a2, a3, s7
                  nop
                  srl          s5, a6, s6
                  beq          s3, t1, sub_7_stack_p
                  nop
                  srli         t5, a0, 31
                  lui          t6, 995176
sub_7_stack_p:    addi         a3, a3, -8
                  sub          s11, s10, t3
                  sw           t1, 4(a3)
                  sub          s0, a4, s9
                  sub          s11, t5, s5
                  blt          sp, s0, 18f
                  srl          s10, ra, a3
                  bltu         tp, s6, 23f
                  addi         a0, s1, -176
                  sll          s10, gp, s11
                  andi         s6, a4, 851
                  bge          t3, a4, 18f
                  sltu         s2, a3, s8
                  nop
                  bltu         s6, s11, 30f
                  bltu         s10, s2, 12f
12:               slli         s7, s5, 16
                  srli         s9, a2, 5
                  bne          t3, s9, 26f
                  or           tp, s6, a6
                  slti         a6, t5, -1691
                  srl          a4, zero, ra
18:               nop
                  srai         a4, s6, 8
                  bltu         s11, gp, 30f
                  auipc        s7, 1018565
                  andi         zero, a7, 85
23:               sra          a2, s10, s10
                  sra          gp, s2, t3
                  beq          sp, s5, 44f
26:               andi         s9, a3, -644
                  sltu         a0, s7, t2
                  xor          a2, t4, s2
                  sra          s10, a0, t6
30:               blt          s8, a6, 31f
31:               slli         s5, s4, 30
                  and          t1, a2, t3
                  lui          a2, 845974
                  beq          s0, gp, 54f
                  lui          t5, 526609
                  xori         gp, sp, -99
                  sra          t5, s0, s3
                  beq          t6, a1, 51f
                  srli         a6, a4, 14
                  bltu         s4, s11, 55f
                  srai         ra, t5, 9
                  lui          s1, 563512
                  bltu         a7, s6, 59f
44:               auipc        t5, 173810
                  lui          t5, 926047
                  blt          a0, s3, 56f
                  slt          a1, s7, s2
                  sltiu        s6, s1, 1546
                  srai         s11, t2, 22
                  srai         t2, t1, 5
51:               ori          t6, t4, -1817
                  or           s7, s4, gp
                  sub          a0, a5, sp
54:               slt          s4, tp, a5
55:               xor          a7, t3, tp
56:               lui          s3, 1011245
                  andi         a0, a1, 484
                  srai         ra, a1, 4
59:               sra          s10, t1, tp
                  lw           t1, 4(a3)
                  nop
                  addi         a3, a3, 8
                  slti         s9, sp, 2018
                  ori          s11, a3, -422
                  srai         ra, s0, 23
77:               addi x9, x6, 0
77:               jalr x9, x9, 0
sub_10:           slti         s0, t6, 385
                  addi         a3, a3, -40
                  srl          a6, a4, a5
                  sll          t2, s7, gp
                  xor          s6, s6, a6
                  sltiu        a7, t1, -942
                  srai         s2, zero, 30
                  sw           t1, 4(a3)
                  slt          s11, a0, t5
                  slt          s3, a6, t0
                  add          a4, tp, tp
                  srli         gp, s5, 13
                  bge          s11, s7, 2f
2:                xori         a6, a7, 1333
                  lui          sp, 699053
                  addi         zero, s5, 1820
                  slt          s5, a0, s4
                  sll          zero, a1, a6
                  sub          a0, a5, sp
                  sltiu        tp, t4, -487
                  srai         a6, s7, 20
                  auipc        a7, 709128
                  nop
                  bge          t3, s1, 32f
                  slti         t0, s3, -1120
                  blt          a0, a7, 30f
                  beq          sp, sp, 26f
                  nop
                  sltiu        t2, a6, 1666
                  addi         a2, a2, 1222
                  bgeu         zero, s7, 35f
                  nop
                  xor          a7, a7, a0
                  sltu         t4, a1, s10
                  slti         s10, a6, -867
                  srli         s7, s8, 11
                  sltu         a6, a2, s7
26:               and          tp, t6, a0
                  xor          a2, s9, sp
                  auipc        t0, 55592
                  addi         ra, a6, -1387
30:               slt          s1, s2, s10
                  sub          a1, a0, s3
32:               sra          s10, s1, s10
                  blt          s6, t4, 38f
                  slti         a4, a4, 257
35:               slti         t6, tp, -1630
                  xor          s9, a6, a2
                  beq          a2, gp, 54f
38:               beq          s10, s9, 39f
39:               slt          s6, s5, s3
                  or           s5, s7, t0
                  blt          a0, s7, 48f
                  xori         gp, sp, 405
                  xori         zero, t3, -621
                  bgeu         s10, a4, 56f
                  bne          a5, t6, 60f
                  slt          ra, s8, zero
                  nop
48:               slt          s10, s5, a5
                  nop
                  andi         t6, s9, 1698
                  beq          s5, sp, 62f
                  xor          gp, ra, a1
                  bgeu         t1, s9, 61f
54:               srl          sp, sp, t6
                  nop
56:               bne          s10, a4, 58f
                  nop
58:               auipc        t4, 786477
                  slli         sp, s8, 4
60:               bge          s3, t4, 62f
61:               sra          s4, s8, a6
62:               lui          gp, 843010
                  lw           t1, 4(a3)
                  xori         tp, s6, -1252
                  srl          ra, a1, t3
                  slti         s0, a2, -1220
                  sltiu        s7, t2, 2019
                  ori          t4, a7, -1553
                  sll          tp, s5, s5
                  sra          ra, a2, zero
                  sltiu        t4, t4, -24
                  addi         a3, a3, 40
                  and          ra, a2, s0
                  andi         s11, a0, -398
86:               addi x26, x6, 1
86:               jalr x26, x26, 0
sub_9:            andi         s3, s8, 1849
                  bne          t0, s5, sub_9_stack_p
                  slti         a1, t6, -182
                  andi         a0, a4, -1135
sub_9_stack_p:    addi         a3, a3, -12
                  srai         s7, s1, 23
                  sw           t1, 4(a3)
                  srl          a4, zero, a2
                  sub          t4, zero, s3
                  and          s10, a4, t3
                  sll          s4, s9, a5
                  blt          a1, t5, 16f
                  beq          s0, a2, 19f
                  slti         s3, a3, -1690
                  add          t0, t0, a6
                  nop
                  srai         s0, ra, 9
                  beq          s5, a7, 27f
                  bltu         s1, a3, 23f
                  sra          t5, a5, s2
                  andi         a4, s9, 2019
                  nop
                  blt          s0, tp, 30f
                  add          t0, s11, t4
                  and          a7, a5, s11
16:               or           a2, s3, t5
                  sub          t5, t6, tp
                  ori          t0, ra, -218
19:               sub          s6, s7, s8
                  srli         s4, a3, 23
                  sltiu        s9, a1, 74
                  add          a2, s2, t2
23:               sltiu        t2, a6, -1121
                  sll          s1, t0, s8
                  bltu         t4, s6, 29f
                  slt          a2, a6, s7
27:               sltu         s10, s7, t0
                  bltu         s0, tp, 29f
29:               lui          t6, 81840
30:               xor          a2, t0, a2
                  addi         s0, a3, -868
                  slli         s9, a7, 9
                  blt          a0, s10, 42f
                  andi         zero, a2, -312
                  blt          a0, s0, 42f
                  srli         s4, t5, 7
                  xori         s5, t3, 1355
                  bge          s5, t5, 49f
                  beq          s11, t3, 43f
                  sltu         sp, t2, a5
                  srl          t4, a3, s6
42:               andi         a4, t5, 1197
43:               srl          s6, t5, s6
                  bne          t4, t3, 58f
                  srli         t4, s9, 23
                  slti         s1, t3, -1398
                  auipc        s11, 159538
                  srl          t3, a6, s2
49:               slli         s2, s1, 13
                  or           a1, s6, t5
                  nop
                  srli         tp, a3, 26
                  andi         s11, t4, 957
                  slli         t6, t1, 1
                  addi         t0, t1, -94
                  xori         s4, zero, 225
                  auipc        a7, 454190
58:               auipc        ra, 515212
                  add          s11, t1, s2
                  sll          t5, s4, sp
                  blt          a5, a1, 64f
                  xor          zero, s3, s11
                  sltu         t6, s8, s5
64:               srli         a0, t5, 2
                  lw           t1, 4(a3)
                  and          s11, tp, t6
                  addi         a3, a3, 12
                  addi         a1, a3, -741
                  sra          s4, s6, s11
                  auipc        tp, 416248
                  sltiu        t6, a0, -1760
81:               addi x29, x6, 0
81:               jalr x29, x29, 0
sub_3:            bltu         a3, t5, sub_3_stack_p
sub_3_stack_p:    addi         a3, a3, -60
                  ori          gp, a2, -1974
                  sw           t1, 4(a3)
                  srli         s6, s10, 11
                  sltu         t3, s2, s1
                  sltu         t0, s10, s10
                  xori         s9, a1, -1467
                  beq          a5, tp, sub_3_j7 #branch to jump instr
                  slti         a1, t0, 1994
                  slli         s7, s8, 6
                  nop
                  lui          s11, 242070
                  sltu         s4, t5, t6
sub_3_j7:         jal          t1, sub_5 #jump sub_3 -> sub_5
                  la           sp, region_1+442 #start riscv_load_store_rand_instr_stream_0
                  addi         gp, s0, 1205
                  lh           t3, 0(sp)
                  sb           t0, 2(sp)
                  slli         tp, tp, 9
                  sll          a2, a7, s0
                  srai         s1, s11, 28
                  lhu          s9, 4(sp)
                  lui          t0, 348839
                  lb           a2, 12(sp)
                  srai         t5, s9, 0
                  sb           s7, 1(sp)
                  lui          s7, 972204
                  lbu          t2, 4(sp)
                  lbu          s1, 9(sp)
                  lb           s7, -9(sp)
                  lb           a1, -5(sp)
                  sw           a6, 10(sp)
                  sltiu        a4, s6, -1631
                  sh           a5, -10(sp)
                  sb           zero, -15(sp)
                  lbu          a2, -7(sp)
                  auipc        zero, 54233
                  srai         zero, s5, 25
                  sb           t3, -8(sp)
                  sb           s5, 15(sp)
                  auipc        t5, 354379
                  srl          s3, t6, a6
                  lh           s6, -8(sp)
                  xori         t4, a6, 1848
                  and          a0, a3, t2
                  sb           a6, -15(sp)
                  lbu          a0, 9(sp)
                  sb           t3, 8(sp)
                  addi         gp, a4, 1182
                  or           t2, t5, s5
                  sub          s4, sp, a0
                  or           a2, tp, tp
                  xori         s9, s9, 689
                  lb           t2, 11(sp)
                  lhu          t4, 6(sp)
                  add          t5, a0, s0
                  sw           ra, 6(sp)
                  sb           s8, -13(sp)
                  slli         a6, t6, 28
                  nop
                  lhu          s3, -10(sp)
                  lbu          s10, 5(sp) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_0+471 #start riscv_load_store_rand_instr_stream_1
                  sb           s3, -16(sp)
                  slt          t2, t1, sp
                  sb           a2, -7(sp)
                  lui          s3, 128861
                  sb           s8, 4(sp)
                  lbu          t0, 7(sp)
                  lw           s10, 13(sp)
                  lbu          a2, 3(sp)
                  sb           t4, -8(sp)
                  sub          t6, s3, a4
                  lbu          t4, -2(sp)
                  xor          t6, s6, a1
                  sw           tp, 13(sp)
                  add          tp, a2, s8
                  lbu          t5, 16(sp)
                  slt          s6, t5, sp
                  lb           s10, -9(sp)
                  andi         s0, s11, -1640
                  lh           a0, 7(sp)
                  and          t1, s5, s5
                  lb           t3, 10(sp)
                  sb           a0, 4(sp)
                  lbu          s6, 6(sp)
                  lb           tp, 14(sp)
                  xori         s3, s7, 81
                  lb           a4, -2(sp)
                  lhu          s9, -13(sp)
                  and          s11, a0, t0
                  lhu          s4, -1(sp)
                  auipc        t5, 455706
                  lh           t6, 11(sp) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_0+1737 #start riscv_load_store_rand_instr_stream_2
                  lb           s2, -22(sp)
                  lb           s1, -24(sp)
                  xor          zero, s10, a4
                  lb           t0, -57(sp)
                  lb           t0, -6(sp)
                  srli         a6, s9, 23
                  lbu          zero, -8(sp)
                  add          a4, s8, a1
                  lb           s11, 38(sp)
                  lbu          a1, 26(sp)
                  lw           a2, 27(sp)
                  srai         a2, t5, 24
                  or           t0, s5, s11
                  sb           a3, 2(sp)
                  auipc        a2, 471318
                  slli         ra, s9, 5
                  sb           zero, 14(sp)
                  sub          tp, t5, s9
                  lui          t0, 970137
                  xori         s5, s10, -1888
                  sb           s1, -19(sp)
                  lbu          tp, 58(sp)
                  lbu          s9, -36(sp)
                  lh           a1, 49(sp)
                  slli         t2, s2, 19
                  lbu          s3, 50(sp)
                  sw           a7, -49(sp) #end riscv_load_store_rand_instr_stream_2
                  or           a6, a7, t0
                  slt          s2, s8, t3
                  srli         s7, a7, 16
                  srai         a2, a5, 9
                  blt          t1, s9, 16f
                  srl          gp, gp, s7
                  ori          s11, s3, -254
                  and          s6, s6, t3
                  blt          t4, t2, 25f
                  and          a1, t6, t5
                  srl          gp, a1, s8
                  srli         gp, s10, 24
                  sltu         s0, s4, s8
                  sra          a0, s3, t4
                  blt          a7, a5, 32f
                  add          t2, s0, s11
16:               sltu         a4, t4, ra
                  srai         t5, s11, 10
                  srai         zero, a6, 30
                  add          s4, s7, t3
                  srl          s5, t2, gp
                  sra          s3, s4, s1
                  srai         t5, t5, 13
                  or           s4, s5, s8
                  srli         s5, s7, 8
25:               lui          s9, 549685
                  slli         s6, gp, 0
                  srl          s10, tp, a6
                  nop
                  addi         s10, s9, -248
                  xor          a1, s8, ra
                  beq          sp, s4, 41f
32:               srai         a2, s7, 31
                  lui          s6, 534732
                  bgeu         s4, t5, 52f
                  slli         a4, tp, 9
                  nop
                  srai         a2, t3, 30
                  srli         a6, a4, 19
                  blt          s5, sp, 59f
                  lui          ra, 773992
41:               blt          a3, t2, 49f
                  or           s6, a3, t1
                  beq          a3, s4, 58f
                  and          a2, a6, t1
                  auipc        t0, 902741
                  add          s1, tp, t4
                  ori          t1, s0, -549
                  bgeu         s7, t4, 66f
49:               bgeu         s4, t2, 58f
                  sra          s0, a2, a1
                  xori         a2, s4, -935
52:               addi         a4, sp, -1351
                  bgeu         a3, a3, 54f
54:               beq          a1, a4, 58f
                  addi         zero, t6, 506
                  ori          s7, a3, -2029
                  beq          t1, a2, 67f
58:               andi         sp, zero, 1289
59:               add          t5, s0, t6
                  andi         t2, s9, 438
                  nop
                  srl          a7, a0, s0
                  bne          s7, a7, 78f
                  bge          sp, tp, 70f
                  addi         t6, s0, 1740
66:               nop
67:               sltu         gp, s4, sp
                  bge          t5, a7, 76f
                  sll          t1, s9, s0
70:               srai         t0, zero, 21
                  slli         t0, s0, 13
                  andi         t6, s8, -1052
                  slti         s2, a4, 967
                  sra          s1, a4, s3
                  nop
76:               bltu         ra, a6, 78f
                  sll          s7, s10, a7
78:               nop
                  srai         s5, zero, 30
                  sltiu        t3, a5, -935
                  slti         s10, a2, -499
                  slt          s9, sp, t6
                  and          tp, a3, t1
                  blt          s5, a0, 87f
                  sra          a0, s7, t6
                  auipc        s11, 253314
87:               bne          t0, s2, 88f
88:               auipc        t2, 304537
                  xor          t5, tp, s3
                  lui          t4, 323682
                  addi         a7, gp, -1628
                  sltiu        gp, s8, 372
                  andi         s0, t2, 628
                  ori          a7, t3, -352
                  sltu         s1, t3, s3
                  sll          s7, s10, a3
                  addi         s3, a7, -765
                  sll          s10, sp, s9
                  sll          s3, s7, a1
                  or           ra, sp, s8
                  or           s2, t3, a3
                  srl          s5, a4, gp
                  sltu         s2, tp, s1
                  xori         sp, s5, -724
                  slti         s3, s10, 1425
                  addi         s7, t3, -132
                  sltu         s7, a1, tp
                  blt          s1, a2, 127f
                  slti         s5, s5, -47
                  sltu         t5, s9, t4
                  xor          s6, s7, a3
                  bgeu         t1, t1, 116f
                  andi         gp, a6, 549
                  srai         s5, a7, 30
                  srai         s9, a0, 29
116:              add          t5, s5, t2
                  ori          sp, a1, -1901
                  and          s2, s6, a1
                  sub          gp, a5, t6
                  add          tp, s6, a1
                  sub          zero, s11, gp
                  auipc        a1, 52739
                  blt          gp, a1, 134f
                  auipc        sp, 375747
                  auipc        s2, 610731
                  sub          s5, t5, a7
127:              sra          tp, zero, a5
                  slti         t6, t4, 446
                  and          s5, t4, t0
                  blt          t2, s10, 131f
131:              sll          gp, s5, sp
                  slli         t4, s10, 23
                  sub          s11, a4, a1
134:              slt          gp, s1, s10
                  srai         a2, t5, 2
                  ori          s10, t3, 1474
                  lui          s1, 702409
                  ori          s3, a5, -1210
                  and          t2, s2, a6
                  sltiu        s11, s9, -1536
                  sltu         t6, t4, t6
                  srl          a6, t4, s7
                  slli         t3, t5, 0
                  slli         t5, ra, 12
                  bne          s8, t0, 159f
                  blt          t2, s1, 150f
                  bne          ra, s6, 148f
148:              sltiu        a6, t0, 785
                  add          zero, ra, a0
150:              sll          s7, tp, t5
                  lui          s4, 1019554
                  ori          sp, s1, -451
                  auipc        t6, 627389
                  sltiu        a1, s3, 291
                  bge          a6, s8, 165f
                  beq          t2, a6, 158f
                  addi         gp, t4, -1818
158:              sltu         s4, a7, s10
159:              sltiu        zero, s0, -555
                  lui          gp, 1039047
                  addi         a0, s6, 1647
                  addi         t1, t1, 1080
                  srai         s3, s10, 18
                  xori         s6, s2, -862
165:              add          t5, s3, s2
                  slt          a2, ra, a1
                  add          t6, t2, s3
                  ori          s7, s11, -125
                  sll          s2, sp, a1
                  auipc        s1, 948309
                  srl          a4, s10, s4
                  slti         s10, tp, -853
                  xor          s0, s7, a3
                  nop
                  and          s9, t1, tp
                  sra          s5, zero, s11
                  slti         t3, t2, 1035
                  nop
                  sltiu        gp, s6, 820
                  srli         s2, s10, 3
                  xor          t4, s5, zero
                  ori          a6, s9, -1986
                  blt          a0, t4, 198f
                  sltiu        s6, a4, -1829
                  nop
                  ori          s10, s11, 600
                  bge          t3, s7, 202f
                  andi         t2, ra, 617
                  srai         gp, t5, 25
                  xori         t6, s9, 373
                  nop
                  bge          t4, gp, 210f
                  lui          s9, 898619
                  addi         t6, s8, -134
                  bgeu         s11, s1, 199f
                  lui          ra, 287673
                  bltu         s5, t5, 212f
198:              beq          a6, t4, 207f
199:              sltu         s5, a7, a6
                  ori          s4, s11, -108
                  sub          a6, s5, s4
202:              ori          t5, s4, 1853
                  bne          t5, ra, 218f
                  and          s10, a4, gp
                  andi         a6, zero, -731
                  srai         s10, s9, 23
207:              lui          zero, 199306
                  ori          s9, s7, 307
                  auipc        s7, 556704
210:              srl          t0, s6, s3
                  xor          s2, t2, t4
212:              slti         s3, a4, -354
                  bltu         a6, t0, 225f
                  bge          t0, s1, 215f
215:              sltu         s6, t1, gp
                  addi         s11, t5, 2047
                  sra          t1, gp, s2
218:              addi         a4, zero, -2020
                  blt          s10, s2, 220f
220:              srli         a6, t4, 16
                  xor          t5, gp, a3
                  sub          s2, t6, s8
                  sll          s4, t6, s2
                  ori          s11, a3, 253
225:              nop
                  sltu         s5, t2, t6
                  bgeu         t6, s7, 231f
                  srl          ra, s11, s7
                  auipc        zero, 363290
                  sltu         a4, s5, s3
231:              srli         s7, s2, 13
                  slti         t2, s1, -341
                  srl          s9, s8, t1
                  bltu         a4, a3, 235f
235:              xor          t2, ra, t4
                  and          a0, s1, sp
                  la           s4, sub_4
                  and          s9, s7, s7
                  sra          t0, tp, s11
                  nop
                  and          t2, s8, t1
                  srai         t6, a7, 20
                  addi         s4, s4, -215
                  andi         t1, a6, 1605
sub_3_j6:         jalr         t1, s4, 215 #jump sub_3 -> sub_4
                  srl          a6, t2, a4
                  xor          ra, s5, t3
                  and          s7, s10, t3
                  ori          t5, t2, 225
                  beq          s6, ra, 251f
                  bge          sp, a2, 250f
                  and          t1, s4, s10
                  bne          t3, a2, 254f
                  bgeu         t3, a3, 249f
                  nop
                  srli         a6, gp, 10
                  auipc        a0, 1046695
249:              bltu         s9, s6, 251f
250:              xori         zero, s11, -313
251:              slt          t6, tp, s2
                  bne          zero, s6, 272f
                  slti         gp, sp, -1454
254:              sub          a4, s6, tp
                  ori          a7, a0, 1532
                  sltiu        s11, s1, 1519
                  slt          sp, a1, sp
                  xor          s7, a3, s11
                  sltu         a0, s2, s8
                  addi         t2, a0, -1759
                  xori         a0, tp, -1293
                  slti         s11, ra, -642
                  nop
                  slti         t0, a5, -1354
                  slli         s10, s9, 9
                  srli         s4, t4, 8
                  srai         s0, s6, 25
                  ori          t3, t4, 282
                  and          tp, a4, t5
                  lui          s11, 28833
                  ori          a7, a2, -1599
272:              bne          t0, t1, 287f
                  bltu         t6, t0, 276f
                  blt          sp, a7, 280f
                  add          gp, s11, t1
276:              blt          s10, t1, 290f
                  add          gp, ra, a1
                  srai         t3, s2, 21
                  lui          gp, 600385
280:              beq          t6, s3, 297f
                  srai         t4, a3, 17
                  bne          sp, s6, 301f
                  addi         sp, sp, 355
                  or           s10, s3, s8
                  sub          s0, a3, s7
                  srl          a1, t1, t4
287:              bne          s5, t0, 289f
                  sub          s0, a1, a6
289:              sll          t4, a5, a3
290:              bltu         t4, s8, 291f
291:              add          a6, a0, a4
                  sub          s4, s10, s5
                  and          a1, s6, a0
                  auipc        sp, 586466
                  nop
                  slt          zero, a7, a6
297:              ori          s6, s0, 526
                  or           a0, t4, s1
                  bne          ra, a4, 310f
                  srai         sp, s1, 13
301:              sra          s4, s5, t0
                  bge          t1, tp, 312f
                  sra          t4, s8, a0
                  bge          t3, s6, 322f
                  auipc        t1, 648269
                  and          t2, s10, t2
                  xori         t5, s0, -1841
                  blt          a6, a4, 326f
                  bge          a2, gp, 317f
310:              srli         sp, a4, 25
                  blt          s11, a0, 326f
312:              beq          zero, a1, 326f
                  addi         t4, t0, -1846
                  add          sp, a6, sp
                  sltiu        s0, a4, -658
                  sub          a7, gp, t2
317:              lui          t1, 407512
                  slli         t2, a3, 9
                  or           s6, a3, a7
                  bge          a4, t2, 330f
                  bge          a4, s5, 325f
322:              xor          sp, a4, s2
                  sub          a0, s5, s10
                  beq          s5, a4, 334f
325:              auipc        s5, 837024
326:              slti         zero, s3, -1149
                  sra          a1, a3, s2
                  beq          s9, s0, 345f
                  ori          ra, t5, 1287
330:              lui          ra, 748483
                  xori         a1, s5, -707
                  sll          t0, a1, t4
                  xor          t3, s0, t4
334:              sltu         a0, t4, s4
                  addi         a7, a4, -1129
                  xori         a6, t3, -1667
                  add          sp, s3, s3
                  slti         a7, s7, -163
                  blt          s9, a4, 340f
340:              and          t2, s7, s11
                  sltu         t2, a4, s2
                  and          s9, t5, t3
                  lui          sp, 145701
                  nop
345:              sub          s9, gp, t5
                  add          s3, a2, s11
                  add          sp, s5, a1
                  bne          tp, t6, 350f
                  blt          tp, ra, 360f
350:              sub          a6, s3, gp
                  andi         tp, t1, -15
                  slt          t3, t5, s9
                  slt          s0, a7, s7
                  or           t4, s7, tp
                  sltiu        t2, s11, -261
                  slli         t1, t3, 29
                  xori         s11, gp, 942
                  and          zero, s4, t3
                  and          s4, t5, t3
360:              add          s11, t4, a4
                  andi         t2, s3, 417
                  sub          t2, s3, a3
                  bltu         s9, a3, 379f
                  bgeu         a3, gp, 366f
                  bge          t1, gp, 375f
366:              sltiu        s6, a2, 1528
                  srai         a6, s7, 22
                  ori          s9, ra, -493
                  bltu         s10, t6, 379f
                  srai         t0, s11, 30
                  bne          zero, a3, 379f
                  blt          t1, s11, 373f
373:              beq          a4, s5, 379f
                  slti         a4, s7, 981
375:              slli         ra, s5, 30
                  bne          s5, s2, 379f
                  bltu         t4, s8, 379f
                  slt          t6, a0, gp
379:              srli         s10, s6, 0
                  addi         s1, s8, 1146
                  nop
                  addi         s10, a2, -304
                  nop
                  lw           t1, 4(a3)
                  ori          zero, t6, -1820
                  addi         a3, a3, 60
                  xori         a6, t1, 291
                  sltu         t3, s2, ra
                  lui          s6, 607339
522:              addi x28, x6, 1
522:              jalr x28, x28, 0
sub_2:            ori          a4, s1, -480
                  ori          t2, t1, 889
                  beq          s11, sp, sub_2_stack_p
sub_2_stack_p:    addi         a3, a3, -12
                  ori          s7, t3, -260
                  addi         s5, a7, -1733
                  auipc        s7, 609894
                  lui          ra, 139463
                  sw           t1, 4(a3)
                  sltiu        a2, s1, 1732
                  nop
                  slti         tp, s11, 80
                  add          t0, s2, s8
                  auipc        s5, 775119
                  lui          s2, 944290
                  and          s10, a3, tp
                  xor          a4, s3, a5
                  bne          sp, a3, 7f
7:                srli         a1, t2, 3
                  sll          t5, a7, t0
                  sll          t1, s8, sp
                  and          s7, a3, s10
                  or           a7, s1, s8
                  sltiu        t4, a3, -1345
                  nop
                  srai         a4, s7, 1
                  lui          a4, 869824
                  sltu         a1, t4, a2
                  blt          s6, a6, 32f
                  andi         s4, a3, 1119
                  bltu         gp, s11, 28f
                  auipc        sp, 760046
                  sltu         s9, s3, s8
                  add          t6, tp, t2
                  sub          s0, t0, ra
                  bltu         s11, t4, 42f
                  xor          ra, a5, s11
                  auipc        sp, 483011
                  bgeu         s9, s2, 40f
28:               sltiu        a6, s0, -1866
                  xor          s11, s4, a0
                  addi         a2, s10, 405
                  and          t0, tp, s11
32:               and          a1, zero, ra
                  bne          t4, s1, 45f
                  blt          sp, s1, 41f
                  andi         a0, s8, 1397
                  lui          s9, 835224
                  sub          gp, s3, s4
                  and          sp, gp, t3
                  blt          t2, s3, 50f
40:               slti         t3, s0, 856
41:               bge          s4, s1, 48f
42:               ori          a4, a5, -111
                  blt          ra, t1, 60f
                  xor          s6, s1, a4
45:               srli         s3, t1, 8
                  slt          t2, a4, t6
                  srl          t3, a4, t4
48:               beq          s4, s6, 66f
                  ori          s10, a4, -1919
50:               blt          t3, s9, 56f
                  sra          s0, s6, s10
                  slt          s4, s11, a1
                  srl          s4, a3, t4
                  addi         sp, s0, 1071
                  lui          t1, 634677
56:               slt          s9, zero, s6
                  sra          s3, a0, s3
                  srai         s6, s4, 16
                  sltu         s11, sp, t3
60:               add          s1, a0, s11
                  srl          t1, ra, s6
                  xor          a0, t0, s8
                  srli         a2, s1, 8
                  blt          a5, a5, 70f
                  blt          a3, s7, 74f
66:               sltiu        ra, s11, -1298
                  bltu         s9, s2, 74f
                  sltu         s1, s1, t2
                  sltu         gp, a7, sp
70:               addi         s9, s5, -154
                  sra          a2, s6, a4
                  add          a1, a6, ra
                  srai         s1, sp, 5
74:               sltu         zero, t0, s9
                  lw           t1, 4(a3)
                  slli         a2, s5, 0
                  sub          s9, s11, t6
                  addi         a3, a3, 12
                  lui          s11, 500317
                  sra          sp, a3, a1
92:               addi x4, x6, 0
92:               jalr x4, x4, 0
sub_8:            ori          s2, a6, 1090
                  andi         s4, s11, 1912
                  addi         a3, a3, -8
                  and          s0, a1, a3
                  xori         s3, tp, -488
                  sw           t1, 4(a3)
                  slt          sp, a3, s9
                  xor          s0, s4, t2
                  srli         a2, a4, 21
                  sll          a0, s1, s9
                  nop
                  sll          ra, t5, tp
                  la           sp, region_0+358 #start riscv_load_store_rand_instr_stream_0
                  lb           s7, 106(sp)
                  slt          t0, s6, s0
                  lw           a7, 1278(sp)
                  lb           s5, -3(sp)
                  srai         gp, a3, 25
                  srai         tp, a5, 0
                  lbu          s5, 296(sp)
                  lui          s9, 610995
                  andi         a7, s8, 971
                  lbu          a2, 274(sp)
                  sb           sp, -44(sp)
                  sb           zero, 1377(sp)
                  slti         ra, t2, 798
                  sub          zero, gp, s9
                  sltiu        s0, t3, 1785
                  lb           t6, 617(sp)
                  lhu          t1, -200(sp)
                  sll          t1, a5, t4
                  lb           t0, -98(sp)
                  sh           a0, 290(sp)
                  lhu          a4, 1180(sp)
                  slt          tp, t1, s9
                  andi         s11, a4, 1227
                  sb           s0, 767(sp)
                  lw           s0, 998(sp)
                  xori         t3, t4, -182
                  lw           s6, 1486(sp)
                  addi         t3, gp, -1402
                  slt          s4, a3, a4
                  xor          t4, s6, s9
                  lb           s7, 179(sp)
                  lb           t4, 575(sp)
                  auipc        a1, 179315
                  sb           t6, -11(sp)
                  xori         a0, a7, -552
                  sb           a2, 1361(sp)
                  xor          t2, gp, zero
                  slt          tp, t4, s10
                  or           a1, s0, t2
                  lbu          tp, 1168(sp)
                  auipc        s9, 660929
                  lb           s10, 1272(sp)
                  ori          gp, a5, -1110
                  sh           a1, 728(sp)
                  lhu          a1, 170(sp)
                  sb           a1, 719(sp)
                  sb           t2, 545(sp)
                  sh           t6, 1384(sp)
                  srl          s6, s6, s10
                  andi         s11, t5, -1175
                  lhu          tp, 924(sp)
                  lbu          s3, -149(sp)
                  lh           t6, -266(sp)
                  lb           s5, 1183(sp) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_0+1300 #start riscv_load_store_rand_instr_stream_3
                  slt          t6, ra, a4
                  add          s7, sp, a7
                  auipc        s4, 399284
                  auipc        s11, 38247
                  sb           t3, 57(sp)
                  addi         zero, ra, 890
                  sub          t4, zero, a7
                  sb           s1, -28(sp)
                  addi         s0, s4, 601
                  sb           a0, 9(sp)
                  slt          s6, a6, s1
                  sltu         zero, t3, s11
                  lbu          t3, -9(sp)
                  sub          s5, s10, t5
                  sb           t2, 58(sp)
                  lui          s7, 507038
                  lbu          a6, -52(sp)
                  andi         t1, zero, -1026
                  ori          t4, a1, -2025
                  lb           a2, 7(sp)
                  lui          a6, 938210
                  sh           tp, -58(sp)
                  sll          t1, t0, a6
                  srl          tp, t4, s7
                  sll          s6, ra, a6
                  andi         t4, t2, 595
                  lbu          a4, 19(sp)
                  xori         gp, a1, 765
                  sb           t3, 14(sp)
                  sll          s9, s6, t4
                  sb           t0, -49(sp)
                  addi         s9, t4, 681
                  sw           s2, 64(sp)
                  andi         t2, s2, 1264
                  sb           t3, -16(sp) #end riscv_load_store_rand_instr_stream_3
                  sra          s0, s1, s7
                  bltu         t6, gp, 16f
                  srl          gp, t1, zero
                  blt          a0, sp, 19f
                  slti         a4, s0, -2042
                  nop
                  sub          t3, s8, a5
                  ori          a1, a2, -1388
                  srai         t5, t0, 12
                  bgeu         zero, s4, 18f
                  lui          a4, 626955
                  slt          a0, a1, a3
                  sltiu        t3, s1, -1544
                  xori         s2, s5, -1238
                  ori          sp, t1, -1373
                  nop
16:               slti         zero, a4, 569
                  auipc        s1, 274536
18:               srai         zero, a5, 26
19:               sub          a4, s4, s1
                  srli         t0, gp, 5
                  and          s10, ra, s8
                  blt          a0, s4, 35f
                  nop
                  sub          s9, s5, a2
                  sll          t2, s9, sp
                  xori         ra, s1, -296
                  beq          a4, t6, 38f
                  slt          a0, t3, a6
                  xori         s3, s9, 230
                  xor          s6, sp, s1
                  addi         tp, s10, -1411
                  bltu         a4, s5, 38f
                  la           a6, region_0+1198 #start riscv_load_store_rand_instr_stream_1
                  sb           zero, 11(a6)
                  slli         s5, a7, 7
                  sb           s7, -11(a6)
                  lbu          t6, 0(a6)
                  lb           sp, 15(a6)
                  xori         t6, s2, -1700
                  lh           ra, -4(a6)
                  nop
                  lb           a4, -15(a6)
                  sh           t0, -6(a6)
                  lbu          s7, 15(a6)
                  xori         a0, t5, -522
                  lbu          t1, 4(a6)
                  lh           s0, -4(a6)
                  lb           a0, -6(a6)
                  addi         a4, a6, -1641
                  sb           s5, -7(a6)
                  ori          a2, s9, 1980
                  sb           s1, 4(a6)
                  lb           t0, 4(a6)
                  lb           t2, 15(a6)
                  sltiu        s10, s6, -1788
                  ori          t2, s6, 1375
                  lbu          t5, -13(a6)
                  lhu          a4, 16(a6)
                  lh           sp, -4(a6)
                  lbu          s9, 13(a6)
                  xori         a7, t5, 547
                  slti         a2, s3, 424
                  xori         s3, tp, 963
                  sb           t1, 15(a6)
                  sb           s2, -15(a6)
                  srai         a4, t5, 10
                  lb           s1, 7(a6) #end riscv_load_store_rand_instr_stream_1
                  sub          s6, tp, s4
                  and          t1, a7, a1
35:               bge          s10, a0, 47f
                  srli         a7, a7, 17
                  ori          sp, s7, -273
38:               blt          sp, zero, 47f
                  bltu         t0, s11, 45f
                  add          s11, t4, t3
                  srai         t3, s1, 23
                  addi         t6, t1, -719
                  and          s1, t4, a5
                  or           t0, zero, s9
45:               bge          t6, tp, 62f
                  sra          ra, s4, s9
47:               srli         a6, s2, 16
                  sll          s5, a5, s0
                  bgeu         s9, tp, 54f
                  bgeu         tp, a2, 69f
                  srl          a4, s1, s10
                  sll          a4, s6, t4
                  blt          s1, s6, 65f
54:               addi         zero, t1, -1520
                  sltu         s11, s7, s2
                  sltiu        t0, s5, 1555
                  bne          s0, t4, 74f
                  bne          t1, a2, 67f
                  xor          a6, a3, s3
                  slti         a2, s7, -112
                  srli         a4, zero, 18
62:               beq          t3, zero, 75f
                  sra          t4, s3, s3
                  srl          t2, s3, s2
65:               blt          a1, s5, 70f
                  xor          s10, s1, t4
67:               lui          s0, 660923
                  andi         a1, a5, 1813
69:               add          ra, a4, t3
70:               xor          ra, s5, sp
                  add          sp, s0, sp
                  sltiu        a2, s3, 1184
                  sltiu        t6, t6, -1005
74:               addi         s11, sp, -1844
75:               beq          tp, s7, 86f
                  nop
                  andi         a2, zero, -198
                  slli         t1, a1, 0
                  bne          s10, a4, 90f
                  xori         s0, t5, -608
                  add          s4, s2, t3
                  sltiu        zero, s0, 1033
                  addi         s11, a3, 283
                  xori         s0, tp, -1102
                  srl          s9, t6, a7
86:               addi         t5, s6, -1832
                  bltu         t2, t2, 98f
                  xori         t5, s11, -344
                  xori         t2, t3, 1130
90:               sltiu        gp, a5, 67
                  sltiu        s7, t5, -1214
                  auipc        t2, 509291
                  or           s3, s0, s11
                  srai         a7, s3, 22
                  sltu         s11, a7, sp
                  auipc        s7, 212701
                  bgeu         sp, s3, 108f
98:               nop
                  bne          ra, a1, 100f
100:              srli         t4, s2, 11
                  sltiu        s6, t4, -156
                  bgeu         s9, tp, 103f
103:              bltu         t2, s9, 110f
                  srai         a0, a0, 13
                  srl          t5, a1, tp
                  slti         t6, t5, -1940
                  sltiu        zero, a5, -1613
108:              add          zero, a6, s11
                  addi         ra, t5, -1321
110:              slti         ra, tp, -790
                  ori          s9, gp, 446
                  nop
                  lui          s0, 739210
                  or           s5, a3, a5
                  srl          a7, zero, s10
                  auipc        s5, 571463
                  sltiu        a7, s1, 1585
                  xor          s2, tp, a0
                  bltu         ra, t0, 130f
                  addi         t6, sp, -740
                  add          gp, tp, s11
                  sltu         tp, a3, s11
                  or           ra, s0, sp
                  sll          s10, t1, zero
                  lui          t1, 478061
                  beq          s1, sp, 139f
                  beq          gp, t4, 141f
                  blt          sp, t0, 142f
                  sra          t5, s9, a0
130:              xori         a4, tp, -160
                  xor          t0, a4, s0
                  add          t2, s5, sp
                  or           t6, tp, s11
                  xor          t4, a5, t4
                  bltu         t0, a1, 138f
                  bltu         s10, a5, 152f
                  bge          s10, s10, 151f
138:              xor          a6, s3, t1
139:              bne          t1, zero, 144f
                  add          t0, t2, s8
141:              andi         s9, s2, 1346
142:              srl          s2, a1, s10
                  bltu         ra, s0, 162f
144:              and          tp, a5, t5
                  slli         ra, t1, 2
                  xori         t6, s11, -103
                  xor          a4, a1, sp
                  sra          s11, s5, a3
                  ori          t6, s10, 511
                  add          gp, a6, s10
151:              sub          s7, a5, s2
152:              srl          s4, s3, s6
                  srai         s5, t1, 30
                  blt          t0, t6, 165f
                  addi         t0, a4, 2012
                  sltiu        s9, zero, 279
                  or           s2, a2, a0
                  sltu         a1, t5, t0
                  bltu         a0, t1, 172f
                  and          tp, gp, s5
                  srl          a1, t6, s7
162:              slti         s2, a7, 1044
                  andi         s2, a5, 1559
                  bne          ra, a5, 165f
165:              bne          s11, t0, 177f
                  xori         s4, t1, -1871
                  bne          t0, s7, 173f
                  srl          a2, s7, s7
                  xori         s7, t2, -423
                  bge          a0, t6, 185f
                  nop
172:              add          sp, a6, s2
173:              slli         tp, s11, 18
                  addi         s3, a5, 1169
                  nop
                  blt          s6, s7, 192f
177:              lui          s5, 684302
                  beq          s7, sp, 187f
                  bge          t3, t0, 192f
                  sltiu        s6, s7, 872
                  nop
                  beq          s11, s5, 193f
                  slt          s1, s0, s2
                  bgeu         t5, a0, 187f
185:              nop
                  bge          a0, s9, 202f
187:              beq          s7, t4, 196f
                  xor          t6, a2, zero
                  srai         a0, tp, 29
                  addi         s0, s4, 1775
                  srl          s2, s10, s9
192:              beq          s2, t0, 193f
193:              sll          t4, ra, t4
                  sll          a6, a2, gp
                  auipc        ra, 672663
196:              bne          t5, s9, 201f
                  bne          a6, a4, 206f
                  or           a2, sp, t5
                  slti         t0, s1, -1004
                  bltu         a3, sp, 212f
201:              beq          a6, s2, 212f
202:              sll          s0, sp, t5
                  lui          sp, 119753
                  ori          t3, s11, -1503
                  bltu         s3, tp, 222f
206:              slt          a0, s8, zero
                  sub          a0, zero, s1
                  lui          s11, 237618
                  srli         zero, s11, 13
                  slt          sp, s1, s3
                  xori         t6, gp, 1647
212:              lui          a7, 308470
                  auipc        tp, 867652
                  bltu         a1, t3, 225f
                  srai         t4, a4, 0
                  andi         sp, a6, -1292
                  andi         s4, t2, 2012
                  add          a6, t0, a5
                  xor          a7, t4, a6
                  add          a0, a3, t6
                  slti         tp, s1, 1951
222:              auipc        t3, 9607
                  srli         t0, s9, 31
                  slt          t4, t0, a0
225:              srl          s11, t5, t6
                  ori          t0, a3, 2020
                  ori          s6, a0, 977
                  xori         sp, s5, -1909
                  srl          t6, s9, t3
                  sub          t1, s8, s7
                  bge          t3, t6, 248f
                  add          t2, t0, s9
                  sltiu        s2, t6, 1078
                  xor          a2, t6, a5
                  sltiu        t1, a4, 1311
                  srai         a7, a6, 11
                  slti         s10, ra, -1708
                  addi         a6, a5, 944
                  slt          a1, s0, s0
                  srl          s4, s10, s7
                  beq          s3, a1, 248f
                  slli         s10, s5, 7
                  xori         s1, t3, -1992
                  bgeu         s8, t3, 257f
                  beq          a5, a4, 256f
                  and          zero, a2, a1
                  blt          a4, tp, 261f
248:              add          a4, a6, t5
                  srli         s3, s10, 7
                  sltu         a0, s6, s0
                  sltiu        zero, s1, 1976
                  sub          s1, s8, sp
                  sra          a7, a6, t1
                  beq          a1, t2, 265f
                  beq          sp, t0, 261f
256:              slli         a7, t5, 11
257:              srli         s1, zero, 10
                  srl          s9, t4, ra
                  nop
                  xori         ra, zero, -1219
261:              srl          t5, a4, a5
                  xori         a6, t3, 1374
                  lui          a0, 421803
                  or           s7, zero, s10
265:              srli         s9, t1, 18
                  sra          t2, s3, s0
                  srl          t0, s9, s2
                  bltu         a4, s3, 269f
269:              xori         s10, s2, 142
                  slti         t6, s0, 993
                  slli         a4, ra, 2
                  srl          t0, s10, a1
                  slli         zero, a7, 12
                  bge          s9, s0, 290f
                  ori          zero, s6, 1308
                  sltiu        s2, t3, 1994
                  bgeu         sp, s2, 283f
                  slt          s7, a7, a4
                  bne          tp, gp, 290f
                  addi         s9, s4, 1315
                  slt          s4, s5, s9
                  srl          t3, t3, a1
283:              bge          zero, ra, 292f
                  srli         s10, t2, 3
                  andi         a2, s6, -1337
                  slti         s1, s7, 2045
                  slli         s11, ra, 3
                  slli         a6, s1, 6
                  sltiu        t3, a5, -515
290:              or           a2, s10, ra
                  add          s2, s11, s0
292:              srli         s1, s10, 23
                  bltu         gp, t2, 310f
                  slli         sp, t4, 28
                  addi         s10, s9, 736
                  xor          s9, s7, a4
                  or           s0, a0, a1
                  lui          s7, 576482
                  srai         a6, s8, 7
                  slt          s4, t3, s5
                  slti         s10, s6, -822
                  srl          s9, t2, sp
                  sltu         s5, zero, s4
                  xori         s7, s2, 774
                  sub          ra, s7, s4
                  auipc        a7, 113330
                  sltiu        s6, s6, -225
                  sra          a1, ra, s7
                  or           zero, a0, t5
310:              andi         s1, a1, 1725
                  srai         a7, a1, 2
                  bne          a3, s2, 323f
                  bne          zero, t2, 330f
                  sll          sp, s0, s2
                  sra          s9, s9, a0
                  bne          gp, ra, 322f
                  srai         s10, s9, 6
                  srai         ra, s7, 29
                  bgeu         s9, s7, 334f
                  addi         s7, s11, 1440
                  srli         a0, s0, 16
322:              bltu         s1, a5, 334f
323:              beq          s9, s6, 336f
                  sltiu        s3, a3, -2033
                  sub          a1, s11, tp
                  ori          t5, s11, -1941
                  and          t5, ra, t4
                  xor          a4, t2, s2
                  sra          s6, zero, s3
330:              or           sp, s0, a0
                  xor          t0, s7, s1
                  or           s0, a1, s10
                  addi         s5, s6, 238
334:              add          t1, t0, s5
                  lui          s9, 234637
336:              bne          s11, t0, 345f
                  sll          t3, s11, s11
                  bge          a7, t0, 352f
                  or           t6, a4, tp
                  and          ra, a7, a2
                  bne          s11, s3, 352f
                  or           t3, s10, s1
                  ori          gp, a3, 981
                  xor          a4, t4, s9
345:              lui          s9, 880457
                  andi         s1, t3, 12
                  bge          a1, t4, 354f
                  sub          t2, s11, t5
                  slti         a4, s8, 671
                  sub          t4, a0, t2
                  xor          t0, ra, s3
352:              and          s9, a6, t3
                  and          s9, ra, gp
354:              ori          t5, a5, 400
                  sub          ra, a4, s5
                  sltiu        ra, t1, -1537
                  addi         s1, gp, 460
                  andi         t0, tp, 1089
                  lui          t5, 951005
                  lui          t5, 833269
                  blt          t1, t3, 373f
                  beq          s11, a0, 365f
                  lui          tp, 509704
                  sub          s4, s8, s11
365:              slli         s11, t6, 19
                  sltu         gp, a0, s9
                  blt          t5, t1, 376f
                  andi         a7, s6, 504
                  sll          t2, ra, s5
                  srl          a4, a5, a0
                  xori         t6, zero, -808
                  srai         t0, t4, 2
373:              andi         t3, gp, -1178
                  srl          s7, a4, a3
                  xori         tp, sp, 153
376:              bge          s4, t2, 387f
                  or           s11, ra, s9
                  and          ra, t4, s1
                  sltiu        t4, t0, -1343
                  slt          t4, zero, a3
                  srai         tp, s2, 16
                  xor          t6, a6, sp
                  slt          s1, s6, t6
                  sub          s4, s4, t1
                  ori          a6, s3, -932
                  slt          tp, t6, s6
387:              andi         t4, t6, -681
                  slti         t3, s4, 1377
                  and          tp, s6, a3
                  sltu         s6, gp, a4
                  andi         t3, tp, -385
                  andi         tp, t2, -2030
                  and          t0, t0, t5
                  ori          s7, t4, -618
                  srl          a4, tp, t2
                  bne          s8, s6, 409f
                  sltiu        s9, t5, 1621
                  sltu         t0, a5, gp
                  srli         s9, t4, 21
                  bltu         t5, t5, 414f
                  srl          s7, a5, a5
                  xori         a2, s5, 1126
                  srai         s3, tp, 10
                  sub          zero, ra, sp
                  srli         s1, a2, 1
                  ori          s10, s10, 2034
                  xori         a7, s1, -1915
                  xor          a7, gp, t4
409:              bge          s10, s0, 428f
                  bltu         t5, s1, 411f
411:              nop
                  sra          a7, s0, t3
                  sub          s10, s4, s7
414:              auipc        t4, 167732
                  slt          sp, ra, s7
                  srai         t2, t1, 11
                  and          t0, ra, s7
                  ori          a1, a5, -112
                  srl          s4, s1, a0
                  and          a0, a7, s3
                  addi         gp, s1, -1594
                  sll          s0, s3, s5
                  srli         ra, s2, 11
                  sra          s1, s7, s5
                  sltiu        ra, s4, 603
                  srl          s7, a5, s10
                  blt          s3, s9, 443f
428:              beq          a0, a4, 439f
                  xori         s11, s8, -1779
                  andi         tp, s9, -1175
                  sltiu        s5, a0, -25
                  sltiu        s2, a2, -1363
                  or           a1, s2, s11
                  sll          zero, s5, s2
                  srl          s5, s0, gp
                  bgeu         s11, s8, 441f
                  ori          s9, s0, 353
                  srli         a4, s11, 20
439:              blt          s10, s1, 452f
                  srl          ra, t5, tp
441:              or           s5, s6, s4
                  nop
443:              slt          a2, s11, t3
                  andi         t3, sp, 1648
                  ori          gp, t6, -1472
                  sra          a0, s11, s11
                  beq          t0, s0, 458f
                  and          t0, t6, tp
                  sltiu        s2, a0, 1091
                  slti         s3, s5, 1430
                  bltu         gp, zero, 456f
452:              xor          t3, s1, a4
                  auipc        t5, 772582
                  bge          s2, a4, 467f
                  sltu         t3, a6, t6
456:              srli         s0, s7, 14
                  srl          a4, a7, t0
458:              andi         zero, s1, -213
                  bne          t1, s6, 464f
                  xori         t6, s7, -925
                  bltu         t4, t1, 476f
                  slt          s7, sp, a3
                  addi         s3, a5, -904
464:              bgeu         s1, a4, 475f
                  slli         s11, s2, 17
                  beq          s10, t5, 473f
467:              nop
                  sltiu        s1, s7, 1696
                  bge          t1, ra, 486f
                  sltu         t6, s8, s8
                  slt          t2, sp, s11
                  bgeu         a6, zero, 485f
473:              beq          t5, s5, 484f
                  srai         a7, a7, 25
475:              beq          a2, s11, 486f
476:              addi         a0, s0, -2043
                  xor          a4, s6, s0
                  and          ra, t2, tp
                  lui          a1, 943714
                  addi         gp, s9, 1725
                  auipc        a1, 352219
                  srli         gp, a0, 16
                  add          t2, t0, s3
484:              sll          a6, t0, t6
485:              ori          zero, a4, 1325
486:              beq          s10, s0, 495f
                  blt          a2, a4, 493f
                  nop
                  beq          sp, tp, 500f
                  xori         zero, a0, -862
                  slli         a6, t0, 25
                  bgeu         t6, s6, 511f
493:              addi         a7, t1, -661
                  blt          a5, a1, 508f
495:              srai         zero, s1, 4
                  srl          t1, a1, gp
                  sll          tp, t1, tp
                  sll          zero, t6, s4
                  auipc        a2, 659101
500:              sltu         t3, a5, sp
                  xori         t3, s10, 1163
                  ori          s4, a6, -1931
                  bgeu         s5, s2, 506f
                  slli         s4, s3, 16
                  xori         t6, a7, -1824
506:              xor          s7, t1, t5
                  nop
508:              xor          ra, zero, s6
                  srl          t0, s9, a0
                  or           s4, t1, gp
511:              bge          a1, s1, 520f
                  bge          s2, t6, 528f
                  lui          gp, 578126
                  xor          t6, a3, t0
                  auipc        a4, 503974
                  bltu         s11, a6, 533f
                  bge          a1, zero, 530f
                  addi         s7, sp, 1299
                  bltu         s0, a7, 520f
520:              and          gp, sp, a5
                  srai         sp, a7, 10
                  xor          t0, t2, a7
                  ori          t4, a4, 532
                  blt          t4, a6, 540f
                  or           a0, t1, a7
                  blt          a2, a7, 527f
527:              sra          s0, a5, s7
528:              andi         t5, s0, -1974
                  slt          a2, a5, s4
530:              sltiu        t6, s11, 1242
                  bge          zero, gp, 542f
                  sltiu        s7, s9, -1653
533:              slli         s7, t0, 28
                  sltiu        s7, s9, -872
                  slli         s1, zero, 15
                  xor          a6, ra, a5
                  slti         s0, s4, -1355
                  sltu         sp, a5, a5
                  xori         s7, a5, -138
540:              bge          tp, s9, 546f
                  srl          t4, a7, s0
542:              sltiu        t0, s5, 46
                  andi         t4, s9, 563
                  or           t3, t5, s1
                  blt          a2, sp, 554f
546:              beq          a2, ra, 557f
                  beq          a5, s8, 552f
                  sltu         s10, t6, t0
                  sll          t1, a6, a2
                  sltiu        s3, t5, 1868
                  beq          s7, gp, 563f
552:              slti         s0, t6, -1677
                  beq          s1, s6, 565f
554:              xori         sp, s10, -210
                  slt          ra, a2, s2
                  slli         s9, ra, 22
557:              and          t1, sp, s11
                  and          s6, a1, zero
                  bge          a7, sp, 573f
                  bge          s10, s2, 574f
                  nop
                  xori         s7, t5, -263
563:              bltu         ra, s0, 575f
                  lui          a1, 89037
565:              srli         s11, a7, 0
                  la           a6, region_1+46 #start riscv_load_store_rand_instr_stream_2
                  lh           t4, 864(a6)
                  lh           t2, 584(a6)
                  lb           t0, 485(a6)
                  add          a1, a7, zero
                  or           t5, s11, sp
                  xor          t2, s8, a4
                  lbu          s6, 103(a6)
                  sh           a6, 644(a6)
                  lw           tp, 146(a6)
                  xori         tp, t3, 880
                  auipc        t6, 165943
                  lb           s10, 943(a6)
                  or           tp, t2, a2
                  lb           t1, 1633(a6)
                  slt          a0, t4, s0
                  sb           s3, 1422(a6)
                  sll          t5, t1, t3
                  sltu         t0, s0, s5
                  lh           a7, 360(a6)
                  lh           t4, 324(a6)
                  lhu          ra, 1168(a6)
                  auipc        t3, 132426
                  lbu          s0, 1560(a6)
                  slli         s10, a2, 27
                  andi         ra, tp, -893
                  lbu          s7, 627(a6)
                  lbu          s11, 1398(a6)
                  lb           s7, 433(a6)
                  sb           zero, 652(a6)
                  srl          a4, a0, a1
                  lbu          tp, 86(a6)
                  sb           a4, 680(a6)
                  sb           s6, 1602(a6)
                  lbu          a2, 1699(a6)
                  lb           ra, 1596(a6)
                  lb           t5, 119(a6)
                  sltiu        t0, t5, -1840
                  lh           a1, 234(a6)
                  lb           s10, 72(a6) #end riscv_load_store_rand_instr_stream_2
                  auipc        s6, 88561
                  bgeu         s10, s9, 575f
                  and          sp, s7, s1
                  sra          s7, s2, s10
                  lui          zero, 846184
                  and          t0, tp, s5
                  sltu         a4, t5, sp
573:              bne          zero, s11, 575f
574:              ori          t1, a5, 183
575:              slli         a4, s2, 4
                  lw           t1, 4(a3)
                  sub          s5, ra, t2
                  slti         s2, s11, 492
                  addi         s0, s7, -1639
                  srl          s9, a0, t2
                  slti         sp, tp, -880
                  srl          sp, s1, s7
                  slt          t4, s7, t3
                  addi         a3, a3, 8
                  sub          gp, a4, s2
                  sltiu        s4, t0, 1516
                  andi         t6, t0, -469
766:              addi x22, x6, 1
766:              jalr x22, x22, 0
sub_1:            addi         a3, a3, -16
                  xori         t4, s3, -1727
                  sw           t1, 4(a3)
                  auipc        s6, 987527
                  andi         t3, zero, -1618
                  srl          s0, s7, t2
                  la           s6, sub_2
                  addi         s6, s6, 321
                  slti         t0, zero, -1955
                  sub          t5, t5, s4
                  bgeu         t0, a6, sub_1_j3 #branch to jump instr
                  ori          a7, s5, 732
                  xor          s2, zero, s5
                  ori          s0, a0, -1846
sub_1_j3:         jalr         t1, s6, -321 #jump sub_1 -> sub_2
                  sltiu        a7, s1, 507
                  xori         s6, a0, -970
                  sll          ra, tp, s6
                  slli         a4, a7, 17
                  slt          gp, sp, s10
                  srl          s1, a1, s11
                  sll          s10, s10, t3
                  sltu         s5, a7, t2
                  or           t3, gp, a7
                  sltu         a0, s8, t6
sub_1_j4:         jal          t1, sub_3 #jump sub_1 -> sub_3
                  slt          s1, a5, t6
                  nop
                  xori         s1, a7, -1314
                  auipc        t6, 645286
                  sltu         t1, t0, t6
                  auipc        s9, 708806
                  or           s11, a4, t1
sub_1_j5:         jal          t1, sub_2 #jump sub_1 -> sub_2
                  slli         t1, a3, 18
                  sltu         s5, s3, tp
                  bltu         s10, sp, 4f
                  slt          t2, a7, a4
4:                blt          s6, a6, 14f
                  blt          t4, t1, 8f
                  bgeu         s0, s4, 14f
                  sra          tp, t5, s9
8:                bge          a3, s4, 24f
                  sll          ra, t4, a0
                  bne          t6, zero, 23f
                  ori          t4, a6, -749
                  slti         sp, gp, -1543
                  add          a1, t4, s9
14:               sra          s6, s0, t0
                  slli         s1, s8, 10
                  slti         s4, t3, -1591
                  add          t4, t0, sp
                  ori          s1, s7, -1253
                  nop
                  bgeu         ra, s9, 22f
                  or           t5, a4, a4
22:               sub          s3, s0, t0
23:               slli         gp, ra, 8
24:               bne          a7, s4, 32f
                  bgeu         s7, t5, 32f
                  xor          t3, a4, a5
                  slt          a1, t0, t6
                  sll          s9, s6, s9
                  srai         s7, t1, 26
                  bltu         s9, s2, 32f
                  bgeu         s2, a6, 32f
32:               andi         a2, s3, 712
                  ori          ra, zero, 1481
                  srai         gp, t5, 9
                  sub          a6, a0, s11
                  lw           t1, 4(a3)
                  sra          t2, t3, t1
                  lui          t2, 449043
                  sltu         tp, a6, a0
                  addi         a3, a3, 16
                  andi         ra, s10, 1761
                  srl          a7, a5, a4
                  srai         a0, gp, 11
                  and          sp, gp, t1
79:               addi x10, x6, 1
79:               jalr x10, x10, 0
sub_6:            addi         a3, a3, -28
                  andi         t2, zero, -1348
                  sll          ra, t4, zero
                  sltiu        t5, s10, 1843
                  sw           t1, 4(a3)
                  srai         s5, t0, 17
                  xor          s5, a7, a6
                  nop
                  sra          t6, ra, s11
                  bgeu         s3, a4, 9f
                  slli         t3, zero, 12
                  and          t5, t6, s2
                  slt          s1, a1, a2
                  bltu         s10, a1, 9f
                  sll          t0, s3, t4
                  xori         a1, sp, 1652
9:                lui          s6, 351981
                  xori         s5, t6, 430
                  xor          s3, s10, t4
                  sltiu        a0, s7, 392
                  srli         s10, s6, 31
                  lw           t1, 4(a3)
                  sra          t2, a3, s3
                  or           t5, s6, s3
                  auipc        tp, 306051
                  addi         a3, a3, 28
                  srli         s9, zero, 9
                  and          a0, t4, a6
28:               addi x14, x6, 1
28:               jalr x14, x14, 0
sub_5:            sra          a6, a0, s1
                  sll          t6, s1, s2
                  sra          t2, ra, a6
                  beq          tp, s7, sub_5_stack_p
                  addi         a1, s1, 788
sub_5_stack_p:    addi         a3, a3, -48
                  slti         a1, s3, 616
                  lui          a0, 160582
                  sra          a6, a0, t1
                  sw           t1, 4(a3)
                  nop
                  add          a7, s4, t2
                  slli         a1, s7, 25
                  andi         t4, s0, -1708
                  add          s5, a3, tp
                  sub          a1, t2, t0
                  addi         t0, tp, -615
                  sll          s7, s10, gp
                  sra          a2, s6, s4
                  srli         a4, t6, 14
sub_5_j11:        jal          t1, sub_7 #jump sub_5 -> sub_7
                  sra          s1, s9, t4
                  xori         a2, t2, -443
                  srai         a7, sp, 14
                  bne          t3, t3, sub_5_j12 #branch to jump instr
                  sub          s4, ra, gp
                  xor          tp, s1, t3
sub_5_j12:        jal          t1, sub_10 #jump sub_5 -> sub_10
                  and          ra, s0, s0
                  srli         s3, tp, 11
                  slti         a0, a4, 14
                  slt          s1, a4, zero
                  and          s7, s9, t4
                  add          a1, a3, a0
                  or           s7, s5, t4
                  beq          a5, t3, 9f
                  blt          a1, s9, 9f
9:                xori         s7, t6, -1550
                  xori         s0, a0, -884
                  xori         s1, a0, 1684
                  lw           t1, 4(a3)
                  and          t2, t1, gp
                  sltiu        a4, tp, 2009
                  addi         sp, zero, 1506
                  addi         a3, a3, 48
                  srai         a6, t3, 7
                  srl          t0, t6, s10
47:               addi x8, x6, 0
47:               jalr x8, x8, 0
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
mmode_intr_vector_1:
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x24, x13, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_2:
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x24, x13, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_3:
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x24, x13, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_4:
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x24, x13, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_5:
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x24, x13, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_6:
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x24, x13, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_7:
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x24, x13, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_8:
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x24, x13, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_9:
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x24, x13, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_10:
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x24, x13, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_11:
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x24, x13, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_12:
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x24, x13, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_13:
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x24, x13, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_14:
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x24, x13, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_15:
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x24, x13, zero
                  csrr x26, 0x342 # MCAUSE
                  srli x26, x26, 0x1f
                  beqz x26, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

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
                  addi x13, x13, -128
                  sw  x1, 4(x13)
                  sw  x2, 8(x13)
                  sw  x3, 12(x13)
                  sw  x4, 16(x13)
                  sw  x5, 20(x13)
                  sw  x6, 24(x13)
                  sw  x7, 28(x13)
                  sw  x8, 32(x13)
                  sw  x9, 36(x13)
                  sw  x10, 40(x13)
                  sw  x11, 44(x13)
                  sw  x12, 48(x13)
                  sw  x13, 52(x13)
                  sw  x14, 56(x13)
                  sw  x15, 60(x13)
                  sw  x16, 64(x13)
                  sw  x17, 68(x13)
                  sw  x18, 72(x13)
                  sw  x19, 76(x13)
                  sw  x20, 80(x13)
                  sw  x21, 84(x13)
                  sw  x22, 88(x13)
                  sw  x23, 92(x13)
                  sw  x24, 96(x13)
                  sw  x25, 100(x13)
                  sw  x26, 104(x13)
                  sw  x27, 108(x13)
                  sw  x28, 112(x13)
                  sw  x29, 116(x13)
                  sw  x30, 120(x13)
                  sw  x31, 124(x13)
                  add x24, x13, zero
                  csrr x26, 0x341 # MEPC
                  csrr x26, 0x342 # MCAUSE
                  li x25, 0x3 # BREAKPOINT
                  beq x26, x25, ebreak_handler
                  li x25, 0x8 # ECALL_UMODE
                  beq x26, x25, ecall_handler
                  li x25, 0x9 # ECALL_SMODE
                  beq x26, x25, ecall_handler
                  li x25, 0xb # ECALL_MMODE
                  beq x26, x25, ecall_handler
                  li x25, 0x1
                  beq x26, x25, instr_fault_handler
                  li x25, 0x5
                  beq x26, x25, load_fault_handler
                  li x25, 0x7
                  beq x26, x25, store_fault_handler
                  li x25, 0xc
                  beq x26, x25, pt_fault_handler
                  li x25, 0xd
                  beq x26, x25, pt_fault_handler
                  li x25, 0xf
                  beq x26, x25, pt_fault_handler
                  li x25, 0x2 # ILLEGAL_INSTRUCTION
                  beq x26, x25, illegal_instr_handler
                  csrr x25, 0x343 # MTVAL
                  1: la x15, test_done
                  jalr x1, x15, 0

ecall_handler:    
                  la x26, _start
                  sw x0, 0(x26)
                  sw x1, 4(x26)
                  sw x2, 8(x26)
                  sw x3, 12(x26)
                  sw x4, 16(x26)
                  sw x5, 20(x26)
                  sw x6, 24(x26)
                  sw x7, 28(x26)
                  sw x8, 32(x26)
                  sw x9, 36(x26)
                  sw x10, 40(x26)
                  sw x11, 44(x26)
                  sw x12, 48(x26)
                  sw x13, 52(x26)
                  sw x14, 56(x26)
                  sw x15, 60(x26)
                  sw x16, 64(x26)
                  sw x17, 68(x26)
                  sw x18, 72(x26)
                  sw x19, 76(x26)
                  sw x20, 80(x26)
                  sw x21, 84(x26)
                  sw x22, 88(x26)
                  sw x23, 92(x26)
                  sw x24, 96(x26)
                  sw x25, 100(x26)
                  sw x26, 104(x26)
                  sw x27, 108(x26)
                  sw x28, 112(x26)
                  sw x29, 116(x26)
                  sw x30, 120(x26)
                  sw x31, 124(x26)
                  la x15, write_tohost
                  jalr x0, x15, 0

instr_fault_handler:
                  add x13, x24, zero
                  lw  x1, 4(x13)
                  lw  x2, 8(x13)
                  lw  x3, 12(x13)
                  lw  x4, 16(x13)
                  lw  x5, 20(x13)
                  lw  x6, 24(x13)
                  lw  x7, 28(x13)
                  lw  x8, 32(x13)
                  lw  x9, 36(x13)
                  lw  x10, 40(x13)
                  lw  x11, 44(x13)
                  lw  x12, 48(x13)
                  lw  x13, 52(x13)
                  lw  x14, 56(x13)
                  lw  x15, 60(x13)
                  lw  x16, 64(x13)
                  lw  x17, 68(x13)
                  lw  x18, 72(x13)
                  lw  x19, 76(x13)
                  lw  x20, 80(x13)
                  lw  x21, 84(x13)
                  lw  x22, 88(x13)
                  lw  x23, 92(x13)
                  lw  x24, 96(x13)
                  lw  x25, 100(x13)
                  lw  x26, 104(x13)
                  lw  x27, 108(x13)
                  lw  x28, 112(x13)
                  lw  x29, 116(x13)
                  lw  x30, 120(x13)
                  lw  x31, 124(x13)
                  addi x13, x13, 128
                  mret

load_fault_handler:
                  add x13, x24, zero
                  lw  x1, 4(x13)
                  lw  x2, 8(x13)
                  lw  x3, 12(x13)
                  lw  x4, 16(x13)
                  lw  x5, 20(x13)
                  lw  x6, 24(x13)
                  lw  x7, 28(x13)
                  lw  x8, 32(x13)
                  lw  x9, 36(x13)
                  lw  x10, 40(x13)
                  lw  x11, 44(x13)
                  lw  x12, 48(x13)
                  lw  x13, 52(x13)
                  lw  x14, 56(x13)
                  lw  x15, 60(x13)
                  lw  x16, 64(x13)
                  lw  x17, 68(x13)
                  lw  x18, 72(x13)
                  lw  x19, 76(x13)
                  lw  x20, 80(x13)
                  lw  x21, 84(x13)
                  lw  x22, 88(x13)
                  lw  x23, 92(x13)
                  lw  x24, 96(x13)
                  lw  x25, 100(x13)
                  lw  x26, 104(x13)
                  lw  x27, 108(x13)
                  lw  x28, 112(x13)
                  lw  x29, 116(x13)
                  lw  x30, 120(x13)
                  lw  x31, 124(x13)
                  addi x13, x13, 128
                  mret

store_fault_handler:
                  add x13, x24, zero
                  lw  x1, 4(x13)
                  lw  x2, 8(x13)
                  lw  x3, 12(x13)
                  lw  x4, 16(x13)
                  lw  x5, 20(x13)
                  lw  x6, 24(x13)
                  lw  x7, 28(x13)
                  lw  x8, 32(x13)
                  lw  x9, 36(x13)
                  lw  x10, 40(x13)
                  lw  x11, 44(x13)
                  lw  x12, 48(x13)
                  lw  x13, 52(x13)
                  lw  x14, 56(x13)
                  lw  x15, 60(x13)
                  lw  x16, 64(x13)
                  lw  x17, 68(x13)
                  lw  x18, 72(x13)
                  lw  x19, 76(x13)
                  lw  x20, 80(x13)
                  lw  x21, 84(x13)
                  lw  x22, 88(x13)
                  lw  x23, 92(x13)
                  lw  x24, 96(x13)
                  lw  x25, 100(x13)
                  lw  x26, 104(x13)
                  lw  x27, 108(x13)
                  lw  x28, 112(x13)
                  lw  x29, 116(x13)
                  lw  x30, 120(x13)
                  lw  x31, 124(x13)
                  addi x13, x13, 128
                  mret

ebreak_handler:   
                  csrr  x26, 0x341
                  addi  x26, x26, 4
                  csrw  0x341, x26
                  add x13, x24, zero
                  lw  x1, 4(x13)
                  lw  x2, 8(x13)
                  lw  x3, 12(x13)
                  lw  x4, 16(x13)
                  lw  x5, 20(x13)
                  lw  x6, 24(x13)
                  lw  x7, 28(x13)
                  lw  x8, 32(x13)
                  lw  x9, 36(x13)
                  lw  x10, 40(x13)
                  lw  x11, 44(x13)
                  lw  x12, 48(x13)
                  lw  x13, 52(x13)
                  lw  x14, 56(x13)
                  lw  x15, 60(x13)
                  lw  x16, 64(x13)
                  lw  x17, 68(x13)
                  lw  x18, 72(x13)
                  lw  x19, 76(x13)
                  lw  x20, 80(x13)
                  lw  x21, 84(x13)
                  lw  x22, 88(x13)
                  lw  x23, 92(x13)
                  lw  x24, 96(x13)
                  lw  x25, 100(x13)
                  lw  x26, 104(x13)
                  lw  x27, 108(x13)
                  lw  x28, 112(x13)
                  lw  x29, 116(x13)
                  lw  x30, 120(x13)
                  lw  x31, 124(x13)
                  addi x13, x13, 128
                  mret

illegal_instr_handler:
                  csrr  x26, 0x341
                  addi  x26, x26, 4
                  csrw  0x341, x26
                  add x13, x24, zero
                  lw  x1, 4(x13)
                  lw  x2, 8(x13)
                  lw  x3, 12(x13)
                  lw  x4, 16(x13)
                  lw  x5, 20(x13)
                  lw  x6, 24(x13)
                  lw  x7, 28(x13)
                  lw  x8, 32(x13)
                  lw  x9, 36(x13)
                  lw  x10, 40(x13)
                  lw  x11, 44(x13)
                  lw  x12, 48(x13)
                  lw  x13, 52(x13)
                  lw  x14, 56(x13)
                  lw  x15, 60(x13)
                  lw  x16, 64(x13)
                  lw  x17, 68(x13)
                  lw  x18, 72(x13)
                  lw  x19, 76(x13)
                  lw  x20, 80(x13)
                  lw  x21, 84(x13)
                  lw  x22, 88(x13)
                  lw  x23, 92(x13)
                  lw  x24, 96(x13)
                  lw  x25, 100(x13)
                  lw  x26, 104(x13)
                  lw  x27, 108(x13)
                  lw  x28, 112(x13)
                  lw  x29, 116(x13)
                  lw  x30, 120(x13)
                  lw  x31, 124(x13)
                  addi x13, x13, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x26, 0x300 # MSTATUS;
                  csrr  x26, 0x304 # MIE;
                  csrr  x26, 0x344 # MIP;
                  csrrc x26, 0x344, x26 # MIP;
                  add x13, x24, zero
                  lw  x1, 4(x13)
                  lw  x2, 8(x13)
                  lw  x3, 12(x13)
                  lw  x4, 16(x13)
                  lw  x5, 20(x13)
                  lw  x6, 24(x13)
                  lw  x7, 28(x13)
                  lw  x8, 32(x13)
                  lw  x9, 36(x13)
                  lw  x10, 40(x13)
                  lw  x11, 44(x13)
                  lw  x12, 48(x13)
                  lw  x13, 52(x13)
                  lw  x14, 56(x13)
                  lw  x15, 60(x13)
                  lw  x16, 64(x13)
                  lw  x17, 68(x13)
                  lw  x18, 72(x13)
                  lw  x19, 76(x13)
                  lw  x20, 80(x13)
                  lw  x21, 84(x13)
                  lw  x22, 88(x13)
                  lw  x23, 92(x13)
                  lw  x24, 96(x13)
                  lw  x25, 100(x13)
                  lw  x26, 104(x13)
                  lw  x27, 108(x13)
                  lw  x28, 112(x13)
                  lw  x29, 116(x13)
                  lw  x30, 120(x13)
                  lw  x31, 124(x13)
                  addi x13, x13, 128
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
