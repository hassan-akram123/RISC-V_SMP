.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x21, h0_start
jalr x0, x21, 0
h0_start:
                  li x16, 0x40000100
                  csrw 0x301, x16
kernel_sp:        
                  la x6, kernel_stack_end

trap_vec_init:    
                  la x16, mtvec_handler
                  ori x16, x16, 1
                  csrw 0x305, x16 # MTVEC

mepc_setup:       
                  la x16, init
                  csrw 0x341, x16

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x16, 0x1800
                  csrw 0x300, x16 # MSTATUS
                  mret
init:             
                  li x0, 0x2204979c
                  li x1, 0x80000000
                  li x2, 0x0
                  li x3, 0x278007d7
                  li x4, 0x80000000
                  li x5, 0x0
                  li x7, 0xf
                  li x8, 0x4
                  li x9, 0x80000000
                  li x10, 0x80000000
                  li x11, 0xb
                  li x12, 0x24e94128
                  li x13, 0x0
                  li x15, 0xf02512c3
                  li x16, 0x80000000
                  li x17, 0x2
                  li x18, 0x0
                  li x19, 0xf8a8bf87
                  li x20, 0x0
                  li x21, 0xf66a1d35
                  li x22, 0xfc7d6e40
                  li x23, 0x0
                  li x24, 0x80000000
                  li x25, 0x21567818
                  li x26, 0xfdc162d1
                  li x27, 0xc
                  li x28, 0xf
                  li x29, 0xf3d79525
                  li x30, 0x80000000
                  li x31, 0xc1205585
                  la x14, user_stack_end
main:             la           sp, region_0+882 #start riscv_load_store_rand_instr_stream_0
                  sub          ra, s2, s8
                  lbu          s8, 180(sp)
                  lb           t0, 883(sp)
                  sb           a7, 547(sp)
                  lw           s10, -218(sp)
                  lbu          s1, 155(sp)
                  srl          t3, a4, ra
                  xor          t2, s7, zero
                  sb           s6, 257(sp)
                  lb           a3, -499(sp)
                  sb           a4, -845(sp)
                  lbu          a2, -455(sp)
                  sb           s8, 158(sp)
                  sb           s5, 645(sp)
                  lh           s4, 510(sp)
                  sltiu        s0, a4, -1174
                  xori         s9, t0, -1009
                  lh           a5, 1052(sp)
                  srl          s2, zero, sp
                  sltu         a1, t5, tp
                  lb           s10, 885(sp)
                  lb           s10, 887(sp)
                  sb           s1, -573(sp)
                  sb           t0, 315(sp)
                  sw           s6, -202(sp)
                  lbu          s0, 799(sp)
                  sh           t3, 368(sp)
                  lui          t0, 327722
                  slti         a6, zero, 1768
                  lb           t4, 1063(sp)
                  slli         s1, a3, 12
                  lhu          t0, 522(sp)
                  sb           a6, 428(sp)
                  add          s10, a1, a0
                  slt          s0, sp, a3
                  lb           s10, 479(sp)
                  lbu          a0, -190(sp)
                  lh           s3, -714(sp)
                  ori          t4, a6, 1505
                  sll          s2, s2, gp
                  sub          s3, a0, zero
                  slt          a1, ra, s3
                  lb           t0, -868(sp)
                  lb           t4, -669(sp) #end riscv_load_store_rand_instr_stream_0
                  la           a6, region_1+1859 #start riscv_load_store_rand_instr_stream_11
                  sb           s0, -1036(a6)
                  lhu          sp, -107(a6)
                  lbu          a1, -456(a6)
                  lb           a0, -891(a6)
                  sb           a6, -494(a6)
                  andi         s10, s4, -1782
                  sh           s2, -517(a6)
                  lw           a2, -59(a6)
                  lbu          t2, -1054(a6)
                  lb           t5, -70(a6)
                  lbu          s10, -1002(a6)
                  sb           s4, -190(a6)
                  lhu          gp, -871(a6)
                  sb           a6, -805(a6)
                  lhu          t6, -389(a6)
                  sltu         tp, t0, a5
                  lb           t2, -662(a6)
                  add          s1, s5, a0
                  sb           a6, 76(a6)
                  srli         t4, sp, 22
                  lb           s4, 54(a6)
                  add          t6, t0, s3
                  and          s0, a5, a0
                  srl          s2, t4, s7
                  ori          gp, a2, -1965
                  andi         s9, s8, 1163
                  sh           t1, -1443(a6)
                  lbu          a0, -564(a6)
                  sh           a7, -221(a6)
                  lbu          s11, -37(a6)
                  nop
                  sb           t3, -374(a6) #end riscv_load_store_rand_instr_stream_11
                  la           sp, region_1+1391 #start riscv_load_store_rand_instr_stream_3
                  lh           t4, -25(sp)
                  sh           a7, -59(sp)
                  or           t3, t5, t5
                  nop
                  or           s4, s9, t5
                  srai         s3, t0, 13
                  lb           a1, 47(sp)
                  lui          s10, 587811
                  slt          a0, s10, s11
                  xor          a1, s5, s2
                  sltu         s4, t3, sp
                  xor          a3, t1, t4
                  sb           t1, -6(sp)
                  srai         a0, zero, 19
                  sltiu        s6, s9, 18
                  sra          s1, a0, s11
                  lbu          s0, 41(sp)
                  sb           a3, 32(sp)
                  lbu          s6, 56(sp)
                  sra          s0, sp, t3
                  auipc        t4, 584284
                  srli         s9, t6, 5
                  xor          a6, a6, s2
                  xor          a1, s3, s11
                  lbu          ra, -16(sp)
                  slti         a0, a0, -208
                  srl          s0, s11, sp
                  xor          s9, a6, a7
                  add          s0, a6, zero
                  and          s0, a6, t4
                  sra          a2, s6, t3
                  slti         s1, ra, 1937
                  nop
                  xori         tp, s4, 1232
                  or           zero, gp, s10
                  sltiu        s9, s4, 899
                  srli         t0, s7, 22
                  add          s9, s0, t2
                  lbu          a6, -17(sp)
                  sb           s1, 11(sp) #end riscv_load_store_rand_instr_stream_3
                  la           t2, region_1+780 #start riscv_load_store_rand_instr_stream_5
                  sltiu        a0, ra, -794
                  lbu          tp, 32(t2)
                  sb           s3, -149(t2)
                  sra          t3, s2, s9
                  sll          s9, s0, a1
                  auipc        a7, 617057
                  lbu          t5, -241(t2)
                  xor          a0, s10, s9
                  sub          s1, gp, a5
                  ori          t0, s11, 1652
                  lb           s6, 199(t2)
                  sub          s3, tp, s5
                  sb           a6, 197(t2)
                  lbu          a0, 1(t2)
                  lb           gp, -81(t2)
                  lb           a5, -108(t2)
                  lb           s0, -23(t2)
                  lui          a6, 222818
                  sb           s4, -15(t2)
                  sb           s9, 203(t2)
                  sb           s9, 27(t2)
                  add          s3, a2, t1
                  sb           a7, -173(t2)
                  lb           s10, -139(t2)
                  lb           t3, -191(t2)
                  srli         zero, s1, 0
                  lh           ra, -30(t2)
                  add          a5, s8, s10
                  sra          t5, s3, a1
                  lbu          a2, 203(t2)
                  lbu          a5, 209(t2)
                  lb           s9, -181(t2)
                  sh           a2, -132(t2) #end riscv_load_store_rand_instr_stream_5
                  la           sp, region_1+713 #start riscv_load_store_rand_instr_stream_9
                  lbu          s1, 118(sp)
                  ori          a7, s6, 1207
                  sb           a5, 118(sp)
                  lb           s11, -220(sp)
                  sh           t4, -253(sp)
                  slti         s6, s1, 1702
                  sh           tp, 53(sp)
                  lbu          s0, 4(sp)
                  sh           t6, 31(sp)
                  lhu          t6, -185(sp)
                  ori          t6, s5, 952
                  lhu          s3, -133(sp)
                  lbu          a6, -146(sp)
                  nop
                  or           t5, a5, ra
                  sb           zero, -166(sp)
                  lbu          tp, -50(sp)
                  lhu          s9, 229(sp)
                  lhu          t5, -237(sp)
                  lb           s6, -96(sp)
                  andi         s0, s7, -829
                  sb           a3, 86(sp)
                  sb           a0, -117(sp)
                  lb           a3, -80(sp)
                  xori         s10, a1, -1252
                  sltu         gp, t3, s0
                  lbu          gp, 207(sp)
                  add          s10, t4, a1
                  lbu          s6, -170(sp)
                  sb           t6, 225(sp)
                  sltiu        ra, zero, -164
                  lbu          a3, -91(sp)
                  lb           s2, 82(sp) #end riscv_load_store_rand_instr_stream_9
                  la           a6, region_0+1616 #start riscv_load_store_rand_instr_stream_10
                  sb           t0, 11(a6)
                  sra          tp, a5, gp
                  srai         sp, s6, 27
                  add          ra, t4, s10
                  andi         t4, ra, 1718
                  lb           s8, -61(a6)
                  sll          a7, s2, a6
                  lb           s9, 15(a6)
                  lb           s1, 3(a6)
                  slli         a5, s2, 4
                  andi         t5, t4, -1141
                  sb           t6, -55(a6)
                  xori         s9, s6, -1636
                  addi         t5, s1, 1184
                  lbu          s10, 63(a6)
                  lb           a7, -7(a6)
                  addi         a5, t5, 114
                  ori          a3, s3, 315
                  slli         s10, a3, 6
                  lui          gp, 1019562
                  lbu          s10, 25(a6)
                  xor          t0, s5, s7
                  sll          s11, ra, t1
                  sh           gp, -4(a6)
                  sra          t6, s10, a3
                  xor          s7, s6, t2
                  lb           s2, 57(a6) #end riscv_load_store_rand_instr_stream_10
                  la           sp, region_0+302 #start riscv_load_store_rand_instr_stream_7
                  sb           a2, -13(sp)
                  sw           a1, -6(sp)
                  lh           a2, -8(sp)
                  slti         s10, t2, -460
                  sltiu        s7, a7, 1789
                  sb           a2, 14(sp)
                  auipc        s2, 713269
                  srli         zero, t2, 28
                  ori          a5, a7, 843
                  xori         s7, s0, 1454
                  srai         tp, s1, 8
                  lbu          s4, -15(sp)
                  sb           t1, -11(sp)
                  lh           a0, 4(sp)
                  addi         s7, t6, 1272
                  and          zero, t6, s10
                  or           s6, a5, a5
                  sh           sp, -10(sp)
                  sb           t0, 5(sp)
                  lh           s7, 16(sp)
                  slti         t4, a6, 943
                  lhu          s7, -12(sp)
                  sb           ra, 12(sp)
                  srli         s7, s2, 10
                  addi         a0, s6, -1447
                  or           a7, s2, s4
                  andi         s7, a3, -527
                  sb           zero, 5(sp)
                  srl          tp, a0, gp
                  lbu          a0, -15(sp)
                  sb           a2, -9(sp)
                  lbu          s7, -5(sp)
                  lbu          zero, -5(sp)
                  lhu          a3, -6(sp)
                  add          zero, s8, a4
                  ori          a7, sp, 928
                  add          s9, ra, t4
                  or           tp, s5, s0
                  lbu          a0, 13(sp)
                  sltiu        gp, ra, 2022
                  lui          a5, 887316
                  or           a0, s0, a6
                  and          s9, t0, a2
                  xori         ra, a3, -573
                  sra          t3, s9, s2
                  sb           ra, 15(sp)
                  sub          tp, a0, s7
                  lbu          t2, 15(sp) #end riscv_load_store_rand_instr_stream_7
                  la           t3, region_0+1128 #start riscv_load_store_rand_instr_stream_2
                  lb           t4, 629(t3)
                  slti         s10, a3, 493
                  and          ra, t2, s9
                  srl          t2, s10, t2
                  lw           t4, 664(t3)
                  lhu          t6, 670(t3)
                  sb           t6, -606(t3)
                  add          s11, s6, a6
                  slti         t6, sp, 888
                  xori         a3, a3, -883
                  lb           a2, -75(t3)
                  lb           t4, -473(t3)
                  nop
                  srai         a7, s8, 21
                  slli         s4, t3, 9
                  lhu          a5, 818(t3)
                  sub          s6, t4, s5
                  add          s2, a3, a6
                  slt          s8, a6, s3
                  sltiu        s9, a3, 1904
                  or           ra, sp, a3
                  sb           t6, -812(t3)
                  lh           t5, 266(t3)
                  srl          a2, t5, s1
                  ori          a3, s4, 789
                  lhu          s4, 846(t3)
                  lbu          t0, -482(t3)
                  sb           a0, 678(t3)
                  sltiu        s10, a2, -1095
                  lbu          s11, 424(t3)
                  lbu          s7, -539(t3)
                  sltu         zero, t3, a7
                  sb           s7, 226(t3)
                  addi         t5, a1, 1492
                  lbu          gp, 586(t3)
                  slli         s2, t4, 17
                  lbu          a5, 351(t3)
                  sb           s2, 403(t3)
                  lbu          s6, -170(t3)
                  lbu          t5, 267(t3)
                  sltu         t2, t1, a5
                  and          s6, t1, t0
                  srli         s2, sp, 3
                  lhu          s11, 378(t3)
                  lb           s10, -939(t3)
                  lh           zero, 464(t3)
                  lbu          t2, 317(t3)
                  lb           s1, -557(t3)
                  sltiu        s4, s4, 346
                  srli         zero, s3, 8
                  or           s8, a1, s8
                  lb           s1, 755(t3)
                  lbu          a2, 253(t3)
                  lbu          s9, 573(t3)
                  auipc        a5, 162926
                  sh           s10, -766(t3) #end riscv_load_store_rand_instr_stream_2
                  bltu         a6, gp, 2f
                  sra          s8, s6, s3
2:                or           s9, s1, s0
                  beq          s2, ra, 13f
                  sltiu        tp, s3, -1534
                  beq          t2, a2, 18f
                  bne          t2, t2, 25f
                  and          s2, sp, s7
                  xori         zero, a1, 149
                  nop
                  slt          s10, s9, s8
                  bgeu         s10, t3, 24f
                  bltu         s8, t2, 16f
13:               addi         s8, a2, 1416
                  sltu         t2, t4, t6
                  slti         s2, t5, -823
16:               addi         gp, t3, 510
                  sra          a7, s4, s9
18:               auipc        a3, 35475
                  slt          s9, t2, s1
                  srl          s6, a5, sp
                  nop
                  srai         s2, t2, 29
                  bne          s3, a4, 28f
24:               slli         ra, a0, 25
25:               srai         a6, t5, 21
                  sltiu        a6, s2, -291
                  blt          s4, s4, 33f
28:               slli         t3, t4, 9
                  and          s3, s6, ra
                  auipc        s8, 841393
                  add          sp, t5, s11
                  andi         a1, a3, -1844
33:               slli         t2, t5, 22
                  auipc        t4, 21526
                  srl          s4, s8, a7
                  sltiu        s1, tp, -1082
                  andi         t0, t6, 205
                  slt          s9, s6, t0
                  xor          t5, a7, a5
                  slt          s4, a6, s6
                  bgeu         t6, t0, 54f
                  sltiu        t0, sp, 183
                  slli         ra, s4, 28
                  srai         a5, t6, 15
                  la           s10, sub_1
                  nop
                  xori         s11, a2, 412
                  addi         s4, s6, 1896
                  addi         s10, s10, -88
                  srli         s6, s11, 10
                  sll          a6, a0, s5
                  addi         a6, zero, -601
                  bgeu         a7, gp, main_j1 #branch to jump instr
                  sll          s3, gp, s2
main_j1:          jalr         ra, s10, 88 #jump main -> sub_1
                  lui          s6, 101486
                  bltu         s10, s0, 55f
                  slt          s3, a0, s10
                  bge          tp, ra, 58f
                  nop
                  slt          a1, t5, zero
                  slti         s6, a2, 951
                  bgeu         ra, a0, 54f
                  add          s7, s4, s8
54:               bltu         ra, ra, 70f
55:               auipc        t2, 655595
                  srl          t4, s6, s10
                  beq          t6, t0, 75f
58:               lui          a6, 496050
                  xori         ra, tp, 214
                  xor          s7, s5, gp
                  srl          s11, s7, s6
                  lui          s8, 377346
                  blt          a4, s1, 77f
                  sll          a0, s9, ra
                  sll          a7, s8, s3
                  xor          s3, t2, t1
                  sltiu        s11, a2, -376
                  bgeu         s3, t3, 82f
                  blt          a2, s8, 76f
70:               bgeu         s0, t1, 72f
                  xori         zero, s6, -1147
72:               xori         t6, a4, -1452
                  srl          t4, t4, a3
                  srl          t4, zero, s10
75:               slti         t2, ra, 1128
76:               blt          a6, s9, 84f
77:               or           s0, t6, t2
                  lui          s1, 520043
                  bgeu         t0, s9, 98f
                  srai         s7, s0, 24
                  sra          s10, s7, ra
82:               sra          s9, s10, ra
                  slti         a0, s7, 1595
84:               andi         t3, s3, 470
                  lui          t4, 779482
                  slli         t6, s7, 19
                  bltu         s2, s10, 93f
                  xori         t5, s9, -1290
                  ori          a2, s0, -1641
                  srli         a7, gp, 12
                  srli         a7, a5, 20
                  add          a0, gp, ra
93:               xor          s4, t6, s5
                  srli         t3, s10, 5
                  srl          s11, gp, t2
                  srli         a5, gp, 7
                  slt          s9, t6, s0
98:               slli         a2, t3, 18
                  addi         s6, s0, -1047
                  srli         t6, a6, 30
                  xor          s6, ra, t3
                  ori          s6, gp, 1149
                  xori         ra, ra, 897
                  xor          a2, s2, a4
                  srl          s3, t3, gp
                  sltiu        t6, t6, 1079
                  lui          s2, 1012741
                  srli         s9, s7, 30
                  srli         t5, zero, 2
                  andi         s6, s7, 1778
                  sub          s11, s0, t0
                  bltu         a7, t2, 114f
                  sltiu        t3, sp, 422
114:              slt          s2, a5, t4
                  srai         t3, a5, 22
                  andi         sp, a1, 380
                  bne          a3, ra, 136f
                  xori         t2, a0, -1056
                  slli         s3, sp, 26
                  xori         s2, s8, -1656
                  add          a5, a6, t2
                  sltiu        t5, t4, 1184
                  sra          s10, a2, sp
                  and          a2, s6, s9
                  slt          s0, a0, a3
                  auipc        tp, 374217
                  srai         sp, a4, 30
                  bgeu         s5, a4, 142f
                  sltu         a7, s11, s8
                  xor          s7, a3, a6
                  sub          a5, s0, t5
                  sub          a3, a1, s10
                  lui          a7, 721890
                  nop
                  addi         a1, a5, 1651
136:              add          a1, t1, t3
                  srai         s2, s2, 18
                  srai         t3, t0, 10
                  andi         gp, a6, 1235
                  la           s0, region_1+1536 #start riscv_load_store_rand_instr_stream_8
                  srl          s3, s1, a1
                  lb           s10, 8(s0)
                  sra          zero, s8, a4
                  lh           t4, -14(s0)
                  lh           s8, -8(s0)
                  xori         s4, gp, 34
                  lbu          a2, -13(s0)
                  add          sp, t0, s8
                  sw           t2, 4(s0)
                  srli         s6, a1, 17
                  sb           t2, -5(s0)
                  sb           t2, -2(s0)
                  lui          zero, 231268
                  lhu          s7, -4(s0)
                  srli         a7, a4, 3
                  add          a7, a2, s5
                  srai         a5, t6, 15
                  addi         s9, tp, 1399
                  lb           s8, -1(s0)
                  lw           s4, -12(s0) #end riscv_load_store_rand_instr_stream_8
                  bltu         t2, gp, 149f
                  lui          t6, 958126
142:              srli         s9, s7, 27
                  slt          s0, zero, t5
                  xor          a3, t2, a5
                  srl          s7, t2, a2
                  sra          a6, gp, s0
                  beq          t2, s9, 159f
                  sub          s8, tp, t1
149:              bltu         s6, gp, 168f
                  bge          s1, a3, 156f
                  srli         s3, s5, 18
                  xori         t4, s3, 1346
                  slt          s9, s4, a5
                  or           sp, zero, t6
                  lui          s6, 323962
156:              srl          a2, t5, s9
                  xori         ra, t5, -888
                  auipc        tp, 923855
159:              nop
                  sub          zero, s1, t3
                  nop
                  bne          a3, a1, 164f
                  srl          t3, t3, s2
164:              sll          s10, t2, s9
                  sltiu        s2, a2, -1400
                  add          s3, a4, a0
                  bge          t0, t1, 171f
168:              and          s3, tp, gp
                  ori          s9, t5, 469
                  srai         s9, a6, 11
171:              slti         s9, ra, -1385
                  srai         t0, zero, 10
                  srl          a5, a2, a4
                  sltu         s10, t3, s10
                  blt          s3, a4, 185f
                  lui          s0, 944001
                  srai         s0, s2, 11
                  sltiu        t6, s2, 1286
                  sub          a7, a6, t1
                  add          zero, s7, a6
                  blt          tp, t3, 185f
                  or           sp, t1, t5
                  srli         a3, s3, 31
                  slti         s3, s3, -346
185:              lui          a1, 849229
                  add          t2, t2, t6
                  andi         s4, s5, 280
                  ori          t3, t3, 370
                  sub          s2, a0, s11
                  nop
                  slti         s6, t3, -280
                  srl          a3, ra, a3
                  andi         t2, s8, 892
                  andi         sp, gp, -1331
                  sll          t4, a6, s10
                  addi         s3, t2, 278
                  slti         t3, s11, 488
                  bgeu         s11, ra, 211f
                  srl          t3, a4, ra
                  blt          s4, a7, 207f
                  slt          s7, s11, a4
                  auipc        s10, 1038972
                  andi         s6, s5, -1347
                  bltu         a7, s3, 223f
                  xori         s7, s11, -536
                  sltiu        a5, ra, 158
207:              sltu         s10, a7, t3
                  or           s11, t0, t2
                  nop
                  slt          ra, s4, zero
211:              srli         a5, t4, 29
                  bltu         t3, s1, 221f
                  nop
                  beq          a5, s6, 226f
                  sub          ra, t2, s10
                  slli         t3, t5, 28
                  andi         t6, a5, -1995
                  bltu         s5, t6, 220f
                  blt          s4, sp, 229f
220:              srli         a5, a1, 16
221:              srli         a1, s3, 19
                  slti         s7, tp, -1055
223:              beq          t0, s6, 242f
                  slli         s2, t3, 19
                  sll          zero, s10, s10
226:              xor          a7, gp, t5
                  sra          a0, a4, t6
                  lui          a2, 756495
229:              addi         s1, s0, -702
                  sra          t2, a2, tp
                  slti         s4, a7, -1550
                  xor          a3, zero, s8
                  or           a1, a1, s2
                  and          a2, gp, t5
                  addi         s10, t6, -1804
                  xor          sp, t0, t3
                  srl          a3, s7, a7
                  addi         gp, a7, -1962
                  or           s4, a2, t3
                  sltu         s0, a1, a4
                  bne          s2, t1, 255f
242:              or           t3, a5, ra
                  andi         a1, s1, 932
                  srli         gp, s5, 22
                  sub          s6, t0, tp
                  sltu         t4, t4, s1
                  slt          a7, s11, s10
                  xor          t2, s1, s5
                  sll          s1, a6, t2
                  bne          s0, a7, 256f
                  bltu         t1, t4, 267f
                  addi         t6, t6, 1766
                  auipc        a7, 700838
                  srli         a0, gp, 25
255:              xori         s8, s9, 745
256:              ori          tp, sp, 1675
                  slt          a2, s4, t5
                  sll          t0, s4, s0
                  andi         a1, a3, 925
                  nop
                  srli         a1, s0, 0
                  ori          s9, s6, -445
                  blt          t3, s1, 265f
                  add          t4, a1, ra
265:              bge          zero, s2, 283f
                  sll          s7, a6, s10
267:              bgeu         zero, t4, 269f
                  la           a5, sub_1
                  sltiu        a6, s7, 2024
                  xor          s2, s4, t4
                  addi         a5, a5, 950
                  and          t5, a6, s5
                  sll          s9, t1, a6
                  beq          s0, a5, main_j2 #branch to jump instr
                  srli         tp, a4, 0
                  lui          a7, 985767
main_j2:          jalr         ra, a5, -950 #jump main -> sub_1
                  slti         sp, s0, 395
269:              addi         s9, a5, 529
                  auipc        s0, 1024048
                  auipc        t3, 69217
                  andi         ra, s9, -908
                  auipc        t6, 950660
                  sltiu        ra, s2, 590
                  auipc        t4, 25117
                  xori         t5, sp, -915
                  nop
                  bltu         t6, sp, 291f
                  xori         a7, s10, 1167
                  andi         a7, a3, 1333
                  bne          s10, a4, 294f
                  sltiu        t5, t2, -422
283:              srl          a0, t2, s1
                  bgeu         s8, t5, 289f
                  andi         s3, s4, -1172
                  srl          s1, a2, sp
                  and          t0, t0, sp
                  slti         s6, s2, -531
289:              bge          s11, gp, 297f
                  bge          t4, s11, 292f
291:              lui          s4, 614560
292:              bge          a3, tp, 301f
                  sltu         sp, s3, tp
294:              bltu         s4, s1, 300f
                  ori          tp, a2, 488
                  slti         t5, t4, 615
297:              bne          tp, a4, 303f
                  bge          gp, a0, 300f
                  ori          a1, s10, -958
300:              andi         s3, a6, -1566
301:              slli         s6, s8, 26
                  bgeu         t0, t6, 321f
303:              bge          s8, a1, 322f
                  nop
                  srli         s11, t5, 12
                  srl          a7, s5, t1
                  srai         s2, sp, 21
                  or           a6, a3, s0
                  bgeu         ra, s11, 323f
                  or           s1, s8, a0
                  bne          s6, s10, 325f
                  srl          s1, a1, zero
                  slti         s6, s10, -737
                  beq          t1, s3, 318f
                  sltiu        s1, a5, 1226
                  slti         s6, zero, 1834
                  bge          t3, s11, 336f
318:              srli         t5, gp, 22
                  andi         t6, s10, 611
                  and          tp, a6, t1
321:              bgeu         zero, a6, 330f
322:              or           s8, a3, s10
323:              bltu         t6, s2, 330f
                  and          s1, s1, a0
325:              xor          s11, s8, t1
                  and          s9, zero, a2
                  slt          a1, s5, sp
                  sub          s3, t1, s1
                  sltiu        s1, s0, -724
330:              sub          s0, a1, a7
                  and          ra, a2, s10
                  beq          s11, s5, 336f
                  addi         a0, s5, 200
                  sra          s3, a0, a1
                  slti         a0, sp, 330
336:              auipc        a0, 789399
                  sll          s8, sp, s0
                  addi         a1, ra, -1561
                  auipc        a0, 662898
                  and          s0, tp, sp
                  nop
                  andi         s2, a4, 1581
                  slti         s7, s10, 632
                  sltu         gp, a5, t2
                  srl          a2, s8, s7
                  xor          zero, a6, a1
                  beq          ra, s6, 366f
                  slti         s10, ra, -429
                  sltu         s3, tp, a4
                  xori         a2, t5, -431
                  xor          t5, s5, a0
                  sra          s6, t4, s3
                  addi         s6, t6, -1756
                  or           s8, a1, t3
                  bgeu         s6, t1, 363f
                  auipc        s4, 276256
                  srai         s2, t1, 14
                  srai         tp, a3, 18
                  bge          s4, t6, 378f
                  lui          t3, 904934
                  srli         t5, s2, 8
                  xori         s3, a2, -1482
363:              blt          zero, a6, 376f
                  andi         a3, s7, 1612
                  sub          s8, s6, s7
366:              sltiu        s8, s8, -1708
                  sub          s9, a5, s7
                  sltu         s3, s0, t6
                  bge          a6, a7, 371f
                  sra          a2, s10, a2
371:              nop
                  slti         zero, t5, 1213
                  add          s8, t6, a3
                  lui          s7, 806248
                  blt          a2, s11, 394f
376:              srli         a6, s9, 23
                  bge          a7, s0, 379f
378:              bltu         s7, s11, 390f
379:              lui          s8, 958070
                  srai         a5, t6, 24
                  sra          tp, t4, s1
                  ori          a6, a7, 208
                  bne          s10, s10, 392f
                  slli         s9, sp, 1
                  slt          ra, a0, s10
                  bltu         a7, s6, 400f
                  ori          s6, t3, 383
                  bge          a1, gp, 401f
                  blt          t2, t1, 395f
390:              srai         t5, s1, 12
                  sra          t5, a0, s3
392:              slt          t6, tp, s8
                  blt          s2, s5, 397f
394:              bgeu         a4, a7, 400f
395:              sltiu        a6, a0, -319
                  nop
397:              slti         s6, ra, 24
                  beq          zero, s5, 408f
                  addi         t6, s11, -321
400:              bltu         s10, t4, 416f
401:              addi         s2, t1, 1630
                  slt          a7, zero, a0
                  xori         a2, s9, 1194
                  sub          a5, s9, t2
                  blt          t6, a1, 410f
                  and          ra, s7, s4
                  blt          s10, a4, 417f
408:              addi         t3, s4, -1497
                  slti         s4, s4, 1429
410:              blt          t0, s11, 424f
                  add          t6, s10, s1
                  beq          t1, sp, 414f
                  add          ra, s1, s5
414:              xor          s2, t0, s10
                  slt          a6, t2, s5
416:              auipc        t5, 637243
417:              xor          s7, s2, s6
                  slli         s8, s9, 28
                  lui          a5, 133372
                  addi         t5, s8, 261
                  sltu         t2, s6, t5
                  slti         s9, t4, 955
                  slli         s3, s0, 13
424:              beq          a2, t5, 426f
                  add          s3, t1, tp
426:              add          t3, s8, s2
                  addi         zero, t5, 704
                  add          s1, a3, a3
                  srai         t6, tp, 28
                  and          a5, a3, s1
                  ori          tp, s1, -1225
                  addi         a3, sp, 1032
                  slli         t0, s5, 21
                  andi         s3, a6, -448
                  lui          s9, 946627
                  sub          t5, t0, ra
                  bltu         t5, a6, 455f
                  xori         sp, t2, 706
                  slt          a2, s10, a3
                  nop
                  or           s3, t5, a7
                  or           tp, s6, s1
                  sub          a1, a1, a1
                  sll          a3, t5, s9
                  beq          s2, a2, 447f
                  or           a7, s11, s7
447:              bge          a7, zero, 461f
                  or           a7, s6, a3
                  xori         s9, t3, -1751
                  sub          s3, a5, s7
                  sltiu        s3, s11, 198
                  ori          ra, a6, -887
                  auipc        s11, 281217
                  sltiu        a1, a1, -975
455:              andi         a0, tp, 1823
                  andi         t2, a6, -473
                  sltu         s8, gp, a6
                  xori         s4, gp, 504
                  bltu         a4, s7, 472f
                  sltiu        zero, t0, 1146
461:              srli         t3, s11, 7
                  bge          a0, t1, 468f
                  ori          t3, t3, -917
                  lui          s4, 482605
                  srl          a7, s2, zero
                  slt          s3, t1, s11
                  slt          s0, s2, a3
468:              srai         s3, s5, 2
                  andi         zero, s5, -629
                  slti         sp, a5, 740
                  bge          a0, t6, 485f
472:              sltiu        s7, a2, -386
                  xor          a5, tp, a4
                  la           t3, region_1+1358 #start riscv_load_store_rand_instr_stream_6
                  lh           s7, -10(t3)
                  sra          s2, t2, t6
                  add          s9, s10, s8
                  sb           t1, 7(t3)
                  auipc        s9, 666485
                  lb           ra, 15(t3)
                  lb           s3, -15(t3)
                  lb           s9, -11(t3)
                  lw           t6, 10(t3)
                  auipc        s1, 322558
                  lbu          t5, -8(t3)
                  sub          a3, s7, s6
                  add          s1, s11, s3
                  lb           s0, -3(t3)
                  lbu          tp, 15(t3)
                  lb           sp, -8(t3)
                  lb           t4, -5(t3)
                  nop
                  auipc        sp, 424671
                  lb           s8, -14(t3)
                  srai         t2, t2, 13
                  add          s6, s5, t5
                  lbu          s10, 4(t3)
                  or           gp, s1, t1
                  nop
                  sb           t5, 12(t3)
                  sb           s1, 8(t3)
                  xori         zero, a5, -1307
                  lbu          s3, 11(t3)
                  lb           t2, -4(t3)
                  sw           s8, -2(t3)
                  auipc        s8, 795191
                  add          ra, s4, ra
                  lbu          a7, 13(t3)
                  lh           s9, 0(t3)
                  sb           s5, 16(t3) #end riscv_load_store_rand_instr_stream_6
                  bgeu         t5, t1, 493f
                  bltu         a3, s9, 481f
                  sra          a0, s4, s7
                  srl          sp, a0, t0
                  srl          a3, a3, s9
                  auipc        zero, 738690
                  add          t0, s4, s3
481:              add          s11, tp, a4
                  sltu         s6, s3, a7
                  sra          ra, s10, s7
                  bgeu         s0, a0, 502f
485:              slli         s6, t4, 27
                  bltu         zero, a0, 488f
                  xor          a5, a2, s7
488:              or           s6, t5, zero
                  nop
                  blt          t6, s2, 492f
                  sra          zero, a5, a2
