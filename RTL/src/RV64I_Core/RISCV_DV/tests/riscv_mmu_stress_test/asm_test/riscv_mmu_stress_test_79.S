.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x2, h0_start
jalr x0, x2, 0
h0_start:
                  li x13, 0x40000100
                  csrw 0x301, x13
kernel_sp:        
                  la x14, kernel_stack_end

trap_vec_init:    
                  la x13, mtvec_handler
                  ori x13, x13, 0
                  csrw 0x305, x13 # MTVEC

mepc_setup:       
                  la x13, init
                  csrw 0x341, x13

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x13, 0x1800
                  csrw 0x300, x13 # MSTATUS
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0x6
                  li x2, 0x2c59a21
                  li x3, 0xf19a6358
                  li x4, 0x239d2374
                  li x5, 0x53ef4e0f
                  li x6, 0x2
                  li x7, 0x80000000
                  li x8, 0x202970b2
                  li x9, 0xe
                  li x10, 0xa
                  li x11, 0x5586a9f4
                  li x12, 0x5166b8ca
                  li x13, 0x2
                  li x15, 0x1
                  li x16, 0x8
                  li x17, 0x80000000
                  li x18, 0x80000000
                  li x19, 0xf3782d69
                  li x20, 0xfe3950f1
                  li x21, 0x0
                  li x22, 0xf3de85d8
                  li x23, 0x0
                  li x24, 0xfef4a06
                  li x26, 0x0
                  li x27, 0x0
                  li x28, 0x80000000
                  li x29, 0x0
                  li x30, 0xf418afca
                  li x31, 0x80000000
                  la x25, user_stack_end
main:             la           a7, region_0+1616 #start riscv_load_store_hazard_instr_stream_0
                  lb           gp, 93(a7)
                  lb           t3, 93(a7)
                  lb           s1, 93(a7)
                  lb           s7, 93(a7)
                  ori          gp, s11, -744
                  sb           t5, 93(a7)
                  lbu          a3, 93(a7)
                  andi         tp, t2, -191
                  xori         t3, s11, -1477
                  lbu          s1, 93(a7)
                  sb           s2, 93(a7)
                  sll          a2, a7, a1
                  slt          s6, a6, tp
                  lb           s7, 93(a7)
                  sb           a7, 93(a7)
                  sb           s9, 93(a7)
                  lbu          s10, 93(a7)
                  xor          a2, sp, s10
                  lbu          a0, 93(a7)
                  sb           s11, 93(a7)
                  lbu          s0, 93(a7)
                  sub          a2, s4, s8
                  sb           s8, 93(a7) #end riscv_load_store_hazard_instr_stream_0
                  la           t6, region_1+1502 #start riscv_load_store_rand_instr_stream_0
                  sltiu        s6, sp, 1233
                  slli         a3, s3, 31
                  and          s11, a5, ra
                  nop
                  sub          s11, s3, a6
                  sw           t3, -722(t6)
                  lbu          t0, -671(t6)
                  srl          tp, a0, s3
                  slt          s10, a2, s7
                  addi         s4, t5, 1552
                  nop
                  sll          s4, s1, tp
                  srai         s7, s4, 7
                  slti         s1, s7, -894
                  sra          s10, s6, t4
                  lbu          a2, -696(t6)
                  lbu          s8, 171(t6)
                  andi         zero, a4, -484
                  lbu          a2, -832(t6)
                  lbu          ra, -934(t6)
                  lb           s5, -1495(t6)
                  lbu          s2, -287(t6)
                  sltiu        ra, t4, 1970
                  sb           s6, -369(t6)
                  sub          s10, s8, a2
                  sub          gp, a5, s5
                  sb           ra, -588(t6)
                  sw           s11, -962(t6)
                  ori          t3, a2, -105
                  srli         s6, s5, 18
                  sb           s6, 18(t6)
                  sra          a6, s8, a5
                  auipc        a5, 966839
                  lbu          s10, -1094(t6)
                  srl          s8, t2, a0
                  lbu          a1, -480(t6)
                  sb           a4, -668(t6)
                  sb           t5, 107(t6) #end riscv_load_store_rand_instr_stream_0
                  la           a5, region_0+986 #start load_store_instr_stream_4
                  la           s11, region_0+1013 #start load_store_instr_stream_1
                  la           a2, region_0+1512 #start load_store_instr_stream_0
                  lbu          s1, 79(a5)
                  lbu          s1, 255(a5)
                  la           s0, region_0+1561 #start load_store_instr_stream_3
                  sb           ra, -42(a2)
                  lb           s3, 35(a2)
                  lh           s1, -17(s0)
                  sb           sp, 126(s11)
                  lb           t5, -17(a5)
                  la           a6, region_0+1398 #start load_store_instr_stream_2
                  lb           a0, -141(a5)
                  lhu          s10, -191(s11)
                  lbu          gp, -97(a5)
                  lbu          t2, 40(a6)
                  lb           t0, -196(s0)
                  lbu          a0, 27(a2)
                  lhu          s10, -142(a5)
                  sh           s4, 12(a2)
                  sb           t5, 189(a6)
                  sb           a0, -132(s11)
                  lbu          tp, -247(a5)
                  lhu          ra, 217(s0)
                  lbu          a0, 73(s11)
                  lb           a0, 20(a6)
                  lbu          s1, 213(a5)
                  sb           a2, -14(a2)
                  lb           s1, 19(a2)
                  sw           s6, 203(s0)
                  sb           gp, -63(a2)
                  lw           s5, -213(s11)
                  lbu          s8, 237(s11)
                  sb           tp, -134(a5)
                  sb           a5, 256(s11)
                  lb           s4, -125(a6)
                  sw           a6, -48(a2)
                  sb           s0, 135(a5) #end load_store_instr_stream_4
                  sw           s4, 203(s11)
                  lb           t5, 54(a2)
                  lbu          a3, 47(a6) #end load_store_instr_stream_2
                  lbu          gp, -748(s0) #end load_store_instr_stream_3
                  lb           s10, 88(s11) #end load_store_instr_stream_1
                  lhu          t0, 10(a2) #end load_store_instr_stream_0
                  sltu         s1, t2, t6
                  sra          t2, sp, t0
                  and          s8, s5, gp
                  bltu         a5, a6, 5f
                  ori          a7, s4, -941
5:                or           s7, a7, s4
                  xori         ra, s11, -748
                  srl          s5, a6, s3
                  ori          tp, t4, -603
                  andi         a5, a1, -1003
                  bltu         gp, a7, 11f
11:               srai         t5, s1, 12
                  or           s7, a7, gp
                  beq          t4, s0, 24f
                  bgeu         zero, s9, 31f
                  auipc        s10, 423380
                  andi         t1, s2, 620
                  andi         t5, t1, 507
                  bge          t2, zero, 29f
                  auipc        gp, 521645
                  srai         zero, gp, 7
                  nop
                  beq          s4, s11, 33f
                  or           t2, t6, s2
24:               slt          s7, s0, s1
                  srai         zero, ra, 13
                  sltiu        t4, t1, 582
                  slt          a7, a0, s6
                  auipc        s1, 64222
29:               ori          s10, s7, -744
                  sra          s3, a4, a1
31:               or           s10, a4, a2
                  add          t0, a1, s4
33:               bne          s0, tp, 50f
                  sltu         a2, t0, s8
                  sltiu        s10, s0, 248
                  bgeu         s8, t1, 52f
                  bge          t2, sp, 42f
                  bgeu         s5, a4, 49f
                  blt          gp, t5, 59f
                  srli         a5, s6, 11
                  andi         t2, t1, 876
42:               andi         t1, s2, 1519
                  blt          t3, s0, 50f
                  sra          ra, s0, s6
                  add          s0, sp, a3
                  srl          s4, t0, t1
                  xor          s6, s1, s3
                  xori         t0, t2, -1794
49:               srl          t0, t3, s11
50:               slti         t1, s11, 1176
                  addi         a2, t3, -263
                  slt          s0, s0, sp
                  la           s3, sub_1
                  addi         s3, s3, 147
                  auipc        a6, 909025
                  bltu         a2, zero, main_j1 #branch to jump instr
                  srli         t2, a0, 25
                  sltu         a6, s2, s5
                  and          t0, zero, s9
                  nop
                  add          s11, t3, tp
                  sra          ra, s9, s3
main_j1:          jalr         s11, s3, -147 #jump main -> sub_1
                  slli         s1, s3, 29
52:               xori         gp, a2, -838
                  auipc        a7, 382518
                  blt          a7, a0, 73f
                  slti         t6, gp, 615
                  bge          a0, s1, 62f
                  xori         t4, t1, 252
                  nop
59:               bne          t0, s11, 66f
                  xori         s8, s7, 557
                  slli         t2, s4, 2
62:               xori         s8, a2, 1568
                  ori          t3, a1, -1976
                  blt          t6, t6, 76f
                  sltu         a3, t4, a3
66:               bgeu         gp, a2, 79f
                  nop
                  or           s0, t5, s0
                  slt          s8, s0, ra
                  srai         s10, s9, 7
                  srli         a0, s11, 28
                  sub          gp, t2, s1
73:               xor          s0, t4, gp
                  sra          t1, tp, t4
                  sra          a6, s3, tp
76:               or           a0, a4, sp
                  andi         tp, t1, -655
                  bgeu         s4, s8, 82f
79:               bne          sp, t0, 83f
                  bne          t4, s1, 98f
                  sltiu        s4, s4, -1127
82:               or           s5, s10, s3
83:               bne          a6, s2, 84f
84:               bne          s5, t3, 99f
                  bne          a5, s9, 96f
                  sll          zero, a6, sp
                  slt          a7, a1, a4
                  slli         a7, ra, 4
                  and          a2, zero, zero
                  bltu         t2, s1, 99f
                  ori          t1, t4, 1232
                  add          zero, a2, s2
                  andi         s6, a3, 977
                  srl          s4, s6, t4
                  sra          s4, s6, t0
96:               blt          a4, s6, 116f
                  srai         t4, a7, 0
98:               slti         s2, a5, -16
99:               srai         t6, s1, 26
                  sll          s5, a7, s6
                  bgeu         s2, s0, 112f
                  and          t2, s3, a0
                  sltiu        s2, zero, 1130
                  andi         s0, s9, 240
                  srli         s0, s7, 27
                  sub          t6, zero, ra
                  sltu         s2, t1, a4
                  addi         s3, s7, 316
                  bltu         sp, s5, 122f
                  bgeu         t3, a2, 127f
                  nop
112:              sub          tp, s11, a5
                  nop
                  bltu         a3, s10, 127f
                  addi         s11, ra, 32
