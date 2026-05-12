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
                  li x23, 0x40000100
                  csrw 0x301, x23
kernel_sp:        
                  la x24, kernel_stack_end

trap_vec_init:    
                  la x23, mtvec_handler
                  ori x23, x23, 1
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
                  li x0, 0xf287e8fb
                  li x1, 0x43ae45b8
                  li x2, 0xf1dbc801
                  li x3, 0x9e6d2792
                  li x4, 0xeb805c86
                  li x5, 0x0
                  li x6, 0x0
                  li x7, 0xee806f17
                  li x8, 0xa
                  li x9, 0xfbcb45ec
                  li x10, 0x0
                  li x11, 0x79f836af
                  li x12, 0xf1ea82a3
                  li x13, 0xc
                  li x14, 0x2
                  li x16, 0x0
                  li x17, 0xe96d7196
                  li x18, 0x0
                  li x19, 0xb
                  li x20, 0x80000000
                  li x21, 0xfdca25f8
                  li x22, 0x1
                  li x23, 0xf0951a9b
                  li x25, 0x0
                  li x26, 0x0
                  li x27, 0xf9dc28b9
                  li x28, 0x24cc22d9
                  li x29, 0x6aac2e0b
                  li x30, 0x0
                  li x31, 0xfefab97e
                  la x15, user_stack_end
main:             la           a4, region_0+595 #start riscv_load_store_rand_instr_stream_0
                  lb           s3, 2(a4)
                  sltu         s7, a6, a0
                  sb           s6, 28(a4)
                  add          s3, a1, zero
                  sltiu        s7, tp, 1601
                  lbu          s11, 26(a4)
                  sh           t0, 13(a4)
                  slti         s5, sp, 629
                  sb           t3, 12(a4)
                  ori          t2, a4, -325
                  srli         a0, t0, 24
                  add          t1, s2, t5
                  and          s1, s5, t4
                  sb           a5, 53(a4)
                  sra          t1, ra, s4
                  sb           zero, 34(a4)
                  lui          s5, 878864
                  xor          t5, a5, tp
                  lb           s11, 2(a4)
                  auipc        ra, 260092
                  sltiu        t5, tp, 1619
                  sh           s2, -7(a4)
                  srai         s7, s1, 0
                  lbu          t6, 6(a4)
                  sltu         s1, a6, a2
                  lhu          s9, 45(a4)
                  lbu          a1, -6(a4)
                  xori         s2, t1, 1631
                  lbu          t5, 18(a4)
                  sra          s6, tp, sp
                  sub          s9, gp, s5
                  lb           s3, 34(a4)
                  sub          t5, ra, gp
                  sb           a3, 20(a4)
                  nop
                  lb           s6, -46(a4)
                  slt          gp, s7, gp
                  add          t6, a2, t2
                  sb           t0, -37(a4)
                  lbu          s4, 56(a4)
                  lhu          s7, -19(a4)
                  xor          zero, a3, a1
                  sb           ra, -32(a4)
                  auipc        s6, 881469
                  sltiu        t5, s8, 482
                  slt          t0, a6, t0
                  sub          s10, s9, a0
                  lh           s4, -1(a4)
                  xori         a1, zero, 1165
                  lh           ra, 39(a4)
                  lbu          ra, -56(a4) #end riscv_load_store_rand_instr_stream_0
                  and          s2, t6, s2
                  beq          s5, gp, 19f
                  auipc        ra, 402206
                  bgeu         a7, t4, 14f
                  srai         t5, a0, 9
                  lui          gp, 50306
                  la           a3, sub_1
                  slti         s10, s6, -1306
                  xori         s4, s10, -722
                  addi         a3, a3, 52
                  xori         t2, a0, 810
                  bltu         a7, s0, main_j1 #branch to jump instr
                  lui          s2, 476543
                  srl          s0, s1, s7
main_j1:          jalr         s1, a3, -51 #jump main -> sub_1
                  srai         s10, s9, 19
                  nop
                  add          s11, a3, tp
                  xor          s6, t6, a1
                  sll          s6, s9, s2
                  beq          a5, s3, 16f
                  ori          s5, s1, -154
                  or           gp, a4, t5
                  auipc        a2, 823722
                  bne          a1, a1, 14f
14:               bge          s5, t0, 23f
                  slti         a0, s1, -1876
16:               bne          a4, ra, 19f
                  slt          a1, s3, s0
                  slli         t4, tp, 6
19:               bge          s11, t2, 29f
                  xori         s7, s10, 1038
                  srai         zero, a0, 11
                  sub          s9, t3, s4
23:               sra          tp, s4, s2
                  bne          tp, s9, 35f
                  slti         zero, ra, 391
                  xori         s10, s9, 1746
                  or           s6, a1, s1
                  xori         s3, sp, -1051
29:               or           a1, a3, s3
                  slt          s4, s4, s2
                  and          s0, a6, a6
                  srl          s9, s4, gp
                  addi         gp, s1, 961
                  sll          t4, a1, s11
35:               and          s0, s0, s10
                  andi         t5, sp, 905
                  srl          t5, a3, t2
                  bne          s8, sp, 52f
                  beq          t2, s11, 49f
                  xori         gp, t5, -88
                  sub          s9, s0, sp
                  add          t2, t2, a6
                  sra          t2, t6, s9
                  nop
                  slli         t2, s6, 14
                  slt          gp, s9, s2
                  bge          t4, s10, 58f
                  ori          a3, s5, -1351
49:               blt          a0, gp, 50f
50:               lui          s4, 793465
                  blt          s9, s7, 61f
52:               bne          t3, a4, 68f
                  sltu         s0, t5, zero
                  auipc        a1, 533888
                  andi         s3, s9, -1499
                  sra          zero, t3, s7
                  xori         a1, a2, 69
58:               sltiu        s5, a6, -576
                  bne          a7, s7, 71f
                  add          s11, t4, a3
61:               srai         s9, gp, 11
                  bgeu         t2, a0, 72f
                  srli         s11, s1, 5
                  sll          t6, a0, t5
                  srai         t6, a7, 7
                  andi         t1, ra, -1987
                  sll          t6, s1, s4
68:               srli         t6, tp, 27
                  or           a0, t5, s1
                  sub          zero, s10, t6
71:               andi         a7, s2, 1145
72:               sltu         ra, s5, s10
                  la x2, test_done
                  jalr x0, x2, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            addi         a5, a5, -52
                  slti         s3, s4, -447
                  lui          s11, 164964
                  sw           s1, 4(a5)
                  or           a0, t4, a2
                  auipc        tp, 683401
                  slli         s0, s2, 9
                  ori          t0, t1, 423
                  sltiu        t3, t2, -1104
                  xori         s0, ra, 1064
                  or           a0, t1, a7
                  lui          zero, 451528
                  srl          a2, sp, tp
sub_2_j4:         jal          s1, sub_3 #jump sub_2 -> sub_3
                  la           t6, region_1+135 #start riscv_load_store_rand_instr_stream_0
                  sltiu        t4, a7, 1915
                  sub          s3, s7, s1
                  sb           a2, 60(t6)
                  sltiu        s3, s8, 628
                  sb           a0, 25(t6)
                  slt          s2, t6, t2
                  and          s1, s11, s10
                  srai         ra, gp, 28
                  add          a6, s5, s1
                  srl          a2, sp, ra
                  or           s4, a5, a6
                  slt          t5, a6, s6
                  sb           t6, 62(t6)
                  lh           s5, 5(t6)
                  srl          s3, t3, t5
                  sh           s8, -61(t6)
                  lb           a7, 2(t6)
                  xori         s7, a2, -381
                  sltiu        a4, a7, -1413
                  lb           a1, 34(t6)
                  sll          a6, a3, t5
                  andi         t5, s7, 906
                  sb           a6, 39(t6)
                  auipc        s4, 1039142
                  add          a4, zero, s11
                  lui          s5, 62800
                  andi         a0, s7, -141
                  lb           t4, 54(t6)
                  and          s3, a2, s1
                  add          s2, t2, t5
                  sub          t4, s7, a7
                  sb           t0, 60(t6) #end riscv_load_store_rand_instr_stream_0
                  la           t4, region_1+546 #start riscv_load_store_rand_instr_stream_1
                  lb           t3, -15(t4)
                  sb           s2, -10(t4)
                  sb           a7, 14(t4)
                  xor          a3, t2, a1
                  srli         s3, a3, 10
                  lh           t1, 12(t4)
                  sb           a4, 7(t4)
                  lbu          a3, -5(t4)
                  sb           s10, -13(t4)
                  sb           t6, -9(t4)
                  sb           a4, -15(t4)
                  addi         a6, a3, 269
                  or           t6, s10, s7
                  slti         a7, s11, -1337
                  srl          s9, s10, zero
                  lhu          t3, -8(t4)
                  srli         a0, s2, 13
                  lbu          s9, -7(t4)
                  sltu         t6, a0, s8
                  sw           t0, -10(t4)
                  sb           a3, 7(t4)
                  srai         s9, s6, 18
                  sltiu        t3, s7, 727
                  sra          s2, s4, s11
                  xori         s3, t6, 1296
                  srl          a6, s7, s5
                  sb           a5, -5(t4)
                  srai         a3, t6, 18
                  lui          t2, 262263
                  lbu          s0, 7(t4)
                  lb           s2, -9(t4)
                  addi         a2, a3, -938
                  lh           s2, 12(t4)
                  or           t1, a3, t2
                  lui          a3, 273772
                  auipc        t5, 609114
                  or           ra, a0, s10
                  sb           a3, 0(t4)
                  sra          tp, zero, zero
                  srl          ra, t3, s8
                  xor          s9, a5, s6
                  auipc        s0, 275304
                  sltu         s10, a2, s6
                  sb           a5, 15(t4)
                  srl          s5, a7, s6
                  sra          t1, sp, ra
                  lbu          t3, -15(t4)
                  lb           s10, 4(t4)
                  sb           gp, 1(t4)
                  nop
                  slli         a4, s5, 21
                  sb           t3, 13(t4) #end riscv_load_store_rand_instr_stream_1
                  addi         s5, s9, 1251
                  slli         s3, a0, 20
                  slli         t5, zero, 26
                  blt          zero, sp, 5f
                  andi         s0, s4, 157
5:                sra          a0, t3, t2
                  and          s2, s0, s9
                  srli         a3, s2, 16
                  slti         s2, ra, 372
                  and          ra, t6, tp
                  nop
                  bltu         t2, a7, 16f
                  or           zero, s9, a7
                  slt          s6, a0, zero
                  blt          a6, t1, 31f
                  andi         s5, s6, -1389
16:               slli         t4, t4, 30
                  sra          s11, sp, s10
                  bgeu         s4, a7, 32f
                  slti         ra, t3, 1013
                  sltu         zero, t1, a4
                  ori          s5, s2, 420
                  bgeu         s11, s5, 35f
                  srai         s3, s6, 14
                  andi         s11, gp, 1978
                  sll          a2, a4, a6
                  add          a3, tp, a2
                  nop
                  addi         a3, tp, 1780
                  slti         t5, a5, 522
                  add          t3, a1, t1
31:               bgeu         t4, s2, 42f
32:               slt          gp, s5, s11
                  srli         a1, s7, 28
                  bne          a0, t6, 39f
35:               bne          t1, s9, 38f
                  andi         t1, s9, 1991
                  slti         a1, s9, 284
38:               sltu         s2, s1, a5
39:               sub          s9, t6, t6
                  or           ra, s7, s10
                  beq          t6, t5, 56f
42:               and          zero, s5, t1
                  addi         s6, a4, -950
                  sub          s0, sp, a7
                  auipc        s2, 281389
                  bgeu         s11, t1, 66f
                  ori          s0, a3, -954
                  lui          s6, 13552
                  auipc        t6, 251498
                  sra          s0, s2, t1
                  bne          a0, s8, 68f
                  bgeu         s5, tp, 71f
                  sub          s9, s6, a4
                  addi         a7, gp, 1631
                  sll          s0, t5, a0
56:               bltu         zero, t5, 71f
                  xor          a7, s5, t5
                  and          t0, s9, t6
                  and          s1, s8, a6
                  srli         a4, t3, 21
                  srai         s0, t6, 7
                  or           t6, a4, s5
                  slt          t0, s3, t6
                  srl          a0, t1, s9
                  andi         a1, a7, -1208
66:               sra          t4, t0, s6
                  xor          t5, t3, a1
68:               srl          s1, a2, s3
                  slli         a7, s5, 13
                  addi         s11, s5, -1747
71:               srai         t5, s7, 4
                  sub          t4, a5, t2
                  srli         s3, a7, 16
                  add          t4, a2, a2
                  sra          a0, s6, a6
                  sltiu        s9, a0, -827
                  lui          s4, 564735
                  slti         a0, s1, -732
                  bge          t3, s0, 93f
                  srai         s9, s8, 21
                  sltu         ra, a3, a0
                  sra          t5, t3, a2
                  add          s5, s8, s3
                  bltu         t5, t2, 89f
                  xor          t3, t0, a3
                  sltiu        s9, s0, 796
                  slti         t6, tp, 145
                  srai         s9, t4, 12
89:               sll          a7, s3, a6
                  slt          s2, s6, t2
                  bge          t6, s2, 105f
                  sltiu        t3, a1, -801
93:               and          a6, s2, sp
                  la           a7, region_0+1026 #start riscv_load_store_rand_instr_stream_2
                  lb           tp, 147(a7)
                  sra          s11, s9, s6
                  lb           t6, 99(a7)
                  or           t2, s8, a4
                  sb           s11, -122(a7)
                  sb           s4, 127(a7)
                  srl          s7, t6, s10
                  sltu         s7, s10, s4
                  or           s1, ra, a1
                  sltiu        s6, gp, -501
                  sb           t0, 169(a7)
                  srai         t3, a1, 25
                  slti         a0, t3, 1063
                  lw           s11, -202(a7)
                  lhu          a0, 68(a7)
                  lbu          t2, -251(a7)
                  xori         t3, s10, -651
                  lbu          t6, -170(a7)
                  srai         a4, s5, 11
                  srl          a0, a0, s3
                  sltu         a4, t0, t0
                  sb           t2, 176(a7)
                  slt          a2, s2, t2
                  or           t6, a5, a6
                  lw           s5, -42(a7)
                  lbu          t6, 195(a7)
                  lh           a6, -88(a7)
                  lb           s3, -254(a7)
                  xori         zero, s3, -2014
                  lbu          gp, -22(a7)
                  sh           a6, 136(a7)
                  and          a1, s1, s10
                  lb           t0, 234(a7)
                  xor          s3, a4, s5
                  srai         a4, t2, 2
                  or           tp, t4, s2
                  and          s4, a4, s3
                  sb           s0, 27(a7) #end riscv_load_store_rand_instr_stream_2
                  or           s2, a2, t5
                  srai         a4, a1, 14
                  slti         s1, t2, -524
                  srli         s5, a5, 7
                  xor          a1, gp, s3
                  lui          t3, 164460
                  nop
                  bgeu         zero, ra, 115f
                  andi         tp, t4, -1202
                  or           s9, s8, s1
                  add          a2, s7, a2
105:              and          a3, a3, t6
                  sltu         s11, s4, t0
                  bltu         a0, s8, 118f
                  addi         s9, t2, 2010
                  andi         s7, a4, -237
                  slli         a1, s11, 26
                  sltiu        t2, sp, 128
                  andi         a7, a4, -768
                  srai         a0, t1, 29
                  add          t0, t3, t6
115:              slli         t1, a3, 30
                  srl          s3, a3, t2
                  xor          s11, gp, t5
118:              andi         a3, s5, 1938
                  xor          s5, s6, s9
                  ori          t2, a4, 464
                  bltu         s5, s6, 125f
                  nop
                  addi         a2, t1, -1533
                  auipc        a7, 86925
125:              beq          ra, sp, 132f
                  addi         tp, t1, -363
                  sltiu        a2, t6, -515
                  sltiu        a1, t5, -1097
                  sra          t4, s8, ra
                  sll          t0, s10, t0
                  auipc        t1, 933673
132:              srli         a1, a2, 13
                  srli         s10, a0, 9
                  bgeu         a5, t1, 148f
                  nop
                  bgeu         s0, s4, 154f
                  bltu         t5, s4, 154f
                  bne          s1, s9, 143f
                  sltiu        a6, s7, -1738
                  lui          a2, 733985
                  slli         a0, a2, 2
                  srai         t1, t6, 25
143:              srl          s6, s1, s7
                  nop
                  and          a7, s9, s8
                  srl          a3, t6, s8
                  addi         a4, t0, -1252
148:              sub          zero, zero, s3
                  bne          tp, s2, 154f
                  bltu         s8, s3, 167f
                  andi         s11, t3, 1996
                  bltu         a6, s8, 157f
                  bge          s5, s10, 158f
154:              ori          a7, s7, -770
                  bne          s11, a7, 173f
                  bltu         a2, sp, 174f
157:              xor          t4, zero, t4
158:              nop
                  auipc        s7, 397614
                  sltiu        a0, s6, -1283
                  or           t6, t3, tp
                  sll          zero, a0, gp
                  sltu         zero, s7, s7
                  andi         a7, a6, 233
                  sra          a4, sp, t1
                  sltiu        s5, t4, 1964
167:              blt          a0, s5, 182f
                  add          t3, s9, a3
                  add          t6, a0, t6
                  srli         t5, s5, 26
                  bltu         t5, t4, 176f
                  sra          a2, a7, s11
173:              bge          t3, t1, 187f
174:              bltu         t0, s0, 194f
                  slt          gp, s6, a1
176:              sltu         s5, s4, a7
                  nop
                  bge          s3, s7, 180f
                  or           s3, a5, s11
180:              or           s3, tp, zero
                  xor          tp, s11, s0
182:              or           zero, t2, s10
                  addi         a3, a4, 1627
                  sltiu        t0, t5, -1734
                  srli         s2, t0, 2
                  sra          t6, t4, zero
187:              bne          s2, s3, 192f
                  bge          sp, gp, 205f
                  slti         t4, s1, -282
                  lui          a0, 24724
                  sra          s3, t6, s9
192:              add          gp, s9, zero
                  slt          tp, s7, s11
194:              sll          s4, zero, t4
                  bgeu         a6, gp, 212f
                  srli         a0, a2, 21
                  xor          s6, s6, t3
                  srl          a1, t6, tp
                  and          ra, t2, s0
                  bltu         s9, zero, 205f
                  bne          a5, t2, 205f
                  srai         s5, a0, 8
                  bltu         s7, t0, 220f
                  ori          gp, s11, -843
205:              lui          s0, 629204
                  slt          s0, s5, t6
                  addi         s4, t1, -1090
                  add          a2, a1, a0
                  bgeu         t5, a5, 227f
                  slt          s11, s8, a0
                  beq          s7, t1, 216f
212:              nop
                  srli         s4, s5, 9
                  addi         t2, a1, -1298
                  auipc        t0, 528004
216:              srai         a3, a0, 8
                  or           t6, s0, sp
                  andi         a0, a1, 921
                  sltu         t1, t6, a6
220:              blt          s0, a7, 235f
                  slt          s5, a3, a5
                  slt          t0, gp, a2
                  sll          tp, sp, a5
                  and          s2, s11, s3
                  srli         s9, t6, 30
                  blt          s5, sp, 231f
227:              slti         s5, a1, 427
                  and          ra, zero, s2
                  sra          s11, t1, tp
                  bgeu         s9, s2, 248f
231:              xori         t1, s2, 1833
                  blt          t2, a2, 251f
                  blt          s7, s9, 250f
                  sra          s6, sp, s1
235:              srli         s6, a3, 17
                  beq          a7, t6, 241f
                  sub          t2, s7, s11
                  nop
                  lui          t3, 791799
                  ori          t3, gp, 233
241:              bgeu         s8, s11, 244f
                  xori         t0, s10, -170
                  slt          s11, s0, s8
244:              sub          s6, s6, zero
                  beq          s5, s1, 258f
                  lui          a6, 649278
                  sra          a7, sp, tp
248:              andi         t0, s0, 362
                  slt          a3, s9, s7
250:              and          a0, t1, s3
251:              srai         s11, tp, 26
                  lui          t2, 894135
                  xor          t2, t4, a0
                  srli         a1, s9, 21
                  sltiu        s3, t0, -966
                  xori         t3, t2, 886
                  add          tp, s3, s8
258:              sub          s4, a5, s0
                  bne          zero, t6, 273f
                  lui          s0, 934961
                  blt          t0, s6, 272f
                  sll          s7, t5, s11
                  bge          s9, zero, 277f
                  sltiu        gp, t4, 1864
                  srli         s0, s9, 0
                  xor          s10, zero, gp
                  sltiu        a6, a3, 708
                  auipc        s6, 255302
                  srai         s4, t2, 7
                  blt          t6, ra, 281f
                  auipc        s1, 575618
272:              slti         a4, a2, 761
273:              beq          s7, s9, 287f
                  srli         a6, a7, 0
                  auipc        a6, 260827
                  srai         t5, a2, 2
277:              add          t6, a0, s0
                  or           gp, s10, a6
                  lui          s5, 780104
                  slli         zero, a1, 30
281:              bgeu         a2, ra, 288f
                  or           s5, t3, s10
                  slti         s6, ra, 990
                  sub          s0, a1, s7
                  lui          s7, 1009126
                  slti         s4, a4, 778
287:              srli         a0, t1, 10
288:              addi         s1, s8, 1972
                  srai         gp, a0, 30
                  andi         a1, s6, 1770
                  lui          zero, 849723
                  xori         a3, s3, -2040
                  auipc        zero, 112624
                  sra          t3, a2, t4
                  nop
                  auipc        s2, 271173
                  addi         t1, s8, -261
                  srl          tp, a1, t0
                  srai         t4, zero, 4
                  slt          a0, a7, s9
                  bgeu         s11, tp, 306f
                  sub          t2, zero, s2
                  sltiu        ra, s2, -1236
                  and          s6, s8, s9
                  xor          t6, a4, s1
306:              xori         a2, t4, -667
                  bltu         s0, a0, 321f
                  andi         s6, a0, 770
                  sltiu        s7, s9, -693
                  sltu         s6, t2, a6
                  auipc        a6, 50161
                  blt          a5, a5, 330f
                  xor          tp, t5, a6
                  sll          zero, s2, a5
                  auipc        t2, 623319
                  srai         s0, t6, 29
                  sra          t1, a7, tp
                  srl          a3, s10, s4
                  bne          s7, t2, 333f
                  add          a1, t4, s7
321:              xori         a3, t0, -1707
                  bgeu         s2, s0, 337f
                  andi         s10, s4, -1483
                  bne          s5, a2, 329f
                  sll          s3, s5, sp
                  bgeu         s6, a7, 343f
                  lui          a3, 1037973
                  sltiu        s6, t5, -945
329:              sltu         a1, ra, s3
330:              andi         s4, a3, 1011
                  addi         tp, zero, 1428
                  srai         s6, t5, 18
333:              add          t1, t6, s11
                  bltu         a4, t2, 345f
                  sltu         a4, s10, t5
                  bne          a3, s3, 353f
337:              add          s4, s8, a7
                  slli         t2, t5, 16
                  slti         t0, s4, 1388
                  sltu         zero, s11, a5
                  lui          gp, 810621
                  blt          t5, s9, 345f
343:              nop
                  blt          t3, s10, 349f
345:              srli         gp, s7, 19
                  auipc        a1, 458670
                  bgeu         gp, a2, 352f
                  sll          a7, s7, zero
349:              auipc        s0, 564645
                  or           t1, zero, s10
                  add          a0, t5, sp
352:              and          t4, s5, a6
353:              lui          tp, 255091
                  xori         s5, s5, 201
                  bltu         tp, t5, 368f
                  blt          a3, s7, 361f
                  ori          s7, s7, 1053
                  bgeu         a1, t4, 372f
                  nop
                  sll          zero, zero, s1
361:              srai         a1, gp, 2
                  bltu         t0, a6, 376f
                  beq          a1, t3, 368f
                  lui          a2, 471903
                  sub          s10, t1, a2
                  xori         zero, tp, 637
                  xori         t4, a3, -262
368:              xor          a1, t0, tp
                  sltu         s9, a1, tp
                  srai         a2, s0, 5
                  bgeu         a6, a3, 378f
372:              blt          s8, a5, 390f
                  sltu         s10, a7, s1
                  sll          tp, a6, a5
                  lui          a7, 931771
376:              ori          t5, s1, -791
                  nop
378:              slli         s6, t3, 5
                  or           a6, s0, s11
                  lui          s0, 111220
                  sltiu        s1, t6, -1551
                  sltiu        s6, s3, -997
                  sltu         t0, s3, s7
                  or           s4, a2, t3
                  blt          a4, s9, 395f
                  slti         a6, t1, -1905
                  bne          s8, a6, 392f
                  sra          s1, a7, a6
                  blt          a2, s7, 395f
390:              andi         s3, s5, -1525
                  andi         a6, s4, 1923
392:              nop
                  xor          s7, s8, t1
                  sll          zero, t4, s8
395:              slt          tp, t6, sp
                  lw           s1, 4(a5)
                  xor          t1, s7, a2
                  slt          gp, s10, a4
                  lui          a3, 386094
                  or           a0, a6, a7
                  add          a4, a5, s9
                  xori         s7, t1, -1637
                  andi         t3, ra, 777
                  addi         a5, a5, 52
                  sra          t5, t1, t6
545:              addi x19, x9, 1
545:              jalr x19, x19, 0
sub_7:            blt          a4, s6, sub_7_stack_p
sub_7_stack_p:    addi         a5, a5, -24
                  sltu         s9, s7, a4
                  sltiu        gp, s9, -115
                  sw           s1, 4(a5)
                  sltu         t3, t0, t3
                  or           t6, t0, a1
                  xor          s7, gp, a3
                  slli         s1, s10, 23
                  la           t5, sub_8
                  addi         t5, t5, 633
                  andi         a2, s11, 572
                  xori         a4, s7, -241
                  beq          s11, a4, sub_7_j11 #branch to jump instr
                  sub          s0, s7, s9
                  or           tp, s1, a4
                  slti         ra, tp, -1765
                  slli         s1, sp, 5
                  xori         s7, s8, -1522
sub_7_j11:        jalr         s1, t5, -633 #jump sub_7 -> sub_8
                  auipc        t1, 599466
                  lui          s5, 483415
                  add          s7, a7, s11
                  ori          a7, s9, -266
                  addi         t0, s9, 1866
                  sltu         s9, s11, s11
                  xori         a4, sp, 1776
                  sltiu        a3, t3, 273
                  srl          t2, ra, a1
                  srli         tp, t6, 3
sub_7_j12:        jal          s1, sub_8 #jump sub_7 -> sub_8
                  add          t0, t4, s7
                  ori          t4, sp, 816
                  xor          t6, s8, s5
                  sltu         s9, s8, a7
                  xor          a0, zero, s1
                  sll          s9, sp, s6
                  bne          s8, t3, 11f
                  ori          t1, a5, 1066
11:               and          s6, ra, t0
                  sll          t6, s9, zero
                  sltiu        a6, a4, 2043
                  sltu         a6, t3, s7
                  slt          s1, t4, t0
                  bge          tp, s4, 30f
                  or           t3, a6, s11
                  slli         s3, s5, 18
                  lui          ra, 711563
                  lui          s1, 358182
                  blt          s6, a7, 31f
                  sra          s4, a6, ra
                  lui          s2, 845270
                  srai         t6, a2, 23
                  andi         a7, s7, 1358
                  slt          s5, s4, zero
                  sltu         s9, s11, t3
                  and          s0, t5, s4
                  slt          tp, s10, s0
30:               bge          s11, a5, 46f
31:               sltu         s10, s4, a1
                  lui          t0, 642025
                  andi         a4, s2, -1100
                  auipc        s5, 14086
                  slt          s10, t5, s9
                  slti         t3, sp, -1732
                  beq          tp, s1, 45f
                  add          tp, gp, zero
                  nop
                  bge          s11, s6, 52f
                  ori          a1, s8, 1589
                  srli         ra, s0, 4
                  nop
                  nop
45:               ori          s1, ra, 1155
46:               and          a4, a3, s2
                  srli         s2, s2, 9
                  slti         tp, a6, 198
                  add          s2, t6, t5
                  ori          a1, a2, -470
                  sltiu        s1, s3, -713
52:               lui          s11, 860440
                  sub          s4, t1, a6
                  slti         a3, t5, 647
                  xori         a4, t6, 1345
                  srl          a3, a0, sp
                  nop
                  srai         t2, s11, 26
                  andi         s0, s5, -1904
                  sltu         s0, sp, s11
                  xor          t5, s5, t0
                  ori          a2, a0, -604
                  srai         gp, a2, 18
                  beq          t1, gp, 65f
65:               sltiu        a2, a4, -1737
                  bgeu         t1, a3, 70f
                  beq          sp, s1, 85f
                  bltu         s9, s3, 86f
                  sra          t0, s8, t6
70:               bltu         s7, s2, 82f
                  and          a3, s5, s7
                  srli         t5, sp, 22
                  blt          t2, s2, 89f
                  slt          a4, t0, s4
                  xori         t2, a0, 1803
                  andi         t5, t3, -1775
                  sltu         tp, gp, a2
                  blt          a4, zero, 89f
                  blt          t1, a3, 85f
                  srli         s6, t3, 1
                  bgeu         t6, a6, 95f
82:               bne          a0, a0, 101f
                  lui          tp, 931420
                  add          t3, a2, a1
85:               bge          a1, t6, 93f
86:               add          s6, s10, s5
                  ori          s9, t4, 264
                  bge          t4, a3, 96f
89:               srai         s4, a6, 3
                  sra          zero, t5, a2
                  bge          t2, s7, 95f
                  add          s2, s5, s0
93:               srl          a3, t2, t6
                  blt          t3, zero, 101f
95:               blt          s3, s0, 106f
96:               bltu         tp, zero, 108f
                  auipc        s3, 977975
                  slt          s11, t4, s9
                  add          a2, t1, s4
                  sltiu        s3, a1, -901
101:              srl          s1, t6, tp
                  sltu         a6, s3, a0
                  slli         t5, a3, 18
                  addi         a3, s6, 1692
                  bltu         s11, sp, 115f
106:              lui          t5, 708495
                  slli         s7, s3, 15
108:              blt          s4, a1, 121f
                  sra          s2, a2, gp
                  slti         a3, a0, -1964
                  add          s3, tp, s6
                  blt          a5, s10, 121f
                  auipc        s1, 4613
                  xor          t0, s10, a1
115:              bgeu         a4, s7, 121f
                  auipc        zero, 1005665
                  slli         s7, a3, 30
                  bltu         s10, s1, 121f
                  nop
                  sub          a6, s9, ra
121:              slti         a2, s6, -1954
                  or           a0, t3, s9
                  lw           s1, 4(a5)
                  srai         s3, tp, 28
                  addi         a5, a5, 24
                  sltu         ra, zero, a0
155:              addi x28, x9, 1
155:              jalr x28, x28, 0
sub_5:            bne          tp, a5, sub_5_stack_p
                  andi         t1, s7, -572