492:              or           ra, t6, ra
493:              xori         a5, s7, 821
                  beq          gp, t1, 506f
                  bge          t3, a0, 508f
                  xor          sp, t5, a0
                  xor          a6, a5, s9
                  beq          ra, s1, 506f
                  and          zero, zero, a5
                  beq          t3, t2, 506f
                  srl          tp, s11, s8
502:              sltu         ra, s11, a0
                  srl          a6, ra, t4
                  srl          a7, s0, s10
                  bltu         a6, s11, 515f
506:              slti         s3, t3, 693
                  and          tp, gp, a5
508:              sll          s3, s6, s6
                  bne          t0, t6, 516f
                  lui          sp, 59325
                  bge          t4, gp, 517f
                  sll          a5, sp, zero
                  auipc        a1, 564063
                  or           t5, s7, s6
515:              srai         a5, s1, 18
516:              beq          a4, s5, 535f
517:              sltu         s8, s2, s9
                  addi         s11, a1, 395
                  addi         s4, s5, -970
                  slli         s2, t1, 13
                  slli         ra, a2, 15
                  andi         a3, s5, -1465
                  auipc        sp, 545276
                  or           a6, t6, s9
                  bne          s1, a4, 530f
                  ori          s8, t1, -1285
                  bne          t0, t3, 529f
                  and          s8, t0, tp
529:              bltu         t1, t6, 548f
530:              srli         a3, t0, 9
                  sub          a5, a7, t5
                  xor          a0, s1, s8
                  auipc        a6, 900468
                  sltiu        s6, s5, -281
535:              srl          s11, t6, s2
                  blt          sp, t5, 555f
                  sub          zero, t3, s1
                  slli         t3, a0, 10
                  slti         ra, zero, -1747
                  sltiu        t4, s11, 1049
                  and          s11, s10, t5
                  bge          a3, s5, 551f
                  slli         t4, s11, 5
                  srai         tp, t6, 2
                  ori          a0, s10, 585
                  bne          t6, t1, 548f
                  and          t4, a2, a0
548:              sra          a7, a4, zero
                  bltu         t6, t3, 559f
                  andi         a2, s6, 350
551:              xor          a1, sp, a1
                  beq          t0, t5, 566f
                  sll          s4, s1, ra
                  sltiu        s0, s8, 423
555:              lui          a3, 406830
                  srli         a0, ra, 17
                  bge          t6, a1, 561f
                  xori         a6, a1, -938
559:              add          a3, s1, gp
                  bne          tp, t6, 573f
561:              bgeu         s0, a1, 574f
                  xori         s11, t2, -477
                  xor          a6, s9, a6
                  lui          tp, 450093
                  andi         a6, t1, -563
566:              beq          a7, ra, 570f
                  bne          ra, a2, 569f
                  bgeu         a7, s2, 582f
569:              or           a2, ra, a7
570:              nop
                  sra          t3, s10, s3
                  lui          t0, 618844
573:              xor          a6, s9, t1
574:              slli         s0, a0, 25
                  xori         a1, t4, 1889
                  blt          zero, a5, 585f
                  blt          s9, s11, 593f
                  xori         s0, s4, 468
                  slli         s11, s9, 13
                  lui          a3, 39549
                  slti         s4, a0, -391
582:              xor          t6, s2, s6
                  sll          t6, s7, s10
                  and          t2, s7, a5
585:              srl          ra, a3, gp
                  addi         zero, a5, 1052
                  srai         gp, a5, 13
                  bge          a6, s2, 592f
                  and          s3, t5, s6
                  auipc        a0, 759803
                  bgeu         a2, a7, 597f
592:              ori          s1, a7, -880
593:              addi         t3, t1, 910
                  xor          t4, t0, s1
                  andi         tp, t1, -1840
                  sll          zero, a4, t1
597:              sra          ra, s0, a0
                  andi         a5, t5, -1668
                  la           a1, region_0+332 #start riscv_load_store_rand_instr_stream_1
                  slli         s3, t4, 7
                  lb           s2, 200(a1)
                  lbu          s0, -94(a1)
                  lb           zero, 186(a1)
                  srai         ra, t2, 30
                  sw           tp, 44(a1)
                  sb           gp, -94(a1)
                  lb           s4, 40(a1)
                  sb           sp, 245(a1)
                  slti         t6, s5, 820
                  andi         t5, a1, -87
                  sb           t2, -183(a1)
                  sb           s0, -29(a1)
                  lbu          a0, 148(a1)
                  xori         gp, sp, -1815
                  sw           a1, -60(a1)
                  lb           a6, 87(a1)
                  add          s6, s6, a4
                  lhu          a0, 24(a1)
                  nop
                  andi         s7, s9, -303
                  sb           a2, -100(a1)
                  sw           a2, -80(a1)
                  lui          s3, 706465
                  lbu          s1, 13(a1)
                  lb           s0, 18(a1)
                  lhu          gp, -18(a1)
                  sltu         s1, t4, s8
                  lui          a5, 994534
                  lb           s10, -72(a1)
                  lb           t5, -37(a1)
                  srl          tp, t5, t1
                  lw           a7, 96(a1)
                  lb           ra, 199(a1)
                  xori         a2, t5, 1758
                  sll          tp, s3, s10
                  sb           t2, -202(a1)
                  addi         s6, a4, -988
                  lh           a7, 66(a1)
                  sb           t2, 89(a1)
                  sub          t5, s8, zero
                  srai         tp, s3, 19
                  sb           gp, 115(a1)
                  lb           zero, -95(a1) #end riscv_load_store_rand_instr_stream_1
                  xori         s3, s5, 891
                  bge          gp, tp, 613f
                  and          s0, t6, a4
                  add          t2, gp, gp
                  xori         t5, a3, 1302
                  andi         t4, s11, 608
                  andi         a0, t1, 295
                  andi         t2, sp, 940
                  andi         s9, a0, 673
                  srl          ra, s11, t0
                  ori          a6, t2, -672
                  auipc        t0, 631978
                  slt          t5, t0, t5
                  srli         t2, tp, 20
613:              sll          s4, s3, s6
                  lui          t4, 213780
                  lui          gp, 467347
                  srl          s7, t4, s0
                  sltu         t6, t6, a3
                  blt          t0, ra, 637f
                  or           a2, s5, t2
                  or           t6, a3, t1
                  srl          a1, a2, sp
                  sub          s9, s5, s3
                  ori          a3, t0, 1161
                  sltu         a1, t0, t2
                  or           s10, s7, a6
                  srl          ra, t1, t6
                  bltu         s0, s7, 646f
                  nop
                  sra          t0, s2, t3
                  addi         a5, s9, -54
                  and          s10, t6, t5
                  ori          s1, s8, -1780
                  bge          a6, s5, 640f
                  bltu         gp, t1, 647f
                  nop
                  or           s10, t2, s8
637:              add          t6, s6, a1
                  blt          t5, a6, 650f
                  auipc        s1, 440409
640:              blt          a7, s11, 649f
                  srli         zero, s4, 27
                  sra          s9, s9, s1
                  sltu         ra, a1, s5
                  sra          gp, gp, s11
                  add          t5, t0, t0
646:              sub          s8, s3, s4
647:              bgeu         tp, s5, 655f
                  and          t0, s10, t6
649:              xori         sp, s1, 760
650:              sltiu        s1, a0, -1134
                  bne          s8, a6, 664f
                  nop
                  srai         t3, a3, 4
                  ori          s3, a3, -1564
655:              srai         s2, s3, 11
                  lui          s7, 666258
                  sll          t3, a1, s10
                  slti         t3, s5, 187
                  andi         t0, s8, -1102
                  sltiu        a2, s2, -243
                  srai         gp, s8, 24
                  sra          s11, gp, gp
                  sub          sp, s0, s6
664:              sltu         a1, s5, s6
                  sltiu        s4, s1, 659
                  ori          s0, zero, -1251
                  slli         sp, sp, 28
                  xori         s9, tp, 1030
                  slti         s2, a2, 1037
                  bgeu         a1, s3, 675f
                  lui          s2, 353084
                  srai         s10, s5, 18
                  slti         t2, zero, -1040
                  bltu         t1, sp, 693f
675:              bgeu         t1, ra, 681f
                  lui          a0, 234028
                  ori          ra, s8, 2015
                  bne          tp, ra, 680f
                  auipc        s9, 383967
680:              xori         s3, s10, 1600
681:              slti         t4, s3, 987
                  ori          sp, a6, 92
                  or           a5, s6, a1
                  sra          s9, a6, t1
                  beq          s4, a1, 695f
                  ori          a2, a3, -1824
                  slt          s7, tp, t2
                  bltu         s0, a3, 707f
                  auipc        t4, 836498
                  or           s8, a1, t0
                  or           t4, s6, s7
                  or           gp, s6, s7
693:              lui          t5, 505491
                  xori         sp, t1, 730
695:              andi         s4, a7, -895
                  bgeu         a1, ra, 714f
                  addi         ra, a2, -1986
                  srai         ra, a4, 2
                  bge          s4, t5, 703f
                  bltu         s6, t1, 714f
                  addi         ra, tp, 350
                  bgeu         t6, zero, 716f
703:              sub          a3, a0, s6
                  bge          s2, ra, 706f
                  bltu         s8, a6, 707f
706:              slli         s7, s4, 18
707:              or           ra, s11, a4
                  lui          s9, 652736
                  ori          t2, ra, 453
                  bltu         s10, zero, 712f
                  ori          s9, a1, 588
712:              addi         s7, a3, -437
                  bne          a0, s8, 729f
714:              auipc        t5, 875229
                  bge          zero, a7, 721f
716:              ori          a7, ra, -232
                  slli         t3, s8, 0
                  andi         a3, sp, 274
                  bltu         t6, ra, 733f
                  bge          t1, tp, 730f
721:              beq          s10, t0, 723f
                  sltu         s0, t0, s0
723:              slti         s2, t2, 113
                  srl          t0, t6, s3
                  slti         s4, s2, -687
                  bge          a2, s10, 735f
                  nop
                  srli         a2, t2, 15
729:              sll          a2, s9, s0
730:              bgeu         tp, gp, 736f
                  add          a5, ra, a1
                  ori          s9, t3, -161
733:              beq          t2, t1, 743f
                  srl          s9, a5, s10
735:              auipc        t3, 275102
736:              add          s3, zero, s2
                  ori          s10, a2, -461
                  srl          s4, s1, t5
                  lui          a5, 451657
                  slt          s2, s8, t2
                  lui          t5, 922052
                  nop
743:              or           s3, a0, s11
                  blt          tp, s9, 756f
                  nop
                  sltiu        t2, a5, 156
                  srai         s1, a2, 18
                  add          a0, a1, t6
                  srai         a3, a0, 8
                  sra          s10, zero, a0
                  beq          t3, a3, 755f
                  srai         s6, gp, 30
                  slli         a7, s10, 25
                  sra          ra, a4, t1
755:              bne          sp, gp, 769f
756:              bne          a0, tp, 758f
                  slti         s7, t3, 235
758:              bltu         a5, s0, 764f
                  xori         ra, s2, 1764
                  sltu         t2, s4, s5
                  beq          s6, a7, 769f
                  sra          s10, t0, a7
                  add          a3, s6, t6
764:              srli         s9, a3, 21
                  blt          t0, s4, 784f
                  xori         s9, a3, 522
                  sub          s7, a4, sp
                  slt          s4, ra, s3
769:              and          s2, a3, a7
                  sra          a2, s11, gp
                  slli         s4, a3, 6
                  blt          t5, t0, 779f
                  auipc        a0, 4075
                  slt          s8, t1, t2
                  addi         s11, t0, 155
                  bgeu         ra, sp, 795f
                  srai         a6, s3, 12
                  or           a7, s11, s7
779:              lui          s6, 767424
                  and          zero, s2, a3
                  addi         a5, s5, 1099
                  auipc        s10, 635686
                  slli         a2, t6, 29
784:              srli         a2, s8, 1
                  xori         s8, s4, 905
                  and          a7, t1, a6
                  ori          t2, s8, 1591
                  blt          tp, s6, 797f
                  or           a2, a6, s7
                  slli         a0, t3, 25
                  ori          s4, a5, -832
                  slli         s2, t1, 21
                  nop
                  or           s10, a5, t0
795:              sltiu        t2, s5, 707
                  addi         a2, a4, 824
797:              auipc        s9, 503350
                  slt          a7, s9, t0
                  sltu         a5, a1, a1
                  sub          a5, gp, t3
                  sra          zero, s6, s6
                  blt          a7, t0, 808f
                  sltu         t3, s9, t0
                  slli         a0, t2, 7
                  xor          a0, sp, gp
                  or           s0, a6, a2
                  slti         a2, s1, 895
808:              xori         s7, s0, 79
                  sltu         ra, t2, tp
                  and          s7, a5, a1
                  or           a1, t6, s7
                  bgeu         s11, a6, 828f
                  srai         s9, a6, 1
                  ori          t3, t5, -517
                  sub          a2, t6, s7
                  slli         a5, s1, 10
                  xori         s4, s0, 1882
                  bltu         a2, a6, 828f
                  bltu         s10, a2, 837f
                  andi         s4, zero, 1007
                  sltiu        s6, zero, 205
                  ori          sp, zero, 1966
                  beq          t2, tp, 832f
                  sltu         s6, s6, t2
                  srli         s1, t6, 5
                  bge          s5, s0, 845f
                  slt          t5, a6, s3
828:              auipc        sp, 45397
                  bne          t2, t2, 848f
                  andi         s4, s6, -1644
                  xori         t3, a1, 370
832:              add          t4, a1, s0
                  sub          sp, t1, s8
                  addi         t5, s4, -293
                  andi         s0, s0, 1013
                  bge          t1, s5, 849f
837:              and          tp, s3, s8
                  bge          a3, t0, 851f
                  sra          s10, ra, s11
                  srai         gp, sp, 13
                  slli         s0, s6, 5
                  sra          s3, t0, t4
                  and          t3, a4, t5
                  add          s11, s3, s4
845:              and          s7, s5, s8
                  bgeu         s10, s3, 851f
                  bge          t3, a7, 861f
848:              ori          tp, s8, -1420
849:              auipc        gp, 676766
                  addi         s11, a6, 355
851:              auipc        t4, 546637
                  andi         t0, s5, -334
                  slti         t2, a4, 912
                  sra          tp, s2, t2
                  sra          t6, s2, a0
                  bne          t1, t3, 869f
                  ori          t4, t0, -1417
                  blt          t4, tp, 860f
                  ori          s7, a4, -1838
860:              beq          t2, s5, 864f
861:              beq          a6, a7, 875f
                  srai         a7, s3, 12
                  sltiu        gp, a4, 922
864:              sub          a7, t3, a7
                  sub          t6, t1, ra
                  xor          t0, gp, t0
                  auipc        t4, 236984
                  xor          s11, t6, a1
869:              srli         t0, t3, 19
                  bne          s2, s7, 872f
                  slt          s4, s0, sp
872:              slli         s4, gp, 7
                  or           s8, t3, s2
                  sub          s11, a7, a0
875:              bgeu         a3, s10, 877f
                  bne          s2, a7, 878f
877:              bltu         gp, s5, 890f
878:              sra          t2, s4, sp
                  sltu         s6, a3, s10
                  slt          t3, t4, a2
                  auipc        s6, 704544
                  bltu         s6, t5, 889f
                  xori         s3, a2, -1014
                  srl          ra, s4, sp
                  or           a5, ra, ra
                  xor          s11, a1, s11
                  and          a5, a4, sp
                  srli         s0, s4, 1
889:              sltiu        a7, s6, -1035
890:              slt          a0, a7, t5
                  srl          s9, s7, ra
                  srli         sp, a6, 3
                  bgeu         s6, s6, 912f
                  sra          s0, s6, gp
                  or           t2, s5, s1
                  blt          sp, t5, 909f
                  lui          s2, 858226
                  srli         s10, a4, 2
                  bltu         a1, a7, 913f
                  slli         t2, s1, 11
                  sltiu        s10, t3, 919
                  slt          a5, ra, s10
                  slt          tp, s9, t0
                  add          ra, gp, a6
                  srai         t3, a7, 16
                  blt          s8, sp, 920f
                  ori          t5, a4, -363
                  bne          s1, a5, 914f
909:              bgeu         s6, gp, 911f
                  slli         s2, a6, 4
911:              ori          t6, t4, 592
912:              srl          s10, tp, t1
913:              blt          t2, a4, 926f
914:              srl          t4, s9, a1
                  add          t6, s10, s10
                  bge          t5, s9, 925f
                  srai         a0, t0, 5
                  xor          a6, s10, a5
                  blt          a7, zero, 929f
920:              addi         s10, tp, -1889
                  blt          tp, s2, 931f
                  bne          ra, t0, 926f
                  srli         s2, s11, 8
                  srl          gp, s11, s6
925:              ori          s1, s6, 340
926:              add          s2, s7, s8
                  or           s7, s1, s8
                  addi         s6, a1, 985
929:              add          t3, t2, a4
                  bne          ra, a5, 938f
931:              beq          s1, a6, 936f
                  sub          t5, a2, s11
                  bne          s10, s7, 951f
                  add          a0, t1, s0
                  srli         s9, gp, 0
936:              bne          a2, s1, 945f
                  sltu         t0, s10, t1
938:              srai         tp, t1, 22
                  sra          t6, s9, t6
                  bgeu         s0, s6, 942f
                  sub          s6, t3, s3
942:              srl          t5, s8, zero
                  nop
                  bgeu         s2, t6, 963f
945:              or           s4, s7, a1
                  srli         s6, s5, 16
                  bge          s1, t1, 953f
                  bge          gp, s9, 962f
                  srl          t0, s10, s5
                  lui          a2, 235817
951:              xori         a5, tp, -1459
                  sll          a3, a3, a2
953:              ori          a6, s8, -573
                  and          s11, s6, t1
                  srli         gp, s0, 21
                  beq          a4, s5, 958f
                  bltu         a2, s8, 963f
958:              slli         s0, t1, 24
                  bne          a6, a6, 978f
                  and          s8, s3, s0
                  srai         a2, a1, 26
962:              sltu         t5, a3, a1
963:              xor          a7, a6, s7
                  add          a0, s2, a3
                  srli         t2, t5, 6
                  slt          a7, s5, a5
                  srai         s8, s4, 26
                  ori          s8, s0, 1613
                  nop
                  slti         t3, s2, -506
                  xor          t5, s1, s0
                  bne          s5, a4, 976f
                  bne          s11, t3, 989f
                  sra          a2, a0, ra
                  bgeu         sp, s8, 977f
976:              add          a6, s3, s2
977:              and          t5, t5, s11
978:              lui          s11, 696304
                  slti         a3, a2, -978
                  xori         a6, a4, -671
                  blt          t3, t0, 993f
                  slli         a6, tp, 17
                  slli         a6, ra, 6
                  slli         s3, tp, 7
                  sra          ra, a6, s10
                  srai         a3, a7, 14
                  sub          s7, s6, s10
                  bltu         t5, s9, 1007f
989:              nop
                  xori         s6, tp, 1802
                  lui          s1, 397066
                  sra          gp, s11, s9
993:              srli         t0, s9, 24
                  blt          s1, s2, 996f
                  bne          t4, s10, 997f
996:              slli         a0, a3, 8
997:              andi         zero, t0, -984
                  auipc        a1, 688124
                  bgeu         t5, s10, 1001f
                  auipc        t5, 120118
1001:             and          s0, ra, t5
                  beq          s7, gp, 1011f
                  andi         t3, a0, -259
                  slli         a2, t2, 28
                  xori         sp, s2, -390
                  addi         s0, a3, -1492
1007:             sltu         a7, s4, t5
                  auipc        t0, 11106
                  beq          s3, t4, 1019f
                  sub          s2, t2, s10
1011:             xor          s2, t0, t2
                  sub          s2, zero, t0
                  sub          s2, s8, a0
                  and          a3, ra, s0
                  slt          s1, a4, zero
                  blt          t1, a2, 1020f
                  sll          a0, s11, t2
                  bltu         t6, a2, 1020f
1019:             sltu         a2, s1, ra
1020:             srai         s1, t6, 1
                  andi         s2, t0, 1052
                  sltu         s6, s7, a0
                  bne          s4, s5, 1025f
                  lui          a2, 553265
1025:             sltu         a5, a4, a2
                  slt          sp, a0, a3
                  slli         s7, s8, 28
                  beq          s4, a3, 1042f
                  blt          s0, ra, 1042f
                  bgeu         s1, t4, 1037f
                  bne          s9, s0, 1044f
                  bge          t0, a7, 1036f
                  srli         s2, gp, 22
                  xori         s8, s11, 120
                  andi         t2, a6, -413
1036:             andi         a1, s3, 1139
1037:             slt          t4, s5, s3
                  bge          zero, t1, 1048f
                  bltu         s5, a0, 1058f
                  sub          s7, t1, a0
                  auipc        t2, 851062
1042:             sltu         a6, a4, s6
                  bne          s4, s8, 1062f
1044:             sltu         t2, t2, s2
                  xor          a7, t2, t3
                  beq          s0, t1, 1052f
                  sub          t4, a2, s3
1048:             bltu         a2, s2, 1062f
                  xori         tp, gp, -1116
                  xori         s7, s0, 1178
                  blt          zero, s8, 1063f
1052:             bge          s1, s6, 1065f
                  srl          a5, a6, t2
                  srl          a6, t3, t0
                  andi         a1, t6, -153
                  addi         t0, t0, 612
                  slt          s3, s1, a6
1058:             blt          a0, t4, 1060f
                  bgeu         t1, s4, 1075f
1060:             slli         a3, a1, 27
                  or           a5, s4, s10
1062:             srl          a2, zero, s0
1063:             and          s4, t4, a0
                  sra          t4, tp, s2
1065:             andi         s1, s4, 1017
                  addi         s9, t5, -299
                  xor          a6, s4, a1
                  addi         a5, s11, 638
                  sltu         t4, s0, ra
                  srai         a2, a5, 4
                  sub          s3, zero, s0
                  sll          a6, t3, s1
                  or           s7, s11, a5
                  slti         s9, a7, -1702
1075:             xor          gp, s6, a4
                  slli         t5, a2, 16
                  sll          a6, t2, sp
                  sltu         a3, a4, t1
                  add          ra, a2, a5
                  xor          a5, t2, a3
                  nop
                  sra          t0, s1, t3
                  lui          s0, 261113
                  blt          s8, zero, 1089f
                  bgeu         a2, a1, 1091f
                  lui          a1, 909725
                  xor          s7, a3, tp
                  slt          zero, s8, gp
1089:             xor          s3, t1, a0
                  bgeu         s2, s6, 1096f
1091:             addi         s8, t5, -685
                  beq          t4, a1, 1100f
                  slli         t3, t0, 20
                  slt          t2, s6, s5
                  bge          a0, s0, 1114f
1096:             sra          t5, sp, s2
                  bne          t4, tp, 1116f
                  srl          s7, a4, ra
                  add          a6, s2, zero
1100:             or           s10, a4, tp
                  add          t3, t5, s9
                  xori         sp, a7, 1526
                  andi         sp, s3, -1396
                  slt          s10, s4, a5
                  srl          t2, s2, s11
                  nop
                  or           s0, t6, s4
                  sra          t0, t1, s11
                  slli         a2, t4, 2
                  sll          t0, s8, s4
                  lui          a0, 188961
                  bge          zero, s7, 1126f
                  or           s1, zero, ra
1114:             srli         tp, t6, 5
                  slli         a6, ra, 23
1116:             ori          t2, t0, 1132
                  andi         t3, s11, -151
                  srai         s3, t3, 16
                  addi         ra, s8, 1655
                  sub          s1, t6, s11
                  slli         s8, t0, 18
                  and          s7, ra, a7
                  slti         s10, a1, 1666
                  xori         t2, s8, -87
                  sltu         t6, a4, s5
1126:             bne          s6, sp, 1144f
                  add          tp, a1, t0
                  or           a6, s7, t1
                  addi         t4, s1, -482
                  slti         s11, s10, -872
                  ori          s3, a3, 773
                  nop
                  add          s9, s2, ra
                  bltu         t4, s3, 1143f
                  srl          s4, s8, tp
                  bgeu         s11, a2, 1155f
                  srl          t0, a7, tp
                  and          t5, t5, t1
                  xori         s0, s3, -2045
                  slt          s10, t5, t5
                  sra          tp, sp, a6
                  bne          a2, t5, 1155f
1143:             add          s7, s9, ra
1144:             add          t5, a0, t3
                  beq          t2, t5, 1151f
                  auipc        t0, 609267
                  xori         t5, a2, 1970
                  slti         s8, s9, -243
                  auipc        ra, 575026
                  bne          a4, t1, 1168f
1151:             blt          a1, s11, 1157f
                  lui          s8, 105862
                  beq          a7, ra, 1155f
                  nop
1155:             blt          t4, zero, 1157f
                  ori          a3, t3, 1328
1157:             sll          s7, s7, s1
                  srli         t2, s2, 10
                  xor          s1, s11, a7
                  sub          s8, s10, a3
                  srli         s1, s6, 26
                  add          s2, s5, a6
                  sll          t6, s8, a7
                  or           a5, a5, s0
                  bgeu         t2, s9, 1184f
                  xori         s11, s11, -134
                  and          a2, t0, gp
1168:             slti         a0, s4, 1604
                  slti         t4, s0, -898
                  bne          a5, t2, 1175f
                  xor          t0, s2, s9
                  slli         tp, a4, 3
                  slti         s11, s4, -1978
                  slli         a7, s10, 7
1175:             slli         sp, a5, 5
                  auipc        a2, 157220
                  lui          a6, 556698
                  andi         gp, sp, -914
                  sra          a6, sp, t5
                  blt          a3, a5, 1182f
                  blt          a4, a1, 1190f
1182:             lui          ra, 198007
                  sltiu        s9, t2, -664
1184:             sltiu        t5, a4, 1341
                  slt          zero, s0, a0
                  lui          a2, 935428
                  lui          s7, 734201
                  bltu         a6, t2, 1207f
                  bne          s2, a2, 1199f
1190:             slli         a6, s11, 9
                  ori          t2, sp, 122
                  bltu         s2, s7, 1211f
                  andi         a5, t0, -1762
                  sub          s9, ra, s8
                  bgeu         ra, s4, 1207f
                  xori         s0, t3, -1862
                  andi         s10, a3, -632
                  sltu         t3, a6, a5
1199:             nop
                  slli         t5, t2, 0
                  blt          s4, t6, 1211f
                  lui          t2, 266774
                  bltu         sp, s10, 1217f
                  addi         s8, zero, -911
                  sltu         a2, s8, s0
                  xori         t6, tp, -1214
1207:             xori         a2, ra, 249
                  blt          zero, a0, 1216f
                  bltu         gp, s4, 1215f
                  slti         a6, s0, -1007
1211:             sltu         s11, t1, s2
                  bltu         t2, a5, 1226f
                  srl          s2, a3, ra
                  addi         s2, gp, 2043
1215:             lui          a7, 526580
1216:             sll          s8, a7, s4
1217:             sra          a3, t3, t4
                  bge          tp, t0, 1231f
                  nop
                  sltiu        s8, gp, -1600
                  slli         t4, t6, 7
                  bgeu         s1, t1, 1226f
                  sra          s10, t5, s4
                  srli         s11, s7, 12
                  and          s7, a4, t1
1226:             blt          s5, a2, 1230f
                  add          t0, ra, a2
                  srli         s8, s10, 2
                  slti         s4, a6, -1159
1230:             srl          s4, s1, s0
1231:             or           t3, t0, t1
                  bne          t6, a0, 1246f
                  or           s8, a6, s1
                  sltiu        ra, t5, -1133
                  bne          s9, a1, 1244f
                  slli         t3, t1, 16
                  srli         s3, s7, 25
                  slli         t0, t0, 13
                  sra          ra, a2, a6
                  srl          s4, a5, s8
                  bne          t6, s2, 1248f
                  slti         s4, s6, -1096
                  lui          s4, 162133
1244:             beq          t2, gp, 1246f
                  bgeu         s11, s10, 1258f
1246:             srli         t0, s10, 14
                  andi         a5, a3, 387
1248:             auipc        s7, 845247
                  add          t2, gp, a4
                  srl          t0, t6, a4
                  blt          s9, s10, 1253f
                  and          t4, s3, a5
1253:             add          s6, sp, zero
                  ori          s0, t5, -550
                  slli         s2, t3, 5
                  sra          a0, t1, s7
                  slti         t6, a3, 1910
1258:             slli         a6, t2, 18
                  slti         s6, tp, -1081
                  lui          a6, 131091
                  bltu         t5, s1, 1277f
                  sltiu        sp, a3, 1712
                  blt          a0, a5, 1277f
                  ori          s9, a4, 1404
                  lui          a0, 350539
                  addi         t0, gp, -1261
                  slt          s6, s0, s9
                  slti         t3, t3, 1985
                  sra          tp, sp, a7
                  ori          ra, s7, -1777
                  sltu         t2, a3, t0
                  bgeu         s3, s2, 1278f
                  sra          s7, a6, s3
                  slt          a3, s1, s8
                  sltiu        s6, s9, -697
                  bgeu         a2, t3, 1278f
1277:             srl          s1, t4, t4
1278:             bne          t5, s10, 1282f
                  sltiu        s3, s11, -1255
                  andi         s4, a2, 477
                  bne          zero, t6, 1287f
1282:             srli         a1, t6, 17
                  ori          s7, a2, 988
                  and          a3, s9, a1
                  or           t0, s5, s2
                  sll          t0, a3, zero
1287:             ori          t6, s3, -1331
                  sra          a3, a3, s3
                  bgeu         s3, a2, 1302f
                  bge          s2, gp, 1292f
                  or           t0, a6, a1
1292:             blt          s1, a7, 1304f
                  slt          gp, t6, s6
                  sra          t5, s5, s2
                  bgeu         a6, t1, 1311f
                  bgeu         t4, s3, 1315f
                  bgeu         t5, t1, 1311f
                  andi         a1, s5, -700
                  bge          s1, a2, 1301f
                  and          a7, a0, a4
1301:             bne          t0, t1, 1308f
1302:             nop
                  sltiu        s8, a3, -1884
1304:             xori         s6, s9, 1608
                  sltu         t4, s11, t3
                  add          a0, s7, t4
                  slti         zero, s10, 1256
1308:             add          a6, s10, s9
                  slt          a0, a6, a4
                  nop
1311:             add          t2, a4, a4
                  blt          t6, tp, 1317f
                  srli         s7, a2, 27
                  slti         t4, a2, 304
1315:             add          zero, a4, a4
                  or           t5, a6, s1
1317:             nop
                  srai         a1, s3, 20
                  add          t6, t3, ra
                  sll          t4, t1, a6
                  ori          zero, ra, 1636
                  srai         a6, s0, 9
                  add          zero, s10, s9
                  slti         a0, s6, -206
                  add          s1, t3, a0
                  and          s10, a5, sp
                  beq          s6, gp, 1341f
                  beq          ra, t2, 1347f
                  slt          t2, s5, s7
                  ori          s10, a4, 1138
                  beq          s8, s8, 1340f
                  sll          s10, s10, s0
                  auipc        s8, 96907
                  srai         zero, t6, 13
                  and          s3, s8, s4
                  or           gp, gp, s5
                  sltiu        s7, a1, -709
                  srl          s9, s2, s4
                  xori         s0, t1, -429
1340:             xori         t4, t0, -121
1341:             bge          ra, a3, 1351f
                  srl          s1, t1, s7
                  bgeu         s1, t4, 1362f
                  sub          t0, s5, s9
                  ori          a5, a2, -441
                  add          ra, tp, a2
1347:             slt          zero, s7, s6
                  auipc        s6, 655870
                  addi         a1, s1, -1134
                  srl          s10, s3, a6
1351:             sltiu        t4, s7, 1001
                  srai         s9, t5, 14
                  sll          s11, tp, a0
                  xori         s10, s10, -65
                  slli         s10, ra, 23
                  la           s10, region_0+1759 #start riscv_load_store_rand_instr_stream_4
                  lh           a2, -1239(s10)
                  sltu         tp, t1, s8
                  lbu          s11, -778(s10)
                  sub          s9, a4, t0
                  sh           gp, 45(s10)
                  slt          ra, t5, s0
                  nop
                  lh           a2, -1029(s10)
                  slti         t2, s6, -593
                  lb           t5, -1361(s10)
                  lbu          s9, -1305(s10)
                  sltiu        t4, a3, 270
                  nop
                  add          t5, s5, gp
                  slti         a5, t5, 1733
                  lui          ra, 1040426
                  lbu          s6, 76(s10)
                  slt          s7, s2, a3
                  xori         s7, s6, -51
                  lh           a5, -1549(s10)
                  sb           s0, -1086(s10)
                  andi         s8, a0, -1250
                  slti         sp, a4, -518
                  sll          s1, t1, s6
                  lb           a7, -237(s10)
                  lb           t3, 86(s10)
                  lui          t5, 504527
                  lui          a7, 614045
                  lbu          a5, -1271(s10)
                  lb           t2, -584(s10)
                  andi         a1, a5, -1179
                  sb           gp, -1291(s10)
                  sltu         s11, s10, a7
                  slti         a2, s10, -542
                  srai         a2, t4, 11
                  sll          s9, s6, gp
                  sltiu        s7, t1, -42
                  add          a0, tp, s5
                  lbu          gp, 220(s10)
                  or           gp, sp, ra
                  sra          a6, s0, a4
                  lbu          a3, -376(s10)
                  lbu          t3, 216(s10)
                  sltiu        a5, s9, 1726
                  lb           s4, -1556(s10)
                  srai         t0, t6, 27
                  lb           a3, -558(s10)
                  addi         s11, t1, 992
                  sh           s10, -1697(s10) #end riscv_load_store_rand_instr_stream_4
                  or           t5, a7, ra
                  blt          a2, a5, 1359f
                  and          t4, sp, a6