116:              slti         s5, s9, -1249
                  xor          zero, a2, s7
                  xori         a1, zero, -1404
                  bltu         a1, t3, 127f
                  slli         s1, ra, 23
                  sub          s5, s5, t0
122:              sub          s1, a3, t2
                  andi         s6, t4, -1917
                  srai         t2, a6, 30
                  bltu         t3, a7, 127f
                  auipc        a6, 143238
127:              slli         a0, t3, 5
                  la x2, test_done
                  jalr x0, x2, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            xori         s10, s1, 1353
                  srli         s3, t6, 15
                  bge          t5, ra, sub_1_stack_p
sub_1_stack_p:    addi         s9, s9, -32
                  addi         t5, a7, -1285
                  sw           s11, 4(s9)
                  or           zero, t3, s3
                  srli         s10, s5, 10
                  slt          tp, t0, a4
                  sll          s3, t0, t0
                  ori          s2, t0, 633
                  slt          a7, a1, a0
                  slli         t2, s6, 4
                  la           a6, region_0+991 #start load_store_instr_stream_1
                  la           a7, region_0+741 #start load_store_instr_stream_0
                  sb           ra, -48(a6)
                  lw           a2, 7(a7)
                  sb           s2, 200(a6)
                  lb           s11, -3(a7)
                  lb           a5, -110(a6)
                  lbu          t6, -9(a7)
                  lhu          t5, -115(a6)
                  lbu          s0, 162(a6)
                  lbu          a0, -11(a7)
                  sh           s7, -15(a7)
                  lb           a2, -198(a6) #end load_store_instr_stream_1
                  sw           s1, 3(a7)
                  lbu          a3, 14(a7) #end load_store_instr_stream_0
                  la           s11, region_0+293 #start riscv_load_store_rand_instr_stream_0
                  sb           s10, 5(s11)
                  sra          s3, s5, t0
                  sh           a2, 5(s11)
                  lbu          s6, 0(s11)
                  lh           tp, 13(s11)
                  lb           a2, -6(s11)
                  lb           a0, 11(s11)
                  sra          s0, s7, s9
                  lh           t0, 13(s11)
                  lh           tp, 3(s11)
                  srli         t3, s3, 19
                  sb           a1, 2(s11)
                  sb           s4, -11(s11)
                  lw           s7, -1(s11)
                  ori          a1, ra, -227
                  sb           a6, 7(s11)
                  lhu          gp, -7(s11)
                  sll          s2, s1, s2
                  lb           s1, 16(s11)
                  sb           a7, 10(s11)
                  lbu          a5, -10(s11)
                  addi         s0, t3, -1489
                  lb           t3, -3(s11)
                  lbu          s7, 13(s11)
                  andi         a2, t4, 1186
                  sh           ra, -9(s11)
                  lb           a3, 12(s11)
                  lh           s6, 1(s11)
                  lh           a1, -11(s11)
                  lbu          a6, 8(s11)
                  sb           ra, 3(s11)
                  slti         s7, s5, 972
                  nop
                  xori         a0, s8, -1161
                  and          a0, s0, s1
                  slt          t2, a2, s10
                  sra          a6, s6, tp
                  addi         t4, zero, -487
                  lbu          a5, 16(s11)
                  lw           a3, -13(s11)
                  and          a1, zero, t6
                  slti         tp, tp, 1615
                  lbu          a1, -6(s11) #end riscv_load_store_rand_instr_stream_0
                  la           s6, region_0+1071 #start riscv_load_store_hazard_instr_stream_3
                  lb           s10, 498(s6)
                  sll          s11, a7, t1
                  lw           ra, -363(s6)
                  andi         a1, sp, -771
                  sb           s4, -642(s6)
                  sb           t5, -679(s6)
                  lbu          s7, -679(s6)
                  or           s3, t3, s5
                  lbu          s2, -679(s6)
                  lb           t0, 400(s6)
                  sb           s0, -506(s6)
                  lb           s0, -66(s6)
                  sb           a5, -66(s6)
                  lbu          s3, -66(s6)
                  sb           a3, -66(s6)
                  lb           t5, -448(s6)
                  sb           t6, -448(s6)
                  lbu          s5, -751(s6)
                  lbu          a3, -710(s6)
                  sb           s8, -896(s6)
                  sb           t5, 609(s6)
                  lhu          a7, 609(s6)
                  and          s0, s8, a5
                  lbu          t6, 312(s6) #end riscv_load_store_hazard_instr_stream_3
                  la           a2, region_0+1716 #start load_store_instr_stream_0
                  la           t2, region_0+734 #start load_store_instr_stream_3
                  la           s3, region_0+1288 #start load_store_instr_stream_2
                  sb           t3, 217(t2)
                  lh           t5, -64(a2)
                  sh           s5, -470(s3)
                  la           a3, region_0+1358 #start load_store_instr_stream_1
                  lbu          s6, -158(a2)
                  sb           t0, -659(a3)
                  la           s11, region_0+766 #start load_store_instr_stream_4
                  lh           s7, 32(t2)
                  lbu          s5, 108(s11)
                  lb           t4, -567(s3)
                  lbu          t0, -341(s3)
                  lhu          a1, 236(a3)
                  lb           t4, 225(s11)
                  lbu          t3, 51(t2)
                  lw           ra, -46(s11)
                  lb           t3, 72(s11)
                  lb           s0, -165(a2)
                  sh           s2, 190(a3)
                  sb           a3, 69(t2)
                  sh           gp, -508(a3)
                  lbu          s10, -202(s3)
                  sb           s10, -630(s3)
                  lw           t6, 40(a2)
                  lh           zero, -1172(s3)
                  lb           a0, 523(a3) #end load_store_instr_stream_1
                  lbu          a5, -243(a2)
                  lb           s8, 5(s11)
                  sb           t1, -49(a2)
                  lhu          t5, 416(s3)
                  sb           sp, -149(t2)
                  lh           s10, -216(s11)
                  sb           s11, -176(t2) #end load_store_instr_stream_3
                  sh           s7, 140(s11)
                  lb           s7, -103(s11) #end load_store_instr_stream_4
                  sb           t5, -698(s3) #end load_store_instr_stream_2
                  sh           ra, 60(a2) #end load_store_instr_stream_0
                  la           t5, region_0+605 #start riscv_load_store_rand_instr_stream_4
                  slli         s11, s5, 24
                  auipc        s2, 806836
                  sra          t1, a4, t2
                  lb           t0, 890(t5)
                  lbu          a1, 636(t5)
                  sb           s5, -452(t5)
                  sb           s11, -67(t5)
                  lbu          a5, 6(t5)
                  ori          gp, s2, 1269
                  add          a6, ra, s0
                  sra          t2, a5, t3
                  lbu          t4, 554(t5)
                  sh           a1, 1103(t5)
                  xor          s3, a1, tp
                  or           t3, s3, s10
                  sb           s7, 621(t5)
                  lui          s4, 664797
                  sltiu        t1, a4, -387
                  lbu          s5, 973(t5)
                  lh           t3, 163(t5)
                  srli         a1, s4, 18
                  xori         t4, a0, 1701
                  sb           s7, 250(t5)
                  sltiu        tp, s3, 1652
                  lbu          a5, -14(t5)
                  sll          t2, s3, zero
                  andi         t6, s7, 314
                  lb           a3, 238(t5)
                  lbu          a0, -170(t5)
                  lw           s1, 1095(t5)
                  slti         s5, s2, -1856
                  addi         s3, t1, 418
                  andi         ra, s7, 1269
                  xor          a1, s5, s9
                  lbu          s0, 918(t5)
                  lbu          t4, -537(t5)
                  ori          t1, s11, -1631
                  or           s2, a6, a6
                  sh           s11, 895(t5)
                  lb           s2, 177(t5) #end riscv_load_store_rand_instr_stream_4
                  la           a1, region_0+631 #start riscv_load_store_rand_instr_stream_2
                  sltu         t2, zero, s3
                  sb           t0, -44(a1)
                  sb           s8, 1(a1)
                  slti         s7, s2, 374
                  srli         s2, t4, 3
                  sltiu        s7, s1, 1936
                  sltu         a0, t0, s1
                  sh           s1, 27(a1)
                  slti         s10, ra, 1655
                  lb           s6, -1(a1)
                  srl          s4, a7, tp
                  xori         s2, a1, -1189
                  or           t2, a5, tp
                  lbu          a0, 0(a1)
                  lb           a3, 11(a1)
                  lbu          t1, -57(a1)
                  lb           s8, 53(a1)
                  lhu          s8, 31(a1)
                  sb           t3, 58(a1)
                  srl          t3, gp, s10
                  lb           ra, 49(a1) #end riscv_load_store_rand_instr_stream_2
                  la           a2, region_0+331 #start riscv_load_store_hazard_instr_stream_2
                  xori         s4, s0, -1353
                  and          s3, t2, s1
                  lh           s4, -109(a2)
                  add          t6, s0, gp
                  sb           t6, -216(a2)
                  lbu          s0, -216(a2)
                  lb           a6, -216(a2)
                  lb           t5, -216(a2)
                  sra          a0, a7, t5
                  lb           t2, -216(a2)
                  lui          s11, 816240
                  sb           a5, -216(a2)
                  lb           ra, -216(a2)
                  sb           s7, -216(a2)
                  sb           t6, -216(a2)
                  auipc        s4, 450172
                  sb           zero, -216(a2)
                  lb           s3, -216(a2)
                  lbu          s10, 25(a2)
                  sh           a1, 25(a2)
                  lh           a3, 25(a2)
                  lhu          s5, 25(a2)
                  srli         s7, t0, 27
                  sb           gp, 25(a2) #end riscv_load_store_hazard_instr_stream_2
                  la           a6, region_0+380 #start load_store_instr_stream_1
                  lhu          zero, 0(a6)
                  lh           a5, 8(a6)
                  lbu          s8, -12(a6)
                  la           t4, region_0+715 #start load_store_instr_stream_0
                  la           t2, region_0+1185 #start load_store_instr_stream_2
                  lhu          a2, 6(a6)
                  lbu          s1, 216(t4)
                  lb           tp, 43(t2)
                  lbu          s11, -42(t2)
                  lhu          s3, -16(a6)
                  lb           s3, 72(t4)
                  lw           s8, -41(t2)
                  lbu          a2, -16(a6)
                  lh           zero, -51(t2)
                  sb           s10, -12(a6)
                  sb           t3, -22(t2) #end load_store_instr_stream_2
                  lbu          t6, 40(t4)
                  sb           s2, 6(a6)
                  lw           gp, 12(a6)
                  sb           t6, 60(t4)
                  sb           gp, -11(a6) #end load_store_instr_stream_1
                  sb           s2, -11(t4) #end load_store_instr_stream_0
                  la           a2, region_1+910 #start load_store_instr_stream_4
                  la           s7, region_1+1457 #start load_store_instr_stream_3
                  la           a6, region_1+43 #start load_store_instr_stream_0
                  la           s8, region_1+1100 #start load_store_instr_stream_2
                  lbu          t6, -26(a6)
                  sh           s9, -8(s8)
                  lb           s11, 31(a6)
                  lhu          t0, -237(s7)
                  la           t1, region_1+244 #start load_store_instr_stream_1
                  lhu          s0, 36(a2)
                  sb           s6, -258(s7)
                  sb           a5, 3(s8)
                  sb           ra, 132(s7)
                  sb           t3, 13(s8)
                  lb           s3, -773(s7)
                  lhu          s5, 14(s8)
                  sb           ra, -10(a6)
                  lbu          s1, 3(s8)
                  lbu          s11, -23(a2)
                  sb           s8, -554(s7)
                  lb           s10, 55(a2)
                  lhu          s3, 52(t1)
                  sb           zero, -35(t1)
                  lh           t4, -6(s8)
                  lh           s4, 14(s8)
                  sh           s2, 39(a6)
                  lbu          t5, -42(a6)
                  lbu          t5, 3(s8)
                  sb           s2, 502(s7)
                  lh           t3, -16(a2)
                  lb           t0, 48(a2)
                  sb           t3, 7(s8)
                  sb           s3, -319(s7)
                  lbu          s5, -653(s7)
                  lbu          s2, -43(t1)
                  sb           a5, 1(s8) #end load_store_instr_stream_2
                  sb           s8, -9(a2)
                  lb           ra, 30(a6)
                  lbu          t6, -972(s7) #end load_store_instr_stream_3
                  lb           s5, -22(t1)
                  lbu          tp, 39(t1) #end load_store_instr_stream_1
                  lb           a7, -63(a2) #end load_store_instr_stream_4
                  lh           t5, 29(a6) #end load_store_instr_stream_0
                  la           t2, region_0+502 #start riscv_load_store_rand_instr_stream_3
                  xor          s11, a4, s2
                  lb           s8, -40(t2)
                  sh           s2, 42(t2)
                  srl          s2, tp, s10
                  and          t0, s5, s9
                  sh           t5, -2(t2)
                  lui          s3, 805249
                  lbu          a0, 16(t2)
                  addi         s2, s8, -359
                  andi         s1, s0, 1610
                  sb           sp, -64(t2)
                  lui          a2, 984692
                  sltiu        t4, ra, -1057
                  sll          s2, s2, s1
                  slli         s7, s11, 4
                  lhu          ra, -36(t2)
                  srai         a1, a1, 28
                  slt          ra, a0, s2
                  srl          s3, t5, t4
                  sb           a7, 36(t2)
                  lb           tp, -49(t2)
                  andi         s0, zero, 1648
                  xor          ra, s4, t5
                  xori         a6, ra, 1355
                  sltu         s11, s11, t5
                  lbu          s11, 29(t2)
                  srli         a1, a3, 25
                  slti         s0, s3, -271
                  slti         a2, s4, -321
                  lh           s0, 28(t2)
                  lb           a1, 49(t2)
                  lbu          a6, 35(t2) #end riscv_load_store_rand_instr_stream_3
                  la           s10, region_0+425 #start riscv_load_store_hazard_instr_stream_4
                  or           a7, s9, s10
                  sb           t2, -9(s10)
                  sb           t6, -9(s10)
                  and          s2, a6, a6
                  sltiu        a2, ra, -1740
                  sb           t5, -9(s10)
                  sh           ra, -9(s10)
                  sh           t1, -9(s10)
                  lbu          a2, -9(s10)
                  lw           t0, -9(s10)
                  lw           a7, -9(s10)
                  auipc        s2, 273453
                  lb           t0, -9(s10)
                  lbu          s5, -9(s10)
                  lh           gp, -9(s10)
                  sh           s11, -9(s10)
                  lh           t0, -9(s10)
                  lbu          s5, -9(s10) #end riscv_load_store_hazard_instr_stream_4
                  la           s6, region_1+1973 #start riscv_load_store_rand_instr_stream_1
                  sltiu        a7, a6, -1115
                  andi         s5, sp, 2027
                  slli         a2, a4, 14
                  sb           s6, 8(s6)
                  lb           s3, -7(s6)
                  lui          t3, 309204
                  lbu          s0, 12(s6)
                  lh           t4, -7(s6)
                  lbu          s7, 12(s6)
                  and          a6, s6, a6
                  sub          tp, s7, a3
                  lhu          a0, 15(s6)
                  addi         ra, s9, -2020
                  sb           gp, 12(s6)
                  nop
                  lbu          gp, 10(s6)
                  lb           a0, -10(s6)
                  sra          s5, a0, a3
                  sb           t0, -16(s6)
                  sb           gp, -6(s6)
                  ori          a6, a4, -24
                  lb           s4, 5(s6)
                  sh           t6, -7(s6)
                  sb           a0, -14(s6)
                  srai         s11, a3, 11
                  lb           a3, -14(s6)
                  auipc        s8, 1005775
                  sra          a1, a4, s0
                  ori          a5, a3, -674
                  sh           t2, -7(s6)
                  lbu          a1, 12(s6)
                  xor          a1, t1, tp
                  srl          s3, s8, a0
                  sltu         t0, a1, a1
                  sb           s11, -11(s6)
                  sltiu        t2, t2, -1509
                  sb           a4, -15(s6)
                  xori         a7, s1, 1001
                  sltu         a6, s7, s2
                  ori          s7, ra, -291
                  lb           s2, 12(s6)
                  lbu          gp, -6(s6)
                  xor          t0, t6, a1
                  lb           a1, 4(s6) #end riscv_load_store_rand_instr_stream_1
                  la           s0, region_0+1399 #start riscv_load_store_hazard_instr_stream_0
                  lb           t3, -2(s0)
                  lhu          ra, -33(s0)
                  lhu          s8, -33(s0)
                  lhu          t4, 55(s0)
                  xor          s2, s11, s11
                  lh           zero, 55(s0)
                  lbu          a6, 55(s0)
                  lbu          s10, 55(s0)
                  sb           a1, -26(s0)
                  sb           a4, -26(s0)
                  lbu          t5, -26(s0)
                  lb           t6, -26(s0)
                  lbu          t3, 14(s0)
                  lb           t5, 14(s0)
                  slli         a3, a1, 27
                  sb           ra, 14(s0)
                  lbu          a7, -34(s0)
                  sltiu        a0, s8, -1400
                  srli         t0, a3, 3
                  lb           a3, 32(s0) #end riscv_load_store_hazard_instr_stream_0
                  la           a3, region_1+940 #start load_store_instr_stream_1
                  la           a0, region_1+357 #start load_store_instr_stream_2
                  la           a1, region_1+738 #start load_store_instr_stream_3
                  la           t4, region_1+122 #start load_store_instr_stream_0
                  lbu          t6, 16(a0)
                  sh           s7, 38(a1)
                  lb           t0, 16(a0)
                  lhu          zero, -30(a3)
                  lb           zero, 30(t4)
                  sb           t1, -14(a3)
                  lb           s0, -8(a0)
                  lh           t0, 50(a1)
                  sb           tp, -49(a1)
                  lb           a5, 53(a3)
                  lh           tp, 64(t4)
                  sb           tp, -32(a1)
                  lbu          s0, -51(a1)
                  lb           s11, 55(t4)
                  lb           tp, 20(a3)
                  lb           t3, 11(a0)
                  lw           s6, 18(t4)
                  sh           s0, 8(a1)
                  lh           s5, -56(a1)
                  sb           a6, -23(t4)
                  sb           t5, -64(a1)
                  lb           s3, 23(t4)
                  sb           zero, -6(a0) #end load_store_instr_stream_2
                  sb           t2, 45(a3) #end load_store_instr_stream_1
                  lh           t0, 48(a1) #end load_store_instr_stream_3
                  lbu          s3, 18(t4) #end load_store_instr_stream_0
                  la           s2, region_0+1447 #start riscv_load_store_hazard_instr_stream_1
                  lbu          a2, -14(s2)
                  and          a1, t2, t3
                  xor          s3, s3, t0
                  lb           a1, 15(s2)
                  lb           t6, 15(s2)
                  lhu          s8, 15(s2)
                  srl          s7, s9, s9
                  lb           a2, 15(s2)
                  sb           s6, 2(s2)
                  sb           zero, 8(s2)
                  andi         s7, s5, 621
                  add          tp, a5, t4
                  lb           s5, -11(s2)
                  lb           s3, 14(s2)
                  sb           a4, 14(s2)
                  lbu          s3, 0(s2)
                  xor          s11, gp, a1
                  lhu          s6, 15(s2)
                  lb           a5, -2(s2)
                  lbu          ra, -2(s2)
                  andi         t4, ra, 1637
                  lbu          ra, -2(s2) #end riscv_load_store_hazard_instr_stream_1
                  auipc        s8, 451660
                  bge          s7, s10, 6f
                  add          tp, s6, a2
                  ori          s8, a6, -803
                  add          a1, t4, s4
                  blt          a3, a2, 22f