sub_5_stack_p:    addi         a5, a5, -60
                  xori         t3, t3, 727
                  sw           s1, 4(a5)
                  slt          t4, t1, a0
                  slli         t4, s6, 11
                  sltu         t0, s5, s6
                  la           t0, region_1+645 #start riscv_load_store_rand_instr_stream_1
                  lb           s0, -94(t0)
                  sb           s1, 161(t0)
                  lh           s1, 33(t0)
                  lui          t1, 311992
                  slti         a2, ra, -1088
                  nop
                  srai         s11, zero, 9
                  auipc        t3, 144610
                  slli         t2, s9, 29
                  sub          s3, s8, t1
                  lbu          a4, 108(t0)
                  lb           s1, 182(t0)
                  lh           s5, -153(t0)
                  ori          s3, tp, 627
                  sub          s7, t3, a4
                  srai         t1, s2, 7
                  sb           ra, -222(t0)
                  xor          t5, s8, s5
                  lhu          zero, -119(t0)
                  sb           tp, 122(t0)
                  lbu          t3, 100(t0)
                  sb           t3, -9(t0)
                  lh           a0, -11(t0)
                  sra          t3, zero, s6
                  sb           gp, -146(t0)
                  srli         t5, s5, 28
                  slli         t2, t5, 22
                  sb           a2, 18(t0)
                  sltiu        a4, a1, 1329
                  lb           gp, -43(t0)
                  xori         t6, zero, -998
                  lbu          tp, 128(t0)
                  lbu          a1, 98(t0)
                  slt          s6, sp, a2
                  lb           s2, -18(t0)
                  addi         s6, t4, -690
                  xor          ra, s9, s3
                  auipc        s10, 178382
                  sltu         s4, s11, a1
                  sb           t6, -70(t0)
                  sub          t5, tp, t4
                  srli         t1, a5, 29
                  lbu          zero, 161(t0) #end riscv_load_store_rand_instr_stream_1
                  la           s6, region_0+1985 #start riscv_load_store_rand_instr_stream_0
                  and          ra, a7, a5
                  srli         t4, s2, 19
                  or           t3, s9, t4
                  sh           s3, -5(s6)
                  add          t3, gp, s5
                  sb           s10, 13(s6)
                  sh           s7, 9(s6)
                  sra          s10, ra, s4
                  xori         s9, a4, 1357
                  lhu          a3, -9(s6)
                  sh           s10, -15(s6)
                  sh           a7, 5(s6)
                  lb           t1, -16(s6)
                  slt          t1, a3, a2
                  add          tp, t6, sp
                  sub          s11, s10, a4
                  lh           a7, -11(s6)
                  sw           s10, 7(s6)
                  ori          a4, s7, 1301
                  lb           s11, -1(s6)
                  sub          s10, s3, a3
                  lbu          t6, -2(s6)
                  auipc        t5, 865684
                  xori         tp, t0, 1519
                  sh           s2, -15(s6)
                  lb           s2, -5(s6)
                  sh           t5, 3(s6)
                  sb           a7, 13(s6)
                  lb           t1, 2(s6)
                  xori         s7, gp, -1888
                  srai         s0, t6, 6
                  lbu          t2, 7(s6)
                  sll          t4, a4, a1
                  sb           s3, -9(s6)
                  sb           a2, -12(s6)
                  lbu          a0, -7(s6)
                  lbu          t4, 2(s6)
                  lh           s3, 7(s6)
                  lb           s0, 12(s6)
                  srl          zero, t6, s2
                  lh           s11, 5(s6)
                  sb           t0, -11(s6)
                  sb           s7, 12(s6) #end riscv_load_store_rand_instr_stream_0
                  srai         s10, s8, 18
                  add          a1, a0, s3
                  srai         tp, zero, 16
                  bne          t2, t1, 17f
                  xori         t2, sp, -951
                  slti         s6, t6, 1755
                  and          a0, a5, a0
                  lui          t1, 367220
                  nop
                  slli         s3, t5, 28
                  bltu         s9, a3, 22f
                  and          s0, s4, s8
                  bge          s3, s4, 18f
                  add          a0, zero, s1
                  slt          t4, a7, a3
                  xor          a2, s10, s9
                  addi         a3, a5, 625
17:               bne          s1, s1, 24f
18:               beq          s4, s7, 29f
                  srli         s4, a0, 8
                  andi         t3, s3, -19
                  nop
22:               sub          a2, s0, a4
                  bne          s3, s5, 36f
24:               ori          t0, t5, -481
                  beq          s6, s11, 40f
                  or           a6, gp, s6
                  bne          s11, a3, 36f
                  sltu         t4, a0, s11
29:               add          tp, tp, a0
                  sltiu        s7, s7, -790
                  xor          s10, a2, a2
                  lui          a3, 59687
                  sltu         t2, t6, t6
                  sll          gp, sp, s3
                  or           a3, s3, s8
36:               bltu         s1, t3, 46f
                  ori          s7, s8, 1239
                  nop
                  addi         t2, ra, 1045
40:               bgeu         s6, s9, 43f
                  srli         s5, s8, 8
                  sltiu        t5, a2, -1209
43:               xor          a4, s2, s2
                  lui          zero, 66885
                  and          a1, gp, s5
46:               srai         a2, ra, 6
                  slti         t0, s1, -1340
                  bne          s5, sp, 56f
                  sll          a7, s8, s10
                  sltu         s7, s10, ra
                  sltu         s10, a0, t1
                  or           s6, gp, s11
                  slti         s2, s5, 1216
                  sltiu        a6, s3, 649
                  sltiu        s10, t0, -1693
56:               slli         a2, sp, 20
                  or           s0, s3, t6
                  srli         ra, s7, 17
                  sltiu        t5, s8, -17
                  blt          s1, t0, 66f
                  srl          a7, s5, s9
                  andi         t0, s11, 496
                  slt          s11, sp, s4
                  bge          a5, t4, 80f
                  auipc        s6, 256640
66:               sltiu        a6, s1, 1597
                  addi         gp, t0, -214
                  sub          a3, s0, a7
                  lui          tp, 855393
                  nop
                  nop
                  sra          s10, t1, s2
                  bne          s6, t2, 82f
                  bge          tp, a2, 91f
                  lui          t1, 633824
                  lui          a2, 1036340
                  beq          t3, s9, 88f
                  and          s3, tp, sp
                  slti         t0, zero, -754
80:               srl          a0, s2, s9
                  srl          s9, a2, gp
82:               addi         s7, t1, -1965
                  bne          t4, s0, 98f
                  sll          t5, s1, a7
                  slti         zero, s8, -1101
                  srl          s2, s0, zero
                  bltu         t3, a1, 97f
88:               bltu         t3, s10, 96f
                  ori          s6, t3, 697
                  bgeu         sp, t5, 106f
91:               andi         a0, t3, 1430
                  sltu         gp, s4, t3
                  add          a4, s0, s9
                  addi         s9, ra, -766
                  sltiu        s5, a6, 1305
96:               lui          a4, 647020
97:               srli         a7, s11, 18
98:               sll          s2, s9, t1
                  slti         a4, tp, 1194
                  srai         a7, ra, 29
                  bltu         ra, t6, 112f
                  srl          s1, sp, t1
                  and          s10, s8, a3
                  srl          ra, a5, s10
                  and          gp, ra, zero
106:              bge          s4, a2, 109f
                  addi         a7, a4, 861
                  srli         t6, s8, 17
109:              slt          s3, t3, a1
                  lui          s1, 768206
                  ori          s3, a7, 1639
112:              xor          gp, a7, s6
                  bltu         t5, a4, 119f
                  slt          s5, a6, sp
                  slti         t0, ra, 1996
                  addi         s9, a6, -705
                  slt          a7, t4, s9
                  nop
119:              addi         a4, s4, 1194
                  bltu         a0, s6, 129f
                  beq          s10, a3, 127f
                  bge          sp, s7, 134f
                  bgeu         s1, a6, 139f
                  srl          s0, tp, s7
                  srl          t5, a0, s2
                  srl          a2, s2, ra
127:              sll          s5, a3, s0
                  bge          s0, s1, 147f
129:              slti         s5, s2, 1669
                  andi         ra, s10, 976
                  srli         t4, s0, 11
                  bge          t2, s11, 149f
                  xor          s3, t6, tp
134:              slti         s9, a6, 406
                  lui          a2, 13564
                  auipc        s2, 464099
                  xori         a6, a6, -703
                  or           t5, a4, a4
139:              addi         s7, t1, -281
                  sltu         t5, a3, a1
                  xor          tp, a2, a0
                  xor          s5, t2, ra
                  xor          s0, s11, s6
                  add          gp, a7, a5
                  ori          a6, s0, -19
                  bltu         t1, s8, 155f
147:              and          a3, s6, s2
                  addi         t2, t5, 292
149:              srl          s3, zero, a0
                  or           s11, t2, a4
                  slti         s3, a2, 998
                  bne          t1, s9, 158f
                  addi         a2, a3, 1209
                  srai         t1, t2, 28
155:              srai         t4, a1, 29
                  sltu         a7, s10, a0
                  sll          zero, a2, tp
158:              nop
                  andi         s0, t6, 1003
                  ori          tp, s7, -125
                  sll          a2, s11, t1
                  andi         a2, s10, 1728
                  sltu         s4, a3, a5
                  bne          s3, a6, 175f
                  xori         a6, t5, 367
                  or           a0, tp, a0
                  sub          s6, a6, a2
                  or           t4, s0, a4
                  sra          zero, t4, sp
                  sll          a4, a5, a0
                  add          s5, t3, s1
                  or           a4, s10, a6
                  andi         gp, s4, -890
                  beq          t5, a0, 184f
175:              bgeu         t2, s9, 188f
                  nop
                  bne          s2, gp, 185f
                  or           s2, s10, sp
                  bne          t0, s0, 198f
                  slti         t6, s3, -116
                  bgeu         t4, t6, 198f
                  slti         s0, s2, 214
                  addi         s5, a0, -430
184:              srli         a3, a3, 25
185:              add          a4, ra, s5
                  or           t5, ra, a7
                  bgeu         s0, s5, 202f
188:              sltu         s7, s4, a7
                  blt          s10, gp, 198f
                  addi         s11, t0, -1642
                  sltiu        t0, t3, 1499
                  sra          s2, ra, tp
                  sltiu        t6, t6, -2016
                  slli         a7, tp, 8
                  la           s3, sub_7
                  and          s4, ra, zero
                  ori          s2, t3, -275
                  addi         s3, s3, 175
                  sltu         t6, a6, s8
                  auipc        a0, 539660
                  srl          a3, ra, a1
sub_5_j10:        jalr         s1, s3, -174 #jump sub_5 -> sub_7
                  srl          zero, gp, a7
                  bltu         s9, a2, 204f
                  sltiu        s2, a6, -1919
                  add          s0, a0, gp
198:              ori          t5, s5, -1010
                  srl          a3, t6, a0
                  sub          s5, s8, s5
                  xor          a1, t5, a2
202:              addi         s5, s9, 718
                  sra          s9, s3, a2
204:              bne          s8, s1, 220f
                  auipc        s7, 558906
                  blt          ra, sp, 223f
                  slt          a2, a7, s0
                  slti         s7, t6, 1674
                  beq          s1, s11, 215f
                  blt          a4, t2, 225f
                  blt          s10, sp, 214f
                  blt          s7, s0, 223f
                  sub          t4, t1, s1
214:              blt          t1, a6, 225f
215:              andi         t0, a2, -118
                  sra          s2, s1, s11
                  bgeu         ra, a7, 223f
                  auipc        a3, 7502
                  and          s7, s2, zero
220:              srli         ra, s1, 21
                  and          tp, a5, zero
                  srl          a1, s0, ra
                  or           tp, t1, t5
                  sub          a3, t5, t4
                  srl          a1, t4, t6
                  nop
                  ori          s3, a5, -1434
                  lui          s5, 338306
                  auipc        s3, 230830
                  nop
sub_5_j9:         jal          s1, sub_7 #jump sub_5 -> sub_7
223:              sra          zero, t1, s10
                  sub          s6, sp, a2
225:              ori          t4, a4, -1509
                  srl          t5, tp, s6
                  blt          s9, s7, 230f
                  blt          a7, t0, 244f
                  auipc        a1, 973082
230:              sra          a4, t0, gp
                  srli         a2, zero, 16
                  andi         s4, s1, -1563
                  sll          s3, a7, t3
                  sra          a7, s4, s4
                  srai         s4, s9, 5
                  xori         s7, a6, 711
                  slli         a3, t2, 14
                  sltiu        tp, tp, 381
                  sub          a0, t3, s2
                  sltu         zero, tp, a0
                  andi         a3, a6, 247
                  add          s5, s1, a3
                  beq          t0, s9, 252f
244:              srli         s9, t6, 10
                  srai         s11, t5, 10
                  slt          t5, tp, s3
                  bltu         s2, s3, 261f
                  bge          s0, a6, 257f
                  bge          s0, t1, 257f
                  sra          t4, a6, t2
                  slt          a0, s1, t0
252:              blt          t0, a3, 259f
                  xor          t1, t3, a5
                  nop
                  sub          s3, s8, s6
                  srli         ra, s9, 2
257:              bgeu         t1, zero, 267f
                  ori          t3, ra, -205
259:              andi         t4, s4, -59
                  or           s5, a1, sp
261:              xori         a4, s1, -119
                  lui          t2, 78964
                  sltu         s7, zero, a1
                  nop
                  blt          a3, a3, 277f
                  bltu         a2, t1, 272f
267:              and          a3, gp, s4
                  sltu         tp, a6, a5
                  sub          a2, gp, sp
                  slti         t3, ra, -255
                  sra          a6, s7, s4
272:              sub          t2, a5, t1
                  xori         a2, s4, 496
                  and          t1, s10, t6
                  slti         a4, a7, 1517
                  sll          a6, a6, ra
277:              beq          zero, zero, 293f
                  lui          t5, 708710
                  auipc        s0, 962553
                  add          t4, a0, a6
                  sra          a0, s8, a3
                  sltu         s2, t5, s1
                  bltu         ra, a1, 295f
                  andi         s9, t4, 958
                  add          a3, s11, s11
                  sltiu        s0, a5, 329
                  srl          a7, t0, t2
                  bge          s11, tp, 301f
                  or           t4, s8, a0
                  slti         a2, t0, -307
                  lui          s4, 828162
                  or           a3, sp, ra
293:              and          s7, s10, zero
                  nop
295:              srl          t3, a6, gp
                  and          a0, sp, s10
                  slti         s4, s7, -1774
                  sra          t6, a2, a1
                  bge          t5, s0, 308f
                  sub          zero, a3, t4
301:              sra          zero, t5, t2
                  lui          t3, 377352
                  bgeu         a6, s0, 308f
                  xori         t5, a5, -1986
                  beq          t5, t5, 308f
                  xor          a4, s6, s8
                  add          a6, gp, a1
308:              srai         s11, ra, 9
                  srai         a4, a0, 7
                  lw           s1, 4(a5)
                  sltiu        a4, ra, -718
                  addi         a5, a5, 60
                  add          zero, a2, s3
                  sll          s6, tp, s5
429:              addi x22, x9, 1
429:              jalr x22, x22, 0
sub_10:           bne          t3, a4, sub_10_stack_p
                  sltiu        ra, a6, 199
                  slt          zero, t0, s9
                  add          s5, t1, a6
sub_10_stack_p:   addi         a5, a5, -20
                  lui          a3, 668225
                  auipc        t5, 831422
                  sw           s1, 4(a5)
                  xori         t4, a0, -206
                  sub          tp, ra, zero
                  lui          s10, 652423
                  or           a0, a4, s2
                  blt          t0, s3, 13f
                  beq          a3, t6, 10f
                  auipc        zero, 693662
                  slt          tp, a6, s0
                  blt          ra, sp, 13f
                  xor          s0, a1, s11
                  add          s5, tp, s10
                  bgeu         t3, s1, 12f
                  slli         a7, a3, 29
                  srli         s4, t3, 25
10:               nop
                  xori         t1, s6, -934
12:               beq          tp, gp, 13f
13:               srai         t0, s6, 13
                  andi         a2, zero, 994
                  srli         ra, s9, 5
                  xor          zero, t3, s10
                  srli         ra, s9, 20
                  lw           s1, 4(a5)
                  auipc        s4, 1034957
                  addi         a5, a5, 20
                  srli         t5, a4, 30
                  sltu         a4, a7, a7
                  sltu         t5, s3, t2
                  lui          a3, 137778
37:               addi x10, x9, 0
37:               jalr x10, x10, 0
sub_4:            addi         a5, a5, -16
                  lui          t4, 309371
                  sw           s1, 4(a5)
                  xori         s3, a0, 802
                  sll          s7, a4, a2
                  sll          t4, a6, a4
                  addi         s4, ra, -120
                  srli         s5, s10, 11
                  nop
                  xori         s6, t2, 1068
                  nop
                  la           s3, region_0+517 #start riscv_load_store_rand_instr_stream_1
                  slt          s0, t3, gp
                  sh           t0, -383(s3)
                  slt          t2, t1, s5
                  xori         s2, a1, -788
                  sub          a2, a2, t6
                  sw           t2, 23(s3)
                  slt          a3, a4, gp
                  sb           sp, 822(s3)
                  lb           a3, 522(s3)
                  add          s6, t3, t3
                  lbu          s11, 1004(s3)
                  sll          a4, s10, zero
                  auipc        ra, 811019
                  addi         tp, s5, 940
                  sltiu        ra, a1, -879
                  sll          t2, t1, tp
                  lb           t2, 352(s3)
                  add          ra, t4, s1
                  add          ra, a4, s2
                  nop
                  lui          t4, 8043
                  sb           t4, 118(s3)
                  lb           t3, 90(s3)
                  addi         ra, t2, 804
                  srli         t6, a0, 19
                  and          s6, a7, s9
                  andi         a0, s9, 1302
                  lb           ra, 1315(s3)
                  nop
                  sub          s0, s2, t6
                  auipc        a0, 894742
                  slti         gp, a5, -1310
                  sb           t2, 260(s3) #end riscv_load_store_rand_instr_stream_1
                  la           t3, region_1+698 #start riscv_load_store_rand_instr_stream_5
                  xor          s7, t3, s5
                  srl          a0, zero, s0
                  xori         t5, zero, 377
                  sh           a2, -2(t3)
                  sub          a2, s8, s3
                  srl          s9, t6, gp
                  lhu          t2, -14(t3)
                  lb           a0, -9(t3)
                  sh           s2, 4(t3)
                  sb           s0, 5(t3)
                  slli         s2, s5, 6
                  sw           a5, -6(t3)
                  sb           a5, 10(t3)
                  lb           s4, -14(t3)
                  lw           a0, 2(t3)
                  lhu          gp, 16(t3)
                  sb           a3, 11(t3)
                  lhu          t4, -8(t3)
                  lbu          t2, 7(t3)
                  sh           zero, 14(t3)
                  lbu          tp, -5(t3)
                  lhu          a7, -2(t3)
                  sub          s10, s7, sp
                  lb           a4, 7(t3)
                  sb           s4, 14(t3)
                  sb           a2, 15(t3)
                  sb           a2, -12(t3)
                  lb           s5, 3(t3)
                  lhu          s11, 6(t3)
                  addi         t4, s1, 1467
                  lb           t1, -11(t3)
                  xori         s5, t1, 950
                  lb           ra, 15(t3)
                  lbu          zero, -7(t3)
                  lb           s5, 1(t3)
                  xor          s10, a0, a6
                  lbu          t1, 3(t3)
                  sh           s3, 0(t3)
                  lb           a7, 11(t3)
                  sb           s7, -8(t3) #end riscv_load_store_rand_instr_stream_5
                  la           s11, region_1+760 #start riscv_load_store_rand_instr_stream_4
                  lbu          a6, -674(s11)
                  lhu          a4, 990(s11)
                  auipc        ra, 17855
                  sb           t3, 560(s11)
                  ori          s3, t3, 1411
                  add          s10, s6, a1
                  sh           gp, 562(s11)
                  and          s7, gp, a3
                  lb           s3, -246(s11)
                  srl          s1, s10, a6
                  sra          s2, s1, t1
                  lbu          s0, 872(s11)
                  lhu          tp, -110(s11)
                  lb           a4, -518(s11)
                  sb           s2, 148(s11)
                  lui          s5, 938354
                  sb           s3, 392(s11)
                  andi         s4, ra, -515
                  lb           s7, 583(s11)
                  sub          a4, t1, gp
                  lui          t3, 939258
                  lb           s6, 1077(s11)
                  lhu          s4, 198(s11)
                  sltu         tp, s9, zero
                  lh           s1, -562(s11)
                  lb           s2, 156(s11)
                  slti         t6, s2, -1161
                  srai         a6, s1, 2
                  addi         s5, a3, -1310
                  sltu         s9, t4, a7
                  nop
                  and          a6, ra, a1
                  sb           ra, 488(s11)
                  sb           tp, 248(s11)
                  lh           t4, -102(s11)
                  lbu          gp, 297(s11)
                  lui          a2, 394782
                  sltu         a6, a5, s0
                  ori          s5, s6, -1108
                  lhu          t6, 1096(s11)
                  nop
                  or           t6, a0, ra
                  ori          t3, gp, -228
                  lb           s1, -499(s11)
                  sb           a1, 499(s11)
                  lhu          t5, -458(s11)
                  andi         a1, s5, -1246
                  lb           a1, -217(s11)
                  lbu          t3, 230(s11)
                  sb           s8, -290(s11)
                  sb           s11, -209(s11) #end riscv_load_store_rand_instr_stream_4
                  la           s5, region_1+1539 #start riscv_load_store_rand_instr_stream_3
                  srai         t6, s9, 19
                  lhu          zero, -3(s5)
                  sub          t3, gp, gp
                  srai         a7, s5, 26
                  sb           s10, 16(s5)
                  lb           s10, 9(s5)
                  sb           t1, -13(s5)
                  lui          s2, 179152
                  sltiu        gp, a5, 1134
                  srl          t3, a6, s2
                  lb           a7, -12(s5)
                  sltiu        s11, s2, -1350
                  addi         s9, s7, -276
                  lb           a1, 8(s5)
                  sh           s8, 1(s5)
                  ori          a7, gp, -646
                  lhu          a2, -13(s5)
                  lbu          s4, 12(s5)
                  auipc        a3, 464272
                  xori         s2, t1, 149
                  sub          a2, s2, t3
                  srli         s1, t3, 30
                  lhu          s6, 7(s5)
                  srli         t3, tp, 23
                  slli         s7, sp, 18
                  sub          s10, s8, s8
                  sh           a0, 15(s5)
                  lb           a7, -12(s5)
                  lui          a4, 755703
                  slti         t4, t2, 1695
                  sb           s9, -7(s5)
                  lb           a3, 11(s5)
                  sh           tp, -13(s5)
                  srli         t3, t1, 25
                  lb           t1, 4(s5)
                  auipc        s6, 502793
                  or           a7, a6, s11
                  lbu          a2, 1(s5)
                  sltu         a4, a2, t3
                  lui          t0, 191813
                  lb           s2, 14(s5)
                  xori         t6, ra, -185
                  lbu          t4, -5(s5) #end riscv_load_store_rand_instr_stream_3
                  bgeu         a0, s11, 4f
                  sltiu        a6, s7, 1582
                  beq          t6, sp, 15f
                  sra          s6, a2, s1
4:                andi         gp, t2, -686
                  sub          tp, s9, zero
                  add          s6, s2, a1
                  auipc        s10, 1028516
                  sub          a4, s4, a0
                  bne          s0, s7, 16f
                  sltu         tp, s11, a7
                  srl          a6, a3, s8
                  andi         tp, s9, -1967
                  sltiu        a1, a0, 884
                  sra          s3, t4, zero
15:               nop
16:               nop
                  sltiu        s0, a3, 1236
                  srli         t2, sp, 23
                  xori         s10, s4, 245
                  and          s6, a1, a4
                  or           s1, s4, s7
                  bgeu         zero, t6, 26f
                  addi         t0, zero, 797
                  bltu         s10, s8, 30f
                  andi         tp, s1, -182
26:               auipc        t1, 418900
                  nop
                  sub          t0, s5, s9
                  srai         s7, s1, 18
30:               add          t0, s3, s7
                  sltu         s2, s0, a6
                  sltu         s5, a7, s9
                  sra          t3, s9, t1
                  sll          s2, a3, t2
                  add          t6, s6, t5
                  sltu         a4, a6, s3
                  sltiu        zero, s4, -1816
                  srai         s3, a2, 28
                  xor          t2, s9, s1
                  bne          t1, t3, 42f
                  auipc        zero, 220700
42:               sra          s0, s5, t4
                  blt          t4, s4, 54f
                  or           a1, gp, a1
                  bge          zero, sp, 53f
                  bltu         s10, t1, 47f
47:               xori         s3, a1, 376
                  blt          a7, tp, 50f
                  srl          t6, s9, s10
50:               lui          s2, 413085
                  add          s0, ra, a1
                  ori          a6, sp, -1478
53:               xor          s5, t2, s8
54:               bltu         a1, s3, 64f
                  srai         s4, t0, 26
                  sll          s6, gp, s10
                  bne          s0, t2, 74f
                  bne          zero, a6, 65f
                  srli         t3, s9, 29
                  bne          a1, a7, 76f
                  slli         t4, a2, 23
                  xor          zero, s1, t2
                  slt          t1, s6, s1
64:               srli         t6, s7, 22
65:               sltu         a1, t4, t5
                  add          a7, s5, a0
                  sra          a6, s10, s9
                  andi         s4, tp, -840
                  xori         s11, s8, 286
                  nop
                  sltiu        s9, s3, 1443
                  srai         t5, t1, 3
                  beq          zero, t4, 90f
74:               add          t4, a7, s1
                  srl          ra, t1, s0
76:               slti         s0, t3, -393
                  ori          t6, s10, -1975
                  bltu         t3, zero, 88f
                  sra          tp, a2, s4
                  sub          a7, s3, sp
                  beq          t6, a4, 92f
                  bge          gp, a7, 90f
                  bgeu         zero, t6, 93f
                  bgeu         a7, a2, 91f
                  slti         a2, s5, -1483
                  srai         s5, t1, 2
                  bgeu         s7, s4, 92f
88:               lui          s4, 596515
                  ori          t2, s6, 528
90:               beq          t4, a4, 110f
91:               xori         gp, s7, 681
92:               sltu         s1, s1, gp
93:               bgeu         s7, a0, 98f
                  nop
                  xori         a0, tp, -2005
                  blt          s1, a5, 105f
                  bne          sp, a4, 105f
98:               andi         t0, a2, -1452
                  xori         s4, a5, -155
                  sra          s9, a1, t4
                  slli         s11, tp, 28
                  srai         t0, a4, 9
                  bne          t3, s9, 115f
                  nop
105:              blt          t0, zero, 121f
                  bgeu         sp, s6, 117f
                  or           s4, s6, t5
                  bltu         gp, a1, 128f
                  bge          t3, t3, 129f
110:              bge          s3, s3, 114f
                  and          t1, s2, s0
                  andi         s11, t4, 1539
                  srli         s0, s7, 21
114:              bne          a4, s8, 115f
115:              slt          s11, t1, t4
                  xori         a6, s11, -1041
117:              blt          a3, t5, 128f
                  bgeu         zero, zero, 126f
                  lui          a2, 451700
                  xor          t5, t0, s10
121:              blt          s6, sp, 128f
                  lui          tp, 700286
                  srai         a0, s3, 3
                  xor          s10, t3, t6
                  slti         t3, s3, -1233
126:              sltiu        tp, t3, -1751
                  slti         s2, s2, -440
128:              srl          s2, s1, s9
129:              bgeu         gp, s8, 146f
                  sra          t2, t0, s7
                  addi         s3, a4, 1939
                  and          s0, t3, t2
                  nop
                  slti         a2, a5, -1082
                  auipc        ra, 426893
                  and          t5, ra, zero
                  bne          gp, s6, 144f
                  sra          zero, s11, s7
                  or           a7, a3, a1
                  sltu         t0, t0, t6
                  xori         a4, t5, 2033
                  xor          tp, s10, a4
                  sltiu        a1, s1, 1674
144:              addi         t1, t0, -1684
                  blt          s2, t4, 162f
146:              sltu         a6, s3, a5
                  sra          t2, s3, a4
                  bgeu         s11, sp, 158f
                  add          s4, s10, gp
                  sub          s4, s0, a7
                  sltiu        t1, a7, 331
                  addi         a3, a6, -73
                  blt          t0, t6, 163f
                  nop
                  or           s9, t4, t6
                  sub          s6, s5, s10
                  auipc        s5, 760885
158:              xori         s10, sp, -1904
                  sub          s1, s6, a3
                  srl          ra, a6, a7
                  slt          t5, s1, t4
162:              andi         s7, a5, -1009
163:              sll          t4, t1, a2
                  sra          s9, s6, t0
                  ori          a1, s9, 2025
                  slli         a1, sp, 24
                  or           t0, ra, s6
                  xor          s4, a0, s4
                  xori         a7, tp, 1959
                  bltu         t6, s10, 178f
                  beq          t6, a3, 179f
                  addi         a1, a3, -342
                  sub          gp, t6, tp
                  bne          a6, tp, 176f
                  addi         s4, gp, 1270
176:              sub          t3, a4, s9
                  slli         s9, s2, 11
178:              xori         t3, t0, -761
179:              addi         s7, tp, -955
                  xori         s5, sp, 911
                  lui          s5, 837561
                  and          t6, s3, sp
                  slt          s1, s10, a2
                  slli         t3, a7, 16
                  slt          t1, t0, s0
                  bgeu         a1, t3, 198f
                  andi         a2, s3, 575
                  slt          gp, tp, t0
                  sub          s4, t3, s0
                  addi         t3, s7, 1538
                  sll          zero, s9, a5
                  slti         a6, s5, -273
                  add          gp, tp, s5
                  srli         s3, a1, 11
                  nop
                  andi         t3, s5, 311
                  sll          a7, sp, s9
198:              xori         s10, a0, -1351
                  bgeu         s0, a1, 209f
                  lui          a6, 713336
                  sltu         a2, s8, a6
                  sltiu        t3, zero, -1017
                  sra          s4, t3, t6
                  ori          s9, a7, -1637
                  addi         s5, s9, 1215
                  andi         a3, s6, 64
                  slli         tp, sp, 15
                  bltu         zero, gp, 212f
209:              srl          s2, s0, t4
                  sltu         s1, t6, ra
                  srai         t4, s0, 14
212:              slli         s11, t1, 1
                  nop
                  srl          a0, s6, s0
                  bltu         t4, a4, 217f
                  slt          gp, ra, a1
217:              bne          t3, s7, 237f
                  ori          s9, sp, 1588
                  sub          zero, a3, s11
                  addi         t6, gp, -632
                  bne          zero, s8, 241f
                  add          t5, s9, a1
                  auipc        t4, 491683
                  lui          s0, 872918
                  nop
                  nop
                  bltu         tp, a1, 234f
                  srli         tp, s2, 19
                  xor          a2, s9, s9
                  srai         s6, sp, 11
                  lui          s2, 976439
                  or           a7, sp, zero
                  slli         tp, t0, 22
234:              auipc        s11, 576950
                  slti         ra, a2, 563
                  bge          a6, a7, 252f
237:              add          s4, sp, t0
                  add          t1, a5, t2
                  bgeu         a4, t0, 244f
                  bge          s4, s1, 245f
241:              slli         s9, t4, 0
                  srli         s0, t5, 20
                  or           t3, sp, s10
244:              ori          a1, tp, 1685
245:              bge          ra, a6, 261f
                  addi         t1, a0, 621
                  and          s2, s10, s1
                  or           tp, sp, a4
                  beq          a4, s7, 269f
                  bne          s5, a4, 261f
                  bge          s9, zero, 260f
252:              add          s11, a0, a5
                  addi         t1, s11, -809
                  andi         a6, t4, 427
                  bne          a6, s0, 266f
                  beq          ra, a5, 262f
                  xori         a7, s6, -809
                  srai         s9, s2, 14
                  and          s11, a1, a4