1359:             bltu         a1, t3, 1378f
                  or           t2, a1, s5
                  sltu         a1, s11, a4
1362:             beq          a0, t0, 1375f
                  bltu         tp, a0, 1373f
                  srl          t4, s10, a6
                  add          s7, s9, a6
                  bne          a4, a0, 1379f
                  bne          t5, a4, 1375f
                  sltu         a0, ra, s4
                  sra          t6, gp, s2
                  slti         s3, t4, 1618
                  srai         a1, s1, 8
                  sub          t3, tp, t0
1373:             sll          t2, t5, s8
                  xor          s9, sp, a0
1375:             andi         a0, zero, 1501
                  ori          s10, t0, 2035
                  sra          a1, a7, s7
1378:             auipc        s8, 1013620
1379:             ori          a2, a3, -100
                  addi         a0, gp, 710
                  slt          a7, t5, t6
                  bltu         t6, s9, 1388f
                  slti         t6, gp, -1474
                  lui          t0, 323758
                  bltu         zero, zero, 1394f
                  sub          sp, s0, tp
                  slli         a0, s0, 9
1388:             sll          a0, s0, t0
                  sra          a2, s4, tp
                  nop
                  lui          s2, 413535
                  sub          gp, t1, s8
                  bltu         t5, s5, 1411f
1394:             nop
                  sub          s11, s0, a7
                  bge          s2, a0, 1400f
                  bltu         a2, a1, 1399f
                  xori         a5, s7, 1362
1399:             ori          t6, a2, 80
1400:             slti         s10, s8, 607
                  nop
                  srl          s1, sp, a3
                  sltu         s6, t6, s0
                  sll          t0, a1, t1
                  or           gp, s9, s3
                  sra          s0, t6, t6
                  andi         ra, s10, 823
                  slli         t6, s1, 6
                  slt          t3, zero, zero
                  bge          t4, t4, 1414f
1411:             add          s4, s10, s11
                  or           gp, ra, s8
                  ori          a5, a1, -173
1414:             srli         s10, s5, 25
                  auipc        s11, 24766
                  xor          sp, a4, s2
                  srai         s2, t6, 20
                  srli         s1, tp, 17
                  xor          a3, sp, t4
                  blt          a2, tp, 1422f
                  and          a0, s7, tp
1422:             sra          t5, gp, a1
                  srl          s11, s2, tp
                  sll          t5, s11, a7
                  srl          s7, tp, a1
                  sra          ra, s2, a2
                  srai         s8, s5, 20
                  srli         s7, a6, 2
                  srai         ra, s4, 2
                  srai         t4, a3, 22
                  bne          s7, a1, 1435f
                  bne          s10, s10, 1451f
                  bltu         s1, sp, 1451f
                  xori         a6, s4, -246
1435:             addi         a3, s9, 47
                  sltu         a0, t4, gp
                  beq          t6, t2, 1439f
                  beq          t4, ra, 1451f
1439:             sll          s7, t2, s10
                  slt          s8, a6, gp
                  srai         a6, s8, 9
                  ori          s8, s1, 1708
                  slli         s7, gp, 30
                  or           tp, a0, gp
                  srai         s4, t5, 23
                  slt          t4, a2, s9
                  sra          t3, s10, a0
                  and          t3, s7, s10
                  blt          s5, t0, 1451f
                  andi         t3, s11, -806
1451:             sll          a3, t6, s11
                  slt          a7, s11, sp
                  sltu         t0, gp, s5
                  blt          zero, s4, 1470f
                  xor          t6, s2, a4
                  sltu         s1, sp, s11
                  lui          s6, 560029
                  bne          s3, a1, 1472f
                  and          s9, a2, s4
                  nop
                  sra          a6, zero, t5
                  srli         s0, tp, 23
                  bltu         s9, s2, 1475f
                  xor          zero, s3, s6
                  bgeu         a4, s1, 1473f
                  slti         gp, s1, 1859
                  sra          s3, ra, a1
                  nop
                  xori         s0, s5, -1880
1470:             or           s9, t6, a4
                  slt          zero, s1, a7
1472:             add          gp, s4, s9
1473:             slt          a3, s6, a0
                  slt          s2, a5, t2
1475:             sltiu        t3, a2, 1131
                  auipc        gp, 157145
                  sltu         t3, s0, tp
                  slti         ra, a2, 1099
                  slt          s8, t3, s1
                  sra          t4, s1, s8
                  or           s2, s9, t0
                  blt          a3, s3, 1488f
                  sltiu        s6, a4, -214
                  addi         s8, a2, -151
                  ori          zero, a3, 123
                  la           a2, sub_2
                  addi         s8, s0, -965
                  ori          a5, zero, 214
                  addi         a2, a2, 98
                  andi         tp, gp, -731
                  bge          s11, t0, main_j3 #branch to jump instr
                  slt          s7, s5, s9
                  srl          t0, a7, s3
                  auipc        t4, 91699
main_j3:          jalr         ra, a2, -97 #jump main -> sub_2
                  lui          s10, 934850
                  sub          t4, t2, a4
                  beq          ra, s0, 1503f
1488:             andi         s7, t2, 1396
                  andi         tp, s4, 1790
                  bge          s1, s4, 1503f
                  slti         ra, t6, 1180
                  sltu         s9, s11, t3
                  addi         ra, t0, 1474
                  srai         a7, s8, 26
                  blt          t3, s1, 1503f
                  lui          t0, 929912
                  srl          s1, t6, s2
                  sltiu        s4, s4, 454
                  sltiu        s0, s5, 218
                  add          s11, s2, s11
                  or           s11, tp, a1
                  srl          s11, a0, s4
1503:             sra          a5, a0, s2
                  la x21, test_done
                  jalr x0, x21, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            bge          s0, s6, sub_2_stack_p
                  sll          a6, s8, t6
sub_2_stack_p:    addi         a4, a4, -28
                  or           s11, t3, a5
                  sub          t0, t0, s3
                  and          a7, zero, a6
                  sw           ra, 4(a4)
                  srli         s6, t3, 24
                  add          a7, a2, t6
                  auipc        zero, 597022
                  ori          t3, s2, 468
                  ori          a7, t1, -1240
                  ori          s9, a4, 77
                  and          a1, s3, s4
                  bgeu         s7, a1, sub_2_j5 #branch to jump instr
                  add          a7, s0, gp
                  addi         s2, zero, -305
                  addi         t4, a5, 1723
                  slti         s8, s4, -26
                  srli         s1, a6, 16
sub_2_j5:         jal          ra, sub_3 #jump sub_2 -> sub_3
                  nop
                  xori         s6, s4, -393
                  srai         ra, s2, 4
                  nop
                  or           sp, a7, s2
                  slti         a2, tp, -1589
sub_2_j6:         jal          ra, sub_4 #jump sub_2 -> sub_4
                  ori          a2, a4, -1465
                  sra          a5, s0, sp
                  slli         s10, s3, 1
                  slti         t3, a5, 1289
                  la           t4, sub_5
                  ori          s0, gp, 661
                  slt          t2, t1, gp
                  addi         t4, t4, 587
                  srl          t0, a1, tp
                  bge          a5, a0, sub_2_j7 #branch to jump instr
                  sub          ra, a3, a4
                  slt          a5, a0, a1
                  srli         s3, t6, 0
sub_2_j7:         jalr         ra, t4, -587 #jump sub_2 -> sub_5
                  la           sp, region_0+469 #start riscv_load_store_rand_instr_stream_0
                  sub          s7, t4, s8
                  sltu         s2, s2, a0
                  srl          gp, s10, gp
                  sh           s6, -241(sp)
                  sb           s9, -190(sp)
                  sra          gp, a5, s8
                  lw           a0, -153(sp)
                  lbu          a7, 16(sp)
                  or           a7, s6, a2
                  lb           zero, 89(sp)
                  lbu          s0, -47(sp)
                  sll          t3, s6, s9
                  lbu          a0, 125(sp)
                  lbu          zero, 178(sp)
                  lb           zero, 151(sp)
                  sb           s5, 107(sp)
                  slti         s8, a1, -1204
                  sw           a1, 47(sp)
                  lw           zero, -17(sp)
                  lbu          t2, 131(sp)
                  lbu          s7, 242(sp)
                  sb           s3, -175(sp)
                  lh           t5, 75(sp)
                  lb           a7, -56(sp)
                  srai         t5, s8, 16
                  lbu          gp, 138(sp)
                  addi         a5, s9, -1309
                  lh           t2, -105(sp)
                  lb           s2, -67(sp)
                  sb           s9, 40(sp)
                  lb           a6, -110(sp)
                  sw           a3, -57(sp)
                  sb           s1, -174(sp)
                  lw           ra, 23(sp)
                  and          t0, s1, t1
                  lb           s10, 184(sp)
                  lb           a3, 4(sp)
                  lbu          s1, 160(sp)
                  lb           s2, -227(sp) #end riscv_load_store_rand_instr_stream_0
                  bgeu         a4, a5, 17f
                  bge          a4, s8, 17f
                  slli         s4, t6, 22
                  bne          a7, s4, 16f
                  slt          s0, s9, s7
                  slt          a6, t3, gp
                  nop
                  xor          ra, sp, a2
                  sra          s4, a5, s7
                  ori          t4, s9, 1862
                  sub          s4, a2, s5
                  sltiu        s4, zero, 1052
                  lui          s9, 629110
                  bgeu         t4, a3, 32f
                  sra          a3, gp, a7
                  srl          s9, t1, tp
16:               xor          s6, s4, a1
17:               nop
                  beq          gp, ra, 36f
                  srl          a3, s9, a3
                  sll          s3, s5, a6
                  addi         ra, a3, -432
                  beq          a4, s2, 32f
                  sltiu        zero, s3, 249
                  xori         s2, s9, -604
                  srai         a7, s9, 13
                  bne          s0, a4, 43f
                  slt          t3, s9, a7
                  addi         zero, a5, -283
                  sub          t3, a0, s8
                  lui          s3, 412525
                  sub          a2, a6, a4
32:               bne          a4, a1, 36f
                  xor          t0, ra, t0
                  lui          s8, 636390
                  or           ra, a0, s4
36:               nop
                  sltu         s9, sp, a2
                  bgeu         a0, a7, 57f
                  slli         t5, a3, 7
                  srli         t2, s11, 5
                  sub          a3, t1, s1
                  auipc        t0, 865215
43:               srai         s10, a0, 24
                  bge          t5, zero, 62f
                  srl          a5, tp, a2
                  srli         s10, s3, 1
                  bltu         a7, a2, 60f
                  addi         s7, t2, 673
                  slli         t2, s4, 27
                  auipc        s3, 222301
                  srl          s6, a0, a3
                  sltu         sp, s3, sp
                  beq          gp, a3, 72f
                  or           s10, t3, s8
                  addi         ra, t0, 780
                  ori          a3, s10, 1419
57:               and          a7, s0, t2
                  bgeu         gp, s3, 66f
                  bltu         tp, tp, 66f
60:               sra          ra, tp, t0
                  nop
62:               slli         s9, t5, 3
                  or           zero, zero, a5
                  nop
                  bgeu         t5, ra, 78f
66:               blt          s7, s5, 67f
67:               andi         s9, s9, -661
                  bge          s4, s0, 87f
                  sltiu        s11, s4, -79
                  addi         s6, t6, 317
                  lui          t4, 900214
72:               srli         s11, zero, 10
                  auipc        s3, 360692
                  addi         a6, ra, -168
                  add          s9, a1, a4
                  add          s0, t4, t5
                  slti         s8, s8, 1266
78:               bne          s10, a5, 96f
                  or           s2, t3, t0
                  sub          ra, a5, s10
                  lui          t0, 18627
                  beq          s7, a3, 95f
                  auipc        a3, 605573
                  sll          s3, s5, ra
                  srl          gp, s3, a7
                  bgeu         a7, ra, 89f
87:               add          s0, gp, tp
                  beq          sp, s3, 91f
89:               or           zero, s4, a1
                  and          a5, a1, s6
91:               sll          s2, zero, s2
                  or           sp, a7, tp
                  xori         s11, s10, 297
                  blt          s5, t2, 114f
95:               bne          s9, s7, 112f
96:               bge          zero, gp, 116f
                  slli         a6, s3, 9
                  slti         t3, a5, 229
                  blt          t6, t3, 100f
100:              srai         s2, t2, 15
                  srl          a6, a2, a4
                  or           ra, t6, s4
                  nop
                  slti         a5, sp, -1569
                  bgeu         s2, a7, 114f
                  slti         s1, t3, -1353
                  bgeu         zero, a1, 113f
                  and          tp, t4, t5
                  blt          a3, s10, 113f
                  sltiu        a5, s1, -462
                  slti         s3, s7, -977
112:              slli         s0, a1, 3
113:              or           sp, a4, a2
114:              bge          ra, tp, 123f
                  srli         ra, s5, 20
116:              sltiu        t3, s8, -1913
                  xor          s7, s8, ra
                  srli         a3, s2, 15
                  srl          s10, zero, s3
                  nop
                  slt          a7, a1, t3
                  srli         s4, s2, 10
123:              xori         s10, s0, 1463
                  bgeu         zero, s7, 133f
                  xori         a3, a6, 1158
                  bltu         t2, a7, 133f
                  bne          t4, sp, 133f
                  srl          s9, t1, a2
                  ori          s2, t2, 1635
                  nop
                  sltu         s10, a1, sp
                  srl          a7, s4, s9
133:              andi         a6, a7, -13
                  slli         a7, s1, 24
                  lw           ra, 4(a4)
                  srai         gp, s0, 0
                  addi         a4, a4, 28
                  add          t3, s6, t3
                  or           gp, t4, t5
222:              addi x1, x1, 1
222:              jalr x1, x1, 0
sub_3:            srli         a0, s5, 10
                  sltiu        t2, a4, -1993
                  addi         a4, a4, -64
                  slt          s9, a7, ra
                  and          a0, a7, gp
                  sub          s10, a7, t6
                  ori          zero, s0, 1029
                  slti         t3, a5, -1509
                  sw           ra, 4(a4)
                  sltu         s6, tp, s7
                  andi         a3, s6, 226
                  xor          s9, s2, s8
                  sltiu        t6, s3, 964
                  la           ra, sub_6
                  srai         a0, a2, 30
                  addi         ra, ra, -993
                  xor          a2, ra, ra
sub_3_j8:         jalr         ra, ra, 993 #jump sub_3 -> sub_6
                  bltu         a2, a3, 12f
                  bltu         s4, a0, 3f
                  bge          a4, s7, 22f
3:                lui          tp, 216143
                  ori          t2, ra, 2002
                  ori          tp, zero, -1213
                  ori          t4, s11, -646
                  sltu         a2, t6, t6
                  bltu         tp, s5, 11f
                  bltu         s10, a2, 28f
                  sub          a6, s8, t3
11:               add          t4, s1, s9
12:               xori         t2, ra, -1655
                  bltu         s2, a4, 28f
                  srli         a7, ra, 22
                  sltu         tp, t4, a3
                  sltiu        t0, s8, -2017
                  bne          s4, a2, 27f
                  addi         sp, t1, 1119
                  srai         s9, s5, 29
                  sltu         a6, t3, tp
                  beq          a7, a2, 31f
22:               beq          s0, sp, 32f
                  andi         s2, s3, -1581
                  xor          s10, t5, a7
                  slti         a3, s5, -1646
                  bne          s1, s5, 30f
27:               xor          t2, tp, a5
28:               sltiu        t0, t0, -1617
                  and          a6, s6, s5
30:               xori         s1, a0, -934
31:               beq          tp, a5, 42f
32:               bgeu         s5, s0, 40f
                  xor          a0, t5, t5
                  sra          s2, s6, t1
                  bgeu         s11, t0, 41f
                  lui          s3, 918105
                  lui          t4, 726662
                  bge          s7, t2, 40f
                  lui          t6, 764767
40:               sra          sp, s11, a1
41:               bltu         t6, a6, 43f
42:               and          t3, t4, a5
43:               xori         a6, t0, -222
                  sltiu        s7, zero, 512
                  srl          s4, t2, a4
                  lw           ra, 4(a4)
                  addi         a4, a4, 64
                  sra          s4, s4, a4
                  srl          tp, a4, a0
68:               addi x23, x1, 1
68:               jalr x23, x23, 0
sub_9:            slt          a6, s9, t0
                  bge          s4, t1, sub_9_stack_p
                  or           s0, a0, s9
                  sub          tp, t1, tp
sub_9_stack_p:    addi         a4, a4, -12
                  nop
                  and          t3, t3, t3
                  xor          a1, s2, s0
                  sw           ra, 4(a4)
                  srai         tp, zero, 25
                  or           s4, a7, t0
                  la           sp, region_0+807 #start riscv_load_store_rand_instr_stream_4
                  lhu          gp, 11(sp)
                  sw           s8, 69(sp)
                  srai         s6, t3, 9
                  sll          s0, a1, t2
                  addi         t3, t2, -1128
                  and          gp, s6, t0
                  sra          s1, s10, tp
                  add          s10, ra, t3
                  lbu          t5, 172(sp)
                  srl          a5, t1, s6
                  lui          gp, 134021
                  lhu          t3, -55(sp)
                  xor          s3, s3, s3
                  lb           s9, -172(sp)
                  lb           s3, 43(sp)
                  add          s11, t0, a0
                  lh           ra, 165(sp)
                  lb           s10, -26(sp)
                  andi         s2, t0, -1510
                  lh           s9, -241(sp)
                  or           zero, s6, s6
                  lb           t3, -193(sp)
                  srl          s3, a4, t0
                  lbu          s4, 242(sp)
                  sw           s2, -39(sp)
                  xori         s7, a3, -1556
                  and          s2, s7, s8
                  sb           ra, -194(sp)
                  lbu          s2, 220(sp)
                  lw           t4, -7(sp)
                  lb           s1, 128(sp)
                  lh           s1, 73(sp)
                  lb           t6, 212(sp)
                  add          s11, a6, gp
                  lbu          a0, -167(sp)
                  sb           ra, -160(sp)
                  add          s8, s11, s6
                  slli         a5, sp, 6
                  lb           t4, 75(sp)
                  srl          s0, t0, s5
                  and          a3, zero, a0
                  xori         s10, ra, -543
                  lb           zero, -34(sp) #end riscv_load_store_rand_instr_stream_4
                  la           a6, region_1+690 #start riscv_load_store_rand_instr_stream_5
                  slt          a0, sp, s0
                  sb           s9, 318(a6)
                  slt          t6, s8, a3
                  sll          s1, t5, ra
                  sh           a0, -434(a6)
                  lhu          s2, -238(a6)
                  sb           t2, 503(a6)
                  lui          a2, 919748
                  ori          gp, a3, -1000
                  lhu          s6, 650(a6)
                  lui          s3, 482460
                  srl          t4, s5, ra
                  slt          s7, a2, s3
                  add          s7, s2, a1
                  lb           s1, -657(a6)
                  srai         s7, t6, 22
                  sh           t6, 1202(a6)
                  slti         a5, s5, 8
                  sb           t0, 1128(a6)
                  sb           a6, 693(a6)
                  lui          t4, 634919
                  lbu          a5, 456(a6)
                  sh           a1, 894(a6)
                  or           s9, s11, t6
                  ori          t3, s11, 2015
                  auipc        s1, 45910
                  sb           s6, 700(a6)
                  lb           t0, 1235(a6)
                  lh           s3, 544(a6)
                  srl          t4, gp, a5
                  lhu          sp, 1036(a6)
                  andi         a3, a0, 1415
                  xor          t5, s5, t3
                  sll          a0, a4, s4
                  auipc        a7, 816157
                  lh           a0, -360(a6)
                  or           s8, s6, a7
                  addi         a1, t3, 430
                  sh           s11, 770(a6)
                  sll          t2, a4, s11
                  sltu         a3, s7, gp
                  sb           a6, 1277(a6)
                  srl          t5, a2, sp
                  sub          s3, a1, s7
                  andi         a5, t3, -421
                  sub          t4, s2, s4
                  lb           zero, 858(a6)
                  lbu          a3, -203(a6)
                  sub          s3, s9, s11
                  and          sp, t0, s10
                  lbu          ra, 748(a6)
                  lb           ra, 768(a6) #end riscv_load_store_rand_instr_stream_5
                  la           a2, region_0+1305 #start riscv_load_store_rand_instr_stream_7
                  and          s1, t3, s11
                  slti         s8, a6, 948
                  lw           s1, -181(a2)
                  lui          a0, 798155
                  lb           s6, 68(a2)
                  lw           a3, -193(a2)
                  sra          zero, a1, sp
                  lbu          s8, 124(a2)
                  lbu          a3, -135(a2)
                  lbu          t0, 234(a2)
                  ori          s7, t5, 1404
                  slt          s4, a6, t3
                  lbu          t2, 86(a2)
                  lh           sp, -121(a2)
                  nop
                  sltiu        s8, t1, -127
                  andi         s2, a0, -1973
                  lb           t2, 178(a2)
                  lb           a3, -142(a2)
                  lb           s3, -122(a2)
                  lbu          a5, 224(a2)
                  add          ra, s2, s8
                  ori          s8, t3, 1205
                  addi         ra, t0, 520
                  lw           s3, 75(a2)
                  sra          tp, a1, s10
                  and          s2, ra, t1
                  lbu          t2, 163(a2)
                  lh           tp, 141(a2)
                  sb           a6, 95(a2)
                  or           sp, a0, t5
                  add          a3, a1, a2
                  srli         tp, t5, 3
                  slt          a6, s1, sp
                  lhu          a7, -225(a2)
                  slli         s0, s5, 20
                  xor          a1, s0, gp
                  sb           t1, 237(a2)
                  lbu          t2, 204(a2)
                  add          sp, s9, a6
                  lhu          sp, 189(a2)
                  ori          s6, s4, 1312
                  sb           s4, 132(a2)
                  sh           t1, 53(a2)
                  sltu         t5, s8, s10
                  lbu          s7, -95(a2) #end riscv_load_store_rand_instr_stream_7
                  la           a2, region_0+1949 #start riscv_load_store_rand_instr_stream_2
                  slli         s4, a3, 1
                  lb           t2, -300(a2)
                  ori          s0, a2, -555
                  auipc        s1, 333098
                  srli         s1, ra, 27
                  ori          s2, a4, -2001
                  xor          t2, a4, s4
                  lbu          t0, -324(a2)
                  and          s9, s2, s4
                  sra          ra, t3, t5
                  slt          a6, s3, a4
                  and          a6, a1, t0
                  ori          a1, s6, -1797
                  lui          ra, 96511
                  sb           a5, -1155(a2)
                  sltu         s3, a6, s9
                  lbu          t5, -1095(a2)
                  lhu          s7, -67(a2)
                  auipc        s3, 507391
                  lbu          a7, -804(a2)
                  sub          a6, a7, t2
                  xori         s2, a6, -406
                  or           t2, s6, ra
                  sb           a7, -251(a2)
                  sll          a3, zero, tp
                  lui          s3, 317105
                  srl          s4, a6, t2
                  lhu          s7, -1877(a2)
                  lw           a1, -1809(a2)
                  srli         s8, s8, 7
                  slt          s6, sp, s7
                  slti         t4, s4, 139
                  addi         s7, a7, -1232
                  add          s2, a5, t4
                  andi         sp, s7, -914
                  lb           ra, -747(a2) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_1+1481 #start riscv_load_store_rand_instr_stream_6
                  lbu          t3, -240(sp)
                  sra          a5, a6, s11
                  lb           a2, -167(sp)
                  lb           t5, 184(sp)
                  lui          s6, 249160
                  nop
                  sh           sp, 5(sp)
                  and          t4, s6, ra
                  sh           s6, 165(sp)
                  lb           s3, 110(sp)
                  slli         t4, sp, 16
                  sb           ra, -112(sp)
                  sb           t5, 66(sp)
                  sra          tp, a2, ra
                  slti         s0, s2, -167
                  and          s1, s5, s5
                  sra          tp, s3, t3
                  lbu          s1, -62(sp)
                  or           a0, a0, sp
                  sltiu        s10, ra, -1019
                  lh           t6, -39(sp)
                  lbu          s6, 130(sp)
                  lbu          t4, 88(sp)
                  lbu          s10, -236(sp)
                  sra          a0, t6, s9
                  xor          s8, s10, a1
                  lbu          s11, 30(sp)
                  lbu          ra, 180(sp)
                  sra          s4, gp, s0
                  sb           t0, -210(sp)
                  slli         a6, ra, 20
                  sh           s5, 245(sp)
                  slli         s4, s2, 0
                  lb           a5, 94(sp)
                  nop
                  sb           t2, 57(sp)
                  lb           t5, 198(sp)
                  lui          a5, 939013
                  lbu          s9, 122(sp)
                  lb           t0, -121(sp)
                  srl          a2, t6, t3
                  sub          t5, a2, a6
                  sh           s11, 95(sp)
                  sh           t4, -193(sp)
                  lhu          a7, 193(sp)
                  lbu          s1, 138(sp)
                  and          a0, s6, s1
                  sll          a5, ra, t5
                  lb           s1, -198(sp) #end riscv_load_store_rand_instr_stream_6
                  la           s6, region_0+86 #start riscv_load_store_rand_instr_stream_1
                  nop
                  lbu          s3, 33(s6)
                  sb           s4, 21(s6)
                  lui          s0, 598136
                  sb           zero, 5(s6)
                  lb           s11, -31(s6)
                  sh           a2, -52(s6)
                  sra          t4, t2, t2
                  sb           a6, 55(s6)
                  lb           s10, -25(s6)
                  sll          t2, s9, a1
                  lh           a1, -44(s6)
                  nop
                  sb           ra, 23(s6)
                  lbu          gp, -17(s6)
                  srli         t3, s9, 19
                  sub          a0, a4, a4
                  lbu          tp, 46(s6)
                  lbu          t3, -47(s6)
                  sb           a7, -24(s6)
                  lb           t2, 12(s6)
                  sb           s9, 35(s6)
                  nop
                  lh           a6, -24(s6)
                  slli         a7, a1, 30
                  lb           tp, -23(s6)
                  sb           s5, 27(s6)
                  lbu          s3, -53(s6)
                  srl          t0, a2, a2
                  lb           s8, 48(s6)
                  lbu          s9, 9(s6)
                  lb           s0, 45(s6)
                  lbu          t0, 37(s6)
                  sb           t0, -35(s6)
                  lb           t5, -55(s6)
                  lbu          t6, 24(s6)
                  lh           a2, 10(s6)
                  lw           s11, -2(s6)
                  sb           s8, -29(s6)
                  lh           s10, -48(s6) #end riscv_load_store_rand_instr_stream_1
                  auipc        t4, 674250
                  sll          s0, sp, tp
                  beq          a5, a7, 6f
                  slt          a3, a6, s5
                  ori          s0, s0, 1013
                  sll          t4, a7, a3
6:                ori          s10, s0, 1064
                  ori          t2, t5, -177
                  sll          s10, s5, s3
                  srli         tp, a0, 26
                  nop
                  nop
                  sltu         a2, s4, s10
                  slli         s0, s2, 21
                  sra          t3, s10, s8
                  xor          a3, s2, s2
                  or           a6, sp, a3
                  ori          s1, s5, 20
                  xori         t5, s8, -33
                  and          gp, a2, s11
                  blt          a0, ra, 25f
                  bgeu         s7, a3, 32f
                  addi         s10, t0, -1540
                  slti         a7, s2, 1918
                  bge          tp, t6, 34f
25:               slti         t3, ra, 1531
                  xori         a0, s2, -445
                  slti         a2, s11, -629
                  sra          tp, sp, t1
                  sltu         s2, t6, t3
                  xor          a5, a1, a4
                  ori          sp, a6, -1191
32:               srai         s10, t4, 26
                  sll          sp, s3, a4
34:               sltiu        a5, s1, -1499
                  srli         s6, s10, 27
                  lui          zero, 974143
                  add          s11, zero, sp
                  sub          t2, a7, zero
                  blt          s6, s2, 52f
                  slti         s9, s5, -1545
                  and          s8, a2, a4
                  xor          s3, s7, s0
                  bge          t1, s0, 58f
                  sll          s7, zero, t1
                  nop
                  lui          a6, 564654
                  bgeu         s9, s10, 53f
                  srli         t5, t1, 7
                  addi         s3, s10, -511
                  sll          s11, t4, a6
                  sra          s1, t1, t3
52:               auipc        s8, 338860
53:               srai         t2, s10, 9
                  andi         a6, a3, 835
                  and          a5, s7, sp
                  srli         ra, t1, 1
                  andi         s8, a2, -1317
58:               beq          s7, s9, 73f
                  beq          ra, a6, 61f
                  xor          s3, a2, t1
61:               beq          t3, a4, 67f
                  slt          ra, s5, s6
                  xori         tp, a4, -1190
                  slt          t4, t2, a2
                  sltu         tp, t6, a2
                  bltu         t5, a4, 72f
67:               xor          s7, a2, t1
                  bltu         a0, s8, 76f
                  srai         t0, a2, 23
                  sltiu        s2, s5, -669
                  nop
72:               andi         s1, a2, -1310
73:               slti         t6, s5, 250
                  addi         t3, a3, 928
                  lui          sp, 920413
76:               sra          s8, t5, gp
                  sra          s2, a7, a4
                  nop
                  slti         sp, zero, -756
                  add          gp, t0, s10
                  bge          s7, s5, 88f
                  andi         tp, t2, -917
                  beq          s3, t2, 98f
                  or           s3, a1, tp
                  andi         s1, tp, -489
                  bne          s5, tp, 95f
                  and          s11, a7, a2
88:               beq          sp, t4, 95f
                  ori          s4, t3, 19
                  slli         s11, s9, 4
                  addi         a0, a6, -746
                  andi         s7, s3, 1128
                  xor          tp, a1, a5
                  bltu         zero, a2, 95f
95:               addi         t4, a4, 1916
                  beq          t6, s6, 99f
                  slt          s0, a0, a7
98:               sltu         t6, sp, t3
99:               ori          s11, s11, -519
                  srai         s3, s6, 1
                  and          a3, s1, sp
                  andi         a1, s1, 1675
                  sra          s9, t3, t3
                  xori         tp, gp, 364
                  sltu         s1, s3, s4
                  bltu         s5, zero, 118f
                  andi         s8, s10, -2004
                  beq          t6, s5, 118f
                  bge          ra, ra, 127f
                  beq          t5, a2, 119f
                  addi         s3, s3, -145
                  blt          a4, s6, 117f
                  sll          s7, s5, t2
                  srai         sp, s0, 26
                  bge          a5, zero, 135f
                  xori         a7, a0, -1555
117:              nop
118:              sub          t0, zero, s6
119:              srli         t4, a0, 10
                  srl          s2, s9, s7
                  srli         a3, t0, 28
                  sltiu        t4, s8, 1902
                  sltiu        ra, a5, -1461
                  auipc        a6, 435488
                  slti         a6, a5, 1354
                  sltiu        t6, a3, 583
127:              or           t5, a0, a1
                  sll          t3, t0, a4
                  bgeu         tp, a1, 134f
                  bltu         s1, a6, 133f
                  sll          s2, sp, t3
                  sra          s8, zero, tp
133:              srli         a0, t4, 11
134:              xor          s9, t6, s8
135:              sltu         tp, t4, a3
                  andi         zero, s7, -254
                  bne          t1, zero, 144f
                  srl          s2, s9, tp
                  addi         s11, a7, 1385
                  auipc        zero, 925842
                  bltu         zero, s2, 153f
                  sltiu        t2, s2, 1575
                  nop
144:              sltiu        tp, tp, -1751
                  srli         s1, s9, 6
                  blt          s2, a4, 160f
                  bltu         s9, t2, 161f
                  ori          t6, a0, -1692
                  srli         a2, sp, 22
                  srai         a0, gp, 13
                  ori          a2, gp, 661
                  sltu         t5, zero, sp
153:              srli         s7, t6, 16
                  sra          s1, t6, a0
                  bltu         s7, a1, 162f
                  add          s0, t4, t4
                  bgeu         a6, t5, 167f
                  auipc        s9, 925898
                  sra          t6, a4, a4
160:              srai         a0, gp, 2
161:              slti         tp, s2, -1038
162:              srl          s6, a0, ra
                  auipc        zero, 738642
                  srl          sp, t0, t6
                  lui          a3, 986557
                  xori         s9, a5, -1267
167:              add          ra, t4, s7
                  ori          a7, gp, 651
                  bltu         tp, s2, 174f
                  xori         s4, t6, -865
                  bltu         s8, t3, 183f
                  ori          s4, t4, -1579
                  sra          zero, t4, s8
174:              add          s2, s8, s3
                  beq          s11, s8, 179f
                  slli         s7, s6, 22
                  sll          sp, t4, a6
                  blt          tp, a0, 185f
179:              slli         t3, s7, 5
                  slt          s7, sp, s2
                  sra          a1, a3, t6
                  addi         s7, s5, -1106
183:              beq          s9, t3, 186f
                  srli         a1, tp, 19
185:              bne          t5, t5, 190f
186:              nop
                  add          s10, a7, tp
                  bne          a3, t5, 197f
                  srl          s9, a5, a2
190:              srai         s11, s2, 17
                  blt          t6, s4, 206f
                  srli         s8, s6, 0
                  and          t2, a7, t0
                  sltu         s4, s10, t4
                  blt          s10, t5, 203f
                  slt          s2, a6, s11