6:                srl          t3, t6, s1
                  bne          t4, a6, 25f
                  sll          s10, s2, s6
                  addi         ra, ra, -1232
                  bne          a3, a5, 26f
                  slti         t1, s2, -654
                  sll          gp, s3, a1
                  srl          t0, s7, s5
                  xori         s4, s8, -1794
                  srli         a3, t0, 30
                  bge          s7, a0, 34f
                  sub          a6, t1, s11
                  bgeu         t3, a5, 29f
                  xori         s6, s2, 1320
                  bltu         s10, s2, 34f
                  xor          a1, a0, s11
22:               srl          t0, a6, tp
                  sltu         s4, t0, s4
                  lui          t4, 187817
25:               lui          t5, 98398
26:               andi         s2, t1, 1614
                  nop
                  bltu         a5, s2, 44f
29:               auipc        s5, 572346
                  beq          s9, t5, 40f
                  sltu         ra, s8, sp
                  or           s11, tp, s5
                  sra          a1, t3, a2
34:               xori         t5, a7, 1635
                  slt          s8, s7, s10
                  nop
                  slti         t6, a7, -433
                  lui          t2, 306972
                  slti         gp, s6, 1380
40:               srai         t2, a0, 26
                  andi         s4, tp, 606
                  srl          t2, s0, zero
                  slti         s3, s2, -1392