260:              or           t6, s1, s2
261:              bge          s0, s0, 274f
262:              srai         a3, t4, 9
                  or           a6, ra, a4
                  lui          s9, 546458
                  bltu         a6, s0, 271f
266:              ori          a2, a2, -19
                  slt          t0, gp, a4
                  srli         a7, t3, 7
269:              bne          a4, s6, 280f
                  lui          a7, 1037320
271:              bne          s0, a3, 287f
                  slti         ra, s10, 992
                  sll          a6, a7, s3
274:              sra          a4, t3, a1
                  and          gp, t5, a5
                  slti         s2, s6, 1525
                  auipc        t4, 561882
                  bltu         a7, t5, 283f
                  andi         a3, s7, -160
280:              blt          t3, s7, 285f
                  bgeu         s4, s1, 298f
                  sra          t0, a5, a2
283:              bge          s10, zero, 291f
                  xori         t0, t0, 1539
285:              slli         t3, s9, 15
                  slli         s5, s7, 16
287:              bne          a6, s6, 294f
                  slt          a7, s2, a4
                  bge          a0, a5, 300f
                  beq          a6, a4, 302f
291:              or           gp, t0, a0
                  lui          s3, 29198
                  bne          s7, zero, 304f
294:              slli         s6, a5, 0
                  slli         zero, t0, 21
                  or           a0, t4, s11
                  slt          s0, t3, s7
298:              andi         s5, ra, -39
                  or           s11, t1, t5
300:              blt          t1, zero, 302f
                  blt          s4, s5, 303f
302:              sub          a1, s7, s4
303:              add          a0, a5, tp
304:              auipc        a2, 905182
                  srai         s6, t2, 13
                  slt          s9, s9, s11
                  bge          ra, s1, 311f
                  xor          a7, s1, t4
                  sll          s10, s3, a0
                  and          a2, a6, s9
311:              slt          t2, s5, t5
                  xor          a4, a0, a3
                  bge          s2, tp, 314f
314:              xori         t3, s10, 529
                  auipc        s3, 332683
                  beq          t0, s5, 336f
                  srai         a3, t0, 25
                  ori          a3, a7, 1746
                  srl          a4, a1, t5
                  bge          gp, t5, 340f
                  lui          a4, 762996
                  ori          s1, s10, -1712
                  bltu         s3, s9, 332f
                  addi         s5, s4, 1739
                  sll          ra, t6, a5
                  srli         t1, a5, 29
                  andi         tp, s6, 755
                  slt          a1, t3, s3
                  sltiu        a1, a5, -1878
                  bge          s2, t3, 338f
                  nop
332:              srli         a3, a0, 10
                  addi         t4, tp, 1161
                  andi         t1, s5, 1089
                  beq          t4, s10, 351f
336:              and          zero, s5, a5
                  nop
338:              bge          s10, t6, 351f
                  andi         a4, t6, 183
340:              lui          tp, 663455
                  slt          s3, s7, zero
                  add          s0, s11, t6
                  sltu         a0, s10, s3
                  srai         s9, a2, 0
                  slli         t5, s8, 31
                  sltiu        t4, s5, -630
                  xor          s11, tp, s3
                  bge          a4, s0, 352f
                  xor          a1, s7, a6
                  slti         t5, s1, -397
351:              add          s9, s0, gp
352:              sll          ra, t4, s11
                  sub          a6, s0, a4
                  sll          a1, s10, t5
                  xori         s1, s8, -147
                  bge          t5, a6, 373f
                  srli         s3, zero, 30
                  sltiu        s5, a7, -384
                  srl          a7, sp, s3
                  or           a2, s6, zero
                  beq          a2, t5, 371f
                  sub          t4, s0, t1
                  xor          s9, t0, gp
                  and          t6, t0, s2
                  bge          a2, t4, 375f
                  bne          s9, t0, 376f
                  ori          tp, s2, 1226
                  sra          s11, s5, zero
                  xori         t5, t2, -1207
                  add          s4, s10, s0
371:              slli         t0, a5, 26
                  sltu         a2, s2, t0
373:              auipc        a7, 802933
                  sub          s0, zero, tp
375:              add          t1, a6, a3
376:              add          t1, a0, t5
                  bne          a0, s11, 397f
                  blt          s1, a4, 385f
                  addi         tp, t5, -1027
                  lui          t2, 457436
                  bne          t4, ra, 389f
                  srli         a2, s1, 4
                  and          s6, t1, zero
                  and          s2, a7, a2
385:              blt          a3, a6, 392f
                  ori          a0, t5, 640
                  lui          gp, 378058
                  addi         a4, gp, 361
389:              bne          a6, a2, 399f
                  blt          t6, s9, 407f
                  add          tp, a1, s3
392:              xor          t0, a5, a3
                  sltu         gp, a2, a1
                  xori         t0, sp, 1802
                  add          zero, ra, s3
                  bne          t3, gp, 416f
397:              slli         a1, s3, 9
                  add          s6, t1, t2
399:              add          s6, a1, ra
                  slti         a6, s11, -631
                  bge          s10, t2, 402f
402:              slti         s10, t2, 1823
                  sltiu        s5, a2, 246
                  add          s5, s6, t4
                  sltiu        zero, s8, -160
                  ori          t4, ra, -805
407:              bgeu         s6, gp, 418f
                  add          s11, t0, t3
                  auipc        s0, 902408
                  sltu         t6, s5, t3
                  bge          s8, t6, 422f
                  add          s9, a3, t3
                  bgeu         tp, ra, 415f
                  slt          a1, t6, t0
415:              blt          t2, t0, 423f
416:              sra          a0, a5, s0
                  or           t2, a5, s11
418:              lui          ra, 691532
                  srai         s2, s7, 3
                  slt          s3, s5, ra
                  blt          a6, s9, 437f
422:              bltu         a5, tp, 442f
423:              sra          s6, t2, t2
                  sll          t2, t6, s8
                  lui          s9, 302670
                  lui          s5, 353241
                  sub          s9, s0, s7
                  andi         t4, s11, -1913
                  bltu         s8, s10, 445f
                  beq          s6, a4, 436f
                  nop
                  bne          s4, s1, 439f
                  nop
                  xori         s10, s8, -935
                  xori         tp, zero, -1320
436:              or           a1, t5, s8
437:              andi         t2, a5, -1763
                  addi         ra, s7, -931
439:              bgeu         s10, t0, 443f
                  and          a4, s6, t2
                  auipc        t5, 806909
442:              xori         s2, a4, -483
443:              sll          s10, s1, gp
                  beq          t1, s8, 449f
445:              sra          a6, s9, t2
                  srai         s3, s8, 0
                  xori         s4, a3, -132
                  slti         t0, s5, 445
449:              srli         s10, ra, 22
                  or           s5, sp, a4
                  xor          zero, a2, a1
                  and          s6, s2, t0
                  ori          s5, s1, 1955
                  nop
                  blt          t0, s10, 459f
                  beq          a6, s0, 476f
                  nop
                  bgeu         s8, t0, 469f
459:              bge          s10, s3, 461f
                  nop
461:              or           ra, s3, s2
                  srai         t5, t3, 9
                  auipc        a3, 1002580
                  srli         t6, t5, 27
                  slti         s9, gp, 735
                  sll          t2, s11, t3
                  srli         s3, a3, 5
                  blt          s8, ra, 481f
469:              nop
                  nop
                  beq          s11, t3, 478f
                  sll          ra, s11, gp
                  nop
                  sra          a2, s8, s1
                  bltu         s8, a1, 480f
476:              nop
                  lui          zero, 653759
478:              ori          t0, s4, 943
                  slli         zero, a2, 25
480:              bne          s6, s5, 488f
481:              slti         tp, s2, 651
                  sub          s10, a0, a0
                  bgeu         zero, a5, 492f
                  add          gp, a3, t5
                  nop
                  beq          s1, t5, 498f
                  bgeu         s0, s4, 504f
488:              bge          a0, s2, 498f
                  sll          s2, a6, tp
                  ori          a4, ra, 353
                  beq          s9, s0, 499f
492:              bgeu         a6, s6, 502f
                  slt          s1, a2, s2
                  blt          sp, gp, 501f
                  nop
                  srl          s9, a5, s5
                  sll          s2, t5, s5
498:              and          s7, a7, t1
499:              add          s11, s2, s9
                  bltu         a3, s3, 516f
501:              slli         a2, a3, 21
502:              bltu         s11, t3, 522f
                  or           t6, s7, s0
504:              sltu         ra, a2, s3
                  or           s2, t6, t4
                  andi         s2, t6, 748
                  bge          t0, s2, 516f
                  bltu         ra, s11, 515f
                  sltu         a6, a7, s9
                  auipc        a4, 370813
                  la           s11, region_0+1415 #start riscv_load_store_rand_instr_stream_2
                  sll          tp, t4, a2
                  sh           t4, 487(s11)
                  lh           s4, -1291(s11)
                  lb           s1, -600(s11)
                  ori          t2, t3, 1559
                  sltu         s4, a6, t4
                  srli         a0, s10, 0
                  lb           s4, -760(s11)
                  lh           s0, -135(s11)
                  addi         a7, tp, 770
                  add          s6, a2, a7
                  sltiu        a0, a0, 1541
                  lb           tp, 232(s11)
                  xor          zero, s4, a4
                  lbu          s7, -392(s11)
                  slt          t5, t1, s11
                  slli         t1, t0, 24
                  sw           s9, -391(s11)
                  lhu          t2, -235(s11)
                  lbu          s0, -596(s11)
                  sb           s1, -207(s11)
                  sltiu        a7, s6, -83
                  andi         zero, ra, -551
                  lbu          a2, 352(s11)
                  sltu         ra, gp, s2
                  xori         t5, a0, 582
                  lui          a3, 7040
                  srl          t2, t1, tp
                  srl          a0, ra, a0
                  sb           s1, -108(s11)
                  sra          zero, s0, s8
                  slti         t4, s7, 1926
                  srli         s7, s4, 18
                  lbu          a6, 320(s11)
                  lh           a0, -327(s11)
                  lb           a4, -1194(s11)
                  srli         a0, a5, 6
                  and          gp, s4, s8
                  srli         ra, sp, 3
                  sra          s3, s1, t1
                  and          s1, s0, s11
                  slli         s0, s2, 2
                  auipc        s5, 765902
                  or           t3, s7, s2
                  lw           t3, 329(s11)
                  sub          a2, s4, s1
                  sb           a5, -589(s11) #end riscv_load_store_rand_instr_stream_2
                  bge          a1, a0, 519f
                  bltu         s8, zero, 522f
                  bge          s8, a2, 533f
                  srl          s4, t2, s2
515:              sltiu        a6, t3, 1752
516:              addi         ra, s11, -1655
                  blt          zero, a0, 537f
                  addi         s2, s6, -1909
519:              auipc        a0, 477294
                  bne          sp, t1, 527f
                  auipc        a0, 908526
522:              nop
                  nop
                  sub          a1, gp, s10
                  sra          a1, s4, s3
                  bltu         t3, a3, 538f
527:              sltiu        s5, t4, -1579
                  sra          s3, a3, t6
                  srli         s4, t1, 8
                  sub          t6, s6, a7
                  bltu         s9, s2, 537f
                  sra          t2, sp, s0
533:              or           s3, s9, s1
                  xor          a4, t6, a4
                  srli         a1, t0, 23
                  sll          s0, a7, s3
537:              addi         s7, s8, 77
538:              bge          a2, a4, 555f
                  sra          ra, sp, sp
                  and          s7, a4, s3
                  sltiu        a2, a2, 802
                  or           tp, s2, gp
                  srl          t6, s0, s5
                  xor          s1, s11, a0
                  slt          s0, t4, t3
                  srai         s2, t3, 30
                  sra          t6, t0, a2
                  bgeu         t2, t4, 559f
                  bltu         a5, s1, 557f
                  bne          s3, s5, 567f
                  nop
                  xori         ra, s0, -1285
                  slti         t2, t4, -392
                  and          t2, t6, tp
555:              nop
                  add          s1, ra, a5
557:              add          t2, s0, a3
                  slt          s4, s10, t1
559:              sltiu        s11, tp, 1824
                  bgeu         s6, a4, 571f
                  bge          a0, t6, 574f
                  add          s10, s4, a1
                  auipc        a0, 847844
                  srli         s10, sp, 6
                  ori          s9, a1, 754
                  or           a0, s11, a4
567:              xor          t4, s5, t1
                  sub          a4, s2, sp
                  or           s4, s7, zero
                  sltu         t2, ra, gp
571:              or           t3, a6, s8
                  slti         t1, s11, 1822
                  bltu         s4, a0, 583f
574:              sltu         gp, t1, s2
                  bne          a4, s9, 591f
                  nop
                  add          t6, s1, a6
                  beq          sp, t5, 586f
                  slt          a3, t5, a2
                  srl          s3, t5, s3
                  bge          tp, t3, 591f
                  auipc        ra, 304109
583:              bgeu         s2, a7, 587f
                  slti         a2, a4, -53
                  srai         s4, s0, 3
586:              beq          t0, sp, 591f
587:              srli         s5, s9, 3
                  blt          s4, t4, 589f
589:              xori         a4, t3, -352
                  ori          s3, s7, 1067
591:              bne          t3, a3, 595f
                  sra          t5, s0, s10
                  ori          t5, s2, 1437
                  and          t3, t4, sp
595:              bne          a1, t0, 600f
                  lui          s7, 918824
                  or           s11, a4, t0
                  ori          s9, t0, -768
                  slli         s9, a3, 31
600:              srl          s11, t2, tp
                  slti         t5, zero, -488
                  bne          s5, s11, 604f
                  slt          a6, s6, s0
604:              or           gp, s3, s4
                  srl          a2, s9, s10
                  slli         s5, sp, 15
                  ori          zero, a2, -1675
                  ori          s9, s6, -242
                  srli         t3, t4, 6
                  auipc        tp, 263104
                  auipc        s3, 417881
                  ori          a1, t0, -1175
                  la           ra, region_0+1537 #start riscv_load_store_rand_instr_stream_0
                  or           s6, a4, s4
                  sra          t2, t4, s3
                  sb           a3, 404(ra)
                  srli         t6, a3, 17
                  lbu          t0, 76(ra)
                  lb           gp, -423(ra)
                  lui          t0, 662651
                  and          a6, s4, gp
                  lb           s4, 38(ra)
                  andi         zero, a6, 1328
                  srli         a0, s3, 19
                  sll          t6, a3, a3
                  lb           s4, -1281(ra)
                  sb           t6, -1126(ra)
                  sb           t4, -1074(ra)
                  lbu          s3, -64(ra)
                  sh           s2, 403(ra)
                  sltiu        t5, s7, -1614
                  lb           s4, -301(ra)
                  sb           s5, -1261(ra)
                  auipc        s7, 264205
                  addi         zero, t5, -280
                  sltu         zero, t3, gp
                  lbu          s3, -442(ra)
                  lw           s7, 275(ra)
                  lbu          t4, -16(ra)
                  srl          gp, s9, s1
                  slli         t3, s7, 31
                  sh           t4, -911(ra)
                  sh           s2, -599(ra)
                  lb           a4, -69(ra)
                  lb           s5, -388(ra)
                  sb           t3, -606(ra)
                  addi         s2, t0, -1395
                  sb           zero, 436(ra)
                  srai         a7, s2, 4
                  lbu          s7, -1352(ra)
                  lbu          s11, 10(ra)
                  xor          tp, a6, s2
                  addi         s0, s4, 1213
                  lb           a3, -644(ra)
                  srl          s1, s2, a3
                  lb           a3, 270(ra)
                  sll          s0, a5, t2
                  sb           ra, -214(ra)
                  sra          s4, ra, s7
                  lhu          a4, -283(ra)
                  nop
                  lui          a1, 742325
                  sb           a5, -1267(ra)
                  or           a6, a1, a0
                  and          a0, s11, zero
                  sub          s2, t5, a1
                  lb           s2, -622(ra)
                  lbu          t2, -1340(ra) #end riscv_load_store_rand_instr_stream_0
                  bne          s4, s11, 615f
                  slt          a3, s4, a1
615:              bge          a3, ra, 626f
                  sltu         t4, a3, s0
                  and          s11, ra, t6
                  xor          s1, s7, t0
                  bgeu         t1, tp, 626f
                  add          t6, s10, a0
                  andi         s4, a1, 1718
                  srli         s1, s2, 31
                  andi         s11, tp, -1576
                  xor          zero, t6, s1
                  slt          zero, s5, s2
626:              sll          a1, s3, zero
                  auipc        t1, 922004
                  add          tp, a4, a1
                  and          a1, s9, s1
                  srl          tp, s3, s11
                  sra          s7, sp, t3
                  bgeu         t0, t6, 642f
                  sub          t5, a5, s6
                  nop
                  slli         a7, t5, 15
                  sltiu        gp, a6, 1445
                  addi         a0, s9, 1654
                  srli         s5, t0, 2
                  add          s7, a3, tp
                  beq          a0, a6, 657f
                  bne          a6, a3, 650f
642:              slli         s5, s2, 27
                  srli         a6, a2, 17
                  andi         s4, s7, 769
                  srl          s3, a4, t4
                  sub          t4, t1, t5
                  addi         zero, s7, -559
                  slli         s1, s10, 30
                  lui          s9, 501506
650:              xori         t6, s0, -1663
                  blt          gp, a2, 653f
                  sltiu        t6, s4, -1564
653:              xor          t5, a7, gp
                  sltiu        a1, s8, -171
                  xori         a4, t0, 1128
                  beq          s0, t4, 663f
657:              srl          a2, a5, zero
                  slt          s10, a4, s5
                  slli         a3, s5, 25
                  sub          s10, a2, tp
                  srli         s11, s3, 11
                  and          t2, a5, t0
663:              slli         t1, s2, 5
                  addi         s4, t3, -2027
                  sltu         s9, a4, s4
                  sub          t5, t2, s3
                  slt          s5, t5, s10
                  or           s11, s0, s10
                  or           t3, t6, t2
                  srl          s1, t0, a4
                  bltu         s3, zero, 678f
                  addi         a0, s10, 1866
                  bgeu         s0, s10, 677f
                  slti         s7, a2, -2022
                  andi         s3, ra, 1308
                  add          s10, s11, t6
677:              bne          gp, sp, 682f
678:              beq          s2, a6, 680f
                  ori          t1, a1, -1552
680:              blt          t5, s7, 690f
                  xori         s1, t5, -109
682:              sra          a1, t5, t3
                  bne          s0, s2, 699f
                  and          s6, s2, s1
                  nop
                  srl          a1, gp, tp
                  bge          s8, s1, 707f
                  bne          t0, t3, 696f
                  bne          s4, a3, 702f
690:              ori          a2, a7, 1020
                  bge          t5, a6, 702f
                  xor          tp, a5, t5
                  andi         t3, zero, 576
                  slt          t4, a7, s8
                  xori         s0, a6, 1652
696:              add          t6, s10, t4
                  srl          t0, s0, t1
                  lui          s0, 608814
699:              lui          ra, 315196
                  lui          t5, 943955
                  xor          t4, t3, t0
702:              srai         s5, a5, 4
                  sub          t5, t0, s2
                  xori         t4, t4, 621
                  bne          t6, tp, 713f
                  xor          s11, t0, t3
707:              xor          t4, t5, ra
                  xor          s10, t6, s5
                  sll          tp, a4, sp
                  xori         s9, s5, -527
                  sll          s4, s4, t0
                  beq          s8, gp, 719f
713:              add          a3, s5, a1
                  nop
                  andi         s7, zero, 1129
                  bgeu         t3, a2, 727f
                  slli         s1, a0, 6
                  slti         a4, sp, -1827
719:              auipc        t4, 379065
                  srli         t3, ra, 30
                  or           s9, a0, s5
                  sll          a6, a5, a0
                  andi         gp, a4, 471
                  srl          s10, s3, a7
                  xor          a3, s9, t0
                  nop
727:              bltu         t1, ra, 744f
                  slt          s11, t3, ra
                  nop
                  nop
                  sltu         a6, s7, t3
                  srli         t3, t2, 22
                  srl          t4, s5, tp
                  addi         tp, s0, 1417
                  beq          t5, a6, 755f
                  slti         s1, s5, -985
                  lui          s4, 830597
                  sub          t6, t5, gp
                  auipc        s4, 180404
                  and          t2, a5, sp
                  slt          s7, a6, a0
                  bltu         a3, a0, 746f
                  beq          t2, t5, 755f
744:              slt          s2, gp, s5
                  sltiu        t2, gp, 349
746:              sltiu        s1, gp, -730
                  sub          tp, gp, t1
                  beq          a5, t6, 754f
                  lui          a7, 309825
                  sltu         t3, a5, t2
                  blt          s7, t3, 752f
752:              blt          s1, s3, 768f
                  addi         a0, s3, 1363
754:              srli         s3, a5, 11
755:              sltiu        a1, t1, 634
                  xor          a7, s9, t5
                  bne          a0, s0, 765f
                  slli         s2, a5, 7
                  lui          s4, 408776
                  bgeu         a0, s1, 770f
                  sltiu        zero, s11, 1663
                  xori         s7, sp, 1736
                  addi         a3, s5, 103
                  bne          s10, t3, 769f
765:              or           t3, s8, s4
                  srl          a2, t3, a3
                  bltu         a2, sp, 787f
768:              add          tp, s7, t1
769:              sltu         s0, t6, t3
770:              beq          s6, a1, 781f
                  nop
                  add          a6, s3, t6
                  and          t2, s9, s7
                  bltu         t2, a1, 776f
                  add          a1, s4, a0
776:              sub          a6, a1, s5
                  auipc        s11, 917548
                  and          s9, a2, a6
                  beq          a3, t2, 787f
                  sltiu        t1, s1, 1058
781:              bgeu         s10, t2, 789f
                  andi         s3, s5, -87
                  xor          a6, s3, zero
                  xori         gp, s9, 1315
                  nop
                  srl          s2, t6, s7
787:              andi         s7, tp, -1297
                  sub          ra, a7, s0
789:              slli         ra, t4, 5
                  xor          s0, t3, a4
                  bne          a5, a7, 798f
                  sltiu        s2, s1, 87
                  xor          a4, zero, t3
                  sra          a6, a4, s11
                  srli         s1, t3, 24
                  addi         s5, s3, -559
                  srl          a6, sp, t2
798:              blt          a1, s6, 799f
799:              srl          t1, sp, ra
                  lw           s1, 4(a5)
                  sltu         s9, s1, sp
                  addi         a5, a5, 16
                  andi         t4, a0, -256
                  slti         s6, t0, -322
                  sra          s7, sp, sp
1092:             addi x18, x9, 0
1092:             jalr x18, x18, 0
sub_8:            addi         s6, s4, 711
                  bne          t1, t6, sub_8_stack_p
sub_8_stack_p:    addi         a5, a5, -40
                  sll          t6, t4, t3
                  sw           s1, 4(a5)
                  srl          tp, s0, a5
                  add          zero, tp, s4
                  add          t5, sp, s0
                  sub          a3, ra, a4
                  slti         t6, tp, -1155
                  la           a7, sub_9
                  xor          s6, s9, s6
                  sltu         tp, a6, t1
                  sltu         a4, ra, s11
                  xori         s11, ra, 624
                  addi         a7, a7, 266
                  srl          tp, t6, s9
                  addi         s1, t2, 574
                  and          t0, a6, gp
                  srli         zero, sp, 23
                  or           t2, s6, s8
sub_8_j13:        jalr         s1, a7, -266 #jump sub_8 -> sub_9
                  bltu         a1, t5, 5f
                  ori          tp, a1, -181
                  xor          s1, sp, s5
                  bne          t0, s9, 22f
                  auipc        gp, 879817
5:                slli         s9, a0, 27
                  sltiu        zero, sp, 1594
                  lui          t2, 794701
                  sra          tp, s9, t4
                  slt          ra, a7, s4
                  blt          s7, s6, 14f
                  andi         a0, t2, -1900
                  addi         s2, t3, -1277
                  sltu         a3, t3, s6
14:               andi         a7, t2, -1688
                  slli         a1, a5, 10
                  beq          t4, s8, 32f
                  blt          t5, s7, 36f
                  nop
                  nop
                  sra          s3, t5, zero
                  sub          s7, zero, a0
22:               blt          a6, tp, 33f
                  slli         ra, t6, 7
                  srl          a3, a5, s2
                  slli         a4, s5, 8
                  beq          gp, sp, 44f
                  bne          a0, a1, 40f
                  add          t1, sp, zero
                  bgeu         s3, zero, 33f
                  andi         t2, s1, -835
                  bgeu         ra, s2, 36f
32:               beq          t1, t0, 34f
33:               slt          s6, tp, s9
34:               add          a2, a5, zero
                  srl          s0, s9, a5
36:               nop
                  xor          a7, s11, a4
                  bge          t4, a0, 41f
                  srl          s7, a1, tp
40:               srl          s0, s11, a1
41:               addi         s2, s0, -632
                  bltu         a1, a4, 52f
                  beq          t1, s4, 50f
44:               blt          s8, zero, 50f
                  andi         a2, t5, 1681
                  bne          s11, a2, 50f
                  auipc        t1, 1036582
                  sub          s2, t0, a4
                  slli         a1, s3, 21
50:               auipc        t2, 265821
                  add          s0, a4, t4
52:               addi         a6, t3, 1649
                  add          s6, a0, a1
                  sltu         a1, t1, a3
                  sra          s5, s7, t2
                  slti         t2, tp, -184
                  srl          gp, s3, t5
                  bge          s4, s10, 71f
                  xori         s2, a7, 1999
                  addi         t4, a4, -1687
                  bgeu         s6, sp, 73f
                  add          t2, s7, s2
                  sltu         s4, s6, zero
                  nop
                  bge          s11, sp, 80f
                  xori         s10, t5, -310
                  bltu         s0, t6, 68f
68:               srl          t4, a0, s8
                  slt          a3, s6, a2
                  auipc        s10, 750733
71:               sltiu        t0, a7, -506
                  bltu         t3, a4, 76f
73:               xori         s7, t5, -1739
                  and          a7, ra, zero
                  srai         ra, s4, 6
76:               beq          sp, s5, 83f
                  srl          t2, a3, a2
                  slt          t0, s7, a2
                  add          s0, t1, s7
80:               bltu         t4, a4, 81f
81:               sltu         t3, zero, a4
                  bne          t1, t3, 83f
83:               ori          zero, s5, -491
                  lw           s1, 4(a5)
                  ori          s0, s6, 119
                  sra          a1, s7, a7
                  addi         a1, s6, -2008
                  lui          s10, 313491
                  srai         s11, s4, 5
                  addi         a5, a5, 40
                  ori          s10, s5, 1837
                  andi         t0, ra, 1505
                  sll          a4, s8, s5
116:              addi x11, x9, 0
116:              jalr x11, x11, 0
sub_9:            andi         t6, s0, -272
                  addi         a5, a5, -40
                  auipc        tp, 548648
                  or           s2, s0, gp
                  sw           s1, 4(a5)
                  or           s9, a6, t5
                  la           s7, region_0+469 #start riscv_load_store_rand_instr_stream_3
                  lb           gp, 2(s7)
                  lb           t1, 0(s7)
                  nop
                  sb           t1, 2(s7)
                  auipc        a6, 507138
                  sra          t5, zero, a0
                  sra          t2, s9, s4
                  lbu          tp, 12(s7)
                  and          a4, a6, a6
                  srai         s11, s3, 9
                  lb           a3, 1(s7)
                  sb           s7, 10(s7)
                  lb           t3, -4(s7)
                  andi         s4, t1, 1303
                  or           t2, a5, a0
                  lhu          a2, -5(s7)
                  sltu         s9, a0, t5
                  slti         a7, s10, 543
                  and          s10, s1, ra
                  sh           a5, -15(s7)
                  nop
                  srli         s1, t6, 0
                  lui          s3, 616672
                  slti         t2, t5, 2047
                  add          t5, t6, t1
                  ori          s2, t2, -337
                  lb           s11, -4(s7)
                  lbu          t3, 1(s7) #end riscv_load_store_rand_instr_stream_3
                  la           s5, region_1+500 #start riscv_load_store_rand_instr_stream_0
                  lbu          a2, -331(s5)
                  lbu          t2, 241(s5)
                  add          s11, a7, t1
                  sltiu        s1, s3, -1835
                  lb           ra, 11(s5)
                  srli         t2, s1, 3
                  sb           a5, 817(s5)
                  slli         gp, a2, 30
                  lhu          s7, 782(s5)
                  lhu          s9, 670(s5)
                  sh           t6, 224(s5)
                  or           a7, a1, s7
                  srai         t2, s3, 28
                  lb           a0, 159(s5)
                  lbu          a3, 645(s5)
                  slti         a6, a2, -1481
                  lb           s0, 1280(s5)
                  sw           t4, 260(s5)
                  lb           a1, -411(s5)
                  and          s6, s2, a3
                  sb           a1, 131(s5)
                  auipc        s6, 196984
                  lb           s6, -435(s5)
                  lbu          tp, 191(s5)
                  lhu          t6, 710(s5)
                  lbu          s6, 1229(s5)
                  lui          s4, 103631
                  lbu          t0, -434(s5)
                  lui          a4, 1029379
                  ori          a0, a1, 1140
                  sh           s1, -266(s5)
                  srl          s1, s9, s10
                  lhu          a6, 482(s5)
                  add          s1, s2, s5
                  lui          s7, 336290
                  lb           s6, 830(s5)
                  slti         a7, s8, -205
                  and          s2, t3, a4
                  sb           s6, 235(s5)
                  sll          t3, s2, t6
                  lb           t2, 1387(s5)
                  sb           s2, 455(s5)
                  sb           s7, -79(s5)
                  sw           s11, 648(s5) #end riscv_load_store_rand_instr_stream_0
                  la           s11, region_0+139 #start riscv_load_store_rand_instr_stream_2
                  sub          t1, s4, s10
                  lb           s1, 204(s11)
                  or           a4, s3, t5
                  sb           t2, -2(s11)
                  lb           ra, 128(s11)
                  add          t4, a3, s6
                  sltiu        zero, t5, 613
                  slti         a2, s2, 501
                  sltu         zero, t3, a4
                  srli         s3, gp, 29
                  lh           s2, -111(s11)
                  slli         s9, a2, 3
                  sltu         s2, a4, a7
                  nop
                  nop
                  addi         s5, s9, 150
                  sb           s9, 11(s11)
                  lw           zero, -111(s11)
                  and          a2, s7, s6
                  slt          gp, tp, s10
                  andi         t6, s11, 21
                  or           s1, s10, sp
                  sb           a7, 169(s11)
                  sll          a4, s5, s4
                  slli         s5, a0, 27
                  xori         t6, s1, 448
                  sw           a4, 53(s11)
                  lui          s10, 924451
                  lbu          t6, 219(s11)
                  sb           t2, 180(s11)
                  andi         t5, a6, 692
                  lb           t3, 116(s11)
                  xori         ra, a5, 1838
                  srl          s10, s11, t5
                  sltu         t4, a0, s5
                  sh           t1, -5(s11)
                  and          s4, t5, s2
                  sb           gp, 236(s11)
                  ori          s9, s7, -498
                  lb           s6, 47(s11)
                  lui          s9, 497128
                  lbu          s0, 62(s11)
                  sb           tp, -70(s11)
                  lb           t0, 141(s11)
                  xori         s6, a7, -614
                  srli         s9, sp, 11
                  xori         s9, s7, 912
                  sb           a3, 2(s11)
                  lb           t1, 118(s11) #end riscv_load_store_rand_instr_stream_2
                  la           s7, region_1+706 #start riscv_load_store_rand_instr_stream_4
                  sb           a4, -36(s7)
                  lb           gp, -11(s7)
                  sra          t1, t2, a6
                  sb           a6, -57(s7)
                  sra          gp, s10, tp
                  add          s6, s4, s4
                  sw           t0, 54(s7)
                  sb           a5, 5(s7)
                  sra          t6, a0, a3
                  lb           s9, 17(s7)
                  nop
                  sb           a5, -16(s7)
                  sb           a3, 24(s7)
                  sll          s0, a3, a5
                  sb           zero, 10(s7)
                  lb           t3, 11(s7)
                  sltiu        s10, s4, 1242
                  auipc        t3, 433846
                  slt          t0, s0, s10
                  auipc        s2, 47122
                  xori         s6, t3, 629
                  sb           a4, 15(s7)
                  slli         a3, s3, 6
                  sb           t0, -31(s7)
                  sra          t5, t4, s5
                  sh           a0, 30(s7)
                  sub          s9, a5, a0
                  andi         t6, a6, -1242
                  srl          s2, s4, t5
                  sub          a6, a2, t1
                  auipc        s5, 10870
                  addi         s10, t6, -1283
                  sltiu        s6, s2, 586
                  lhu          ra, -10(s7)
                  xori         s2, s2, -1220
                  lb           s5, 14(s7)
                  nop
                  xori         a1, s0, 331
                  sb           tp, -19(s7)
                  lb           a1, 4(s7)
                  lh           s1, -36(s7)
                  xor          s5, gp, s8
                  sra          a2, s6, a3
                  sll          t6, s2, ra
                  sb           zero, -18(s7) #end riscv_load_store_rand_instr_stream_4
                  andi         a3, s5, 1324
                  xori         a3, t6, 1855
                  xori         s11, s7, -833
                  slli         s3, s1, 16
                  addi         s7, s6, 35
                  add          s3, zero, t1
                  andi         s1, t1, 267
                  add          t4, ra, a1
                  srl          gp, s1, a1
                  srli         t3, t6, 6
                  xor          a6, t6, gp
                  andi         s11, tp, 1250
                  addi         tp, s10, 385
                  or           a7, s5, tp
                  xori         s7, a5, -1414
                  xori         t2, s0, 1837
                  xori         t6, t5, 1980
                  srl          t1, ra, a0
                  bltu         s9, s3, 25f
                  and          t5, t3, ra
                  slt          s7, a3, t2
                  bge          s5, tp, 28f
                  addi         s6, s2, 1079
                  srai         ra, t0, 13
                  or           t6, s3, ra