197:              srai         s3, s9, 9
                  or           s8, t2, t5
                  ori          t0, a7, -1844
                  xori         s3, s7, 1796
                  xor          s9, s3, a4
                  sltu         a3, t1, s4
203:              or           s0, s11, t5
                  slli         s11, t6, 12
                  sra          t4, tp, a5
206:              slt          s10, s6, s11
                  slti         s1, a3, 885
                  slli         a1, a7, 21
                  slt          t5, a5, sp
                  sra          s1, s11, s7
                  sll          sp, s9, a2
                  ori          t2, t6, -1827
                  slt          t3, s10, s6
                  lui          s1, 241323
                  sltu         t2, t3, sp
                  beq          s5, t1, 230f
                  sltu         s3, s2, t5
                  auipc        s7, 267608
                  srl          t0, s6, zero
                  andi         s4, t2, -1440
                  slt          zero, s3, ra
                  or           s7, s10, a6
                  srl          a2, t3, s1
                  andi         a0, t3, -1088
                  add          a3, s9, a1
                  sltu         s8, s6, gp
                  slti         t0, a3, -1083
                  and          t3, gp, a3
                  addi         sp, a0, 324
230:              sltu         s1, sp, s4
                  srai         zero, a2, 17
                  sub          s8, a5, s10
                  bltu         sp, s9, 239f
                  slli         a7, s6, 29
                  slt          s10, s2, a0
                  or           s6, tp, t6
                  sltiu        t4, s7, -1792
                  slt          a3, s2, s8
239:              srli         s9, s11, 25
                  or           s4, t6, a3
                  blt          a2, a6, 250f
                  addi         s6, a2, -1574
                  sub          s9, s1, s8
                  or           gp, a7, s9
                  andi         a0, a5, -1196
                  beq          t1, s0, 249f
                  beq          gp, gp, 254f
                  sltu         s10, t6, s5
249:              add          tp, t3, s8
250:              sll          s2, t4, a5
                  add          s8, t6, s11
                  sltiu        a0, a1, -799
                  bltu         t5, tp, 266f
254:              srli         t6, t2, 5
                  sra          ra, zero, s8
                  slt          a0, a4, s6
                  srl          s6, a5, a0
                  srai         s3, gp, 17
                  bge          zero, tp, 273f
                  srli         t5, s8, 25
                  bne          s10, s11, 266f
                  addi         s0, a1, -1392
                  srai         s9, a1, 21
                  ori          ra, sp, -55
                  slti         a5, a3, 1561
266:              ori          s9, zero, -418
                  blt          t4, sp, 287f
                  sltiu        s3, s4, 748
                  andi         t2, a4, 1994
                  sll          t2, t4, ra
                  lui          zero, 704168
                  nop
273:              bltu         tp, t3, 279f
                  bgeu         a7, t1, 289f
                  sra          a0, s4, s9
                  sll          a1, t5, s6
                  blt          t6, a4, 279f
                  andi         a0, a0, -1502
279:              xor          a2, s6, a1
                  or           ra, sp, s5
                  xori         t3, s1, 1705
                  xori         s7, t5, 580
                  sltu         s6, s2, s5
                  nop
                  add          t3, gp, t1
                  sra          t2, a5, t1
287:              andi         s6, a2, 1323
                  or           s4, t5, t2
289:              addi         a6, a3, -1806
                  srl          a1, t0, a4
                  blt          s3, t1, 297f
                  sltiu        a6, a2, 1310
                  auipc        s11, 570747
                  beq          a4, s10, 305f
                  add          a6, a4, gp
                  slti         a7, t4, 1713
297:              srli         sp, s1, 30
                  addi         a2, s5, -1395
                  sll          t2, t4, s5
                  sltu         zero, a4, s9
                  bge          gp, s8, 313f
                  srli         s10, a7, 15
                  sra          s6, s4, s3
                  bgeu         s2, a3, 322f
305:              nop
                  slti         s9, s1, 782
                  sltu         t2, s6, zero
                  bge          s10, s5, 318f
                  sra          sp, s6, a2
                  ori          zero, a3, -390
                  xor          s1, a5, zero
                  or           t3, s6, s1
313:              add          s8, t3, a0
                  sll          s1, a7, a1
                  sll          s11, t6, s0
                  and          a2, gp, a1
                  auipc        sp, 339030
318:              srl          a2, s9, t6
                  auipc        t6, 630674
                  sltu         s0, sp, s4
                  blt          a6, a4, 336f
322:              xori         t2, s9, -709
                  and          a0, s4, s11
                  sub          s10, s8, s2
                  xor          s6, t0, t0
                  ori          a0, zero, -121
                  bltu         s6, gp, 328f
328:              blt          s4, s4, 342f
                  add          a0, s5, sp
                  and          zero, a5, a5
                  xor          s11, t4, s11
                  sltiu        t4, s1, -1326
                  ori          a1, zero, -423
                  and          s7, a7, s6
                  sll          s2, t5, s3
336:              xor          s4, t4, a5
                  blt          a1, s5, 342f
                  slti         s0, a7, -1431
                  bgeu         sp, a6, 359f
                  addi         a6, s8, -813
                  sub          t6, t1, ra
342:              srai         a2, tp, 24
                  nop
                  srai         a5, s6, 20
                  sub          s4, s5, a1
                  srli         s3, s8, 18
                  bne          a6, t0, 362f
                  slti         a1, t0, 1849
                  slti         a3, s4, -683
                  xori         s8, s8, 1751
                  and          s2, zero, a2
                  sltu         s10, a6, sp
                  addi         ra, t5, -1917
                  beq          s0, t1, 369f
                  auipc        gp, 65560
                  ori          sp, s7, 1280
                  or           s11, t3, sp
                  slt          t6, ra, t4
359:              bne          a0, s6, 373f
                  and          s4, s11, t0
                  and          a5, a5, s0
362:              srai         sp, t4, 18
                  slti         zero, s5, -1538
                  or           sp, a3, a1
                  auipc        s10, 773743
                  bgeu         s10, t0, 374f
                  xori         t3, s4, 852
                  addi         s7, a0, -1378
369:              bne          ra, ra, 387f
                  sltiu        a0, t4, 565
                  bge          gp, s3, 378f
                  sra          tp, s1, s8
373:              lui          a2, 298865
374:              and          t4, s1, s8
                  bge          s3, s8, 384f
                  blt          s4, t3, 380f
                  srli         s4, s0, 22
378:              sra          s7, gp, a3
                  bge          sp, s9, 392f
380:              add          t6, gp, s7
                  bne          s2, a3, 388f
                  and          s6, t6, s9
                  and          zero, a4, t4
384:              slli         s6, s5, 15
                  xor          a2, t5, s7
                  addi         s10, t4, 794
387:              nop
388:              xori         s10, a7, -434
                  xori         a1, s8, 874
                  ori          a5, sp, -352
                  xor          s0, t6, t2
392:              sub          a2, s3, sp
                  bge          a4, s0, 404f
                  sltiu        s0, s0, -1841
                  sltu         a2, t1, ra
                  slt          t2, s3, ra
                  la           sp, region_0+483 #start riscv_load_store_rand_instr_stream_3
                  sltu         t0, a4, tp
                  sb           sp, -4(sp)
                  slli         t0, s9, 20
                  sub          t3, t1, tp
                  sll          s4, a4, s9
                  sltu         s3, t4, a4
                  lbu          zero, -8(sp)
                  andi         t6, a7, -2036
                  lbu          a6, 14(sp)
                  sb           a2, 4(sp)
                  lhu          s6, -15(sp)
                  srli         t6, s8, 9
                  sb           s0, -14(sp)
                  addi         a2, s11, 93
                  and          a6, gp, ra
                  lh           t4, 3(sp)
                  auipc        a0, 95288
                  add          a3, t2, a1
                  and          s7, s2, a5
                  andi         t0, gp, -1591
                  lbu          a1, -12(sp)
                  slt          s11, s0, a0
                  sb           tp, -6(sp)
                  ori          t6, t5, 1205
                  addi         s10, t6, 633
                  sll          a0, a1, s11
                  lb           a5, -8(sp)
                  lw           a7, -11(sp)
                  lb           a3, -11(sp)
                  lb           s3, 0(sp)
                  lw           s3, -15(sp)
                  srli         s6, s10, 8
                  or           s3, zero, a5
                  lb           a3, -4(sp)
                  sltiu        s10, s8, 1828
                  lb           s2, -14(sp)
                  srai         s3, a7, 18
                  lh           t2, -1(sp)
                  lb           s1, 2(sp)
                  sll          s6, s3, gp
                  srli         s9, s4, 0
                  ori          s7, s1, -235
                  lbu          s11, 13(sp)
                  xor          a2, a3, ra
                  sll          s11, ra, t1
                  lhu          s0, 15(sp)
                  sh           s0, 7(sp)
                  sb           t5, 15(sp)
                  lbu          a2, -4(sp)
                  sb           s6, -13(sp)
                  slt          s11, a2, s5
                  lbu          gp, -11(sp)
                  sh           a3, 1(sp) #end riscv_load_store_rand_instr_stream_3
                  or           t6, s2, gp
                  beq          a0, t4, 404f
                  beq          s1, t2, 408f
                  slli         a5, a5, 23
                  and          s2, t5, s2
                  sra          s3, s0, s11
                  bltu         sp, t0, 410f
404:              xor          s9, s6, a2
                  xori         t5, s1, -1514
                  add          s1, t1, s1
                  ori          t2, t3, -605
408:              slt          t6, s0, s11
                  beq          s9, s7, 410f
410:              bne          t2, s3, 415f
                  auipc        s0, 427230
                  srl          a5, a1, s7
                  srl          gp, a3, ra
                  srli         s1, s3, 21
415:              beq          s5, gp, 417f
                  bgeu         t0, a3, 428f
417:              sub          s8, s4, s6
                  beq          s7, t5, 421f
                  sub          t4, s6, t0
                  sub          s6, ra, t6
421:              bltu         a1, ra, 424f
                  slli         a7, s8, 20
                  ori          sp, s5, 1857
424:              srli         s2, s3, 25
                  andi         s9, a7, 397
                  xor          s10, s6, zero
                  sra          s9, zero, s3
428:              srli         s10, gp, 19
                  sltiu        a7, s4, 130
                  lui          s2, 459950
                  bne          t0, zero, 436f
                  sub          s4, s4, t2
                  bltu         s4, t1, 439f
                  sub          t0, s7, a6
                  sltu         s1, s5, t1
436:              bge          tp, a1, 446f
                  lui          t3, 748978
                  or           a6, t3, sp
439:              sltiu        t4, s11, 165
                  lui          s6, 850902
                  srai         zero, s1, 1
                  slt          zero, t2, s11
                  slt          sp, s10, s5
                  slli         t3, t0, 20
                  sltiu        s9, s1, -830
446:              ori          t5, t1, 1959
                  beq          a1, s7, 457f
                  lui          ra, 912890
                  andi         s6, s0, -743
                  srli         s10, a0, 13
                  bne          s7, tp, 463f
                  srl          a2, s7, zero
                  bltu         a2, a4, 468f
                  sub          gp, s6, s9
                  sltu         tp, a5, a2
                  slt          a7, a7, s6
457:              slt          a5, sp, t6
                  srai         s0, tp, 28
                  add          s8, t6, a7
                  sll          s7, zero, s1
                  srl          tp, t0, a5
                  sltiu        a2, a3, -910
463:              sll          a3, s6, a4
                  beq          a4, t0, 470f
                  sltu         gp, a4, s5
                  bltu         a7, s1, 478f
                  add          s6, s0, a3
468:              slt          a5, t0, t4
                  sltu         s9, a2, t3
470:              lui          a6, 369832
                  bne          gp, a2, 475f
                  andi         s11, t0, -123
                  sltu         s8, t3, a2
                  add          ra, s1, a5
475:              slli         s11, t4, 3
                  ori          s10, t6, -1944
                  ori          t4, t6, 449
478:              andi         t0, sp, 525
                  blt          s1, sp, 486f
                  bgeu         a7, s7, 482f
                  nop
482:              add          a2, s9, t3
                  auipc        gp, 728998
                  blt          s10, ra, 490f
                  slti         zero, t1, -1748
486:              auipc        s11, 743267
                  srai         s11, s11, 8
                  srai         s3, s3, 26
                  nop
490:              srli         a2, sp, 0
                  slli         a3, tp, 21
                  lui          t6, 540534
                  addi         t3, a2, -1953
                  addi         a5, gp, 1725
                  sll          t6, tp, s9
                  bne          ra, gp, 506f
                  srli         a0, a3, 8
                  or           s8, s9, a5
                  slt          s9, s11, s5
                  andi         a0, s2, 192
                  sra          s10, s11, t0
                  bne          s7, s4, 507f
                  srl          a5, a3, a5
                  and          tp, a6, s6
                  lui          a3, 207186
506:              bltu         s5, s1, 515f
507:              bne          s2, a1, 513f
                  bgeu         s3, t3, 513f
                  srli         s3, ra, 22
                  add          t4, s9, tp
                  bltu         s2, s3, 523f
                  slt          a5, s1, s6
513:              and          s8, a0, tp
                  sltiu        s10, t5, 1921
515:              bltu         gp, s7, 524f
                  blt          a0, gp, 531f
                  bge          a4, a4, 527f
                  bge          s1, t3, 536f
                  xori         s7, a3, 1301
                  sll          s11, t3, t6
                  lui          a7, 741976
                  slt          s0, t1, s9
523:              bne          a3, t1, 534f
524:              srai         a6, s0, 0
                  sll          a2, s11, a0
                  bltu         s3, s2, 527f
527:              addi         s0, t2, -1770
                  sub          a1, gp, tp
                  sltiu        s11, t4, 468
                  srli         s8, a2, 18
531:              bltu         tp, s11, 545f
                  sub          t0, t3, s9
                  bge          a3, s7, 546f
534:              slli         a1, s10, 5
                  and          tp, t6, s1
536:              blt          s4, a2, 551f
                  srai         t6, ra, 8
                  sltu         t3, t5, s6
                  sra          zero, s8, t4
                  xor          a6, s4, s7
                  slti         a6, gp, -702
                  bge          zero, s7, 549f
                  sub          s0, a6, s8
                  nop
545:              bltu         t5, a2, 551f
546:              sub          gp, sp, s3
                  srli         a2, s8, 26
                  srai         a2, s9, 15
549:              sra          a5, s2, s0
                  ori          a7, a5, 1418
551:              xori         a6, s11, -92
                  slt          s11, a6, t3
                  nop
                  sra          s6, a1, t5
                  auipc        s11, 586844
                  srli         a6, a2, 15
                  sltiu        a3, t1, -1288
                  slli         t4, s11, 9
                  lui          t5, 787364
                  sll          a2, t0, tp
                  nop
                  sltu         zero, a1, s8
                  lui          sp, 173751
                  bge          sp, a6, 579f
                  sub          a2, a1, a1
                  xori         s0, s5, -1571
                  sub          t5, ra, s10
                  sltiu        t5, s2, 730
                  lui          s10, 215403
                  xor          t2, t3, t5
                  xor          t4, s8, t6
                  srai         t4, s3, 3
                  and          tp, gp, sp
                  bgeu         gp, zero, 581f
                  nop
                  addi         a7, s4, -221
                  sll          t2, t5, t3
                  sll          s6, s2, zero
579:              ori          s11, gp, 970
                  auipc        t3, 366224
581:              sll          a0, t3, a5
                  add          t3, t0, s4
                  bltu         tp, s4, 586f
                  addi         t3, sp, 640
                  beq          s9, s7, 593f
586:              sltu         a3, sp, t2
                  bge          tp, s2, 590f
                  slli         t2, sp, 21
                  slti         t2, a4, -104
590:              sra          s10, ra, s10
                  and          a3, t5, s10
                  slt          zero, s8, t5
593:              and          s9, s6, t6
                  and          s8, t6, t2
                  bltu         sp, a6, 609f
                  srl          s1, t4, s4
                  sltu         s7, s6, s0
                  sltu         a5, t1, a1
                  bge          t1, tp, 619f
                  sltu         t5, s2, s7
                  ori          s0, a4, 527
                  xor          ra, sp, t3
                  sub          ra, s10, s1
                  slti         s6, a6, -375
                  sltu         s6, s4, s2
                  slti         a6, s8, -888
                  srl          t5, s8, a2
                  bge          t4, s5, 613f
609:              slti         s2, s3, 1283
                  srai         zero, t4, 21
                  sll          a5, s2, s10
                  slli         tp, s6, 2
613:              bge          s10, s11, 617f
                  sltu         t3, t2, ra
                  nop
                  auipc        gp, 592689
617:              sra          a7, t1, s1
                  ori          a2, s5, -1640
619:              slt          a2, s2, a5
                  sra          t0, t6, s2
                  nop
                  lui          s8, 663339
                  nop
                  beq          s0, a7, 633f
                  lui          gp, 289318
                  sltu         tp, s9, s9
                  or           t3, tp, t6
                  slti         t0, t5, -651
                  bge          s2, s5, 644f
                  bge          a4, tp, 642f
                  slt          s11, gp, sp
                  beq          s7, zero, 637f
633:              xor          s2, t1, t2
                  blt          s11, s10, 640f
                  ori          s10, t6, -270
                  sub          s8, s9, t1
637:              bne          t6, a7, 648f
                  andi         a5, s2, 47
                  sll          s0, s6, a2
640:              ori          a3, ra, 1339
                  blt          sp, tp, 655f
642:              srl          a7, s5, t4
                  bltu         t4, s4, 650f
644:              srai         a7, ra, 15
                  slti         s2, s9, -1560
                  beq          s1, s3, 651f
                  lui          s6, 410076
648:              srli         s11, t5, 30
                  blt          s9, s3, 664f
650:              and          s2, a4, s6
651:              bgeu         s11, s10, 654f
                  auipc        s6, 759072
                  add          s4, t2, gp
654:              sltu         s6, a0, t1
655:              bgeu         a5, s5, 669f
                  sra          a5, s9, s8
                  bltu         s11, a1, 666f
                  sltiu        a6, s9, -272
                  srai         ra, a1, 4
                  bge          t6, t1, 666f
                  auipc        t6, 141787
                  sra          a6, a1, a7
                  lui          t6, 349019
664:              bltu         t3, s8, 671f
                  srl          t6, s4, zero
666:              blt          s10, t2, 672f
                  addi         a3, sp, -1230
                  slli         a2, t3, 14
669:              bge          tp, s7, 684f
                  addi         a1, t4, -1439
671:              andi         t3, t0, -1222
672:              sub          s7, s3, s7
                  nop
                  blt          a2, t4, 684f
                  or           zero, s9, tp
                  bge          a2, a3, 679f
                  bne          t2, s9, 684f
                  xor          s11, gp, s5
679:              nop
                  or           t2, s6, t4
                  srl          sp, s8, s9
                  slti         a2, t2, 1126
                  srl          a1, a3, t1
684:              srli         t5, sp, 27
                  and          t2, tp, t4
                  bltu         s5, a0, 704f
                  beq          s6, a4, 699f
                  xori         s3, s11, 884
                  sltiu        a2, a4, -1209
                  bge          tp, t4, 700f
                  sra          s4, ra, a6
                  nop
                  sra          s1, t0, a3
                  sub          a2, s10, a2
                  slt          s6, s6, a3
                  slt          t0, t0, s10
                  add          sp, s7, t0
                  xor          a1, zero, s8
699:              auipc        a1, 451495
700:              slt          s9, a3, zero
                  srl          s1, a2, t4
                  bne          s4, a2, 722f
                  slt          s4, a5, s4
704:              add          s0, a2, t1
                  bgeu         s0, t0, 713f
                  auipc        t5, 744816
                  and          a3, a7, s11
                  ori          a6, a1, 1089
                  slli         sp, a2, 21
                  and          s3, t1, s5
                  auipc        s8, 685043
                  ori          sp, t3, -1432
713:              slti         tp, t5, -728
                  sub          tp, t1, t5
                  ori          gp, gp, -2000
                  or           t4, s1, a1
                  bgeu         t2, a6, 730f
                  bltu         s7, s6, 723f
                  sra          tp, s0, a6
                  andi         a1, s4, 1177
                  blt          ra, a4, 723f
722:              sra          s3, ra, s3
723:              xori         s7, t2, -2013
                  sll          a2, a5, s5
                  nop
                  beq          a7, gp, 727f
727:              sltu         s4, a6, t6
                  ori          zero, a2, 1161
                  sltu         a6, t6, t1
730:              sll          a7, t1, ra
                  sub          sp, t1, t4
                  bge          s0, s4, 746f
                  ori          s10, gp, 527
                  bltu         s5, a7, 749f
                  bgeu         sp, a1, 740f
                  srai         zero, s5, 10
                  add          s9, t2, t6
                  sra          s10, t0, s2
                  bgeu         a7, t0, 747f
740:              or           s10, a2, ra
                  add          t6, t4, s10
                  srl          s10, a1, t0
                  srai         a2, gp, 24
                  bne          zero, t4, 756f
                  bge          s4, s3, 746f
746:              add          a0, s0, s7
747:              bne          s10, tp, 753f
                  slti         zero, s8, -522
749:              auipc        s0, 534737
                  or           s9, s10, ra
                  sltu         zero, s8, s11
                  xori         s4, t0, 1307
753:              srli         zero, s10, 31
                  slt          a0, t2, s3
                  and          s7, t1, s1
756:              nop
                  srai         a7, s5, 0
                  xori         t5, gp, 1618
                  bne          a3, a4, 764f
                  bltu         a6, s2, 771f
                  sltiu        s3, a6, 2015
                  beq          s3, a3, 765f
                  add          s9, a1, a5
764:              sra          s6, zero, s1
765:              bge          t4, s0, 770f
                  xori         zero, a7, -1553
                  or           sp, s1, a5
                  blt          a6, t2, 778f
                  bne          s7, s5, 789f
770:              addi         ra, a0, 1185
771:              and          s10, s3, s10
                  sra          a7, s2, t1
                  slt          t4, s9, s6
                  and          a3, s7, s5
                  srli         s10, s4, 6
                  andi         zero, sp, -1220
                  xori         a6, s3, 734
778:              slli         gp, s11, 29
                  bgeu         s0, t3, 792f
                  andi         t6, a7, -941
                  bltu         s8, s11, 787f
                  beq          tp, a4, 797f
                  bge          s6, s0, 790f
                  add          s8, ra, s1
                  auipc        a2, 722273
                  srl          s0, t0, ra
787:              addi         s6, s10, -557
                  sltu         tp, s9, s6
789:              sra          a7, t4, a1
790:              addi         s0, ra, 1529
                  srai         s2, s6, 28
792:              bgeu         s4, s2, 796f
                  srai         a5, t6, 20
                  bge          s2, t1, 806f
                  sll          s0, s7, ra
796:              add          a7, t4, t3
797:              sub          a1, s11, tp
                  srai         s4, a4, 4
                  and          a0, t0, zero
                  auipc        a2, 898219
                  sub          a2, s1, s8
                  bltu         a5, s9, 804f
                  srli         s11, s3, 0
804:              srai         tp, a0, 19
                  slt          a0, s4, s4
806:              sll          t5, s11, s1
                  auipc        s9, 561225
                  addi         t6, t1, 1782
                  slt          a5, t5, a5
                  sub          tp, s8, s10
                  blt          s8, ra, 820f
                  beq          ra, s6, 819f
                  nop
                  addi         t5, a1, 538
                  lui          a5, 319356
                  addi         s4, a3, 1012
                  sra          s3, s11, tp
                  addi         t6, sp, -981
819:              bgeu         s6, s6, 834f
820:              blt          s4, a0, 823f
                  xor          t3, t6, a6
                  sra          a5, t4, s10
823:              andi         t3, sp, -873
                  xori         s3, t0, -1193
                  sltiu        t3, t1, -176
                  sub          a6, tp, s4
                  blt          sp, s11, 834f
                  sltu         tp, t5, t3
                  beq          a0, a6, 843f
                  sltiu        ra, a3, -435
                  blt          s2, zero, 837f
                  ori          s11, s11, 35
                  addi         t0, s0, 219
834:              srai         sp, s11, 7
                  slli         s6, a5, 1
                  bge          a6, zero, 846f
837:              srli         t2, a7, 9
                  bge          gp, s6, 856f
                  add          ra, t1, zero
                  bltu         a1, t3, 849f
                  bge          s10, s2, 848f
                  srli         s9, t5, 15
843:              andi         a5, s1, 1902
                  bgeu         s5, t6, 858f
                  srli         a0, s8, 6
846:              addi         tp, s5, -330
                  xori         a2, a2, 1092
848:              srli         t5, a4, 16
849:              slt          gp, s4, t2
                  sub          a7, s4, s9
                  bgeu         s8, t0, 853f
                  srl          a0, t1, tp
853:              sra          a6, s8, t5
                  addi         a2, s4, 6
                  slli         s3, a1, 24
856:              auipc        a1, 614395
                  srli         zero, t2, 19
858:              slli         s7, tp, 18
                  srl          s4, a2, a0
                  nop
                  lui          s8, 404501
                  or           tp, s9, s6
                  ori          t0, a3, -1349
                  srai         s11, t4, 11
                  xori         s9, s9, 629
                  srli         s6, s6, 11
                  auipc        s0, 456085
                  sra          a0, ra, s4
                  sltiu        s10, s0, -589
                  sll          s11, t0, s5
                  bltu         s8, sp, 876f
                  bge          a7, s9, 890f
                  bge          ra, s6, 886f
                  bltu         a4, t3, 888f
                  beq          s4, t2, 883f
876:              sub          sp, a5, s10
                  sll          s3, s5, t2
                  lui          t5, 1043499
                  ori          s9, a5, -481
                  sltiu        t6, a0, -254
                  sltiu        s8, s8, 1298
                  slt          s2, gp, a4
883:              srl          s9, s8, s11
                  sra          a2, tp, t0
                  auipc        s11, 120647
886:              slti         s10, a3, -1162
                  sra          a1, a3, t1
888:              sltu         t4, s10, gp
                  sub          s9, t5, s2
890:              nop
                  beq          t0, zero, 892f
892:              srai         a1, s8, 5
                  bgeu         a1, a0, 904f
                  auipc        t6, 90183
                  xor          gp, gp, s1
                  bgeu         a5, t6, 901f
                  or           a5, zero, t3
                  slli         t5, s11, 18
                  sll          s8, s0, a0
                  slli         a3, gp, 2
901:              xori         zero, t0, 670
                  slt          s11, s0, s1
                  or           a1, t1, s3
904:              sltiu        t0, a3, 310
                  sltu         t0, a6, t3
                  sra          s10, t2, a1
                  sub          t3, s10, t2
                  srli         a2, zero, 3
                  slli         s6, a1, 10
                  lui          s11, 257952
                  or           t0, s7, tp
                  srli         a3, s10, 21
                  bgeu         a3, s1, 919f
                  addi         t5, s1, -831
                  sll          a1, s11, s2
                  sub          s11, a1, a6
                  or           a6, a3, ra
                  beq          zero, s10, 938f
919:              sltiu        a0, sp, 1016
                  add          s1, a4, a6
                  sra          ra, a6, a7
                  addi         s4, s4, -689
                  add          t4, s5, sp
                  blt          a1, s1, 939f
                  srai         a0, s6, 2
                  xor          a7, t6, a0
                  bge          a1, t5, 937f
                  slti         t5, s6, -1518
                  andi         zero, a7, -1278
                  beq          s0, s2, 935f
                  xor          zero, t4, gp
                  auipc        s8, 195546
                  sub          a1, s8, tp
                  bge          t0, s5, 940f
935:              sltiu        s9, tp, -1727
                  slli         s7, s4, 16
937:              auipc        s2, 698374
938:              blt          a2, t3, 950f
939:              auipc        a3, 827271
940:              ori          s1, t2, -1833
                  add          ra, t2, t6
                  xor          a2, gp, t4
                  xori         s6, a1, 1090
                  nop
                  ori          a1, a5, -1721
                  ori          s11, a6, 30
                  add          s8, zero, sp
                  beq          s1, a7, 955f
                  srl          t2, t5, s0
950:              sra          s0, s2, t1
                  andi         a2, a6, 844
                  slti         a5, t0, -1202
                  add          zero, s10, sp
                  lui          s3, 625666
955:              sll          t6, t0, a0
                  beq          t0, t1, 966f
                  bne          t4, t3, 961f
                  xor          a3, t2, a2
                  andi         t0, tp, 173
                  blt          t3, gp, 975f
961:              sltiu        s7, s6, -1298
                  la           s11, region_0+751 #start riscv_load_store_rand_instr_stream_8
                  lbu          a1, 161(s11)
                  lbu          t6, 203(s11)
                  nop
                  lui          s8, 80194
                  sltiu        t6, a7, 612
                  sb           a0, -88(s11)
                  and          tp, s9, s7
                  addi         s0, s7, 1832
                  srai         s1, tp, 31
                  or           t6, s7, t5
                  lbu          zero, -248(s11)
                  or           t2, a3, s8
                  lbu          a7, 64(s11)
                  lhu          a3, -209(s11)
                  lbu          a1, -40(s11)
                  lhu          zero, 175(s11)
                  lhu          a5, -31(s11)
                  auipc        a3, 36828
                  lbu          s6, -178(s11)
                  and          t6, zero, s3
                  lbu          zero, 242(s11) #end riscv_load_store_rand_instr_stream_8
                  andi         tp, t2, -1923
                  beq          s4, t5, 972f
                  sub          tp, s8, ra
                  srli         s0, a3, 3
966:              sll          s8, t6, a0
                  bltu         s0, a4, 976f
                  ori          tp, gp, 1233
                  sltu         t5, s11, t0
                  auipc        s2, 538326
                  or           gp, t2, zero
972:              slli         sp, a3, 6
                  srl          t3, s6, t3
                  ori          s7, a6, 966
975:              srli         a6, a3, 30
976:              srl          sp, t3, s9
                  ori          a7, s3, -541
                  slt          a0, tp, s4
                  bne          s8, s4, 985f
                  bltu         t6, a1, 983f
                  sltu         s0, t5, t4
                  ori          s3, t4, 1493
983:              nop
                  bltu         gp, a3, 996f
985:              bltu         tp, t6, 988f
                  slli         a5, tp, 8
                  bne          s11, s9, 1002f
988:              sra          a3, s2, s0
                  xori         a1, s3, -1691
                  ori          t4, s9, -1857
                  xor          a6, a1, s6
                  sltu         a5, s7, t1
                  or           s6, s3, s4
                  auipc        a6, 1003939
                  add          sp, t2, s1
996:              and          s6, t6, s8
                  slti         s2, s6, -1151
                  or           sp, gp, gp
                  slli         s9, tp, 8
                  ori          a2, a7, -1588
                  bge          s7, s10, 1008f
1002:             sltu         s9, s6, a4
                  or           s3, t4, a7
                  sra          t6, s10, t6
                  addi         s6, a7, 2000
                  sub          s7, zero, a7
                  slt          s8, s5, gp
1008:             and          zero, s10, a4
                  or           t0, sp, s0
                  add          t4, s9, a7
                  bne          t5, t2, 1016f
                  bgeu         t3, s4, 1024f
                  slt          s2, sp, a2
                  sll          s8, t2, s8
                  nop
1016:             sltu         s8, s2, a2
                  bge          t2, a2, 1023f
                  and          s0, a1, t5
                  add          gp, a6, s10
                  auipc        zero, 694464
                  beq          s6, s10, 1031f
                  bgeu         sp, a5, 1028f
1023:             or           s11, zero, s3
1024:             sltiu        s7, s0, -1007
                  or           t3, tp, a2
                  srai         s1, a2, 13
                  add          t0, s2, s4
1028:             add          t0, a6, a4
                  lui          s3, 104231
                  sltiu        a1, s1, -1644
1031:             bgeu         s7, a5, 1042f
                  bgeu         s9, s9, 1034f
                  sra          s4, s1, a5
1034:             sltiu        t5, a5, -1916
                  sub          t4, t0, t0
                  lui          t0, 302085
                  beq          s10, a2, 1051f
                  xor          t2, a3, a7
                  xor          gp, a1, a6
                  andi         s2, t5, -2006
                  and          sp, t2, a4
1042:             xori         s6, a1, -1728
                  bltu         s5, t0, 1046f
                  sll          s9, ra, s10
                  sltiu        tp, ra, 1279
1046:             blt          a1, ra, 1053f
                  bne          sp, zero, 1048f
1048:             sltu         t2, tp, a2
                  blt          t6, s6, 1053f
                  bge          sp, t1, 1057f
1051:             lui          s8, 556875
                  addi         a5, t6, 1735
1053:             nop
                  and          s2, zero, s7
                  srli         a1, s7, 2
                  xori         a2, a4, -733
1057:             srai         ra, s3, 4
                  add          gp, a0, a2
                  sub          t3, s6, t4
                  sltu         t2, s3, gp
                  auipc        a7, 326895
                  sll          s2, a7, a5
                  blt          gp, a2, 1068f
                  ori          ra, s1, -389
                  and          t3, gp, a4
                  bge          s4, a7, 1081f
                  sltiu        sp, a6, 1151
1068:             lui          s4, 480791
                  bltu         a5, ra, 1089f
                  bgeu         t1, s11, 1079f
                  sll          s1, ra, tp
                  sltiu        t5, t0, 988
                  sltiu        s1, s9, 1433
                  slt          a0, s7, s3
                  nop
                  xor          t2, a5, t6
                  slt          s11, s3, s11
                  sra          a0, s6, s4
1079:             add          s3, a1, a0
                  bltu         a3, s10, 1093f