44:               srl          t5, a7, a5
                  bgeu         t0, tp, 64f
                  bge          a3, t4, 64f
                  auipc        s11, 999032
                  lui          s5, 369959
                  bge          a4, a4, 56f
                  srli         s3, tp, 23
                  xor          s2, a5, s7
                  sltu         t4, sp, a1
                  or           t5, s7, gp
                  srl          t3, a1, a7
                  sra          s6, ra, a7
56:               or           t5, a7, a4
                  slti         s11, a3, -1973
                  blt          s6, a0, 77f
                  bne          s4, s2, 73f
                  sltiu        t5, s10, -854
                  slti         t6, s1, 1426
                  auipc        a7, 33213
                  and          t0, t4, s6
64:               and          a2, s10, s5
                  srai         ra, zero, 27
                  ori          a0, s1, 1186
                  nop
                  srai         s6, s4, 26
                  bgeu         t1, ra, 71f
                  beq          zero, t4, 87f
71:               slt          gp, t2, t6
                  lui          s4, 226550
73:               auipc        s8, 735989
                  sll          a7, a2, t5
                  srl          s1, t2, a7
                  andi         s7, s2, -885
                  and          a1, s7, s0
                  srai         s0, s8, 5
                  la           t5, sub_2
                  slli         t4, s8, 13
                  addi         t5, t5, 127
                  nop
                  beq          s8, gp, sub_1_j2 #branch to jump instr
                  sltiu        s2, zero, -1843
                  ori          s0, zero, -1486
                  srli         a0, a1, 27
sub_1_j2:         jalr         s11, t5, -126 #jump sub_1 -> sub_2
77:               lui          t1, 225875
                  andi         a5, a3, 620
                  srli         tp, gp, 4
                  sltu         t6, s2, s5
                  or           s6, s2, s0
                  sltu         a0, s8, t4
                  slti         t5, a5, 1045
                  auipc        t2, 885235
                  bne          t0, s10, 98f
                  sltu         a5, t1, a0
87:               bge          a1, s8, 106f
                  add          gp, t0, a2
                  bgeu         tp, s10, 97f
                  and          t0, s9, a1
                  or           t2, t1, t4
                  sra          t0, sp, t1
                  sll          s11, gp, s0
                  srl          t5, a1, s8
                  and          s7, zero, s4
                  slli         t4, s0, 28
97:               bltu         t5, a7, 114f
98:               ori          t4, s6, 683
                  sra          t4, t3, t0
                  srli         t3, a6, 5
                  bltu         a0, t2, 118f
                  sltu         t5, s4, s2
                  sub          ra, ra, s11
                  nop
                  ori          s6, t2, -1084
106:              blt          s3, a6, 115f
                  beq          t1, s8, 125f
                  or           a6, ra, ra
                  lui          t5, 807517
                  bgeu         s4, t2, 120f
                  slli         t6, t4, 28
                  xori         s10, a2, 1358
                  ori          ra, gp, -821
114:              bltu         t5, a1, 131f
115:              srli         t0, a5, 15
                  sltiu        t5, t5, -499
                  srai         t6, s0, 14
118:              andi         t3, s5, 1875
                  sltiu        gp, t5, -366
120:              andi         a0, tp, -365
                  srl          s7, a2, s7
                  sll          s6, s1, s8
                  or           s7, s11, t1
                  beq          s11, s3, 143f
125:              ori          a0, a2, -1088
                  srl          a6, t0, a1
                  slt          a7, a2, t6
                  bgeu         a0, s0, 146f
                  sra          s10, t1, t3
                  lui          s10, 595664
131:              and          s11, a3, a7
                  add          t2, s8, a6
                  slli         gp, t2, 23
                  sll          s3, t1, a1
                  bge          s8, t4, 140f
                  slti         s4, s3, -719
                  sltiu        t0, ra, -216
                  slli         s8, a2, 16
                  addi         t6, ra, 639
140:              nop
                  slli         a7, sp, 11
                  bgeu         ra, a4, 156f
143:              auipc        a0, 743787
                  ori          s5, a0, -543
                  srai         a5, tp, 31
146:              bge          zero, s5, 151f
                  lui          s1, 249609
                  auipc        t0, 521178
                  xor          a1, s3, s4
                  srai         s6, tp, 31
151:              and          s1, zero, t6
                  add          gp, t3, s7
                  ori          gp, gp, -1678
                  blt          t5, t2, 173f
                  srl          t6, s1, s9
156:              srl          s11, t0, a2
                  slli         s11, s9, 24
                  auipc        a1, 776749
                  slli         t1, t3, 28
                  add          t4, s11, t4
                  bne          s4, s5, 166f
                  andi         a3, a6, 111
                  slt          s6, s4, a3
                  and          gp, s11, gp
                  xor          s1, s5, s9
166:              xori         t1, a4, -989
                  sll          t3, gp, a0
                  andi         s5, s8, 931
                  bne          a0, ra, 187f
                  or           s11, sp, t3
                  lui          t6, 84313
                  add          s4, s2, gp
173:              sra          gp, t6, s6
                  ori          s0, t6, 443
                  sll          t4, gp, s5
                  bge          a3, s8, 193f
                  bne          t1, s6, 195f
                  srl          tp, t4, a2
                  bne          sp, a4, 197f
                  bltu         a5, t2, 193f
                  bne          s8, a6, 195f
                  lui          s3, 848908
                  bne          s8, a6, 199f
                  bltu         sp, gp, 186f
                  sltiu        t1, a3, 1627
186:              ori          zero, s3, -669
187:              sll          t4, s6, a2
                  slt          t5, s2, a1
                  bge          s2, sp, 206f
                  sub          s8, t4, t2
                  auipc        t0, 574012
                  sub          a0, a5, s3
193:              bge          s8, gp, 207f
                  sll          gp, a7, s4
195:              sll          t2, a2, tp
                  bne          t6, tp, 206f
197:              blt          t6, t2, 204f
                  srai         t3, s6, 5
199:              auipc        s0, 48345
                  addi         a7, a5, 859
                  blt          a6, s6, 218f
                  auipc        gp, 707286
                  srl          a6, t4, s10
204:              bge          s11, t1, 218f
                  slti         s0, t1, -83
206:              srai         gp, s11, 29
207:              srai         a1, s10, 4
                  addi         ra, t6, -375
                  andi         s3, s2, -670
                  bgeu         s11, t0, 229f
                  slli         s11, a6, 19
                  slt          s11, s8, a7
                  srai         s3, t1, 9
                  sll          s11, s7, a0
                  xori         s10, s4, -1021
                  slt          a0, t2, a1
                  auipc        a1, 276550
218:              bgeu         a6, t2, 234f
                  xor          gp, a6, zero
                  lui          tp, 176521
                  xor          s2, sp, s11
                  bgeu         s0, a5, 227f
                  and          a1, a3, t1
                  bgeu         s4, t4, 229f
                  sltiu        s4, s9, 1952
                  bge          s3, s5, 245f
227:              slti         tp, ra, -2025
                  xori         t6, a0, -1017
229:              bltu         a3, s4, 240f
                  slli         t1, t2, 22
                  andi         t1, ra, -1842
                  slt          s5, s7, t3
                  blt          a5, a7, 252f
234:              add          s8, t3, tp
                  sra          t2, a7, zero
                  beq          s2, t3, 244f
                  andi         s0, s1, 1391
                  bltu         t6, s11, 255f
                  xor          a0, s6, s5
240:              srl          a6, a2, a0
                  sltiu        s6, t5, 1365
                  lui          a2, 183300
                  slti         a3, s1, 882
244:              add          s8, a3, sp
245:              blt          s11, zero, 262f
                  add          s5, t4, s4
                  beq          a5, s3, 265f
                  auipc        s8, 363615
                  bne          s4, t1, 267f
                  sra          t2, a1, s3
                  blt          t4, a3, 261f
252:              srai         s6, s11, 15
                  srli         t4, t0, 10
                  xori         t1, s1, 210
255:              sra          t1, s2, a3
                  beq          zero, a6, 265f
                  and          a3, t5, a1
                  nop
                  sra          t6, t0, t0
                  nop
261:              srl          a2, s0, s4
262:              blt          a6, s3, 272f
                  ori          a1, s9, 1011
                  auipc        s4, 367231
265:              bne          t1, t0, 282f
                  sltiu        s11, t4, -1213
267:              xor          t5, s0, s6
                  slti         a3, a4, -92
                  beq          sp, a0, 277f
                  bne          a5, t2, 289f
                  add          t0, s10, a4
272:              slti         t3, t0, -1652
                  sltiu        s1, a5, -1459
                  blt          a5, s5, 276f
                  add          s10, a0, s3
276:              bgeu         a7, t4, 285f
277:              nop
                  andi         zero, s1, 207
                  bgeu         s4, a5, 295f
                  and          gp, zero, s9
                  slli         s7, s0, 24
282:              sll          t1, s4, a1
                  bge          t5, s11, 301f
                  sll          s6, sp, s6
285:              bgeu         gp, a5, 304f
                  auipc        ra, 502476
                  slti         a5, s10, -730
                  srl          gp, t2, s11
289:              srli         a6, a2, 7
                  slti         s11, s11, 1324
                  srli         t0, t2, 9
                  add          t3, t2, t4
                  andi         t5, s7, 236
                  srli         s1, s1, 19
295:              sub          s1, s3, s11
                  sra          s0, gp, a4
                  srli         t5, s10, 5
                  add          a6, a4, s3
                  beq          a4, tp, 317f
                  sltu         a3, s4, a0
301:              slt          t4, s10, s9
                  sltu         s6, s5, s7
                  blt          s6, sp, 320f
304:              bltu         s11, sp, 322f
                  slti         s3, gp, 829
                  andi         s3, a3, 1970
                  slli         tp, s6, 8
                  addi         a7, t5, 1375
                  bge          a3, t4, 314f
                  add          t0, a0, s10
                  ori          t2, s5, 840
                  slti         s10, s11, -1836
                  lui          a3, 716308
314:              slli         s6, t5, 25
                  or           a7, t3, s6
                  slti         s10, t0, 1649
317:              srai         tp, s6, 29
                  sltu         tp, sp, s2
                  xor          s3, t1, zero
320:              srl          s1, sp, sp
                  bltu         s6, s2, 332f
322:              add          s10, sp, gp
                  srl          a2, s5, s4
                  xori         s3, t2, -729
                  beq          sp, sp, 344f
                  bne          t3, t3, 331f
                  addi         s8, a5, -975
                  add          t5, s3, a3
                  sltiu        s3, a0, 1348
                  auipc        s1, 972465
331:              srl          s3, a7, t5
332:              slt          tp, gp, a5
                  ori          s7, ra, 467
                  bne          s0, s1, 352f
                  srl          a5, t5, t5
                  bltu         s4, s5, 341f
                  sll          s0, s1, a7
                  blt          sp, s3, 357f
                  bltu         s5, s5, 355f
                  or           t3, a1, a7