25:               and          s6, s11, t2
                  sub          gp, s1, gp
                  bltu         t6, a4, 43f
28:               auipc        a3, 870446
                  srl          s1, s5, a1
                  lui          a1, 1018795
                  xor          t3, a7, zero
                  beq          t2, ra, 39f
                  bgeu         s7, s6, 53f
                  auipc        a4, 723552
                  sra          gp, t1, a6
                  andi         t5, s9, 305
                  or           a3, s8, t6
                  nop
39:               nop
                  bne          s3, s6, 60f
                  bne          a2, a2, 45f
                  and          s0, s9, s7
43:               sub          t3, s3, s0
                  andi         t6, t2, -77
45:               sltu         s6, s2, tp
                  sub          ra, a6, a4
                  xor          gp, s0, s7
                  bgeu         a3, tp, 56f
                  nop
                  add          a1, s9, sp
                  addi         a3, s3, -1092
                  srl          t5, s0, s11
53:               bltu         ra, ra, 71f
                  srai         s3, s0, 18
                  andi         t2, a0, -882
56:               sra          s0, s7, sp
                  auipc        s10, 336791
                  sra          s1, a4, s5
                  bge          a2, a5, 70f
60:               slli         tp, s1, 5
                  bgeu         a1, tp, 66f
                  sltiu        s9, t0, -1741
                  xor          a3, t0, s10
                  sltiu        a6, s6, -773
                  srli         t0, s6, 3
66:               slt          ra, s11, a6
                  bltu         s11, s0, 86f
                  slli         s2, s3, 5
                  andi         s11, zero, -929
70:               and          t3, s4, gp
71:               ori          a1, s3, -1817
                  ori          s2, a1, 199
                  add          zero, t5, s8
                  slti         s11, a5, 1783
                  srai         zero, t3, 5
                  sltiu        a2, s5, 78
                  addi         s7, s3, -1747
                  bge          t3, a3, 83f
                  bge          s7, s10, 82f
                  slli         s9, s11, 30
                  bltu         s0, gp, 88f
82:               ori          a0, s1, 657
83:               add          s5, a6, t2
                  nop
                  or           t1, sp, sp
86:               add          s5, t6, a2
                  sltiu        t2, sp, 1970
88:               lui          a2, 519245
                  sra          s2, ra, s6
                  sltiu        t4, ra, 492
                  blt          a7, t4, 107f
                  sltu         s11, t1, a3
                  sll          t5, s2, s5
                  or           a4, t3, t4
                  srl          s9, a6, ra
                  xor          t2, a6, sp
                  add          s0, s2, s0
                  slt          s0, s11, s11
                  sltu         zero, s10, s3
                  xor          s10, s4, a6
                  blt          t5, s2, 103f
                  bgeu         s5, tp, 106f
103:              and          zero, s2, s8
                  auipc        t4, 51149
                  xori         t5, s0, 1088
106:              lui          s10, 913123
107:              auipc        a2, 162450
                  bge          t6, t4, 110f
                  sub          t5, s2, sp
110:              sltu         s11, s0, a1
                  andi         a2, a5, 125
                  srl          s11, s6, t1
                  beq          gp, zero, 127f
                  slti         a2, s9, -1335
                  sll          a7, s8, t3
                  and          s0, s5, a0
                  bne          t3, s0, 122f
                  blt          t6, s4, 125f
                  srl          s0, t3, t0
                  add          t4, t2, a6
                  srli         t3, s4, 3
122:              ori          s6, a4, 160
                  andi         s7, ra, -1290
                  sltiu        s2, s10, 1168
125:              slli         s0, t4, 24
                  slt          s5, t6, s11
127:              xori         s2, a2, 1867
                  lui          s2, 488650
                  xori         a2, s7, -85
                  bgeu         s11, s11, 133f
                  srai         s5, tp, 20
                  sltu         tp, s2, sp
133:              nop
                  xor          a6, t1, t3
                  srai         s4, zero, 19
                  xor          s10, a2, s4
                  sra          t5, t2, s11
                  sra          t3, t5, t5
                  sra          a6, t2, s4
                  addi         t4, zero, -743
                  sll          a1, t0, t6
                  ori          s7, tp, -1562
                  auipc        a0, 215174
                  ori          ra, s10, 1738
                  sltu         s9, a2, a1
                  auipc        t6, 943263
                  bltu         zero, a2, 162f
                  nop
                  sltu         s4, a6, t4
                  xor          t2, a5, s8
                  addi         s9, a1, 1444
                  andi         s0, s10, 1351
                  nop
                  sltiu        s2, a5, 309
                  srai         t3, a2, 31
                  beq          zero, a6, 162f
                  blt          t5, t0, 170f
                  ori          t0, sp, -40
                  auipc        s1, 339405
                  srli         t5, s3, 21
                  bge          sp, sp, 165f
162:              andi         a3, gp, -603
                  and          zero, a3, a7
                  nop
165:              sub          s10, s7, s0
                  sltu         t6, s2, sp
                  sll          s5, tp, s5
                  xori         s3, s3, -2043
                  srl          s6, s9, s6
170:              srai         a6, t1, 25
                  xor          s10, a0, s8
                  nop
                  bltu         a4, sp, 187f
                  xor          tp, t2, a3
                  bgeu         s10, zero, 192f
                  and          t0, t3, a3
                  or           a4, zero, s11
                  srl          a3, ra, t0
                  bltu         s9, a2, 188f
                  sra          s5, t4, s5
                  xori         s3, s4, -1374
                  xori         t6, s0, 853
                  addi         s5, s10, 1864
                  sub          a1, s9, s7
                  sra          a6, a6, t0
                  lui          s6, 1043928
187:              lui          t1, 94612
188:              sltu         a7, sp, s8
                  sltiu        s5, t6, 147
                  andi         t2, a1, -800
                  blt          gp, a7, 199f
192:              srl          a4, sp, gp
                  xor          s0, gp, sp
                  nop
                  sub          a4, sp, t1
                  slli         t1, s11, 16
                  or           t5, a2, t4
                  add          a1, s11, gp
199:              andi         s0, a4, -1128
                  bne          sp, gp, 204f
                  sltiu        s3, t5, 994
                  sll          s2, s0, s5
                  lui          a3, 109376
204:              bltu         s1, t1, 221f
                  slt          s6, s11, a4
                  xor          s5, a5, t1
                  xori         t3, s9, -618
                  lui          a4, 294654
                  bne          a5, s9, 211f
                  bgeu         t6, t3, 217f
211:              lui          a3, 859630
                  xor          t6, s1, a3
                  lui          t5, 293884
                  add          zero, s5, a1
                  srl          s6, a7, s3
                  sltu         s9, sp, a3
217:              and          t1, a2, s1
                  bgeu         s10, a5, 224f
                  srai         t0, a3, 17
                  srai         t3, s4, 25
221:              addi         t5, a3, 305
                  sll          t5, s1, a2
                  bge          s11, t3, 225f
224:              slti         a1, s0, 2039
225:              slt          t6, a6, t2
                  or           a4, a4, s9
                  xori         t4, ra, -109
                  sub          a6, s4, t0
                  bge          s7, a2, 247f
                  auipc        a2, 513178
                  lui          zero, 749827
                  sll          t2, a0, gp
                  slti         s6, t5, -227
                  slt          s10, s9, s4
                  blt          t6, t3, 240f
                  addi         s10, s3, 1801
                  xori         ra, sp, 1170
                  xori         s1, gp, 420
                  ori          s1, s10, 1193
240:              slti         a0, t4, -248
                  sra          a0, t5, t2
                  xor          s0, s10, s2
                  andi         s10, s1, 904
                  add          t1, a0, s1
                  nop
                  bgeu         s1, s3, 253f
247:              ori          s4, a2, 1341
                  srai         s7, t4, 26
                  blt          t4, s9, 254f
                  xor          a1, tp, s5
                  srli         gp, gp, 10
                  bge          a2, a0, 272f
253:              srai         zero, a3, 0
                  la           gp, region_1+864 #start riscv_load_store_rand_instr_stream_1
                  srai         t3, gp, 22
                  sb           s9, -13(gp)
                  slt          t4, ra, a2
                  or           s10, a1, tp
                  sltu         a4, t0, a1
                  lh           s3, 6(gp)
                  lbu          a0, -15(gp)
                  lbu          ra, 11(gp)
                  lbu          a2, -2(gp)
                  lb           a6, -6(gp)
                  auipc        s9, 1031604
                  srli         s11, gp, 15
                  nop
                  xor          tp, s6, s1
                  lui          a7, 1014862
                  sll          s6, ra, a7
                  sb           s1, 13(gp)
                  sra          s2, s11, t0
                  lh           a3, 16(gp)
                  lh           s2, 2(gp)
                  sltiu        s7, gp, -1407
                  auipc        a4, 678378
                  slt          s6, s8, t4
                  sub          a1, s3, s5
                  add          t2, s9, s5
                  ori          t4, s8, 1658
                  slli         s2, s8, 8
                  sltu         a1, s3, a0
                  lui          a0, 935033
                  auipc        s5, 1023098
                  srai         s5, s1, 29
                  sb           tp, -4(gp) #end riscv_load_store_rand_instr_stream_1
254:              addi         s9, s4, 1302
                  andi         tp, a5, -1352
                  sltiu        s2, t0, 512
                  lui          t3, 406331
                  add          ra, t4, s1
                  lui          t4, 525192
                  nop
                  bne          s0, t4, 270f
                  bgeu         gp, a3, 281f
                  srai         s3, a7, 22
                  add          t1, ra, s6
                  nop
                  xor          a4, s1, ra
                  nop
                  auipc        t4, 656083
                  slti         s7, a5, 144
270:              xori         s5, a3, -1149
                  add          s4, t0, sp
272:              addi         tp, s9, 38
                  slli         zero, s4, 23
                  srl          t4, s10, s0
                  bge          gp, s8, 282f
                  nop
                  andi         tp, t4, -1317
                  slti         t2, s7, -1015
                  sra          a0, sp, t5
                  slli         s0, s7, 28
                  la           s3, sub_10
                  addi         s3, s3, 976
                  ori          a1, zero, 512
                  or           t2, t3, t1
                  and          s9, ra, s7
                  sltiu        a4, zero, 1759
                  bge          s8, t5, sub_9_j14 #branch to jump instr
                  andi         a1, t3, -682
sub_9_j14:        jalr         s1, s3, -975 #jump sub_9 -> sub_10
                  nop
                  sltiu        s9, s8, 680
                  xori         gp, s6, -737
                  nop
281:              srli         s9, s7, 24
282:              auipc        t4, 332195
                  bne          s7, a4, 294f
                  sra          a4, a5, ra
                  sra          a2, zero, s9
                  slli         s4, s3, 25
                  slti         t4, a7, 167
                  sll          a3, tp, a4
                  blt          t3, ra, 304f
                  srai         t6, s2, 8
                  slt          gp, a1, t5
                  blt          a0, a7, 312f
                  sltiu        s1, a7, 629
294:              add          t3, a4, a6
                  andi         t6, s6, 816
                  auipc        a2, 311016
                  srli         s3, t2, 18
                  srl          s9, t0, t1
                  and          s10, s3, s2
                  bne          t1, t3, 303f
                  addi         a4, t4, -105
                  beq          s6, t2, 316f
303:              add          a6, zero, s6
304:              xori         s6, s8, 461
                  sltu         tp, s8, a4
                  nop
                  andi         s5, tp, 515
                  andi         a1, a2, 318
                  bgeu         t5, a7, 325f
                  sltiu        a3, a2, -381
                  srai         t5, a3, 2
312:              slt          s0, t2, s3
                  xori         t6, s6, -823
                  sltiu        a2, s5, -69
                  andi         a7, a2, -1554
316:              srl          s0, a6, s7
                  xor          a6, a7, gp
                  bgeu         s8, a7, 321f
                  bltu         s5, s5, 323f
                  and          a6, t1, gp
321:              slti         s1, a6, -1938
                  addi         s4, t6, -1727
323:              nop
                  xori         a6, s8, -1782
325:              nop
                  slti         s7, s8, 385
                  add          s6, t0, ra
                  slti         gp, a7, -464
                  srli         a2, a0, 19
                  slli         s0, ra, 28
                  add          s6, s6, s3
                  xori         t3, s3, 1554
                  sltu         s4, t5, tp
                  srli         ra, s11, 5
                  srl          s3, s1, s9
                  xor          ra, t6, a6
                  beq          t1, sp, 344f
                  sub          a3, tp, gp
                  andi         t5, s3, 910
                  bgeu         s4, a3, 356f
                  andi         t0, a2, -31
                  nop
                  sltu         s2, s4, t3
344:              bgeu         a7, t3, 357f
                  sub          s9, s7, ra
                  sub          zero, t3, t0
                  lui          tp, 375433
                  add          t3, t6, s3
                  ori          t2, ra, -195
                  blt          gp, s11, 355f
                  slti         s11, t1, 1507
                  lui          s1, 260246
                  beq          s8, t3, 357f
                  bltu         a7, t2, 361f
355:              sub          a6, ra, t1
356:              auipc        s2, 422988
357:              xori         s1, t0, 1702
                  xor          t3, ra, a5
                  add          s0, s5, ra
                  bne          t3, t0, 374f
361:              slti         s3, t3, 1288
                  addi         ra, t4, 536
                  sll          t2, t5, s0
                  slli         a4, t0, 0
                  or           ra, s8, s4
                  nop
                  bge          t4, s11, 381f
                  blt          a1, zero, 372f
                  add          s10, s6, s0
                  bne          t4, a0, 375f
                  slli         a3, s7, 24
372:              xori         a1, s1, 1542
                  or           a7, s2, t6
374:              add          t3, zero, t2
375:              bne          s6, ra, 394f
                  sltiu        s10, s1, -1763
                  blt          a1, s6, 394f
                  addi         s2, t3, -761
                  sll          t0, t5, a1
                  sll          s6, t5, t3
381:              add          t2, s8, s4
                  sltiu        a6, s0, 571
                  add          a2, a7, t5
                  and          s11, t4, s4
                  lui          a4, 421915
                  slt          s7, s4, a3
                  srli         s0, s5, 29
                  nop
                  blt          t0, t6, 397f
                  srli         s1, a4, 14
                  bltu         s9, a2, 394f
                  sub          t3, s0, a0
                  sll          s7, s4, s6
394:              and          s10, s7, ra
                  blt          a7, s11, 397f
                  or           a7, s1, t5
397:              addi         a4, s7, 263
                  sll          t6, s8, t0
                  slli         s2, s11, 1
                  bne          gp, a0, 420f
                  slli         t0, s11, 10
                  sub          s9, zero, a3
                  addi         s10, s6, -870
                  bgeu         ra, s5, 417f
                  srl          t5, a4, ra
                  bltu         s7, s9, 412f
                  xori         a6, s11, -675
                  bne          zero, t2, 415f
                  sra          s0, t6, ra
                  sll          t0, ra, t5
                  sub          s5, t4, a4
412:              lui          s5, 352419
                  sltu         s11, gp, t4
                  lui          a3, 343466
415:              srli         s1, s10, 16
                  sltiu        s1, a3, 1310
417:              slli         gp, tp, 29
                  slli         s11, t3, 18
                  bgeu         s10, t0, 424f
420:              nop
                  beq          t6, t0, 428f
                  srl          t2, a7, s3
                  andi         s10, gp, 1076
424:              srai         t5, tp, 18
                  sra          a0, a1, t0
                  bltu         t3, t6, 433f
                  sll          a0, a7, t6
428:              addi         a7, a6, -797
                  auipc        ra, 929226
                  and          t0, s4, s8
                  xor          t4, s3, s10
                  sltiu        s1, t3, 1433
433:              sltu         a0, s7, s10
                  lui          a6, 26431
                  bge          s6, s0, 437f
                  sub          s4, a4, s4
437:              ori          t4, s1, -1522
                  or           t5, t6, s10
                  nop
                  xor          s3, a3, s8
                  sra          gp, t1, s5
                  nop
                  slti         t6, s11, 331
                  srli         tp, a4, 12
                  addi         t6, s8, -1753
                  sra          a2, s9, t3
                  bltu         t0, a7, 450f
                  sltiu        s2, t3, -1096
                  addi         a1, t4, -1737
450:              nop
                  sub          ra, a7, s9
                  lui          t1, 1039966
                  sra          a3, sp, gp
                  add          a2, s11, s8
                  or           t1, s4, s8
                  srli         a6, s1, 5
                  sra          a2, zero, s10
                  bge          a2, a2, 472f
                  slti         s7, ra, 1053
                  addi         s6, a1, 187
                  xor          a4, t4, a7
                  bgeu         a0, s4, 482f
                  srai         t6, t6, 29
                  sub          t3, t6, sp
                  auipc        t1, 976513
                  and          zero, a1, s5
                  lui          s10, 820378
                  nop
                  sltu         a4, a7, s6
                  and          s11, t4, a3
                  ori          a1, t0, -545
472:              bgeu         s11, s10, 477f
                  blt          tp, s4, 488f
                  bltu         a2, s0, 483f
                  srli         s9, a5, 21
                  slt          t0, t3, sp
477:              and          t5, s11, a7
                  srl          s11, a6, zero
                  or           t5, s9, a4
                  srai         a1, a4, 20
                  bne          s11, a6, 492f
482:              andi         t1, t4, -1239
483:              sra          t1, ra, a1
                  xor          t1, t4, a0
                  srai         gp, t2, 9
                  slti         s6, t5, -1557
                  andi         a3, s3, -1857
488:              bgeu         t3, sp, 495f
                  beq          zero, s2, 496f
                  xor          s1, zero, s6
                  or           ra, gp, a3
492:              nop
                  sltu         a3, a7, s11
                  blt          a7, t4, 510f
495:              xor          t3, a4, s0
496:              bne          s1, s5, 500f
                  srl          a3, s7, a3
                  ori          a3, s4, 75
                  bge          ra, t5, 515f
500:              andi         s9, t4, 1950
                  srli         s7, s9, 29
                  add          s7, s2, ra
                  lui          t1, 511303
                  slti         a1, t2, -942
                  sll          s2, t5, a0
                  nop
                  addi         t6, a2, 218
                  sra          ra, a7, a0
                  bge          s7, s2, 527f
510:              xori         s6, a7, 1360
                  slti         s11, s9, 1160
                  nop
                  sltiu        t1, a4, 808
                  or           s5, t1, s4
515:              and          a6, t4, a3
                  nop
                  srai         s9, a2, 23
                  sltiu        ra, s7, 305
                  srli         ra, a6, 6
                  sra          t4, s0, t3
                  sltu         s10, sp, a0
                  sll          a6, s8, s6
                  or           a6, t5, t6
                  ori          a4, s11, -1459
                  bltu         a3, s6, 529f
                  lui          tp, 970717
527:              addi         a3, s4, -1151
                  sub          t5, a6, t5
529:              bge          zero, s0, 536f
                  blt          a3, s8, 532f
                  srai         gp, s2, 25
532:              auipc        gp, 415705
                  sll          t3, ra, s9
                  srli         s4, s8, 8
                  sltu         s11, s7, zero
536:              and          a2, t5, a2
                  beq          a7, a3, 542f
                  sltiu        s10, s11, 550
                  nop
                  auipc        s3, 1036480
                  xor          t4, s5, t0
542:              sltiu        a7, s0, -1918
                  nop
                  nop
                  add          a6, a2, s0
                  bge          t0, a4, 565f
                  srai         a6, a7, 30
                  slt          a2, s10, s9
                  bne          zero, a7, 556f
                  xor          s2, s3, s4
                  add          a0, ra, sp
                  bne          s0, s2, 559f
                  sltiu        s4, a6, -1790
                  sub          s6, s7, a5
                  blt          sp, a7, 558f
556:              and          s3, a3, s6
                  bne          s3, s10, 561f
558:              slt          a7, sp, tp
559:              blt          a3, s6, 562f
                  lui          s2, 845889
561:              srl          gp, s3, s1
562:              add          a0, s4, s3
                  add          a7, t3, t1
                  and          a1, s9, a0
565:              sub          t6, gp, a2
                  sra          s11, s11, s6
                  add          a3, t2, s1
                  xor          a4, s8, a0
                  srli         s0, a7, 9
                  lui          s2, 641930
                  bltu         s3, sp, 591f
                  sll          s5, a2, a3
                  sll          s5, s6, a2
                  blt          a2, tp, 588f
                  addi         t5, s9, 340
                  bltu         t1, t4, 582f
                  or           s10, tp, t2
                  srli         s0, s0, 31
                  and          s5, s2, t1
                  slt          a2, a4, s4
                  bge          s9, a7, 588f
582:              sub          s0, zero, a1
                  add          a2, a6, s9
                  add          t2, s1, zero
                  blt          a2, a2, 590f
                  xori         a2, s2, 625
                  addi         t0, a7, 1149
588:              sra          a6, a5, sp
                  xori         s10, t4, -615
590:              lui          s7, 750253
591:              bge          s5, sp, 605f
                  sltu         s5, s7, s5
                  beq          a6, t5, 613f
                  sub          ra, t1, a1
                  andi         s4, a5, 1623
                  auipc        t6, 645685
                  slti         s3, t4, -1683
                  bge          s8, s1, 616f
                  srai         a3, t2, 11
                  srli         ra, t2, 20
                  and          s11, s7, sp
                  sra          t4, a6, zero
                  srl          s6, s10, t1
                  bne          s0, a4, 608f
605:              bge          a5, tp, 621f
                  addi         t5, t6, 1713
                  srai         t1, t5, 28
608:              sltu         s4, s6, s2
                  sll          s11, s2, t4
                  sra          s7, t1, s7
                  sub          tp, a0, a3
                  srai         s4, s0, 25
613:              bgeu         a3, t1, 628f
                  bge          t5, a7, 631f
                  srl          s9, t5, tp
616:              xor          s7, a4, s9
                  sltu         t4, gp, s4
                  xori         s7, ra, -1644
                  slli         zero, t3, 27
                  sltu         t1, s0, s11
621:              sub          t6, s0, a7
                  xori         t1, zero, -150
                  and          a1, t0, t2
                  slli         s11, t2, 5
                  sll          s2, s10, s9
                  nop
                  sll          s3, s4, a6
628:              srai         t4, sp, 19
                  sltiu        t5, s3, 242
                  slti         t6, t5, 1817
631:              bne          a5, a0, 635f
                  xori         t2, a0, -781
                  xori         t3, t6, -902
                  slti         a0, gp, -1106
635:              nop
                  ori          t2, zero, 745
                  xor          ra, s9, s3
                  sll          t4, a3, sp
                  bltu         s0, ra, 641f
                  andi         s10, s6, 173
641:              slli         t0, t3, 31
                  add          a3, s5, t3
                  add          t1, s11, s2
                  or           a3, t2, a5
                  lw           s1, 4(a5)
                  slti         t2, s4, -479
                  xor          t6, a4, s1
                  add          a0, s1, s0
                  xor          s5, t5, ra
                  lui          ra, 279833
                  addi         a5, a5, 40
                  auipc        s4, 989692