1081:             sra          a0, s6, s1
                  sra          s11, t0, ra
                  andi         t5, zero, 260
                  or           t6, s0, gp
                  blt          t3, zero, 1092f
                  lui          a5, 402049
                  sll          t2, s0, s2
                  xori         s1, t0, 1724
1089:             slli         t4, s3, 10
                  sltiu        t6, a7, 1229
                  andi         s7, t2, -80
1092:             bltu         a3, a4, 1107f
1093:             addi         a3, a6, -1988
                  slti         s9, t0, 1335
                  or           tp, a0, s11
                  or           zero, a4, zero
                  beq          gp, a2, 1107f
                  blt          zero, s2, 1112f
                  sub          ra, t4, a5
                  ori          s10, t3, -1298
                  andi         a7, s8, 567
                  blt          a2, a0, 1105f
                  sra          s0, a3, s0
                  sub          a5, t1, a5
1105:             bne          zero, a5, 1111f
                  sltu         s0, t6, t6
1107:             ori          s0, t4, -1061
                  andi         tp, s10, -1184
                  sra          s6, a1, a5
                  or           s10, a6, t0
1111:             slti         ra, s10, 1732
1112:             sltu         ra, a6, s11
                  auipc        t4, 479584
                  srai         t2, t3, 27
                  xor          t5, s11, s7
                  nop
                  sltu         s4, gp, s9
                  sll          s7, s11, s1
                  slti         t0, s7, -1171
                  or           a2, a0, s11
                  blt          gp, a1, 1130f
                  add          s10, gp, zero
                  srli         t3, s11, 29
                  ori          t6, gp, 292
                  add          t2, t4, s8
                  bltu         s3, zero, 1131f
                  or           a0, sp, a0
                  sra          s0, a2, t4
                  sub          s9, t2, s0
1130:             sltiu        s3, s10, 927
1131:             slti         a1, tp, 301
                  nop
                  la           s7, region_0+1852 #start riscv_load_store_rand_instr_stream_0
                  lbu          t3, -13(s7)
                  auipc        a0, 289766
                  sb           s9, 15(s7)
                  or           gp, s5, t6
                  lh           t3, 10(s7)
                  srai         s11, a1, 29
                  sub          s6, s2, t6
                  sltiu        a0, a5, -765
                  sltu         gp, a3, s10
                  ori          s8, s8, -846
                  ori          tp, s2, 2029
                  add          s2, a7, zero
                  andi         sp, s3, -15
                  sra          s4, s6, s7
                  srl          t6, s8, ra
                  lbu          s11, 10(s7)
                  lbu          gp, -5(s7)
                  sub          tp, s9, a6
                  lhu          s2, 10(s7)
                  srli         t5, a3, 6
                  addi         a7, gp, -1498
                  lb           t3, -7(s7)
                  xori         a5, t4, 785
                  nop
                  lbu          s11, 10(s7)
                  sw           s5, -16(s7)
                  sltu         tp, t3, sp
                  lui          t0, 215332
                  sll          sp, a7, t2
                  srli         tp, s10, 27
                  sh           t6, 8(s7)
                  slti         a7, s9, 969
                  sll          t4, gp, a4
                  sltu         t3, a4, a6
                  lbu          s1, 7(s7)
                  lbu          a0, 3(s7) #end riscv_load_store_rand_instr_stream_0
                  sra          sp, a6, t0
                  and          t2, s0, t1
                  sub          s7, gp, s2
                  addi         a2, tp, -731
                  and          a2, a1, s2
                  auipc        t0, 6069
                  beq          a0, a7, 1157f
                  xori         a2, t0, 1249
                  slti         zero, s0, 250
                  ori          t3, t3, 1947
                  srai         t4, a0, 23
                  sll          a6, s2, gp
                  srai         t3, ra, 22
                  auipc        t4, 669573
                  beq          t1, t3, 1155f
                  bgeu         t4, a2, 1160f
                  and          t6, a0, t3
                  slt          t5, gp, s5
                  slli         s3, a7, 14
                  sra          t4, s5, a2
                  bne          a3, t5, 1168f
                  lui          sp, 365193
1155:             bgeu         s8, s1, 1170f
                  sltiu        a5, a7, -211
1157:             sra          zero, t0, a5
                  andi         s9, s11, 1227
                  slt          a6, a3, a1
1160:             add          s1, a4, s1
                  add          s3, t5, t4
                  beq          a6, a7, 1163f
1163:             blt          a0, t6, 1181f
                  ori          tp, s4, 177
                  srli         t6, s4, 0
                  srl          s9, ra, a3
                  ori          t6, s7, -631
1168:             sltiu        t5, s9, -1753
                  auipc        sp, 217952
1170:             sltiu        tp, t2, -896
                  lui          t2, 78282
                  beq          s11, t6, 1179f
                  slli         a6, s8, 16
                  bgeu         gp, a7, 1176f
                  sltu         s2, a2, t4
1176:             addi         t2, t1, -287
                  addi         s6, s8, 1970
                  sra          s4, s9, tp
1179:             sub          s3, s6, a4
                  xor          s6, a7, s10
1181:             sub          tp, s5, t5
                  slt          s9, t2, s1
                  andi         s8, ra, 721
                  addi         s6, zero, -630
                  srl          a3, s9, t3
                  bgeu         s0, t1, 1196f
                  slti         a3, t2, 2034
                  blt          t4, a4, 1194f
                  addi         a5, a1, -201
                  beq          s11, s5, 1202f
                  srli         s11, s0, 15
                  bgeu         s10, t3, 1197f
                  slti         a1, gp, -54
1194:             sltu         s2, sp, t1
                  xori         a1, s1, 1470
1196:             srli         s6, s6, 0
1197:             sltu         a3, a7, s7
                  addi         a5, t1, -1258
                  and          s1, s1, a6
                  sll          gp, s8, tp
                  andi         t0, t2, 154
1202:             sra          t5, s10, s1
                  slli         t5, a2, 17
                  xori         s7, s7, -235
                  slli         tp, a2, 22
                  ori          a0, a5, 1277
                  andi         a0, a7, -422
                  srai         s3, s2, 21
                  lw           ra, 4(a4)
                  slt          t2, t5, gp
                  addi         a4, a4, 12
                  slli         s0, gp, 19
                  andi         t2, t1, -987
1610:             addi x28, x1, 0
1610:             jalr x28, x28, 0
sub_10:           add          a7, a3, s6
                  and          a3, s4, s10
                  bge          s6, t6, sub_10_stack_p
                  slli         t5, s4, 5
                  srli         a7, s1, 27
                  ori          gp, sp, 1162
                  addi         zero, s8, 354
sub_10_stack_p:   addi         a4, a4, -8
                  sltiu        s9, t3, -1946
                  srli         s10, s10, 8
                  sw           ra, 4(a4)
                  lui          a2, 644947
                  xor          a0, s7, s0
                  la           sp, region_0+381 #start riscv_load_store_rand_instr_stream_1
                  lbu          s8, 189(sp)
                  lh           a7, -23(sp)
                  slti         s7, t0, 492
                  lh           t5, 41(sp)
                  lb           s7, -79(sp)
                  lb           s10, 166(sp)
                  lbu          a0, -214(sp)
                  lb           s4, 90(sp)
                  lbu          t6, 198(sp)
                  sltu         s9, s6, a4
                  slti         ra, s1, 184
                  lbu          t5, 160(sp)
                  sb           t3, 0(sp)
                  sra          s10, s1, tp
                  sb           s9, 196(sp)
                  ori          t6, a6, 1822
                  slti         s2, s1, -788
                  lb           a6, 244(sp)
                  xor          s0, s1, s8
                  andi         s9, s8, 1269
                  add          s10, sp, s3
                  slt          t4, s7, gp
                  slli         s4, t6, 13
                  add          a6, s3, s6
                  sb           s8, -193(sp)
                  sb           t1, -108(sp)
                  lb           t0, 38(sp)
                  lb           s10, 94(sp)
                  addi         s0, a5, -1084
                  addi         a3, ra, 1422
                  lb           s4, -86(sp) #end riscv_load_store_rand_instr_stream_1
                  la           s6, region_0+84 #start riscv_load_store_rand_instr_stream_0
                  lw           t2, 1008(s6)
                  slli         gp, s11, 12
                  srai         s2, a7, 22
                  lhu          a7, 1094(s6)
                  xor          s11, s5, a3
                  lbu          gp, 1499(s6)
                  lb           a2, 263(s6)
                  sltu         a1, t0, a3
                  lbu          s3, 1283(s6)
                  sltu         s4, a0, a4
                  lhu          s3, 988(s6)
                  lbu          s0, 1152(s6)
                  and          s8, t0, a5
                  sll          s10, s3, s8
                  lbu          t5, 47(s6)
                  lbu          ra, 1319(s6)
                  sb           s11, 274(s6)
                  slli         t2, s8, 26
                  lbu          s10, 1609(s6)
                  sb           a0, 1864(s6)
                  sb           gp, 77(s6)
                  sw           s1, 1564(s6)
                  auipc        t6, 401702
                  sb           s7, 1015(s6)
                  slti         tp, gp, -223
                  lbu          s2, 479(s6)
                  sb           s1, 278(s6)
                  sltu         a2, t2, t0
                  sb           s10, 1623(s6)
                  lui          zero, 700253
                  lb           s7, 1068(s6)
                  slt          a3, s1, s9
                  lb           a2, 695(s6)
                  slt          t3, a3, t4
                  sh           t1, 664(s6)
                  lbu          a2, 1733(s6)
                  lbu          s10, 139(s6)
                  slt          s1, s4, a3
                  lw           a6, 1828(s6)
                  sll          t3, s5, t4
                  srl          s8, s2, s7
                  sb           t5, -51(s6)
                  sb           s6, 1475(s6)
                  lhu          s0, 424(s6)
                  sb           ra, 1870(s6)
                  sh           a5, 450(s6)
                  lbu          a2, 1577(s6) #end riscv_load_store_rand_instr_stream_0
                  sub          s10, s0, gp
                  and          a6, s10, a1
                  ori          a0, a2, -1692
                  bge          s3, a1, 9f
                  slli         t4, zero, 8
                  lui          s6, 877854
                  and          t4, a1, zero
                  andi         ra, s7, 315
                  srai         s0, t6, 3
9:                sltiu        s4, a7, 1905
                  lui          s8, 839119
                  xori         a1, ra, -1575
                  beq          a0, a0, 30f
                  srli         s11, a7, 1
                  sltu         s9, a0, s1
                  slt          t4, ra, t2
                  bge          s1, s1, 31f
                  add          s9, s3, t4
                  and          s2, s4, sp
                  sub          s4, t5, s1
                  andi         s1, t2, -726
                  blt          s4, s6, 34f
                  or           s8, s9, t5
                  lui          a3, 901869
                  slti         s3, t4, -1833
                  srl          t6, sp, sp
                  blt          a5, a4, 40f
                  sll          s1, s5, a5
                  addi         s6, a1, 740
                  slt          a0, s5, s2
30:               blt          s8, s2, 39f
31:               nop
                  add          s6, s6, t0
                  sub          t4, t3, a2
34:               blt          s0, t6, 51f
                  auipc        a6, 522631
                  sra          t6, s1, s10
                  nop
                  bltu         sp, a4, 56f
39:               add          s9, gp, t6
40:               beq          s2, s1, 50f
                  xori         a3, s11, -199
                  sltu         t6, t6, a0
                  andi         s7, s7, -1332
                  ori          s9, t2, 571
                  add          t0, a0, a3
                  lui          s9, 927303
                  xor          a5, t1, s9
                  sltiu        t0, tp, 73
                  bltu         t3, zero, 55f
50:               beq          a0, s4, 69f
51:               slli         a6, t2, 29
                  slti         t0, a4, -1734
                  sltiu        s4, sp, 803
                  slt          s7, t4, s1
55:               bgeu         s5, t4, 59f
56:               slt          a0, ra, t0
                  beq          a4, t2, 65f
                  bgeu         t2, a6, 77f
59:               or           s3, a5, a7
                  sll          s6, a2, a4
                  ori          s2, s2, -1507
                  lui          s0, 221736
                  slli         zero, t4, 0
                  bgeu         s7, t5, 76f
65:               beq          s1, t0, 78f
                  slt          t3, t0, s4
                  slli         s8, s3, 23
                  auipc        s8, 171739
69:               and          sp, a3, gp
                  andi         t3, a2, 418
                  sra          s2, s8, t2
                  xor          a7, t5, s8
                  slti         s8, a6, -439
                  slt          t2, sp, s10
                  and          t5, a3, ra
76:               bne          s4, a4, 90f
77:               srai         s4, t2, 28
78:               bltu         a3, s5, 79f
79:               xori         s9, tp, 153
                  and          s8, a3, a4
                  sltiu        a3, zero, 1825
                  sra          a0, a2, t1
                  slt          a3, t3, a5
                  bltu         a2, s1, 89f
                  srl          t3, a2, s9
                  addi         a3, s7, -450
                  xori         a7, a7, -553
                  sltu         a2, s8, tp
89:               srl          s7, t3, a6
90:               srli         a5, gp, 29
                  xor          t2, a2, a2
                  and          gp, s8, a7
                  sll          a7, a6, a5
                  bge          t5, t1, 109f
                  add          s6, s2, a5
                  auipc        a1, 281881
                  slt          ra, s3, t0
                  blt          t3, s5, 115f
                  blt          s1, a1, 114f
                  sltiu        t2, a5, 1818
                  slti         s6, a4, 1346
                  srl          t5, a6, t6
                  or           t0, sp, t1
                  srli         t4, zero, 18
                  bne          zero, a4, 113f
                  slli         t6, a4, 16
                  bgeu         s10, a4, 120f
                  nop
109:              addi         a5, sp, -1580
                  xor          a7, a7, s5
                  srai         s4, sp, 5
                  sll          a7, a3, s0
113:              blt          s9, s3, 127f
114:              and          a2, gp, a1
115:              srli         s6, s11, 10
                  slt          s8, gp, a1
                  slli         gp, t1, 15
                  beq          t4, s2, 120f
                  slt          t4, sp, ra
120:              srl          s4, zero, s1
                  nop
                  auipc        a3, 496170
                  sltu         t3, s11, s7
                  xor          a0, s5, ra
                  nop
                  bne          a3, t5, 136f
127:              sra          a1, t5, t2
                  slli         s2, t5, 22
                  slt          t6, t6, a2
                  ori          s3, s8, 1959
                  srai         t6, a3, 12
                  sub          s8, s8, a1
                  and          tp, t3, s8
                  bgeu         sp, sp, 142f
                  sltiu        a7, t5, -1996
136:              bgeu         s2, gp, 154f
                  addi         t2, t3, 0
                  nop
                  srli         a1, zero, 1
                  beq          s0, a2, 158f
                  blt          t6, t4, 149f
142:              xor          gp, s10, tp
                  sub          s1, tp, s5
                  slti         zero, a4, 1906
                  xor          t5, t2, a4
                  bgeu         zero, s7, 151f
                  sll          s1, s3, s3
                  srai         t4, t6, 9
149:              addi         ra, zero, 322
                  xori         t3, s2, -994
151:              addi         s3, a4, -1522
                  addi         s6, s8, -1418
                  srli         s2, t6, 21
154:              xor          s6, s2, t6
                  slt          t4, a0, sp
                  slt          s9, s9, t4
                  lui          t2, 558505
158:              slt          t6, t4, t2
                  bne          s4, s5, 167f
                  srai         zero, s3, 18
                  srl          t3, s4, s11
                  beq          a4, gp, 176f
                  nop
                  xor          a3, s8, t2
                  srl          zero, a5, s3
                  sra          s11, s2, sp
167:              xori         s1, s6, -1052
                  sra          t2, a6, s1
                  auipc        a0, 50748
                  slli         s6, s0, 26
                  bge          s5, s3, 179f
                  beq          sp, a5, 186f
                  slti         s11, t6, -1238
                  slt          s1, s9, t2
                  add          t4, s2, sp
176:              xori         t0, t1, -1232
                  beq          ra, s4, 190f
                  ori          a6, t6, 343
179:              addi         a5, s11, -1225
                  xor          t3, zero, a6
                  lui          s2, 117805
                  nop
                  sltiu        s10, zero, -1654
                  bge          ra, s11, 193f
                  lui          s8, 770959
186:              or           t6, a6, ra
                  addi         s2, a5, -428
                  sub          a2, s9, sp
                  slli         t5, a3, 1
190:              slt          t3, s6, ra
                  lui          s0, 238280
                  slli         t5, a4, 1
193:              sll          a7, s5, s11
                  addi         ra, s8, -802
                  andi         a7, a1, -1689
                  blt          t4, s10, 213f
                  ori          t3, a2, -30
                  nop
                  sltiu        s2, t2, 1635
                  addi         s4, t1, -594
                  ori          s4, t0, 1602
                  ori          s6, s10, 1043
                  add          t5, t4, s10
                  bge          a2, zero, 222f
                  bge          s5, s6, 218f
                  bge          s3, zero, 221f
                  sltu         s6, t0, s1
                  bltu         t0, s8, 225f
                  addi         t0, t5, -1685
                  bltu         ra, s9, 222f
                  or           t0, s3, a7
                  lui          a0, 608599
213:              add          s9, ra, tp
                  ori          s10, tp, -67
                  add          a6, a7, t2
                  and          t5, t0, s3
                  xori         a3, s8, 444
218:              beq          t2, t5, 236f
                  ori          t6, a4, -356
                  sltiu        ra, a3, 1322
221:              xori         zero, t6, 1629
222:              bge          s10, a5, 241f
                  slti         s3, sp, 591
                  slti         t6, zero, -2030
225:              addi         a1, a7, 182
                  and          a0, s1, s7
                  sll          s2, s9, a2
                  nop
                  addi         t2, ra, -934
                  sltiu        gp, a4, 232
                  sltiu        s10, tp, 810
                  slti         s9, a7, -1838
                  sltu         a0, a4, t0
                  bge          a7, s6, 252f
                  slti         s8, gp, -388
236:              and          s0, a2, t3
                  add          a5, a1, a1
                  andi         t2, t6, -1937
                  ori          t2, t4, -124
                  slti         s9, tp, -753
241:              and          t2, gp, tp
                  lui          s0, 214813
                  srli         t5, a2, 1
                  bgeu         s1, a7, 259f
                  sltiu        s8, s4, -1302
                  or           s9, a2, s3
                  xor          sp, t1, t4
                  lui          a1, 905972
                  addi         a0, t0, -1456
                  auipc        s0, 748989
                  slli         a1, a5, 2
252:              srli         t5, t1, 8
                  slli         s10, sp, 31
                  bne          s6, s6, 255f
255:              beq          s10, a2, 257f
                  bne          s5, a4, 275f
257:              srl          a5, s8, ra
                  bgeu         zero, a1, 272f
259:              andi         a2, a0, -1420
                  bltu         s4, gp, 264f
                  sub          s8, s11, gp
                  andi         a0, tp, -333
                  xor          t6, s8, a5
264:              sltiu        a7, a4, -392
                  auipc        a6, 837076
                  bge          s9, a1, 281f
                  slt          a0, t0, s3
                  xor          s9, a5, t2
                  xori         a3, a7, 1835
                  bgeu         tp, s9, 283f
                  addi         zero, a6, 1543
272:              xor          s3, s9, s6
                  andi         sp, t0, 1338
                  srli         s4, t6, 17
275:              xor          gp, s2, t3
                  sll          sp, a1, t5
                  srai         zero, t1, 27
                  bltu         s8, a5, 296f
                  bge          s1, a2, 289f
                  beq          zero, s3, 290f
281:              or           a1, t3, ra
                  auipc        s2, 269950
283:              sltu         a2, sp, zero
                  xor          s8, t4, s4
                  or           s11, gp, s4
                  sra          s2, s8, tp
                  bne          s2, a3, 293f
                  sll          s10, a5, t4
289:              sub          s11, a5, s11
290:              slli         zero, ra, 25
                  nop
                  or           a7, a5, ra
293:              srl          a3, t2, s8
                  nop
                  srai         s6, t6, 29
296:              bltu         s0, s6, 302f
                  blt          a6, s11, 310f
                  slti         a1, t5, -1717
                  blt          s5, t6, 308f
                  bge          a4, s1, 308f
                  bgeu         t6, a7, 303f
302:              bne          ra, a0, 315f
303:              lui          a3, 292193
                  beq          a2, t1, 318f
                  bltu         s6, a1, 322f
                  xor          s10, s7, t1
                  slti         s9, t5, -515
308:              auipc        t5, 122998
                  nop
310:              xori         s6, t1, -1160
                  lui          a3, 783326
                  xori         a5, a6, 998
                  sra          a6, s7, a7
                  beq          s2, s3, 324f
315:              slli         t4, a2, 7
                  srai         s0, t5, 1
                  lui          s8, 367578
318:              srai         s0, s0, 0
                  nop
                  slt          a1, t2, a1
                  ori          t4, t1, 1363
322:              slli         t3, s7, 17
                  blt          s5, a7, 331f
324:              sra          s7, sp, s3
                  and          a1, s0, a5
                  sll          a0, ra, a3
                  or           gp, s8, sp
                  srl          s1, a7, a5
                  sll          gp, s8, s2
                  slli         s1, s1, 29
331:              andi         a7, a1, 1726
                  addi         a2, gp, -344
                  add          a0, a5, s0
                  bne          t2, t6, 342f
                  add          a7, zero, s10
                  and          s11, ra, a6
                  auipc        a3, 642951
                  auipc        a2, 873522
                  sra          t4, s2, s2
                  and          tp, a6, t4
                  nop
342:              srli         s1, s4, 6
                  srli         a5, a5, 9
                  andi         a7, s10, 217
                  srl          a2, a7, t3
                  lw           ra, 4(a4)
                  slt          a5, s6, t6
                  addi         a4, a4, 8
                  auipc        s6, 878091
                  srl          sp, tp, sp
                  srli         s7, t5, 27
                  srli         s3, tp, 7
446:              addi x8, x1, 0
446:              jalr x8, x8, 0
sub_1:            sltiu        s2, tp, 756
                  add          zero, t6, zero
                  bne          a7, sp, sub_1_stack_p
                  andi         s6, t5, -1379
sub_1_stack_p:    addi         a4, a4, -24
                  srli         s10, s7, 5
                  sw           ra, 4(a4)
                  slti         t2, t5, -1106
                  slt          t2, t5, t1
                  sll          t4, s4, a2
                  sll          t3, a2, t4
                  la           s1, sub_4
                  srai         s4, s0, 15
                  addi         s1, s1, -450
                  lui          sp, 122901
                  andi         s0, s11, -343
                  srl          a0, a4, gp
                  bgeu         ra, zero, sub_1_j4 #branch to jump instr
                  xori         t5, t0, -1092
sub_1_j4:         jalr         ra, s1, 451 #jump sub_1 -> sub_4
                  add          ra, t0, s10
                  sltu         a0, ra, a5
                  lui          a5, 408594
                  sra          a1, s7, s10
                  sltiu        t0, a0, -795
                  bltu         t5, s9, 17f
                  and          s6, s4, s5
                  nop
                  sub          a5, s11, s0
                  nop
                  xori         gp, s4, -1251
                  blt          a0, s6, 17f
                  sltu         a6, a0, a6
                  or           t3, a3, ra
                  bgeu         t2, s2, 23f
                  srai         s6, s7, 6
                  beq          t4, s7, 20f
17:               srai         s0, s4, 18
                  slli         ra, s3, 25
                  andi         s9, s8, -1588
20:               slli         s3, a4, 4
                  sub          sp, a1, a5
                  lui          s10, 749917
23:               and          s7, a3, s4
                  slt          s2, s10, t6
                  sub          t0, s10, s5
                  srai         s0, t5, 14
                  srli         s10, s7, 6
                  beq          a4, sp, 31f
                  sll          sp, zero, t1
                  add          s0, a1, tp
31:               nop
                  slli         a6, sp, 2
                  srai         t3, tp, 9
                  bge          a7, a0, 51f
                  xor          s8, t4, a1
                  addi         s1, a2, -2003
                  xori         ra, s2, -1968
                  lui          s11, 982825
                  sll          s6, s0, t3
                  ori          t4, s2, -935
                  ori          a3, a5, -2030
                  bltu         t6, tp, 49f
                  sll          s7, s8, s2
                  slt          a0, s2, a0
                  srli         s7, s10, 11
                  slli         a3, a4, 0
                  blt          s0, sp, 48f
48:               auipc        s9, 280507
49:               or           a7, s6, s11
                  xori         tp, s1, 528
51:               srai         zero, zero, 20
                  sra          t6, gp, s5
                  bltu         s9, s9, 64f
                  sll          a1, s0, tp
                  sll          t0, a3, t3
                  beq          sp, t1, 66f
                  srl          a2, s7, a1
                  andi         a5, sp, -1024
                  sltu         a7, t5, s1
                  xori         zero, t5, -1278
                  add          t6, s0, s10
                  bge          s1, a4, 74f
                  blt          a4, s1, 79f
64:               bge          s0, a0, 80f
                  nop
66:               xor          s2, a5, s0
                  srli         s6, t6, 1
                  addi         a5, t4, 1672
                  and          s0, tp, s6
                  slt          t3, s4, a5
                  bne          t2, a6, 76f
                  blt          a2, t2, 89f
                  bgeu         s10, s7, 91f
74:               ori          t4, a5, -1266
                  srl          s10, s11, s1
76:               addi         t0, s1, -935
                  andi         s11, t1, 498
                  nop
79:               bgeu         a5, s5, 83f
80:               andi         t4, s0, 1893
                  sub          s9, a5, tp
                  or           s10, t2, a1
83:               ori          s2, a0, -106
                  xori         t3, s5, 1293
                  beq          a7, a0, 100f
                  sub          tp, t5, s5
                  slt          s1, s2, t5
                  sltiu        zero, a3, -1005
89:               slti         s7, s7, -1213
                  bltu         a7, tp, 91f
91:               sra          s11, s1, a6
                  xor          s2, a0, s9
                  auipc        ra, 942459
                  sra          ra, s9, s3
                  add          t4, s0, t4
                  sll          t0, s9, a1
                  and          t2, s2, a2
                  srli         s8, a4, 3
                  blt          s10, t0, 100f
100:              lui          a7, 277156
                  and          s11, a7, a7
                  xori         s2, a1, -2043
                  andi         tp, t5, 487
                  lw           ra, 4(a4)
                  sub          s11, t4, s8
                  sub          t6, s7, gp
                  slti         s8, t3, -1590
                  sub          s4, s7, zero
                  xori         a2, a6, -652
                  addi         a4, a4, 24
                  or           a1, s4, gp
132:              addi x31, x1, 0
132:              jalr x31, x31, 0
sub_6:            sltiu        a1, tp, -1091
                  auipc        tp, 657985
                  bgeu         s11, a5, sub_6_stack_p
                  srli         tp, a6, 23
                  srli         s0, s1, 8
sub_6_stack_p:    addi         a4, a4, -48
                  nop
                  sw           ra, 4(a4)
                  srl          a3, s3, t1
                  srl          s0, tp, a6
                  slli         a0, a6, 16
                  slli         a6, sp, 31
                  sltu         s8, s8, a2
                  la           sp, region_0+190 #start riscv_load_store_rand_instr_stream_3
                  lbu          s2, -15(sp)
                  lbu          s7, -5(sp)
                  addi         t0, t1, 672
                  xor          t5, s8, a2
                  sh           a4, 4(sp)
                  slli         s6, t5, 20
                  lhu          s6, 4(sp)
                  lb           s1, -13(sp)
                  and          s0, t2, s11
                  srl          tp, t2, sp
                  sll          s7, s11, ra
                  sb           t4, 0(sp)
                  srl          t2, t3, a5
                  nop
                  lb           t2, -15(sp)
                  lh           ra, 2(sp)
                  lbu          a6, 5(sp)
                  sb           t4, 14(sp)
                  slti         tp, s3, 609
                  srai         zero, a2, 9
                  lh           s8, 6(sp)
                  sw           a2, -2(sp)
                  add          a6, t2, s10
                  ori          a3, t4, -1738
                  lbu          gp, 16(sp)
                  sltiu        a3, a7, -231
                  lhu          gp, 2(sp)
                  sh           s10, -16(sp)
                  lb           tp, 1(sp) #end riscv_load_store_rand_instr_stream_3
                  la           t4, region_1+404 #start riscv_load_store_rand_instr_stream_2
                  srli         s4, t3, 15
                  slt          a2, a3, t2
                  lhu          zero, -36(t4)
                  and          s3, s5, t1
                  ori          s8, s3, 1050
                  lbu          s7, 464(t4)
                  nop
                  sll          a7, sp, s6
                  sb           s6, 368(t4)
                  sb           s2, 361(t4)
                  sw           tp, 1176(t4)
                  sb           s11, -189(t4)
                  sb           gp, -188(t4)
                  sb           s11, 117(t4)
                  sub          t2, t2, s6
                  lbu          t6, 575(t4)
                  lbu          a3, 739(t4)
                  lb           t3, 537(t4)
                  lh           s9, 10(t4)
                  lb           gp, 427(t4)
                  nop
                  xor          a7, sp, t6
                  auipc        t6, 813111
                  lui          s11, 83651
                  addi         a1, t2, 1800
                  sll          s1, t4, t5
                  sb           t4, 1161(t4)
                  lbu          s11, -263(t4)
                  lhu          s11, 528(t4)
                  andi         gp, a2, -419
                  slti         sp, t4, 381
                  lbu          a0, -301(t4)
                  lh           a5, -358(t4)
                  slli         s0, tp, 19
                  lhu          t2, -80(t4)
                  and          a1, s9, t2
                  lui          a6, 810040
                  sb           s10, 701(t4)
                  lh           gp, 770(t4)
                  and          gp, s3, a6
                  add          a2, a0, a3
                  lb           t5, 791(t4)
                  sra          s9, t2, s8
                  lbu          s10, 303(t4)
                  lb           s4, 1320(t4)
                  lb           tp, -396(t4) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_1+1627 #start riscv_load_store_rand_instr_stream_1
                  lb           s9, 48(sp)
                  sw           s0, 57(sp)
                  lui          t5, 507605
                  sh           s2, -31(sp)
                  sltiu        zero, a7, -867
                  sh           t6, -5(sp)
                  sb           s7, -44(sp)
                  sb           t3, -64(sp)
                  lhu          a2, -59(sp)
                  srli         a2, s6, 16
                  srai         s0, gp, 27
                  srl          a6, a7, ra
                  lbu          a0, 64(sp)
                  sb           a0, 33(sp)
                  add          a6, t1, tp
                  sh           s3, 37(sp)
                  lb           t4, 15(sp)
                  slti         s8, s4, 630
                  sw           ra, -3(sp)
                  ori          s9, s10, 1862
                  sb           s2, -15(sp)
                  lw           s10, 25(sp)
                  sb           s11, 48(sp)
                  sb           a3, -56(sp)
                  lbu          gp, -32(sp)
                  sh           tp, 3(sp)
                  sll          s7, a7, t2
                  sw           t1, 45(sp)
                  lhu          s8, -19(sp)
                  sltiu        s8, a2, 1836
                  lbu          ra, 58(sp)
                  lh           t3, 55(sp)
                  sltiu        a3, t2, -1139
                  lui          t6, 935028
                  sb           t2, 59(sp)
                  or           s10, s10, a3
                  add          a5, zero, s11
                  lb           s10, 48(sp)
                  lb           gp, 14(sp)
                  xori         a2, a5, -1619
                  addi         s11, a3, 1062
                  xor          a5, tp, a3
                  sltu         a1, s3, s3
                  nop
                  lhu          t3, -61(sp) #end riscv_load_store_rand_instr_stream_1
                  xori         a6, a0, 1492
                  slti         zero, s8, 1325
                  sltu         a2, s2, s11
                  slt          a3, t1, s5
                  ori          a7, a4, 871
                  sltu         t4, a5, s2
                  sub          s11, s9, gp
                  auipc        a0, 388490
                  nop
                  blt          s10, s6, 23f
                  sra          a7, s3, a5
                  xori         s0, s8, 456
                  sub          zero, a4, a6
                  srl          a6, t2, s3
                  sltu         s10, t3, a5
                  nop
                  sra          a5, t0, t5
                  bge          a6, sp, 25f
                  sra          s0, a3, tp
                  sub          a3, t4, s2
                  sll          a0, a2, s8
                  sra          t4, s5, s11
                  blt          s10, a0, 25f
23:               bne          gp, sp, 42f
                  srli         a0, t6, 13
25:               nop
                  andi         ra, a7, -1447
                  andi         a0, t5, -36
                  sll          a7, s6, s4
                  srli         t0, s8, 31
                  beq          t6, s8, 34f
                  bgeu         a2, a6, 47f
                  sll          s1, a5, a2
                  sra          t0, t4, s10
34:               blt          t4, a6, 51f
                  blt          tp, s10, 37f
                  and          s0, zero, a3
37:               add          a7, s9, gp
                  auipc        s1, 266955
                  sltu         a7, ra, a4
                  bne          s6, s10, 49f
                  xori         s4, tp, 1317
42:               blt          zero, s11, 43f
43:               slt          t0, a0, gp
                  bgeu         s10, s11, 50f
                  srai         s10, a3, 4
                  sub          t6, a1, t2
47:               bne          s3, a2, 60f
                  or           s9, a7, s1
49:               slli         s2, s8, 5
                  la           sp, sub_9
                  srl          a6, a5, s2
                  xor          s6, tp, s11
                  sltu         s10, t2, t3
                  sub          t4, s5, t1
                  sll          t5, s1, s10
                  addi         sp, sp, 631
                  add          s9, t3, s0
sub_6_j12:        jalr         ra, sp, -631 #jump sub_6 -> sub_9
50:               srli         a1, s0, 23
51:               bgeu         s5, a7, 53f
                  bgeu         s4, s8, 58f