341:              lui          t6, 346020
                  add          t6, a6, a3
                  add          s7, zero, s11
344:              bne          s6, a7, 358f
                  andi         t2, s5, -1699
                  addi         s10, a4, -1636
                  sra          s10, a2, t6
                  sra          a6, s6, sp
                  lui          t6, 307045
                  or           s6, zero, s7
                  nop
352:              ori          s5, gp, -1621
                  add          s3, a7, a1
                  andi         a1, t3, 1934
355:              beq          s6, t3, 372f
                  add          ra, a7, a1
357:              bltu         t6, a0, 371f
358:              bltu         a2, s8, 376f
                  slti         a2, s2, -1696
                  xor          s0, s5, t2
                  ori          t4, s3, 1517
                  bge          t5, s1, 379f
                  blt          s8, zero, 373f
                  sll          s7, t0, a5
                  slli         t6, s6, 16
                  lui          s0, 442951
                  sub          s4, t6, a3
                  bltu         a1, s6, 381f
                  or           s7, a7, gp
                  ori          gp, a5, -309
371:              slt          a0, t2, a7
372:              auipc        s4, 88676
373:              and          gp, s8, t2
                  bne          a2, s11, 388f
                  lui          s3, 810387
376:              slli         s10, zero, 23
                  bne          s0, a5, 384f
                  bne          s0, s2, 395f
379:              nop
                  beq          a0, t0, 398f
381:              auipc        s1, 328181
                  sra          s4, tp, s5
                  andi         t3, a7, 1383
384:              bne          s2, t6, 402f
                  and          t0, a5, s3
                  lui          s4, 285612
                  slti         t1, s8, -1115
388:              srai         s5, tp, 16
                  slt          t4, a4, s3
                  bne          a5, a1, 398f
                  xor          s0, s8, s3
                  blt          s3, t0, 405f
                  xor          zero, a2, a6
                  sltiu        s8, s8, -1388
395:              srai         t3, s4, 8
                  auipc        s6, 1018622
                  sra          s1, gp, t4
398:              xori         s6, t5, -755
                  addi         s11, s2, 1079
                  or           s5, zero, a4
                  slti         t6, a7, 958
402:              or           s7, s0, a7
                  and          t2, s11, t6
                  srl          tp, a5, s1
405:              blt          a6, a7, 424f
                  lui          t0, 993019
                  sra          a2, a1, a0
                  addi         a7, zero, -1545
                  bne          s5, s6, 423f
                  slti         a5, t2, -564
                  andi         t3, s9, -1205
                  slt          a1, s5, ra
                  slt          s3, s3, s10
                  srl          s2, s7, s5
                  sub          s11, a5, a1
                  andi         a3, t2, -62
                  beq          a6, s6, 422f
                  sltu         t0, t1, a0
                  xor          a5, a6, ra
                  sltu         t5, s2, gp
                  slli         a6, s10, 14
422:              srl          a1, s0, s2
423:              add          s7, t6, ra
424:              add          s8, s5, ra
                  or           s8, s6, s7
                  sub          s5, zero, t0
                  bne          t3, t3, 445f
                  xori         a7, s6, 440
                  bne          a4, gp, 448f
                  bge          gp, s2, 448f
                  sltu         a3, t3, s9
                  ori          zero, s10, 2017
                  addi         s6, a4, -1095
                  beq          s9, a1, 450f
                  xor          s7, s9, a2
                  slt          tp, s7, s1
                  beq          s8, t1, 451f
                  srai         s6, s11, 7
                  slli         a3, zero, 9
                  slti         a5, s10, -1457
                  slt          t5, a1, sp
                  beq          t1, t5, 459f
                  and          s6, a0, s3
                  srai         tp, gp, 20
445:              andi         ra, a4, 1171
                  bltu         t2, t5, 463f
                  slli         s6, s10, 7
448:              srli         t4, s10, 14
                  bgeu         s9, s10, 454f
450:              blt          s9, ra, 460f
451:              and          t0, s7, s8
                  srl          a3, s2, t6
                  blt          a0, t6, 470f
454:              addi         s1, s8, 99
                  and          s10, s8, t2
                  ori          s7, s9, 489
                  sra          s7, s10, t0
                  beq          a7, s11, 467f
459:              lui          s7, 450096
460:              bge          zero, a3, 462f
                  xori         s0, s3, -327
462:              slt          zero, s11, s2
463:              add          s2, t2, a1
                  srai         t1, a7, 8
                  srai         ra, s8, 6
                  ori          t1, gp, -410
467:              bge          s8, a4, 478f
                  beq          a5, s11, 487f
                  sltiu        a5, ra, -394
470:              slli         s1, s10, 13
                  xor          s6, s11, a5
                  addi         s0, t0, 2026
                  sub          s0, a3, t6
                  add          a6, tp, ra
                  bgeu         zero, s7, 489f
                  auipc        s3, 671302
                  srli         t5, t1, 30
478:              srai         s5, t3, 19
                  slti         gp, s10, 1328
                  beq          a2, tp, 499f
                  srai         s1, t6, 0
                  nop
                  sltiu        s1, s0, 1766
                  srai         s8, s5, 22
                  srai         a5, s8, 12
                  srai         a0, s7, 11
487:              ori          s1, s3, 1313
                  bltu         zero, s5, 498f
489:              srli         s10, t6, 6
                  xor          s11, s10, a3
                  srl          t1, a1, s4
                  sll          s5, a6, t1
                  and          t5, s9, a7
                  lui          t2, 542143
                  add          s3, a7, sp
                  bge          gp, sp, 513f
                  lui          s11, 945440
498:              sll          s11, t0, s8
499:              bge          t6, s8, 515f
                  addi         s10, a5, -1433
                  addi         a6, t4, -1746
                  sub          gp, s11, s2
                  srai         s5, gp, 5
                  andi         zero, s1, -1780
                  slli         a2, a4, 25
                  andi         s3, a0, -425
                  bgeu         a5, s6, 524f
                  auipc        t0, 466668
                  andi         s6, a0, -1959
                  srli         s2, s1, 12
                  slt          s3, a2, t3
                  sll          a1, s5, tp
513:              xor          a3, a3, s4
                  andi         tp, s3, -1739
515:              srli         gp, ra, 7
                  sll          t5, a4, a0
                  slli         gp, a1, 7
                  bne          s6, s5, 536f
                  xor          ra, t6, s2
                  blt          s4, t4, 525f
                  or           t6, t2, s2
                  sltiu        a0, tp, -1060
                  bltu         t6, ra, 530f
524:              slli         a1, s3, 19
525:              andi         t5, t4, 115
                  blt          s5, s9, 543f
                  lui          s0, 509389
                  srai         s0, a5, 3
                  sll          a5, s7, t1
530:              lui          s1, 857720
                  sltiu        a6, s8, 896
                  slli         a3, s4, 21
                  andi         ra, ra, -1543
                  sltiu        a0, sp, -1601
                  srai         s3, a6, 18
536:              slt          s5, a5, s6
                  bge          s3, sp, 544f
                  andi         t5, zero, -1389
                  bne          a3, a3, 544f
                  and          zero, s9, s3
                  andi         t6, a0, 154
                  blt          t6, t6, 544f
543:              xori         a6, t2, -1499
544:              xori         t0, s1, 672
                  lw           s11, 4(s9)
                  slti         s8, a6, 593
                  addi         s9, s9, 32
                  sub          ra, s3, t0
                  sub          s4, t1, s2
                  ori          a0, s1, 1266
1023:             addi x3, x27, 0
1023:             jalr x3, x3, 0
sub_2:            bne          s6, t6, sub_2_stack_p
                  slli         s4, t5, 2
                  xor          s10, t6, t6