875:              addi x28, x9, 1
875:              jalr x28, x28, 0
sub_6:            nop
                  srl          s6, a1, a3
                  nop
                  addi         a5, a5, -28
                  sw           s1, 4(a5)
                  srai         s4, a1, 28
                  slt          t0, t0, a5
                  sltu         gp, t5, a2
                  srai         s5, t4, 4
                  la           s2, region_1+1686 #start riscv_load_store_rand_instr_stream_2
                  lb           s4, -110(s2)
                  srli         t4, t5, 30
                  xori         t5, s4, 129
                  srl          a3, t2, a4
                  lbu          t5, -1533(s2)
                  lbu          t2, -111(s2)
                  lb           t5, 85(s2)
                  xor          s4, a7, s11
                  sltu         s7, a5, a3
                  or           gp, a7, t3
                  and          t1, s9, s2
                  or           s6, a4, s4
                  sb           t5, 181(s2)
                  sub          a6, a0, a3
                  sw           t3, -250(s2)
                  lbu          a4, -744(s2)
                  lb           a1, 115(s2)
                  sh           t5, -1358(s2)
                  lb           s1, -149(s2)
                  auipc        a2, 799924
                  lhu          s9, 68(s2)
                  lb           s3, -5(s2)
                  lbu          s1, 250(s2)
                  sw           s10, -1178(s2)
                  lui          a2, 811636
                  sh           ra, -1544(s2)
                  sll          t3, s7, t2
                  sb           s1, 89(s2)
                  lui          s4, 937464
                  sub          s0, s11, s5
                  lb           a1, -1066(s2)
                  lb           s4, -263(s2)
                  andi         s1, a3, 209
                  lb           s0, -47(s2)
                  lbu          tp, -751(s2)
                  sh           t2, 308(s2)
                  or           s3, zero, s10
                  srl          s0, tp, s6
                  lb           a1, -298(s2) #end riscv_load_store_rand_instr_stream_2
                  la           t3, region_0+945 #start riscv_load_store_rand_instr_stream_6
                  lb           t2, 1(t3)
                  lb           a4, 46(t3)
                  lb           s4, -50(t3)
                  xori         a4, a5, 797
                  lbu          t5, 44(t3)
                  sh           s0, 39(t3)
                  lh           a1, 15(t3)
                  lhu          s7, -63(t3)
                  sh           sp, 25(t3)
                  sltu         a2, a5, t0
                  nop
                  add          a6, t0, s0
                  srli         ra, s7, 12
                  sw           s10, -21(t3)
                  auipc        t2, 59093
                  sb           tp, -50(t3)
                  lbu          s4, -30(t3)
                  add          s7, s6, sp
                  srl          a7, s0, s2
                  sw           s3, -25(t3)
                  lhu          zero, 9(t3)
                  or           a2, a6, s4
                  lh           s11, 13(t3)
                  andi         s1, t2, 1758
                  lb           a1, 40(t3)
                  sb           s6, -28(t3)
                  lh           a0, -47(t3)
                  xori         s3, a6, 241
                  slti         t0, gp, -1172
                  lb           tp, 33(t3)
                  or           s10, a5, s3
                  xori         ra, s5, 1857
                  lb           tp, 38(t3)
                  lbu          s6, 8(t3)
                  lui          a0, 858732
                  lbu          a3, -38(t3)
                  sb           t0, -3(t3)
                  lw           a4, 35(t3)
                  lbu          a1, -54(t3)
                  addi         s10, s11, -830
                  xor          a1, a0, a6
                  lhu          a6, 25(t3)
                  and          t5, s6, s10
                  lbu          t6, 0(t3) #end riscv_load_store_rand_instr_stream_6
                  la           ra, region_0+1427 #start riscv_load_store_rand_instr_stream_7
                  addi         t4, t1, -2007
                  nop
                  srli         a6, t3, 13
                  auipc        t4, 558551
                  lh           t6, 253(ra)
                  lb           a2, -84(ra)
                  slti         t6, s6, 391
                  add          t0, s4, tp
                  auipc        t5, 777156
                  sw           ra, -167(ra)
                  sll          s1, t4, a6
                  lbu          s4, 238(ra)
                  lbu          s10, -44(ra)
                  srli         s4, a5, 14
                  lbu          t6, -14(ra)
                  slt          a3, tp, t5
                  auipc        s5, 598355
                  lhu          s6, 75(ra)
                  auipc        t5, 40015
                  xor          t1, a6, a3
                  xor          s10, tp, a6
                  lb           a1, -197(ra)
                  ori          a1, t1, -511
                  lhu          a6, 83(ra)
                  srl          s4, t0, t0
                  sw           a3, 53(ra)
                  xori         zero, a2, 1931
                  lw           t3, -59(ra)
                  auipc        gp, 396579
                  lbu          t3, 88(ra)
                  xori         a4, t1, 1874
                  lh           a6, 45(ra)
                  sltiu        s2, s8, 1568
                  lbu          s5, 240(ra)
                  lbu          s0, 174(ra)
                  addi         s4, a1, 990
                  lui          a3, 448219
                  lbu          s6, -83(ra)
                  srli         s2, s7, 11
                  sb           t2, -206(ra)
                  nop
                  addi         gp, gp, 344
                  sll          s3, s11, s5
                  sub          s5, s2, s2
                  lbu          s3, 148(ra) #end riscv_load_store_rand_instr_stream_7
                  la           gp, region_1+957 #start riscv_load_store_rand_instr_stream_3
                  lb           t1, 14(gp)
                  nop
                  xori         t3, s9, -1496
                  srli         t4, s7, 13
                  auipc        a2, 977784
                  srai         s7, a2, 13
                  lb           a2, 12(gp)
                  xor          s3, gp, t2
                  lh           t3, 5(gp)
                  lh           s2, -15(gp)
                  lb           s9, -11(gp)
                  lb           t5, 14(gp)
                  slt          tp, a0, ra
                  sb           gp, 3(gp)
                  lh           tp, -11(gp)
                  slti         t0, a0, 1467
                  lb           t4, 0(gp)
                  sltiu        s9, gp, -1545
                  srli         a2, s1, 11
                  sb           tp, 3(gp)
                  and          t4, s2, s3
                  lb           s5, 2(gp)
                  lb           a3, 12(gp)
                  sb           a0, -4(gp)
                  sb           s10, -9(gp)
                  lb           s9, 16(gp)
                  lbu          t3, -5(gp)
                  lhu          a6, -9(gp) #end riscv_load_store_rand_instr_stream_3
                  la           a6, region_0+301 #start riscv_load_store_rand_instr_stream_9
                  addi         s7, a5, 1827
                  nop
                  sb           ra, -16(a6)
                  slli         s2, t5, 31
                  sra          t3, s7, a2
                  sb           s2, 1(a6)
                  slti         s6, s8, 230
                  lhu          s11, 15(a6)
                  add          t6, s7, s6
                  lb           s1, -6(a6)
                  sw           a3, 7(a6)
                  sub          t6, s4, s0
                  sb           t6, 3(a6)
                  and          t4, a0, s9
                  andi         s3, s0, 1737
                  ori          t4, a2, -543
                  sltu         t4, zero, s8
                  auipc        a3, 116887
                  lb           s5, 10(a6)
                  lbu          ra, 0(a6)
                  lw           s9, -1(a6)
                  lbu          s4, -10(a6)
                  sb           tp, 6(a6)
                  lb           s1, 10(a6)
                  sh           s10, -7(a6)
                  sb           t2, -16(a6)
                  sb           t6, -5(a6)
                  lbu          s10, -16(a6)
                  lb           s10, -4(a6) #end riscv_load_store_rand_instr_stream_9
                  la           s11, region_0+366 #start riscv_load_store_rand_instr_stream_11
                  slli         tp, a6, 5
                  sh           s6, 4(s11)
                  srai         ra, a1, 5
                  lbu          s10, 5(s11)
                  lhu          a1, -12(s11)
                  lbu          a3, -5(s11)
                  lui          a7, 889635
                  lbu          a6, -12(s11)
                  auipc        tp, 32222
                  lb           s3, -14(s11)
                  lb           t2, 9(s11)
                  sltiu        s4, t3, 1903
                  sltiu        t1, gp, 56
                  slt          a2, t2, s7
                  lb           a1, -1(s11)
                  lbu          a0, -3(s11)
                  add          gp, s3, a3
                  xor          t5, a1, gp
                  sltu         t0, t1, a3
                  sub          a2, t0, s8
                  sll          s3, a7, zero
                  lw           s3, -14(s11)
                  lb           t1, -13(s11)
                  slli         a0, s8, 0
                  lbu          gp, 3(s11)
                  ori          tp, a4, 1965
                  sw           s6, -2(s11)
                  ori          t4, a1, 1419
                  ori          s6, a5, 1945
                  sub          t3, s7, s3
                  sw           s8, -2(s11)
                  slti         s5, s10, 1787
                  lb           s1, 8(s11)
                  slti         a3, a3, 1679
                  lb           s6, 12(s11)
                  slti         t1, t2, -1390
                  srl          t1, t2, gp
                  ori          s1, a3, -723
                  srai         a2, a1, 18
                  add          t1, a2, s2
                  lb           s3, 11(s11)
                  sw           t6, 6(s11)
                  slti         a4, a2, 542
                  lbu          s7, 13(s11)
                  sb           a3, -9(s11)
                  lb           s3, -12(s11)
                  sltiu        a0, t6, -2045
                  slli         a7, s2, 16
                  lh           s6, -10(s11)
                  sh           zero, 2(s11) #end riscv_load_store_rand_instr_stream_11
                  la           t5, region_0+1058 #start riscv_load_store_rand_instr_stream_10
                  addi         t2, s10, 844
                  sb           s3, -45(t5)
                  lw           a7, -34(t5)
                  lh           a2, -58(t5)
                  addi         gp, t1, 82
                  lbu          a4, 53(t5)
                  xori         a0, a0, -1323
                  sb           t5, -30(t5)
                  sltu         zero, s4, a6
                  sb           t1, 31(t5)
                  lb           t3, -57(t5)
                  lbu          t3, 49(t5)
                  sb           t1, -17(t5)
                  sb           t5, -43(t5)
                  slt          t0, t3, s10
                  ori          s2, a4, -1666
                  lhu          a1, 54(t5)
                  srli         s3, s3, 5
                  lb           a2, 55(t5)
                  lh           s5, -14(t5)
                  srl          gp, s10, a4
                  and          s2, a1, s11
                  lbu          t0, -41(t5)
                  lhu          a6, 14(t5)
                  auipc        s9, 293129
                  auipc        a6, 732737
                  sltu         s0, s9, s9
                  ori          t3, sp, -742
                  lhu          a1, 12(t5)
                  lbu          t3, -60(t5)
                  slti         t4, s3, 1252
                  xori         t6, gp, 2044
                  lui          a6, 76149
                  slt          zero, t6, s0
                  lbu          s11, 21(t5)
                  lbu          s1, 22(t5)
                  lbu          s5, -50(t5)
                  lbu          a3, 29(t5)
                  srai         a6, s5, 5
                  srai         s10, s2, 0
                  andi         t3, s8, 225
                  sub          a2, a2, gp
                  lbu          s6, -31(t5) #end riscv_load_store_rand_instr_stream_10
                  la           s0, region_1+683 #start riscv_load_store_rand_instr_stream_8
                  add          s4, a0, s7
                  lbu          a4, -437(s0)
                  lui          a3, 387000
                  lbu          s10, 802(s0)
                  sb           a4, 128(s0)
                  lb           s11, -73(s0)
                  lbu          a4, 440(s0)
                  sb           s4, 736(s0)
                  lw           a7, -671(s0)
                  sra          s3, t3, s3
                  ori          t2, a5, -394
                  xor          s6, s5, a7
                  sw           t3, 717(s0)
                  lw           t3, -155(s0)
                  lbu          a7, -154(s0)
                  sb           t4, 1012(s0)
                  sb           t3, 568(s0)
                  lhu          t4, 193(s0)
                  andi         s1, s10, -1508
                  andi         t5, t5, -1525
                  lb           a4, -329(s0)
                  lb           a2, 1156(s0)
                  nop
                  slti         s9, t6, -582
                  sb           s8, 25(s0)
                  lbu          ra, 1242(s0)
                  lbu          s11, 568(s0)
                  xor          t6, t3, t2
                  lh           t1, 487(s0)
                  add          s3, gp, a7
                  sh           zero, 265(s0)
                  sra          gp, sp, s7
                  lhu          a7, -69(s0)
                  srli         s2, a7, 6
                  sb           s8, 525(s0)
                  lbu          tp, 84(s0)
                  nop
                  lbu          a4, 148(s0)
                  sb           a2, 638(s0)
                  addi         zero, s5, -436
                  and          a2, s11, t1
                  sltu         s3, s3, ra
                  sb           s8, 470(s0)
                  sb           a0, -441(s0)
                  sub          tp, a4, sp
                  lbu          zero, 887(s0)
                  sb           s2, -621(s0) #end riscv_load_store_rand_instr_stream_8
                  la           t3, region_1+601 #start riscv_load_store_rand_instr_stream_4
                  lui          s6, 880319
                  sltu         a2, sp, t2
                  slt          a0, s2, s5
                  ori          gp, t3, -68
                  lh           t5, -3(t3)
                  sb           s7, -11(t3)
                  srl          t2, ra, s4
                  slt          a3, gp, t0
                  sh           s1, -7(t3)
                  lh           s10, 13(t3)
                  sltu         a2, t2, t2
                  lbu          t2, 7(t3)
                  slti         t5, gp, -311
                  or           gp, s0, t2
                  sub          a7, t6, a4
                  addi         a7, s4, -1337
                  lbu          tp, 6(t3)
                  slli         s10, zero, 7
                  addi         s9, t2, 1897
                  lui          t2, 256421
                  xor          s4, a5, s5
                  sub          t1, s5, t2
                  andi         a3, a5, 204
                  lbu          t6, 2(t3)
                  lh           s2, -13(t3)
                  lui          s0, 314760
                  or           s6, s2, t0
                  lb           s11, 7(t3)
                  lui          a0, 761391
                  sb           sp, 14(t3)
                  sub          a1, t3, s11
                  lbu          a3, -15(t3) #end riscv_load_store_rand_instr_stream_4
                  la           a2, region_1+309 #start riscv_load_store_rand_instr_stream_5
                  sub          tp, t3, t3
                  sh           t4, -9(a2)
                  slti         gp, a2, -1210
                  sll          s4, t1, a6
                  lbu          s1, 12(a2)
                  lb           zero, -4(a2)
                  lb           t3, 2(a2)
                  lhu          gp, 1(a2)
                  sh           a0, -7(a2)
                  sltu         t2, s1, a2
                  lbu          s1, -6(a2)
                  lui          t6, 464493
                  lbu          t0, 10(a2)
                  lb           s7, -4(a2)
                  xor          t3, zero, tp
                  lbu          s2, -10(a2)
                  lh           s9, 13(a2)
                  srl          t5, t6, a1
                  lhu          t3, 13(a2)
                  lw           a0, 7(a2)
                  lbu          t3, -15(a2)
                  slti         s9, t4, 948
                  srl          s4, s0, s7
                  ori          a7, a3, -636
                  andi         t5, a6, -304
                  sll          s3, s1, zero
                  sb           t4, -12(a2)
                  lb           a7, -1(a2)
                  sw           s0, 7(a2)
                  slli         s1, s5, 13
                  sb           a2, 6(a2) #end riscv_load_store_rand_instr_stream_5
                  addi         s0, t0, -1738
                  nop
                  sub          a6, a0, a7
                  bge          t1, s1, 20f
                  sll          a0, tp, s0
                  srli         s5, t3, 4
                  xor          s10, a7, a0
                  addi         s4, s6, -1709
                  beq          s2, t2, 10f
                  add          a0, t1, sp
10:               slli         t3, s8, 24
                  slti         a2, s10, -2014
                  auipc        t0, 814135
                  nop
                  xori         a1, s10, -162
                  or           t2, a3, a3
                  xori         t1, t1, -1026
                  slt          t0, a6, a7
                  sra          t6, s10, s1
                  add          s9, a0, s7
20:               nop
                  ori          t1, s11, -738
                  xor          s7, tp, ra
                  auipc        s10, 779130
                  sra          s6, t1, a3
                  srai         ra, s10, 13
                  sra          t4, a2, t5
                  add          s10, s1, t2
                  bgeu         a6, gp, 30f
                  xor          s0, s6, a6
30:               addi         s0, a5, -676
                  xor          t5, s1, t4
                  sltiu        a7, a6, 667
                  slli         a3, s7, 7
                  nop
                  nop
                  lui          ra, 563733
                  andi         gp, s1, -1535
                  andi         t5, a1, -887
                  bne          s0, t3, 43f
                  xor          a6, s0, s3
                  andi         s2, a1, -1265
                  sltu         s2, t4, t2
43:               lui          tp, 97771
                  addi         s10, s7, -432
                  blt          a3, t5, 50f
                  nop
                  slti         a7, s4, -1558
                  sll          ra, s0, t2
                  ori          s3, s7, -1272
50:               andi         t5, s2, -786
                  lui          s4, 282143
                  srl          a4, s1, s6
                  srli         s4, s4, 29
                  lui          a0, 884311
                  nop
                  sltu         a7, a2, s8
                  nop
                  srai         ra, t2, 2
                  sra          s9, tp, t4
                  slli         s0, s4, 17
                  xori         s0, a7, 604
                  add          a0, s1, s11
                  addi         s0, t3, 841
                  nop
                  srai         a0, s3, 29
                  andi         s1, s11, 1262
                  xor          tp, zero, t3
                  sra          s9, s7, s1
                  blt          s5, a0, 81f
                  sltu         t1, s10, zero
                  xori         s4, s2, -810
                  andi         s2, a3, -1755
                  auipc        s5, 671611
                  xor          s0, s5, a3
                  slli         s11, a3, 20
                  beq          a0, s5, 86f
                  sltiu        s7, zero, -1836
                  srl          gp, ra, t5
                  ori          t3, a1, -1142
                  bgeu         a6, a1, 97f
81:               addi         ra, s8, -543
                  nop
                  addi         s1, ra, 963
                  beq          s2, a6, 86f
                  sub          a4, a6, ra
86:               sub          s1, t1, ra
                  and          gp, s0, t5
                  slt          s0, a1, s1
                  andi         t0, s8, -635
                  slti         a6, s1, 1392
                  slli         s10, s0, 1
                  andi         t0, s4, 370
                  ori          t6, a1, -2019
                  bltu         a0, s10, 95f
95:               xori         gp, t0, -454
                  slti         a1, sp, 656
97:               sltu         t2, a3, ra
                  lui          s11, 874546
                  xor          s3, s2, a0
                  beq          a1, s10, 107f
                  slti         s1, t5, 832
                  bne          s9, s7, 121f
                  addi         s7, t5, -1292
                  srli         s0, a6, 30
                  beq          a1, s4, 118f
                  add          s6, s7, a1
107:              xori         t3, s11, 145
                  slli         tp, gp, 19
                  sra          a7, a6, t5
                  add          s3, t1, tp
                  bge          t5, a6, 121f
                  slti         t4, t5, -684
                  and          a1, a0, t2
                  sll          s6, t3, s3
                  bltu         a7, s0, 126f
                  add          ra, t4, a4
                  beq          s6, zero, 137f
118:              xor          s1, zero, t0
                  beq          s9, tp, 138f
                  bgeu         sp, t4, 130f
121:              bge          s5, s6, 136f
                  srli         t5, t2, 13
                  srai         s5, ra, 0
                  bge          t2, s1, 132f
                  auipc        s11, 711344
126:              slli         s4, s7, 17
                  andi         s9, zero, 310
                  sll          gp, a7, s5
                  and          s9, a3, ra
130:              xori         t2, s4, -990
                  srai         s3, t2, 27
132:              slt          s11, tp, tp
                  sltiu        s7, a0, -1809
                  srli         tp, a6, 25
                  addi         s10, zero, -839
136:              auipc        t3, 146534
137:              bge          t5, a4, 156f
138:              sra          a1, s6, s7
                  slti         s2, t4, -1028
                  srl          t2, a1, t3
                  slt          ra, a7, s11
                  auipc        tp, 918016
                  xor          t1, zero, zero
                  srai         t0, t0, 5
                  lui          t2, 98463
                  srli         a4, a6, 1
                  bne          t6, a2, 162f
                  bge          t0, t2, 160f
                  sra          s10, a3, s11
                  bge          s0, s11, 162f
                  nop
                  sltu         a7, gp, a1
                  bltu         a6, a1, 163f
                  beq          t0, gp, 164f
                  bgeu         s9, s9, 159f
156:              ori          ra, s11, 1191
                  srli         s10, t1, 18
                  and          t2, s0, s9
159:              andi         ra, s10, -945
160:              andi         s1, t2, 1586
                  sub          a0, ra, gp
162:              slt          gp, s3, a0
163:              blt          gp, s10, 164f
164:              auipc        t3, 77920
                  add          ra, a3, s3
                  ori          s5, t1, -343
                  nop
                  srai         s0, a5, 1
                  auipc        ra, 486334
                  beq          t0, s3, 186f
                  xor          s10, a4, t1
                  bgeu         sp, tp, 192f
                  bltu         zero, s5, 185f
                  sltiu        s10, s10, -32
                  lui          s4, 415476
                  and          s2, gp, tp
                  slt          t1, t4, t3
                  beq          t4, sp, 194f
                  and          gp, s2, s7
                  beq          t5, s6, 200f
                  ori          s10, s4, -490
                  sub          ra, t2, s2
                  bne          t1, gp, 193f
                  srli         s3, a6, 19
185:              lui          t5, 832926
186:              sra          tp, ra, a0
                  ori          s4, a7, -1415
                  xor          ra, t0, ra
                  or           t2, s3, s6
                  bgeu         s1, t4, 192f
                  sra          s11, ra, t5
192:              ori          s5, a7, 1847
193:              sub          s9, ra, s1
194:              srai         t2, a1, 15
                  ori          s6, a4, -660
                  sub          s6, t1, gp
                  sltu         t5, a2, t0
                  andi         s5, t6, -1974
                  slt          t1, a5, a5
200:              ori          ra, s0, 674
                  xori         s5, s10, 684
                  sra          s5, tp, a2
                  srl          s5, t5, gp
                  and          tp, a2, a5
                  srl          t6, a7, a4
                  addi         s11, a0, -1697
                  ori          a6, s1, -1641
                  xor          a6, a0, s11
                  sltu         a6, t5, s7
                  addi         s1, a1, -274
                  lui          a3, 198959
                  slt          t6, t3, s4
                  sub          t1, t0, t6
                  xori         t5, s11, -719
                  sub          s1, a5, tp
                  srl          s0, s11, t1
                  srli         s11, s11, 27
                  or           a0, t5, a4
                  addi         a0, a6, 481
                  bgeu         t6, a3, 240f
                  blt          t6, s9, 231f
                  add          s11, a0, zero
                  beq          a2, sp, 231f
                  sll          s10, t6, a6
                  sll          a4, a7, a2
                  xor          t1, s6, a2
                  or           s9, a2, s11
                  srai         s6, zero, 24
                  xori         t1, t3, -377
                  slt          t2, t6, s8
231:              addi         tp, t1, -1018
                  nop
                  srl          a7, s0, s2
                  addi         a6, sp, -1050
                  srli         t0, t5, 27
                  auipc        s0, 394108
                  slti         t4, s11, -1792
                  sub          s7, s1, t4
                  xori         t5, a6, 1867
240:              auipc        s11, 1037561
                  bne          t6, t1, 242f
242:              sra          gp, s1, ra
                  ori          s10, gp, -698
                  beq          s2, t3, 263f
                  lui          a0, 740979
                  bne          t0, t1, 257f
                  sub          s10, a5, t5
                  auipc        a1, 638833
                  bne          s5, t1, 251f
                  slt          a3, a2, t6
251:              beq          s1, s10, 255f
                  xori         t5, s5, -5
                  sll          a3, t2, ra
                  blt          ra, s4, 266f
255:              srli         t1, a7, 22
                  or           s6, s10, a4
257:              srl          t2, t6, s1
                  nop
                  xor          gp, a2, s8
                  srl          a4, a6, s10
                  or           a0, s4, a4
                  srli         t1, a7, 22
263:              ori          s2, a1, 115
                  sra          a4, a4, ra
                  xori         t2, tp, -464
266:              andi         a6, s11, -1709
                  ori          t1, s11, -676
                  ori          a0, gp, 1125
                  slti         s7, s1, -835
                  beq          s11, s8, 280f
                  slt          s9, s7, a7
                  sub          s7, ra, tp
                  ori          t2, s10, -100
                  sub          a0, t1, s10
                  nop
                  andi         a7, s7, -185
                  and          a7, a6, s3
                  slti         t0, a4, 1701
                  nop
280:              bne          a2, gp, 295f
                  nop
                  sltiu        t3, a7, -153
                  slti         a7, s6, 1884
                  slti         a7, s9, -1547
                  bge          s3, s3, 297f
                  bge          zero, s10, 301f
                  xor          zero, s5, s4
                  bltu         s6, gp, 290f
                  slli         a1, a4, 11
290:              sra          t0, s10, a7
                  auipc        s5, 592576
                  sltiu        t3, s11, 808
                  andi         t1, s2, 607
                  lui          t6, 60775
295:              ori          s5, a0, -219
                  and          s11, a2, t0
297:              srai         t3, s3, 4
                  blt          s3, zero, 302f
                  xori         t5, t1, -807
                  nop
301:              add          s11, s6, t4
302:              slli         s5, t1, 3
                  auipc        t6, 285940
                  sll          t1, s8, s3
                  addi         s6, a5, -1547
                  or           s1, s2, tp
                  ori          s7, a6, 1265
                  sub          s0, t4, ra
                  slli         s6, a1, 10
                  sltiu        s2, zero, 284
                  and          zero, s3, s3
                  blt          t4, s9, 331f
                  srli         t4, a6, 1
                  nop
                  blt          a6, s1, 332f
                  bne          gp, a0, 317f
317:              sub          s5, s9, t0
                  lui          t2, 912617
                  slt          a7, s8, t5
                  sub          s9, gp, s5
                  srli         a1, a0, 0
                  xori         s4, t1, -2021
                  slti         a2, t6, 1654
                  sub          s4, a3, s0
                  lui          s7, 162880
                  andi         s3, a4, -629
                  lui          t3, 376021
                  addi         a1, sp, 1127
                  bgeu         t4, tp, 342f
                  sltiu        s3, sp, -727
331:              sll          a0, sp, t0
332:              addi         a7, t5, 1267
                  sltiu        a3, a1, -908
                  sll          s4, ra, a5
                  srl          a4, gp, s11
                  bge          t4, a0, 341f
                  srl          s2, a2, a5
                  srli         a4, t0, 4
                  and          s0, a5, a6
                  sltiu        t4, s2, -1664
341:              beq          s7, t6, 348f
342:              srai         a1, t6, 14
                  auipc        zero, 403085
                  or           t1, s6, s7
                  nop
                  add          s7, s10, s7
                  sltu         s9, sp, s4
348:              xor          zero, a2, s10
                  slli         t5, a4, 17
                  sra          a1, a3, s8
                  bne          t3, s5, 361f
                  or           tp, t2, s11
                  srl          tp, a7, s2
                  ori          t2, t2, -1497
                  sll          s11, s11, s1
                  sub          a7, a5, s6
                  and          s9, a5, a7
                  sll          s5, s6, gp
                  srai         t0, t0, 12
                  blt          zero, s8, 377f
361:              slti         s3, sp, -804
                  bltu         s0, s4, 381f
                  and          a0, gp, t3
                  or           s1, s10, t2
                  addi         ra, a3, 216
                  addi         t0, s0, 1523
                  ori          s6, a7, -2016
                  bge          s7, t4, 378f
                  add          s1, t6, s1
                  and          s7, t5, zero
                  and          t5, ra, t3
                  or           a0, tp, a4
                  bne          a2, t1, 384f
                  xori         t6, s11, -803
                  bne          a3, t6, 377f
                  srli         s11, a4, 2
377:              or           t2, t6, a4
378:              sltiu        a4, s8, 867
                  sltiu        s2, t2, -1117
                  srli         s0, gp, 4
381:              slt          a3, a0, a1
                  srl          t2, a3, a6
                  or           s9, s2, t2
384:              bgeu         t2, s0, 403f
                  lui          a3, 245606
                  ori          t5, a1, -31
                  bne          s2, a3, 391f
                  blt          a6, s6, 405f
                  blt          a7, a2, 390f
390:              sltiu        s7, a6, -199
391:              nop
                  blt          t1, t1, 411f
                  nop
                  ori          a6, a1, -1174
                  ori          s10, t0, 40
                  addi         s10, ra, -885
                  slt          s7, a4, s3
                  srai         t5, s2, 14
                  bne          s10, s0, 404f
                  and          s0, a6, t6
                  sltiu        s11, t3, -606
                  and          t3, s6, sp
403:              blt          s6, s4, 423f
404:              slt          zero, a3, t4
405:              slti         s1, s9, 770
                  sra          a2, tp, a1
                  slli         t3, ra, 2
                  auipc        a1, 849099
                  srai         t4, s10, 19
                  srli         a7, s3, 13
411:              sll          s9, sp, a7
                  sll          a0, t5, tp
                  bgeu         s3, t2, 433f
                  xori         t5, t5, 1721
                  andi         s9, s7, 84
                  slt          t3, a2, s4
                  sll          s0, ra, s6
                  nop
                  nop
                  bltu         s1, s11, 432f
                  slli         a0, s7, 12
                  add          t5, t4, s11
423:              sltiu        a2, s6, 518
                  srli         t1, a5, 15
                  sltiu        s5, s0, 27
                  bge          sp, t6, 438f
                  srli         s11, a5, 23
                  add          s3, s4, t3
                  sub          s5, s5, gp
                  sra          a4, tp, zero
                  ori          t6, s1, -610
432:              slt          s0, t4, s6
433:              srai         s10, a3, 9
                  srai         t0, t4, 0
                  slt          a0, s6, s3
                  auipc        t3, 844287
                  add          a4, a1, a2
438:              xor          a3, s10, a1
                  and          s1, a0, s2
                  nop
                  slt          s7, s8, a2
                  sub          s11, s11, s9
                  andi         s0, sp, 1346
                  bge          s10, a7, 446f
                  ori          zero, ra, -1415
446:              sra          a3, t1, ra
                  sra          s11, s6, s11
                  nop
                  sltiu        t1, t1, 2000
                  add          a4, a2, s4
                  sra          s3, t6, t0
                  slt          a3, zero, a0
                  auipc        zero, 1022297
                  lui          a0, 452537
                  blt          s5, s7, 457f
                  beq          t1, a7, 469f
457:              or           a2, t1, t4
                  xor          a4, a5, s7
                  addi         t1, a3, -710
                  xor          a2, a2, a6
                  add          t0, s7, s8
                  auipc        a7, 666937
                  slt          a6, a6, s0
                  sltiu        t0, sp, 439
                  blt          t0, tp, 477f
                  bne          s2, s1, 470f
                  ori          a2, s7, -1695
                  srli         t6, t4, 26
469:              srl          a3, s2, t1
470:              srl          a2, gp, s2
                  srl          s2, s6, a0
                  add          s5, t2, t1
                  xor          a7, s5, s11
                  sltu         a2, a3, s6
                  sltiu        a2, a4, -1265
                  slli         t2, t5, 16
477:              xori         s3, s7, 818
                  srai         t5, tp, 4
                  srli         a3, s1, 3
                  or           a3, a1, t3
                  srli         t6, ra, 15
                  addi         t3, t3, 941
                  add          a7, a0, t5
                  sra          s2, t6, s2
                  bltu         tp, t1, 486f
486:              lui          tp, 499743
                  bltu         a1, t3, 494f
                  sltu         t2, t1, t0
                  srl          a4, a0, s11
                  sub          a6, t6, t2
                  sll          s10, ra, a5
                  bge          s8, s0, 509f
                  sltu         t0, a3, t1
494:              or           s10, t6, s4
                  andi         s6, t5, -2015
                  add          s1, ra, a0
                  auipc        s2, 23448
                  sltiu        s1, t4, 1009
                  and          s3, s6, a0
                  srai         s4, t5, 2
                  bge          s6, s7, 511f
                  bne          t5, zero, 517f
                  sltiu        s0, t4, 54
                  slt          t3, t6, a2
                  slti         s11, s9, -917
                  xor          a3, s5, a0
                  srai         gp, s11, 15
                  lui          t4, 330317
509:              andi         s4, sp, -1150
                  bne          s11, s2, 526f
511:              andi         ra, t3, -833
                  auipc        a6, 738837
                  add          s9, s6, s9
                  slti         tp, a7, -1402
                  sra          s4, s1, sp
                  bgeu         s7, s7, 526f
517:              sra          a0, s11, gp
                  slti         s5, t2, -1465
                  srai         ra, s7, 8
                  lui          t5, 100303
                  srl          s11, a6, gp
                  sra          s9, t0, s1
                  sltiu        s9, s10, -10
                  blt          t0, s11, 543f
                  bgeu         s9, a3, 540f
526:              ori          s2, a5, -977
                  bne          zero, a6, 535f
                  andi         zero, t6, 1523
                  srl          a1, a0, s8
                  andi         gp, t3, 1365
                  add          t5, t6, t6
                  addi         a2, a0, -1474
                  sra          a0, s8, s9
                  bltu         s2, a1, 544f
535:              blt          s10, t0, 545f
                  blt          s4, s7, 546f
                  beq          s3, s4, 547f
                  ori          a3, s6, -465
                  bge          t2, s6, 556f
540:              slti         tp, a0, -1183
                  xor          s5, s10, s5
                  sra          t2, s7, s3
543:              srai         a2, a5, 30
544:              auipc        s11, 502232
545:              sltu         t2, a5, s8
546:              or           s11, s2, s5
547:              srai         s4, t3, 0
                  sub          a2, s5, s0
                  beq          s10, s7, 557f
                  slti         s4, s0, -388
                  sltiu        a3, a1, -882
                  beq          s4, s6, 572f
                  and          zero, tp, s6
                  bne          a2, tp, 570f
                  sltu         t6, s8, s6
556:              sub          s1, s10, a3
557:              sll          s6, tp, s1
                  slli         a7, s3, 28
                  add          t1, t6, a3
                  ori          s4, s10, -1604
                  sub          s9, s8, s7
                  blt          a1, t5, 582f
                  beq          s11, t4, 578f
                  sub          s2, s10, s11
                  sll          s11, t0, a2
                  ori          zero, a1, 1132
                  bge          t2, a5, 579f
                  addi         a2, a1, -883
                  xor          s2, s7, s4
570:              sll          s5, a3, s6
                  auipc        s2, 92813
572:              srai         a6, t1, 11
                  ori          a7, s5, -1240
                  srai         s6, a2, 3
                  lui          a3, 457703
                  sltiu        t2, s7, 1890
                  nop
578:              blt          ra, s3, 588f
579:              sltiu        ra, a1, 624
                  addi         zero, t2, 399
                  auipc        t1, 810951
582:              bne          s11, s7, 583f
583:              add          a6, s1, t2
                  srl          s2, a2, a7
                  xori         a2, s6, -2047
                  slli         s11, s10, 6
                  bge          a3, tp, 591f
588:              sltiu        s10, t6, 972
                  sltu         s0, a4, s4
                  srl          s3, s2, t0
591:              srai         a0, s10, 25
                  sltu         s0, tp, s9
                  sra          tp, a2, a0
                  xori         a7, s6, 909
                  slti         a1, ra, 1823
                  srl          s11, t5, a0
                  blt          s9, s7, 599f
                  srl          s11, ra, t5
599:              xor          s0, t5, a2
                  lui          gp, 995086
                  add          s11, sp, s11
                  xori         s5, a0, 1137
                  sub          s7, t3, a2
                  add          s7, s9, sp
                  slti         s2, t1, 952
                  xori         s1, s9, 783
                  bge          s9, ra, 619f
                  slti         t5, a0, -107
                  sra          s11, s9, t4
                  bltu         s2, gp, 615f
                  beq          s1, s2, 622f
                  auipc        a2, 504501
                  srl          t5, gp, s2
                  add          ra, gp, zero
615:              ori          t2, t3, 477
                  sltiu        s5, a2, -27
                  blt          a3, s8, 629f
                  bne          t4, t4, 637f
619:              sra          t3, s2, a5
                  sll          t6, a2, s2
                  bne          t1, s2, 631f
622:              sra          gp, s6, a3
                  sltiu        s7, tp, -882
                  add          s11, a1, s6
                  srai         gp, s3, 2
                  sltiu        a4, s10, 1877
                  blt          s10, sp, 628f
628:              or           s5, tp, ra
629:              beq          s7, s9, 631f
                  ori          t4, a7, -32
631:              sltu         a3, a3, a3
                  sltu         s3, tp, a0
                  srl          s6, a2, s6
                  nop
                  srli         s4, s2, 22
                  sll          t4, sp, s0
637:              add          t0, a3, s9
                  bge          t6, a3, 648f
                  and          t0, t2, t0
                  slti         tp, tp, 222
                  addi         t5, s2, -2040
                  sra          a2, s0, a2
                  nop
                  ori          a2, t3, 1842
                  sltiu        a1, s7, 1970
                  addi         s4, s6, -1134
                  sub          a3, s0, t4
648:              sll          a0, gp, zero
                  nop
                  xor          t6, a1, a1
                  sub          t1, t5, s6
                  slti         t1, t3, 1881
                  beq          sp, a4, 655f
                  sra          t2, s7, a2