53:               sra          s9, s3, a0
                  xori         t6, a1, 1449
                  slt          s7, t2, tp
                  bne          ra, a0, 72f
                  blt          s10, zero, 67f
58:               addi         ra, s10, -1171
                  srai         a1, t5, 22
60:               add          a0, t1, s10
                  srli         ra, s4, 27
                  and          s9, s2, s10
                  slt          s9, s0, t3
                  andi         a5, a0, -446
                  srli         a2, t4, 5
                  sltu         s8, a2, a1
67:               xor          s4, gp, t0
                  xori         a5, a3, 2046
                  sub          t5, s6, s3
                  bne          sp, sp, 90f
                  nop
72:               sltu         t5, a5, t0
                  srai         a5, a2, 28
                  xor          t2, a4, s3
                  sra          a1, s10, s0
                  sub          s10, ra, tp
                  blt          a3, s3, 82f
                  add          a6, s0, gp
                  srli         t6, s3, 16
                  lui          a6, 35238
                  lui          s2, 1047844
82:               xori         a2, s8, -1106
                  andi         s11, t5, -1488
                  addi         s9, s7, -1920
                  srai         s9, s9, 9
                  add          s3, s6, sp
                  slli         s0, a4, 29
                  xor          t0, s2, a4
                  sub          s11, s10, a1
90:               auipc        s9, 845846
                  auipc        a0, 175995
                  addi         s2, a0, 1646
                  nop
                  xor          s0, s1, t6
                  sltiu        t6, t3, 1337
                  sltu         a1, t2, ra
                  lui          t0, 889086
                  srl          s11, s11, t3
                  sll          t0, s11, gp
                  auipc        s3, 250775
                  slt          a5, a0, t4
                  or           s10, t5, t5
                  sll          a1, s11, s7
                  sltu         s8, s10, t3
                  blt          s9, gp, 119f
                  xori         s0, a4, -1599
                  ori          a3, gp, 1063
                  sra          gp, a2, t0
                  slli         t2, t2, 27
                  slti         tp, t3, -1673
                  sra          t6, t3, s0
                  sll          a2, t5, s5
                  andi         zero, tp, -968
                  srl          t2, s1, zero
                  slt          ra, a1, s6
                  bge          s8, a6, 132f
                  slt          t3, tp, s10
                  bltu         a2, t1, 135f
119:              add          s1, ra, a7
                  blt          a2, s10, 137f
                  lui          a2, 982300
                  xor          gp, t3, s1
                  srai         s9, a1, 27
                  xor          ra, s7, a6
                  ori          s1, gp, -961
                  sra          t4, a5, a4
                  xori         s9, s2, 175
                  sra          t0, s2, s1
                  beq          s10, s8, 131f
                  sub          t2, s0, a2
131:              ori          a3, t4, -2030
132:              bne          t0, a1, 144f
                  slt          a1, a6, t3
                  srl          a0, s5, a2
135:              or           s11, t2, t5
                  sltu         s4, ra, s9
137:              andi         s4, a6, -1514
                  sltiu        t0, a7, 1624
                  sra          gp, t6, tp
                  xori         a7, s2, -1825
                  srai         tp, tp, 17
                  add          t4, t2, sp
                  andi         t2, s3, -1152
144:              andi         a0, s8, 293
                  or           t0, a7, a0
                  nop
                  sll          a0, s0, t5
                  bltu         s7, a0, 157f
                  blt          t1, t2, 155f
                  srl          a5, a3, tp
                  andi         s10, t5, 1313
                  srli         s9, t6, 9
                  srli         a7, a7, 20
                  sll          s11, a6, s9
155:              xori         zero, s5, -1341
                  bltu         s11, s4, 158f
157:              sltu         s8, s11, s3
158:              nop
                  addi         s8, a5, -1134
                  sra          s1, a7, s8
                  add          a7, a0, tp
                  sltiu        t0, a3, -1788
                  sltu         gp, gp, a0
                  srai         sp, t3, 8
                  nop
                  beq          t5, s4, 169f
                  slt          s9, s1, a5
                  beq          a1, a2, 181f
169:              or           t6, a3, s5
                  bgeu         s10, a1, 174f
                  srai         gp, s6, 10
                  beq          a6, s10, 188f
                  bltu         a7, a5, 175f
174:              nop
175:              bltu         sp, t0, 180f
                  addi         a3, a7, 280
                  bltu         a7, s11, 183f
                  sra          t0, zero, a3
                  slti         s1, a3, 1114
180:              bne          zero, t1, 189f
181:              and          a6, a6, s1
                  sltiu        a2, a4, -1318
183:              ori          zero, s4, -1462
                  addi         t0, s6, -856
                  sll          t6, t0, a5
                  xori         a5, s4, 1418
                  xori         s7, s7, 302
188:              add          t4, a0, s10
189:              srl          s7, s8, s5
                  auipc        s0, 36652
                  slt          a3, t0, tp
                  beq          a5, s3, 211f
                  sltu         s8, a7, a7
                  or           zero, a2, t6
                  slli         a7, ra, 13
                  sll          a5, s10, s8
                  andi         s8, s7, 1551
                  bne          gp, s7, 212f
                  auipc        s7, 579339
                  add          t4, a2, s9
                  ori          t6, s11, 623
                  blt          s6, t3, 215f
                  sub          zero, t4, a4
                  srai         t0, t2, 23
                  sra          tp, t5, sp
                  bltu         t2, s5, 216f
                  srl          s1, s1, ra
                  sll          a6, a4, t6
                  sub          ra, a0, s11
                  xori         a0, a6, 1258
211:              slt          a0, t2, s9
212:              sltiu        t2, tp, 1206
                  sra          t6, t5, a0
                  sub          a6, sp, t0
215:              or           s6, t3, t3
216:              or           s0, a7, t2
                  lui          a3, 780479
                  ori          zero, ra, 1937
                  nop
                  addi         s9, s9, -1473
                  sra          a5, tp, a4
                  sltu         s3, a2, s1
                  slti         a2, s2, 1726
                  sltiu        s6, a6, 247
                  xor          gp, zero, t5
                  slli         t0, s8, 24
                  xori         t2, s10, 178
                  srl          t3, t5, t3
                  ori          gp, t0, -1396
sub_6_j10:        jal          ra, sub_7 #jump sub_6 -> sub_7
                  sltiu        s6, tp, 933
                  sub          a5, t0, a6
                  srai         ra, t4, 17
                  bne          t1, s5, 227f
                  xori         s0, a0, 89
                  sra          s10, s5, zero
                  and          s10, s1, s11
227:              and          t2, s1, s2
                  slt          a0, s9, s3
                  addi         tp, s11, 1522
                  sltu         t0, s2, a2
                  srli         zero, zero, 16
                  srl          s0, t5, sp
                  xori         t0, gp, 1778
                  bltu         s1, s9, 248f
                  blt          s3, t2, 237f
                  bgeu         s3, s9, 237f
237:              slt          a2, a2, t6
                  la           s11, region_1+1469 #start riscv_load_store_rand_instr_stream_0
                  sh           zero, -9(s11)
                  sh           s9, 15(s11)
                  lb           s7, -8(s11)
                  lbu          a5, -6(s11)
                  lb           s8, 8(s11)
                  srl          ra, t1, s11
                  lw           t5, 3(s11)
                  srl          t6, t4, a5
                  slti         a5, s10, 334
                  slt          ra, s10, tp
                  and          s1, a0, s7
                  sb           s10, -1(s11)
                  srl          t4, zero, a7
                  sb           t1, -14(s11)
                  lhu          a2, -9(s11)
                  add          t3, s2, t6
                  lbu          s2, 10(s11)
                  lb           s10, -12(s11)
                  lhu          a7, -5(s11)
                  sb           s0, -11(s11)
                  lb           s0, 4(s11)
                  lw           s8, 11(s11)
                  slti         t6, s3, 56
                  sb           t1, 12(s11)
                  sh           a1, 15(s11)
                  auipc        s1, 302967
                  sb           a3, 8(s11)
                  lh           s8, 11(s11)
                  or           s4, t0, s6
                  slt          t2, sp, s1
                  nop
                  ori          tp, s8, 1724
                  xori         t6, s11, 1855
                  sh           a0, -11(s11)
                  lb           t2, -4(s11)
                  or           zero, s11, t2
                  sb           t1, 12(s11)
                  lh           s8, 5(s11)
                  sb           t5, 5(s11)
                  slli         s3, a7, 9
                  lbu          a5, -15(s11) #end riscv_load_store_rand_instr_stream_0
                  sra          s4, t0, a1
                  sltu         s0, t3, a3
                  xori         a1, a4, 274
                  bne          gp, t0, 258f
                  sra          t6, a5, a1
                  slt          a7, s7, t6
                  and          s8, s0, s2
                  andi         s1, a0, 1579
                  xor          sp, t4, s2
                  xor          t2, t3, s11
248:              xor          gp, gp, ra
                  nop
                  lui          s2, 954893
                  xori         a6, s3, 254
                  bne          t6, tp, 265f
                  sltu         s3, t0, a1
                  sub          s6, a4, sp
                  beq          s4, a2, 271f
                  lui          zero, 272968
                  bltu         a0, sp, 263f
258:              or           a1, s8, s0
                  lui          a5, 338317
                  xori         s11, s4, -1491
                  beq          t6, s8, 263f
                  addi         s3, t5, 601
263:              srl          t4, a1, t2
                  xori         zero, t4, -1859
265:              beq          tp, a2, 274f
                  slti         a2, s9, 777
                  lui          t0, 837030
                  sltu         s0, ra, s4
                  bne          a2, a0, 272f
                  sltu         gp, t4, s11
271:              addi         zero, s8, 959
272:              andi         s7, tp, 1197
                  andi         s8, a6, -1677
274:              or           s6, a5, s2
                  sltiu        s6, a2, -816
                  add          tp, t3, gp
                  blt          a7, s9, 281f
                  slt          s4, a7, s0
                  bgeu         t2, a4, 291f
                  sltiu        ra, a7, 2046
281:              slli         gp, t3, 2
                  auipc        s11, 459366
                  sll          a3, t1, s2
                  sub          a5, a7, zero
                  srl          a7, ra, t2
                  xori         s8, a6, -401
                  slti         t2, t6, -775
                  slt          t0, t4, s4
                  bltu         a4, gp, 306f
                  srl          a2, t0, zero
291:              srli         s4, s5, 29
                  andi         a2, t2, -1817
                  la           sp, region_1+1693 #start riscv_load_store_rand_instr_stream_4
                  lbu          a3, 1(sp)
                  srli         t3, s7, 10
                  sll          t4, t1, zero
                  or           ra, s9, sp
                  auipc        t5, 967318
                  xor          s1, s10, s2
                  xori         s4, t4, -1523
                  lbu          ra, 39(sp)
                  lbu          s6, -30(sp)
                  lb           s3, -24(sp)
                  auipc        t5, 277330
                  srli         a7, a2, 15
                  xor          ra, s5, a2
                  andi         s3, s1, 303
                  lh           a1, 37(sp)
                  lui          a2, 792976
                  lhu          t5, -45(sp)
                  slli         s10, t5, 0
                  lw           t3, 47(sp)
                  lhu          s4, -49(sp)
                  ori          a7, s8, -526
                  addi         s7, tp, 1746
                  lbu          a2, 63(sp)
                  lui          s1, 359740
                  lbu          a7, 50(sp)
                  sub          s1, t1, t4
                  andi         t5, t5, 1233
                  sb           s10, 34(sp)
                  andi         t2, zero, -354
                  or           s2, a4, gp
                  add          s0, t4, t5
                  lhu          tp, 49(sp) #end riscv_load_store_rand_instr_stream_4
                  bne          ra, s6, 295f
                  sra          s7, s0, t0
295:              add          s0, s8, s7
                  slt          a3, s7, s0
                  bge          t4, gp, 305f
                  srai         a5, s6, 10
                  lui          t5, 835696
                  srli         s8, s0, 7
                  sra          sp, s6, sp
                  sub          s9, tp, t0
                  lui          s0, 566647
                  and          a5, s3, a6
305:              sltu         a7, zero, t5
306:              slt          zero, a2, t4
                  sub          s0, a6, s11
                  or           tp, t0, a0
                  or           s1, ra, zero
                  sub          sp, s11, s1
                  blt          s0, zero, 328f
                  and          s4, t6, s3
                  sltu         sp, s8, s4
                  sll          t6, a4, t0
                  sltu         a0, s9, t0
                  addi         t0, a6, -109
                  bne          s4, tp, 337f
                  nop
                  sub          a5, a3, a5
                  xor          t4, zero, s2
                  auipc        s11, 973478
                  nop
                  srai         s7, s3, 31
                  bne          zero, s2, 327f
                  srli         s2, zero, 5
                  srl          s1, gp, s6
327:              auipc        a3, 688645
328:              slt          t2, a4, t4
                  sltu         a3, t1, a1
                  auipc        tp, 73054
                  bltu         t6, s8, 347f
                  sub          t2, sp, t3
                  sra          s1, ra, gp
                  srli         a1, gp, 27
                  srli         sp, t3, 30
                  slti         a5, a5, -1719
337:              bge          s7, ra, 343f
                  sltiu        ra, t2, 892
                  blt          ra, t5, 358f
                  lui          s9, 187581
                  andi         a5, s4, 1373
                  sltu         t4, s4, s3
343:              slli         t6, s7, 8
                  sra          ra, t4, a1
                  and          s6, s5, t5
                  xori         sp, s6, -1290
347:              beq          a5, t3, 356f
                  sub          tp, s9, a5
                  blt          s3, t2, 366f
                  blt          s10, a5, 356f
                  sub          a3, s10, s0
                  addi         s2, s8, -752
                  and          t2, s11, s5
                  lui          gp, 447933
                  and          s9, t2, s0
356:              sltiu        a1, t3, -264
                  add          t6, a5, t3
358:              srli         s11, a6, 18
                  sra          zero, s7, s7
                  slt          s0, a0, s1
                  xor          a0, s0, tp
                  sra          s11, ra, t1
                  bge          ra, t5, 375f
                  bgeu         s6, t2, 384f
                  srai         t6, tp, 24
366:              sll          a2, a4, a2
                  andi         t6, s0, 1301
                  add          s11, a5, s11
                  beq          a2, t0, 382f
                  xori         ra, a1, -1155
                  bltu         s6, t4, 379f
                  bne          t1, a5, 382f
                  sra          t5, s10, a5
                  bne          s3, s9, 391f
375:              sra          s3, t4, a6
                  slt          t2, a4, s4
                  sub          t6, s5, a1
                  bgeu         gp, t1, 383f
379:              slti         t5, s11, 2041
                  xor          t3, gp, s3
                  bge          a1, a5, 384f
382:              sub          zero, a3, sp
383:              sltiu        a7, s6, 376
384:              srai         s8, a0, 26
                  andi         a1, s11, -897
                  slli         s1, s9, 2
                  ori          s3, s9, -1930
                  srl          sp, t3, a7
                  addi         zero, t5, -1827
                  srl          sp, s10, s3
391:              slti         s11, ra, -277
                  srai         t5, s1, 16
                  beq          a0, a1, 399f
                  ori          t5, s4, -1168
                  xori         gp, t6, -200
                  sra          s8, t1, s7
                  addi         s0, s7, 1448
                  sub          a6, s9, t1
399:              nop
                  addi         s0, a1, 922
                  or           sp, s8, t4
                  beq          t4, a6, 408f
                  and          s10, ra, s0
                  blt          zero, s5, 420f
                  lui          s9, 146974
                  blt          a6, s3, 410f
                  srai         a5, s8, 3
408:              nop
                  bge          a5, s5, 426f
410:              or           t0, t2, s6
                  slti         t6, t0, 1494
                  srli         t3, s0, 11
                  lui          s1, 870602
                  slti         a0, sp, 2004
                  bge          ra, s11, 429f
                  sub          s1, t6, a6
                  sub          s1, a7, s1
                  beq          s4, t5, 427f
                  ori          tp, s8, -611
420:              bge          t1, s8, 422f
                  bgeu         t0, s10, 425f
422:              sra          s9, t2, a2
                  bltu         t3, a5, 425f
                  beq          t4, s6, 427f
425:              slli         t6, s3, 14
426:              bgeu         a6, s11, 427f
427:              slt          a5, t3, s5
                  srai         s1, s3, 0
429:              sub          t5, a0, a6
                  andi         t2, s5, 742
                  ori          a7, sp, 968
                  auipc        t5, 49
                  bne          a5, a1, 449f
                  sub          t2, t6, a1
                  sra          ra, s3, a2
                  xor          t2, s10, a2
                  bge          t3, s11, 453f
                  add          a3, s8, a3
                  lui          s2, 940852
                  sltu         ra, t5, zero
                  ori          s9, t6, 1412
                  or           s8, s8, s1
                  lui          s6, 707845
                  add          sp, a6, s0
                  sll          sp, a3, s0
                  srli         s1, a5, 0
                  slt          a6, s0, s0
                  sltu         s6, s0, t6
449:              slti         s4, s3, 642
                  ori          t4, s3, 912
                  addi         a1, s8, 223
                  ori          s2, gp, 909
453:              beq          s7, s9, 467f
                  andi         s2, zero, 195
                  slli         s4, t4, 6
                  srai         tp, t3, 2
                  blt          s6, s10, 459f
                  slti         s6, s4, -463
459:              bgeu         a5, s2, 461f
                  sltu         s4, a6, s1
461:              beq          a5, s8, 474f
                  sra          s0, t0, a4
                  srli         sp, s0, 18
                  slti         s3, s1, -1406
                  ori          a1, s9, -1815
                  bgeu         s4, s8, 479f
467:              auipc        a0, 403763
                  srai         tp, t3, 21
                  blt          s7, a6, 486f
                  srl          s9, s1, t1
                  ori          s2, a4, -286
                  xori         t2, s6, 688
                  ori          t2, zero, 53
474:              srli         t5, s11, 9
                  slti         a5, a7, -271
                  ori          a5, tp, 231
                  slt          a7, a2, t6
                  bgeu         t1, zero, 494f
479:              beq          zero, a3, 492f
                  beq          gp, a4, 483f
                  srai         s9, s1, 1
                  bgeu         s11, t3, 494f
483:              sll          s0, zero, zero
                  add          a1, gp, a0
                  lui          s2, 133452
486:              srai         s8, s7, 12
                  lui          s1, 60438
                  ori          t3, s8, 1762
                  xori         gp, s10, 171
                  nop
                  xor          a2, ra, s1
492:              sra          s1, t0, t4
                  andi         s10, a4, 1902
                  la           a5, sub_8
                  srai         s4, ra, 5
                  addi         a5, a5, 941
                  lui          a1, 281295
                  bge          s5, tp, sub_6_j11 #branch to jump instr
                  ori          ra, a3, -764
                  andi         s10, t0, -419
sub_6_j11:        jalr         ra, a5, -940 #jump sub_6 -> sub_8
                  slti         ra, t0, 581
494:              auipc        s1, 828598
                  andi         a0, ra, 610
                  bge          s8, a0, 516f
                  bltu         s1, s9, 500f
                  blt          a2, tp, 506f
                  or           s2, a4, a6
500:              bne          ra, t3, 506f
                  blt          t0, a2, 506f
                  bgeu         s0, s1, 504f
                  bltu         a0, tp, 517f
504:              auipc        t6, 649448
                  slt          t2, s5, s0
506:              bge          s0, a0, 520f
                  slli         t0, t1, 2
                  auipc        a3, 1001008
                  ori          s4, s7, -1020
                  xori         s8, a6, 899
                  slt          s4, t0, t0
                  bltu         s1, t1, 528f
                  auipc        t5, 992050
                  bne          s11, sp, 515f
515:              add          s10, t1, t4
516:              xor          t2, s7, t6
517:              and          sp, a4, a4
                  xor          a5, t5, t4
                  auipc        t3, 646187
520:              slli         sp, tp, 11
                  slli         tp, t1, 26
                  sub          s9, s4, s6
                  slli         s1, s5, 16
                  beq          t6, s6, 541f
                  add          t4, gp, s6
                  bne          s8, s10, 532f
                  slti         a3, a2, -83
528:              bge          s10, s8, 530f
                  bltu         s10, s8, 535f
530:              or           s1, ra, t3
                  xor          t0, s1, s3
532:              slti         s1, a2, 191
                  sltu         s0, t4, t5
                  nop
535:              or           t0, a3, s9
                  sub          s6, t4, ra
                  blt          a4, s6, 556f
                  lui          a5, 354571
                  lui          s8, 477549
                  auipc        s8, 229111
541:              srl          a5, s8, s0
                  srli         t0, s2, 18
                  nop
                  xori         gp, s4, -1401
                  blt          s11, t6, 547f
                  srli         sp, s2, 29
547:              srai         sp, s2, 28
                  add          s7, t3, tp
                  auipc        tp, 720035
                  sltiu        s2, a1, -1748
                  slti         s9, a0, -2014
                  sll          zero, s7, s7
                  sltu         a3, gp, s7
                  bne          t6, t4, 563f
                  slti         a1, t0, 388
556:              or           t6, ra, t4
                  xori         s1, t1, -375
                  srli         t0, a3, 7
                  beq          s7, a7, 576f
                  sltiu        a0, a7, -641
                  sltiu        a3, tp, 497
                  srli         s9, s8, 11
563:              blt          t2, sp, 567f
                  srl          t6, s8, a2
                  bltu         ra, s6, 581f
                  xor          s3, sp, a0
567:              and          s4, zero, a1
                  sub          a1, gp, a6
                  xori         a7, t6, 663
                  slti         gp, s1, 21
                  sra          tp, t2, t3
                  sub          s9, s1, t3
                  slt          a2, s9, s0
                  sltiu        t3, t2, -875
                  addi         s1, s2, 1819
576:              slt          ra, s5, s1
                  srli         s6, sp, 22
                  and          a5, a2, s2
                  andi         a7, t0, 529
                  and          tp, t3, s5
581:              sll          zero, s8, t3
                  andi         a5, a3, -817
                  srai         t3, a0, 28
                  bgeu         a2, zero, 588f
                  sll          s6, t1, a1
                  xor          s9, s3, a4
                  srli         a7, a0, 2
588:              add          tp, s4, s0
                  srai         a2, t1, 22
                  sll          s9, a5, s0
                  and          zero, a6, s2
                  nop
                  bne          a3, s1, 602f
                  add          tp, t2, s5
                  and          sp, a4, s2
                  slli         a5, t4, 13
                  bltu         t4, t6, 607f
                  sll          t0, s1, a2
                  sltiu        a3, t4, 238
                  auipc        sp, 808236
                  sltiu        a5, a7, 1641
602:              bge          s9, s1, 604f
                  beq          s1, t0, 605f
604:              beq          t6, a7, 607f
605:              auipc        s10, 915156
                  beq          s9, s4, 608f
607:              srai         t5, s4, 26
608:              sra          a1, s5, s6
                  auipc        t4, 912071
                  bne          s8, tp, 630f
                  auipc        t0, 313679
                  slli         sp, zero, 2
                  beq          t1, s10, 629f
                  sltu         t2, s5, t6
                  sll          s10, a4, t1
                  xor          a6, a1, t0
                  slt          s10, a4, a2
                  sll          a5, zero, s11
                  sub          a3, a6, a6
                  lui          gp, 80613
                  sra          a7, a7, t6
                  auipc        s9, 907488
                  sltiu        s10, sp, -463
                  sll          t2, s11, s7
                  ori          gp, zero, -1943
                  blt          a0, t4, 631f
                  sra          t4, zero, s11
                  srli         a6, s9, 15
629:              sub          s10, t6, s5
630:              slti         s11, s2, -1496
631:              sub          sp, a4, a4
                  bge          s1, a2, 633f
633:              auipc        a5, 294225
                  nop
                  bne          a0, gp, 648f
                  srl          s3, ra, s2
                  sub          a1, gp, t4
                  slli         s10, s5, 8
                  bltu         a0, s10, 648f
                  sll          t2, t3, t4
                  slt          t6, t1, t5
                  srl          a2, tp, a1
                  sra          s9, s10, tp
                  ori          s6, s0, 125
                  srai         t0, ra, 28
                  blt          s8, s6, 665f
                  and          s11, s3, s7
648:              srli         s2, s11, 31
                  sra          s11, s7, a3
                  and          s7, s1, tp
                  andi         s10, gp, 1775
                  and          s4, zero, a1
                  add          t4, a1, s10
                  slli         s3, a7, 24
                  slti         s7, s7, -811
                  sub          t5, s5, a1
                  and          t4, s8, t5
                  bgeu         s2, sp, 661f
                  bge          a6, s5, 675f
                  sltu         s4, zero, s6
661:              blt          a4, t6, 678f
                  sra          tp, a2, s0
                  xor          s8, s1, a7
                  srl          t4, ra, s8
665:              srai         a2, a3, 12
                  srai         s10, s4, 5
                  blt          s6, s1, 683f
                  beq          s9, s9, 674f
                  ori          a7, s5, -1190
                  bge          t5, s8, 676f
                  andi         a5, t2, -1896
                  sub          sp, s5, gp
                  sltiu        a3, a7, 1765
674:              xori         tp, a7, -1585
675:              auipc        s8, 19965
676:              bltu         s8, gp, 683f
                  or           s4, a5, a4
678:              bne          t6, t6, 680f
                  sra          tp, zero, ra
680:              slt          s11, gp, a4
                  and          t3, t0, s7
                  ori          t2, t0, -1570
683:              slt          tp, t0, t6
                  lw           ra, 4(a4)
                  slli         t3, tp, 25
                  addi         a4, a4, 48
                  addi         s8, gp, -848
                  addi         s1, s9, -1207
929:              addi x30, x1, 1
929:              jalr x30, x30, 0
sub_5:            and          s8, s0, t5
                  sra          t3, a2, sp
                  nop
                  nop
                  slti         s6, a5, -109
                  addi         a4, a4, -12
                  sll          t6, a3, t3
                  nop
                  slli         s2, a7, 21
                  sw           ra, 4(a4)
                  and          a5, s0, s6
                  sltiu        a3, a3, -1494
                  la           sp, region_0+1595 #start riscv_load_store_rand_instr_stream_2
                  add          a1, s9, zero
                  srli         s10, t6, 27
                  sw           a0, -47(sp)
                  sltiu        a3, s0, 624
                  auipc        a2, 626252
                  srl          t4, s9, a2
                  ori          t0, s11, -1866
                  sub          a6, s10, a6
                  sb           s8, -64(sp)
                  slt          a6, t2, s4
                  lh           t2, 59(sp)
                  xori         s8, gp, -594
                  add          t3, t0, s4
                  add          s0, a3, ra
                  ori          a6, t3, -1274
                  sltiu        a5, zero, 183
                  sh           sp, -11(sp)
                  sltu         t5, t3, a0
                  slt          a5, a7, s2
                  sub          s6, s11, tp
                  lw           a7, 29(sp)
                  slt          t5, s5, s1
                  lb           a1, -52(sp)
                  slti         a5, zero, -1860
                  srli         s0, zero, 26
                  srli         a7, a0, 4
                  and          s9, zero, s5
                  sw           t1, -51(sp)
                  sh           a0, 57(sp)
                  sb           sp, 2(sp)
                  lbu          s1, -38(sp)
                  lh           t2, 31(sp)
                  lh           a0, 29(sp)
                  lb           s3, 52(sp)
                  slt          s1, s10, s11
                  lbu          t4, 30(sp)
                  lbu          a7, -13(sp)
                  lbu          s4, -8(sp)
                  sb           s8, 44(sp) #end riscv_load_store_rand_instr_stream_2
                  la           ra, region_0+1823 #start riscv_load_store_rand_instr_stream_0
                  lui          t2, 765780
                  sh           s0, 79(ra)
                  lhu          s6, -175(ra)
                  srai         s10, a4, 12
                  nop
                  sh           a5, -219(ra)
                  lw           a7, -235(ra)
                  sltiu        s11, tp, -1875
                  lb           tp, -234(ra)
                  and          zero, s1, s11
                  srl          t4, t3, s1
                  lb           s10, -246(ra)
                  sub          a1, a4, t4
                  lbu          s3, 175(ra)
                  ori          s11, s8, -1505
                  addi         t3, s6, 1716
                  sra          a1, s7, s5
                  addi         t5, a6, -1489
                  lui          s10, 61759
                  sra          a2, zero, a7
                  sltu         t0, s1, a1
                  slt          gp, s2, t6
                  sltu         t2, t0, a4
                  and          a6, t2, s0
                  sb           t0, -173(ra)
                  srl          t0, t4, a1
                  sltiu        a5, a2, -1674
                  sltu         a7, s9, s2
                  nop
                  sb           a7, 79(ra)
                  nop
                  and          s9, a7, s8
                  sb           s2, 71(ra)
                  slti         tp, s5, -629
                  slti         zero, a1, 433
                  xor          s2, a3, zero
                  lb           a0, 90(ra) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_0+889 #start riscv_load_store_rand_instr_stream_1
                  xor          a7, s3, s5
                  xori         t3, a3, 680
                  slli         s8, t4, 25
                  lb           s0, 34(sp)
                  srai         ra, s2, 12
                  srl          s9, t4, a2
                  addi         a0, t0, -654
                  lbu          a6, -4(sp)
                  addi         s9, s6, -1067
                  sra          s3, a3, t0
                  sll          s11, a1, a0
                  addi         t6, a7, 268
                  or           a5, t5, t0
                  sb           t4, 56(sp)
                  lbu          a1, -10(sp)
                  slt          a1, t3, t2
                  sb           s10, 50(sp)
                  sra          a7, t1, ra
                  auipc        a0, 21463
                  lui          s3, 145847
                  srl          s11, t5, a4
                  lb           gp, 60(sp)
                  nop
                  srai         s8, s9, 20
                  sb           a0, -4(sp)
                  lbu          s6, -37(sp)
                  sb           a4, 15(sp)
                  lbu          t3, 8(sp)
                  nop
                  nop
                  sub          a3, t3, a7
                  auipc        a2, 540629
                  and          a6, t0, a3
                  xor          a6, ra, a6
                  xor          t4, t5, s8
                  sltiu        s1, t2, 912
                  lbu          s6, -40(sp)
                  addi         s0, s4, -1007
                  lbu          zero, -23(sp) #end riscv_load_store_rand_instr_stream_1
                  slti         a1, t2, -1086
                  srai         tp, sp, 14
                  bge          a7, a6, 4f
                  lui          s7, 445321
4:                slt          s7, s6, a1
                  auipc        zero, 403078
                  addi         t5, tp, 405
                  slli         a7, s2, 27
                  slli         s1, gp, 10
                  sltu         ra, zero, s7
                  sll          sp, a1, a0
                  or           sp, s0, s8
                  sltu         t5, a3, t3
                  ori          t6, s3, -730
                  sra          a1, ra, tp
                  xori         sp, sp, -1126
                  xor          s0, a5, tp
                  ori          s1, t6, -1156
                  slt          s8, gp, s11
                  bne          t2, tp, 25f
                  auipc        s6, 333522
                  slt          s11, t4, ra
                  xor          a5, s2, tp
                  slli         s11, a4, 25
                  slt          a7, t3, t1
25:               andi         a3, s2, -611
                  xor          ra, zero, s6
                  bne          sp, t0, 31f
                  nop
                  srli         a7, s11, 15
                  srli         a2, a5, 21
31:               xor          a0, t5, a1
                  addi         t5, a2, 852
                  addi         a2, a5, 273
                  ori          a6, a0, -626
                  srli         a1, t2, 22
                  lui          t0, 918951
                  blt          t3, t4, 54f
                  bltu         t1, a3, 46f
                  bgeu         ra, s10, 58f
                  srli         gp, t2, 23
                  andi         s4, s3, 1796
                  lui          s2, 941150
                  auipc        s4, 308556
                  srai         s9, s9, 22
                  sltu         t3, zero, sp
46:               and          ra, t4, t2
                  ori          s3, tp, 330
                  sltu         t4, s11, a4
                  or           s7, s11, s7
                  xor          zero, s0, t2
                  srli         s9, a0, 13
                  beq          s1, a6, 62f
                  bge          a6, s8, 61f
54:               sub          t6, sp, s3
                  srli         s8, s10, 14
                  sltu         tp, t6, t4
                  sltiu        zero, s5, 1764
58:               sltiu        t4, s11, 553
                  sll          a1, a2, s2
                  sltiu        sp, a6, -1143
61:               sra          tp, s11, a1
62:               xori         a1, a3, -1457
                  sll          s9, t6, t5
                  or           s7, s5, t5
                  auipc        s4, 601528
                  or           tp, s2, zero
                  nop
                  addi         s0, s9, 1850
                  nop
                  xori         a0, s10, 1134
                  lui          t0, 867284
                  add          a3, s8, s4
                  blt          s10, a2, 92f
                  add          ra, a6, t6
                  ori          zero, s9, 623
                  slti         s11, sp, -1742
                  add          a7, t4, a4
                  sll          s11, a5, s0
                  sll          s10, s4, gp
                  bltu         t3, s10, 98f
                  sltu         t3, s9, a3
                  srl          s7, a5, a0
                  slli         s3, a0, 15
                  sltiu        s8, a3, 411
                  ori          t6, sp, 99
                  sltu         t5, t6, a5
                  and          a7, t3, a0
                  bge          gp, t2, 92f
                  andi         tp, s6, 67
                  bge          a6, a2, 107f
                  sra          s8, t6, a5
92:               slti         s7, t0, 1713
                  bgeu         s8, sp, 111f
                  bltu         s6, s10, 103f
                  bltu         gp, s6, 101f
                  addi         a7, a1, -74
                  slli         t4, t4, 27