sub_2_stack_p:    addi         s9, s9, -40
                  add          s1, a2, a2
                  sw           s11, 4(s9)
                  srl          t6, t6, a1
                  addi         a2, t3, 1459
                  la           s7, region_0+796 #start riscv_load_store_hazard_instr_stream_1
                  lhu          zero, 16(s7)
                  lw           t4, 16(s7)
                  lh           t4, 16(s7)
                  sb           t2, 20(s7)
                  lb           t1, 13(s7)
                  sb           sp, 13(s7)
                  sh           s2, 58(s7)
                  sll          ra, sp, s0
                  lbu          gp, 58(s7)
                  sb           t4, 58(s7)
                  lbu          t4, 40(s7)
                  addi         tp, s7, -183
                  lbu          t5, -27(s7)
                  sub          a5, a5, ra
                  sh           s6, -30(s7)
                  lb           ra, -30(s7)
                  lw           t2, 16(s7)
                  lhu          s6, 12(s7)
                  sb           s7, 35(s7)
                  lb           s0, 5(s7) #end riscv_load_store_hazard_instr_stream_1
                  la           s10, region_1+1584 #start riscv_load_store_rand_instr_stream_0
                  ori          zero, s0, -1934
                  sra          s3, a0, s2
                  slti         t3, s8, -1424
                  xor          a1, t2, a2
                  add          s5, s8, a5
                  xori         ra, s0, 1069
                  sb           a6, 2(s10)
                  addi         a7, s10, 1623
                  auipc        a5, 76383
                  sra          a2, a1, s9
                  addi         a6, t1, 1921
                  sb           a4, -12(s10)
                  lhu          ra, 2(s10)
                  slli         t6, a6, 8
                  sb           s9, -4(s10)
                  sb           s8, -10(s10)
                  andi         t5, s5, -1605
                  sb           s11, 7(s10)
                  srai         gp, a6, 11
                  xor          s2, s6, t1
                  lhu          gp, 0(s10)
                  sb           a6, 6(s10)
                  ori          s2, a3, -645
                  ori          s2, t6, -1439
                  xor          s4, a1, sp
                  xori         s0, sp, 1992
                  srai         t6, s3, 3
                  add          s4, sp, s4
                  lhu          t2, 6(s10)
                  xor          s6, a3, s2
                  sh           tp, -6(s10)
                  sltiu        a3, t0, 1146
                  sb           s8, 4(s10)
                  srli         tp, t1, 29
                  srl          t1, t6, t3
                  sll          a1, t6, s1
                  sra          t3, a0, zero
                  ori          s11, s8, 1391
                  lb           t1, -9(s10) #end riscv_load_store_rand_instr_stream_0
                  la           t3, region_0+1577 #start riscv_load_store_hazard_instr_stream_2
                  sb           s0, -80(t3)
                  slli         t1, t3, 6
                  lbu          a0, -80(t3)
                  lbu          gp, -80(t3)
                  lbu          t5, -80(t3)
                  lb           a6, -77(t3)
                  lhu          s11, -77(t3)
                  lh           t4, -245(t3)
                  add          a2, sp, t6
                  lb           a6, -126(t3)
                  sb           s2, -126(t3)
                  srl          t2, s6, a1
                  sb           t3, -126(t3)
                  sb           s9, -126(t3) #end riscv_load_store_hazard_instr_stream_2
                  la           a0, region_1+1939 #start load_store_instr_stream_3
                  la           t3, region_1+221 #start load_store_instr_stream_4
                  la           t0, region_1+1432 #start load_store_instr_stream_2
                  la           s5, region_1+214 #start load_store_instr_stream_0
                  lhu          a6, -151(a0)
                  lbu          s7, 9(t0)
                  lb           s4, -66(a0)
                  la           t4, region_1+90 #start load_store_instr_stream_1
                  lbu          a7, -9(t3)
                  lbu          s11, 11(t0)
                  sb           t5, -83(a0)
                  lb           a5, -13(t3)
                  sh           s7, 204(s5)
                  sh           a2, 7(t3)
                  sb           s0, -43(t0)
                  lbu          s8, 37(t0)
                  lbu          a2, -212(s5)
                  sh           s2, 54(t0)
                  lbu          gp, 15(t3)
                  sw           s2, 7(t3)
                  lbu          a3, -17(t4)
                  lb           s1, -161(a0)
                  lbu          a3, -17(t4)
                  sb           t0, -12(t3)
                  lb           ra, -63(t0)
                  lbu          a3, -22(t0)
                  lhu          s1, 5(t3)
                  lhu          a3, -17(a0) #end load_store_instr_stream_3
                  sb           t6, 49(t4)
                  lbu          a7, 195(s5)
                  lb           a1, -41(t4)
                  lbu          a5, 1(t0)
                  lb           a3, -15(t3)
                  lb           a5, 33(s5)
                  lbu          t6, 6(t3) #end load_store_instr_stream_4
                  lb           s3, -16(t0) #end load_store_instr_stream_2
                  sb           a6, -12(t4) #end load_store_instr_stream_1
                  sh           s0, 240(s5) #end load_store_instr_stream_0
                  la           gp, region_0+148 #start riscv_load_store_hazard_instr_stream_0
                  lb           t0, -111(gp)
                  lb           a5, -111(gp)
                  lbu          t1, 107(gp)
                  andi         s0, a3, -2040
                  srli         s3, s1, 31
                  slli         s3, s2, 28
                  lb           s5, 107(gp)
                  andi         a2, s10, -130
                  sb           s6, 107(gp)
                  lb           s11, 256(gp)
                  lh           s7, -10(gp)
                  lh           s4, -10(gp)
                  andi         a0, a2, -837
                  sb           gp, -10(gp)
                  ori          ra, t3, 1614
                  lhu          s11, 72(gp)
                  slti         a6, s10, 1136
                  sb           a3, 34(gp)
                  lbu          s11, 34(gp)
                  lhu          s2, 34(gp)
                  lb           t2, 34(gp)
                  sb           a7, 114(gp)
                  sh           t1, 114(gp) #end riscv_load_store_hazard_instr_stream_0
                  la           s10, region_1+1012 #start load_store_instr_stream_0
                  la           a5, region_1+1506 #start load_store_instr_stream_1
                  lbu          t6, -9(a5)
                  sh           t2, 974(s10)
                  lbu          s2, -16(a5)
                  sb           t5, 60(s10)
                  lbu          s7, 489(s10)
                  lh           t5, 16(a5)
                  lb           zero, 10(a5)
                  lb           s0, 199(s10)
                  lbu          a3, 1(a5)
                  lh           gp, -10(a5)
                  sb           a6, 13(a5)
                  lb           t3, 753(s10)
                  lw           ra, 6(a5)
                  lh           s11, -202(s10)
                  lb           s5, 7(a5) #end load_store_instr_stream_1
                  lb           t6, -923(s10) #end load_store_instr_stream_0
                  la           t4, region_0+1348 #start load_store_instr_stream_2
                  la           a6, region_0+818 #start load_store_instr_stream_0
                  la           a1, region_0+912 #start load_store_instr_stream_3
                  la           s10, region_0+1050 #start load_store_instr_stream_1
                  lbu          gp, 114(a1)
                  sb           a5, 58(a1)
                  lb           gp, 214(a1)
                  lw           t0, -372(t4)
                  lhu          s3, -54(s10)
                  lb           a2, 215(s10)
                  lb           s7, 231(s10)
                  sb           ra, -882(t4)
                  lb           s2, -894(t4)
                  sb           s0, 1(a6)
                  lb           t6, 143(a1)
                  lbu          t3, -773(t4)
                  lh           s7, -164(s10)
                  lb           s0, 443(t4)
                  lb           s0, 6(a6)
                  lbu          s0, -1022(t4)
                  lb           s6, -411(s10)
                  lh           s5, 706(s10)
                  lb           s6, -620(t4)
                  lb           s0, 569(s10)
                  sh           a1, 178(a1)
                  sh           a1, 10(a6)
                  lw           t2, -172(a1)
                  lhu          a2, -76(s10)
                  sb           t1, -334(t4)
                  lbu          t0, 508(t4)
                  sh           s1, -376(s10)
                  sh           s3, 124(a1) #end load_store_instr_stream_3
                  lb           s7, -961(t4) #end load_store_instr_stream_2
                  sw           s11, 134(s10) #end load_store_instr_stream_1
                  sb           a6, 3(a6)
                  lb           s1, -1(a6) #end load_store_instr_stream_0
                  ori          s8, s6, -1603
                  auipc        t1, 631168
                  bltu         s9, t2, 11f
                  or           s6, s7, t6
                  sub          a5, a1, s7
                  or           s1, s4, t1
                  sra          a6, t0, a4
                  nop
                  xori         t4, a4, 987
                  bge          s9, tp, 17f
                  sltiu        t3, s6, -973
11:               xor          a3, t0, s3
                  la           s8, region_1+341 #start riscv_load_store_rand_instr_stream_1
                  lui          a0, 358492
                  sb           zero, -16(s8)
                  lh           s11, 1(s8)
                  srl          a7, s8, s8
                  xori         s7, s9, 413
                  lbu          a5, 12(s8)
                  lb           s3, -14(s8)
                  lbu          s5, -6(s8)
                  lbu          a5, 14(s8)
                  sltu         t1, t2, t5
                  lhu          t0, -3(s8)
                  lui          s11, 54439
                  or           zero, t5, gp
                  sb           t3, -14(s8)
                  sltu         t1, a3, zero
                  ori          s4, s11, 1361
                  lhu          gp, -15(s8)
                  nop
                  lbu          t4, -16(s8)
                  xori         a5, t2, -596
                  lb           t1, -4(s8)
                  lb           a1, 15(s8)
                  and          s6, t4, t4
                  sra          t3, s8, t3
                  sb           t5, -12(s8)
                  lh           s1, -5(s8)
                  sll          s5, s6, a5
                  slli         s0, gp, 15
                  sb           s1, -11(s8)
                  sb           zero, -1(s8)
                  xor          s7, s4, ra
                  sb           s9, -13(s8)
                  sb           s2, 11(s8)
                  lb           a6, 1(s8)
                  lb           s11, 5(s8)
                  srli         zero, a0, 11
                  lh           s10, -11(s8)
                  lbu          a7, 6(s8)
                  sh           t4, -1(s8)
                  sb           s7, 12(s8)
                  lb           s10, 15(s8)
                  sb           a7, -8(s8)
                  sb           a3, -8(s8)
                  nop
                  slli         t6, a2, 31
                  slt          t2, s7, t4
                  lui          gp, 677293
                  sb           ra, 4(s8) #end riscv_load_store_rand_instr_stream_1
                  srai         t4, t0, 14
                  bge          s9, s4, 32f
                  bgeu         s11, t5, 15f
15:               slli         s8, s3, 24
                  slli         t2, s5, 29
17:               and          a0, t2, s0
                  andi         s5, a3, 590
                  add          a2, s9, a1
                  and          a0, t1, s11
                  slt          s10, t0, a5
                  slli         gp, s5, 24
                  sub          s1, ra, s6
                  blt          gp, s0, 30f
                  ori          s5, tp, 846
                  slti         a5, t4, 1479
                  slli         a7, s11, 10
                  xor          s11, s0, t6
                  srli         t1, t4, 8
30:               andi         tp, a0, -1979
                  xori         s6, gp, 1858
32:               sra          s1, s5, a5
                  bltu         s0, s8, 42f
                  xori         s2, s3, -681
                  beq          s4, sp, 42f
                  add          s7, a1, t4
                  bge          t3, t1, 48f
                  beq          a4, s7, 46f
                  bltu         s1, s5, 42f
                  srl          t1, a7, s0
                  blt          tp, s10, 50f
42:               auipc        a6, 109402
                  sub          t0, a4, sp
                  srl          s10, s1, zero
                  andi         s11, a7, 408
46:               srli         s3, a6, 31
                  bgeu         s7, s7, 49f
48:               sra          a2, a1, a0
49:               bltu         gp, ra, 62f
                  la           s2, region_1+314 #start riscv_load_store_rand_instr_stream_2
                  or           a7, s4, sp
                  or           s0, s1, tp
                  lb           t6, 369(s2)
                  sll          t0, t1, a2
                  srli         s0, sp, 27
                  sb           a2, 372(s2)
                  lbu          a2, 285(s2)
                  addi         a5, t4, -1896
                  xor          s8, s2, t6
                  lui          a3, 860055
                  add          s0, sp, t2
                  xori         a7, a2, 1429
                  lb           s1, 1103(s2)
                  xori         a7, t1, 298
                  sra          t4, ra, tp
                  ori          a0, s10, -1170
                  nop
                  add          s3, a3, ra
                  ori          t4, a5, 1964
                  lw           s10, 246(s2)
                  xori         a2, s1, -175
                  sh           s3, 1610(s2)
                  slti         tp, s10, -1703
                  ori          a3, t3, -1234
                  lb           t1, 791(s2)
                  lbu          t5, 641(s2)
                  and          a0, s0, a2
                  slti         a2, a4, 210
                  sw           s9, 522(s2)
                  lbu          ra, 560(s2)
                  auipc        a0, 795806
                  addi         t0, t3, 1293
                  lui          t4, 816474
                  nop
                  ori          s10, s10, 1087
                  andi         s6, t6, 1335
                  sh           s7, 882(s2) #end riscv_load_store_rand_instr_stream_2
50:               bne          a7, s1, 51f
51:               bltu         s11, t2, 61f
                  andi         s1, gp, 334
                  addi         s4, a4, 1907
                  slti         tp, s2, -1307
                  srl          t3, s1, a7
                  nop
                  andi         t3, s6, 104
                  bltu         s2, a5, 77f
                  add          t5, s1, a2
                  or           s1, t3, s6