655:              and          a4, s2, s6
                  sll          zero, ra, a4
                  sub          s6, s1, s5
                  sra          t3, t1, sp
                  bne          t4, a4, 674f
                  bge          a6, tp, 667f
                  andi         s2, s11, 1200
                  slti         s11, gp, -100
                  addi         t4, a7, -1168
                  andi         s2, zero, -1317
                  bltu         t1, s0, 669f
                  ori          s1, t6, 288
667:              sub          s7, s3, s7
                  slti         s3, s10, 375
669:              sltu         t6, t2, s11
                  sub          s4, gp, t5
                  sra          s4, s9, a0
                  blt          s8, s4, 689f
                  auipc        s4, 217657
674:              lui          t5, 677287
                  sra          s0, s6, s3
                  lui          t2, 912795
                  xor          s2, s11, s6
                  sltiu        a4, a6, 542
                  or           a4, a2, t2
                  sltu         t3, s10, s6
                  blt          a7, s3, 691f
                  sltu         s1, a0, s8
                  xori         gp, tp, 1740
                  sra          s7, s0, zero
                  srl          tp, a2, s1
                  sltu         gp, a4, s1
                  ori          s7, t1, 1844
                  nop
689:              sll          s11, s3, s3
                  xor          ra, s10, t1
691:              bltu         zero, s4, 704f
                  srai         s5, s11, 14
                  lui          s9, 526083
                  srli         a1, s5, 5
                  nop
                  auipc        s9, 438049
                  sltiu        a7, t3, -297
                  xor          a7, a7, a7
                  or           t3, t0, t2
                  sll          s10, s2, a2
                  slti         t6, s1, -42
                  sll          s10, a1, ra
                  blt          s0, s3, 722f
704:              slt          t4, t4, t1
                  and          s1, s3, s0
                  sltiu        s10, t4, -709
                  blt          s7, t1, 726f
                  sub          a1, a6, s3
                  and          gp, a0, t4
                  nop
                  blt          s10, t0, 721f
                  auipc        t6, 417856
                  lui          s2, 795051
                  srai         a4, s5, 3
                  add          a3, t0, s7
                  add          ra, s4, gp
                  and          t4, t6, t6
                  or           t2, a6, tp
                  sltiu        gp, t4, -1973
                  beq          a5, s11, 739f
721:              srai         s10, t2, 25
722:              bge          s0, s11, 723f
723:              srl          s0, s3, s9
                  sra          s7, a7, t4
                  blt          s2, a7, 741f
726:              xori         t6, zero, -1804
                  sltu         s9, s7, s1
                  and          s5, ra, t5
                  ori          a1, t3, 229
                  xor          a0, a0, zero
                  sltu         gp, zero, a7
                  bgeu         t4, s4, 742f
                  lui          t4, 12341
                  ori          s0, t5, -1619
                  bge          a7, a2, 746f
                  bge          a3, s0, 746f
                  xori         s1, a7, 436
                  nop
739:              slli         s7, s3, 27
                  sltiu        a2, a2, -1434
741:              sll          a3, a7, gp
742:              ori          s5, sp, -872
                  andi         s2, t0, 1411
                  addi         s7, t2, 43
                  slt          t3, a0, s4
746:              ori          t1, a7, -267
                  xor          a1, s6, s6
                  auipc        a7, 790378
                  sll          t4, s8, zero
                  andi         t4, t0, -549
                  xori         s11, a5, -1581
                  sltiu        s5, s1, 851
                  slt          s7, t5, s1
                  or           s9, s2, a2
                  sll          t6, t1, s5
                  xori         a1, tp, -1115
                  sll          t3, t5, s8
                  sltiu        a6, gp, 1508
                  srai         ra, s6, 28
                  srli         t1, a3, 21
                  auipc        s10, 378044
                  addi         s11, s6, 977
                  or           t5, t5, s11
                  bgeu         a2, ra, 772f
                  add          s3, t6, a4
                  beq          ra, zero, 767f
767:              blt          s3, a4, 774f
                  bne          a7, s10, 783f
                  srai         a0, s4, 0
                  add          a4, t6, s5
                  addi         a3, a7, -402
772:              nop
                  addi         gp, t5, 1068
774:              auipc        t3, 595718
                  andi         s2, t4, 189
                  bge          s11, s3, 781f
                  andi         tp, gp, -285
                  addi         t6, s0, 1703
                  srai         s9, t1, 21
                  auipc        t4, 900051
781:              srl          s5, s11, a5
                  xori         a2, s11, 499
783:              slli         t6, s7, 25
                  sra          s9, t2, s2
                  bgeu         s9, a4, 787f
                  auipc        a2, 522627
787:              srli         tp, zero, 22
                  slt          a7, s4, s8
                  sub          s1, a1, t1
                  auipc        t2, 691521
                  bne          s11, s0, 811f
                  auipc        s7, 710264
                  bgeu         a5, gp, 805f
                  bgeu         s7, s11, 806f
                  sll          a2, s11, a0
                  bne          zero, s10, 800f
                  sra          s11, a0, s7
                  slt          a0, a7, t5
                  sub          s11, tp, sp
800:              sra          s4, t6, s4
                  bne          s11, a3, 803f
                  ori          a3, t5, 173
803:              lui          s7, 57450
                  lui          s11, 241115
805:              bge          s0, t5, 817f
806:              bne          gp, s6, 821f
                  lui          t4, 227154
                  slti         s10, t6, 1290
                  srli         zero, s11, 30
                  and          a6, a5, s11
811:              and          zero, ra, t6
                  slli         t6, t1, 31
                  srl          a2, t4, s6
                  add          gp, a2, s5
                  add          a7, s7, t3
                  slli         s0, s4, 21
817:              srai         a0, s8, 5
                  sltiu        t2, s9, 1259
                  blt          t5, s1, 839f
                  blt          s7, t3, 824f
821:              sltu         s6, t1, a3
                  sltiu        t5, s9, 1827
                  srai         s9, zero, 19
824:              beq          s8, a2, 841f
                  auipc        s4, 264884
                  slti         a4, s6, 1487
                  lui          s3, 209250
                  or           a1, ra, t3
                  srl          t2, zero, a3
                  addi         t5, a7, -477
                  sra          a4, a0, s8
                  lui          s1, 70006
                  slt          zero, tp, s3
                  srli         s3, s10, 27
                  add          t3, a2, t6
                  blt          s0, t0, 855f
                  srai         s2, t6, 16
                  slti         s6, s2, 1203
839:              add          s2, s9, a7
                  bltu         s8, a4, 842f
841:              ori          t1, a4, 411
842:              sub          a6, s4, t1
                  nop
                  sltiu        s9, s2, -2012
                  sll          s4, s1, t2
                  ori          s9, a5, -1399
                  sll          a1, s7, s11
                  blt          t5, a7, 861f
                  andi         a4, a7, -1227
                  blt          a7, s6, 869f
                  sll          t1, ra, sp
                  blt          a2, tp, 862f
                  and          t4, a1, a1
                  beq          a2, gp, 864f
855:              andi         s11, t2, -23
                  or           a4, a6, t5
                  sub          t3, s5, a2
                  bge          t5, s1, 875f
                  sltiu        t0, s4, 1400
                  ori          t2, s3, -287
861:              slti         s5, s8, -1027
862:              bne          tp, t5, 869f
                  addi         a6, zero, 880
864:              or           s6, t0, a0
                  sub          a2, t4, s2
                  sltu         t3, s3, t6
                  sltiu        t1, a6, 628
                  slti         ra, zero, -1235
869:              sltu         t6, s9, t0
                  slli         a4, a0, 20
                  srl          t5, t0, s7
                  sub          s9, a4, gp
                  sltu         s1, s3, a6
                  srl          zero, s10, tp
875:              sltu         t2, s7, s0
                  slt          t4, s9, a2
                  slti         t4, s10, -1699
                  bge          sp, tp, 888f
                  bgeu         zero, t1, 898f
                  bgeu         t5, a2, 882f
                  slti         t2, a3, 1978
882:              addi         s11, a2, 1412
                  bge          t5, s10, 899f
                  sltu         gp, gp, t4
                  slt          t3, s7, s3
                  sub          t2, t4, a3
                  blt          s9, t6, 899f
888:              sra          a7, t1, s2
                  slli         a7, t1, 13
                  add          t4, zero, s1
                  auipc        a0, 836442
                  andi         a0, s3, 1622
                  addi         a2, t2, -232
                  nop
                  sltu         s0, s6, zero
                  sltiu        s1, a7, -779
                  or           s2, a5, s7
898:              auipc        a0, 887646
899:              xor          t1, a5, a6
                  ori          s10, a3, -625
                  add          a2, s6, a3
                  sll          s11, s2, s10
                  nop
                  srl          ra, s8, s8
                  srli         s4, a3, 15
                  addi         s11, s0, -1696
                  bne          a3, s0, 911f
                  xori         s2, t4, -1271
                  xor          a3, t5, a7
                  xori         a7, gp, -1972
911:              xor          t0, s9, s1
                  and          a2, a7, ra
                  bge          ra, s4, 923f
                  addi         zero, a7, -1929
                  auipc        s2, 1046439
                  sra          t4, s8, ra
                  xori         t5, s3, 706
                  beq          a1, a6, 928f
                  slt          s10, a4, tp
                  sra          a1, a6, t4
                  andi         a1, a7, 1092
                  ori          s11, s6, -603
923:              sll          a0, a4, s0
                  add          s7, t5, s10
                  lui          s2, 885489
                  addi         s9, s11, 1735
                  bgeu         a6, a6, 947f
928:              bltu         s2, s4, 932f
                  auipc        s9, 750572
                  sra          t3, sp, s1
                  sra          s10, t2, gp
932:              bltu         a7, t6, 940f
                  srli         s4, a3, 8
                  sll          t5, s10, t5
                  bne          s9, t5, 940f
                  andi         s3, t2, -61
                  bgeu         a3, s8, 952f
                  ori          t3, t1, -135
                  srai         s5, a2, 12
940:              bgeu         t3, a7, 959f
                  and          s9, s9, s7
                  sltiu        a2, t4, -1041
                  srli         t0, t6, 6
                  bge          t5, t6, 945f
945:              bge          sp, t5, 947f
                  bge          s4, s8, 963f
947:              lui          a7, 901209
                  xori         s11, a3, -1488
                  bge          a4, sp, 961f
                  blt          s6, t4, 965f
                  addi         t2, s2, 1497
952:              addi         t6, t0, -1315
                  slti         a0, s3, 1963
                  auipc        s1, 1027138
                  xor          s7, s11, t6
                  slli         a7, tp, 29
                  bltu         s10, s1, 968f
                  or           t6, s6, ra
959:              bltu         a2, s3, 976f
                  auipc        s2, 768909
961:              srli         s6, t5, 19
                  srli         s10, a3, 27
963:              add          gp, gp, t6
                  add          gp, t3, t4
965:              srli         tp, a3, 18
                  bge          s9, a2, 968f
                  slli         a2, ra, 30
968:              sll          s7, s9, zero
                  ori          a3, zero, -810
                  srli         s0, zero, 15
                  or           a6, t3, zero
                  sltu         a0, gp, s4
                  sltiu        t0, s1, -1067
                  srli         s10, t3, 19
                  blt          t4, gp, 985f
976:              slti         t2, tp, 307
                  sltiu        s5, s5, 29
                  and          s0, t0, t6
                  sltiu        s5, s4, 1810
                  slt          t2, a2, a0
                  srli         a4, t1, 26
                  andi         s6, s7, 102
                  la           a6, region_1+103 #start riscv_load_store_rand_instr_stream_1
                  or           t6, t4, a4
                  auipc        ra, 693014
                  xori         tp, a3, -1091
                  and          a0, a4, t0
                  lb           t6, -26(a6)
                  lbu          a1, -58(a6)
                  and          tp, t4, a3
                  slti         a2, s8, -2035
                  lbu          s11, -48(a6)
                  lb           s0, -36(a6)
                  lb           s5, 0(a6)
                  srli         a7, sp, 30
                  sh           t0, 61(a6)
                  sb           s11, -5(a6)
                  sw           a0, 33(a6)
                  lb           s4, 0(a6)
                  lui          s4, 550149
                  lbu          a0, 6(a6)
                  lhu          s10, -19(a6)
                  sb           s11, -40(a6)
                  and          s5, t1, gp
                  lhu          s10, -49(a6)
                  sra          t2, s4, t3
                  lbu          a3, -56(a6)
                  srli         t5, s6, 17
                  addi         s10, s7, -399
                  lb           s11, 5(a6)
                  lb           zero, -14(a6)
                  ori          s5, a7, 1093
                  sh           s6, -49(a6)
                  sb           a6, 15(a6)
                  lbu          a0, 43(a6)
                  lbu          s11, 28(a6)
                  sb           gp, 0(a6) #end riscv_load_store_rand_instr_stream_1
                  lui          s1, 854471
                  sub          t1, t0, tp
985:              srl          s5, a4, a5
                  blt          s11, t2, 1005f
                  sub          a2, s6, s5
                  nop
                  lui          a0, 877473
                  add          s11, a7, s8
                  bgeu         s1, zero, 1001f
                  sltiu        gp, a0, 1289
                  srai         ra, tp, 7
                  auipc        s6, 961602
                  xor          t1, a3, gp
                  sra          a1, t0, t0
                  blt          s5, tp, 1017f
                  srli         s1, a5, 7
                  blt          t2, s0, 1000f
1000:             bne          sp, t1, 1012f
1001:             nop
                  srai         s2, t1, 5
                  srli         a4, a1, 12
                  ori          s4, zero, 999
1005:             sltu         t6, t4, a1
                  and          ra, s7, tp
                  nop
                  srai         s11, a6, 16
                  bltu         s9, s0, 1022f
                  ori          zero, s8, 770
                  slti         t6, a5, -1166
1012:             lui          t2, 973713
                  slti         t1, s9, 1454
                  bgeu         s0, t5, 1024f
                  slti         a2, a5, -1449
                  slt          zero, s3, s11
1017:             bne          t6, s4, 1022f
                  srai         a6, zero, 15
                  blt          s10, t4, 1038f
                  add          s2, a2, a4
                  beq          s5, a1, 1032f
1022:             slt          zero, s2, t3
                  srai         ra, s11, 27
1024:             bge          s4, s5, 1040f
                  la           s9, region_0+41 #start riscv_load_store_rand_instr_stream_0
                  addi         s4, a5, -233
                  lbu          t1, 8(s9)
                  or           a7, sp, s9
                  lhu          s7, 33(s9)
                  andi         a1, t3, -1527
                  sltiu        a1, s9, 465
                  lbu          t0, -17(s9)
                  sb           s9, 21(s9)
                  srli         s6, s3, 14
                  sb           gp, -22(s9)
                  lbu          a3, -5(s9)
                  sll          t2, s2, a3
                  lb           a6, 10(s9)
                  lb           a1, 64(s9)
                  sh           zero, -11(s9)
                  lbu          s5, -12(s9)
                  lb           t2, -32(s9)
                  lb           t0, 21(s9)
                  lbu          t5, 50(s9)
                  xor          s10, s5, s0
                  srai         a7, s3, 10
                  add          t6, t4, t3
                  lbu          s2, -11(s9)
                  sll          a0, a7, a1
                  lh           gp, -11(s9)
                  or           a4, s6, t3
                  sb           a1, 62(s9)
                  nop
                  sub          s3, gp, s8
                  auipc        a1, 610020
                  sw           a5, -5(s9)
                  srli         zero, a4, 9
                  slli         t6, tp, 11
                  andi         t1, s2, 365
                  sb           s5, -38(s9)
                  lui          s3, 758919
                  and          s4, s4, s8
                  sb           a0, 4(s9)
                  sb           t6, 25(s9)
                  sh           a0, -3(s9)
                  lb           a7, -14(s9)
                  lh           t5, 47(s9)
                  sh           s7, 17(s9)
                  lb           s5, 28(s9)
                  lb           s11, 52(s9)
                  sh           s2, 29(s9) #end riscv_load_store_rand_instr_stream_0
                  slti         a6, a4, 1983
                  auipc        s1, 99622
                  srl          t2, s2, sp
                  addi         a6, t1, 106
                  slti         a6, t1, -1735
                  xori         s4, a6, 886
                  sll          s10, t2, tp
1032:             sll          a3, t5, a6
                  sub          t5, s2, t2
                  bgeu         s5, s2, 1038f
                  sra          t4, s2, gp
                  lui          t0, 775787
                  andi         t2, s7, 120
1038:             sub          s7, s0, a6
                  bge          s0, s1, 1059f
1040:             srli         s7, s5, 19
                  slt          t1, tp, s11
                  xor          s0, a1, s10
                  srli         a4, s0, 24
                  slt          a6, tp, s1
                  beq          s5, tp, 1047f
                  sra          s6, a5, t0
1047:             sub          gp, sp, tp
                  addi         s5, s8, 1432
                  and          s3, s8, sp
                  srl          gp, s6, t3
                  and          s11, s9, gp
                  bge          s9, s11, 1067f
                  sltiu        a0, gp, 1241
                  ori          t4, s10, 303
                  blt          t4, a2, 1074f
                  ori          s0, s5, 1091
                  or           t2, s5, s8
                  ori          s3, a4, -2017
1059:             sltiu        s11, s9, 849
                  andi         tp, t2, -285
                  beq          t1, s11, 1073f
                  bgeu         ra, t6, 1077f
                  and          t2, a7, a0
                  xori         tp, sp, 2039
                  beq          t1, sp, 1072f
                  sra          s7, a5, a6
1067:             sra          s11, t1, s9
                  ori          t1, s6, -112
                  srli         t2, s0, 12
                  sra          t3, s5, zero
                  auipc        s6, 918917
1072:             xor          ra, s6, zero
1073:             lui          s10, 837006
1074:             ori          s7, a3, 456
                  and          s11, zero, t3
                  and          s9, s6, t3
1077:             sra          s10, a0, a3
                  nop
                  auipc        a1, 931212
                  sltiu        s10, s8, 494
                  sra          gp, a4, s3
                  slli         a4, a1, 6
                  slli         s1, s1, 24
                  srl          s3, a2, s5
                  or           ra, s9, a5
                  sltiu        zero, s5, 1098
                  sub          tp, s11, a2
                  srai         ra, sp, 18
                  or           ra, a4, s10
                  ori          t5, zero, -622
                  slt          zero, s5, a0
                  srai         a7, s4, 8
                  ori          a1, t5, -415
                  sltu         t2, s4, s0
                  sltiu        a4, t5, 1646
                  xori         t1, s4, 1639
                  slli         s1, a6, 9
                  sra          s3, t0, gp
                  srli         t5, a2, 13
                  andi         a3, s6, 456
                  andi         zero, ra, -659
                  sub          s3, s11, s2
                  nop
                  bgeu         a6, s2, 1108f
                  xori         a4, a7, -1193
                  blt          t4, t1, 1118f
                  bne          t1, tp, 1108f
1108:             srli         a6, tp, 0
                  srli         s3, t6, 5
                  andi         a7, s6, 633
                  sll          a7, t2, t4
                  slli         s6, ra, 12
                  xor          a4, s9, gp
                  slti         t6, s3, 1124
                  bne          a0, s3, 1127f
                  sltu         s2, a3, s11
                  sll          a4, t1, t5
1118:             lui          s10, 133528
                  lui          t6, 429941
                  sltiu        gp, a7, 1093
                  slti         s11, s10, -700
                  addi         s1, t6, -314
                  srai         zero, a3, 8
                  srl          s5, s10, t0
                  bge          t1, s1, 1126f
1126:             sra          a4, gp, s3
1127:             sltu         t1, t4, ra
                  blt          s6, s8, 1147f
                  nop
                  sltiu        s6, s7, 124
                  srai         t0, a3, 17
                  andi         a0, a2, -1388
                  and          zero, a6, t3
                  beq          gp, ra, 1144f
                  addi         ra, t1, -637
                  slti         ra, s10, 1837
                  srl          a4, t0, a1
                  blt          t1, s9, 1155f
                  slli         a2, a1, 20
                  srl          s7, a0, s6
                  sra          t4, s8, s6
                  slli         a1, s6, 25
                  xori         a1, a0, 1160
1144:             lui          s4, 4465
                  sra          s0, s4, t0
                  auipc        a4, 566588
1147:             add          t0, s10, a7
                  and          zero, a0, s4
                  or           s11, a6, s1
                  slt          t1, zero, s0
                  beq          a1, s2, 1159f
                  sra          t3, s8, gp
                  bne          t2, t2, 1155f
                  srl          s3, s10, t5
1155:             bgeu         s1, t0, 1175f
                  bgeu         t3, s4, 1173f
                  bltu         a1, a4, 1167f
                  blt          s2, zero, 1160f
1159:             add          t1, a5, a5
1160:             sltu         tp, t1, s0
                  bltu         a3, a3, 1171f
                  add          s5, a0, s10
                  lui          s5, 91926
                  sltiu        s11, s10, 379
                  addi         tp, a7, -1129
                  add          t1, t1, a3
1167:             sub          s3, zero, s10
                  nop
                  beq          a3, s9, 1182f
                  ori          s1, t2, 1328
1171:             addi         s3, t3, 911
                  srl          t1, a4, tp
1173:             ori          s9, s7, 1575
                  andi         s10, gp, 1495
1175:             xor          a7, a3, t5
                  auipc        ra, 825186
                  slt          a1, sp, s9
                  xor          s11, s8, ra
                  beq          sp, a2, 1189f
                  srai         t5, a4, 17
                  nop
1182:             addi         t5, ra, 1884
                  srli         a7, a0, 17
                  xor          s5, t2, a5
                  srli         s3, s7, 0
                  bge          a2, zero, 1199f
                  bgeu         t2, s8, 1206f
                  and          s0, tp, s10
1189:             bltu         s3, a5, 1208f
                  nop
                  or           a6, s4, s8
                  xori         s5, s5, -763
                  slti         a0, t2, 1139
                  beq          t2, sp, 1199f
                  srli         s2, gp, 13
                  srai         t0, t5, 9
                  sub          t4, s8, gp
                  xori         t4, s0, 619
1199:             sltu         s11, a4, a4
                  sub          a4, t0, a5
                  bgeu         s11, a6, 1213f
                  addi         a2, tp, -1339
                  sltiu        gp, t0, 1941
                  sltiu        a2, t5, -4
                  andi         ra, a6, -595
1206:             slli         s4, a7, 5
                  sra          s11, a1, a1
1208:             xori         s0, s5, -1812
                  xor          t1, s7, a4
                  srli         s2, t6, 31
                  blt          s3, t1, 1221f
                  and          t3, gp, t3
1213:             bge          a0, t3, 1225f
                  sltu         t1, t4, s8
                  sra          s2, gp, a4
                  srli         gp, tp, 20
                  ori          zero, s2, 636
                  lui          a6, 379230
                  bgeu         s10, zero, 1221f
                  add          t5, tp, a4
1221:             sltu         s4, ra, s3
                  bgeu         t2, tp, 1233f
                  bgeu         a3, s11, 1227f
                  srli         s10, s6, 23
1225:             slti         s10, s8, 158
                  lui          t2, 185351
1227:             addi         t5, a6, -1857
                  bge          t0, s3, 1248f
                  nop
                  xor          t1, s5, s10
                  srl          s9, a5, s4
                  sub          a2, sp, t1
1233:             blt          s10, t6, 1235f
                  sltiu        t3, t5, -1066
1235:             and          zero, s8, s10
                  sll          a2, s4, t5
                  beq          s3, s1, 1247f
                  sltiu        a7, a1, 1098
                  or           s0, a0, s9
                  slli         s1, a5, 23
                  bge          a2, zero, 1242f
1242:             sub          a2, a6, s3
                  bgeu         s6, s7, 1258f
                  auipc        s10, 726008
                  or           s1, gp, s8
                  beq          s7, s1, 1262f
1247:             xor          s11, t1, a1
1248:             slli         s2, s11, 4
                  sll          t6, a3, zero
                  sltiu        t3, a2, -1967
                  or           ra, t1, s5
                  srli         s5, t4, 16
                  andi         gp, a7, -1534
                  bge          a4, s5, 1274f
                  sltiu        t4, tp, -286
                  addi         t6, a3, -2044
                  slt          a4, t3, s7
1258:             ori          a2, t3, 1458
                  addi         s2, a5, 1762
                  srai         t5, t0, 10
                  slti         zero, s10, -711
1262:             auipc        s2, 539379
                  bltu         s10, t6, 1273f
                  bgeu         a0, a2, 1274f
                  bltu         s3, s1, 1273f
                  xori         a4, t5, 677
                  or           s6, s2, s8
                  srai         a1, sp, 28
                  slli         s2, a7, 23
                  xor          ra, s10, s0
                  srai         s10, sp, 28
                  andi         t0, s1, -525
1273:             ori          t4, a4, 1798
1274:             sra          s0, tp, t3
                  add          s6, t3, a2
                  xor          t6, t6, s10
                  add          s1, t1, a5
                  slt          t0, gp, s3
                  srl          s1, a1, t5
                  slli         s2, t5, 1
                  srli         s0, zero, 18
                  slt          t4, s1, s6
                  auipc        a2, 423289
                  bgeu         a4, s10, 1288f
                  add          t4, s2, a0
                  bge          s7, s4, 1296f
                  xori         s0, s4, 1541
1288:             slli         s11, a5, 17
                  lui          a4, 994523
                  ori          t1, s10, 283
                  sra          zero, gp, a5
                  slt          t0, a7, gp
                  sra          a1, s2, s2
                  bgeu         s3, t4, 1301f
                  sub          a4, s0, a0
1296:             slli         zero, a7, 31
                  bge          s2, t2, 1314f
                  sltiu        t3, tp, 1574
                  srl          s11, a7, s2
                  sub          a6, s10, s0
1301:             bge          t2, gp, 1320f
                  xori         a4, s5, -1266
                  lui          t5, 600669
                  or           ra, s3, t1
                  bne          t4, s9, 1317f
                  srl          t6, t4, t5
                  addi         t2, s4, 131
                  sll          t2, s5, s3
                  ori          t1, s1, -196
                  xor          t6, ra, t0
                  bge          t2, s11, 1312f
1312:             nop
                  srl          a2, s9, a7
1314:             sub          t6, s7, s10
                  lui          ra, 702219
                  slti         s4, s5, 306
1317:             xori         zero, t1, -172
                  sltiu        a2, s5, -1714
                  auipc        a7, 912919
1320:             bltu         zero, a1, 1335f
                  auipc        t6, 424632
                  blt          ra, t6, 1339f
                  slti         zero, zero, 1242
                  addi         t2, t2, 625
                  and          s1, a7, ra
                  sra          ra, t4, s9
                  slli         tp, t3, 4
                  sll          t2, s0, t0
                  slt          t1, a7, a6
                  sltu         t5, a6, t6
                  sltu         a4, tp, s8
                  srli         ra, t4, 1
                  beq          gp, a7, 1335f
                  slt          gp, zero, tp
1335:             bge          sp, a0, 1350f
                  sll          a1, s9, zero
                  lui          s4, 138849
                  xor          t3, a0, s4
1339:             auipc        a6, 101548
                  xori         s10, s11, -1599
                  bltu         t3, zero, 1343f
                  auipc        a1, 345466
1343:             nop
                  bge          a0, a4, 1354f
                  bltu         zero, s11, 1347f
                  slt          s6, s7, s5
1347:             bltu         s5, a5, 1362f
                  srai         s3, a2, 1
                  or           s9, s9, s10
1350:             slli         t6, a7, 14
                  sra          a3, t2, a4
                  auipc        s11, 601689
                  and          t5, s10, s11
1354:             slt          a3, t1, a6
                  bge          s10, t5, 1363f
                  sltiu        s7, t6, 251
                  xori         s1, gp, 1947
                  slti         tp, a1, 1294
                  srli         t5, a7, 21
                  sltu         t6, s6, a1
                  sltu         t5, t2, t5
1362:             srli         s6, a5, 13
1363:             sltiu        t1, s11, -527
                  xori         t0, tp, 485
                  sltu         s10, gp, a2
                  bgeu         a1, s1, 1367f
1367:             bne          a4, s7, 1377f
                  xor          s4, t6, s4
                  bgeu         t4, s5, 1386f
                  slt          s1, s6, t4
                  lui          s4, 631722
                  auipc        t2, 966885
                  add          tp, a5, a1
                  bltu         t2, s6, 1386f
                  srl          t5, s10, t0
                  slti         s4, t4, -813
1377:             andi         s11, s7, 1054
                  bgeu         s6, t3, 1395f
                  xor          s1, s7, t6
                  sltu         s7, ra, a7
                  slt          a0, s11, t4
                  bge          sp, t2, 1386f
                  sltiu        t1, s5, -448
                  bltu         s8, sp, 1397f
                  nop
1386:             blt          t6, t6, 1405f
                  bge          t3, t6, 1407f
                  srai         a4, t5, 18
                  slti         s5, s9, -1934
                  srai         a7, s9, 18
                  andi         a3, tp, -356
                  sub          a3, s4, s5
                  bgeu         a0, ra, 1403f
                  srl          t3, a7, a3
1395:             add          t0, s8, t3
                  srai         s4, a5, 15
1397:             bge          a4, s7, 1409f
                  xor          a1, sp, s9
                  bltu         a4, t6, 1418f
                  xor          s6, s11, t1
                  lui          t1, 7622
                  bge          a4, a6, 1412f
1403:             or           s4, a0, a1
                  bgeu         tp, a0, 1415f
1405:             ori          s5, a7, -602
                  srli         a3, a5, 29
1407:             bge          a7, a2, 1408f
1408:             bne          t5, a4, 1412f
1409:             slli         a7, s0, 12
                  add          s7, s0, s9
                  slli         s4, s6, 24
1412:             addi         t2, a4, -1788
                  or           zero, gp, a4
                  sltiu        s9, t5, 282
1415:             bge          gp, a3, 1427f
                  srl          a4, zero, s1
                  slt          s11, a3, a6
1418:             slti         t1, t0, 1957
                  srai         s10, s6, 12
                  bgeu         a2, a2, 1436f
                  bge          sp, a2, 1423f
                  bne          s1, s3, 1432f
1423:             sub          t3, s9, t0
                  andi         s5, t2, -389
                  addi         s10, s11, 1232
                  andi         s2, s0, -1159
1427:             bltu         a3, s10, 1434f
                  slti         tp, a6, 1538
                  or           a2, s11, s9
                  srl          a4, a3, a3
                  sra          t3, a6, t2
1432:             bltu         a1, a0, 1452f
                  nop
1434:             bgeu         gp, ra, 1453f
                  bge          gp, a5, 1440f
1436:             xor          a3, a3, s10
                  and          s4, a0, s6
                  slti         a7, t6, -959
                  srai         a7, s6, 3
1440:             addi         s4, a1, -409
                  blt          a6, a5, 1448f
                  bne          s8, t0, 1453f
                  sll          s3, s6, s11
                  and          a4, s1, s9
                  srai         s0, s5, 5
                  xori         t1, s11, -1407
                  slli         t6, s11, 31
1448:             srai         t4, s10, 22
                  xori         a1, ra, -181
                  sra          s1, tp, s8
                  srli         t1, s8, 20
1452:             lui          t1, 941235
1453:             blt          zero, a7, 1473f
                  bgeu         s5, a0, 1466f
                  ori          a0, t2, 319
                  andi         t1, s11, 1373
                  srl          ra, s6, t3
                  sltu         a0, a7, s2
                  and          t2, t6, s6
                  and          s6, s3, s9
                  srai         a6, t1, 16
                  beq          t0, a0, 1475f
                  srl          a2, t1, a5
                  srai         zero, a0, 17
                  bne          t0, s3, 1466f