98:               bltu         s0, t2, 108f
                  bne          t6, s6, 106f
                  srl          s8, s11, s7
101:              slli         t5, s0, 16
                  srli         s2, a1, 26
103:              auipc        s2, 707757
                  srli         tp, s8, 12
                  sltu         s9, t1, a1
106:              sltiu        s2, a0, 1834
107:              srl          t3, t3, a4
108:              sll          s10, a6, s8
                  sltu         s1, s4, s1
                  xori         s1, zero, 1271
111:              beq          s2, s1, 114f
                  auipc        a1, 615466
                  lui          sp, 766059
114:              xori         t2, s11, -1528
                  srai         s9, s0, 18
                  srl          s10, s11, gp
                  sra          s3, s3, t0
                  ori          t2, s1, -373
                  xori         a7, gp, -337
                  bgeu         s8, a3, 138f
                  sra          ra, tp, t3
                  sltu         s7, s6, s6
                  or           a3, s0, s4
                  sltiu        s6, sp, -279
                  bge          s3, s7, 130f
                  beq          t2, t5, 141f
                  add          ra, t5, s7
                  and          a1, a7, t3
                  sltu         s7, s5, t3
130:              srli         a0, ra, 30
                  bgeu         a1, s11, 132f
132:              sltu         s7, a6, t0
                  sra          sp, s9, a3
                  auipc        t3, 716631
                  srai         a6, a2, 14
                  slli         s6, a0, 13
                  or           s8, t5, a2
138:              srl          ra, t0, t0
                  sub          zero, a1, tp
                  xori         a7, a7, -50
141:              srli         s2, a3, 24
                  addi         s8, tp, -1682
                  sltu         tp, s9, s6
                  sra          a1, s11, sp
                  slt          s8, sp, s6
                  srai         t6, ra, 10
                  sra          a0, a5, tp
                  slti         s8, s0, 1857
                  add          gp, a7, ra
                  bltu         s2, t0, 162f
                  sltiu        a2, s3, 1409
                  lui          s8, 1047245
                  srl          s8, a7, tp
                  lui          s2, 292028
                  xor          t6, a0, t3
                  xor          t4, t4, gp
                  and          t4, a1, t4
                  xor          a7, a7, s3
                  bne          s0, t4, 163f
                  lui          s9, 959247
                  slli         a6, sp, 4
162:              and          s11, s7, gp
163:              add          s6, a4, a5
                  nop
                  sltiu        s8, s0, -1455
                  and          zero, s9, s4
                  bgeu         s0, a7, 181f
                  sltu         sp, s6, a4
                  sltiu        a1, s5, -18
                  srai         t6, sp, 18
                  sltiu        zero, a3, -350
                  sll          t4, s8, a7
                  bge          t2, a5, 192f
                  xori         a2, s6, 1586
                  bne          s10, t5, 188f
                  srl          a7, t4, a2
                  slli         ra, s6, 14
                  ori          a6, t1, -993
                  nop
                  nop
181:              bltu         t1, s2, 187f
                  addi         gp, t4, 1261
                  slt          a5, sp, a5
                  slti         t3, s6, -1728
                  nop
                  xor          a5, a7, s2
187:              sll          gp, sp, t3
188:              bltu         t0, t4, 201f
                  or           s4, zero, t2
                  slt          a0, s1, s7
                  sll          s10, s3, a4
192:              blt          t0, a5, 210f
                  sra          s3, s3, t5
                  or           t3, s6, sp
                  addi         ra, s0, 131
                  slt          t4, s10, tp
                  bgeu         s4, t0, 210f
                  slti         s6, s11, 902
                  sltu         t4, a6, gp
                  ori          sp, s5, -1443
201:              srl          sp, t2, s10
                  ori          ra, s7, -1120
                  beq          s2, s8, 218f
                  xori         s4, s0, 81
                  blt          tp, sp, 209f
                  bne          s5, s10, 223f
                  andi         a0, s5, -836
                  bltu         a5, zero, 226f
209:              ori          zero, a4, 993
210:              beq          s8, t6, 216f
                  sltu         a7, t4, s5
                  sltiu        t2, s4, 50
                  sub          a1, a1, s10
                  sub          a6, s3, tp
                  sra          t5, s0, s5
216:              and          a2, zero, s7
                  sltu         sp, t3, s10
218:              bgeu         ra, t2, 236f
                  ori          a0, s1, -1694
                  bge          a5, t5, 238f
                  bltu         s7, ra, 224f
                  blt          t5, s7, 239f
223:              or           s8, a4, a2
224:              srli         a2, t2, 6
                  bge          a5, s2, 244f
226:              srli         tp, s11, 15
                  or           zero, s7, t6
                  sll          s11, gp, a3
                  ori          a0, t1, -1372
                  bltu         ra, zero, 232f
                  beq          t1, s4, 232f
232:              ori          s10, s8, 328
                  lui          gp, 907411
                  xor          gp, a0, a5
                  blt          t1, a0, 245f
236:              nop
                  sub          t3, s1, t4
238:              andi         t5, s8, 426
239:              lui          s2, 250598
                  addi         t3, s5, 666
                  addi         a3, zero, -1914
                  bne          a1, s2, 246f
                  slli         ra, s7, 24
244:              andi         s9, sp, -2033
245:              slt          tp, s3, s7
246:              slt          s8, t0, a1
                  add          t4, zero, s7
                  xori         t6, gp, 825
                  and          s11, s8, s8
                  addi         t4, t2, 1882
                  srai         ra, zero, 7
                  bltu         s9, t5, 271f
                  bge          tp, tp, 259f
                  sra          ra, a6, tp
                  add          sp, a5, t5
                  and          tp, a0, ra
                  nop
                  slli         s1, t2, 13
259:              srl          s11, t5, s0
                  slli         s4, t4, 12
                  blt          t5, s7, 268f
                  andi         a2, sp, 1594
                  slti         sp, zero, -540
                  sltiu        s7, s1, -1839
                  srli         s6, s8, 28
                  andi         s1, s1, 838
                  beq          s11, a2, 286f
268:              srl          a3, t2, t2
                  srai         a2, ra, 28
                  bge          s2, s7, 275f
271:              srl          s6, sp, s3
                  sra          t4, s4, sp
                  sltiu        s6, t3, -2007
                  xori         gp, s9, 893
275:              andi         ra, s3, -2018
                  sra          s1, a7, s8
                  auipc        t2, 195541
                  sra          t4, t3, a2
                  sub          gp, s7, a2
                  beq          s1, a5, 289f
                  and          s0, s2, s11
                  sra          s0, s0, s6
                  sra          s9, t5, a2
                  auipc        s3, 918436
                  lui          zero, 523892
286:              srl          gp, a0, s4
                  slt          s8, t4, s10
                  xor          a1, s0, tp
289:              sll          ra, s9, t5
                  srl          a7, a2, t1
                  beq          a3, a3, 303f
                  bge          t5, t0, 310f
                  nop
                  srli         s0, a1, 26
                  auipc        t0, 457249
                  sra          zero, t6, s9
                  sll          s2, sp, a6
                  nop
                  xor          sp, a1, s4
                  and          a6, s9, s0
                  slli         t4, t1, 23
                  andi         t6, gp, -1355
303:              srl          t5, s5, t6
                  auipc        s0, 195330
                  bltu         s6, s9, 315f
                  add          s10, t4, s6
                  blt          t5, s6, 321f
                  bltu         a3, s4, 321f
                  bgeu         s0, t3, 317f
310:              andi         zero, t6, 1188
                  sra          s6, sp, s5
                  add          s0, sp, t1
                  addi         t4, s6, 1939
                  srli         a3, s11, 15
315:              beq          a3, s7, 323f
                  bltu         s2, s11, 322f
317:              nop
                  sltiu        s11, a2, 627
                  srai         s8, a4, 31
                  auipc        s11, 352019
321:              sltu         tp, a3, s6
322:              bgeu         t2, zero, 326f
323:              srl          tp, t4, s10
                  slt          a1, a7, t3
                  beq          gp, s0, 335f
326:              addi         s4, zero, 514
                  sltiu        s2, a4, -1290
                  bge          a5, ra, 335f
                  srl          s0, a0, s11
                  sltiu        a1, a6, -199
                  addi         ra, t0, -1922
                  slli         a0, gp, 24
                  xori         sp, s9, 1772
                  addi         a5, t2, -1118
335:              lui          zero, 313238
                  sra          t0, ra, a0
                  addi         t4, s3, -944
                  sub          s1, s5, s8
                  sub          s4, t3, t4
                  sra          s1, t2, a0
                  srli         s3, s10, 29
                  add          a2, s11, tp
                  bne          s10, a3, 358f
                  bgeu         t1, s3, 356f
                  ori          ra, t4, -1852
                  xor          sp, s5, ra
                  srl          gp, s3, s7
                  srl          zero, a7, a0
                  xor          ra, zero, s10
                  nop
                  sltu         zero, a3, a5
                  bne          ra, a0, 366f
                  or           zero, s0, zero
                  xor          s11, tp, s0
                  or           a7, s3, zero
356:              xori         a3, s7, 1940
                  andi         s6, zero, -1629
358:              bge          t3, sp, 364f
                  srl          gp, tp, zero
                  sltiu        t0, a4, 1875
                  ori          a6, t6, 999
                  xori         a1, s10, 85
                  add          t6, ra, a5
364:              srai         t6, a6, 22
                  bne          gp, s1, 384f
366:              xori         a6, ra, 1183
                  sra          s10, t0, t1
                  bltu         a2, tp, 370f
                  srl          s10, a5, s0
370:              bltu         a7, s0, 383f
                  andi         s1, s3, 0
                  xor          a6, a5, t0
                  slt          t5, ra, a3
                  bge          s9, a4, 391f
                  bne          s0, s2, 381f
                  blt          s7, t3, 377f
377:              srl          s10, t4, gp
                  add          gp, s1, t0
                  sra          s4, s3, s9
                  bltu         t3, s5, 383f
381:              blt          a2, t4, 386f
                  nop
383:              blt          t5, a2, 402f
384:              sll          tp, a1, t1
                  bgeu         a6, a2, 389f
386:              nop
                  bgeu         s4, s8, 395f
                  beq          sp, sp, 394f
389:              slt          a0, s4, s2
                  sltu         s10, s10, s5
391:              bgeu         s7, s7, 395f
                  slt          s10, t1, zero
                  addi         s10, a6, 346
394:              sltu         a7, s8, ra
395:              bne          a4, a3, 413f
                  ori          s7, s6, 1106
                  add          ra, s6, a2
                  ori          zero, t0, 1999
                  and          s1, gp, a7
                  slt          a2, sp, ra
                  add          a3, a2, a0
402:              bne          t3, t4, 406f
                  slt          t6, s8, a0
                  srli         a3, s0, 24
                  nop
406:              sltu         a3, sp, t6
                  sll          t3, s5, zero
                  srli         t0, t2, 12
                  bge          s10, s10, 427f
                  ori          t5, t0, -413
                  addi         s3, s8, -573
                  slt          s1, a3, s3
413:              nop
                  bgeu         sp, a3, 432f
                  bge          zero, s6, 434f
                  lui          a1, 867696
                  blt          s6, gp, 425f
                  srli         t4, s7, 1
                  slti         s10, a0, 26
                  slti         s4, t6, 2007
                  lui          sp, 911785
                  lui          a2, 501995
                  sll          s2, s9, s0
                  auipc        s3, 446528
425:              addi         t3, t4, -1245
                  beq          a6, a4, 439f
427:              slli         s8, t1, 0
                  bne          a2, s11, 446f
                  bgeu         s2, s0, 438f
                  add          a3, t5, t1
                  addi         a5, s1, -1255
432:              bltu         s9, s1, 442f
                  xori         a2, zero, 1199
434:              srli         s9, a7, 29
                  lui          gp, 611088
                  sub          tp, s10, ra
                  bgeu         a2, a7, 454f
438:              or           t3, t6, s8
439:              sll          s11, a7, s11
                  bltu         s5, s3, 444f
                  bltu         s3, s11, 448f
442:              sub          s3, sp, zero
                  bge          s1, s1, 453f
444:              or           gp, s10, tp
                  addi         s1, t1, 1767
446:              blt          zero, a3, 465f
                  sltu         s0, s0, a6
448:              nop
                  blt          t0, ra, 468f
                  bltu         a7, zero, 459f
                  srai         s10, a4, 9
                  sll          s0, a7, a6
453:              srl          t0, s6, s8
454:              andi         s4, s11, 966
                  slti         t4, t6, 623
                  srai         ra, a7, 13
                  andi         s9, zero, -1724
                  andi         s8, t6, -464
459:              xori         tp, a4, 1239
                  slti         t2, a5, 682
                  sltu         a2, s11, s9
                  slt          sp, s5, a6
                  xor          t0, a5, a6
                  sltiu        s0, s8, 335
465:              slli         t3, a3, 6
                  sltu         tp, s3, a1
                  or           a3, a1, t1
468:              slli         a1, a2, 3
                  srl          sp, sp, sp
                  lui          tp, 331950
                  lui          t2, 216415
                  srli         t4, a0, 2
                  lw           ra, 4(a4)
                  slt          s6, a6, ra
                  nop
                  slli         s6, s10, 29
                  addi         a4, a4, 12
                  or           s10, s3, s7
609:              addi x2, x1, 1
609:              jalr x2, x2, 0
sub_7:            bltu         t4, tp, sub_7_stack_p
                  sltiu        s2, s8, -351
                  ori          a0, t5, -1462
                  srl          zero, s7, a1
                  sra          s11, s2, a4
                  add          s4, a0, s3
                  lui          t2, 440508
                  or           a1, t4, a0
sub_7_stack_p:    addi         a4, a4, -16
                  sw           ra, 4(a4)
                  andi         t0, s1, 877
                  slti         a6, a2, -485
                  la           sp, region_1+1811 #start riscv_load_store_rand_instr_stream_0
                  lw           ra, -3(sp)
                  lb           t3, -14(sp)
                  or           a3, s10, s9
                  ori          tp, s1, 1379
                  sb           s4, 4(sp)
                  srl          t0, zero, ra
                  sltu         t5, a3, t4
                  andi         a5, t0, -1870
                  xori         t4, a3, 851
                  lbu          t5, 4(sp)
                  slt          s6, s4, s0
                  srai         a2, s11, 26
                  lb           a3, -8(sp)
                  or           zero, s1, s10
                  srli         s3, tp, 2
                  sb           t5, 12(sp)
                  lbu          a1, -16(sp)
                  srli         a3, a0, 31
                  auipc        t0, 272083
                  sra          a6, s1, a6
                  slti         zero, s2, 685
                  andi         tp, a0, -158
                  lbu          a7, 8(sp)
                  lh           s3, 1(sp)
                  sltu         zero, s11, a7
                  sltu         s11, a2, s3
                  and          a7, a5, ra
                  ori          s6, s9, 245
                  sltiu        s4, t5, -1350
                  and          a5, s1, a0
                  sltu         zero, s10, s8
                  sb           s9, 11(sp)
                  slt          s11, s3, sp
                  slt          s0, s8, t3
                  lbu          s6, -8(sp)
                  lbu          ra, -8(sp)
                  or           s2, ra, a3
                  lh           s10, -5(sp)
                  sra          t2, s8, s8
                  lh           t2, 9(sp)
                  lhu          a0, -13(sp)
                  sh           t1, 11(sp)
                  srl          ra, s7, t6
                  lb           t2, 8(sp)
                  srai         a6, a6, 20
                  sb           s10, 12(sp)
                  sh           t3, 9(sp)
                  lbu          s2, 16(sp)
                  lbu          s4, 6(sp)
                  andi         s1, t2, -139
                  add          s2, s4, s2
                  lbu          s9, -8(sp) #end riscv_load_store_rand_instr_stream_0
                  la           s3, region_0+743 #start riscv_load_store_rand_instr_stream_1
                  slt          s7, s11, t2
                  lb           a2, -64(s3)
                  nop
                  xor          s1, t4, t4
                  slli         s2, a4, 30
                  sb           s6, 26(s3)
                  sb           zero, 43(s3)
                  sltiu        a6, s2, -1873
                  srai         a0, s9, 19
                  sll          a2, s5, ra
                  sltu         t2, a2, s10
                  lh           s11, -25(s3)
                  sw           ra, 41(s3)
                  lui          t6, 516918
                  ori          a2, s8, 1422
                  xori         s0, s8, -369
                  add          sp, a0, s9
                  srl          gp, s1, sp
                  lb           a1, -20(s3)
                  srl          s8, a7, s10
                  lb           s8, 33(s3)
                  and          gp, a0, gp
                  addi         a2, t5, -198
                  ori          s2, t3, 1106
                  lb           s10, -22(s3)
                  andi         s6, s0, 28
                  lb           s7, 18(s3)
                  sw           s10, 13(s3)
                  lui          s2, 70170
                  lb           t2, 58(s3)
                  ori          s11, s9, -1727
                  sb           t0, -40(s3)
                  srl          ra, tp, tp
                  srli         t6, s8, 10
                  sw           s6, 1(s3)
                  and          t0, s10, s3
                  srl          s6, t3, a2
                  srli         tp, s5, 19
                  sb           t2, 0(s3)
                  sh           zero, -39(s3)
                  ori          s9, a2, -1981
                  nop
                  lbu          t6, -54(s3) #end riscv_load_store_rand_instr_stream_1
                  sll          s1, a1, s8
                  sltiu        s7, s8, -1696
                  bge          a5, s6, 14f
                  blt          sp, sp, 19f
                  ori          gp, t6, -1949
                  blt          gp, s6, 14f
                  auipc        s0, 446598
                  slt          s1, sp, s11
                  sltu         s3, a4, tp
                  srli         s10, t2, 3
                  slli         sp, zero, 7
                  sub          a0, t5, tp
                  bgeu         s8, gp, 15f
                  bge          a5, s3, 33f
14:               bltu         s8, t1, 16f
15:               blt          a3, a5, 26f
16:               slt          a2, t3, gp
                  slti         t3, t3, 2026
                  bltu         t0, a1, 36f
19:               addi         a7, a1, 2041
                  sll          s7, s8, s11
                  sltiu        s4, zero, 902
                  bltu         a6, s11, 35f
                  xori         gp, t4, 1777
                  andi         a2, gp, -615
                  addi         t0, s11, 672
26:               lui          a5, 512108
                  sra          s7, ra, s3
                  xori         a2, t5, 1832
                  sra          t2, a4, a1
                  nop
                  srl          s9, s1, t1
                  srli         s6, s0, 1
33:               slti         sp, s0, -695
                  add          a5, t5, sp
35:               srli         s0, a2, 20
36:               bne          a2, a5, 41f
                  sll          zero, t5, s4
                  auipc        a2, 455363
                  sub          s9, s2, s9
                  or           s4, s2, a7
41:               andi         a1, tp, -1844
                  bge          t2, s9, 48f
                  sub          t6, s9, s6
                  srai         s9, s8, 21
                  and          s7, a7, s6
                  andi         a5, a0, -1607
                  slti         t2, s10, 1603
48:               sra          s10, a6, tp
                  bge          t0, t4, 62f
                  bne          sp, s6, 58f
                  srli         s0, t4, 30
                  ori          sp, t0, -336
                  add          a0, s1, s1
                  andi         s6, s8, 1601
                  ori          s0, a3, -1709
                  ori          s10, a3, 388
                  slt          s0, a0, gp
58:               lui          sp, 530824
                  sltiu        a7, tp, -938
                  addi         s10, s6, -1806
                  beq          a5, zero, 75f
62:               sltu         s10, s10, s9
                  bltu         t3, t3, 65f
                  slli         gp, t5, 28
65:               sra          a0, t6, s1
                  addi         s8, a0, -1871
                  sltiu        s0, t5, 1339
                  slti         s2, s1, 779
                  slti         s1, s5, 170
                  srli         s10, t3, 23
                  sltu         ra, s10, a4
                  nop
                  slt          a0, s6, s2
                  bgeu         t0, s10, 84f
75:               lui          a1, 647981
                  lui          s2, 316440
                  blt          s4, tp, 83f
                  beq          a1, s5, 79f
79:               auipc        t3, 183960
                  xor          s2, a1, a2
                  lui          zero, 936499
                  xor          s11, s4, t3
83:               slli         a7, s3, 15
84:               sltu         s4, s8, t1
                  xori         zero, s6, 1873
                  and          s10, sp, s8
                  addi         a1, a3, 1825
                  bgeu         t5, a7, 94f
                  or           ra, a6, s6
                  ori          zero, t1, 1993
                  sub          s10, gp, tp
                  srai         s9, s10, 21
                  auipc        s7, 712671
94:               sra          t2, s3, ra
                  bge          s9, t0, 113f
                  and          t4, a3, s5
                  sra          sp, a1, a7
                  blt          t1, s4, 102f
                  bgeu         s4, s6, 118f
                  sltiu        t4, a5, -1520
                  sub          s8, s7, s1
102:              slti         s4, s6, -1830
                  ori          ra, s0, -544
                  bltu         a4, a7, 108f
                  slti         s0, tp, -983
                  auipc        zero, 901426
                  or           a2, t3, s3
108:              slt          a1, gp, gp
                  xori         a5, t5, -1210
                  sltu         s7, a3, ra
                  srai         ra, s1, 21
                  or           ra, s7, a5
113:              sub          t2, s6, s8
                  nop
                  xor          s6, s2, a4
                  slt          s11, t6, s11
                  bge          a0, s0, 136f
118:              sltu         ra, a0, a2
                  bne          a4, a1, 122f
                  sub          s6, a5, a5
                  blt          t2, t5, 130f
122:              sltiu        ra, t2, 701
                  sltu         s1, ra, a2
                  sub          tp, a7, zero
                  auipc        t0, 163582
                  slli         zero, s9, 20
                  auipc        t0, 337243
                  xor          sp, t6, sp
                  sll          a7, t5, s5
130:              beq          t6, a6, 141f
                  or           s11, s8, s6
                  and          a1, a3, t6
                  xori         a0, ra, 1339
                  sra          s2, t2, a3
                  slli         s0, s0, 25
136:              slli         s7, t5, 2
                  sltiu        a2, a6, -81
                  bge          t4, tp, 155f
                  xor          a6, t5, tp
                  sltiu        t6, a0, 937
141:              slti         s9, a5, 1254
                  beq          s0, gp, 159f
                  nop
                  xor          t6, ra, s9
                  bgeu         a7, t1, 157f
                  sltu         a0, a4, sp
                  slli         t0, a4, 3
                  add          s6, s11, s11
                  slli         t5, sp, 5
                  bne          a4, s8, 153f
                  lui          t0, 650276
                  or           s11, t4, s10
153:              srai         s1, s11, 21
                  srli         a1, gp, 17
155:              add          s7, s11, a5
                  bne          a7, t0, 159f
157:              sub          s4, s4, t3
                  sltu         s7, t5, t5
159:              bge          a1, a7, 163f
                  blt          a4, s9, 169f
                  beq          a0, s7, 169f
                  or           t2, t3, a2
163:              slti         t0, s7, 1691
                  add          sp, s10, s7
                  srl          t2, s7, a4
                  beq          s11, s4, 168f
                  andi         s1, s11, -101
                  lui          s9, 903683
                  add          a0, s1, s2
                  la           t3, sub_10
                  srli         a2, a6, 8
                  addi         t3, t3, -330
                  xori         a7, a5, -76
                  ori          s3, a1, -523
                  xor          sp, s0, t3
                  xori         s0, ra, -1873
                  srli         s7, s1, 20
sub_7_j13:        jalr         ra, t3, 331 #jump sub_7 -> sub_10
168:              slt          t0, t4, s11
169:              srai         gp, s4, 25
                  beq          a5, t1, 176f
                  sltu         s11, s2, a6
                  bne          s0, a6, 184f
                  auipc        a1, 936655
                  srli         s4, a3, 7
                  sltiu        s11, s4, 1346
176:              sra          t3, a3, s5
                  srl          a1, a0, t3
                  sub          tp, s7, sp
                  sll          t4, s1, a4
                  or           t0, t4, s11
                  sltiu        t0, a3, 1508
                  ori          s6, s5, 520
                  xor          t3, a2, zero
184:              addi         a5, a6, 1854
                  auipc        a6, 1012386
                  auipc        t2, 117826
                  addi         s1, t5, 1004
                  andi         t2, t6, -698
                  auipc        s7, 672206
                  srai         s9, t3, 1
                  nop
                  srl          s2, s1, s3
                  bne          a1, s7, 197f
                  sll          a3, s4, t3
                  xor          a5, a1, a4
                  srai         s1, t3, 24
197:              slt          s0, t4, a6
                  blt          t0, zero, 207f
                  auipc        t5, 387549
                  xori         t2, s0, -2032
                  srl          t4, a1, s0
                  sltu         t5, s9, s7
                  auipc        t4, 283590
                  sltu         s0, tp, s11
                  auipc        a6, 736826
                  add          tp, a0, a1
207:              addi         a6, s1, -1379
                  bge          s4, a4, 220f
                  bge          a2, t4, 222f
                  or           s0, t5, a6
                  bge          zero, tp, 228f
                  xor          a6, s4, t4
                  srli         ra, a4, 25
                  bgeu         s5, s2, 220f
                  srli         ra, t3, 10
                  add          t3, t6, s10
                  blt          s7, sp, 228f
                  or           a7, t6, t2
                  slt          s8, t1, s5
220:              sltiu        tp, t5, -1456
                  auipc        t5, 464319
222:              lui          sp, 39112
                  add          t4, s6, s3
                  bge          gp, s4, 230f
                  beq          a7, s9, 242f
                  srli         s2, a1, 19
                  sltiu        t5, a2, 644
228:              blt          t0, t1, 238f
                  bltu         a6, sp, 242f
230:              bge          s1, t1, 248f
                  sra          s11, zero, s1
                  bne          ra, t5, 250f
                  srli         tp, ra, 31
                  nop
                  sll          a6, s1, a0
                  sll          s7, s3, s8
                  ori          s4, s11, 34
238:              srai         t6, a0, 2
                  sub          t3, s7, t6
                  slli         t2, a3, 20
                  sub          s10, t6, s5
242:              bltu         s5, t3, 244f
                  bge          s3, s5, 254f
244:              sub          sp, a4, s0
                  addi         a6, t0, -1859
                  srai         a3, s1, 28
                  or           s9, gp, t2
248:              bltu         tp, t3, 267f
                  xori         s8, s3, -449
250:              beq          a6, t2, 270f
                  ori          s4, t1, 440
                  andi         s2, t3, -554
                  sra          s1, t6, s8
254:              nop
                  slt          ra, s0, zero
                  ori          gp, s4, -1148
                  beq          s1, s2, 276f
                  srl          t4, t3, s5
                  slt          a7, t0, s0
                  andi         a1, a1, -461
                  ori          a0, s10, -1736
                  srai         gp, t4, 29
                  andi         s9, t6, -2035
                  addi         a2, t6, -958
                  xori         s1, s3, -628
                  beq          a5, zero, 271f
267:              ori          ra, a1, -1858
                  beq          a7, s2, 269f
269:              bgeu         s2, s0, 283f
270:              xori         s4, s3, -1269
271:              sltiu        t0, a1, 1904
                  sltu         tp, a0, t6
                  xor          a7, a5, t2
                  sub          s6, s9, a4
                  xor          t6, a1, a0
276:              or           a7, t2, t1
                  or           t6, t6, s0
                  bgeu         s8, s0, 294f
                  bltu         s3, ra, 288f
                  xori         a0, s0, 1624
                  bgeu         s2, tp, 293f
                  auipc        a0, 523002
283:              nop
                  sltu         gp, s6, s6
                  add          s11, a6, t5
                  add          s7, a1, sp
                  bltu         s11, a6, 307f
288:              srli         s3, a5, 20
                  beq          t3, ra, 301f
                  xor          s6, t5, t6
                  beq          s9, t6, 294f
                  sra          t4, a3, a6
293:              slt          s9, t0, a6
294:              slli         s8, s4, 6
                  srli         a2, s5, 25
                  addi         s1, s7, -595
                  or           a3, a7, s1
                  ori          s4, gp, -1610
                  srl          s3, s7, s10
                  bge          a6, s1, 318f
301:              and          t4, t5, s1
                  sll          tp, s3, zero
                  sltiu        s1, t6, 1048
                  bge          a3, s6, 306f
                  add          a6, zero, a6
306:              bge          s1, a5, 323f
307:              srli         s4, s8, 0
                  bge          t1, s10, 317f
                  bne          zero, s4, 315f
                  andi         s0, s4, 1660
                  auipc        a1, 14355
                  bge          s5, ra, 318f
                  addi         sp, s5, -2037
                  lui          a0, 97408
315:              bne          gp, s10, 323f
                  xor          zero, s0, a3
317:              beq          s10, t0, 326f
318:              andi         zero, gp, 1004
                  blt          a7, zero, 324f
                  and          a3, ra, sp
                  bge          t3, gp, 326f
                  sltu         a1, s9, gp
323:              slt          tp, s4, s3
324:              sltiu        s6, s7, -1141
                  blt          s3, a0, 326f
326:              sra          a2, a5, s2
                  lw           ra, 4(a4)
                  sltiu        a2, s9, -1731
                  srl          s4, s8, tp
                  sltiu        s1, a0, 349
                  slt          t4, s1, a5
                  addi         a4, a4, 16
                  sra          t3, s11, a6
                  andi         s11, t0, 859
                  addi         t6, zero, -392
                  sll          t0, s4, t1
                  andi         t0, t6, 1980
                  sub          a7, tp, s11
459:              addi x5, x1, 1
459:              jalr x5, x5, 0
sub_4:            xor          a3, t5, ra
                  bne          s11, t1, sub_4_stack_p
sub_4_stack_p:    addi         a4, a4, -56
                  add          a6, a5, s5
                  sw           ra, 4(a4)
                  add          s2, ra, s5
                  ori          s8, t0, 1901
                  srl          t6, s4, ra
                  srl          a1, sp, gp
                  lui          a6, 586654
                  ori          a0, a2, 20
                  sltu         a2, tp, ra
                  slt          s10, t0, t3
                  srai         t6, t3, 12
sub_4_j9:         jal          ra, sub_6 #jump sub_4 -> sub_6
                  addi         gp, a0, -2002
                  lui          s10, 445840
                  addi         t2, s8, -374
                  sltu         s6, s0, s9
                  lui          s8, 117086
                  bgeu         s10, s0, 8f
                  sltiu        ra, t2, 1312
                  lui          s10, 167610
8:                slti         s9, s1, -378
                  sra          t5, s11, s10
                  auipc        t3, 424454
                  bge          a3, s11, 24f
                  andi         a3, s9, 1169
                  blt          a4, t5, 27f
                  xori         zero, t6, -1891
                  bgeu         a0, t1, 33f
                  sll          a3, t2, a3
                  srl          s6, a5, a4
                  sll          gp, a6, s3
                  bltu         a4, t0, 28f
                  lui          a1, 568174
                  sltu         a7, a4, s6
                  slt          s8, a1, sp
                  ori          s11, a5, -709
24:               bltu         ra, s9, 40f
                  andi         a3, s2, -1837
                  or           s11, s10, a3
27:               nop
28:               srl          zero, t4, a3
                  bne          t2, a6, 32f
                  addi         a7, t2, 213
                  bgeu         s5, a6, 34f
32:               auipc        t3, 550626
33:               add          a1, s0, s3
34:               slti         t2, s4, 1606
                  lui          s9, 238966
                  bltu         a4, s4, 52f
                  lui          s6, 700437
                  auipc        a2, 639731
                  sra          zero, zero, a4
40:               or           s3, s9, s10
                  sub          s7, ra, a6
                  slli         s6, s5, 24
                  xor          t3, s3, t1
                  srli         tp, gp, 18
                  bgeu         a2, a1, 59f
                  auipc        a7, 88506
                  or           s6, a7, t5
                  auipc        sp, 319228
                  sub          s6, s0, a7
                  auipc        a3, 402378
                  sltu         s1, a7, s4
52:               beq          a2, a7, 68f
                  sra          s9, s6, s5
                  sll          a7, s4, a4
                  nop
                  srli         a7, tp, 20
                  nop
                  bgeu         s2, s5, 60f
59:               nop
60:               beq          t2, s3, 68f
                  beq          a7, s5, 68f
                  bne          a6, zero, 68f
                  andi         a5, a7, -647
                  srli         s7, a1, 29
                  srai         t6, s10, 2
                  addi         a0, a2, 64
                  bgeu         sp, a4, 68f
68:               auipc        t6, 193965
                  slti         s6, t3, -544
                  or           gp, t3, sp
                  lw           ra, 4(a4)
                  lui          t6, 395286
                  addi         t0, s8, -1480
                  sltu         t6, s5, s10
                  addi         a4, a4, 56
                  xor          t2, zero, t1
                  slt          a0, s1, s10
                  lui          t0, 128639
94:               addi x9, x1, 0
94:               jalr x9, x9, 0
sub_8:            addi         a4, a4, -28
                  slli         s3, s7, 27
                  or           t0, a0, s0
                  auipc        t2, 39232
                  sw           ra, 4(a4)
                  andi         s11, t1, -1899
                  lui          gp, 14141
                  add          s1, s2, t2
                  addi         t0, s1, -1643
                  srl          t6, tp, a3
                  srai         a0, zero, 16
                  andi         tp, zero, 1465
                  andi         s6, t3, 122
                  lui          gp, 192963
                  sltu         s8, zero, s8
                  sltiu        t4, gp, -1628