61:               and          s3, gp, tp
62:               sltu         s7, t3, s2
                  srai         t1, s11, 16
                  slti         tp, a0, -1775
                  sll          t2, s9, t4
                  slli         s0, s6, 25
                  sltu         s0, a1, s11
                  add          a2, gp, s8
                  srli         s8, s7, 2
                  bge          t1, a1, 88f
                  slli         t2, s11, 13
                  sltiu        s7, a1, 648
                  sra          zero, s2, s11
                  srl          t3, s10, t0
                  xor          a6, t1, t0
                  and          t5, a5, s0
77:               lui          s5, 397089
                  xori         zero, a7, 1063
                  xor          a7, s9, a4
                  lui          s10, 154746
                  and          s7, a7, t4
                  andi         s10, s3, 1808
                  srai         zero, s1, 2
                  add          s6, t2, a6
                  or           s11, s6, t5
                  bltu         t6, s6, 106f
                  sll          a2, s5, s5
88:               srl          a7, s8, s2
                  xori         zero, t3, 775
                  auipc        s1, 318214
                  srli         s5, ra, 27
                  nop
                  beq          a7, t1, 96f
                  slli         a3, s9, 14
                  sll          tp, s2, a3
96:               sltiu        s8, zero, 1317
                  beq          t6, tp, 110f
                  xor          t3, s3, t2
                  add          t2, t2, t5
                  srl          s7, a1, s1
                  beq          t6, a2, 115f
                  sub          a6, s5, s6
                  slti         s6, t2, 1173
                  or           gp, s5, a4
                  sltiu        t6, t2, 125
106:              or           a2, t1, zero
                  andi         s7, zero, -1138
                  blt          s10, a3, 128f
                  slti         gp, ra, -1718
110:              slti         a6, s8, -447
                  sll          a6, t0, a7
                  slt          t3, s5, t3
                  ori          t5, sp, -1879
                  xor          a0, a3, s8
115:              or           t5, t1, a6
                  sll          a3, a5, s1
                  sra          s5, s9, a6
                  bge          s5, s10, 137f
                  sll          t4, a4, ra
                  lui          gp, 627279
                  and          a1, tp, s2
                  add          a7, t5, a0
                  add          s3, ra, a6
                  sub          a7, a6, s5
                  bge          s2, s4, 142f
                  slt          a3, zero, s1
                  xor          a0, s5, gp
128:              sra          a0, ra, ra
                  beq          t3, s7, 143f
                  xor          t5, s3, s11
                  srl          s3, s9, s10
                  or           t1, t6, s5
                  auipc        s6, 32438
                  bgeu         s6, tp, 140f
                  slli         s5, ra, 16
                  and          zero, s6, a4
137:              blt          a7, a3, 142f
                  bge          s3, t5, 157f
                  bne          s10, t1, 145f
140:              sltu         a5, a3, a7
                  andi         t2, s5, -1642
142:              lui          a3, 879795
143:              xor          t3, t4, a6
                  ori          a5, t6, 1868
145:              add          a3, a7, s10
                  srli         t3, t0, 24
                  auipc        ra, 935106
                  sltiu        t3, gp, 1195
                  slti         a6, a0, 542
                  bne          t1, s0, 162f
                  lui          s6, 441617
                  bgeu         s2, s8, 165f
                  sra          t6, sp, a1
                  srli         t4, s5, 5
                  slt          s11, s7, s11
                  blt          t5, s9, 164f
157:              sub          a2, s11, s9
                  lui          t4, 345173
                  auipc        t4, 855542
                  sltiu        t2, a6, -1518
                  ori          s7, t6, 2018
162:              ori          s10, a2, -828
                  srai         s8, ra, 11
164:              beq          a6, s0, 176f
165:              srai         t4, s11, 14
                  slli         a3, t4, 12
                  ori          t0, t6, -480
                  ori          tp, s7, 471
                  sltiu        tp, a0, -233
                  blt          tp, t1, 190f
                  bge          sp, t3, 189f
                  xori         a1, tp, -55
                  auipc        s11, 743734
                  bgeu         s0, t3, 183f
                  beq          s8, s11, 195f
176:              add          t1, s1, s0
                  bgeu         s2, t2, 196f
                  addi         a2, t4, -751
                  bgeu         t4, s7, 189f
                  and          zero, ra, s0
                  bltu         tp, a0, 182f
182:              xor          tp, t3, s5
183:              nop
                  ori          s10, t3, 615
                  bgeu         t3, s3, 193f
                  slli         t3, sp, 21
                  xor          s3, tp, a6
                  srli         t1, zero, 21
189:              or           a7, a5, sp
190:              sltu         t2, s5, tp
                  beq          s8, gp, 202f
                  bgeu         t1, a3, 201f
193:              srli         s2, s1, 13
                  slt          t2, s1, t3
195:              slti         a6, t2, 1894
196:              srli         a3, t6, 13
                  bge          s6, a4, 203f
                  slli         t5, a7, 18
                  andi         s7, s9, -1828
                  xori         s4, zero, 1026
201:              nop
202:              addi         t2, t4, 886
203:              and          s6, sp, s4
                  srl          s2, gp, s2
                  bne          a0, t5, 219f
                  lui          s10, 205646
                  sltu         zero, tp, s3
                  bge          a6, s8, 227f
                  auipc        t0, 15543
                  xori         t6, t6, -1185
                  sll          s10, t3, a6
                  slt          s11, sp, s3
                  xor          a7, t5, a3
                  sll          s1, t1, s6
                  sll          a5, sp, a0
                  xor          s11, a7, tp
                  beq          a2, a3, 222f
                  sub          t2, a5, t5
219:              srl          s11, s8, t6
                  and          t6, gp, s3
                  bge          a5, t0, 224f
222:              lui          a6, 939498
                  addi         s0, s8, -1224
224:              sub          s7, a6, s6
                  beq          a4, s10, 231f
                  sub          s5, s1, a3
227:              nop
                  sra          s2, a2, a0
                  sltu         s7, s3, a7
                  xori         t2, t4, 936
231:              sltu         s4, t0, s0
                  blt          s0, t5, 234f
                  add          ra, s3, t5
234:              sltiu        t6, s6, 1275
                  and          s7, t5, gp
                  xor          a3, a5, a7
                  bltu         t3, t2, 244f
                  blt          s1, sp, 247f
                  srli         a3, s11, 21
                  srl          t3, s0, s3
                  andi         s1, s2, 1940
                  sltiu        s2, a7, 490
                  lui          a2, 1016495
244:              lui          s1, 874743
                  blt          ra, t0, 246f
246:              slt          t5, s6, t5
247:              add          a2, a5, a4
                  slti         a1, s3, -1490
                  and          s4, a5, s3
                  sll          tp, s4, a7
                  sra          a1, tp, a3
                  srli         gp, s6, 13
                  lui          ra, 527681
                  bgeu         ra, a2, 271f
                  nop
                  bgeu         a4, s3, 262f
                  xor          tp, a6, s2
                  slti         s3, s2, 616
                  blt          a5, tp, 272f
                  xori         t2, a3, 1734
                  slli         a2, sp, 21
262:              srli         a3, s4, 6
                  sltiu        t4, s0, 893
                  slli         t1, tp, 1
                  bge          a3, a1, 284f
                  blt          a6, s4, 285f
                  and          s6, t2, sp
                  srli         a3, s3, 25
                  blt          ra, t2, 283f
                  or           a2, zero, a7
271:              sltiu        t4, s7, 541
272:              slti         tp, s0, 982
                  add          t3, s11, t1
                  bltu         s9, a4, 277f
                  srai         s2, a7, 27
                  sltiu        t5, s5, -1122
277:              andi         tp, tp, 661
                  sub          t3, t3, sp
                  nop
                  srai         t0, s0, 21
                  srl          s1, s9, s9
                  add          s3, ra, s7
283:              add          a2, a3, s2
284:              auipc        s4, 591461
285:              sltu         t2, s6, a1
                  ori          tp, t1, -1162
                  slt          s3, s9, a1
                  xori         s5, tp, -29
                  xor          a5, s11, s7
                  sltiu        a7, ra, -600
                  slli         s7, gp, 11
                  andi         s0, a7, -10
                  addi         s3, a6, -371
                  bgeu         s3, s1, 313f
                  andi         t6, sp, -779
                  and          tp, t3, tp
                  sltu         a6, t2, s0
                  xor          s7, a0, s7
                  add          a1, a2, t0
                  nop
                  bne          t1, s10, 320f
                  or           s4, s0, t0
                  bgeu         t6, s1, 304f
304:              bltu         t1, s5, 314f
                  xor          s7, a1, a4
                  sll          s10, a5, a7
                  bltu         a4, s10, 315f
                  xor          a7, ra, sp
                  sll          s11, t5, a4
                  sub          s10, s10, t3
                  slli         s10, s1, 11
                  sub          tp, gp, s6
313:              sll          s3, s2, s0
314:              ori          t5, s4, -1974
315:              nop
                  sra          s10, t0, t0
                  bne          t1, a7, 326f
                  nop
                  lui          a6, 12635
320:              addi         s3, t6, -1537
                  and          a2, s5, t2
                  xori         t0, a4, 631
                  sra          ra, zero, s11
                  beq          t5, a7, 326f
                  sub          zero, t4, s6
326:              lui          s0, 782937
                  ori          s4, s6, 1349
                  srai         a3, zero, 15
                  ori          s4, t6, 1783
                  slt          s10, t1, a0
                  lw           s11, 4(s9)
                  nop
                  addi         s9, s9, 40
                  sltiu        tp, s5, 1156