1466:             sltu         t0, s7, t1
                  or           s4, a2, s5
                  slti         s2, t3, -392
                  xor          t6, a5, a3
                  slli         t5, t5, 7
                  beq          a3, s9, 1490f
                  sltu         t1, t2, t6
1473:             ori          a2, a4, -998
                  srli         a4, a7, 25
1475:             slt          a2, a3, a7
                  ori          tp, a6, 1617
                  ori          zero, a5, -1214
                  sltu         a0, a0, s2
                  bgeu         s6, t2, 1494f
                  srli         a0, a0, 8
                  srl          a4, s3, s10
                  bge          s10, a7, 1486f
                  sltiu        t6, s1, 1102
                  beq          s2, s11, 1492f
                  srl          a7, s10, gp
1486:             slt          s11, s11, a0
                  srli         t4, zero, 23
                  add          s3, s10, a1
                  sll          s7, s5, a3
1490:             ori          t0, s3, -1285
                  sltu         ra, sp, s10
1492:             sub          s9, t1, s3
                  lui          a2, 619380
1494:             nop
                  bgeu         s6, s9, 1507f
                  ori          s7, a7, 978
                  sltiu        s1, a2, 1377
                  lui          a2, 237747
                  auipc        s1, 672599
                  sltu         gp, a5, s4
                  ori          a2, t3, 2031
                  slli         s1, s5, 24
                  sltiu        t5, s7, 226
                  nop
                  slti         a2, zero, 1362
                  or           s4, s0, a0
1507:             auipc        s10, 455929
                  xor          s7, s5, a3
                  beq          tp, gp, 1511f
                  lui          ra, 149121
1511:             xori         ra, s5, -1930
                  sll          a2, a2, s6
                  bge          s5, a6, 1523f
                  sltiu        a4, s3, 1930
                  sra          s2, s2, s3
                  add          s4, a0, t2
                  xori         s5, tp, -703
                  bne          a2, t5, 1538f
                  andi         s6, s8, -1893
                  slti         t3, a3, -188
                  lui          a2, 627912
                  nop
1523:             andi         t6, s3, -1474
                  blt          a7, s7, 1526f
                  xori         s10, s1, -173
1526:             ori          t4, t6, -805
                  addi         s10, zero, -1532
                  xori         a6, sp, -394
                  sub          s11, gp, s4
                  sll          t1, s9, s10
                  srai         a6, s8, 22
                  xori         s2, tp, -860
                  slli         s3, a3, 14
                  blt          s6, t4, 1553f
                  auipc        s10, 677096
                  addi         a0, s10, 1303
                  bge          t1, a7, 1538f
1538:             slt          gp, s10, s9
                  beq          s5, a1, 1549f
                  ori          ra, a7, 907
                  andi         s7, s9, -446
                  add          s4, s11, s0
                  srai         a2, t0, 22
                  andi         s9, s0, -1850
                  add          s6, s8, zero
                  nop
                  sltiu        s0, zero, -1903
                  srai         a7, t3, 29
1549:             srl          t5, a6, gp
                  blt          s4, a4, 1560f
                  bgeu         s0, a0, 1555f
                  blt          s1, t4, 1564f
1553:             addi         s3, a7, 576
                  sra          s7, a1, t1
1555:             beq          s6, s0, 1572f
                  andi         tp, t2, -1271
                  sub          s9, s11, t0
                  add          s6, tp, s1
                  xori         s2, a5, -1935
1560:             blt          s7, tp, 1576f
                  bgeu         t6, a1, 1578f
                  bgeu         s8, sp, 1564f
                  or           t4, sp, s3
1564:             srai         t1, t3, 3
                  beq          s8, s11, 1582f
                  beq          a6, t3, 1576f
                  slti         zero, a3, -541
                  blt          s1, sp, 1573f
                  bgeu         s1, s2, 1582f
                  srli         t5, s5, 0
                  sltiu        a7, s8, 1758
1572:             auipc        a7, 513716
1573:             add          zero, a6, sp
                  ori          gp, gp, -932
                  andi         s0, s7, 1735
1576:             lui          gp, 897399
                  sra          t3, t6, t6
1578:             andi         a3, s1, 738
                  lui          s4, 315951
                  xori         gp, gp, -1644
                  auipc        ra, 727095
1582:             xor          s2, zero, a2
                  lw           s1, 4(a5)
                  add          t1, a6, t4
                  and          gp, s9, s8
                  sltu         s5, s4, a6
                  addi         a5, a5, 28
                  slli         a2, t1, 17
                  slt          s0, a4, zero
2079:             addi x3, x9, 0
2079:             jalr x3, x3, 0
sub_3:            srai         a4, gp, 4
                  addi         a5, a5, -8
                  sw           s1, 4(a5)
                  sra          s6, t2, a1
                  sltiu        a0, s2, -2026
                  xor          t6, a5, t0
                  srl          a0, s8, tp
                  sra          s4, s9, s10
                  la           gp, region_0+896 #start riscv_load_store_rand_instr_stream_5
                  sb           tp, -26(gp)
                  add          t6, s2, s6
                  sb           ra, 17(gp)
                  sltu         s5, s6, a7
                  sltiu        a0, t5, -1420
                  add          s11, s9, s6
                  lb           a3, -19(gp)
                  sltu         a6, s11, s9
                  srai         t0, gp, 27
                  lbu          t0, 57(gp)
                  and          a1, s4, s2
                  lbu          t6, 50(gp)
                  auipc        s9, 713031
                  lb           a7, -57(gp)
                  lh           s2, 20(gp)
                  slli         s5, t5, 2
                  or           t1, s2, s11
                  lhu          s10, -62(gp)
                  lb           s6, 58(gp)
                  sb           a7, 15(gp)
                  lbu          s9, 54(gp)
                  lui          s2, 352816
                  sh           a4, -60(gp)
                  lb           zero, 1(gp)
                  sb           sp, 26(gp)
                  sw           sp, 32(gp)
                  lb           a0, -24(gp)
                  lbu          a4, 33(gp)
                  sw           s5, 8(gp)
                  lbu          t6, 10(gp)
                  sh           s1, 34(gp)
                  auipc        s0, 628355
                  lh           s2, -58(gp)
                  lb           a0, 64(gp)
                  add          s7, tp, a3
                  lbu          s10, 23(gp)
                  lb           tp, 25(gp)
                  addi         zero, sp, 1422
                  lb           s2, -52(gp)
                  slli         s11, s2, 11
                  sra          a3, s4, s6
                  slti         a2, t4, -206
                  lbu          s3, 55(gp)
                  xor          s4, a7, a5
                  sb           a6, 55(gp)
                  slti         t4, s7, 1121
                  and          a7, s4, t2
                  lb           t3, 26(gp)
                  srai         s0, a6, 9
                  sw           s0, 4(gp)
                  sb           t0, 32(gp) #end riscv_load_store_rand_instr_stream_5
                  la           s10, region_0+569 #start riscv_load_store_rand_instr_stream_2
                  lbu          s9, 16(s10)
                  sb           a0, 9(s10)
                  lb           s1, 0(s10)
                  sra          t0, a1, s5
                  lbu          s3, 6(s10)
                  sll          a2, s3, s5
                  lbu          s9, 4(s10)
                  sra          gp, a6, ra
                  srai         a3, s1, 10
                  xori         a6, t3, 1934
                  andi         s7, t0, 895
                  lb           t0, -14(s10)
                  sll          t6, a5, t2
                  sw           s8, 11(s10)
                  nop
                  srai         gp, s9, 7
                  xori         s3, a0, -170
                  sub          t2, s2, s3
                  lh           a1, 9(s10)
                  srli         t6, a7, 7
                  addi         a2, t6, -1839
                  slti         s9, s5, -84
                  sh           a5, 5(s10)
                  lb           a1, 13(s10)
                  lb           t3, -8(s10)
                  lw           a3, -9(s10)
                  lw           s2, -1(s10)
                  sltiu        t5, s8, 1464
                  slti         t4, a7, -1494
                  lb           gp, 10(s10)
                  sh           s0, 1(s10)
                  slli         a6, a4, 22
                  andi         a0, tp, -1990
                  auipc        s2, 818439
                  lbu          s1, -10(s10)
                  lhu          s3, 13(s10)
                  srli         a6, a1, 10
                  lbu          s5, -10(s10)
                  sb           s6, 6(s10)
                  sub          s2, t0, a7
                  lb           t4, 6(s10)
                  lbu          s11, 8(s10) #end riscv_load_store_rand_instr_stream_2
                  la           a0, region_0+831 #start riscv_load_store_rand_instr_stream_6
                  srai         s11, a5, 29
                  sw           tp, -727(a0)
                  xor          s1, tp, t4
                  sw           a6, -323(a0)
                  lbu          a6, 944(a0)
                  sw           s11, -51(a0)
                  ori          s5, a7, 1424
                  sh           s5, -25(a0)
                  sw           t5, 785(a0)
                  sb           s11, 68(a0)
                  sb           s11, -387(a0)
                  lw           a7, 521(a0)
                  lh           s3, 497(a0)
                  addi         t0, a6, 1469
                  lbu          s4, 638(a0)
                  srai         t5, s1, 11
                  sh           s0, -779(a0)
                  srli         ra, s4, 11
                  lb           a6, -183(a0)
                  lbu          t2, -255(a0)
                  lhu          s6, -349(a0)
                  lb           a6, 1006(a0)
                  ori          s6, a5, 905
                  sra          s0, tp, s4
                  sra          s0, a0, s8
                  or           gp, a6, s1
                  sb           zero, 668(a0)
                  lbu          a4, -482(a0)
                  lb           s1, -537(a0)
                  sb           s5, 430(a0)
                  lbu          a3, 1031(a0)
                  sb           a0, -684(a0)
                  sltiu        a6, t5, 714
                  add          t0, s11, s8
                  addi         t1, t0, -1011
                  lb           s3, 356(a0)
                  lh           a6, 313(a0)
                  lb           t6, -712(a0)
                  sb           a2, -736(a0)
                  sltu         s9, s4, s6
                  lhu          s5, 681(a0) #end riscv_load_store_rand_instr_stream_6
                  la           t0, region_0+824 #start riscv_load_store_rand_instr_stream_0
                  sb           t2, -165(t0)
                  sb           zero, -104(t0)
                  srli         t6, t3, 17
                  sb           s3, -29(t0)
                  lb           t5, 83(t0)
                  and          t4, t5, a7
                  sh           s0, 88(t0)
                  lb           t3, -14(t0)
                  lhu          t6, -172(t0)
                  add          a2, t0, gp
                  lw           s6, -48(t0)
                  lb           s0, 195(t0)
                  sh           s9, -58(t0)
                  sb           a5, 71(t0)
                  lhu          t6, -222(t0)
                  lbu          gp, 243(t0)
                  sltu         a2, s0, tp
                  andi         s7, a0, 1441
                  lb           t3, 247(t0)
                  lbu          t6, -127(t0)
                  sltiu        a0, a1, 2014
                  lhu          t6, -148(t0)
                  slli         t1, a6, 15
                  lhu          t4, 210(t0)
                  lbu          s4, 9(t0)
                  sll          s3, s7, t0
                  auipc        s10, 885069
                  lb           a4, 3(t0)
                  nop
                  sb           t3, -85(t0)
                  ori          zero, s11, -650
                  slt          s0, s2, s10
                  sll          s6, a6, t2
                  lb           tp, -31(t0)
                  sb           tp, -136(t0)
                  sb           a4, -229(t0)
                  sw           a0, -84(t0)
                  sw           t2, -216(t0)
                  lw           t1, 160(t0)
                  addi         tp, a5, 1114
                  slli         s1, s4, 30
                  lbu          s9, 113(t0) #end riscv_load_store_rand_instr_stream_0
                  la           a4, region_0+1001 #start riscv_load_store_rand_instr_stream_4
                  srl          t5, s2, zero
                  lbu          s9, -61(a4)
                  sub          s9, t0, tp
                  slt          t0, s6, a3
                  nop
                  lh           a3, 21(a4)
                  and          a6, s5, s3
                  andi         s0, s0, 950
                  sh           t6, -9(a4)
                  lui          a6, 270382
                  sb           s3, 26(a4)
                  sll          s11, t2, s0
                  andi         t1, s0, -387
                  sh           s5, -39(a4)
                  xor          a7, s9, tp
                  slti         a3, s6, -1963
                  lui          s10, 366331
                  slli         t3, t0, 6
                  sll          t0, t5, a4
                  sltu         s10, gp, zero
                  lb           s4, -50(a4)
                  sb           a0, 14(a4)
                  addi         s0, s8, 359
                  ori          a0, s7, -672
                  andi         t5, t5, -1282
                  sw           a7, -41(a4)
                  srl          t4, a3, gp
                  lb           s4, 4(a4)
                  sh           t0, -57(a4)
                  sb           s11, -18(a4)
                  sb           t4, 23(a4)
                  lbu          s2, 50(a4)
                  lbu          s11, 41(a4)
                  slti         s10, t0, 871
                  sb           s7, 24(a4)
                  lui          s1, 566125
                  lh           s2, -29(a4)
                  auipc        t4, 234421
                  lh           s5, -7(a4)
                  sll          tp, a0, ra
                  lb           t2, 26(a4)
                  sltu         a1, a7, s10
                  lb           a7, -64(a4) #end riscv_load_store_rand_instr_stream_4
                  la           a6, region_1+200 #start riscv_load_store_rand_instr_stream_3
                  lb           t4, -15(a6)
                  lb           s11, -6(a6)
                  add          s11, t6, s0
                  slli         a2, t5, 8
                  sb           a4, -3(a6)
                  lui          s9, 537986
                  sh           a0, -4(a6)
                  sb           ra, 10(a6)
                  lw           t5, 12(a6)
                  srai         t1, a4, 13
                  lb           a4, 10(a6)
                  lh           s3, -16(a6)
                  srai         a3, t2, 21
                  sb           t6, -1(a6)
                  and          t4, a2, s1
                  sw           s10, -8(a6)
                  sltiu        gp, a4, -1004
                  sltu         zero, a7, s10
                  lbu          s10, -11(a6)
                  xor          s2, ra, sp
                  lh           a2, -4(a6)
                  slli         s0, a7, 7
                  sw           a4, 16(a6)
                  addi         s0, s1, 1610
                  slti         s11, a5, -385
                  srai         a4, a3, 1
                  lui          s9, 3096
                  lbu          s5, -1(a6)
                  sb           s6, -4(a6)
                  sb           s9, -7(a6)
                  slt          a4, s7, s8
                  and          t1, s8, t5
                  lhu          a0, 12(a6)
                  lb           zero, -1(a6)
                  lb           zero, -14(a6)
                  srl          s7, s10, s8
                  lb           t3, -2(a6)
                  slli         t2, s5, 29
                  sh           s9, -4(a6)
                  sw           zero, 16(a6)
                  or           zero, a2, ra
                  xor          s11, sp, s8
                  lbu          s4, -7(a6)
                  sb           s9, 16(a6) #end riscv_load_store_rand_instr_stream_3
                  slt          a1, gp, t5
                  srli         t3, t6, 20
                  ori          s11, s10, -1973
                  sub          s2, ra, s9
                  xori         gp, t2, -1025
                  slt          a3, s11, a6
                  bltu         s4, s7, 14f
                  bne          s10, t0, 23f
                  add          s2, t5, s10
                  bltu         s3, t1, 27f
                  sltu         s0, a0, a3
                  bgeu         t5, t3, 24f
                  srai         s9, a2, 5
                  beq          a6, s9, 26f
14:               sub          t6, ra, a3
                  bne          s4, s4, 32f
                  or           s3, t0, a0
                  ori          t4, s7, 619
                  nop
                  slt          a3, s2, t1
                  addi         s7, s9, -644
                  bgeu         s6, a6, 24f
                  srai         s3, a6, 15
23:               or           t6, s3, s0
24:               beq          s4, t1, 42f
                  srl          s7, tp, a2
26:               bgeu         s7, s2, 31f
27:               sll          t5, s10, ra
                  bne          a6, t1, 42f
                  beq          t3, t2, 37f
                  bge          s3, sp, 37f
31:               or           t2, a4, s5
32:               ori          s10, s6, -736
                  bne          a4, a2, 39f
                  bne          gp, s11, 43f
                  bge          s1, a5, 51f
                  bgeu         sp, s2, 47f
37:               bne          a2, a7, 46f
                  xori         t0, s0, 1402
39:               bge          t1, s8, 53f
                  bgeu         t4, sp, 59f
                  bne          t2, s11, 49f
42:               sltu         a0, s2, s6
43:               sub          zero, s9, a2
                  slli         t4, s11, 23
                  srl          ra, a4, zero
46:               ori          s11, s8, -27
47:               nop
                  slli         ra, s8, 11
49:               xori         tp, s8, 501
                  sll          ra, s9, s6
51:               bltu         gp, ra, 54f
                  sltu         s11, a6, t2
53:               slli         t1, t0, 31
54:               srai         t5, a2, 28
                  bne          t1, s3, 59f
                  addi         s2, a2, 337
                  addi         s6, s4, -635
                  beq          t1, a3, 63f
59:               slt          t2, t3, s10
                  slli         s4, s9, 7
                  xori         t3, s4, 1763
                  sra          a6, t1, a0
63:               bltu         s2, a2, 83f
                  sltiu        a4, a2, 1926
                  andi         s4, a7, 1874
                  andi         zero, a3, -1610
                  add          s4, s4, s7
                  sub          gp, s3, t0
                  and          s6, a0, s2
                  lui          ra, 97153
                  srli         a1, a5, 18
                  sll          s4, t4, t6
                  srli         t4, t0, 21
                  auipc        a3, 69202
                  andi         s4, zero, 1186
                  xor          s0, a7, a7
                  bne          sp, a4, 94f
                  slti         t5, s10, 1688
                  slli         zero, a2, 19
                  nop
                  and          gp, s10, a1
                  ori          s9, s7, 1001
83:               or           s1, a0, t5
                  andi         s10, t0, -1714
                  sra          zero, t5, t3
                  srl          s3, s7, t5
                  sll          s0, s9, a5
                  srli         t0, s9, 9
                  addi         s9, t3, 2029
                  beq          s11, s8, 105f
                  nop
                  xori         t3, a4, 962
                  srl          t3, zero, s8
94:               and          t3, s9, s8
                  bge          s3, s10, 106f
                  slti         s0, a5, -1525
                  and          t0, a0, a1
                  slt          t2, gp, s2
                  slt          s7, s8, s11
                  blt          zero, a3, 109f
                  sra          s1, a6, a4
                  beq          s7, t6, 118f
                  addi         a1, s2, -1427
                  bne          t4, t1, 110f
105:              srai         tp, t5, 26
106:              slli         s9, s7, 22
                  bgeu         t6, s7, 126f
                  sll          a3, s7, a1
109:              ori          s4, zero, -497
110:              auipc        a4, 634377
                  beq          a3, s11, 129f
                  srl          a6, s1, t5
                  slt          s2, t6, t6
                  srli         ra, t3, 16
                  slt          s5, a0, s3
                  slli         t2, s9, 13
                  beq          s1, t3, 124f
118:              slli         a4, s10, 4
                  slli         s7, a1, 18
                  bltu         ra, a1, 123f
                  srl          t1, s11, zero
                  bgeu         a4, t6, 142f
123:              sll          zero, t5, gp
124:              sra          tp, a2, zero
                  xori         t1, a7, 1981
126:              xor          a6, t2, s6
                  bltu         s6, zero, 143f
                  add          t4, a4, a3
129:              sll          ra, a7, s5
                  or           s0, a0, s0
                  xor          a4, a0, s5
                  beq          a0, s7, 135f
                  beq          t3, a0, 139f
                  srl          a2, t5, a7
135:              lui          t3, 11456
                  andi         t6, tp, 1995
                  srl          s5, t1, s7
                  addi         s11, t2, 1655
139:              auipc        t4, 511049
                  srl          s9, a3, s7
                  beq          a4, a0, 157f
142:              bge          t3, t6, 155f
143:              slti         s9, t6, -1107
                  slti         t1, tp, -991
                  bgeu         s8, s5, 154f
                  andi         t1, s5, 1933
                  ori          t1, s6, 1691
                  and          s7, a3, s3
                  beq          t0, s6, 153f
                  nop
                  bne          a3, sp, 168f
                  sll          ra, s1, s2
153:              srl          s10, a0, a3
154:              sltiu        a7, a7, 204
155:              and          t5, a7, s7
                  slti         s1, a0, -238
157:              beq          t1, s0, 174f
                  xori         s3, zero, 120
                  xori         a4, s7, 533
                  slli         s3, a0, 7
                  srai         t5, s10, 12
                  slti         zero, s2, -636
                  sltu         a2, t6, s8
                  xori         a0, ra, -668
                  bgeu         s6, a4, 170f
                  blt          t1, sp, 175f
                  sub          s11, t6, s3
168:              bge          a7, a4, 176f
                  sltu         a0, a0, ra
170:              srl          t3, s5, t0
                  srli         a6, a5, 7
                  nop
                  auipc        t3, 771909
174:              bgeu         a2, s3, 182f
175:              bgeu         a5, t5, 190f
176:              slti         a1, a6, 1663
                  srl          zero, a1, t5
                  or           t4, t5, t6
                  sra          a7, a1, t6
                  bgeu         s2, zero, 188f
                  lui          t1, 161303
182:              bgeu         ra, s7, 193f
                  sll          t0, s4, s8
                  srl          s2, gp, a2
                  bltu         a3, s11, 201f
                  bge          a0, s3, 197f
                  or           s7, s10, a5
188:              bne          s10, t3, 202f
                  addi         s5, a5, -43
190:              bgeu         s5, a1, 208f
                  bge          s9, s10, 197f
                  or           zero, s4, a5
193:              beq          s11, sp, 198f
                  blt          s8, a5, 208f
                  bne          t0, a2, 208f
                  sra          s2, s5, tp
197:              auipc        tp, 557233
198:              bgeu         s2, s10, 207f
                  bge          t0, a6, 205f
                  srl          a4, s4, a7
201:              and          t5, t1, s11
202:              srl          s11, a4, a1
                  nop
                  ori          t6, tp, 1333
205:              srli         s6, t2, 22
                  xor          t1, s9, t3
207:              bne          a4, s0, 225f
208:              bge          s3, s11, 213f
                  slt          a3, s10, a6
                  or           s2, a3, a7
                  sll          t4, a1, t3
                  sub          s6, a4, a4
213:              bne          s7, s2, 224f
                  sltu         a7, sp, sp
                  and          a2, s2, t5
                  bltu         a1, t2, 231f
                  nop
                  add          s11, a7, a5
                  xori         t5, s11, 327
                  slti         a0, a1, -1234
                  bltu         s10, a7, 237f
                  xor          s2, a7, s11
                  addi         s0, t0, 660
224:              or           tp, t6, a5
225:              bge          s6, zero, 234f
                  add          zero, a4, a3
                  bge          s4, s6, 241f
                  slt          s5, gp, a1
                  sll          s7, t6, t6
                  bne          a3, s3, 238f
231:              slti         s4, t1, 610
                  sub          t2, sp, tp
                  slti         a7, a5, 1537
234:              lui          s9, 239417
                  slli         s0, s0, 9
                  slt          a0, a7, t4
237:              nop
238:              ori          t3, s0, 1756
                  slt          s1, s1, t1
                  sltu         t2, s4, a7
241:              bne          a6, t1, 249f
                  la           ra, region_0+892 #start riscv_load_store_rand_instr_stream_1
                  lui          tp, 144271
                  sltiu        s5, gp, 919
                  ori          t0, s10, 27
                  lbu          s1, 6(ra)
                  sh           s2, -6(ra)
                  auipc        s3, 632412
                  sltu         t3, s11, s2
                  sub          s11, gp, s8
                  or           t6, s2, s11
                  or           a2, s6, a6
                  xori         s10, s0, 736
                  xor          t1, s10, a5
                  xori         s1, a6, 375
                  slti         s2, zero, -1843
                  lbu          tp, 7(ra)
                  sltiu        s11, a6, 784
                  lhu          zero, 2(ra)
                  sll          s6, t3, t0
                  srli         a0, s1, 8
                  lbu          t2, -12(ra)
                  srai         s11, s2, 15
                  sb           s2, -2(ra)
                  sub          s7, t0, s1
                  slti         a0, s8, -1279
                  lbu          a1, -15(ra)
                  sw           t4, -12(ra)
                  lui          tp, 1046299
                  xor          zero, t5, a5
                  lb           t4, 3(ra)
                  lbu          t6, -5(ra)
                  xori         s4, a7, -37
                  lb           s10, -5(ra)
                  sb           s4, 10(ra)
                  lh           s9, -14(ra)
                  sb           s10, -15(ra)
                  andi         a7, s11, -1272
                  slti         s6, s2, -1076
                  ori          a0, a3, 634
                  and          s0, a5, s9
                  xor          zero, t1, t0
                  slli         s9, t3, 25
                  sb           s8, 13(ra)
                  xor          zero, s11, a1
                  ori          t3, t5, 1051
                  lw           t2, -4(ra) #end riscv_load_store_rand_instr_stream_1
                  sll          s5, ra, tp
                  sra          t2, t5, s1
                  xori         a0, s7, 811
                  slli         a7, t6, 5
                  slli         t5, s0, 20
                  srl          a1, s7, s7
                  auipc        zero, 304018
249:              nop
                  bltu         s9, s5, 255f
                  auipc        t2, 60119
                  bge          s10, a1, 261f
                  addi         tp, s9, 127
                  beq          s7, a3, 270f
255:              srai         t4, tp, 30
                  slli         a0, s7, 17
                  bgeu         ra, t1, 265f
                  andi         a1, s2, 2000
                  srl          tp, s7, s6
                  or           t5, zero, s1
261:              sra          s11, tp, t1
                  bge          s5, a1, 265f
                  slti         s0, s9, -970
                  sll          s11, s11, a2
265:              andi         a0, s3, -1976
                  add          a6, s10, s9
                  nop
                  or           t5, t1, t4
                  add          a6, t2, a1
270:              blt          a2, s5, 286f
                  srl          zero, t1, a2
                  slti         a3, tp, 1605
                  slt          s2, t3, a1
                  slt          s5, a6, gp
                  bltu         s8, a3, 292f
                  sll          t5, a6, a4
                  srai         ra, s4, 26
                  xor          t5, t6, a0
                  srli         t0, t5, 10
                  sltiu        a1, t1, 951
                  sub          s6, s9, a5
                  sltiu        a4, s4, -1552
                  ori          t6, gp, 492
                  srai         s10, s7, 13
                  or           s1, t1, s1
286:              beq          ra, zero, 292f
                  beq          s3, s5, 307f
                  sltiu        s9, s10, -573
                  sltiu        t4, t3, 1627
                  auipc        s3, 522958
                  andi         a2, a3, 1357
292:              xori         t4, a7, -1804
                  or           a2, a0, t3
                  srai         a3, a2, 10
                  sra          s1, t2, a3
                  sub          t6, a0, ra
                  slti         zero, t0, -894
                  auipc        s1, 936361
                  sra          s9, a1, s10
                  xor          s6, zero, t2
sub_3_j7:         jal          s1, sub_6 #jump sub_3 -> sub_6
                  or           t5, s5, s1
                  lui          a7, 697289
                  srl          t1, ra, s11
                  bgeu         gp, t3, 299f
                  srai         t2, a2, 18
                  srai         a6, a7, 8
299:              and          a1, a7, a4
                  sll          a0, s1, a4
                  slli         s10, s5, 7
                  sra          a2, s10, gp
                  sll          a0, t2, t1
                  bltu         s3, s8, 323f
                  bgeu         a1, t2, 312f
                  slti         zero, s2, -549
307:              and          t2, a6, s5
                  srli         t1, t2, 23
                  sltu         a6, sp, a5
                  ori          t4, s11, 391
                  slt          a6, a1, sp
312:              blt          s5, a1, 330f
                  beq          s11, s0, 326f
                  slt          s9, t1, s3
                  sltu         s3, s0, t5
                  addi         t3, s6, -976
                  sra          a4, sp, s3
                  sltiu        tp, s6, -307
                  addi         s7, s8, -1282
                  and          a7, a6, t4
                  sub          a3, a7, zero
                  slti         a4, a5, 246
323:              slli         s0, a7, 11
                  nop
                  and          s1, sp, t6
326:              slti         tp, a4, -2009
                  bgeu         t5, s11, 338f
                  sub          a4, a0, t5
                  add          t6, a5, s7
330:              bge          tp, t6, 347f
                  sub          a3, t4, s5
                  beq          a1, a2, 341f
                  srl          s4, s4, zero
                  andi         s11, s0, 1470
                  bltu         s2, a7, 339f
                  bne          a4, s7, 349f
                  and          a4, a6, t6
338:              auipc        t6, 996781
339:              auipc        s4, 548437
                  bge          sp, s7, 354f
341:              sll          s11, s5, s3
                  lui          t4, 431871
                  auipc        a2, 462296
                  sltiu        s10, t0, -1695
                  bge          s10, a4, 354f
                  auipc        a2, 958285
347:              add          s2, a6, t4
                  andi         tp, t0, 818
349:              ori          s7, gp, 156
                  nop
                  srli         s4, s9, 10
                  or           s9, t2, t1
                  bne          a7, zero, 364f
354:              bltu         zero, t2, 360f
                  slti         a3, a5, -549
                  xori         a6, t4, -782
                  andi         t0, s3, -1798
                  auipc        s6, 271811
                  blt          s3, a1, 375f
360:              beq          tp, s7, 363f
                  nop
                  add          a2, gp, zero
363:              slli         a6, ra, 31
364:              slli         s5, s10, 2
                  blt          s1, t3, 370f
                  xori         s5, ra, 516
                  sltu         t2, t5, a4
                  beq          ra, t2, 376f
                  xori         t3, t1, 910
370:              beq          a2, s10, 378f
                  auipc        a2, 734724
                  sra          gp, tp, s3
                  or           s11, t2, s8
                  bge          t2, s2, 391f
375:              sra          a3, s9, s9
376:              bge          s6, t1, 384f
                  slti         a1, t3, 893
378:              sub          zero, s7, s2
                  xori         s6, a7, 801
                  blt          s0, s11, 398f
                  sra          a0, a7, s11
                  sub          a7, s2, t2
                  sub          a4, t2, a4
384:              and          s7, t1, sp
                  bne          s7, tp, 394f
                  addi         s4, s9, -1686
                  bne          a3, s11, 407f
                  bne          a2, t3, 405f
                  auipc        t3, 855089
                  slli         a3, a7, 17
391:              xor          s0, t0, t6
                  sll          s6, t0, t4
                  srli         s2, s8, 4
394:              srli         t4, a6, 1
                  nop
                  bgeu         gp, s1, 403f
                  nop
398:              or           a6, t3, tp
                  xori         a1, ra, -1634
                  sra          a1, zero, t3
                  sub          gp, a4, s7
                  nop
403:              slt          t1, t1, s2
                  addi         s6, s3, 860
405:              srai         s0, t6, 22
                  or           t5, s1, a1
407:              or           ra, s6, t1
                  or           zero, s5, sp
                  srli         s3, s2, 6
                  addi         t4, s9, -156
                  sltiu        s6, s4, 1031
                  srai         t2, a4, 9
                  sub          a1, t3, tp
                  add          s10, a4, s11
                  xori         a1, s8, -1656
                  ori          a0, s0, 723
                  lui          s0, 218132
                  srl          t3, s3, s0
                  sltiu        s1, a1, 1694
                  nop
                  sltiu        s5, sp, -332
                  sltu         t6, s5, a5
                  bge          s10, a0, 442f
                  srli         a1, s3, 15
                  bltu         t1, sp, 443f
                  xor          a4, t3, sp
                  andi         s7, tp, -1119
                  or           s7, a2, s5
                  and          t3, s6, a5
                  srli         s5, s10, 9
                  bne          s0, s4, 445f
                  bgeu         s11, t6, 443f
                  bltu         s11, t0, 438f
                  srl          s9, a5, s4
                  sltiu        a1, t0, 191
                  xor          a3, t6, ra
                  addi         t2, t0, 1494