sub_8_j14:        jal          ra, sub_10 #jump sub_8 -> sub_10
                  sra          t5, a0, a2
                  and          t3, s11, t4
                  xor          s1, tp, t0
                  slti         a0, a7, 1107
                  addi         t2, s7, -348
                  nop
                  ori          a6, t0, 406
                  slli         t2, t0, 3
                  bltu         a7, s1, 14f
                  add          gp, t6, s10
                  lui          zero, 968316
                  addi         a1, s5, 1616
                  sltiu        a5, a3, -1658
                  slli         s2, t6, 23
14:               sra          a5, a6, a6
                  sll          t2, s7, t5
                  bne          sp, tp, 23f
                  lui          gp, 627511
                  bne          gp, a2, 21f
                  sltu         t2, sp, t0
                  xori         t0, ra, 1480
21:               andi         t4, tp, 1161
                  ori          t2, s4, -304
23:               sra          a6, a5, a2
                  sra          s0, s0, ra
                  slli         s3, s4, 0
                  slti         s7, s4, 333
                  srai         ra, a0, 12
                  addi         s1, t4, 141
                  srai         a6, s8, 29
                  ori          a7, a2, 1051
                  bltu         a1, tp, 40f
                  bne          a2, s6, 48f
                  sll          s7, s4, a6
                  sll          tp, t1, a2
                  addi         s1, t5, 956
                  sll          s11, sp, s1
                  sltiu        t5, a6, -1859
                  slt          a5, t6, s9
                  addi         a0, a6, -2027
40:               xor          t0, s6, sp
                  slt          t5, s0, s2
                  beq          s9, a6, 60f
                  auipc        t6, 345026
                  xori         a5, s2, 1229
                  auipc        tp, 294073
                  bge          t3, s0, 59f
                  sltiu        a7, s6, -922
48:               beq          a2, t6, 51f
                  sra          s10, a2, gp
                  xor          t3, s6, tp
51:               sub          ra, s6, s1
                  bne          t1, a4, 57f
                  auipc        a7, 173545
                  lui          s1, 241137
                  slli         s7, s4, 28
                  slt          s9, s4, ra
57:               blt          gp, t5, 63f
                  slti         ra, s6, 750
59:               srli         s4, sp, 23
60:               xor          gp, s4, s1
                  srli         a7, s3, 10
                  bltu         s10, a6, 69f
63:               sra          sp, t5, s0
                  and          s11, s2, a0
                  bgeu         s9, ra, 71f
                  andi         ra, s7, -9
                  bltu         t2, s0, 72f
                  sll          t6, a5, a0
69:               and          t0, ra, ra
                  bgeu         s0, s2, 75f
71:               xor          zero, s9, a5
72:               sltiu        ra, t0, -1038
                  sra          ra, s9, tp
                  andi         s7, a0, -644
75:               andi         s10, s5, 1607
                  add          t3, a4, tp
                  add          sp, t4, t5
                  slti         ra, a7, -1600
                  slli         a6, a2, 17
                  sll          t4, a5, s4
                  andi         s8, s8, -1960
                  or           s3, zero, a7
                  sltu         t5, a0, t4
                  bne          t1, a0, 102f
                  srl          t4, t5, a7
                  and          s7, s11, s4
                  andi         s11, s8, 1529
                  sub          gp, t4, gp
                  beq          s0, a0, 100f
                  sltiu        s2, s9, 833
                  add          t4, s9, s3
                  slt          t0, a4, gp
                  bltu         ra, a7, 104f
                  auipc        sp, 970691
                  sltu         a2, zero, t5
                  auipc        s9, 482441
                  lui          s7, 252479
                  beq          a1, t3, 104f
                  sltu         a2, s9, s0
100:              nop
                  andi         t6, gp, -338
102:              and          tp, s5, a3
                  srl          s11, a4, a0
104:              bge          s2, t1, 109f
                  sltiu        t4, t0, -765
                  lui          s4, 704625
                  add          s7, a0, s11
                  auipc        s9, 581583
109:              sll          a7, s1, t5
                  xor          t5, t2, s4
                  sltiu        t6, t2, -1138
                  lw           ra, 4(a4)
                  or           s7, s10, t6
                  addi         a4, a4, 28
                  lui          s9, 890493
                  srl          s8, t0, t6
                  srli         t6, tp, 21
135:              addi x30, x1, 1
135:              jalr x30, x30, 0
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
.word 0x5083d116, 0x867f9aaa, 0x70491c14, 0x0b122793, 0x4d0709aa, 0x2f96621b, 0x7f4a79d2, 0xc55e0425
.word 0x57877cc6, 0xa51cdb00, 0x6bf238f8, 0x2903a1a4, 0x5c98ec1d, 0x79f249a6, 0x1239023e, 0xb1953d62
.word 0x9f5dd1c1, 0xd5d7174c, 0x9732e091, 0x9096e48a, 0xa4bba269, 0x7125cf43, 0x0a7bf563, 0xfeaa7f65
.word 0xbdd97f4f, 0x79b0a6d6, 0x541fe19b, 0x8413e20c, 0x7ec0e659, 0xd80c24e8, 0x8663dbc3, 0x8b20d2a2
.word 0x09a131cc, 0xdec47753, 0xd5179094, 0x256cb683, 0x9cd2bfbd, 0x939637d7, 0xf20bda41, 0x97eb8171
.word 0xe0259f6a, 0x1dc309f4, 0x483206d3, 0x37990a76, 0x97476197, 0xdfe3e78b, 0x829b8006, 0xddb44fac
.word 0xf8746f9d, 0x9482cf2a, 0x92eb2f15, 0x32993c94, 0xef9baa49, 0xa563ed8d, 0x0d394c62, 0x035b6e5c
.word 0xe8143818, 0x4c74b636, 0x239f92d6, 0xb7a76882, 0xb98e4068, 0xc56a333c, 0x597d7933, 0x65061ec9
.word 0x1519458d, 0xb87e74ae, 0x9f4967d4, 0x5670bcbb, 0xe18fce88, 0x40c67d5b, 0xc973ecfd, 0x4374e862
.word 0xe11f436f, 0x4625741b, 0x7926e57e, 0x402146a3, 0xc37074bf, 0x69aa7e68, 0x5b14b055, 0x8d29f966
.word 0x7a02c3c8, 0xa28280fb, 0x8e8af888, 0xee3189a9, 0x3583f5a7, 0x8a1db046, 0xb5a11886, 0xb031b61b
.word 0xdf357f4b, 0x930e34b7, 0xecd36a4c, 0x9485a775, 0x024cdd97, 0xcc8e6472, 0x616371d2, 0x8afdad69
.word 0x036066cb, 0x6553086a, 0x79049820, 0xbab1c1ae, 0xb6ca09a5, 0xfd2758e6, 0x8c71e7d1, 0x299bbe72
.word 0x5a9d9679, 0x13839ebb, 0xfa86b25d, 0xf155748f, 0x8dd32558, 0xfd135301, 0x4f302ef3, 0x6cdca3cf
.word 0xc2b538ef, 0xa8f2a8e1, 0xee8a67ef, 0x37750afd, 0x9c5f71a5, 0x463d637b, 0xf441674e, 0x56ddf31a
.word 0xff297fba, 0x6e3e7dbe, 0xc90f2255, 0xf6280484, 0x19ab084e, 0x072f903b, 0x90afbe32, 0xbd2f61e5
.word 0xdba7865e, 0x300dac4a, 0x184ffd35, 0xed289b9c, 0xa4031a5c, 0xedcd2d21, 0x028c2bbf, 0x0d7c51f0
.word 0x69b6d6b9, 0x4d964281, 0xbfc8030d, 0x4fd6b3cb, 0x0d12bb9f, 0xb7eea59d, 0xbdd1f4b6, 0x8798eec3
.word 0xc053d255, 0xd52bafdd, 0x9ac7504b, 0xa7e207e4, 0x1a279a59, 0x28b4c726, 0x879f1b41, 0x6fa3d398
.word 0xdca803d1, 0x5b19912c, 0x4860e02e, 0xb892d729, 0x375d8580, 0xfcb43837, 0xd6225ce9, 0xb854eb0b
.word 0xb74a8e87, 0xf23a2bdb, 0x7e47060c, 0xfee967e7, 0x645b6702, 0x833a111a, 0xb44db590, 0x44963352
.word 0xaa3372e8, 0x967538e5, 0x550da8d9, 0x1efa3902, 0xc74e3e59, 0x18746483, 0x3b9fc097, 0x3b3307fd
.word 0x73c4c51c, 0x270acfd4, 0x4c84be5d, 0x4f0d870a, 0x0399781d, 0x4b2ef964, 0x114eb154, 0x79f1eba9
.word 0xe6fb039b, 0x8fbeba24, 0xa127d316, 0xbd27106e, 0x71005e3e, 0xac35dd4e, 0x393f21f3, 0xdda8652e
.word 0xc2f52ab2, 0x8b128d73, 0x7ff89588, 0xc6bd2c92, 0x2ca48622, 0xaef5f3cf, 0x811ea4cc, 0xb6a86117
.word 0xe508bcaf, 0x72dd7da7, 0xd4dc1216, 0xa28daffd, 0x8ab57f64, 0x9e15abc9, 0x3e786acd, 0x78ccbbdd
.word 0x3778ff67, 0x25315f13, 0xdbda2938, 0x571600fb, 0x9cdb8ee0, 0xa88c7291, 0xa419d9c2, 0x78725781
.word 0x1334da82, 0x5149061f, 0x277c24cb, 0x977320cc, 0xc75135a3, 0x9aa13baf, 0x4634d696, 0x04942137
.word 0xa8acf0fe, 0x470a2841, 0x3bc4c9fd, 0x102ecd4a, 0x26e6697c, 0xe33aef57, 0x152723f1, 0x94922b0f
.word 0xd7bc7970, 0x7151246c, 0x523353d2, 0x4b5882ab, 0x9bdeef2a, 0xad578f1e, 0xe07b9a8b, 0x5ed72cd0
.word 0x940224dc, 0xb257db50, 0x18fd841d, 0xdaef1530, 0x61648fd8, 0x5c0bc969, 0xfc0194b5, 0x5ea7fccc
.word 0x39ab777e, 0xce097f3b, 0x63ff81b6, 0xe76c1569, 0x30ab8ece, 0xe32f850f, 0xb4a81ce2, 0xd99a892a
.word 0xefa56752, 0xfb7b50e1, 0x5ba08006, 0x418fc4cf, 0x9761299b, 0x687f3754, 0xb134432f, 0xb53f68c7
.word 0xfe8c509f, 0xad912391, 0x7aea6905, 0x5d1af4de, 0x62cd526c, 0xeb62e66e, 0xbe9a3a69, 0x3e582f33
.word 0x5a4dd046, 0xe0186af9, 0x245ac7b6, 0x5179e465, 0xc01038a9, 0xa128865f, 0xf7787ac2, 0xcfcf9b94
.word 0x4277598c, 0x691a0f4f, 0x6c60f50d, 0x441db707, 0xe7628ac9, 0x343e3fe7, 0x38eb355a, 0x0eb8fe13
.word 0x6a793caf, 0x2b8e5a2f, 0x61b8d7f3, 0xa1533294, 0xfc1a374c, 0x18f1dcb6, 0x4c94c3bc, 0xe30d3a27
.word 0x915b9d06, 0x6e7e58a7, 0x8b5610ff, 0xc2f5020b, 0xc3e9127e, 0x477a795d, 0x3e50520b, 0xfd2a54d4
.word 0xd25fc320, 0x04e71427, 0x6a72edf0, 0x48d82672, 0x677f5f7f, 0xa4456a52, 0xff4b5e64, 0x57831773
.word 0x3cc059dc, 0x09dc0845, 0x4b5d2333, 0xd3e28e2c, 0xa8286526, 0x32abf6c5, 0xd4a7b6fe, 0x9f4f49de
.word 0xf1aad06e, 0x6aeeeccb, 0x4b16165d, 0x51a59452, 0x82cc56d2, 0x1267dcfe, 0xb2f71789, 0x66d3995a
.word 0xc679a5d6, 0x1663b237, 0x070beec3, 0xf60a5a57, 0xe17bc776, 0x8c206160, 0x609d6b1f, 0xadaf3a15
.word 0x36c76e50, 0xe3ba2337, 0xb5c81427, 0x6a817669, 0x7696439c, 0x2c3874a6, 0xb7e85e8c, 0x11987af6
.word 0x09cd48f3, 0x72ab8344, 0x8dcf144b, 0x6c5769eb, 0x2c3ab993, 0x7e216458, 0xe3d24e27, 0xff7ffefd
.word 0xe5126523, 0xff3b274c, 0x8f9fbb8d, 0x07fb2b2a, 0xf9a1f150, 0x5d5d8b60, 0xae2862e4, 0x6b5e9ca5
.word 0x9651b238, 0x76dab2d5, 0xd29c1ca2, 0x43f7d8e4, 0xede9cb78, 0xda8f1afc, 0xad9c86d9, 0x3ff6dd4c
.word 0xa67f499d, 0x7171f916, 0x638f54f0, 0xc47b207d, 0xb0a3acc8, 0x24401204, 0x03c6ed1a, 0x91541f3a
.word 0xcc8bc202, 0x6ae960db, 0x9d325956, 0xee817e66, 0x6da74fee, 0x2cbc5b2d, 0x5c3f3a78, 0xafb26c08
.word 0x743cbb47, 0xeb67019d, 0x38dc0f0f, 0x99884194, 0x0c9f206d, 0x7c2b3ce2, 0x69960da1, 0xf7202ae9
.word 0xdb62e13d, 0xf7517722, 0x4ecfe9fb, 0xb715b201, 0x794c50e9, 0xdd8f1d74, 0xf493a7f4, 0xe0c72848
.word 0xec3862b5, 0x64ad660b, 0xf2ff7b30, 0xfa6ab600, 0x5c39ec2a, 0x3cb60ab7, 0x8e0f3980, 0x3730a1a0
.word 0x81d5b003, 0x800dc0d5, 0x83f1cefa, 0x3374361c, 0x08bb3624, 0x5e554406, 0x8b336c6e, 0xc0694ec7
.word 0xbd6a3a8b, 0xe68d3a91, 0x21308bc0, 0xcb5894d5, 0x6c801e27, 0x5f510466, 0x8ab48575, 0x526324ae
.word 0xc349e109, 0x9719530a, 0x4408dbbd, 0xd991b8a6, 0x45d429fa, 0x601b80c6, 0x5ec8d460, 0xa818f6d4
.word 0x5927450b, 0xebb4a4e5, 0x7fed247b, 0x460a01a7, 0x775aba03, 0x00b13b11, 0xf309b7a7, 0xea51548d
.word 0xfe4add33, 0x241766e2, 0x6f2c4f5d, 0x3daf0609, 0x2ad6c32c, 0xe02e9ae1, 0x7e76c6ae, 0x737d4ae0
.word 0x14f485c0, 0x06bcfa5d, 0x05d98c52, 0x8b3761b7, 0xfce07168, 0xee9df4e0, 0x99afa608, 0xa4161741
.word 0x16888a56, 0xadcb2879, 0x63ca6481, 0xdff1c353, 0x92015ca4, 0x6cfc0177, 0x39db9c27, 0xb426dfaa
.word 0xd2dd9778, 0x7bc59ac5, 0xca6716cd, 0xc8fe70a5, 0xb79c9177, 0x2b0d566b, 0x28371bd7, 0x72550660
.word 0xf8816a4c, 0xb3a697c0, 0xed6936e1, 0x33c77178, 0xafbcf6be, 0x31659774, 0x0c4c65b9, 0x23e1ceca
.word 0x1d444a5f, 0x22fc451a, 0x745c313e, 0x56d0c564, 0x06c3689d, 0xea3fc8e7, 0xf3733983, 0xc12a5f1e
.word 0x96c6687c, 0x36e269ad, 0x61dc5d55, 0xecfa51f5, 0x3ac30aba, 0xd1e997ac, 0x6bceecba, 0x8f3acf17
.word 0x9628ed8a, 0x50adb205, 0xf5d330cf, 0x9be27a8b
.section .region_1,"aw",@progbits;
region_1:
.word 0xee07332b, 0x490be648, 0xd4e3cf13, 0x337a79a2, 0x5bc72d4a, 0x7c66e162, 0x0bfc0d08, 0x37578a4b
.word 0x693a528e, 0xc129c60c, 0xe2f3b6fb, 0xb7d49846, 0xedf23f05, 0xa2d6e9a3, 0xf3dca509, 0x6a757485
.word 0xc7377624, 0xdae9ab85, 0x5845a554, 0x0b5da55f, 0xbe6763cf, 0x83ee5cfc, 0x028bfcfd, 0x951b88ea
.word 0xcc30dbc9, 0x24dfcc68, 0x75b67cbb, 0xbca495a4, 0x45e7a56e, 0xbf973625, 0xd3ec02d7, 0xb2bb5939
.word 0x45bc6e00, 0x9525f21d, 0xe90d47e6, 0x51f09f19, 0x5d136aff, 0xb2fce9f3, 0x2065f880, 0x41b08cf1
.word 0x6fc16ea1, 0xc7764b34, 0x1470d7ca, 0x4d478210, 0x65944330, 0x40e39a5d, 0x90dd9ffb, 0x4745b471
.word 0x4129929b, 0x6776d87f, 0x287b245c, 0x330513ef, 0xdc73f53d, 0x2768606d, 0x881d455a, 0x508a2a18
.word 0xa3b7fb90, 0x1407dab5, 0xfb669d3b, 0x894d60b7, 0x603141f9, 0x4b549e8f, 0x0babcd72, 0xe1bf89b6
.word 0xa296b78c, 0x5dac4cdf, 0x9d7fac8c, 0x9445a759, 0xac80abd5, 0x19865f07, 0x84108fdf, 0x6c7bf462
.word 0x252af60c, 0x50d289a9, 0x52c47044, 0x4e4af8c8, 0xbed334c6, 0xba91663a, 0xf693e5c3, 0x0eda7058
.word 0x2f9fc33c, 0xb154a33d, 0x20ae290f, 0xe3bf51fe, 0x56f1cd16, 0x4a37e4f6, 0x00882087, 0x9e806986
.word 0x839816be, 0x1d564746, 0xf455a54b, 0xd1ca62cb, 0x56111dc5, 0xbd615f2d, 0x3f541f69, 0x1d5548d1
.word 0x8b222526, 0xda6448f4, 0x9242cb91, 0x30d50b66, 0x946af41f, 0xd03b9798, 0xcceebd7d, 0x501a0bb9
.word 0xab0b6166, 0xf90fb476, 0xdf706908, 0xc579a1d4, 0xb6157b86, 0x665a555e, 0x27f337d3, 0x9ab427e6
.word 0xf22405ea, 0xc684f268, 0x932289ac, 0xa1436f6e, 0xfb0c48bd, 0x220aa46d, 0xc2e2daa1, 0x228f9910
.word 0xcd76fe1f, 0x63b228fb, 0xb5ce37bc, 0x99c7c38e, 0x81ae5977, 0xb2ee5d8f, 0xa1946f11, 0x70e9b0c7
.word 0x1de59a0c, 0x6093d280, 0x7dea1226, 0xfe2a4631, 0xb4be4626, 0x9fa5f1c5, 0x717f68d7, 0x150d2075
.word 0xf4f22af2, 0xd2a09ded, 0x269ef072, 0xcc385020, 0xc372cfd7, 0xffa622ea, 0x4cada93f, 0x7756cedb
.word 0x14587688, 0xb7a78bad, 0xc11f7ffc, 0xd85c584d, 0x5769a1ed, 0x1f8fccc7, 0x1ded2617, 0xb6356d57
.word 0x4c0b14d1, 0x1830bd15, 0x7f79b2b8, 0x98eaf439, 0xa1be8b89, 0x2f056e7a, 0xfa58286b, 0x6a69d557
.word 0x9c8e9ac3, 0xdf66dba2, 0x861beffa, 0x2860172a, 0x95970b03, 0xa6788cb6, 0x9101e5f3, 0xb4f97288
.word 0x6125b3ab, 0x86d0e8a2, 0x60d8fdb6, 0x802086f5, 0x2ad40c4b, 0x52d129cb, 0xffc6384f, 0x772fe6e9
.word 0x46f2e077, 0xa132bcdf, 0xb94c13a7, 0xb87baf36, 0x0a827a18, 0x2fc6211b, 0x97246ada, 0xca66acc4
.word 0x02ee0a5c, 0x60ba3da8, 0x53e11d98, 0x01175061, 0x0c838960, 0x1c3efdbe, 0xb8ffe223, 0xd655724b
.word 0xf4e91c50, 0xe10753bd, 0x0da978fe, 0xbbe53ca8, 0xde899724, 0x9a4e4a2c, 0x3eadde0b, 0x24a0d1a6
.word 0x0125167a, 0xe272edd0, 0x0802dcc8, 0xf37a1c5f, 0xa9e2f474, 0x24489c95, 0xca02cba1, 0xdd6301cb
.word 0x2e4b0dd2, 0xcde5139f, 0x99cec0cf, 0x794b824b, 0x3c602125, 0x283e88c7, 0x2697e4c7, 0x8be6a4cd
.word 0x02fefa7e, 0x50747005, 0x3179b22c, 0x26d34eb3, 0x8aff1535, 0x688940dc, 0xba31b9a8, 0xf12315f1
.word 0xe1715cc4, 0xa5c463a4, 0x5c263338, 0x5800b01a, 0x031d496f, 0x8ff54be1, 0x27b125f9, 0x33fb4d85
.word 0x68dd92a5, 0x6d57df79, 0x0549027c, 0x9cdaaf4a, 0x900b3f7b, 0xc1063829, 0x9d7a9b2e, 0x306f870d
.word 0xcbcc59b5, 0x260038e0, 0x8f912a73, 0x22eba82d, 0x709a1d84, 0x13ab1a72, 0x7dd2ab57, 0xd0389670
.word 0x82842256, 0x094b1851, 0x1628c737, 0xd58bebf9, 0xf8b2471d, 0xa4cdbe99, 0xb6ef7ede, 0x36e9506b
.word 0xf6986baa, 0xf7c1b7af, 0xd8fd7331, 0x9d1549b3, 0x548b586d, 0xc4284075, 0x363ccf0b, 0xe2459411
.word 0x721bf541, 0xc3ff83a2, 0x48813253, 0x71b15599, 0x3e331a3c, 0x0b583dcb, 0x37b39933, 0x81d9b6bf
.word 0x2be6dfc5, 0x2e6d001c, 0x928774f2, 0xcc82d5a2, 0x283e9223, 0x813ce115, 0x56ae5ea2, 0x425759d1
.word 0xf40c0102, 0x2908175c, 0xe033e9d8, 0xb27a4e32, 0xbae2740c, 0x0bfcc69d, 0xce7e0928, 0x8f0dbe0b
.word 0x3d95d75b, 0x6542b73c, 0xa085161f, 0xa198dafd, 0x95480221, 0x8ecf582d, 0xdccc1967, 0x1c3f4032
.word 0x76b0bbb6, 0xf3c78f25, 0xd6ae4f42, 0xa7befa10, 0x899e1fea, 0x1dc3a03b, 0xfc99dd57, 0x1252e15c
.word 0xcc9e9b0e, 0x75480f06, 0x7c7ef214, 0x29bad04a, 0x8ae2b319, 0x503b490c, 0x92a30983, 0x0ab42e3e
.word 0xabfad4ff, 0x54419baa, 0xd84efe58, 0x04252596, 0xbdb959b4, 0x1b71660f, 0x2d876143, 0x4deffabe
.word 0x020bc3b4, 0xfdc9e059, 0xec2f8fe1, 0x6380d44c, 0x83a048ba, 0x5a49c14e, 0x76b81cc4, 0xda15d6ff
.word 0xd0a9c537, 0xdd123b2c, 0x301c388c, 0x93fff2e1, 0x9402b9b7, 0xddd37824, 0x5a7fc94a, 0x85090213
.word 0x9e83771f, 0x5627d31d, 0x8f56ca60, 0x272ba9e8, 0x5d55b2c6, 0xa1e91c80, 0x9ca06d4e, 0x818b4be9
.word 0x2a815ee5, 0xf49fe19e, 0x6b198fb4, 0x01086a9f, 0x3f832407, 0xc9579cfc, 0xf5773049, 0xfc583347
.word 0xaf05684a, 0x7f0cba5a, 0x02ba90e9, 0xccff79e4, 0x08414519, 0xc787fb00, 0x9fb5c822, 0x8a680c5a
.word 0x1f5c304a, 0x03aeed8f, 0x71644342, 0xaeab8c79, 0xd7d63bf3, 0x3f654064, 0xb721f37f, 0x6f530e23
.word 0x7cec1736, 0xecda49ed, 0xb7ff4a26, 0xabb72b22, 0x93f8010c, 0xb939f516, 0x0ea56095, 0xb39d29db
.word 0xaac881a1, 0x3e5a7ded, 0x42faebd3, 0xe358f404, 0x7b1dd378, 0xcb99f29c, 0x218dae46, 0x90a2c568
.word 0x54f8b0bf, 0xbd0527d9, 0x996f0340, 0xcd291eb0, 0xd3d32f36, 0x6abcc059, 0x6980ed71, 0x77efe1ab
.word 0xb8efa955, 0x32a0121f, 0x4a318d8a, 0xc7288a7d, 0xa0f50cc3, 0xf3120baa, 0x8eb3b9cb, 0x7c2b8262
.word 0x5da52b55, 0x53a9c5ed, 0x8c1c1f16, 0x56fc150f, 0x54fadf53, 0xf53a505c, 0x9d332955, 0x6d22d951
.word 0xe96be958, 0xf128fe12, 0x31c5e431, 0x11b2b048, 0x67e5c069, 0x73634630, 0x5d03a637, 0xb389f4c3
.word 0x564d0928, 0x6d9d1e91, 0xe6295949, 0xbeb4eee9, 0xab699091, 0x42242677, 0x22a7c0b6, 0xebb294f6
.word 0x38cc4735, 0xa204039e, 0x7acbf78e, 0x64df1dd7, 0xa84e2269, 0x18f5331c, 0xe08ff006, 0xb9ab51c8
.word 0x7289fdb1, 0x7a6ec421, 0x6295a672, 0xdf8bb3a1, 0x3a939933, 0x3ff3534b, 0x5e258691, 0xe3b974a1
.word 0xffa16971, 0x6ed465d2, 0x5a1ffe39, 0x28d25f86, 0xd64e5be2, 0x8bdb14e5, 0x37eccc00, 0xad4c5768
.word 0x1a4da3b2, 0xcaead0f3, 0x97c2adbe, 0xe22876b1, 0x996fcbf3, 0x14120a70, 0x7601395e, 0x54866345
.word 0x8ef9c086, 0x14a69439, 0x0bee52bd, 0x4a738ef1, 0x661b9446, 0x3b61bb62, 0xa1aaa173, 0xd6874450
.word 0x1c5a9d6f, 0x5e5c35e2, 0x4f0576ca, 0x9fe3158d, 0x32fcd182, 0x966b96c5, 0x10f0e7d7, 0xb7816554
.word 0x4a7e4372, 0x77ca87a7, 0x7a10ad2e, 0x09b286c5, 0x73c7477a, 0x9ae6e875, 0x0f67a790, 0x876703fe
.word 0xaebba60a, 0x58573f9e, 0x31829ffb, 0x622acfb6, 0xfa0f1829, 0xc62e54f0, 0x41c72419, 0x810dca33
.word 0x93a116e6, 0xd046b36d, 0xee3c78e6, 0xb805dd67, 0x4c47311e, 0xabf2bf22, 0xf2a28150, 0x059129ed
.word 0x12ab4113, 0x3a06ce3f, 0x6cc98795, 0x4228fb2d
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
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x6, x14, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_2:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x6, x14, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_3:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x6, x14, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_4:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x6, x14, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_5:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x6, x14, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_6:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x6, x14, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_7:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x6, x14, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_8:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x6, x14, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_9:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x6, x14, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_10:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x6, x14, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_11:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x6, x14, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_12:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x6, x14, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_13:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x6, x14, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_14:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x6, x14, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

mmode_intr_vector_15:
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x6, x14, zero
                  csrr x16, 0x342 # MCAUSE
                  srli x16, x16, 0x1f
                  beqz x16, 1f
                  j mmode_intr_handler
                  1: la x21, test_done
                  jalr x0, x21, 0

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
                  addi x14, x14, -128
                  sw  x1, 4(x14)
                  sw  x2, 8(x14)
                  sw  x3, 12(x14)
                  sw  x4, 16(x14)
                  sw  x5, 20(x14)
                  sw  x6, 24(x14)
                  sw  x7, 28(x14)
                  sw  x8, 32(x14)
                  sw  x9, 36(x14)
                  sw  x10, 40(x14)
                  sw  x11, 44(x14)
                  sw  x12, 48(x14)
                  sw  x13, 52(x14)
                  sw  x14, 56(x14)
                  sw  x15, 60(x14)
                  sw  x16, 64(x14)
                  sw  x17, 68(x14)
                  sw  x18, 72(x14)
                  sw  x19, 76(x14)
                  sw  x20, 80(x14)
                  sw  x21, 84(x14)
                  sw  x22, 88(x14)
                  sw  x23, 92(x14)
                  sw  x24, 96(x14)
                  sw  x25, 100(x14)
                  sw  x26, 104(x14)
                  sw  x27, 108(x14)
                  sw  x28, 112(x14)
                  sw  x29, 116(x14)
                  sw  x30, 120(x14)
                  sw  x31, 124(x14)
                  add x6, x14, zero
                  csrr x16, 0x341 # MEPC
                  csrr x16, 0x342 # MCAUSE
                  li x18, 0x3 # BREAKPOINT
                  beq x16, x18, ebreak_handler
                  li x18, 0x8 # ECALL_UMODE
                  beq x16, x18, ecall_handler
                  li x18, 0x9 # ECALL_SMODE
                  beq x16, x18, ecall_handler
                  li x18, 0xb # ECALL_MMODE
                  beq x16, x18, ecall_handler
                  li x18, 0x1
                  beq x16, x18, instr_fault_handler
                  li x18, 0x5
                  beq x16, x18, load_fault_handler
                  li x18, 0x7
                  beq x16, x18, store_fault_handler
                  li x18, 0xc
                  beq x16, x18, pt_fault_handler
                  li x18, 0xd
                  beq x16, x18, pt_fault_handler
                  li x18, 0xf
                  beq x16, x18, pt_fault_handler
                  li x18, 0x2 # ILLEGAL_INSTRUCTION
                  beq x16, x18, illegal_instr_handler
                  csrr x18, 0x343 # MTVAL
                  1: la x21, test_done
                  jalr x1, x21, 0

ecall_handler:    
                  la x16, _start
                  sw x0, 0(x16)
                  sw x1, 4(x16)
                  sw x2, 8(x16)
                  sw x3, 12(x16)
                  sw x4, 16(x16)
                  sw x5, 20(x16)
                  sw x6, 24(x16)
                  sw x7, 28(x16)
                  sw x8, 32(x16)
                  sw x9, 36(x16)
                  sw x10, 40(x16)
                  sw x11, 44(x16)
                  sw x12, 48(x16)
                  sw x13, 52(x16)
                  sw x14, 56(x16)
                  sw x15, 60(x16)
                  sw x16, 64(x16)
                  sw x17, 68(x16)
                  sw x18, 72(x16)
                  sw x19, 76(x16)
                  sw x20, 80(x16)
                  sw x21, 84(x16)
                  sw x22, 88(x16)
                  sw x23, 92(x16)
                  sw x24, 96(x16)
                  sw x25, 100(x16)
                  sw x26, 104(x16)
                  sw x27, 108(x16)
                  sw x28, 112(x16)
                  sw x29, 116(x16)
                  sw x30, 120(x16)
                  sw x31, 124(x16)
                  la x21, write_tohost
                  jalr x0, x21, 0

instr_fault_handler:
                  add x14, x6, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  mret

load_fault_handler:
                  add x14, x6, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  mret

store_fault_handler:
                  add x14, x6, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  mret

ebreak_handler:   
                  csrr  x16, 0x341
                  addi  x16, x16, 4
                  csrw  0x341, x16
                  add x14, x6, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  mret

illegal_instr_handler:
                  csrr  x16, 0x341
                  addi  x16, x16, 4
                  csrw  0x341, x16
                  add x14, x6, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x16, 0x300 # MSTATUS;
                  csrr  x16, 0x304 # MIE;
                  csrr  x16, 0x344 # MIP;
                  csrrc x16, 0x344, x16 # MIP;
                  add x14, x6, zero
                  lw  x1, 4(x14)
                  lw  x2, 8(x14)
                  lw  x3, 12(x14)
                  lw  x4, 16(x14)
                  lw  x5, 20(x14)
                  lw  x6, 24(x14)
                  lw  x7, 28(x14)
                  lw  x8, 32(x14)
                  lw  x9, 36(x14)
                  lw  x10, 40(x14)
                  lw  x11, 44(x14)
                  lw  x12, 48(x14)
                  lw  x13, 52(x14)
                  lw  x14, 56(x14)
                  lw  x15, 60(x14)
                  lw  x16, 64(x14)
                  lw  x17, 68(x14)
                  lw  x18, 72(x14)
                  lw  x19, 76(x14)
                  lw  x20, 80(x14)
                  lw  x21, 84(x14)
                  lw  x22, 88(x14)
                  lw  x23, 92(x14)
                  lw  x24, 96(x14)
                  lw  x25, 100(x14)
                  lw  x26, 104(x14)
                  lw  x27, 108(x14)
                  lw  x28, 112(x14)
                  lw  x29, 116(x14)
                  lw  x30, 120(x14)
                  lw  x31, 124(x14)
                  addi x14, x14, 128
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