622:              addi x27, x27, 0
622:              jalr x27, x27, 0
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
                  addi x25, x25, -128
                  sw  x1, 4(x25)
                  sw  x2, 8(x25)
                  sw  x3, 12(x25)
                  sw  x4, 16(x25)
                  sw  x5, 20(x25)
                  sw  x6, 24(x25)
                  sw  x7, 28(x25)
                  sw  x8, 32(x25)
                  sw  x9, 36(x25)
                  sw  x10, 40(x25)
                  sw  x11, 44(x25)
                  sw  x12, 48(x25)
                  sw  x13, 52(x25)
                  sw  x14, 56(x25)
                  sw  x15, 60(x25)
                  sw  x16, 64(x25)
                  sw  x17, 68(x25)
                  sw  x18, 72(x25)
                  sw  x19, 76(x25)
                  sw  x20, 80(x25)
                  sw  x21, 84(x25)
                  sw  x22, 88(x25)
                  sw  x23, 92(x25)
                  sw  x24, 96(x25)
                  sw  x25, 100(x25)
                  sw  x26, 104(x25)
                  sw  x27, 108(x25)
                  sw  x28, 112(x25)
                  sw  x29, 116(x25)
                  sw  x30, 120(x25)
                  sw  x31, 124(x25)
                  add x14, x25, zero
                  csrr x13, 0x300 # MSTATUS
                  csrr x13, 0x342 # MCAUSE
                  srli x13, x13, 31
                  bne x13, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x13, 0x341 # MEPC
                  csrr x13, 0x342 # MCAUSE
                  li x6, 0x3 # BREAKPOINT
                  beq x13, x6, ebreak_handler
                  li x6, 0x8 # ECALL_UMODE
                  beq x13, x6, ecall_handler
                  li x6, 0x9 # ECALL_SMODE
                  beq x13, x6, ecall_handler
                  li x6, 0xb # ECALL_MMODE
                  beq x13, x6, ecall_handler
                  li x6, 0x1
                  beq x13, x6, instr_fault_handler
                  li x6, 0x5
                  beq x13, x6, load_fault_handler
                  li x6, 0x7
                  beq x13, x6, store_fault_handler
                  li x6, 0xc
                  beq x13, x6, pt_fault_handler
                  li x6, 0xd
                  beq x13, x6, pt_fault_handler
                  li x6, 0xf
                  beq x13, x6, pt_fault_handler
                  li x6, 0x2 # ILLEGAL_INSTRUCTION
                  beq x13, x6, illegal_instr_handler
                  csrr x6, 0x343 # MTVAL
                  1: la x2, test_done
                  jalr x1, x2, 0

ecall_handler:    
                  la x13, _start
                  sw x0, 0(x13)
                  sw x1, 4(x13)
                  sw x2, 8(x13)
                  sw x3, 12(x13)
                  sw x4, 16(x13)
                  sw x5, 20(x13)
                  sw x6, 24(x13)
                  sw x7, 28(x13)
                  sw x8, 32(x13)
                  sw x9, 36(x13)
                  sw x10, 40(x13)
                  sw x11, 44(x13)
                  sw x12, 48(x13)
                  sw x13, 52(x13)
                  sw x14, 56(x13)
                  sw x15, 60(x13)
                  sw x16, 64(x13)
                  sw x17, 68(x13)
                  sw x18, 72(x13)
                  sw x19, 76(x13)
                  sw x20, 80(x13)
                  sw x21, 84(x13)
                  sw x22, 88(x13)
                  sw x23, 92(x13)
                  sw x24, 96(x13)
                  sw x25, 100(x13)
                  sw x26, 104(x13)
                  sw x27, 108(x13)
                  sw x28, 112(x13)
                  sw x29, 116(x13)
                  sw x30, 120(x13)
                  sw x31, 124(x13)
                  la x2, write_tohost
                  jalr x0, x2, 0

instr_fault_handler:
                  add x25, x14, zero
                  lw  x1, 4(x25)
                  lw  x2, 8(x25)
                  lw  x3, 12(x25)
                  lw  x4, 16(x25)
                  lw  x5, 20(x25)
                  lw  x6, 24(x25)
                  lw  x7, 28(x25)
                  lw  x8, 32(x25)
                  lw  x9, 36(x25)
                  lw  x10, 40(x25)
                  lw  x11, 44(x25)
                  lw  x12, 48(x25)
                  lw  x13, 52(x25)
                  lw  x14, 56(x25)
                  lw  x15, 60(x25)
                  lw  x16, 64(x25)
                  lw  x17, 68(x25)
                  lw  x18, 72(x25)
                  lw  x19, 76(x25)
                  lw  x20, 80(x25)
                  lw  x21, 84(x25)
                  lw  x22, 88(x25)
                  lw  x23, 92(x25)
                  lw  x24, 96(x25)
                  lw  x25, 100(x25)
                  lw  x26, 104(x25)
                  lw  x27, 108(x25)
                  lw  x28, 112(x25)
                  lw  x29, 116(x25)
                  lw  x30, 120(x25)
                  lw  x31, 124(x25)
                  addi x25, x25, 128
                  mret

load_fault_handler:
                  add x25, x14, zero
                  lw  x1, 4(x25)
                  lw  x2, 8(x25)
                  lw  x3, 12(x25)
                  lw  x4, 16(x25)
                  lw  x5, 20(x25)
                  lw  x6, 24(x25)
                  lw  x7, 28(x25)
                  lw  x8, 32(x25)
                  lw  x9, 36(x25)
                  lw  x10, 40(x25)
                  lw  x11, 44(x25)
                  lw  x12, 48(x25)
                  lw  x13, 52(x25)
                  lw  x14, 56(x25)
                  lw  x15, 60(x25)
                  lw  x16, 64(x25)
                  lw  x17, 68(x25)
                  lw  x18, 72(x25)
                  lw  x19, 76(x25)
                  lw  x20, 80(x25)
                  lw  x21, 84(x25)
                  lw  x22, 88(x25)
                  lw  x23, 92(x25)
                  lw  x24, 96(x25)
                  lw  x25, 100(x25)
                  lw  x26, 104(x25)
                  lw  x27, 108(x25)
                  lw  x28, 112(x25)
                  lw  x29, 116(x25)
                  lw  x30, 120(x25)
                  lw  x31, 124(x25)
                  addi x25, x25, 128
                  mret

store_fault_handler:
                  add x25, x14, zero
                  lw  x1, 4(x25)
                  lw  x2, 8(x25)
                  lw  x3, 12(x25)
                  lw  x4, 16(x25)
                  lw  x5, 20(x25)
                  lw  x6, 24(x25)
                  lw  x7, 28(x25)
                  lw  x8, 32(x25)
                  lw  x9, 36(x25)
                  lw  x10, 40(x25)
                  lw  x11, 44(x25)
                  lw  x12, 48(x25)
                  lw  x13, 52(x25)
                  lw  x14, 56(x25)
                  lw  x15, 60(x25)
                  lw  x16, 64(x25)
                  lw  x17, 68(x25)
                  lw  x18, 72(x25)
                  lw  x19, 76(x25)
                  lw  x20, 80(x25)
                  lw  x21, 84(x25)
                  lw  x22, 88(x25)
                  lw  x23, 92(x25)
                  lw  x24, 96(x25)
                  lw  x25, 100(x25)
                  lw  x26, 104(x25)
                  lw  x27, 108(x25)
                  lw  x28, 112(x25)
                  lw  x29, 116(x25)
                  lw  x30, 120(x25)
                  lw  x31, 124(x25)
                  addi x25, x25, 128
                  mret

ebreak_handler:   
                  csrr  x13, 0x341
                  addi  x13, x13, 4
                  csrw  0x341, x13
                  add x25, x14, zero
                  lw  x1, 4(x25)
                  lw  x2, 8(x25)
                  lw  x3, 12(x25)
                  lw  x4, 16(x25)
                  lw  x5, 20(x25)
                  lw  x6, 24(x25)
                  lw  x7, 28(x25)
                  lw  x8, 32(x25)
                  lw  x9, 36(x25)
                  lw  x10, 40(x25)
                  lw  x11, 44(x25)
                  lw  x12, 48(x25)
                  lw  x13, 52(x25)
                  lw  x14, 56(x25)
                  lw  x15, 60(x25)
                  lw  x16, 64(x25)
                  lw  x17, 68(x25)
                  lw  x18, 72(x25)
                  lw  x19, 76(x25)
                  lw  x20, 80(x25)
                  lw  x21, 84(x25)
                  lw  x22, 88(x25)
                  lw  x23, 92(x25)
                  lw  x24, 96(x25)
                  lw  x25, 100(x25)
                  lw  x26, 104(x25)
                  lw  x27, 108(x25)
                  lw  x28, 112(x25)
                  lw  x29, 116(x25)
                  lw  x30, 120(x25)
                  lw  x31, 124(x25)
                  addi x25, x25, 128
                  mret

illegal_instr_handler:
                  csrr  x13, 0x341
                  addi  x13, x13, 4
                  csrw  0x341, x13
                  add x25, x14, zero
                  lw  x1, 4(x25)
                  lw  x2, 8(x25)
                  lw  x3, 12(x25)
                  lw  x4, 16(x25)
                  lw  x5, 20(x25)
                  lw  x6, 24(x25)
                  lw  x7, 28(x25)
                  lw  x8, 32(x25)
                  lw  x9, 36(x25)
                  lw  x10, 40(x25)
                  lw  x11, 44(x25)
                  lw  x12, 48(x25)
                  lw  x13, 52(x25)
                  lw  x14, 56(x25)
                  lw  x15, 60(x25)
                  lw  x16, 64(x25)
                  lw  x17, 68(x25)
                  lw  x18, 72(x25)
                  lw  x19, 76(x25)
                  lw  x20, 80(x25)
                  lw  x21, 84(x25)
                  lw  x22, 88(x25)
                  lw  x23, 92(x25)
                  lw  x24, 96(x25)
                  lw  x25, 100(x25)
                  lw  x26, 104(x25)
                  lw  x27, 108(x25)
                  lw  x28, 112(x25)
                  lw  x29, 116(x25)
                  lw  x30, 120(x25)
                  lw  x31, 124(x25)
                  addi x25, x25, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x13, 0x300 # MSTATUS;
                  csrr  x13, 0x304 # MIE;
                  csrr  x13, 0x344 # MIP;
                  csrrc x13, 0x344, x13 # MIP;
                  add x25, x14, zero
                  lw  x1, 4(x25)
                  lw  x2, 8(x25)
                  lw  x3, 12(x25)
                  lw  x4, 16(x25)
                  lw  x5, 20(x25)
                  lw  x6, 24(x25)
                  lw  x7, 28(x25)
                  lw  x8, 32(x25)
                  lw  x9, 36(x25)
                  lw  x10, 40(x25)
                  lw  x11, 44(x25)
                  lw  x12, 48(x25)
                  lw  x13, 52(x25)
                  lw  x14, 56(x25)
                  lw  x15, 60(x25)
                  lw  x16, 64(x25)
                  lw  x17, 68(x25)
                  lw  x18, 72(x25)
                  lw  x19, 76(x25)
                  lw  x20, 80(x25)
                  lw  x21, 84(x25)
                  lw  x22, 88(x25)
                  lw  x23, 92(x25)
                  lw  x24, 96(x25)
                  lw  x25, 100(x25)
                  lw  x26, 104(x25)
                  lw  x27, 108(x25)
                  lw  x28, 112(x25)
                  lw  x29, 116(x25)
                  lw  x30, 120(x25)
                  lw  x31, 124(x25)
                  addi x25, x25, 128
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