438:              slt          s9, s8, s7
                  sll          t3, a7, gp
                  nop
                  srli         zero, s1, 3
442:              nop
443:              andi         a1, t1, -1505
                  sub          s0, a3, a6
445:              bltu         s9, t6, 459f
                  ori          zero, s11, -1384
                  bltu         s0, t5, 451f
                  srli         s10, s9, 6
                  sltiu        s2, t1, 781
                  and          t0, t5, t4
451:              sub          s4, s4, t4
                  add          s5, s0, s6
                  slt          s3, t4, a6
                  sll          gp, zero, s8
                  addi         s7, a7, 1589
                  and          t4, t6, gp
                  slli         s6, s7, 20
                  or           a3, s5, s6
459:              sra          t1, s7, t4
                  sltu         a0, a0, a3
                  bge          s11, s6, 474f
                  bge          s10, a1, 477f
                  add          a0, s5, s4
                  bne          s6, t0, 480f
                  bne          a1, t0, 474f
                  slli         a6, a3, 13
                  addi         s2, s3, 1276
                  bge          zero, a6, 474f
                  srl          s4, s2, t0
                  slli         s11, gp, 12
                  xor          s11, s8, a2
                  sra          s0, t4, t0
                  srl          s7, t6, gp
474:              srl          t6, s11, a1
                  lui          s10, 643375
                  or           s3, s4, gp
477:              blt          ra, zero, 480f
                  bne          a1, s4, 494f
                  srl          s5, s6, t1
480:              blt          t0, t3, 493f
                  ori          ra, s7, 476
                  bltu         zero, t1, 495f
                  lui          s0, 406354
                  sra          s6, t2, a1
                  srli         a2, s9, 20
                  auipc        s4, 474304
                  srai         t5, t5, 23
                  srli         zero, a1, 14
                  auipc        gp, 773377
                  sll          a3, s10, zero
                  slli         s6, gp, 19
                  add          s6, a7, s6
493:              andi         a4, a5, 66
494:              bltu         s10, t6, 513f
495:              andi         a3, s7, 1676
                  srl          a4, t1, s1
                  xor          a7, s10, s10
                  bge          t5, zero, 514f
                  sra          a7, a5, a6
                  slt          a2, zero, zero
                  bgeu         a4, s1, 504f
                  slt          s11, s3, t1
                  add          a2, sp, t4
504:              and          s5, t2, s6
                  addi         s9, a7, -329
                  lui          a3, 854383
                  andi         a0, s8, 1704
                  nop
                  andi         t3, s7, -1067
                  slt          s4, s2, s8
                  slt          s5, s6, a6
                  and          a7, t3, s4
                  la           a0, sub_4
                  nop
                  addi         a0, a0, 657
                  lui          ra, 959947
                  addi         t5, a2, 1
                  or           a1, s8, s10
                  bge          a4, a3, sub_3_j5 #branch to jump instr
                  slli         t2, s11, 1
sub_3_j5:         jalr         s1, a0, -656 #jump sub_3 -> sub_4
513:              sub          t4, s4, a3
514:              bgeu         t4, t2, 528f
                  nop
                  bne          s8, s4, 533f
                  slt          t6, t2, s5
                  sll          a0, s0, s7
                  lui          zero, 37398
                  nop
                  add          t1, s1, s9
                  bge          s0, s4, 537f
                  sltu         s3, t3, a7
                  auipc        gp, 569000
                  xor          gp, a1, s0
                  bltu         s11, a4, 534f
                  nop
528:              sll          s2, a2, t4
                  slli         t0, zero, 16
                  sra          s1, gp, zero
                  sll          a3, s5, ra
                  beq          a5, a0, 550f
533:              ori          s0, t3, 1778
534:              srli         s1, a7, 30
                  xor          a0, zero, zero
                  ori          a4, t4, 772
537:              slt          gp, t1, s6
                  andi         t6, a1, -604
                  slt          a1, t2, t0
                  sub          t1, t0, a4
                  blt          a2, s3, 544f
                  xor          a4, t1, s9
                  sltiu        a3, a1, -1810
544:              addi         t2, s0, -1013
                  or           s9, ra, s1
                  or           t4, a2, sp
                  ori          a4, s9, -1320
                  xori         gp, t1, 1600
                  ori          s2, s11, 392
550:              add          s1, gp, s7
                  nop
                  auipc        s1, 523339
                  lui          s6, 655498
                  bne          s4, sp, 560f
                  srl          s0, a7, s0
                  srl          t0, tp, s2
                  bne          s7, s9, 563f
                  slli         s3, s10, 12
                  srli         t5, a3, 7
560:              slti         ra, s10, -1078
                  bltu         a7, t5, 581f
                  srli         s2, s11, 12
563:              xori         s4, s4, -1206
                  slti         s10, a6, -696
                  srl          s6, s11, s3
                  bne          s4, s8, 575f
                  bltu         s2, t2, 571f
                  sltu         a0, s9, t3
                  sltu         s7, s6, ra
                  xor          t4, s9, t4
571:              ori          a3, s6, 76
                  srl          gp, sp, s1
                  sltu         a7, s1, a4
                  nop
575:              blt          t1, a7, 592f
                  beq          s5, s3, 590f
                  sra          gp, a2, t4
                  beq          s11, s10, 587f
                  slt          t2, sp, s2
                  slti         ra, a3, -85
581:              blt          ra, t0, 586f
                  srai         t6, a6, 2
                  bge          t5, a0, 590f
                  ori          s9, sp, -1689
                  sltu         s10, a1, s8
586:              addi         s2, a6, 1485
                  add          t4, tp, s1
                  add          s10, a7, sp
                  srl          s1, a6, s8
                  sll          t6, t5, a3
                  or           a2, s9, t6
                  bne          a3, t3, sub_3_j8 #branch to jump instr
                  nop
sub_3_j8:         jal          s1, sub_4 #jump sub_3 -> sub_4
587:              srl          t2, s1, s0
                  xor          s1, tp, t2
                  slli         ra, sp, 23
590:              sltiu        s10, s8, 1483
                  and          s7, t2, a6
                  and          t3, t3, a5
                  la           a7, sub_5
                  sub          t2, sp, ra
                  srai         s11, sp, 11
                  xor          s0, ra, a4
                  addi         a7, a7, 906
                  slt          zero, s8, s11
                  sltiu        a4, tp, -357
                  beq          s1, s9, sub_3_j6 #branch to jump instr
                  sra          t3, tp, a7
                  srli         zero, t5, 13
                  and          t2, s10, s11
sub_3_j6:         jalr         s1, a7, -905 #jump sub_3 -> sub_5
                  lui          t4, 349800
592:              srli         t5, sp, 6
                  bgeu         s1, gp, 604f
                  add          a1, s10, a0
                  auipc        s6, 765382
                  sub          t6, s2, a1
                  sll          t4, tp, a5
                  bgeu         a4, t4, 611f
                  sltu         s4, s7, s1
                  nop
                  auipc        tp, 216989
                  andi         s9, t5, -1270
                  slli         s7, t1, 13
604:              sltiu        a7, a7, -1484
                  or           ra, t0, zero
                  srli         a0, t1, 13
                  addi         a4, s1, -345
                  sll          a1, s6, s10
                  sll          zero, t3, a3
                  srai         s1, t3, 18
611:              sra          a7, s7, sp
                  srl          s7, a0, a4
                  add          s0, s0, s0
                  beq          a7, a4, 623f
                  bne          a4, gp, 620f
                  sub          s3, s10, t5
                  sub          t6, t0, a2
                  slli         t2, a2, 16
                  slt          s6, gp, sp
620:              srai         t1, t6, 25
                  bgeu         t2, s6, 637f
                  srli         gp, t1, 27
623:              bgeu         t0, a7, 641f
                  sltu         s7, a1, ra
                  bltu         s5, s2, 633f
                  slt          t3, s7, a1
                  bltu         s9, t4, 635f
                  bltu         a3, t0, 639f
                  and          s7, t6, ra
                  ori          s0, a6, 1896
                  beq          s10, s4, 647f
                  and          t1, gp, a6
633:              sltu         s1, t4, a1
                  sltu         t6, t1, s5
635:              sltiu        a4, a0, -806
                  sltiu        t4, a7, -1011
637:              add          s5, sp, a4
                  sub          gp, s2, s3
639:              nop
                  sra          s10, s0, a7
641:              xori         t4, s7, -1615
                  sltiu        s2, s11, 582
                  srl          tp, s10, s7
                  srl          a0, t3, s9
                  blt          s1, s6, 661f
                  blt          s1, a6, 661f
647:              bne          s6, t6, 666f
                  xori         t5, a7, -351
                  blt          t4, s10, 655f
                  slt          s3, t6, s6
                  sub          s1, t1, a6
                  xor          s7, s3, s10
                  auipc        ra, 744301
                  lui          a7, 273996
655:              ori          a0, t2, 604
                  auipc        s7, 687095
                  lui          t3, 733690
                  sub          a7, s0, t2
                  addi         gp, ra, -500
                  sltiu        a0, t3, -525
661:              xori         zero, a1, -1447
                  xor          s5, s10, zero
                  sub          t6, s7, a7
                  sra          s10, s11, tp
                  auipc        s7, 655975
666:              add          zero, a0, zero
                  or           a1, s8, a0
                  sub          zero, t3, t5
                  bltu         s0, s4, 675f
                  bge          a2, s9, 686f
                  slli         t2, ra, 16
                  ori          a1, t3, -1699
                  bgeu         s1, t4, 686f
                  slli         a4, a7, 7
675:              xor          s10, s5, s3
                  and          tp, tp, s8
                  xori         s6, s10, 242
                  and          a3, gp, a5
                  slt          t5, a0, a0
                  slti         s6, t5, 639
                  blt          sp, t2, 697f
                  ori          a4, tp, 459
                  sltu         t6, s3, a0
                  or           t3, a1, t1
                  slli         zero, a3, 24
686:              slt          s1, a0, t2
                  slli         s4, a7, 30
                  bne          s8, a1, 699f
                  bgeu         s11, s5, 707f
                  xor          gp, gp, t6
                  srli         t3, s11, 9
                  bge          s4, s11, 695f
                  slli         gp, t6, 14
                  beq          s7, t0, 702f
695:              slti         a3, s7, 567
                  add          s9, a1, a1
697:              srai         s5, s4, 2
                  blt          t3, s0, 707f
699:              srai         a4, tp, 26
                  beq          t3, s1, 711f
                  add          tp, s8, tp
702:              bge          s1, s6, 719f
                  and          s6, s5, s8
                  slli         gp, t2, 26
                  srai         s3, s6, 29
                  nop
707:              sltu         t1, a5, s2
                  or           s6, s8, s4
                  lui          s7, 63783
                  sll          s11, t2, t4
711:              auipc        s9, 310509
                  add          tp, s6, t2
                  srai         zero, a1, 6
                  srl          t5, t5, s10
                  addi         s5, s7, 602
                  ori          s1, s7, 154
                  slt          a6, a4, s6
                  xori         tp, sp, 168
719:              addi         t3, s3, 1358
                  and          a7, s6, s1
                  slti         t6, zero, -385
                  sltiu        t6, a0, 1541
                  bltu         s6, a4, 736f
                  bltu         s3, s6, 742f
                  srl          t2, s3, s11
                  or           tp, t5, zero
                  bltu         a1, t3, 735f
                  bne          t5, s7, 737f
                  bltu         t0, a0, 743f
                  srai         s2, s9, 21
                  xor          gp, a0, t3
                  bltu         t1, t5, 737f
                  sltiu        s4, tp, 1568
                  lui          a1, 904562
735:              slt          s5, s1, s3
736:              sub          gp, gp, ra
737:              blt          tp, a5, 751f
                  lui          a2, 761008
                  srli         gp, t2, 21
                  srli         s1, tp, 10
                  srai         tp, s8, 27
742:              slli         s0, tp, 17
743:              bltu         s9, s3, 750f
                  nop
                  srai         zero, a4, 28
                  sll          a2, s0, t5
                  beq          a4, s5, 756f
                  srl          s4, s7, s2
                  bge          s4, a7, 753f
750:              add          s11, s0, a3
751:              xor          s1, a2, s2
                  slt          t5, t0, s8
753:              slt          ra, t1, s5
                  lui          s0, 682404
                  and          a7, a1, ra
756:              nop
                  blt          t0, t5, 760f
                  sub          t0, zero, tp
                  xori         s5, t4, -1334
760:              blt          tp, a3, 777f
                  xor          a3, a2, sp
                  addi         s10, t4, 364
                  lui          a6, 224575
                  sub          a6, tp, sp
                  sub          s9, s5, s8
                  sltu         tp, ra, a6
                  sra          a2, s3, a7
                  addi         a4, a7, 679
                  beq          s10, s1, 774f
                  sll          s5, s9, s7
                  slt          t1, t4, gp
                  ori          a4, s2, 1030
                  srl          t1, s8, s10
774:              beq          s10, s4, 782f
                  slt          gp, t4, a1
                  addi         a4, a2, 877
777:              srl          s7, s0, s4
                  bge          t5, s3, 798f
                  slt          t3, a1, s5
                  slli         gp, s1, 1
                  sltu         t0, zero, s10
782:              ori          s2, s11, -105
                  srai         s5, s8, 9
                  srli         s10, t1, 6
                  auipc        a3, 752373
                  blt          t6, s1, 794f
                  slt          s2, t6, s7
                  bltu         t6, t2, 801f
                  ori          a2, s9, 237
                  addi         zero, a0, -958
                  nop
                  sra          s1, t6, sp
                  nop
794:              srli         s5, ra, 23
                  sltiu        s9, t0, -646
                  sub          t4, zero, a7
                  auipc        s5, 232127
798:              slt          s3, a4, sp
                  slti         a7, a1, -722
                  sltu         zero, s7, tp
801:              ori          a6, s11, -576
                  blt          s11, gp, 805f
                  sra          a3, sp, zero
                  bgeu         gp, t0, 808f
805:              andi         s11, a7, -558
                  srai         a2, tp, 11
                  srl          a6, s1, ra
808:              bne          s4, a2, 819f
                  sltiu        t5, s10, 924
                  bgeu         t2, s11, 826f
                  or           a2, a7, a7
                  xori         s7, s11, 1295
                  xori         a2, a1, 1509
                  srli         a0, zero, 11
                  add          a7, tp, t0
                  bgeu         t1, a0, 823f
                  slt          a0, t6, a2
                  bltu         a5, s9, 826f
819:              sltiu        s5, s8, -1967
                  slti         a6, a3, -1349
                  bltu         t5, a7, 830f
                  or           t2, a5, s10
823:              or           s2, a5, tp
                  bgeu         a6, t4, 844f
                  xori         s7, zero, 143
826:              slt          s4, s5, s8
                  or           s7, s0, sp
                  srl          s0, s7, a6
                  bltu         s7, a3, 840f
830:              xor          s10, zero, s2
                  andi         s7, s8, -1220
                  sll          a3, s6, tp
                  xori         s11, ra, -866
                  blt          t1, s11, 847f
                  slti         t4, a1, -1640
                  lui          s1, 1031196
                  slli         a1, t0, 6
                  xori         s10, s3, -241
                  or           s5, s2, a5
840:              andi         t5, sp, -1627
                  xori         s4, a5, 461
                  sltiu        t2, zero, 132
                  sll          s1, s3, t6
844:              sll          a2, s8, zero
                  sll          a0, a0, zero
                  auipc        a0, 281208
847:              slt          t5, t0, t0
                  lui          a4, 7883
                  sltiu        a7, s5, -1191
                  sltiu        t4, gp, -254
                  blt          s8, ra, 859f
                  bne          a4, t0, 858f
                  sltu         s7, s6, s5
                  srai         a7, s11, 16
                  slti         a2, a7, -2023
                  slli         t1, a4, 8
                  and          tp, s6, t5
858:              add          s11, zero, t6
859:              srai         t6, zero, 4
                  slt          s6, a6, a2
                  sub          t6, t3, t4
                  slti         t1, a3, 704
                  auipc        t1, 545774
                  lui          s7, 962226
                  sra          gp, s11, gp
                  nop
                  sltiu        a1, a4, -1982
                  add          s1, tp, s7
                  xor          t6, a1, a1
                  ori          a2, s8, -426
                  bltu         s2, s11, 888f
                  sub          a7, t5, s5
                  add          s9, a0, s4
                  beq          s8, t2, 889f
                  bge          s11, s5, 884f
                  slli         s1, tp, 24
                  bgeu         a2, a3, 880f
                  bltu         t2, sp, 896f
                  auipc        s9, 268354
880:              srai         t2, s9, 13
                  srl          a4, s4, s5
                  addi         a0, a3, -951
                  ori          ra, t1, -1669
884:              srai         gp, sp, 22
                  slti         s6, s0, 766
                  bne          a6, a4, 891f
                  srl          t4, a3, tp
888:              sltiu        a2, s2, -1036
889:              srli         s4, s6, 12
                  srl          s9, t1, s1
891:              sra          s11, s10, t2
                  srli         t6, t4, 22
                  bne          s1, a3, 911f
                  sltu         a4, s6, s10
                  xori         a0, s6, 708
896:              sltiu        s7, a4, -1181
                  sub          t2, a6, tp
                  bne          s7, a6, 917f
                  sll          s4, t4, s11
                  beq          t5, s10, 916f
                  sltu         gp, gp, t2
                  bltu         s4, ra, 908f
                  bgeu         s11, t5, 917f
                  xor          s2, s2, s10
                  nop
                  sltiu        s1, s7, -1050
                  srli         s4, t1, 16
908:              sll          t5, tp, t6
                  ori          s0, s9, -531
                  sltiu        t0, t1, 1040
911:              slli         s1, a1, 28
                  srl          t1, s3, t5
                  or           a6, s5, s3
                  srli         s6, a7, 22
                  xori         s9, s2, -656
916:              add          s11, a5, gp
917:              bgeu         s8, s7, 931f
                  ori          t5, s11, 1300
                  add          zero, s5, s2
                  bgeu         s11, t5, 937f
                  ori          a1, s0, 809
                  addi         t1, t0, 310
                  slti         s9, t6, -242
                  sub          s1, tp, a0
                  slli         a3, s9, 19
                  bgeu         a3, s7, 940f
                  srli         a4, t4, 14
                  beq          a0, s10, 933f
                  nop
                  or           a7, a0, s5
931:              srli         a7, a6, 19
                  slti         zero, s0, -548
933:              nop
                  slti         ra, s1, -1937
                  slt          zero, a7, ra
                  and          t1, a2, a2
937:              and          a2, ra, s10
                  slli         t1, t1, 10
                  xori         a7, a4, 2025
940:              auipc        zero, 601161
                  and          s10, s0, s5
                  and          a3, s11, s1
                  lw           s1, 4(a5)
                  sra          t0, a7, a3
                  addi         a5, a5, 8
                  andi         s6, sp, -1839
                  srli         a4, a3, 20
                  lui          a1, 182055
1312:             addi x14, x9, 1
1312:             jalr x14, x14, 0
sub_1:            srl          s10, s11, s0
                  addi         s10, gp, 1298
                  addi         a7, t2, -624
                  srl          t1, s0, tp
                  addi         a5, a5, -16
                  lui          s6, 120018
                  lui          t6, 321108
                  xori         gp, s10, -172
                  sw           s1, 4(a5)
                  sll          t3, a7, s3
                  slti         a1, s9, 1727
                  slt          a6, a3, s0
                  sub          s3, t6, s10
                  la           t0, sub_2
                  sll          a7, a6, tp
                  slti         tp, a0, 1429
                  addi         t0, t0, 808
                  auipc        zero, 817741
                  xor          s5, t4, sp
                  srli         s3, t3, 25
                  and          gp, s9, a4
                  add          a0, tp, s5
sub_1_j2:         jalr         s1, t0, -807 #jump sub_1 -> sub_2
                  add          s3, s1, t2
                  sra          tp, s2, s6
                  la           s10, sub_2
                  auipc        a4, 213821
                  and          s2, s6, zero
                  srl          a0, a6, t6
                  lui          s3, 951065
                  addi         s10, s10, 767
                  slli         s7, t1, 24
                  srai         a6, t4, 29
                  sra          t0, s6, t6
                  lui          s11, 726217
sub_1_j3:         jalr         s1, s10, -766 #jump sub_1 -> sub_2
                  bltu         s6, t1, 19f
                  blt          t3, t5, 18f
                  add          t6, t2, tp
                  beq          a4, a1, 7f
                  nop
                  srai         s0, s6, 20
                  bgeu         s6, tp, 15f
7:                bge          s8, s10, 23f
                  bgeu         t4, s11, 15f
                  sltu         s1, t5, a2
                  auipc        a6, 998462
                  ori          t5, ra, -1127
                  sltu         tp, s7, s5
                  beq          s6, s5, 22f
                  xori         s0, s1, 1389
15:               sltiu        t0, t1, -286
                  auipc        t4, 683886
                  srl          tp, t1, t5
18:               slti         a2, a0, 1728
19:               slli         a6, ra, 3
                  andi         t4, a4, -699
                  sltiu        s2, a6, 1039
22:               slti         s9, s9, -169
23:               andi         t2, t6, 217
                  bne          s3, a5, 28f
                  srai         a2, s7, 16
                  srai         t2, s1, 24
                  beq          s7, s9, 28f
28:               slti         t0, t6, -1557
                  srl          t3, tp, s0
                  xori         s2, tp, -1602
                  add          s10, zero, s5
                  xor          a4, a2, s11
                  lw           s1, 4(a5)
                  addi         a5, a5, 16
                  nop
                  xor          t1, sp, a2
                  srai         s11, zero, 25
74:               addi x23, x9, 0
74:               jalr x23, x23, 0
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
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x24, x15, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_2:
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x24, x15, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_3:
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x24, x15, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_4:
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x24, x15, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_5:
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x24, x15, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_6:
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x24, x15, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_7:
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x24, x15, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_8:
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x24, x15, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_9:
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x24, x15, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_10:
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x24, x15, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_11:
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x24, x15, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_12:
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x24, x15, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_13:
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x24, x15, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_14:
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x24, x15, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

mmode_intr_vector_15:
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x24, x15, zero
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 0x1f
                  beqz x23, 1f
                  j mmode_intr_handler
                  1: la x2, test_done
                  jalr x0, x2, 0

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
                  addi x15, x15, -128
                  sw  x1, 4(x15)
                  sw  x2, 8(x15)
                  sw  x3, 12(x15)
                  sw  x4, 16(x15)
                  sw  x5, 20(x15)
                  sw  x6, 24(x15)
                  sw  x7, 28(x15)
                  sw  x8, 32(x15)
                  sw  x9, 36(x15)
                  sw  x10, 40(x15)
                  sw  x11, 44(x15)
                  sw  x12, 48(x15)
                  sw  x13, 52(x15)
                  sw  x14, 56(x15)
                  sw  x15, 60(x15)
                  sw  x16, 64(x15)
                  sw  x17, 68(x15)
                  sw  x18, 72(x15)
                  sw  x19, 76(x15)
                  sw  x20, 80(x15)
                  sw  x21, 84(x15)
                  sw  x22, 88(x15)
                  sw  x23, 92(x15)
                  sw  x24, 96(x15)
                  sw  x25, 100(x15)
                  sw  x26, 104(x15)
                  sw  x27, 108(x15)
                  sw  x28, 112(x15)
                  sw  x29, 116(x15)
                  sw  x30, 120(x15)
                  sw  x31, 124(x15)
                  add x24, x15, zero
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
                  1: la x2, test_done
                  jalr x1, x2, 0

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
                  la x2, write_tohost
                  jalr x0, x2, 0

instr_fault_handler:
                  add x15, x24, zero
                  lw  x1, 4(x15)
                  lw  x2, 8(x15)
                  lw  x3, 12(x15)
                  lw  x4, 16(x15)
                  lw  x5, 20(x15)
                  lw  x6, 24(x15)
                  lw  x7, 28(x15)
                  lw  x8, 32(x15)
                  lw  x9, 36(x15)
                  lw  x10, 40(x15)
                  lw  x11, 44(x15)
                  lw  x12, 48(x15)
                  lw  x13, 52(x15)
                  lw  x14, 56(x15)
                  lw  x15, 60(x15)
                  lw  x16, 64(x15)
                  lw  x17, 68(x15)
                  lw  x18, 72(x15)
                  lw  x19, 76(x15)
                  lw  x20, 80(x15)
                  lw  x21, 84(x15)
                  lw  x22, 88(x15)
                  lw  x23, 92(x15)
                  lw  x24, 96(x15)
                  lw  x25, 100(x15)
                  lw  x26, 104(x15)
                  lw  x27, 108(x15)
                  lw  x28, 112(x15)
                  lw  x29, 116(x15)
                  lw  x30, 120(x15)
                  lw  x31, 124(x15)
                  addi x15, x15, 128
                  mret

load_fault_handler:
                  add x15, x24, zero
                  lw  x1, 4(x15)
                  lw  x2, 8(x15)
                  lw  x3, 12(x15)
                  lw  x4, 16(x15)
                  lw  x5, 20(x15)
                  lw  x6, 24(x15)
                  lw  x7, 28(x15)
                  lw  x8, 32(x15)
                  lw  x9, 36(x15)
                  lw  x10, 40(x15)
                  lw  x11, 44(x15)
                  lw  x12, 48(x15)
                  lw  x13, 52(x15)
                  lw  x14, 56(x15)
                  lw  x15, 60(x15)
                  lw  x16, 64(x15)
                  lw  x17, 68(x15)
                  lw  x18, 72(x15)
                  lw  x19, 76(x15)
                  lw  x20, 80(x15)
                  lw  x21, 84(x15)
                  lw  x22, 88(x15)
                  lw  x23, 92(x15)
                  lw  x24, 96(x15)
                  lw  x25, 100(x15)
                  lw  x26, 104(x15)
                  lw  x27, 108(x15)
                  lw  x28, 112(x15)
                  lw  x29, 116(x15)
                  lw  x30, 120(x15)
                  lw  x31, 124(x15)
                  addi x15, x15, 128
                  mret

store_fault_handler:
                  add x15, x24, zero
                  lw  x1, 4(x15)
                  lw  x2, 8(x15)
                  lw  x3, 12(x15)
                  lw  x4, 16(x15)
                  lw  x5, 20(x15)
                  lw  x6, 24(x15)
                  lw  x7, 28(x15)
                  lw  x8, 32(x15)
                  lw  x9, 36(x15)
                  lw  x10, 40(x15)
                  lw  x11, 44(x15)
                  lw  x12, 48(x15)
                  lw  x13, 52(x15)
                  lw  x14, 56(x15)
                  lw  x15, 60(x15)
                  lw  x16, 64(x15)
                  lw  x17, 68(x15)
                  lw  x18, 72(x15)
                  lw  x19, 76(x15)
                  lw  x20, 80(x15)
                  lw  x21, 84(x15)
                  lw  x22, 88(x15)
                  lw  x23, 92(x15)
                  lw  x24, 96(x15)
                  lw  x25, 100(x15)
                  lw  x26, 104(x15)
                  lw  x27, 108(x15)
                  lw  x28, 112(x15)
                  lw  x29, 116(x15)
                  lw  x30, 120(x15)
                  lw  x31, 124(x15)
                  addi x15, x15, 128
                  mret

ebreak_handler:   
                  csrr  x23, 0x341
                  addi  x23, x23, 4
                  csrw  0x341, x23
                  add x15, x24, zero
                  lw  x1, 4(x15)
                  lw  x2, 8(x15)
                  lw  x3, 12(x15)
                  lw  x4, 16(x15)
                  lw  x5, 20(x15)
                  lw  x6, 24(x15)
                  lw  x7, 28(x15)
                  lw  x8, 32(x15)
                  lw  x9, 36(x15)
                  lw  x10, 40(x15)
                  lw  x11, 44(x15)
                  lw  x12, 48(x15)
                  lw  x13, 52(x15)
                  lw  x14, 56(x15)
                  lw  x15, 60(x15)
                  lw  x16, 64(x15)
                  lw  x17, 68(x15)
                  lw  x18, 72(x15)
                  lw  x19, 76(x15)
                  lw  x20, 80(x15)
                  lw  x21, 84(x15)
                  lw  x22, 88(x15)
                  lw  x23, 92(x15)
                  lw  x24, 96(x15)
                  lw  x25, 100(x15)
                  lw  x26, 104(x15)
                  lw  x27, 108(x15)
                  lw  x28, 112(x15)
                  lw  x29, 116(x15)
                  lw  x30, 120(x15)
                  lw  x31, 124(x15)
                  addi x15, x15, 128
                  mret

illegal_instr_handler:
                  csrr  x23, 0x341
                  addi  x23, x23, 4
                  csrw  0x341, x23
                  add x15, x24, zero
                  lw  x1, 4(x15)
                  lw  x2, 8(x15)
                  lw  x3, 12(x15)
                  lw  x4, 16(x15)
                  lw  x5, 20(x15)
                  lw  x6, 24(x15)
                  lw  x7, 28(x15)
                  lw  x8, 32(x15)
                  lw  x9, 36(x15)
                  lw  x10, 40(x15)
                  lw  x11, 44(x15)
                  lw  x12, 48(x15)
                  lw  x13, 52(x15)
                  lw  x14, 56(x15)
                  lw  x15, 60(x15)
                  lw  x16, 64(x15)
                  lw  x17, 68(x15)
                  lw  x18, 72(x15)
                  lw  x19, 76(x15)
                  lw  x20, 80(x15)
                  lw  x21, 84(x15)
                  lw  x22, 88(x15)
                  lw  x23, 92(x15)
                  lw  x24, 96(x15)
                  lw  x25, 100(x15)
                  lw  x26, 104(x15)
                  lw  x27, 108(x15)
                  lw  x28, 112(x15)
                  lw  x29, 116(x15)
                  lw  x30, 120(x15)
                  lw  x31, 124(x15)
                  addi x15, x15, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x23, 0x300 # MSTATUS;
                  csrr  x23, 0x304 # MIE;
                  csrr  x23, 0x344 # MIP;
                  csrrc x23, 0x344, x23 # MIP;
                  add x15, x24, zero
                  lw  x1, 4(x15)
                  lw  x2, 8(x15)
                  lw  x3, 12(x15)
                  lw  x4, 16(x15)
                  lw  x5, 20(x15)
                  lw  x6, 24(x15)
                  lw  x7, 28(x15)
                  lw  x8, 32(x15)
                  lw  x9, 36(x15)
                  lw  x10, 40(x15)
                  lw  x11, 44(x15)
                  lw  x12, 48(x15)
                  lw  x13, 52(x15)
                  lw  x14, 56(x15)
                  lw  x15, 60(x15)
                  lw  x16, 64(x15)
                  lw  x17, 68(x15)
                  lw  x18, 72(x15)
                  lw  x19, 76(x15)
                  lw  x20, 80(x15)
                  lw  x21, 84(x15)
                  lw  x22, 88(x15)
                  lw  x23, 92(x15)
                  lw  x24, 96(x15)
                  lw  x25, 100(x15)
                  lw  x26, 104(x15)
                  lw  x27, 108(x15)
                  lw  x28, 112(x15)
                  lw  x29, 116(x15)
                  lw  x30, 120(x15)
                  lw  x31, 124(x15)
                  addi x15, x15, 128
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
