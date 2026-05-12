.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x16, h0_start
jalr x0, x16, 0
h0_start:
                  li x20, 0x40000100
                  csrw 0x301, x20
kernel_sp:        
                  la x30, kernel_stack_end

trap_vec_init:    
                  la x20, mtvec_handler
                  ori x20, x20, 0
                  csrw 0x305, x20 # MTVEC

mepc_setup:       
                  la x20, init
                  csrw 0x341, x20

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x20, 0x1800
                  csrw 0x300, x20 # MSTATUS
                  mret
init:             
                  li x0, 0xeaf4b45d
                  li x1, 0xfc63ce06
                  li x2, 0x80000000
                  li x3, 0x4
                  li x4, 0xfb6dd837
                  li x5, 0xf05804aa
                  li x6, 0x4
                  li x7, 0xf0eb23b8
                  li x9, 0xf8d25034
                  li x10, 0x0
                  li x11, 0x296d8d98
                  li x12, 0xca21aa42
                  li x13, 0xf291c5fb
                  li x14, 0xfdeb2eb3
                  li x15, 0xf0d58801
                  li x16, 0x4
                  li x17, 0xa
                  li x18, 0xb
                  li x19, 0x80000000
                  li x20, 0x80000000
                  li x21, 0x80000000
                  li x22, 0x0
                  li x23, 0x80000000
                  li x24, 0x80000000
                  li x25, 0xfc73a35d
                  li x26, 0x68382d37
                  li x27, 0x0
                  li x28, 0xf44a8d81
                  li x29, 0x80000000
                  li x31, 0x80000000
                  la x8, user_stack_end
main:             la           s7, region_0+1454 #start riscv_load_store_rand_instr_stream_0
                  lbu          gp, -15(s7)
                  xor          a7, t2, s0
                  sb           a0, 15(s7)
                  sb           sp, 3(s7)
                  srai         t2, a7, 18
                  srai         gp, s10, 3
                  slti         s3, a0, 1785
                  sb           a2, 5(s7)
                  sll          a3, a4, a6
                  and          t3, a5, t4
                  sub          t4, s7, ra
                  slti         s9, a4, 682
                  sb           s0, 11(s7)
                  srai         s2, a4, 30
                  sh           sp, 10(s7)
                  auipc        s8, 325476
                  sltu         a0, s2, a4
                  slli         gp, t0, 27
                  sll          zero, s10, a0
                  lbu          t4, 3(s7)
                  andi         t2, s9, 1028
                  and          t1, t3, a5
                  lb           s2, -9(s7)
                  and          s4, s9, s6
                  lw           t0, 6(s7)
                  lb           t1, 9(s7)
                  and          a4, zero, s11
                  nop
                  auipc        ra, 379233
                  lb           a7, -3(s7)
                  lbu          a0, 16(s7)
                  lbu          s10, 4(s7)
                  auipc        a1, 551861
                  lbu          s5, 15(s7)
                  sb           t5, -7(s7)
                  lw           t4, 10(s7)
                  srai         a3, s3, 19
                  lhu          a2, -12(s7)
                  lh           a0, 0(s7)
                  sb           sp, -8(s7)
                  nop
                  nop
                  ori          tp, s8, -240
                  lui          tp, 886961
                  or           s2, s7, a2
                  sltu         a7, t2, t1
                  lhu          t0, -16(s7)
                  lbu          tp, 13(s7)
                  lbu          s9, 0(s7) #end riscv_load_store_rand_instr_stream_0
                  la           s5, region_1+681 #start riscv_load_store_rand_instr_stream_1
                  srli         s3, gp, 27
                  lh           a2, 43(s5)
                  slti         t0, gp, -80
                  sh           t2, -57(s5)
                  slti         s9, a4, -161
                  lb           a1, 38(s5)
                  lbu          ra, -60(s5)
                  sh           tp, -5(s5)
                  sub          t6, s2, s9
                  lw           s3, 59(s5)
                  sh           sp, -57(s5)
                  lb           t1, -46(s5)
                  slli         t3, s11, 14
                  lb           s1, 58(s5)
                  xor          a2, sp, t4
                  lbu          t3, -8(s5)
                  sb           t2, 48(s5)
                  sb           s4, -54(s5)
                  sh           a7, 35(s5)
                  or           t3, s3, s5
                  sh           s10, -43(s5)
                  lb           a7, -32(s5)
                  lbu          t0, -44(s5)
                  sb           t3, 20(s5)
                  lb           s8, -12(s5)
                  or           t1, a5, t6
                  lb           a5, -35(s5)
                  sb           s1, -54(s5)
                  srl          sp, s9, t1
                  addi         s10, a7, -694
                  and          ra, zero, zero
                  lb           a1, -54(s5)
                  sb           s5, -58(s5)
                  slti         s6, zero, -239
                  sh           a5, -39(s5)
                  lb           s11, -64(s5)
                  sltu         a5, s6, ra
                  sb           a4, -34(s5)
                  lhu          t0, -55(s5) #end riscv_load_store_rand_instr_stream_1
                  add          s7, s1, t2
                  slt          a0, s11, tp
                  srl          a1, a3, tp
                  andi         s1, a6, -879
                  slt          sp, a3, a1
                  bne          s11, ra, 14f
                  slli         s10, a7, 19
                  addi         a7, t4, -394
                  slli         gp, s8, 14
                  sltu         s5, t3, tp
                  xor          a5, a5, t3
                  blt          s1, ra, 23f
                  slli         s11, a0, 23
                  sltu         ra, tp, s3
14:               bne          t6, a5, 22f
                  srl          s10, s7, a5
                  bltu         s4, sp, 27f
                  addi         s4, s5, 542
                  bltu         a2, t1, 37f
                  xor          t1, a4, a6
                  sltu         sp, t4, ra
                  bgeu         s5, sp, 31f
22:               addi         t3, a4, -1268
23:               sra          a3, t4, s0
                  nop
                  ori          a0, s9, 663
                  or           a1, a3, a6
27:               ori          s7, t2, 1319
                  bne          t4, s6, 38f
                  srl          tp, s9, s5
                  xor          a3, zero, t0
31:               slli         tp, gp, 5
                  sltu         zero, gp, sp
                  and          t4, a5, t6
                  slli         t4, a2, 0
                  srl          ra, s4, a3
                  add          s11, s2, s1
37:               addi         t1, t3, 1810
38:               sll          t6, s1, tp
                  nop
                  sltiu        s8, s8, -830
                  bltu         a7, t4, 56f
                  blt          a0, a7, 52f
                  sltiu        t2, a4, -1340
                  sub          s7, a0, t4
                  xori         t2, s0, -1360
                  slli         t1, tp, 19
                  la           a5, sub_2
                  sltiu        s7, a1, -1844
                  nop
                  slt          s2, s9, a2
                  add          tp, a0, a3
                  addi         a5, a5, 704
                  blt          s4, t2, main_j2 #branch to jump instr
                  ori          ra, s11, -528
                  srl          a7, sp, ra
main_j2:          jalr         t4, a5, -704 #jump main -> sub_2
                  sll          zero, t3, s5
                  beq          s2, s10, 56f
                  ori          s7, t4, 893
                  xor          s11, s6, zero
                  slti         s5, t2, 1811
                  sltiu        t0, t5, 198
52:               addi         a4, a6, 1435
                  slt          a2, s7, t4
                  beq          s2, a6, 73f
                  slli         s4, a3, 9
56:               bgeu         s0, s8, 59f
                  ori          s3, a4, 1996
                  or           t0, s6, a4
59:               and          s8, ra, s7
                  slti         a3, a1, -175
                  slti         s5, a0, -1407
                  sltu         s1, zero, s10
                  sll          a5, a7, t4
                  srai         s1, s1, 22
                  beq          sp, s4, 69f
                  bge          a3, t2, 83f
                  sub          a5, s2, a1
                  addi         sp, a1, 1238
69:               srai         s1, t1, 28
                  sll          sp, s11, t3
                  bge          t3, tp, 72f
72:               and          a2, s5, a7
73:               or           s10, s3, zero
                  blt          s3, a5, 84f
                  addi         t6, s10, 2030
                  bgeu         s3, s0, 87f
                  auipc        ra, 769918
                  addi         s6, t4, 13
                  srli         s9, t6, 16
                  addi         s11, s8, 981
                  and          a4, a7, s7
                  sra          a4, a6, s7
83:               bgeu         s6, a0, 103f
84:               bne          t0, s9, 88f
                  beq          t6, s7, 103f
                  sltiu        t0, gp, -141
87:               blt          t1, a1, 89f
88:               slti         a4, s4, -19
89:               addi         ra, a6, -71
                  bgeu         a5, a1, 101f
                  sltu         s4, s8, tp
                  bne          s2, t2, 106f
                  sltu         a1, a6, t4
                  xori         zero, a1, 1794
                  srai         a3, s11, 31
                  andi         s1, s5, -359
                  addi         t3, gp, 1671
                  xori         a2, s5, -461
                  srai         s4, s1, 27
                  blt          s10, a5, 110f
101:              bne          t3, a0, 117f
                  lui          t0, 324335
103:              bltu         s7, gp, 112f
                  bltu         t0, t1, 109f
                  sltu         gp, t6, gp
106:              srai         a1, a3, 7
                  auipc        a4, 745212
                  xori         s1, s9, 607
109:              blt          s11, t5, 121f
110:              auipc        s1, 665662
                  or           a2, s6, gp
112:              slli         s3, s7, 30
                  lui          s9, 418974
                  nop
                  slt          t6, s3, s9
                  nop
117:              add          a2, a5, s2
                  xori         s3, s2, 303
                  addi         t4, tp, -1684
                  srl          a4, s11, ra
121:              ori          tp, s7, -102
                  andi         tp, s11, -1385
                  bltu         s4, t2, 133f
                  andi         s3, s8, 389
                  sra          t0, s11, ra
                  xor          t2, t2, t2
                  xor          s7, s9, a1
                  slt          s1, zero, s3
                  slt          gp, t5, s8
                  sltu         s3, t4, s8
                  bltu         sp, s4, 143f
                  srai         zero, s7, 20
133:              slli         t6, a0, 14
                  andi         s3, zero, -895
                  beq          ra, s9, 146f
                  sub          t6, t0, t3
                  sltiu        a1, t6, -1676
                  xori         sp, s6, 1745
                  sltu         a5, t4, s8
                  lui          s10, 875169
                  sub          a0, s6, tp
                  ori          s8, s2, -1857
143:              lui          a2, 852723
                  bgeu         sp, a3, 159f
                  xori         a0, s4, -1590
146:              slli         s6, gp, 9
                  sltu         a3, s11, s9
                  auipc        a7, 804254
                  bgeu         a2, t5, 166f
                  bltu         a1, s6, 158f
                  ori          s5, t0, -242
                  bne          gp, t4, 164f
                  srl          a3, t1, zero
                  srli         a0, s8, 13
                  lui          s1, 28678
                  bge          t2, t4, 166f
                  sltiu        a3, t6, 1064
158:              blt          gp, a3, 168f
159:              add          tp, s10, t5
                  srai         s2, s4, 10
                  ori          s11, t1, -1899
                  add          s3, s7, a5
                  nop
164:              sll          s8, t6, s10
                  beq          a0, zero, 169f
166:              slti         a1, tp, 1311
                  srli         t4, a3, 26
168:              xori         t4, tp, -537
169:              slt          s10, t3, ra
                  srl          t2, a3, a0
                  ori          s4, t0, 701
                  andi         s8, gp, 518
                  slti         s8, t3, 799
                  beq          t0, t0, 176f
                  sll          t1, ra, s8
176:              nop
                  sra          a3, t6, tp
                  sub          t6, s1, s4
                  auipc        s3, 349722
                  sra          s9, s6, ra
                  srl          s4, a3, a6
                  add          t3, t0, t0
                  srl          a0, t6, s11
                  or           sp, a2, a3
                  srli         t6, s5, 31
                  auipc        a4, 478002
                  add          s9, t3, ra
                  andi         s7, s1, 1365
                  addi         s9, t4, 1833
                  sll          s9, a0, tp
                  addi         s10, t6, 1863
                  bgeu         s1, a0, 212f
                  andi         t3, a5, 623
                  andi         t6, t4, 135
                  ori          a3, a1, -1641
                  sub          zero, a6, s0
                  slt          a2, s6, s2
                  ori          a4, s6, 1137
                  lui          a1, 880971
                  andi         sp, sp, -2019
                  lui          t6, 7795
                  addi         a0, a3, 821
                  bne          t4, t1, 221f
                  nop
                  addi         a2, a3, 1332
                  sra          t3, s5, tp
                  add          t1, t5, t6
                  sltu         t0, s8, t4
                  slt          t6, a5, t5
                  bgeu         t1, a2, 213f
                  sll          s9, tp, tp
212:              bgeu         zero, zero, 222f
213:              sra          s9, a3, a3
                  srai         t6, ra, 14
                  addi         t2, s11, -1514
                  auipc        gp, 509540
                  sltu         s4, t1, gp
                  bne          a2, t5, 228f
                  lui          s4, 1012149
                  add          s6, ra, s5
221:              srai         s10, s5, 28
222:              bgeu         s11, gp, 231f
                  slt          t4, t4, a4
                  srai         t0, sp, 15
                  sltiu        a4, a1, 1382
                  andi         gp, s10, 1464
                  slt          tp, s10, t2
228:              sll          a0, s2, s3
                  bge          zero, a4, 239f
                  blt          s4, a5, 241f
231:              slli         s11, a6, 0
                  sltu         tp, a3, s10
                  auipc        s9, 318171
                  lui          tp, 831649
                  bge          a7, a2, 251f
                  slt          a4, s11, s5
                  bgeu         a4, a6, 248f
                  srai         s7, s9, 6
239:              sltu         a3, a5, t5
                  andi         a3, s0, -1256
241:              bne          s1, a5, 253f
                  srli         s4, s11, 6
                  add          t0, s10, t1
                  slt          s1, a7, s2
                  sltiu        s8, a4, 323
                  xor          t4, s10, t3
                  or           s6, t0, s2
248:              nop
                  srai         t0, s10, 22
                  or           t0, a6, a1
251:              or           a7, s0, tp
                  sltu         a1, s9, a5
253:              slti         a1, t3, 562
                  bne          t1, a2, 255f
255:              add          a1, a2, a6
                  slli         a2, a0, 11
                  sltu         t1, ra, tp
                  sltu         s7, a7, t6
                  sll          sp, s2, a5
                  lui          a4, 381471
                  addi         s5, a4, 1057
                  srai         s11, a2, 15
                  and          s5, a6, a4
                  slt          s1, a7, s6
                  srli         gp, s5, 31
                  sltiu        tp, t3, -722
                  bge          a1, t0, 276f
                  slti         t0, a1, -448
                  bne          s9, a6, 282f
                  and          gp, s9, t1
                  la           s8, sub_1
                  addi         s7, t2, 1647
                  addi         s8, s8, -731
                  addi         s4, t1, -1577
                  sra          s11, zero, t4
                  lui          s6, 281244
                  add          s6, t6, t2
                  ori          t6, tp, -1829
main_j1:          jalr         t4, s8, 731 #jump main -> sub_1
                  andi         zero, t0, 1053
                  sra          s6, s2, s4
                  lui          gp, 361139
                  add          t0, s10, s5
                  bgeu         s11, t3, 282f
276:              auipc        s9, 1009155
                  sltiu        a1, a4, 962
                  lui          s8, 597633
                  addi         s3, s8, -880
                  slt          a0, a3, a1
                  and          s6, a0, a3
282:              or           s3, a6, t4
                  la x16, test_done
                  jalr x0, x16, 0
test_done:        
                  li gp, 1
                  ecall
sub_10:           bltu         t0, sp, sub_10_stack_p
sub_10_stack_p:   addi         s0, s0, -52
                  sw           t4, 4(s0)
                  andi         gp, t4, 1428
                  srai         s7, t4, 29
                  or           sp, s7, s10
                  la           s4, region_1+1377 #start riscv_load_store_rand_instr_stream_0
                  nop
                  sll          t1, ra, ra
                  srli         s2, a2, 24
                  lw           t2, -13(s4)
                  sra          s5, t3, a6
                  xor          s11, t6, a5
                  lb           s8, 2(s4)
                  lb           s7, 12(s4)
                  sb           s10, 0(s4)
                  auipc        a1, 741319
                  and          t0, s9, s3
                  lbu          s11, 2(s4)
                  lbu          gp, -4(s4)
                  andi         zero, s3, -1354
                  lbu          a0, 8(s4)
                  sh           s10, 1(s4)
                  xor          s7, sp, t5
                  xor          a7, sp, a2
                  sb           s2, 12(s4)
                  sra          ra, zero, s1
                  sb           a2, 9(s4)
                  sb           s5, 2(s4)
                  lhu          a0, -7(s4)
                  lh           s2, 3(s4)
                  sh           a2, -1(s4)
                  sb           a5, -16(s4)
                  lb           gp, 10(s4)
                  lb           t2, -12(s4)
                  lb           a2, 8(s4)
                  sltu         a3, t5, t1
                  lb           a1, 10(s4) #end riscv_load_store_rand_instr_stream_0
                  la           s7, region_1+507 #start riscv_load_store_rand_instr_stream_1
                  lw           sp, -11(s7)
                  sb           t6, -2(s7)
                  lb           a7, 10(s7)
                  or           s4, s4, s6
                  lb           s11, 6(s7)
                  sll          a1, s8, s0
                  ori          ra, zero, 161
                  xori         a4, a2, 417
                  lb           a4, 8(s7)
                  or           t3, t6, ra
                  sb           zero, 16(s7)
                  and          ra, s0, t4
                  sb           s11, 2(s7)
                  lbu          gp, 2(s7)
                  sb           t5, 2(s7)
                  srl          a4, a4, s4
                  lbu          s1, -6(s7)
                  lb           s6, 15(s7)
                  sra          s8, gp, t2
                  lbu          a7, 12(s7)
                  add          a3, s11, s2
                  lb           s9, -6(s7)
                  sll          sp, t0, sp
                  sub          a2, t5, gp
                  xor          s6, t6, ra
                  auipc        a7, 562275
                  sub          gp, s2, t4
                  slti         sp, s10, -1551
                  sub          s4, s2, s2
                  lb           s2, -10(s7)
                  sw           t2, 1(s7)
                  sb           t6, 14(s7)
                  sh           s8, -13(s7)
                  lb           t0, -7(s7)
                  add          s8, sp, s4
                  or           t3, s5, t0
                  lbu          s3, 3(s7)
                  lb           s1, 8(s7)
                  sll          s9, s0, s5
                  lw           s4, -7(s7)
                  xori         t6, t4, -780
                  lb           t4, 7(s7)
                  lbu          t2, 6(s7)
                  sh           s8, 13(s7)
                  sb           s4, -2(s7)
                  sb           a3, 7(s7)
                  sb           t6, -2(s7)
                  sb           t5, 6(s7) #end riscv_load_store_rand_instr_stream_1
                  xor          t2, t0, t2
                  srai         s9, s6, 13
                  bge          tp, t0, 3f
3:                bne          s10, s8, 22f
                  srli         s11, a7, 8
                  blt          a6, s6, 15f
                  srl          t0, a2, s4
                  lui          t2, 777678
                  slli         a1, a1, 28
                  lui          s1, 68809
                  add          gp, t5, s3
                  bgeu         s7, s10, 13f
                  bltu         a7, a6, 13f
13:               bge          s0, s5, 31f
                  bne          s11, s0, 34f
15:               sub          s10, s2, s7
                  nop
                  sltu         s5, s5, gp
                  blt          a7, s7, 35f
                  auipc        a2, 390429
                  beq          t2, s8, 38f
                  xori         ra, gp, -563
22:               srai         t4, s7, 5
                  sll          s7, t0, s10
                  bne          t2, s1, 39f
                  srl          s8, t1, zero
                  srai         a0, s11, 14
                  xor          s8, t3, s5
                  srl          s4, t3, sp
                  srai         ra, t2, 29
                  xori         sp, a0, -1045
31:               ori          s7, a0, -234
                  lui          s3, 21287
                  add          s1, s0, t0
34:               andi         s11, s9, -729
35:               srai         ra, sp, 5
                  add          t6, t6, s5
                  xor          s9, a2, s0
38:               slli         t0, a5, 25
39:               slti         a2, s1, 695
                  or           zero, ra, t6
                  sra          s7, s11, gp
                  sra          gp, tp, gp
                  blt          gp, t2, 52f
                  xor          gp, tp, s4
                  srai         t2, t2, 21
                  srl          s10, t5, s1
                  slli         sp, s0, 5
                  auipc        a2, 36384
                  sltiu        ra, a1, -942
                  beq          gp, a0, 69f
                  sltu         a7, sp, s7
52:               srli         s11, s9, 0
                  sll          tp, sp, a5
                  slti         a7, t3, 223
                  beq          s9, a5, 64f
                  srli         s2, a0, 16
                  and          gp, t1, s11
                  sltu         s7, a5, tp
                  beq          s6, gp, 70f
                  auipc        t4, 741880
                  blt          a2, a2, 81f
                  srai         s3, a7, 13
                  beq          s1, zero, 65f
64:               srl          s2, a2, s6
65:               ori          s6, s3, -1870
                  srai         a5, s6, 19
                  bge          t4, a5, 86f
                  srli         s4, t6, 29
69:               srli         t6, s2, 6
70:               blt          s8, a7, 76f
                  beq          t1, zero, 80f
                  andi         zero, s2, 1117
                  and          a1, ra, a3
                  sltu         tp, t0, t0
                  add          s1, t4, sp
76:               bne          t2, a6, 77f
77:               sltu         t3, t5, a3
                  xor          s2, s3, s2
                  xor          ra, t6, a6
80:               ori          s7, t0, -528
81:               bltu         a3, s6, 94f
                  sltiu        t2, s10, -1761
                  srli         s10, ra, 1
                  andi         s7, s3, -554
                  sltu         s6, tp, s0
86:               srl          a5, s9, a5
                  and          sp, s0, gp
                  or           t4, a2, t2
                  sltiu        s7, zero, -827
                  nop
                  xori         a1, a4, -434
                  andi         tp, t6, -1289
                  srli         gp, t2, 22
94:               sra          ra, s2, a7
                  slli         s3, t3, 11
                  addi         a2, t0, -1983
                  blt          t1, a2, 114f
                  slli         s3, t2, 11
                  add          a3, s10, tp
                  slli         t6, t0, 7
                  ori          s3, s11, 56
                  lui          ra, 421863
                  slt          a4, s2, s2
                  srli         a2, tp, 29
                  srai         gp, sp, 16
                  xori         t6, a0, 2014
                  slli         a3, ra, 4
                  sltiu        t3, a4, -1555
                  lui          s2, 992486
                  nop
                  sltu         a3, gp, a1
                  slli         s1, s6, 20
                  slti         s9, t5, -2008
114:              blt          tp, s5, 131f
                  srai         sp, a0, 7
                  bltu         a6, a7, 122f
                  bltu         t3, ra, 131f
                  or           a7, t2, ra
                  slli         a3, s2, 6
                  bltu         s1, a1, 131f
                  slli         t0, s4, 21
122:              bltu         a1, t1, 135f
                  and          a4, t3, tp
                  sub          a7, a4, s11
                  slt          t1, a4, s1
                  nop
                  ori          gp, a3, -1233
                  ori          s8, s7, -1375
                  and          a2, a7, s1
                  sltiu        s8, a6, -1748
131:              andi         a7, s1, -1407
                  or           t6, s7, s1
                  and          a3, sp, s1
                  nop
135:              slli         gp, a0, 24
                  auipc        s6, 855787
                  slti         t1, a3, 183
                  or           t1, t1, a4
                  auipc        s6, 559907
                  srl          t4, t3, t4
                  srli         a3, a7, 23
                  lui          tp, 934036
                  xor          a5, t6, t4
                  xor          t1, t0, t5
                  srl          t6, tp, t0
                  blt          ra, a1, 164f
                  bltu         s0, s11, 152f
                  sll          zero, t5, s9
                  slt          t1, s6, s1
                  xor          t1, t5, a4
                  sltiu        a5, gp, 418
152:              xori         t4, zero, -1942
                  add          zero, t6, t3
                  slti         t4, s0, -1681
                  slt          a1, s4, zero
                  sltu         ra, s7, s9
                  slti         t1, a7, -29
                  andi         a7, s1, -1208
                  sltiu        t2, t6, 822
                  ori          s4, ra, -55
                  bltu         t6, s5, 164f
                  xor          a7, t6, a4
                  sltiu        a3, t6, 1391
164:              slti         s5, t1, -1130
                  nop
                  add          s4, t3, zero
                  lui          s2, 150986
                  beq          s11, s0, 187f
                  add          a0, a1, gp
                  xori         t1, a4, 1583
                  srl          t0, s4, a6
                  sll          a7, s3, gp
                  beq          s9, t6, 190f
                  and          s11, s9, s10
                  auipc        a1, 500807
                  and          t4, a0, t4
                  sra          s10, t0, s11
                  slti         a5, s3, -1955
                  srli         s3, a4, 21
                  slt          a2, ra, s6
                  or           s3, s5, sp
                  add          a3, a1, s3
                  or           a1, t5, s11
                  bge          t4, s1, 202f
                  lui          t6, 52720
                  sll          t0, t1, t1
187:              ori          t1, zero, -1322
                  ori          s2, a5, -1342
                  srai         s8, s5, 19
190:              ori          s8, s6, 409
                  sltu         s2, gp, zero
                  sll          a0, s8, s4
                  srli         s7, s9, 26
                  srl          zero, t3, a1
                  lui          s10, 178991
                  bne          a0, t2, 201f
                  sra          zero, a2, s6
                  bltu         a1, sp, 208f
                  slli         t3, ra, 21
                  sltiu        s7, t1, 45
201:              srai         s8, ra, 12
202:              ori          zero, a3, -1407
                  and          s2, t2, s9
                  nop
                  xor          a1, a0, sp
                  srl          s6, sp, t1
                  and          t1, s0, tp
208:              bltu         t1, a2, 209f
209:              nop
                  ori          s11, a0, 664
                  srai         sp, s10, 21
                  or           t3, t1, t4
                  slli         t6, tp, 21
                  srli         t6, t1, 30
                  sll          tp, s8, zero
                  sll          a0, s1, a0
                  andi         s3, a6, -1773
                  addi         s2, a1, 1832
                  lui          s3, 961261
                  sll          s11, sp, s3
                  srai         s8, a0, 22
                  ori          s11, gp, 1142
                  and          t1, gp, zero
                  xori         t3, s6, 1327
                  and          a1, s5, t0
                  addi         s7, a4, 439
                  auipc        s8, 302243
                  or           ra, a1, a6
                  slt          s8, t1, t1
                  sll          a3, a0, a1
                  and          s7, a4, a1
                  lui          s11, 434615
                  sltu         t1, t3, ra
                  slli         t1, t3, 10
                  slti         t2, t4, -292
                  bltu         t3, t3, 254f
                  sll          sp, s4, tp
                  bge          t4, s8, 247f
                  bgeu         s4, s5, 252f
                  sltu         s7, s2, s0
                  nop
                  beq          s8, gp, 256f
                  auipc        t3, 142409
                  xori         a7, t5, 61
                  auipc        s7, 850427
                  nop
247:              bltu         a2, t2, 253f
                  and          s8, a5, a5
                  nop
                  lui          t2, 142729
                  or           a4, s9, a6
252:              or           sp, a3, t4
253:              and          s11, t1, t5
254:              slt          a5, s9, s3
                  and          t0, a6, sp
256:              sltiu        s2, sp, -832
                  blt          s1, s6, 276f
                  slt          s7, a0, gp
                  srli         ra, s6, 29
                  srai         s7, s8, 29
                  srli         s7, t6, 13
                  xor          a4, s11, t3
                  sra          sp, s1, s11
                  bge          zero, s3, 265f
265:              nop
                  bne          t1, s5, 275f
                  sltiu        a5, tp, 1297
                  addi         s6, t0, 590
                  bge          s0, s7, 272f
                  bne          s0, a6, 271f
271:              bgeu         t4, a7, 291f
272:              blt          s1, t6, 283f
                  add          a1, a2, s7
                  ori          a4, tp, -1542
275:              slt          s3, a0, t1
276:              bgeu         a3, a1, 293f
                  la           t4, region_1+470 #start riscv_load_store_rand_instr_stream_2
                  xori         s5, s4, 991
                  addi         ra, t4, 1051
                  lbu          s4, 559(t4)
                  sb           a5, 251(t4)
                  lh           gp, 1412(t4)
                  srl          t0, sp, s3
                  lb           a2, 363(t4)
                  sh           t5, -58(t4)
                  addi         t1, a5, 418
                  sll          sp, a1, a3
                  xor          s1, t4, a6
                  lbu          s7, -315(t4)
                  add          gp, s7, s6
                  sub          s9, a5, a2
                  sltiu        s2, a5, 1114
                  lhu          t1, -466(t4)
                  sw           sp, 602(t4)
                  auipc        tp, 588358
                  and          zero, ra, s2
                  lbu          gp, 43(t4)
                  lh           s2, -92(t4)
                  lui          s1, 679211
                  lb           gp, -237(t4)
                  srl          gp, sp, s8
                  ori          s7, a0, 1639
                  add          s7, a0, t1
                  lbu          a7, 1493(t4)
                  lui          s7, 21808
                  lbu          t3, 1374(t4)
                  or           s2, t0, t1
                  lb           a0, 992(t4)
                  add          a1, s10, s11
                  lb           s9, -460(t4)
                  sltu         s6, t5, s9
                  slti         s7, s4, 805
                  sltiu        t0, s10, 8
                  lbu          s10, 1289(t4)
                  lui          t3, 961196
                  add          s11, t6, s4
                  srli         tp, a1, 7
                  lbu          s11, 995(t4)
                  lb           ra, 345(t4)
                  xor          s1, tp, s7
                  lbu          sp, 1248(t4)
                  sll          s2, a4, zero
                  lbu          s7, 372(t4) #end riscv_load_store_rand_instr_stream_2
                  sltu         t1, t4, sp
                  auipc        s8, 212561
                  bgeu         s4, sp, 294f
                  srli         t2, t5, 29
                  sltu         s6, a2, s4
                  ori          a0, s5, 584
283:              slli         t6, tp, 29
                  bge          a7, a5, 303f
                  sltiu        a4, s11, -1884
                  bge          a1, s0, 292f
                  beq          t0, s5, 307f
                  beq          s0, a4, 290f
                  sra          tp, gp, s3
290:              srl          a2, a1, s6
291:              bgeu         tp, t4, 293f
292:              bne          t0, a2, 301f
293:              srai         t3, t6, 12
294:              lui          s6, 502679
                  sra          t3, s9, s5
                  beq          a2, s4, 307f
                  slt          s1, s11, a2
                  slli         tp, a6, 1
                  srli         s4, ra, 24
                  bge          tp, s9, 313f
301:              and          t3, s7, s3
                  slt          s5, s2, s10
303:              sub          ra, t1, a3
                  slti         s8, a4, 687
                  bltu         s9, a0, 323f
                  srai         s3, a3, 31
                  la           sp, region_0+1031 #start riscv_load_store_rand_instr_stream_3
                  lb           s3, 0(sp)
                  lb           a1, -6(sp)
                  auipc        a7, 258882
                  lbu          a0, 11(sp)
                  lb           a7, -9(sp)
                  srli         s3, a5, 25
                  lbu          s3, 2(sp)
                  sub          s8, s8, s1
                  sb           s2, 9(sp)
                  sw           t5, -3(sp)
                  srli         a1, s1, 17
                  sub          a4, a6, t1
                  sll          a0, s8, zero
                  sra          t1, a4, s0
                  sb           t2, -8(sp)
                  srli         t0, t3, 21
                  and          s4, s3, s6
                  lbu          a3, -8(sp)
                  sltiu        a0, s9, -1594
                  xor          a7, a2, ra
                  lbu          t0, -7(sp)
                  ori          a2, s2, 191
                  slli         tp, a3, 27
                  lbu          s11, 9(sp)
                  lb           t4, 6(sp)
                  lbu          t2, 16(sp)
                  sll          gp, s4, gp
                  lhu          t0, 3(sp)
                  lb           s9, -1(sp)
                  addi         t4, a0, -1753
                  slt          t0, s0, t6
                  sll          s11, sp, ra
                  slti         s6, s0, -1868
                  sub          a3, a5, t2
                  add          s10, s6, a3
                  andi         s9, t2, 1736
                  or           t1, ra, zero
                  lb           a5, -2(sp)
                  lbu          a3, 16(sp)
                  andi         s9, s10, 1993
                  add          a1, t3, s11
                  slli         s10, a3, 24
                  sb           t2, -13(sp)
                  sra          s10, a5, s3
                  lw           t2, -7(sp)
                  slt          s5, t5, s0
                  lb           t6, 3(sp)
                  lbu          gp, -12(sp)
                  nop
                  slli         a1, s10, 24
                  sb           s4, 2(sp)
                  lbu          s7, 2(sp) #end riscv_load_store_rand_instr_stream_3
307:              ori          s9, tp, -1770
                  slli         s10, s6, 2
                  lui          a3, 573685
                  bne          a6, s4, 327f
                  srli         a7, t3, 13
                  beq          ra, t5, 313f
313:              bne          s5, zero, 330f
                  lui          a0, 276614
                  bltu         t1, t0, 326f
                  srl          s11, a2, s9
                  beq          gp, tp, 328f
                  andi         a3, gp, 848
                  nop
                  slti         s11, a7, -1974
                  or           gp, a5, t2
                  slli         s2, s10, 11
323:              beq          tp, t3, 341f
                  srl          s7, t5, s3
                  addi         s11, t6, 1842
326:              slti         a3, s6, 944
327:              nop
328:              lui          sp, 726349
                  ori          t6, t1, 1435
330:              sub          sp, s8, s6
                  bge          a3, t6, 336f
                  xor          s9, t0, a1
                  bgeu         t6, a7, 339f
                  srai         tp, a7, 14
                  bltu         sp, s7, 341f
336:              xor          s1, s1, zero
                  blt          tp, s6, 354f
                  xori         a1, s7, -1817
339:              bltu         gp, t2, 352f
                  slli         gp, t6, 16
341:              and          t0, t6, s11
                  sltu         s11, a4, t4
                  blt          a6, a3, 346f
                  nop
                  sub          a2, t4, a5
346:              bltu         t0, gp, 356f
                  bge          a2, t0, 349f
                  sll          s5, a4, s5
349:              sub          sp, a7, s1
                  slli         s10, s7, 27
                  auipc        a7, 349889
352:              sra          a5, zero, t5
                  or           t1, ra, a2
354:              bgeu         t2, s11, 356f
                  ori          s4, s4, 1361
356:              addi         a5, s9, -1632
                  bltu         s0, ra, 376f
                  sra          t4, s4, s11
                  nop
                  bne          t3, t0, 369f
                  andi         s9, t3, -507
                  bltu         t0, s11, 377f
                  slti         gp, s5, -679
                  andi         s9, s1, 414
                  blt          a4, a2, 382f
                  andi         t4, s3, 559
                  and          ra, a0, s10
                  bgeu         s3, s6, 387f
369:              beq          s5, t4, 383f
                  lui          a5, 869212
                  xori         s11, t2, 243
                  slt          sp, s3, s0
                  blt          s2, a6, 386f
                  bne          t3, a7, 375f
375:              addi         s3, s8, 1527
376:              nop
377:              xor          a5, a6, ra
                  blt          s4, s9, 396f
                  bltu         t6, a6, 380f
380:              and          s7, s11, t3
                  blt          a7, a1, 390f
382:              addi         s1, a5, 41
383:              sltu         gp, s8, s5
                  slt          a1, s5, t5
                  srli         s10, a6, 14
386:              bne          a3, t4, 404f
387:              bgeu         sp, a6, 406f
                  bge          t3, gp, 408f
                  sub          s1, s1, s9
390:              sltiu        a4, s10, 1932
                  nop
                  add          s10, a7, a1
                  slt          a5, a6, s3
                  srai         s1, zero, 21
                  auipc        s11, 704855
396:              addi         s3, s11, 1639
                  and          s1, s11, a4
                  nop
                  beq          a7, a3, 408f
                  sll          sp, zero, s1
                  lui          zero, 587577
                  srl          s10, s7, t1
                  slli         s10, s3, 31
404:              sra          a2, a5, tp
                  slli         t2, t0, 4
406:              auipc        a3, 560818
                  bgeu         s9, a7, 427f
408:              lui          s8, 1878
                  xor          a7, s6, zero
                  xori         t0, a2, 1983
                  slli         t6, t3, 8
                  sll          s10, t5, t5
                  slt          s6, s7, s8
                  sltiu        t2, tp, 975
                  sll          t6, a1, s2
                  and          t3, zero, a6
                  and          t3, s7, s6
                  bge          t4, t4, 433f
                  sub          s9, t5, a4
                  sub          a0, t2, s1
                  xor          zero, s9, t1
                  srl          s9, a4, s6
                  sltiu        s9, s4, 428
                  lui          a0, 528018
                  sub          a3, s8, t5
                  bne          s1, t0, 427f
427:              addi         t3, s3, 1598
                  auipc        sp, 37339
                  slti         s3, s3, 379
                  slt          zero, t0, a4
                  xori         s5, t2, 1786
                  sltiu        t1, a3, -456
433:              sll          s6, tp, s0
                  blt          t4, t6, 439f
                  srli         t2, a5, 16
                  srl          t4, s1, s5
                  blt          s7, t0, 443f
                  bge          s0, a0, 457f
439:              slt          s1, t5, a5
                  slli         a5, s8, 31
                  slt          s6, s2, t0
                  sra          s9, s11, s8
443:              srli         s11, a4, 14
                  srli         s11, s4, 11
                  srl          s9, a5, t6
                  bne          s5, t0, 463f
                  blt          a6, tp, 448f
448:              slt          a4, s9, a5
                  bne          t1, a7, 451f
                  xor          sp, zero, s7
451:              sll          a0, s0, zero
                  lui          t6, 960322
                  andi         s9, zero, 1064
                  srai         s4, sp, 23
                  nop
                  bne          t4, t6, 474f
457:              slli         s6, s7, 21
                  lui          s5, 560872
                  or           sp, t5, t0
                  beq          s0, s4, 466f
                  sltiu        a3, s2, 1322
                  or           s10, a5, t0
463:              sll          a4, t3, s7
                  srli         s4, gp, 6
                  slti         sp, t0, -872
466:              or           a7, s3, s11
                  sltu         t1, t1, s5
                  auipc        s9, 1025887
                  andi         t2, t6, -391
                  sltiu        t1, zero, 401
                  nop
                  slli         s9, t5, 16
                  lui          t4, 923143
474:              add          a1, s3, s4
                  sll          a7, t4, a2
                  beq          t2, a6, 486f
                  bgeu         t6, ra, 491f
                  ori          t6, t1, 610
                  beq          s10, s7, 488f
                  slti         s2, a0, 859
                  blt          s4, ra, 490f
                  andi         s4, gp, 361
                  bgeu         s9, a1, 485f
                  slti         t2, s5, -916
485:              ori          s3, t1, -1844
486:              slli         s11, a2, 7
                  xor          t4, a2, a6
488:              blt          a6, t2, 497f
                  and          s8, s8, s3
490:              lui          t2, 659295
491:              slti         a4, a4, -515
                  auipc        sp, 371163
                  srli         s6, tp, 22
                  slti         gp, a7, -1767
                  and          s5, s5, zero
                  slti         t4, s8, -1970
497:              lui          a0, 699597
                  bltu         a2, zero, 518f
                  slti         s7, a5, -1962
                  srl          gp, a0, a7
                  srli         t3, t6, 23
                  srl          a4, s6, s5
                  bge          s5, s11, 523f
                  beq          s0, s6, 517f
                  slt          a1, s1, t1
                  sll          s7, gp, t5
                  sltiu        s11, a7, 1111
                  srl          s5, s3, a6
                  bgeu         s3, ra, 520f
                  sra          zero, t3, s2
                  sll          zero, t4, s3
                  srl          a5, t4, s0
                  sltiu        s5, tp, -1218
                  srli         t2, s5, 3
                  xori         ra, gp, 1056
                  sll          a3, s4, zero
517:              xori         s8, t2, -1833
518:              bltu         t1, a0, 529f
                  slli         s6, t0, 6
520:              and          s8, s1, t6
                  sra          a1, s0, t3
                  addi         a4, zero, -84
523:              bne          t1, a2, 540f
                  slli         t0, s8, 31
                  srai         t2, s11, 22
                  nop
                  bne          t5, a1, 545f
                  slti         s11, t3, 538
529:              xor          ra, zero, t4
                  ori          s3, t3, -1162
                  sltiu        s7, t4, -1598
                  xor          t0, t2, s5
                  blt          s7, sp, 551f
                  blt          a0, a6, 535f
535:              sltu         s8, t4, a2
                  sll          gp, t4, s8
                  nop
                  blt          t3, a0, 555f
                  blt          t4, s4, 542f
540:              sub          t3, tp, s0
                  sltu         s1, a7, t4
542:              srli         s6, t4, 22
                  bltu         s1, s4, 562f
                  xor          s1, t1, a4
545:              slt          sp, ra, a6
                  lui          s7, 577696
                  ori          s4, s5, -1282
                  beq          s9, sp, 567f
                  auipc        s5, 390318
                  srl          s4, zero, s2
551:              beq          a1, s2, 564f
                  xori         t0, sp, -335
                  bne          a2, t2, 572f
                  nop
555:              sltu         s7, sp, a2
                  ori          s3, a5, -1150
                  nop
                  slt          tp, a6, t1
                  or           a3, s7, t5
                  slli         a0, t5, 15
                  add          gp, s2, t2
562:              add          ra, a4, t3
                  add          a0, s0, t2
564:              nop
                  slt          gp, a6, a7
                  bgeu         s2, t0, 572f
567:              slli         s8, gp, 7
                  xor          s6, t3, s9
                  sra          a2, gp, a0
                  slli         s2, a1, 10
                  sra          t1, gp, a5
572:              lui          s10, 311288
                  blt          s10, a6, 584f
                  bgeu         s7, ra, 590f
                  slli         s7, s1, 28
                  sub          ra, s7, s8
                  nop
                  bltu         t3, a0, 590f
                  sra          t6, t2, a1
                  bgeu         a6, a3, 581f
581:              beq          s0, s9, 590f
                  bgeu         s2, a7, 590f
                  xor          t4, s4, t3
584:              nop
                  sltiu        ra, a2, -655
                  sub          s4, s0, t6
                  add          t6, t2, s4
                  and          a1, t4, ra
                  xor          s2, t3, gp
590:              ori          s8, s0, -1822
                  srl          t1, a1, s0
                  lw           t4, 4(s0)
                  slli         s5, a1, 22
                  or           a0, s5, gp
                  srli         t6, a6, 20
                  addi         s0, s0, 52
                  sll          s7, t4, t4
                  xor          sp, s0, s6
                  nop
                  sll          s7, s3, t1
                  add          t1, s3, ra
789:              addi x17, x29, 1
789:              jalr x17, x17, 0
sub_6:            sltu         sp, a4, t0
                  nop
                  bltu         t4, a4, sub_6_stack_p
                  sub          a7, s8, s2
                  sra          t2, gp, s6
                  srli         sp, t6, 15
sub_6_stack_p:    addi         s0, s0, -20
                  sw           t4, 4(s0)
                  sra          s6, a6, gp
                  sltiu        a5, sp, -620
                  nop
                  or           tp, a5, a3
                  sltiu        t6, s5, 1456
                  sra          s8, s3, a7
                  ori          s1, s5, 1784
                  srli         t6, t1, 26
                  sltiu        a3, s9, 824
                  and          s8, s2, t5
                  slti         t6, s4, 1319
sub_6_j10:        jal          t4, sub_7 #jump sub_6 -> sub_7
                  nop
                  sub          s9, s8, a6
                  ori          zero, t2, -1677
                  sltiu        a5, s8, 1311
                  ori          t6, a4, 956
                  or           s5, a4, a7
sub_6_j11:        jal          t4, sub_7 #jump sub_6 -> sub_7
                  bne          t4, a0, 4f
                  xor          t6, s7, s11
                  slli         s7, a1, 25
                  sltiu        s11, a1, -454
4:                auipc        a2, 421148
                  bge          s2, s0, 19f
                  srli         s7, s6, 19
                  bltu         a5, t2, 17f
                  slti         s7, s7, 1825
                  sra          s2, s1, gp
                  srli         t1, a5, 2
                  xori         zero, s4, -1346
                  bltu         a3, zero, 19f
                  slt          gp, ra, a3
                  slt          a7, s11, s1
                  and          a7, a7, t3
                  nop
17:               nop
                  bge          zero, t6, 19f
19:               ori          t2, s0, 200
                  auipc        a5, 70104
                  lw           t4, 4(s0)
                  sub          a7, s5, a1
                  sra          a4, t5, a3
                  srai         s8, a5, 10
                  ori          s3, t6, -1391
                  or           s1, a5, tp
                  addi         s0, s0, 20
                  nop
                  slli         a5, s5, 18
                  sub          a4, s4, s11
                  xor          s1, a3, t3
59:               addi x11, x29, 1
59:               jalr x11, x11, 0
sub_9:            blt          t1, a7, sub_9_stack_p
                  addi         s1, ra, -629
sub_9_stack_p:    addi         s0, s0, -44
                  srli         s6, t1, 0
                  or           a1, t3, t0
                  addi         s1, ra, 544
                  sw           t4, 4(s0)
                  andi         s10, ra, -1241
                  nop
                  slti         s5, a3, -916
                  sltu         tp, s4, t5
                  xor          t0, s7, t0
                  srli         gp, s3, 13
                  sltu         ra, s10, tp
                  xor          t6, s5, s0
                  slt          t3, a7, s10
                  slti         a4, t1, -1874
                  slti         s1, s4, 1302
                  bne          s4, s0, 15f
                  sltiu        a3, s9, -1832
                  xor          s8, s6, s4
                  or           t1, s8, ra
                  sltiu        s10, sp, 268
15:               and          a5, gp, a0
                  addi         tp, zero, 902
                  beq          a2, t5, 33f
                  xor          a3, s10, s8
                  sra          s5, a1, s7
                  srli         gp, a3, 2
                  bgeu         s1, t1, 37f
                  bltu         t0, a2, 33f
                  srai         a5, t3, 21
                  bne          gp, s10, 31f
                  sltu         t0, s8, s9
                  bge          t2, sp, 44f
                  beq          a4, s3, 28f
28:               sub          a7, s3, t5
                  slt          t6, s2, s8
                  slli         a1, s0, 3
31:               auipc        a1, 778309
                  bge          a5, t0, 38f
33:               slli         s5, t0, 28
                  srai         s1, ra, 29
                  sub          sp, s7, s8
                  srai         a3, a1, 24
37:               slti         s9, t5, 539
38:               slt          gp, s7, a0
                  srai         t0, tp, 7
                  nop
                  sltiu        a1, a5, -957
                  or           t0, s10, zero
                  xori         sp, a4, -301
44:               srli         s10, a1, 28
                  addi         ra, t2, 1970
                  sll          t3, a1, t2
                  bgeu         s8, t4, 62f
                  blt          zero, ra, 53f
                  ori          a0, s11, 1439
                  srl          t0, s8, s4
                  beq          s11, s9, 57f
                  sub          t0, t5, a1
53:               andi         a4, t0, 225
                  ori          s10, a4, 755
                  slt          s7, t3, gp
                  xor          s4, s9, s0
57:               addi         a5, s10, -1823
                  auipc        gp, 272278
                  sltu         s1, s5, s5
                  addi         s8, a0, 289
                  bge          s10, sp, 76f
62:               or           t1, s3, a1
                  nop
                  sltu         s11, s7, t0
                  slt          s7, a1, s3
                  ori          a5, s0, -1841
                  srli         a5, zero, 18
                  xori         s6, zero, -273
                  sll          s8, s5, a4
                  and          zero, s4, s9
                  bge          t0, s4, 73f
                  addi         a0, a7, -1341
73:               sltiu        a4, a4, -429
                  beq          zero, a0, 75f
75:               sra          a4, a1, s0
76:               andi         t0, s6, -1473
                  blt          s11, sp, 82f
                  slli         a1, a3, 11
                  andi         s6, t0, -1473
                  or           s9, a5, s9
                  srli         a0, a7, 28
82:               blt          s7, t1, 89f
                  slti         t4, s7, 1748
                  nop
                  srl          s8, a4, t4
                  andi         ra, s1, 63
                  and          sp, tp, sp
                  sub          t3, s11, t6
89:               andi         gp, a5, 668
                  sltiu        zero, a2, -1795
                  andi         s7, a6, 1385
                  sltiu        s2, a3, 89
                  sltu         a5, t6, s3
                  sltiu        t1, a4, 1400
                  lui          a4, 312254
                  bltu         a4, t3, 98f
                  sub          s8, s8, a5
98:               auipc        s7, 896122
                  add          sp, s6, s2
                  xori         zero, s1, -298
                  beq          t2, s8, 108f
                  ori          s2, ra, 1249
                  blt          a0, zero, 108f
                  auipc        s1, 493237
                  sll          s9, s3, s2
                  sra          a1, s4, t6
                  xor          a3, a3, s2
108:              xori         s11, s10, 726
                  sltiu        a5, a2, -802
                  lw           t4, 4(s0)
                  xori         tp, s11, 16
                  addi         s0, s0, 44
                  add          s1, t2, s3
                  xor          a0, s10, t6
123:              addi x31, x29, 0
123:              jalr x31, x31, 0
sub_2:            slli         zero, zero, 26
                  addi         s0, s0, -64
                  srl          s4, a5, t3
                  xor          tp, t5, ra
                  or           a4, t4, s3
                  sw           t4, 4(s0)
                  xor          a3, s4, t3
                  la           sp, region_1+1124 #start riscv_load_store_rand_instr_stream_9
                  lbu          a0, 393(sp)
                  sra          t1, s0, zero
                  lh           a3, -730(sp)
                  lbu          s5, -73(sp)
                  sh           gp, -126(sp)
                  sra          tp, t1, s3
                  sb           s1, -1012(sp)
                  lw           s2, 516(sp)
                  sb           a6, 771(sp)
                  lb           a3, -973(sp)
                  lb           t4, 43(sp)
                  lh           tp, 116(sp)
                  addi         s6, t5, 467
                  addi         s11, t2, -1350
                  sb           s6, -816(sp)
                  lh           gp, -572(sp)
                  ori          a7, s9, -321
                  slti         a0, s2, 1493
                  or           t1, zero, ra
                  lh           s7, 450(sp)
                  sb           a0, 359(sp)
                  add          a0, t5, s8
                  or           a5, s3, ra
                  sh           t4, -298(sp)
                  lb           t2, -452(sp)
                  lbu          t2, -164(sp)
                  srli         a5, a4, 23
                  lbu          s3, 129(sp)
                  sltu         s10, s1, t0
                  sb           gp, 433(sp)
                  lb           a0, 493(sp)
                  lbu          tp, -500(sp)
                  lw           a4, -616(sp)
                  lbu          t3, 448(sp)
                  lbu          s5, 513(sp)
                  lbu          a2, -449(sp)
                  sw           s2, -388(sp)
                  addi         s3, a0, 1380
                  srl          a4, a3, a4
                  lh           a3, -950(sp)
                  lbu          s9, -753(sp)
                  and          s5, t5, s7
                  slt          a2, zero, a2
                  lh           s5, 612(sp)
                  and          s4, a2, a7
                  lbu          a1, -421(sp) #end riscv_load_store_rand_instr_stream_9
                  la           s7, region_0+1466 #start riscv_load_store_rand_instr_stream_11
                  sb           t4, 63(s7)
                  auipc        a7, 735239
                  sb           ra, -215(s7)
                  addi         s3, zero, -1641
                  lui          sp, 982486
                  xori         zero, s4, -1234
                  lb           ra, 117(s7)
                  srai         s11, s4, 19
                  sh           a1, -1126(s7)
                  nop
                  lh           a4, -1242(s7)
                  slt          sp, s6, s6
                  lb           ra, -1133(s7)
                  and          a4, a4, s7
                  auipc        ra, 410836
                  sh           a5, -1130(s7)
                  sw           a4, -606(s7)
                  sb           a1, -975(s7)
                  addi         sp, a3, -100
                  lb           ra, -509(s7)
                  lb           ra, -1267(s7)
                  sh           a6, -602(s7)
                  lb           s8, -515(s7)
                  or           s1, s3, s4
                  add          t1, t0, t6
                  andi         a3, a0, -540
                  xor          t3, t6, s7
                  lb           s2, 182(s7)
                  lui          s9, 940765
                  lhu          a3, -860(s7)
                  xor          tp, a6, t3
                  lhu          s8, -334(s7)
                  auipc        t2, 922953
                  sb           ra, -974(s7)
                  lh           sp, -984(s7)
                  lb           s3, -205(s7)
                  lbu          t4, -1027(s7)
                  srli         s6, t3, 29
                  addi         a4, t2, 287
                  lw           s5, -1150(s7)
                  lb           t0, -840(s7)
                  srl          gp, s11, t4
                  lw           t6, -510(s7)
                  sub          t1, s4, a0
                  addi         t4, t2, -1039
                  lbu          t0, 515(s7)
                  lhu          t1, -1012(s7)
                  lb           gp, 112(s7)
                  slt          a7, zero, s3
                  lbu          s6, -769(s7)
                  sh           s11, -1412(s7)
                  nop
                  and          s4, t1, a0
                  sltiu        ra, sp, -581
                  lh           gp, -1148(s7)
                  nop
                  sb           sp, 53(s7) #end riscv_load_store_rand_instr_stream_11
                  la           s11, region_0+1286 #start riscv_load_store_rand_instr_stream_6
                  lbu          t3, 7(s11)
                  slt          t3, s10, t1
                  lb           t4, 11(s11)
                  lb           a4, -7(s11)
                  or           t3, a7, t3
                  srai         s2, a2, 5
                  srli         s10, t5, 4
                  add          a2, t6, s6
                  lbu          tp, 9(s11)
                  lh           t4, -6(s11)
                  lbu          s6, -15(s11)
                  lbu          a3, 15(s11)
                  lhu          s5, -14(s11)
                  or           s9, sp, t5
                  sb           s7, -16(s11)
                  lb           t3, 11(s11)
                  srai         s5, s3, 24
                  lbu          s2, -2(s11)
                  or           s6, t2, s3
                  nop
                  lb           s6, -9(s11)
                  lb           t1, -9(s11)
                  nop
                  srai         s9, t2, 19
                  andi         a1, sp, -90
                  lw           a0, 2(s11)
                  andi         a0, s7, 87
                  sb           gp, -16(s11)
                  slt          s7, t1, s4
                  srai         s2, a0, 13
                  lbu          a5, -15(s11)
                  lhu          t0, 6(s11)
                  lbu          t2, -12(s11)
                  lb           s10, 10(s11)
                  lb           t3, 8(s11)
                  add          a7, s9, a0
                  sub          s7, t3, t3
                  lbu          s7, -5(s11)
                  sh           s4, 6(s11)
                  sltu         s3, s6, s4
                  slli         t4, a1, 19
                  sb           t3, 9(s11)
                  lb           s6, 11(s11)
                  lbu          s4, 7(s11) #end riscv_load_store_rand_instr_stream_6
                  la           ra, region_1+890 #start riscv_load_store_rand_instr_stream_1
                  or           a2, a0, s10
                  slti         t3, t6, -838
                  lh           t4, 14(ra)
                  sw           a4, -58(ra)
                  sltiu        tp, sp, 1479
                  sra          a5, a7, sp
                  sb           t4, -16(ra)
                  andi         s4, sp, -448
                  andi         s1, t2, 1771
                  and          gp, sp, s10
                  sltu         t3, tp, t2
                  slti         s1, t2, -1241
                  lhu          s8, 50(ra)
                  nop
                  sb           zero, -18(ra)
                  lbu          s4, -36(ra)
                  srai         sp, t4, 24
                  slt          s1, t3, s9
                  andi         s1, a3, -1529
                  and          a4, s0, s8
                  sra          s6, s10, s6
                  srli         s2, a0, 4
                  sb           t0, -15(ra)
                  sltiu        s6, s11, -1056
                  lui          t3, 755904
                  xor          s10, a4, s3
                  xori         s3, s5, -1586
                  auipc        a3, 616256
                  xori         a7, t1, 830
                  auipc        s3, 390883
                  sb           gp, 28(ra)
                  add          t6, a6, gp
                  srl          t6, t4, s1
                  lbu          t0, 24(ra)
                  slti         s3, s5, 562
                  addi         a3, s7, 1215
                  xor          t1, t1, s8
                  sb           a5, -9(ra)
                  lb           s3, 50(ra)
                  sh           ra, -60(ra)
                  andi         zero, t4, -1235
                  lbu          t3, -3(ra) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_1+1943 #start riscv_load_store_rand_instr_stream_7
                  lbu          ra, -1074(sp)
                  srli         a4, s9, 14
                  sra          ra, a4, a7
                  lbu          s10, -1028(sp)
                  ori          s4, zero, -1521
                  sra          s2, s10, s5
                  lb           a5, -510(sp)
                  sltiu        t2, s10, -1613
                  lb           a1, -1199(sp)
                  slli         s7, a1, 20
                  srai         t0, s7, 7
                  xori         s4, a6, 289
                  lbu          tp, -1055(sp)
                  lb           a0, -1327(sp)
                  and          s8, ra, s2
                  sra          s10, t1, t4
                  or           t2, a3, s3
                  andi         s10, t2, -138
                  lb           zero, -1242(sp)
                  ori          t6, s10, -983
                  ori          zero, tp, 1957
                  or           s10, s9, a4
                  sltiu        t3, sp, 1899
                  sh           zero, -1169(sp)
                  sra          gp, sp, s10
                  auipc        a2, 809747
                  sub          s10, t6, gp
                  nop
                  lbu          s9, -1895(sp)
                  nop
                  add          s3, t6, t6
                  andi         tp, ra, -1939
                  sub          s3, s1, s1
                  srl          t6, tp, tp
                  sub          s11, s4, s11
                  sra          s3, t1, s9
                  sb           t0, -780(sp)
                  sb           s7, -74(sp) #end riscv_load_store_rand_instr_stream_7
                  la           sp, region_1+1558 #start riscv_load_store_rand_instr_stream_4
                  sll          zero, a2, t1
                  andi         t2, ra, -138
                  sb           s5, 3(sp)
                  lui          a4, 646443
                  auipc        s9, 141107
                  srli         a3, s1, 3
                  xori         s3, gp, 1399
                  sb           s9, 7(sp)
                  srl          a3, t2, s3
                  or           t4, s8, t4
                  lb           s7, -8(sp)
                  lb           s11, 1(sp)
                  lb           s6, -11(sp)
                  sltu         t2, gp, tp
                  srl          ra, tp, t0
                  lbu          s5, 15(sp)
                  lb           ra, -11(sp)
                  slti         s11, s1, 666
                  xor          t6, gp, s5
                  sub          zero, s7, t0
                  lb           t2, 0(sp)
                  slti         s8, a3, -340
                  sub          a7, a4, a5
                  nop
                  ori          s4, s5, 1908
                  lb           t2, 9(sp)
                  lbu          t6, 2(sp)
                  slt          s11, s7, t3
                  sb           a2, 11(sp)
                  srli         a5, t0, 16
                  sb           s7, -3(sp)
                  sll          a2, s10, t3
                  slli         s7, a1, 2
                  sltiu        s9, t0, -2018
                  add          a3, s5, s8
                  lh           t4, -14(sp)
                  and          a4, a0, t1
                  lb           t0, -3(sp)
                  lui          gp, 223867
                  lbu          tp, -3(sp)
                  slt          s11, s4, t1
                  lbu          gp, 1(sp)
                  slti         s8, a0, 1701
                  lbu          t6, 1(sp) #end riscv_load_store_rand_instr_stream_4
                  la           s10, region_0+1295 #start riscv_load_store_rand_instr_stream_0
                  lb           t1, -27(s10)
                  lb           a0, -20(s10)
                  ori          s8, s2, -368
                  and          s3, s2, tp
                  and          s6, s5, s11
                  sh           s4, 63(s10)
                  lb           s8, 46(s10)
                  lbu          gp, 2(s10)
                  lw           s8, 33(s10)
                  lb           s1, -32(s10)
                  auipc        a3, 948900
                  sb           t5, -20(s10)
                  sub          a2, a1, a4
                  xor          t2, zero, s8
                  sltu         t4, a5, t0
                  srl          s5, s3, a7
                  slt          a2, a1, gp
                  sltu         s3, t5, s11
                  or           s6, t5, t4
                  lhu          t1, 47(s10)
                  sw           a1, 33(s10)
                  sw           a3, 61(s10)
                  slli         a0, a4, 8
                  slt          a0, t3, a1
                  lbu          s1, 56(s10)
                  sb           s7, -18(s10)
                  lbu          s11, -1(s10)
                  or           t3, s9, s11
                  slt          s3, t4, a3
                  sb           t0, 53(s10)
                  xori         gp, t0, 820
                  add          sp, a5, t6
                  sb           t2, -52(s10)
                  sb           s11, -33(s10) #end riscv_load_store_rand_instr_stream_0
                  la           t1, region_1+1684 #start riscv_load_store_rand_instr_stream_10
                  andi         a7, a7, 1905
                  srl          t0, t5, s11
                  slt          s11, sp, t4
                  lw           s4, -1028(t1)
                  sh           a5, -668(t1)
                  lb           t3, -1421(t1)
                  sltiu        a2, s9, -943
                  slti         s8, ra, 1411
                  lh           s1, -1684(t1)
                  sra          a1, s5, a0
                  lhu          a0, -1482(t1)
                  andi         a2, s2, -1310
                  slt          a0, s10, a3
                  sb           t0, -509(t1)
                  sll          s11, a0, t0
                  lhu          s7, -1386(t1)
                  and          s4, a0, t6
                  slt          t6, s8, t2
                  lbu          s8, -37(t1)
                  sb           gp, 14(t1)
                  lb           gp, -574(t1)
                  lb           s5, -195(t1)
                  lb           s5, -878(t1) #end riscv_load_store_rand_instr_stream_10
                  la           sp, region_1+1256 #start riscv_load_store_rand_instr_stream_3
                  lhu          t1, 242(sp)
                  xori         s7, a0, -539
                  sltu         s8, s1, a1
                  nop
                  sb           s0, -84(sp)
                  lb           a0, 69(sp)
                  sb           s11, -213(sp)
                  and          s10, s7, zero
                  lw           a4, 0(sp)
                  auipc        a3, 66243
                  lbu          s4, -109(sp)
                  sb           sp, 105(sp)
                  or           a7, t6, s1
                  sw           a5, -44(sp)
                  lb           s4, 64(sp)
                  add          a1, t0, a3
                  sb           s2, -192(sp)
                  auipc        a1, 961621
                  sb           a7, 85(sp)
                  sub          s1, t3, sp
                  and          s9, a6, t3
                  sltu         a5, s11, sp
                  slli         s3, sp, 10
                  xori         a5, t6, -981
                  xori         s2, a0, -951
                  xori         a5, s3, -1253
                  lbu          s5, 156(sp)
                  sh           t6, -138(sp)
                  lbu          a1, 248(sp)
                  sll          s1, t4, t2
                  xori         t2, a6, 622
                  lh           t2, -198(sp)
                  sb           gp, 129(sp)
                  sra          s8, a6, s2
                  lbu          s1, -139(sp)
                  lbu          s9, 93(sp)
                  sb           a2, -167(sp)
                  lb           ra, -124(sp)
                  srli         s7, s6, 19
                  lh           gp, 140(sp)
                  lbu          s4, 238(sp)
                  xori         a2, ra, 842
                  slti         s5, t3, -1396
                  sltiu        t4, s8, 438
                  andi         a4, t2, 216
                  sll          s11, t4, s4
                  lhu          a0, 104(sp)
                  lbu          a1, 177(sp)
                  slli         a5, a7, 18
                  andi         a0, s11, 206
                  lw           zero, -40(sp) #end riscv_load_store_rand_instr_stream_3
                  la           ra, region_0+1898 #start riscv_load_store_rand_instr_stream_2
                  slli         zero, t6, 20
                  sb           s7, -164(ra)
                  lbu          s4, 60(ra)
                  lbu          t2, 78(ra)
                  addi         s1, s3, 423
                  sh           s11, -58(ra)
                  sb           gp, -147(ra)
                  lbu          sp, -127(ra)
                  xori         t1, a2, 648
                  lui          s7, 942254
                  lb           t6, 100(ra)
                  sh           s4, -248(ra)
                  slli         sp, t0, 18
                  sb           s7, 7(ra)
                  lbu          t6, 67(ra)
                  sb           t1, -126(ra)
                  sltiu        sp, zero, 1806
                  and          s10, a3, a3
                  srli         t6, a6, 26
                  slt          tp, s8, a7
                  lb           a0, -101(ra)
                  srai         s9, zero, 9
                  sb           t0, -103(ra)
                  sb           t5, -15(ra)
                  lb           s2, -246(ra)
                  sb           a6, -73(ra)
                  lbu          s9, -179(ra)
                  sb           t0, -215(ra)
                  lbu          s11, 0(ra)
                  sb           t0, -42(ra)
                  slti         t3, s0, -1466
                  lh           tp, -68(ra)
                  lbu          a0, -91(ra)
                  lb           t2, -217(ra) #end riscv_load_store_rand_instr_stream_2
                  add          t0, t2, s3
                  blt          a6, a7, 9f
                  sra          s5, s1, a3
                  add          s8, s11, s9
                  sll          s3, t3, a2
                  bne          a5, a4, 8f
                  slt          a3, t3, a3
                  sub          a7, ra, zero
8:                auipc        ra, 311806
9:                and          a2, s8, s6
                  sltu         a2, a7, s10
                  sll          t6, s2, a0
                  xori         s9, t5, 2022
                  bne          a6, s10, 14f
14:               beq          s8, s10, 15f
15:               sra          zero, a2, a3
                  or           sp, zero, s8
                  andi         a5, a5, 1986
                  xori         t0, t6, 783
                  xori         tp, a5, 1660
                  add          a0, a1, zero
                  bgeu         tp, s5, 24f
                  sll          s11, a1, a6
                  sra          s1, t3, t1
24:               xori         a4, gp, -575
                  bgeu         tp, s3, 31f
                  sltiu        t4, t0, 240
                  bltu         a0, gp, 35f
                  add          s3, a5, a6
                  bne          s4, a3, 44f
                  srli         sp, a2, 6
31:               sll          a5, s0, s5
                  slt          a5, t2, tp
                  slti         sp, a3, -809
                  addi         t2, t6, 1035
35:               srai         zero, s11, 8
                  slt          a1, s9, zero
                  bge          s8, a3, 52f
                  slli         a4, gp, 5
                  slli         a1, s8, 8
                  beq          s9, t0, 49f
                  xori         s10, s0, 1626
                  bge          s3, a3, 56f
                  bltu         a3, s11, 48f
44:               nop
                  auipc        t4, 769483
                  bne          a5, s10, 52f
                  sll          s5, a5, gp
48:               sltu         zero, t0, s8
49:               bge          a0, tp, 65f
                  auipc        s9, 468440
                  or           s9, s3, gp
52:               xori         zero, s5, 598
                  addi         t4, zero, -395
                  bge          sp, t1, 74f
                  nop
56:               bltu         s11, s8, 58f
                  blt          s2, s7, 60f
58:               auipc        zero, 301706
                  sltiu        sp, s1, -38
60:               sltiu        t2, ra, 1946
                  beq          tp, a6, 67f
                  addi         s1, t3, 73
                  andi         zero, t1, -803
                  sltiu        s1, t2, -558
65:               srli         a7, gp, 30
                  sltiu        a3, s6, 1906
67:               slli         s3, s4, 25
                  slt          a7, t4, t0
                  or           t6, a5, t4
                  auipc        tp, 905953
                  blt          a7, t6, 76f
                  srai         s2, a2, 13
                  sub          a4, tp, zero
74:               srl          s9, s8, t0
                  auipc        a3, 282302
76:               add          s3, tp, s6
                  sll          s2, s8, gp
                  srai         s1, a5, 15
                  srai         a5, t6, 26
                  add          t4, a0, ra
                  auipc        a3, 203536
                  and          gp, sp, zero
                  and          s7, tp, s5
                  sltu         s10, ra, t0
                  beq          gp, t6, 88f
                  blt          a2, t6, 96f
                  andi         t3, a5, -623
88:               srl          t4, ra, s0
                  sltiu        a2, a4, -1771
                  beq          t6, a0, 109f
                  andi         s4, s3, -216
                  andi         a1, s2, -106
                  blt          a4, zero, 107f
                  and          s3, gp, a3
                  andi         t4, gp, 720
96:               beq          t1, a3, 102f
                  sltiu        a4, a3, 1972
                  addi         t4, s2, 1742
                  xori         s7, a6, -1007
                  add          a0, s7, t4
                  xor          a1, a7, t5
102:              or           a0, s11, s5
                  bgeu         sp, zero, 110f
                  add          s4, t5, t3
                  beq          sp, s10, 107f
                  and          a7, a1, t4
107:              slti         s6, s6, -846
                  sltu         zero, s4, t1
109:              beq          tp, zero, 125f
110:              lui          s7, 677110
                  srai         s9, t0, 1
                  bltu         s11, t4, 127f
                  lui          t6, 49560
                  andi         s7, a0, -444
                  addi         s3, a0, -913
                  bgeu         s9, a2, 122f
                  beq          s3, t4, 132f
                  slti         a1, t0, -1809
                  sub          a2, sp, s7
                  sltiu        s8, t4, -1024
                  sltu         zero, a6, a4
122:              blt          s2, a6, 128f
                  addi         a4, gp, 171
                  slli         s10, t3, 7
125:              nop
                  sub          t4, t6, ra
127:              srl          t2, s3, a4
128:              bgeu         s7, s6, 147f
                  bge          a2, a7, 143f
                  ori          s4, t2, 546
                  auipc        t4, 901772
132:              sra          a1, s1, t0
                  andi         t0, t3, 657
                  sll          gp, t5, a2
                  bltu         t4, zero, 151f
                  bgeu         s1, s7, 151f
                  sltu         sp, a6, s4
                  and          sp, s2, t0
                  slt          ra, s10, t6
                  bltu         a7, t0, 142f
                  andi         tp, s3, -1915
142:              xori         a0, a4, -1546
143:              and          t6, t6, s2
                  xori         s7, s10, 1678
                  andi         s2, t1, 1295
                  srl          gp, a2, a3
147:              auipc        t2, 711714
                  beq          a7, gp, 150f
                  srl          t0, s2, t6
150:              blt          s8, s6, 156f
151:              blt          gp, t2, 158f
                  sltiu        ra, gp, -1921
                  beq          s2, a7, 156f
                  sltu         s6, t5, s9
                  srl          a3, ra, t5
156:              sll          a3, s5, t4
                  sltiu        a5, t3, 93
158:              xor          a3, zero, s0
                  srl          s8, a2, s3
                  sra          s5, a7, sp
                  bne          t3, a2, 167f
                  slli         gp, t1, 5
                  srai         a3, s9, 1
                  bne          a4, a4, 184f
                  bne          zero, zero, 180f
                  srl          t0, s9, tp
167:              srai         a3, t6, 18
                  lui          s6, 399420
                  addi         sp, s5, 1403
                  ori          s5, gp, 621
                  slli         t0, t2, 5
                  ori          a2, s3, 1751
                  or           a4, a7, s5
                  sltiu        a0, s11, 1890
                  andi         a2, a5, -585
                  blt          s5, t0, 181f
                  sltiu        a4, s6, 193
                  auipc        s1, 215110
                  slt          t3, s7, s8
180:              nop
181:              slti         s10, s10, -1036
                  srai         s2, s6, 6
                  slt          t4, s10, a3
184:              slt          s1, a7, t5
                  auipc        zero, 298108
                  sub          tp, a7, a0
                  srai         s8, s8, 16
                  sll          a7, t0, sp
                  and          gp, s1, s4
                  lui          s10, 359526
                  xor          s2, gp, t2
                  andi         t4, a2, 1145
                  and          sp, a2, s1
                  add          gp, a0, s5
                  add          a4, s0, s2
                  srai         t4, s2, 19
                  bgeu         a3, s0, 205f
                  sll          sp, s10, a0
                  sltu         t3, gp, s2
                  sltiu        ra, a1, 1565
                  sll          t4, s11, t6
                  bltu         a2, ra, 212f
                  ori          s3, gp, 1769
                  sll          a0, t4, s11
205:              and          t1, a7, s5
                  sll          s6, s3, t5
                  addi         sp, tp, -312
                  bgeu         s4, a5, 217f
                  beq          zero, t3, 225f
                  slti         a7, a2, 1283
                  slli         s6, tp, 27
212:              slti         t1, zero, -208
                  srli         s2, a6, 18
                  bgeu         t0, t3, 228f
                  nop
                  srli         s2, tp, 13
217:              auipc        zero, 574667
                  xori         tp, s4, 1
                  auipc        s11, 678623
                  addi         s3, t1, -157
                  sll          s2, gp, a0
                  sra          a1, ra, s10
                  srli         t6, s10, 14
                  auipc        t1, 383150
225:              bne          a6, s2, 233f
                  sra          s8, s1, tp
                  addi         ra, sp, 201
228:              bltu         t5, s4, 229f
229:              slt          s2, t6, t2
                  nop
                  or           tp, gp, sp
                  ori          s6, s8, -1163
233:              and          s4, t1, sp
                  srli         tp, s4, 17
                  sub          s9, t1, a4
                  auipc        s11, 197698
                  xori         tp, s11, 1089
                  slti         a1, s11, -794
                  xori         a0, sp, -938
                  xori         s5, s6, 693
                  srli         s6, t0, 17
                  or           a0, a4, a3
                  and          s8, s4, s3
                  bltu         s10, s6, 249f
                  ori          a4, s2, 372
                  slti         gp, s10, -166
                  sll          s9, s8, a1
                  blt          a1, t4, 251f
249:              slli         t6, t4, 18
                  ori          s6, s1, -2031
251:              addi         s9, s5, 1941
                  xor          ra, s2, a2
                  bltu         s6, zero, 268f
                  xori         s4, t3, 1293
                  sll          a2, t1, a5
                  lui          t4, 353771
                  srl          s6, t3, t6
                  bgeu         a4, s7, 273f
                  and          gp, s5, a4
                  slt          sp, a5, a5
                  bge          sp, a0, 262f
262:              sltu         a4, zero, s9
                  add          a4, t2, s4
                  and          s1, a2, s6
                  slt          a7, s3, s1
                  auipc        t4, 742856
                  srai         a4, s11, 25
268:              ori          t6, a6, 876
                  xori         s8, s1, -631
                  or           s2, s2, t1
                  xor          t0, t2, a2
                  sll          a5, a4, a7
273:              andi         s4, s3, 66
                  add          a3, s3, a0
                  lui          a2, 766229
                  bne          zero, ra, 282f
                  andi         s10, a3, -139
                  xor          t0, t0, s11
                  xori         zero, a6, -535
                  srai         t2, t4, 11
                  slli         s5, a6, 24
282:              auipc        a5, 748282
                  sltiu        t2, s7, -551
                  xori         s2, a3, 364
                  ori          zero, a1, -558
                  bgeu         a5, a5, 289f
                  xori         s2, s6, 254
                  bltu         gp, s8, 291f
289:              srai         ra, t0, 28
                  auipc        s7, 152728
291:              and          s3, s10, t1
                  la           s6, region_1+1442 #start riscv_load_store_rand_instr_stream_12
                  sra          s8, s7, t1
                  sltiu        a3, a5, 1372
                  addi         a4, a3, 747
                  sb           s0, 9(s6)
                  lb           s5, 5(s6)
                  sltu         a5, s0, t1
                  xori         t1, s0, 1232
                  lb           sp, 13(s6)
                  lbu          s8, 10(s6)
                  sub          a4, t5, ra
                  lbu          a0, -1(s6)
                  lb           gp, 6(s6)
                  sb           t5, 14(s6)
                  sb           a6, 5(s6)
                  ori          a0, a6, -1627
                  lbu          s9, -1(s6)
                  lb           ra, -11(s6)
                  and          a7, s7, a1
                  lhu          a2, -8(s6)
                  srli         s11, a1, 3
                  lhu          a5, -8(s6)
                  sb           a0, 15(s6)
                  sh           s1, 10(s6)
                  lh           s5, 14(s6)
                  or           s2, t5, s8
                  andi         s5, a0, 1071
                  slti         t6, sp, -538
                  srai         ra, a1, 11
                  xori         a5, s0, -382
                  lbu          a5, -14(s6)
                  sb           s8, -2(s6)
                  lbu          s10, 1(s6)
                  nop
                  lb           s5, 7(s6)
                  lw           t0, -10(s6)
                  sw           ra, 2(s6)
                  srai         t1, s3, 19
                  srl          s4, zero, gp
                  sb           t0, 3(s6)
                  sb           a3, -13(s6) #end riscv_load_store_rand_instr_stream_12
                  add          a5, ra, s1
                  la           sp, region_0+569 #start riscv_load_store_rand_instr_stream_5
                  sub          t6, s4, s11
                  slti         s11, a5, -319
                  lbu          t4, 242(sp)
                  sb           ra, -133(sp)
                  lb           s8, 245(sp)
                  sltiu        s9, a0, 1667
                  sra          s8, sp, s8
                  lb           t2, -250(sp)
                  xori         a4, sp, 479
                  and          a3, s0, t4
                  srl          s2, t6, zero
                  addi         a2, t1, -749
                  add          t6, zero, s3
                  ori          a0, t4, -587
                  add          gp, s7, s8
                  sb           s11, 158(sp)
                  lhu          t6, 203(sp)
                  add          s6, t6, s6
                  xor          s1, s0, a3
                  slli         ra, a5, 19
                  addi         t0, s11, -230
                  slt          s2, a4, s7
                  addi         a4, t0, 615
                  lbu          s8, -206(sp)
                  slti         s1, a6, 1403
                  sb           s0, -84(sp)
                  auipc        a1, 401363
                  sub          a5, s6, t2
                  sb           s7, 104(sp)
                  sb           s4, 38(sp)
                  lb           s1, 134(sp)
                  lbu          a3, -98(sp)
                  sb           s9, 41(sp)
                  xori         s4, a4, 497
                  sb           a6, -61(sp)
                  sub          t6, a2, t6
                  lb           s11, -140(sp)
                  add          s4, sp, tp
                  sb           s10, 34(sp)
                  srl          a7, ra, t2
                  sb           a4, 85(sp)
                  sll          ra, s2, s5
                  sltu         s7, ra, a7
                  lb           a7, 9(sp)
                  xori         s8, s10, 229
                  sltiu        a7, s8, 1971
                  lbu          s7, 246(sp) #end riscv_load_store_rand_instr_stream_5
                  bgeu         a1, a3, 299f
                  srli         a3, t0, 10
                  add          a4, s0, zero
                  bltu         a5, a7, 303f
                  blt          s11, a2, 303f
                  add          s10, s7, s11
299:              sll          t6, t3, s5
                  bne          s9, tp, 314f
                  lui          a4, 1046849
                  sll          ra, s0, t4
303:              and          a4, t4, s10
                  slti         s10, a3, -558
                  sra          zero, s9, tp
                  srli         t0, a6, 16
                  beq          t4, tp, 315f
                  srl          a1, s1, t1
                  slt          t1, ra, a5
                  add          s10, zero, zero
                  srli         a7, ra, 6
                  sll          a5, gp, s0
                  sll          t0, s3, sp
314:              bgeu         ra, a0, 329f
315:              bgeu         zero, t6, 320f
                  add          a1, a1, sp
                  blt          s8, a1, 333f
                  sltu         a5, t0, t3
                  nop
320:              sll          sp, s11, t3
                  srli         a3, s9, 27
                  nop
                  slli         zero, s8, 14
                  nop
                  bge          t0, t6, 328f
                  addi         a0, a6, -897
                  bgeu         s5, a5, 346f
328:              and          s7, s0, t6
329:              add          s1, t1, a2
                  bge          a0, gp, 332f
                  lui          s10, 1022525
332:              srl          s2, s2, s5
333:              add          t3, s0, s8
                  add          a4, a2, a4
                  sll          t0, a6, gp
                  blt          sp, a5, 346f
                  bltu         a0, s5, 352f
                  nop
                  sltiu        s5, s0, -246
                  andi         s2, t5, -697
                  or           s1, a0, t0
                  bgeu         a6, t0, 345f
                  bgeu         s0, gp, 344f
344:              slli         a5, s10, 19
345:              sll          a1, zero, s0
346:              sra          gp, s6, a7
                  slti         zero, s4, 516
                  and          ra, t6, s0
                  beq          sp, s5, 350f
350:              srai         a2, a0, 16
                  andi         a7, a5, 994
352:              slt          s4, zero, a2
                  xor          s2, s9, a6
                  blt          s10, s3, 363f
                  slli         s3, a1, 20
                  bne          s10, t3, 371f
                  xor          t4, a2, s3
                  slt          ra, s0, a7
                  srli         s2, zero, 7
                  andi         s11, ra, -362
                  bne          s6, tp, 381f
                  bne          t0, s0, 367f
363:              bltu         a4, s8, 365f
                  slt          a3, t6, t0
365:              or           a2, s9, sp
                  bgeu         t4, t0, 372f
367:              srli         a0, s2, 8
                  andi         s5, gp, -564
                  bltu         s6, t0, 384f
                  blt          s10, sp, 376f
371:              and          sp, s4, t0
372:              lui          t1, 923954
                  ori          t1, tp, -1365
                  or           s4, s7, a6
                  srli         t0, ra, 23
376:              sub          s5, t1, a5
                  auipc        a0, 1025434
                  xor          s9, s9, a6
                  bltu         s1, t5, 387f
                  bge          gp, t2, 386f
381:              sltu         ra, t1, s8
                  or           t6, a2, sp
                  srli         gp, a5, 15
384:              sltiu        t1, t0, -355
                  sltiu        tp, s8, 1719
386:              andi         s3, t2, 1530
387:              srl          s5, zero, zero
                  add          s3, s7, zero
                  sltu         gp, a2, a7
                  beq          s10, s0, 393f
                  and          s8, s8, t0
                  sltu         gp, s1, a6
393:              bltu         s0, a5, 396f
                  beq          ra, s10, 400f
                  sltiu        sp, ra, 1609
396:              srai         s10, a1, 20
                  bgeu         sp, a7, 411f
                  slt          s8, a7, a3
                  or           t6, t5, t5
400:              srl          s9, a4, s9
                  sltiu        s4, t5, 858
                  addi         t4, s2, 1571
                  andi         s1, t1, 691
                  add          s3, a2, a1
                  andi         s4, a2, 1480
                  sra          s10, t4, t4
                  ori          t0, a6, -55
                  xor          s2, s3, t0
                  andi         tp, a2, 1598
                  bne          a0, t6, 426f
411:              auipc        s7, 811931
                  or           s3, s10, s3
                  bgeu         t5, a2, 432f
                  andi         s6, a2, -1557
                  srli         t2, t4, 7
                  auipc        a5, 174781
                  srai         a3, a3, 11
                  blt          s3, ra, 438f
                  sll          s3, t2, s1
                  xori         zero, gp, -299
                  slti         s8, s9, -394
                  and          t4, gp, t0
                  sub          a4, a3, t5
                  srl          s4, t2, t1
                  addi         s9, t0, 481
426:              add          s10, ra, zero
                  sltu         s9, t3, a4
                  xori         gp, a3, -523
                  sltu         s1, tp, sp
                  nop
                  srai         s8, s10, 21
432:              blt          a3, t4, 440f
                  xori         t4, s2, 1524
                  sll          s9, sp, t4
                  lui          s9, 46892
                  sltu         t4, t2, t0
                  auipc        s11, 708354
438:              srl          a7, sp, sp
                  addi         t3, s6, 1377
440:              xori         tp, s2, 298
                  sub          a0, s10, s7
                  srl          s8, a6, s2
                  srl          s5, s6, s9
                  beq          s8, t6, 459f
                  bge          s1, s6, 453f
                  addi         s5, a0, -1569
                  nop
                  nop
                  or           s1, zero, s6
                  addi         t4, t3, 1349
                  or           s7, t4, a0
                  lui          s5, 316752
453:              ori          s9, s8, -623
                  nop
                  sll          a5, t1, a2
                  beq          a7, s1, 471f
                  sra          t1, s3, a4
                  xori         s7, s6, 206
459:              or           a1, t4, tp
                  srai         t3, s7, 5
                  srl          t4, a1, a2
                  bltu         s11, t5, 465f
                  xori         s7, t3, 2040
                  sltiu        a2, t5, 1738
465:              auipc        s6, 225122
                  auipc        s11, 950849
                  bne          t0, t2, 481f
                  andi         s10, t3, 934
                  beq          gp, s2, 470f
470:              beq          s3, s11, 473f
471:              slt          a5, s0, t0
                  sub          tp, s0, s10
473:              sltiu        sp, a0, 294
                  andi         s4, s0, -699
                  bne          sp, t1, 491f
                  sll          s7, zero, s6
                  and          a4, a1, s10
                  sra          t6, s8, gp
                  sltiu        a5, a0, -1435
                  slli         s4, a5, 31
481:              sra          t6, sp, s9
                  blt          zero, a6, 497f
                  slt          s7, t2, gp
                  bge          zero, zero, 498f
                  blt          s3, t3, 492f
                  andi         a7, ra, -1920
                  bgeu         a1, s1, 493f
                  auipc        s7, 841998
                  andi         s3, t2, 1467
                  lui          a0, 55588
491:              sra          a3, s1, a6
492:              xor          s2, t0, a0
493:              bne          t5, s9, 499f
                  bltu         s2, t2, 497f
                  beq          t2, gp, 511f
                  or           t1, s2, t6
497:              addi         t6, s8, -101
498:              addi         t2, a7, -2043
499:              slli         s4, sp, 3
                  srl          a7, s1, sp
                  srai         s11, s1, 12
                  sll          a7, s6, s6
                  sltu         s1, t2, t0
                  bne          s6, a3, 509f
                  auipc        gp, 932151
                  sub          s1, a2, s5
                  sltiu        gp, t5, 598
                  bne          a5, t3, 517f
509:              srai         s1, s11, 3
                  add          a7, a0, a7
511:              or           a7, s7, ra
                  srli         a1, a7, 22
                  sll          s1, t2, a1
                  xori         a3, tp, 1973
                  slti         s3, t5, -1940
                  slli         a2, s6, 7
517:              sltiu        sp, t4, -123
                  sltiu        tp, s10, 870
                  and          s8, s11, a2
                  sltiu        t0, t1, -903
                  srli         s7, zero, 1
                  sll          a0, s4, s11
                  lui          t6, 787300
                  or           t6, s11, s9
                  slti         a2, s0, -551
                  bne          a6, s11, 536f
                  xor          t3, s9, s7
                  auipc        sp, 653963
                  sub          s1, s2, s11
                  and          t2, s8, s10
                  srl          s11, s8, s2
                  srai         s11, t5, 13
                  nop
                  bne          t2, s1, 540f
                  srai         s11, s10, 16
536:              beq          s10, t1, 542f
                  sltu         a4, t6, s8
                  sub          t4, s0, s5
                  slli         s3, s2, 1
540:              sra          tp, zero, tp
                  sra          a2, s0, s10
542:              add          s5, a2, s7
                  srai         sp, tp, 19
                  srai         s5, s1, 19
                  xori         a0, s2, -1077
                  or           s1, s9, a2
                  blt          s11, t3, 548f
548:              xor          s1, t3, t2
                  srl          s3, s9, s5
                  srai         gp, s7, 13
                  sll          a7, a0, t5
                  nop
                  xor          ra, t4, t4
                  addi         s1, zero, 1374
                  srai         s4, s8, 13
                  lui          gp, 65128
                  srl          t0, t1, a7
                  addi         t2, t2, -1278
                  sltiu        s5, tp, -406
                  bne          s11, t5, 563f
                  bge          s2, t5, 566f
                  lui          t3, 70440
563:              addi         a7, s1, -381
                  auipc        t4, 918465
                  add          sp, t5, s3
566:              addi         s10, s9, -1976
                  lui          t3, 214255
                  bltu         s1, s4, 583f
                  srai         zero, tp, 18
                  slli         t4, a7, 29
                  sra          t1, ra, a1
                  blt          t6, a3, 578f
                  andi         a4, a5, 125
                  srai         s3, t0, 15
                  ori          s1, s0, -1505
                  and          sp, a3, s2
                  add          sp, a4, s2
578:              srl          a2, s4, a4
                  slli         s7, s4, 20
                  slti         s4, a7, 893
                  slli         a0, s3, 22
                  srai         a4, gp, 16
583:              or           s11, t3, t1
                  beq          t0, s0, 586f
                  and          gp, s10, s5
586:              bgeu         s6, s5, 588f
                  sra          a4, a3, t6
588:              addi         t2, t5, -1311
                  lui          t1, 733900
                  sll          t4, t2, gp
                  srai         s3, s1, 13
                  sltiu        a2, s0, 866
                  srl          s2, sp, sp
                  or           ra, a5, sp
                  bltu         s8, gp, 614f
                  auipc        a1, 58567
                  bne          t2, s4, 602f
                  bne          t2, t2, 601f
                  bge          t6, s10, 605f
                  srli         s2, ra, 11
601:              add          s9, s6, a0
602:              bltu         a5, zero, 603f
603:              nop
                  bge          s6, t4, 612f
605:              bltu         s10, a7, 608f
                  and          a5, a5, s8
                  ori          a5, sp, 1401
                  la           tp, region_0+288 #start riscv_load_store_rand_instr_stream_13
                  nop
                  sll          a7, tp, t0
                  slti         gp, s3, 140
                  slli         t0, t3, 18
                  srl          s3, t3, a4
                  lb           t3, 1181(tp)
                  sra          a2, t2, s8
                  lh           s9, 788(tp)
                  lbu          gp, 543(tp)
                  lb           s4, 628(tp)
                  lw           s4, -12(tp)
                  sb           s4, 1674(tp)
                  lbu          t6, 491(tp)
                  lhu          t6, 1330(tp)
                  lb           s7, 386(tp)
                  srl          ra, t4, s0
                  ori          t3, a3, -1195
                  sb           t4, 1237(tp)
                  lbu          t6, 1310(tp)
                  lh           ra, 1354(tp)
                  sb           t6, 395(tp)
                  sb           s4, 1220(tp)
                  xor          a4, t3, ra
                  lb           gp, 1366(tp)
                  sh           s11, 970(tp)
                  lb           ra, 890(tp)
                  lui          gp, 505034
                  lb           s5, 423(tp)
                  lh           a2, 860(tp)
                  sh           a2, 1670(tp) #end riscv_load_store_rand_instr_stream_13
608:              srli         a2, s6, 24
                  auipc        s11, 1012174
                  andi         t4, t0, -1833
                  ori          a3, tp, 585
612:              auipc        t4, 404636
                  or           zero, s10, t4
614:              srai         zero, gp, 21
                  auipc        s9, 277539
                  nop
                  addi         a7, tp, -1860
                  or           a2, gp, t5
                  sll          ra, t5, a6
                  bne          t3, t5, 635f
                  bge          t3, a3, 637f
                  sra          s7, a2, s11
                  andi         s5, s0, -36
                  nop
                  bgeu         a7, s1, 634f
                  slt          a1, t4, s4
                  bge          s5, t5, 632f
                  or           s8, s10, s8
                  sltiu        t3, s1, 219
                  bge          s11, t5, 636f
                  lui          s7, 4422
632:              bge          a6, t6, 633f
633:              bltu         a2, s3, 636f
634:              sub          t2, a7, a3
635:              add          t4, tp, t1
636:              blt          a4, a3, 642f
637:              xor          a5, a4, sp
                  bne          s5, a2, 653f
                  bge          s8, s3, 655f
                  srl          s7, a2, t2
                  sra          a1, ra, s0
642:              beq          t2, a6, 648f
                  and          t6, a2, a3
                  lui          a7, 871026
                  xor          zero, s10, a4
                  or           s8, s5, gp
                  auipc        s2, 6813
648:              auipc        t1, 1031182
                  xor          a0, t2, a1
                  andi         s3, s10, 310
                  bge          sp, sp, 665f
                  srai         sp, gp, 14
653:              sltu         s2, t2, t1
                  srli         t1, a6, 26
655:              sltiu        s7, s9, 733
                  and          a1, s9, a5
                  add          t4, s7, a6
                  sltiu        t3, gp, -1290
                  slli         t0, a1, 16
                  beq          s6, ra, 675f
                  lui          a4, 428732
                  bge          s10, t3, 669f
                  beq          a4, s1, 677f
                  bge          a3, a7, 670f
665:              sltu         sp, zero, sp
                  slt          a0, s5, a5
                  bne          zero, s0, 669f
                  add          t6, s3, t6
669:              blt          a1, sp, 671f
670:              srai         t4, s3, 29
671:              srl          s10, gp, a5
                  nop
                  xor          s4, ra, s4
                  srl          t6, s7, s6
675:              slti         s1, a6, -1506
                  slli         gp, s2, 24
677:              srli         s11, s9, 22
                  bgeu         gp, s8, 693f
                  bltu         ra, s4, 682f
                  slli         s6, a3, 2
                  slti         s5, t4, -707
682:              sra          s1, ra, s5
                  bgeu         t4, s5, 703f
                  nop
                  nop
                  bge          s0, sp, 694f
                  blt          t5, s5, 697f
                  bltu         s5, sp, 703f
                  bgeu         s7, t2, 694f
                  bge          gp, t0, 704f
                  slt          a5, s8, t6
                  bge          s2, a0, 694f
693:              beq          s8, s10, 709f
694:              bltu         s8, a1, 713f
                  bge          sp, s11, 703f
                  xor          a1, a5, t0
697:              andi         sp, s0, 830
                  sltiu        t3, a1, 904
                  srli         s2, a3, 25
                  slti         sp, s8, -1545
                  sub          s6, zero, t3
                  sra          a2, a0, s2
703:              blt          s7, a3, 717f
704:              xori         s10, t1, 1093
                  slt          s4, a6, s2
                  bltu         t4, s11, 715f
                  lui          s11, 207860
                  or           gp, sp, s6
709:              sll          s10, s4, ra
                  addi         s6, t5, 1379
                  bne          a5, a7, 712f
712:              sub          t1, s10, tp
713:              beq          s1, s5, 715f
                  bltu         s8, zero, 729f
715:              srai         t0, sp, 24
                  slt          s10, s10, a0
717:              bltu         t0, s11, 737f
                  auipc        s5, 1039314
                  bltu         a6, s6, 720f
720:              bge          tp, a3, 735f
                  slti         tp, s1, 249
                  and          a5, s10, zero
                  slt          s4, a6, tp
                  sltiu        a2, a6, -1107
                  andi         a5, s0, 176
                  and          a2, a4, t1
                  blt          a2, tp, 737f
                  sltu         a2, t5, t5
729:              slli         t0, t4, 16
                  bltu         a4, a1, 733f
                  sub          s3, gp, tp
                  ori          a5, t6, -1473
733:              blt          s0, t6, 739f
                  sltu         a0, s5, s0
735:              andi         t0, s11, -29
                  addi         s6, t4, -1209
737:              slli         s8, s7, 7
                  sub          a1, a6, a6
739:              srli         a0, s11, 29
                  sub          s9, tp, s5
                  sll          s8, s9, a4
                  slli         t4, s4, 30
                  srai         s2, s1, 2
                  srli         a5, sp, 20
                  srl          a7, t4, s10
                  bgeu         s9, t3, 761f
                  slti         a7, s5, 1999
                  srl          s8, a4, a4
                  andi         s9, t1, -1798
                  srl          a1, tp, a0
                  ori          a2, ra, 939
                  nop
                  sub          t0, ra, tp
                  xor          s4, a2, a2
                  sltiu        s2, s0, 1945
                  srli         a1, s4, 0
                  xori         t3, s7, 885
                  bne          s10, s0, 766f
                  sltiu        s11, s1, -1391
                  sll          t6, s6, a5
761:              xor          s11, t5, s2
                  xor          s6, a5, tp
                  xori         tp, s1, -456
                  srli         s11, a5, 0
                  srl          a1, s7, a3
766:              lui          t2, 216686
                  bne          a5, ra, 773f
                  bge          t5, a3, 771f
                  nop
                  ori          a2, s9, -644
771:              sltiu        sp, sp, -1587
                  sub          a1, a0, tp
773:              andi         s9, gp, -1606
                  ori          t0, s8, -1699
                  bne          s6, s1, 782f
                  xor          a4, s11, t5
                  nop
                  nop
                  bgeu         t0, s1, 782f
                  nop
                  auipc        s11, 509680
782:              blt          t1, zero, 787f
                  and          s8, t1, t0
                  bne          zero, s10, 787f
                  bge          s8, s5, 791f
                  lui          a7, 471188
787:              bne          s11, t2, 803f
                  addi         s6, a4, 835
                  blt          s11, tp, 795f
                  srl          ra, a1, a6
791:              sltiu        s2, a2, -375
                  addi         s3, t2, -1176
                  ori          gp, s8, 1138
                  nop
795:              andi         a4, s5, 1878
                  bge          s6, s2, 802f
                  bltu         t1, s0, 799f
                  sub          a1, a3, s9
799:              bgeu         s8, t0, 813f
                  sltiu        s8, s2, 1660
                  slt          s4, a4, s2
802:              or           zero, a7, zero
803:              bgeu         a3, t0, 818f
                  ori          s9, t1, -1843
                  beq          a7, a2, 811f
                  andi         s5, t2, 303
                  xor          a3, a5, t2
                  bge          a7, a6, 816f
                  xor          s8, t3, t3
                  lui          t1, 434790
811:              andi         zero, t4, 1790
                  sltiu        t1, ra, -849
813:              and          s8, t3, a5
                  sltu         sp, s8, tp
                  beq          s3, t2, 831f
816:              beq          a0, s0, 825f
                  bgeu         a3, s9, 832f
818:              or           tp, ra, a6
                  xor          s10, a0, s7
                  srli         a1, s11, 20
                  andi         a1, t4, -1530
                  add          s6, s0, s1
                  srl          zero, s0, s3
                  andi         zero, s4, -14
825:              blt          t3, t1, 830f
                  sltiu        gp, s11, -160
                  and          ra, a1, t2
                  andi         t3, t6, 259
                  slti         a4, s1, -1396
830:              sub          t4, a3, a4
831:              srl          t2, a1, t6
832:              blt          s3, t0, 833f
833:              sltiu        s7, t3, -769
                  srai         s7, t4, 15
                  bne          s2, s4, 841f
                  sub          zero, sp, s5
                  bgeu         s11, s9, 842f
                  addi         s5, s3, -697
                  bltu         a0, s1, 846f
                  sltu         a1, a0, t0
841:              ori          a0, s7, -825
842:              xori         s7, sp, 382
                  addi         a7, ra, 1144
                  srli         t1, s2, 4
                  sub          a2, t5, a2
846:              slli         s11, gp, 8
                  nop
                  bne          a3, s2, 868f
                  ori          t1, a7, 41
                  nop
                  blt          s0, s9, 857f
                  andi         a5, tp, -1293
                  or           s2, s2, t5
                  sll          gp, a4, zero
                  bne          a3, gp, 865f
                  srli         a0, a7, 28
857:              nop
                  andi         a5, s1, -1091
                  blt          t5, s8, 862f
                  sll          s5, s6, t3
                  andi         s9, sp, -1006
862:              blt          a6, t2, 865f
                  lui          t1, 235538
                  xor          s11, s6, s11
865:              add          t2, a4, s8
                  bne          s10, a6, 874f
                  beq          zero, zero, 873f
868:              srli         gp, t6, 28
                  nop
                  slti         s2, zero, -1233
                  nop
                  srai         s10, t6, 1
873:              xor          ra, zero, a4
874:              auipc        a1, 243369
                  and          a0, s7, s7
                  bge          a3, t0, 890f
                  bge          a7, a2, 892f
                  lui          t2, 293486
                  beq          a4, s2, 885f
                  bne          s1, s1, 882f
                  blt          t5, t3, 897f
882:              slti         s2, a3, 818
                  slli         a3, a1, 16
                  bgeu         gp, gp, 887f
885:              sltiu        a0, ra, 1346
                  slti         s4, t3, 1548
887:              xor          s7, tp, s4
                  bgeu         a3, a1, 889f
889:              add          t6, s10, s9
890:              slti         a5, t0, -351
                  nop
892:              xori         s11, t2, -1905
                  srai         s11, a6, 14
                  lui          t1, 317887
                  bltu         ra, a5, 898f
                  sll          s3, sp, s5
897:              sltu         s5, s8, t6
898:              sll          s6, t0, s11
                  add          s9, a7, s2
                  add          s1, t5, t4
                  xori         a4, s5, 116
                  auipc        s9, 1013826
                  sra          tp, a1, s11
                  slti         s1, a0, -1671
                  bge          s8, tp, 924f
                  and          t1, a2, s6
                  bgeu         a0, t1, 922f
                  slti         gp, t6, 43
                  slti         a4, sp, 35
                  addi         s8, s8, -721
                  addi         t3, t6, 979
                  auipc        t2, 32978
                  add          a5, a7, a2
                  xor          a2, sp, t2
                  sub          ra, t5, a5
                  slti         zero, gp, 1847
                  nop
                  or           t4, a3, sp
                  sltiu        s1, tp, -14
                  and          sp, t6, t0
                  slli         s2, s10, 21
922:              ori          s6, t2, -1484
                  xori         s6, gp, -1980
                  la           t0, region_1+1344 #start riscv_load_store_rand_instr_stream_8
                  xori         a0, s10, -1313
                  lb           s6, -243(t0)
                  lb           t3, -101(t0)
                  auipc        a5, 640194
                  sb           tp, -204(t0)
                  andi         t6, s9, 675
                  lbu          t1, -153(t0)
                  sb           a6, -141(t0)
                  lb           a7, 181(t0)
                  lbu          s10, -131(t0)
                  auipc        s2, 943356
                  lbu          s7, -198(t0)
                  and          t6, a2, s6
                  lb           s2, -35(t0)
                  lb           t3, -227(t0)
                  sll          s7, s7, a6
                  lbu          ra, -246(t0)
                  sll          s5, zero, t4
                  slti         s11, s8, 173
                  lb           s8, 80(t0)
                  lhu          s8, -84(t0)
                  lhu          t6, 38(t0)
                  add          s10, zero, sp
                  lbu          s7, 141(t0)
                  add          s10, s1, s6
                  lw           s3, -156(t0)
                  sw           s2, -44(t0)
                  sb           ra, -72(t0)
                  sra          a0, s6, zero
                  sb           gp, -242(t0)
                  lhu          s6, -162(t0)
                  or           a0, s11, a3
                  lb           a0, 22(t0)
                  sll          a5, t0, t0
                  lh           t1, -88(t0) #end riscv_load_store_rand_instr_stream_8
924:              nop
                  slti         a0, t4, -520
                  slti         s1, t4, -1902
                  andi         s10, zero, -1004
                  ori          s2, s4, -413
                  slti         zero, t3, 598
                  addi         s6, a3, 1120
                  ori          sp, t5, -1571
                  sub          sp, t2, t4
                  srl          a5, t0, a6
                  lui          tp, 313894
                  auipc        sp, 916981
                  xori         t0, s8, -399
                  sltiu        t6, s2, 1159
                  slli         sp, t2, 15
                  xor          s9, t4, tp
                  sll          t0, s2, t4
                  bne          sp, a0, 961f
                  bltu         a1, s7, 951f
                  bne          a7, s9, 946f
                  slli         s5, t6, 3
                  sltiu        a2, t0, -168
946:              slti         a0, a1, -1238
                  slti         s11, tp, -1828
                  sltiu        s3, a3, 1670
                  ori          a3, t4, -1510
                  sll          s4, a3, s10
951:              blt          t4, s6, 957f
                  add          t2, s8, s6
                  sltiu        s1, a1, -140
                  andi         s3, a4, -1005
                  ori          a4, t2, 1366
                  sll          s8, s10, s1
957:              lui          s2, 241252
                  lui          gp, 122649
                  sub          s7, t5, a0
                  sll          s6, a7, s11
961:              nop
                  addi         a2, a7, 1542
                  bne          s4, s6, 965f
                  lui          s5, 607364
965:              bltu         s4, s2, 971f
                  sltiu        t2, t4, -215
                  srl          s8, t3, s2
                  bgeu         gp, gp, 987f
                  ori          a0, gp, -874
                  sll          a7, s9, a1
971:              srli         a7, s7, 5
                  slti         a1, t2, -1936
                  ori          s3, s8, -39
                  nop
                  addi         s8, a5, -1028
                  bge          a0, a2, 981f
                  bne          s11, a3, 983f
                  bgeu         a4, s0, 993f
                  srli         s1, a3, 24
                  sltiu        t6, a3, 1655
981:              auipc        t1, 761350
                  addi         s10, ra, 2006
983:              beq          a0, s11, 989f
                  bge          a1, a6, 998f
                  lui          t1, 106477
                  sltu         tp, s9, s0
987:              bne          t6, a3, 993f
                  sltiu        s1, a0, 2040
989:              and          t1, sp, a0
                  slti         a1, ra, -328
                  slli         s6, a0, 1
                  or           a4, s3, t2
993:              ori          t1, tp, -1244
                  sltiu        s4, t4, -1291
                  and          a5, s1, s4
                  bgeu         a2, a2, 1012f
                  srli         s7, s11, 11
998:              addi         s5, s8, -269
                  sra          a2, t0, a3
                  or           zero, a4, gp
                  bltu         s7, s1, 1009f
                  bne          a5, t2, 1005f
                  lui          s10, 126970
                  andi         zero, ra, -256
1005:             beq          t3, t5, 1020f
                  sub          a2, s10, s10
                  xor          t6, a1, s0
                  bgeu         s6, ra, 1023f
1009:             nop
                  beq          a3, tp, 1018f
                  slti         sp, s8, -568
1012:             and          s1, a3, s7
                  srli         tp, a6, 3
                  lui          tp, 392801
                  beq          s5, s11, 1025f
                  addi         t2, s8, -960
                  bge          ra, s2, 1024f
1018:             slli         a1, a4, 20
                  bltu         ra, t0, 1033f
1020:             bltu         a1, t0, 1021f
1021:             ori          s10, a1, 791
                  sra          s6, s4, s2
1023:             sra          a7, s4, s11
1024:             bne          s5, s2, 1040f
1025:             add          s2, s0, gp
                  xor          t1, s7, s1
                  sltiu        t1, a3, 749
                  beq          a0, s11, 1029f
1029:             sltiu        sp, a6, 1946
                  sll          t4, s11, sp
                  sltu         a5, s9, s8
                  or           a2, a6, tp
1033:             xor          a5, a6, a0
                  sltu         sp, t2, s1
                  srai         s9, a3, 20
                  addi         s10, tp, -295
                  sra          s2, t4, s3
                  andi         sp, a3, 1175
                  and          s10, t2, sp
1040:             bltu         t5, t4, 1043f
                  or           a5, sp, a5
                  auipc        s9, 990815
1043:             and          s8, a3, s6
                  slt          a2, t3, t2
                  beq          s9, a1, 1050f
                  slti         a2, s9, -786
                  blt          s8, s9, 1050f
                  beq          t1, s7, 1050f
                  srli         a5, a6, 16
1050:             or           s4, s6, s3
                  bgeu         ra, s4, 1066f
                  srl          s10, s7, tp
                  ori          sp, a2, 2009
                  sltiu        a0, t4, 1751
                  blt          t5, a1, 1069f
                  addi         s11, t6, -1606
                  and          gp, a4, s8
                  srai         a7, a0, 11
                  addi         tp, a7, 541
                  add          ra, s4, s8
                  sra          s5, s11, t5
                  xor          a4, a0, t2
                  and          s2, s1, s1
                  sltiu        a5, s2, 2004
                  sltu         s8, t5, a5
1066:             blt          s11, s8, 1072f
                  addi         s9, a5, 344
                  nop
1069:             xori         a0, a1, 936
                  sub          a3, a5, s6
                  andi         tp, s8, 1940
1072:             srai         s10, zero, 30
                  or           zero, a2, t6
                  bge          s11, s8, 1090f
                  bge          t0, t6, 1081f
                  slti         s9, a7, -1111
                  andi         s6, a0, 291
                  slli         s7, t6, 11
                  ori          t4, a6, -1901
                  or           ra, t5, s10
1081:             xori         s2, a5, 1603
                  bge          s1, a7, 1085f
                  sub          s1, ra, a4
                  or           s5, a3, s6
1085:             srli         t2, a4, 12
                  slti         zero, a7, 1226
                  srl          tp, a3, s1
                  slli         a3, t2, 26
                  ori          a3, a0, 1238
1090:             srl          s1, s0, s8
                  bgeu         s1, gp, 1099f
                  blt          t5, s6, 1094f
                  bgeu         t4, ra, 1112f
1094:             bne          tp, s10, 1110f
                  addi         s9, s3, -495
                  blt          a4, s7, 1101f
                  or           s8, t3, tp
                  lui          ra, 709719
1099:             srai         a7, ra, 9
                  bne          s9, t2, 1101f
1101:             slt          a4, s0, t1
                  bgeu         s1, t0, 1108f
                  sll          s9, t0, s8
                  lui          a7, 82089
                  addi         tp, t3, 1906
                  beq          s7, t4, 1107f
1107:             auipc        a7, 779292
1108:             auipc        gp, 155613
                  slt          tp, t1, t0
1110:             sll          t3, t3, s11
                  slli         s5, s10, 26
1112:             addi         a1, s9, -1364
                  srli         s2, t2, 4
                  xori         a7, sp, 1840
                  bltu         s8, s3, 1122f
                  blt          s1, t2, 1122f
                  xori         t0, t2, 164
                  sll          zero, t5, s6
                  nop
                  bne          t4, zero, 1122f
                  bne          a3, t4, 1130f
1122:             slli         a7, t4, 15
                  srai         a4, s6, 25
                  addi         t1, tp, 1272
                  sltiu        tp, a3, 51
                  srli         t6, zero, 18
                  sra          s1, s4, a2
                  slli         s10, s6, 23
                  nop
1130:             sltu         a5, a1, gp
                  sll          t4, s7, a7
                  bne          a0, a4, 1135f
                  xori         gp, s5, 659
                  nop
1135:             bge          a1, a4, 1149f
                  andi         t1, t2, 1267
                  srai         s3, s8, 14
                  ori          t2, a4, -980
                  bne          t6, s7, 1142f
                  bltu         s5, s10, 1150f
                  nop
1142:             addi         t6, gp, -1540
                  sltu         s11, t2, a1
                  sltiu        s7, a6, 975
                  sltu         s3, t4, ra
                  bltu         s1, s8, 1151f
                  add          s7, zero, ra
                  srai         gp, t0, 19
1149:             add          a5, s5, zero
1150:             bne          a7, t2, 1153f
1151:             bltu         t3, gp, 1166f
                  slti         a5, sp, -1374
1153:             sub          s9, a7, a2
                  sub          t4, gp, t0
                  slt          s11, s1, t4
                  sll          t4, sp, t0
                  beq          t2, a0, 1177f
                  sra          s8, a6, s9
                  add          a5, zero, s9
                  lui          a0, 766490
                  lui          s7, 684694
                  andi         t6, a7, 1687
                  andi         a0, t5, 1908
                  slt          s10, t4, gp
                  ori          zero, zero, -483
1166:             sll          s4, tp, ra
                  sub          t1, t6, s5
                  bltu         t2, s0, 1183f
                  slli         ra, zero, 23
                  slli         s8, t5, 22
                  andi         s5, s2, 804
                  andi         sp, gp, -2020
                  beq          s1, s4, 1188f
                  sll          a5, s8, a6
                  slt          sp, t2, t4
                  and          zero, gp, s9
1177:             ori          t4, t0, -1564
                  xor          ra, sp, t4
                  nop
                  bne          s10, a3, 1195f
                  sub          a1, t2, t4
                  sltiu        a7, a3, -1416
1183:             auipc        a5, 136486
                  addi         t3, tp, -594
                  xor          a2, t2, tp
                  add          a3, t1, s10
                  blt          a2, t4, 1193f
1188:             lui          tp, 744546
                  ori          s8, t1, -1378
                  ori          s5, t4, -1825
                  slti         s3, a7, 780
                  sltu         s2, s9, sp
1193:             add          t3, a0, t2
                  andi         a0, a1, -73
1195:             beq          s2, a4, 1203f
                  xor          a4, tp, a5
                  bgeu         t4, t0, 1204f
                  bne          s8, t3, 1213f
                  or           a5, zero, s11
                  bgeu         s1, t2, 1216f
                  auipc        a5, 483232
                  sra          t0, s8, zero
1203:             sltu         sp, a1, s9
1204:             xori         t4, t4, 1910
                  sltu         s2, a0, gp
                  sltu         s3, t0, s9
                  and          s5, s1, t1
                  nop
                  or           a1, t3, t1
                  nop
                  sltu         zero, s10, a4
                  beq          a5, s11, 1213f
1213:             slti         s9, t6, -288
                  nop
                  sltiu        t3, t3, 354
1216:             sltiu        ra, t2, 235
                  slli         a2, a0, 1
                  sll          t0, a4, s6
                  slli         zero, t2, 10
                  sub          gp, s0, a3
                  andi         s5, tp, -581
                  addi         a2, s6, -1771
                  bne          s7, s6, 1229f
                  andi         t6, s5, 1155
                  auipc        a0, 898401
                  bltu         t6, s11, 1227f
1227:             blt          sp, s2, 1230f
                  bge          sp, sp, 1238f
1229:             bge          a7, a3, 1237f
1230:             srli         t1, t5, 28
                  slti         t4, s9, -1821
                  ori          a4, a7, -650
                  slli         t3, a1, 4
                  andi         t6, a3, -594
                  andi         a3, s11, -1553
                  slti         t6, ra, -1394
1237:             beq          a1, s4, 1243f
1238:             bge          a2, s5, 1244f
                  sltu         a5, zero, a5
                  add          s1, ra, sp
                  ori          t4, gp, 814
                  sub          s4, a6, t4
1243:             ori          s7, a0, -574
1244:             srai         t3, a6, 0
                  blt          s1, s10, 1265f
                  slli         s4, a7, 31
                  bgeu         s1, s11, 1262f
                  srai         t3, s10, 8
                  bltu         t1, s0, 1251f
                  slli         t4, s8, 28
1251:             slt          t1, s11, t6
                  slti         ra, s7, -1392
                  sll          t1, s7, t3
                  srli         a7, sp, 1
                  beq          t3, ra, 1274f
                  auipc        t1, 268605
                  srl          t4, sp, t5
                  or           s2, s9, a1
                  bne          a5, a4, 1265f
                  and          a3, a1, sp
                  and          a4, a1, t0
1262:             sll          zero, t5, a0
                  srli         t3, s11, 14
                  nop
1265:             add          a2, a2, s7
                  srai         t4, a1, 9
                  srl          t1, t1, t3
                  xor          t6, t2, s4
                  slti         ra, t5, -1746
                  bltu         t4, t2, 1276f
                  srai         s9, a6, 22
                  or           t2, zero, a4
                  add          s6, t6, a2
1274:             xor          t2, a0, s0
                  auipc        s9, 1163
1276:             bgeu         a0, a0, 1291f
                  sltu         t0, s11, s1
                  xor          s3, tp, a7
                  andi         sp, tp, 330
                  slt          s2, gp, t1
                  sltu         t1, a2, zero
                  sll          tp, s3, zero
                  add          a5, t5, a4
                  sll          gp, t5, s7
                  beq          s9, s3, 1293f
                  andi         t6, t5, -534
                  ori          t4, s0, 72
                  andi         tp, s8, 776
                  xori         tp, ra, -1777
                  beq          s5, s11, 1295f
1291:             slti         s7, t0, 461
                  sltiu        a4, a3, -1541
1293:             add          s3, s6, gp
                  blt          t1, a5, 1310f
1295:             ori          gp, s9, 864
                  slt          a0, sp, s11
                  sub          s3, a5, s2
                  sltu         t4, s11, s6
                  sltiu        zero, gp, -1332
                  lui          t6, 614221
                  sltu         s5, t6, s5
                  addi         s5, a5, -97
                  addi         s8, s0, 813
                  srl          a1, sp, s6
                  slti         s7, a6, 1372
                  slti         t3, t1, -1820
                  srl          s4, s9, s11
                  slti         tp, gp, 2018
                  sub          a7, a4, tp
1310:             srli         gp, s8, 26
                  sltu         s4, ra, t3
                  nop
                  andi         t4, s0, -122
                  bltu         s9, t6, 1317f
                  blt          a4, s0, 1324f
                  slli         a2, s7, 18
1317:             sltiu        tp, t4, 1731
                  bge          a4, t6, 1332f
                  auipc        a2, 864745
                  sra          s8, s3, sp
                  bltu         zero, s11, 1336f
                  beq          a7, a4, 1324f
                  xori         zero, s11, 875
1324:             slt          s11, s8, t3
                  slti         s4, s7, -1609
                  slli         ra, s2, 7
                  srli         s11, a5, 14
                  beq          s8, t1, 1331f
                  slt          s3, a0, a6
                  srli         s7, s7, 24
1331:             bgeu         s2, a5, 1345f
1332:             slti         a2, ra, -1059
                  bltu         t5, s8, 1338f
                  slli         t0, s3, 23
                  lui          s3, 102329
1336:             sltiu        s10, a2, 968
                  auipc        s5, 147894
1338:             blt          a1, a1, 1341f
                  nop
                  add          a2, gp, t1
1341:             lui          a3, 958113
                  bgeu         s1, s10, 1348f
                  blt          t4, t6, 1358f
                  beq          s0, s2, 1347f
1345:             or           ra, a6, s3
                  addi         t1, t4, -1048
1347:             bltu         a2, s11, 1356f
1348:             andi         t1, a2, 398
                  andi         t4, s5, 1622
                  bltu         t1, a2, 1356f
                  beq          t5, s6, 1361f
                  beq          t0, zero, 1355f
                  slt          a5, ra, t3
                  bne          t5, s8, 1361f
1355:             beq          a0, a2, 1369f
1356:             auipc        s3, 453760
                  ori          s1, s10, 1552
1358:             auipc        s6, 994984
                  sll          s10, s1, s5
                  and          a7, t1, t4
1361:             andi         s6, a0, -554
                  andi         t2, a0, -821
                  andi         a2, t1, 1495
                  sltiu        s6, s2, -1360
                  bne          sp, t3, 1370f
                  srli         a1, s7, 18
                  lui          a1, 338515
                  xori         t0, s2, 591
1369:             xor          tp, s1, a5
1370:             or           t0, s7, s1
                  slti         s6, gp, -1651
                  bge          t6, t5, 1377f
                  sra          a7, s3, s2
                  srli         s7, t5, 15
                  blt          a7, a6, 1390f
                  ori          sp, s3, 1391
1377:             and          t6, ra, a2
                  bgeu         t3, a3, 1386f
                  nop
                  srl          a3, t4, sp
                  srli         s5, s8, 19
                  bne          t1, s1, 1385f
                  addi         s3, a6, 297
                  and          a1, t6, a4
1385:             sltiu        s2, a5, -1000
1386:             slli         gp, s5, 22
                  sll          s10, s11, t4
                  bgeu         a4, s3, 1389f
1389:             lui          zero, 985495
1390:             andi         ra, sp, 1659
                  sub          s5, s11, t2
                  slti         a0, s2, -458
                  xor          s4, tp, a2
                  add          s7, ra, s5
                  slt          s7, s2, s0
                  xori         a5, s10, 1866
                  sltu         s5, s8, s4
                  sub          ra, t3, zero
                  beq          ra, s2, 1405f
                  sltu         t6, s4, s1
                  slli         t0, s6, 20
                  slt          zero, s3, gp
                  ori          ra, a2, -997
                  blt          s10, t6, 1420f
1405:             blt          a1, a5, 1411f
                  sltiu        t4, s11, -1281
                  add          s4, a1, s0
                  slti         sp, zero, -1911
                  auipc        a3, 762369
                  xor          t1, t5, a5
1411:             sltiu        a1, t3, -735
                  bne          a7, s9, 1432f
                  add          s4, gp, s8
                  slt          a7, a7, a1
                  bgeu         t0, s2, 1421f
                  bltu         a3, a4, 1418f
                  and          s2, s11, s4
1418:             nop
                  andi         a7, s4, 1368
1420:             srli         a5, t6, 10
1421:             slti         t2, t5, -224
                  bgeu         s9, sp, 1437f
                  sltu         a1, s6, s11
                  andi         s8, a6, -121
                  bltu         t5, zero, 1440f
                  lui          t4, 539056
                  sltiu        s6, s6, 626
                  sra          t0, s0, ra
                  and          s9, a1, t4
                  ori          t4, s7, 1510
                  blt          a6, t0, 1445f
1432:             or           zero, s11, sp
                  bne          t1, s3, 1436f
                  add          a7, s7, t4
                  slt          tp, gp, s1
1436:             sltu         a5, s5, s7
1437:             sra          a7, tp, a4
                  and          s1, t6, a2
                  slt          s7, t5, t5
1440:             xori         zero, a3, 517
                  sub          gp, s2, s2
                  sltiu        tp, t2, -977
                  auipc        s10, 493413
                  sll          a4, t5, s9
1445:             add          s7, a5, s0
                  and          t4, a4, s10
                  xor          a3, s7, a6
                  or           s11, a4, s7
                  bge          a4, a2, 1450f
1450:             srl          a1, a7, a6
                  and          t1, zero, s0
                  slti         ra, s11, 1694
                  bne          s6, t2, 1455f
                  srl          s10, a0, a3
1455:             sltiu        s7, zero, 1277
                  slli         sp, s2, 23
                  sltiu        s6, t0, 1557
                  slt          s2, t4, zero
                  srl          a4, tp, s6
                  lui          a7, 35993
                  blt          t5, a2, 1480f
                  lui          t3, 100637
                  bgeu         s0, a7, 1471f
                  blt          t5, a5, 1480f
                  ori          s9, s2, -335
                  sltiu        t1, a3, -1092
                  blt          t1, zero, 1487f
                  xor          t0, t4, s8
                  nop
                  srai         s1, s1, 5
1471:             addi         a3, sp, -451
                  blt          t3, ra, 1482f
                  add          t2, s4, s7
                  xori         a2, a5, -1289
                  slti         a5, a7, 1159
                  sll          a7, a4, a1
                  slti         sp, a4, -289
                  add          s4, sp, t1
                  sra          t0, tp, s11
1480:             addi         s3, a7, -265
                  sra          s5, t3, t5
1482:             auipc        a4, 63231
                  lui          s6, 403210
                  and          a5, s8, s9
                  add          s2, a3, a4
                  andi         zero, t0, -1274
1487:             srai         a5, s6, 3
                  srl          t2, a7, s4
                  sltu         s4, zero, t4
                  or           s10, t0, a3
                  nop
                  ori          s5, gp, 529
                  lui          s3, 662691
                  bge          s11, gp, 1508f
                  slti         s6, t4, 409
                  blt          a0, s11, 1502f
                  beq          t0, s0, 1500f
                  and          tp, s10, a6
                  bge          s0, s5, 1514f
1500:             sub          a5, s11, s3
                  and          s9, a1, s9
1502:             srl          a7, t6, s11
                  lui          s8, 215446
                  bgeu         t6, gp, 1510f
                  srl          s11, t2, t3
                  addi         s8, a1, 1753
                  slli         s4, a7, 6
1508:             lui          s10, 461117
                  xor          a3, gp, t6
1510:             srl          a7, t4, t0
                  srl          s1, s7, s1
                  sll          s10, a1, a7
                  lui          a0, 654005
1514:             slti         s4, t0, -1439
                  blt          ra, zero, 1521f
                  srli         a4, a4, 2
                  beq          gp, a3, 1518f
1518:             beq          t1, a3, 1527f
                  bne          zero, s11, 1525f
                  bge          s11, s7, 1528f
1521:             bge          a7, s11, 1535f
                  bgeu         t3, s7, 1525f
                  andi         tp, a6, -376
                  xori         t4, a1, -1726
1525:             addi         a4, s0, -1050
                  blt          s10, s0, 1529f
1527:             bltu         a3, a5, 1543f
1528:             slli         sp, a3, 19
1529:             slti         t6, a1, 1564
                  sub          t1, t6, a3
                  blt          a3, a7, 1547f
                  auipc        s6, 690524
                  auipc        gp, 290961
                  blt          t4, s7, 1539f
1535:             bltu         t1, s7, 1550f
                  xori         s1, a4, 891
                  sll          gp, a3, a6
                  sub          a3, a4, a6
1539:             srl          s11, s11, s11
                  addi         tp, zero, -262
                  add          zero, a7, a3
                  sltiu        a1, t5, 464
1543:             nop
                  sltu         t1, sp, gp
                  sll          t1, s3, t1
                  auipc        t6, 608155
1547:             bne          ra, a0, 1549f
                  sltu         a1, s6, a5
1549:             srli         s4, t0, 12
1550:             auipc        t2, 905489
                  bge          t0, a6, 1566f
                  slti         t1, s1, -1921
                  srli         t0, a0, 17
                  or           tp, zero, s3
                  ori          s6, s10, -547
                  beq          t1, a3, 1557f
1557:             bgeu         s3, a3, 1572f
                  nop
                  addi         t6, t6, 1464
                  slti         s1, a5, 350
                  auipc        t2, 53156
                  sltiu        s5, t6, -952
                  bgeu         t3, ra, 1568f
                  andi         sp, s1, -1259
                  sra          s4, a0, s1
1566:             srli         a7, a3, 17
                  srl          t0, s4, a0
1568:             slt          t6, s7, sp
                  nop
                  xor          t4, tp, s2
                  bne          s9, s10, 1577f
1572:             bne          t1, sp, 1575f
                  or           t6, a2, gp
                  srli         t6, s11, 0
1575:             srai         s1, s7, 8
                  bltu         tp, s1, 1583f
1577:             nop
                  nop
                  sll          s9, a2, s4
                  add          a0, sp, t2
                  sub          s6, s7, t4
                  sub          s8, a5, t0
1583:             bne          t3, s7, 1585f
                  sll          a7, s8, gp
1585:             addi         a3, tp, -1317
                  slli         a4, s0, 25
                  sub          tp, a5, s8
                  bgeu         t0, tp, 1607f
                  srl          t6, t4, t6
                  bgeu         s3, s7, 1598f
                  and          s9, s11, s11
                  blt          s10, t6, 1608f
                  xor          zero, t3, s3
                  lui          a2, 394978
                  bltu         t0, s4, 1598f
                  blt          s11, s8, 1606f
                  srai         ra, t2, 3
1598:             beq          gp, a2, 1617f
                  xor          a7, t6, a3
                  srl          a2, a0, s1
                  add          a0, t4, a1
                  xor          s9, t0, a6
                  addi         a2, t5, -1224
                  srl          zero, a7, a1
                  srl          t6, a1, t2
1606:             blt          s3, t0, 1612f
1607:             blt          a0, s9, 1615f
1608:             srli         s6, s0, 28
                  bgeu         t1, t2, 1616f
                  srl          a0, t5, t4
                  srli         t4, sp, 0
1612:             lui          s7, 913691
                  xor          s11, s1, t5
                  xori         s4, s11, -2
1615:             nop
1616:             sltu         t6, s10, ra
1617:             add          a4, sp, a2
                  sub          s11, ra, s6
                  lui          s5, 241317
                  beq          a4, s4, 1629f
                  and          s4, t0, ra
                  and          zero, tp, t4
                  slti         s2, a6, 1743
                  bne          a0, t1, 1640f
                  beq          a5, ra, 1631f
                  slt          s4, ra, a1
                  add          tp, s6, s3
                  nop
1629:             and          a5, s1, s3
                  addi         a5, t2, -778
1631:             bgeu         s5, a0, 1637f
                  bge          t1, s7, 1646f
                  sub          t3, a7, t5
                  slt          s4, ra, t6
                  add          ra, a4, s1
                  addi         t6, t1, 608
1637:             nop
                  bgeu         t3, s8, 1644f
                  or           a2, s9, t5
1640:             srli         s2, tp, 11
                  slli         a3, sp, 29
                  bgeu         s8, s9, 1657f
                  bgeu         t0, t6, 1646f
1644:             sltu         t3, t6, s8
                  andi         s3, s11, -364
1646:             sll          tp, t3, sp
                  auipc        s8, 863710
                  beq          t6, s11, 1662f
                  bgeu         ra, a3, 1655f
                  beq          s4, t0, 1655f
                  slli         s6, t3, 3
                  blt          a1, gp, 1654f
                  srli         tp, t5, 28
1654:             sltiu        s2, a1, 2031
1655:             sll          ra, t1, t5
                  bne          t2, t0, 1664f
1657:             andi         a4, s2, -1519
                  sra          s5, s3, s4
                  srli         s1, s2, 12
                  andi         t3, s5, -1895
                  bgeu         t1, s1, 1676f
1662:             or           a3, s0, tp
                  sub          a3, s2, t2
1664:             blt          t3, tp, 1667f
                  sll          ra, s7, a1
                  nop
1667:             sltu         s5, tp, a2
                  bgeu         t1, a6, 1683f
                  bne          a3, t0, 1670f
1670:             auipc        s3, 22858
                  srai         t6, s7, 12
                  addi         ra, a4, 801
                  xor          t6, s7, a4
                  and          t6, t6, a3
                  srli         s6, s7, 22
1676:             sltu         s6, a6, a7
                  or           s3, t6, a6
                  bne          a5, s5, 1698f
                  nop
                  blt          s11, s11, 1681f
1681:             bge          s11, gp, 1683f
                  slli         t3, a6, 23
1683:             nop
                  or           t4, s6, t5
                  beq          t1, s5, 1690f
                  and          s1, ra, gp
                  nop
                  blt          t6, s0, 1691f
                  nop
1690:             bge          sp, s10, 1705f
1691:             slli         a3, a1, 8
                  lui          a4, 382461
                  add          tp, s7, s0
                  bgeu         s2, t6, 1700f
                  andi         s3, s1, -1695
                  bge          gp, gp, 1710f
                  slti         s10, s0, -1411
1698:             slli         gp, s11, 30
                  sll          s7, a4, a5
1700:             sltu         a0, t2, a2
                  bgeu         t6, a5, 1707f
                  srai         a4, t1, 24
                  srl          s7, s3, s2
                  sra          tp, zero, a0
1705:             or           s10, ra, zero
                  srl          s10, t1, s3
1707:             slli         t4, t6, 5
                  andi         s4, a1, -1241
                  srl          a4, a2, t6
1710:             sltiu        a4, t4, 866
                  nop
                  auipc        s4, 512164
                  srli         sp, t2, 31
                  sltu         t1, a7, t2
                  srl          s6, s0, a2
                  xor          t3, s3, a7
                  add          s3, t5, t6
                  xori         s8, s1, 2024
                  beq          s2, s1, 1739f
                  and          s6, a3, t6
                  addi         a1, s1, 515
                  andi         a3, t1, -1694
                  bge          a2, t6, 1731f
                  addi         zero, a6, 1925
                  sra          a1, t6, s3
                  srai         s7, s2, 11
                  sll          s1, a6, s9
                  blt          s2, s5, sub_2_j4 #branch to jump instr
                  addi         tp, s7, -114
                  xor          s8, s3, tp
                  or           s8, sp, s2
sub_2_j4:         jal          t4, sub_3 #jump sub_2 -> sub_3
                  nop
                  sra          s9, s10, t4
                  beq          t6, t0, 1729f
                  sltu         s1, tp, s7
1729:             xor          s9, t1, s9
                  bge          t3, s3, 1744f
1731:             srl          a2, t2, t4
                  srli         s1, s11, 27
                  slli         s7, t4, 25
                  bne          ra, s11, 1740f
                  add          a1, t0, s11
                  bltu         s8, t1, 1742f
                  beq          s4, s11, 1742f
                  beq          s6, a0, 1739f
1739:             andi         a3, t3, 1184
1740:             srli         s3, s2, 31
                  addi         s3, a2, -1259
1742:             xori         s4, s4, -713
                  addi         zero, a3, 1738
1744:             and          ra, tp, sp
                  blt          s9, a4, 1760f
                  srai         s4, s5, 27
                  xori         a7, s10, 1405
                  or           a2, t2, s11
                  srli         s3, a3, 27
                  nop
                  srai         t4, s6, 11
                  nop
                  nop
                  slt          s5, s5, s11
                  addi         s4, s10, -925
                  andi         s1, a3, 476
                  xori         a7, gp, -788
                  sll          s10, t2, s2
                  or           s11, t2, sp
1760:             srl          sp, s7, zero
                  bge          t6, zero, 1770f
                  slti         a4, t5, 975
                  ori          t2, a4, 138
                  andi         t0, gp, 1292
                  xori         s10, s1, -1615
                  beq          sp, a0, 1767f
1767:             bge          ra, s3, 1769f
                  xor          t0, s8, tp
1769:             sub          zero, a4, a4
1770:             ori          t4, a4, -290
                  xor          t4, t2, t2
                  or           t6, s0, s8
                  blt          zero, s11, 1781f
                  beq          s1, a5, 1790f
                  bgeu         zero, s6, 1778f
                  beq          a2, s0, 1779f
                  nop
1778:             bltu         a6, t2, 1793f
1779:             srli         s9, a3, 14
                  auipc        s8, 1007158
1781:             sra          t0, s8, a4
                  blt          s9, s0, 1792f
                  srli         sp, s5, 10
                  bltu         a3, s11, 1787f
                  xori         s1, s3, 1161
                  srl          gp, t1, t6
1787:             ori          zero, a2, -112
                  or           s4, zero, s6
                  or           zero, s0, s10
1790:             sltiu        t0, t2, 424
                  or           a1, s11, s6
1792:             blt          t5, s2, 1807f
1793:             sltu         s10, s1, t1
                  sltiu        s9, s10, -1720
                  xor          s6, t1, s3
                  and          a0, t5, t6
                  add          s6, a0, t5
                  xor          s5, ra, s2
                  slli         t6, a5, 1
                  sra          sp, zero, a4
                  beq          s6, s11, 1815f
                  addi         a3, t6, -1654
                  bltu         a7, s10, 1815f
                  slli         a4, a7, 1
                  xori         t1, zero, -2032
                  srli         ra, ra, 7
1807:             slt          zero, a2, a7
                  sra          s10, s6, t6
                  blt          s6, s9, 1812f
                  and          t4, a4, s11
                  add          a5, a5, gp
1812:             sll          a4, s3, a2
                  sra          s6, s0, a2
                  lui          ra, 135760
1815:             sra          ra, s3, ra
                  sltiu        sp, ra, -253
                  xori         t6, s8, 1511
                  sll          t0, t0, ra
                  lw           t4, 4(s0)
                  sll          s8, s2, t3
                  and          sp, t4, s8
                  addi         s0, s0, 64
                  sub          a4, s5, s6
2418:             addi x18, x29, 1
2418:             jalr x18, x18, 0
sub_5:            addi         tp, s6, 318
                  beq          sp, s7, sub_5_stack_p
sub_5_stack_p:    addi         s0, s0, -60
                  slli         s6, t1, 7
                  xori         t3, s0, -1080
                  and          a3, s0, sp
                  sw           t4, 4(s0)
                  nop
                  la           s11, region_0+1764 #start riscv_load_store_rand_instr_stream_2
                  sra          a3, s3, s8
                  lh           zero, 28(s11)
                  lui          a2, 242939
                  slti         a5, s10, -1272
                  sb           t2, 169(s11)
                  sra          a7, s10, s4
                  slti         s5, s5, 403
                  sltiu        s2, s8, 261
                  add          tp, s11, a5
                  slli         s4, s4, 15
                  lbu          s1, -141(s11)
                  xor          zero, sp, t2
                  lb           s4, -206(s11)
                  sra          s8, t1, a6
                  ori          sp, s7, -590
                  sub          t3, t6, s5
                  xor          a7, s3, s5
                  lbu          ra, -15(s11)
                  lbu          a0, 60(s11)
                  sra          a1, s1, a6
                  auipc        zero, 993215
                  or           s6, s1, a2
                  ori          s3, s10, -1137
                  sb           a4, 67(s11)
                  slti         s1, a1, 488
                  sra          a0, ra, s0
                  or           t2, a5, t6
                  slt          gp, s8, s9
                  sb           ra, 84(s11)
                  sub          s7, s11, s1
                  lbu          ra, 108(s11)
                  srai         a0, t3, 31
                  sltu         s1, t3, a5
                  sltu         s6, a5, tp
                  lbu          s4, 50(s11) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_0+1531 #start riscv_load_store_rand_instr_stream_1
                  lbu          a0, -244(sp)
                  srli         a5, t1, 10
                  lbu          ra, -222(sp)
                  slti         gp, tp, -11
                  slt          s10, t5, t0
                  lb           a4, 140(sp)
                  lw           s7, -179(sp)
                  or           a5, ra, s5
                  xori         a1, a3, 1890
                  lbu          t6, -215(sp)
                  lbu          t6, -244(sp)
                  lbu          a1, -138(sp)
                  lhu          a5, 255(sp)
                  slti         s6, s1, 1337
                  xor          a7, s3, a7
                  xor          ra, ra, s6
                  sh           t0, -25(sp)
                  srai         a3, s3, 8
                  sll          s1, zero, s4
                  slli         s5, s10, 6
                  andi         a4, a6, -905
                  lb           gp, -51(sp)
                  slt          s3, a6, t1
                  slti         gp, s6, -1194
                  sw           s5, -75(sp)
                  lbu          s4, 22(sp)
                  sb           sp, 225(sp)
                  lbu          t6, 160(sp)
                  slli         s9, a4, 27
                  sw           sp, 81(sp)
                  lb           s11, -81(sp)
                  srli         a5, tp, 7
                  and          a7, s11, a6
                  sltiu        t0, s7, 1601
                  lui          t0, 77541
                  ori          a4, t3, -1449
                  lb           t2, -76(sp)
                  sb           t6, -14(sp)
                  lhu          a4, 27(sp)
                  sltiu        s5, a3, -253
                  lbu          a7, 0(sp)
                  sltiu        t6, t5, -1830
                  ori          t3, a6, -1368
                  sub          s10, t0, a6
                  andi         gp, a3, 504
                  lbu          t2, 253(sp)
                  lb           a0, -166(sp)
                  sh           s7, -253(sp) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_0+806 #start riscv_load_store_rand_instr_stream_0
                  slt          t2, s9, t4
                  srai         zero, s1, 8
                  lhu          s1, -10(sp)
                  lui          s4, 130967
                  lb           t1, -11(sp)
                  lbu          s2, 15(sp)
                  srl          zero, s9, a2
                  addi         s7, s7, -1441
                  sb           t3, 1(sp)
                  and          t4, ra, tp
                  lh           ra, -8(sp)
                  sw           s2, 2(sp)
                  add          t1, s2, ra
                  sll          a0, a7, t6
                  sltu         s9, a0, s5
                  sb           s0, -14(sp)
                  andi         a7, a2, -2027
                  addi         s9, a2, -418
                  srli         a3, t2, 7
                  sb           a2, -5(sp)
                  lbu          a3, 15(sp)
                  add          t1, t1, t5
                  lb           a3, 7(sp)
                  sll          a5, a5, s9
                  srli         s9, s9, 11
                  sub          s5, a3, a1
                  lui          gp, 718772
                  or           zero, a4, s6
                  sb           a5, 10(sp)
                  lb           s10, 15(sp)
                  add          a2, a5, s0
                  sub          a2, gp, ra
                  or           s8, s8, t5
                  lbu          s2, 7(sp)
                  add          s5, s9, s1
                  lhu          s1, 16(sp)
                  sb           t1, 16(sp) #end riscv_load_store_rand_instr_stream_0
                  blt          s9, s10, 13f
                  xor          s7, a4, a1
                  auipc        s6, 259910
                  sltu         sp, s2, s8
                  sra          s9, s2, s9
                  slti         a7, a5, 1954
                  sll          s10, sp, t5
                  srai         zero, t5, 5
                  bgeu         s5, s10, 9f
9:                sltiu        a1, a1, 523
                  sltiu        a4, t5, 1489
                  slli         gp, t6, 16
                  slti         t4, s2, -155
13:               srai         a3, a6, 20
                  bne          s9, t4, 15f
15:               blt          a5, t5, 21f
                  srl          s5, a3, a3
                  ori          a0, s6, 1128
                  srli         a1, s10, 10
                  addi         a4, s4, 567
                  lui          s6, 827038
21:               add          s5, a7, gp
                  ori          zero, t1, -647
                  bltu         t0, t6, 31f
                  srl          a1, s3, s9
                  blt          a2, s5, 35f
                  addi         t2, t5, -397
                  nop
                  ori          tp, zero, 1903
                  srai         tp, t2, 14
                  sra          t0, t4, a2
31:               or           a5, t3, s2
                  sltiu        a1, a5, 1728
                  bgeu         ra, sp, 37f
                  add          t1, a1, t4
35:               bne          s0, s4, 39f
                  nop
37:               bge          sp, s10, 55f
                  ori          a4, s8, 26
39:               nop
                  add          s3, a5, t0
                  addi         a2, a2, -1219
                  sub          s4, s10, a1
                  blt          a3, s5, 57f
                  xori         s8, s2, -1116
                  addi         t2, t0, 1797
                  srai         s1, s9, 4
                  sra          s7, a6, a7
                  bne          a7, t4, 66f
                  add          s3, a2, a5
                  srl          t1, t2, t6
                  bgeu         a2, s0, 60f
                  addi         s2, sp, 998
                  addi         gp, s6, -1233
                  and          a0, s8, zero
55:               blt          s4, t2, 65f
                  sub          tp, t2, s8
57:               sra          s8, ra, a1
                  bgeu         ra, gp, 76f
                  andi         zero, t4, -1816
60:               sltiu        a4, t4, 947
                  xori         a2, gp, 1280
                  lui          s10, 44889
                  xori         tp, ra, 1431
                  auipc        a0, 943781
65:               lui          s10, 445697
66:               andi         a2, t3, -735
                  slt          s1, sp, a7
                  ori          a1, s11, -127
                  addi         a0, gp, 800
                  slli         gp, ra, 13
                  or           gp, s0, ra
                  beq          a5, a0, 77f
                  blt          t2, zero, 74f
74:               slti         tp, s5, -441
                  srl          s4, t6, t0
76:               bge          a2, t6, 84f
77:               bne          s3, t6, 84f
                  beq          s10, s10, 91f
                  andi         s2, t5, 41
                  xori         a4, gp, -1485
                  or           s5, a3, gp
                  add          a2, a4, s3
                  srl          zero, gp, t1
84:               bge          a2, a6, 85f
85:               or           s7, a5, s6
                  slli         s1, ra, 30
                  bne          ra, a1, 98f
                  sltu         a1, s1, s7
                  slli         ra, s1, 8
                  sll          s1, s7, s1
91:               slli         s2, t0, 9
                  srli         a0, t3, 11
                  nop
                  sub          a7, t6, a0
                  bltu         s9, s10, 104f
                  bne          s1, zero, 116f
                  bgeu         a6, tp, 104f
98:               addi         s2, s4, -1312
                  sll          a2, ra, a1
                  lui          a0, 626882
                  slt          s3, a3, s11
                  andi         s6, t6, 632
                  bge          s6, a7, 121f
104:              bgeu         a2, a7, 122f
                  srl          a7, a7, zero
                  blt          a5, s3, 111f
                  andi         a0, s2, 1337
                  bltu         a7, s6, 113f
                  slt          a4, a4, tp
                  bgeu         s8, t3, 120f
111:              srli         sp, t4, 31
                  add          a1, s4, s5
113:              srl          t6, s7, t2
                  sltu         s9, a1, s10
                  auipc        t4, 925050
116:              nop
                  and          s4, t3, s10
                  bne          a1, t1, 127f
                  slli         zero, sp, 18
120:              auipc        s9, 779707
121:              lui          t3, 192393
122:              slt          t2, t2, t0
                  addi         t2, t1, 461
                  ori          s7, t3, -443
                  beq          s2, gp, 134f
                  and          s4, s5, t2
127:              auipc        a4, 673585
                  bge          ra, a3, 129f
129:              bltu         zero, a1, 137f
                  add          sp, s4, tp
                  auipc        s10, 176873
                  lui          gp, 970973
                  slti         s11, sp, -784
134:              xor          s8, t2, ra
                  bgeu         s10, s4, 149f
                  bne          s2, s2, 141f
137:              slti         a1, ra, -667
                  sltiu        s5, t1, 1878
                  auipc        s8, 476051
                  slt          a7, a2, s8
141:              xor          s10, s10, sp
                  xori         a3, tp, -1380
                  nop
                  srl          t2, a0, s3
                  nop
                  and          s2, t5, t6
                  andi         a1, s2, 607
                  sltu         a5, s2, t1
149:              blt          s0, s11, 159f
                  xori         tp, s6, 1119
                  slt          ra, t5, s8
                  sra          a2, t6, t0
                  blt          a3, gp, 171f
                  sltiu        t6, t3, -275
                  ori          t1, a3, 1749
                  nop
                  sra          sp, ra, s10
                  ori          sp, s1, 2014
159:              auipc        ra, 1012120
                  bne          a1, sp, 165f
                  addi         s2, t5, 241
                  sra          t1, s7, a1
                  xor          t3, ra, t0
                  bltu         s7, t3, 182f
165:              and          a4, gp, tp
                  slt          a1, s2, s5
                  addi         a1, a2, 384
                  bge          s1, t1, 186f
                  slli         s5, a2, 3
                  auipc        sp, 997335
171:              slt          s3, a4, t0
                  slt          s10, a2, s0
                  slli         t0, s7, 25
                  sra          s11, s7, s6
                  sra          s6, a7, a6
                  bne          s1, t3, 189f
                  nop
                  addi         a7, a1, 845
                  lui          s6, 49854
                  bge          s10, s11, 190f
                  blt          t0, s0, 185f
182:              andi         gp, t4, 421
                  sub          a7, a6, s7
                  auipc        a4, 345312
185:              bgeu         t3, t2, 192f
186:              addi         s8, s9, 1834
                  addi         tp, s2, -1707
                  slti         a1, a0, 1871
189:              sll          a7, s11, t5
190:              sra          gp, tp, s10
                  add          s2, s6, t2
192:              or           s4, a2, s11
                  sra          sp, s11, t3
                  xor          s7, t3, t5
                  srli         s9, s7, 25
                  srl          tp, s5, s11
                  slti         zero, a7, 46
                  srai         a5, s6, 24
                  blt          s9, s3, 200f
200:              bltu         tp, a7, 205f
                  bltu         t3, a5, 209f
                  slti         a2, sp, 571
                  add          t0, s6, s4
                  lui          s6, 123122
205:              add          s6, s1, s9
                  sll          s9, t6, tp
                  add          gp, tp, s1
                  sll          a7, ra, t0
209:              sub          s9, s5, t6
                  slli         s5, zero, 25
                  lui          s7, 577577
                  srai         sp, s2, 13
                  and          s5, t2, s2
                  sltiu        a0, t1, 2045
                  slli         a2, s9, 24
                  slli         s1, gp, 31
                  sltu         s8, gp, s11
                  add          s6, a2, a4
                  sra          a2, s7, s9
                  srai         gp, s11, 10
                  slli         a4, s8, 3
                  bgeu         s4, ra, 242f
                  xori         a7, s4, -47
                  srai         a2, ra, 3
                  bltu         s0, tp, 236f
                  lui          gp, 235185
                  blt          s1, t6, 236f
                  bltu         tp, a4, 234f
                  lui          t0, 730286
                  srai         gp, a0, 26
                  auipc        t1, 350482
                  bge          a5, a7, 239f
                  slt          s3, s9, tp
234:              add          s9, t4, gp
                  srai         s4, s0, 8
236:              srli         a7, t2, 16
                  sltiu        s10, t0, -1761
                  sub          t0, s10, t0
239:              lui          s3, 200260
                  nop
                  srl          gp, gp, s7
242:              auipc        a7, 458919
                  srl          sp, a0, s2
                  srai         zero, sp, 13
                  slt          s7, s0, s4
                  slt          a3, t5, a1
                  beq          s4, sp, 257f
                  lui          a5, 633219
                  bgeu         s8, s6, 262f
                  slt          s8, s6, s3
                  sub          a7, t0, a7
                  andi         a2, s2, -2020
                  bne          tp, a2, 257f
                  and          t1, a6, s7
                  srli         s9, a0, 8
                  lui          t2, 387314
257:              addi         tp, t4, 271
                  sll          a3, a4, s1
                  slt          a0, a2, gp
                  and          s6, a6, t5
                  srai         tp, a4, 12
262:              ori          s5, s9, -1604
                  sltiu        a5, s0, -1058
                  sra          tp, ra, zero
                  srai         s8, ra, 7
                  slli         t2, a5, 19
                  xor          s5, s5, a5
                  andi         s7, s11, 1920
                  blt          a5, a1, 270f
270:              slt          sp, a3, a4
                  slli         a0, a5, 20
                  bne          s7, t0, 281f
                  xori         ra, tp, 793
                  and          s11, s8, a0
                  sltu         a4, s1, s11
                  bltu         s5, gp, 294f
                  bgeu         a5, zero, 278f
278:              add          a5, a2, s2
                  lui          a1, 935408
                  sltu         s1, t2, a2
281:              andi         s5, a2, -1900
                  slt          ra, s9, gp
                  bltu         s8, sp, 301f
                  auipc        zero, 1002412
                  lui          t0, 873114
                  sra          s9, s10, s1
                  ori          t4, s9, -103
                  ori          s3, s3, 149
                  add          a3, s2, a1
                  sra          t0, s9, a5
                  sra          a4, s1, s11
                  bne          s5, a7, 293f
293:              srl          tp, ra, s11
294:              xor          a1, s0, s6
                  nop
                  slti         t1, t4, 288
                  sra          a7, s4, s10
                  and          a0, t3, a3
                  lui          t0, 854885
                  bne          s3, s5, 311f
301:              srai         t6, ra, 5
                  slli         a2, t5, 5
                  sll          a5, t3, ra
                  bltu         sp, s9, 309f
                  srl          s2, s0, ra
                  xori         s3, s5, -793
                  slti         t3, a0, -1564
                  bltu         t4, s0, 326f
309:              or           t6, tp, a5
                  add          ra, a4, s0
311:              srli         s5, s11, 15
                  xori         s4, t3, 867
                  srli         a3, sp, 17
                  bne          zero, s6, 324f
                  add          s5, t0, s7
                  sub          a7, s11, s10
                  addi         t3, s10, 1469
                  xori         s11, s1, 1749
                  or           s6, s9, s9
                  nop
                  srai         t3, tp, 26
                  add          t3, gp, ra
sub_5_j9:         jal          t4, sub_8 #jump sub_5 -> sub_8
                  lui          ra, 185659
                  add          s7, gp, s8
                  beq          a5, a1, 324f
                  beq          s3, s9, 330f
                  sltu         s1, gp, t2
                  xori         ra, t1, -2011
                  beq          a1, a2, 336f
324:              lui          t2, 623687
                  beq          s1, tp, 332f
326:              bge          t1, s2, 330f
                  srl          tp, a3, s10
                  slt          tp, ra, a6
                  slti         t3, a6, 70
330:              xor          gp, s6, s1
                  sll          zero, s7, t1
332:              sll          t0, t2, t4
                  bge          t2, a7, 353f
                  bltu         t5, s0, 343f
                  sltu         a3, t6, s3
336:              sltiu        s4, s6, -931
                  andi         a4, t3, 1076
                  xori         sp, t2, -1386
                  srai         a0, t3, 13
                  bge          a5, a2, 341f
341:              bge          s1, s2, 359f
                  sltiu        s9, a4, -187
343:              nop
                  slli         t0, gp, 24
                  slli         t3, s10, 11
                  ori          t6, t2, -2047
                  slli         a4, s10, 2
                  add          t2, a0, sp
                  and          s3, s7, a0
                  bltu         a2, s9, 368f
                  xori         t2, tp, 666
                  nop
353:              blt          t2, a5, 371f
                  bgeu         t1, s1, 355f
355:              lui          s7, 475236
                  sra          s9, a6, gp
                  add          t2, tp, sp
                  ori          s2, a6, 679
359:              nop
                  bne          t0, gp, 369f
                  srl          s7, t4, s3
                  xori         a7, s6, -1909
                  sltiu        a2, a1, -322
                  addi         t0, a1, 1614
                  srli         s5, t6, 25
                  lui          t1, 721147
                  auipc        s5, 578116
368:              slt          a7, a4, s3
369:              xori         t3, s10, 1204
                  sra          a7, a2, ra
371:              xori         t0, a1, -1818
                  blt          s9, s9, 386f
                  srli         s2, s10, 27
                  bge          sp, gp, 379f
                  slti         s4, a4, -1931
                  andi         a2, s8, -849
                  sll          s7, s3, s5
                  lui          s5, 301883
379:              sub          a3, t5, s2
                  xori         s11, a6, 311
                  blt          t6, t3, 391f
                  srai         zero, s9, 30
                  slli         s5, a3, 3
                  srl          a0, s7, zero
                  slt          t1, t3, a5
386:              andi         t0, gp, -1405
                  slti         a2, ra, -972
                  srli         a7, s0, 6
                  bne          ra, s7, 397f
                  ori          t3, zero, 939
391:              sltiu        a4, gp, -1172
                  xor          s1, t2, t3
                  lui          a2, 457122
                  bgeu         t4, t0, 403f
                  bltu         s9, sp, 403f
                  sll          s3, s1, s9
397:              auipc        a4, 521410
                  slli         s9, ra, 23
                  ori          a3, a3, -1495
                  and          s1, t5, ra
                  bge          s8, t5, 407f
                  slt          t6, t3, t1
403:              bne          s3, t3, 407f
                  srl          a7, s5, t0
                  bge          tp, a6, 406f
406:              sltiu        s1, s9, -744
407:              add          t0, s10, a1
                  bltu         s3, s5, 421f
                  sra          s10, a4, s9
                  auipc        t3, 666832
                  srai         a1, tp, 4
                  sll          s3, s7, s11
                  srai         a0, s7, 7
                  srli         a7, s7, 16
                  bge          s2, t1, 422f
                  sll          a5, gp, s7
                  or           gp, s8, s11
                  srl          ra, s8, gp
                  bge          t5, s7, 431f
                  and          s10, a2, gp
421:              blt          ra, a4, 422f
422:              auipc        t1, 547288
                  srli         t3, sp, 31
                  slt          a7, s3, s6
                  slli         s8, s5, 14
                  sra          t1, t4, s3
                  and          a3, t6, s7
                  andi         zero, s11, 102
                  nop
                  addi         s10, t0, -888
431:              andi         t6, s11, 1118
                  lw           t4, 4(s0)
                  xori         s6, s4, -122
                  addi         s0, s0, 60
                  slti         s3, zero, -584
                  sra          t2, a4, s2
                  slli         s2, gp, 18
576:              addi x22, x29, 0
576:              jalr x22, x22, 0
sub_3:            addi         s0, s0, -52
                  sw           t4, 4(s0)
                  andi         t2, a7, 1175
                  sub          a0, s11, a2
                  sub          a5, a7, t0
                  srai         s7, t3, 8
                  ori          zero, s2, -1437
                  nop
                  andi         t3, t4, 1450
                  la           a7, sub_4
                  nop
                  nop
                  addi         a7, a7, 486
                  srai         s6, a3, 21
                  auipc        s2, 556064
                  srli         a0, a3, 7
                  bgeu         s7, t6, sub_3_j5 #branch to jump instr
                  sll          s5, tp, s3
sub_3_j5:         jalr         t4, a7, -485 #jump sub_3 -> sub_4
                  slt          t2, s1, t0
                  or           a3, s11, s8
                  auipc        s11, 624003
                  slt          s10, a3, t2
                  srl          s1, t6, sp
                  auipc        a4, 800935
                  srli         t0, tp, 6
                  sll          s9, s2, s5
                  or           s1, a5, a2
                  srai         t1, t4, 20
sub_3_j6:         jal          t4, sub_4 #jump sub_3 -> sub_4
                  srl          s7, t1, a1
                  add          s6, ra, s3
                  xori         a1, s6, -312
                  slti         tp, a0, 1535
                  blt          a3, a5, 7f
                  or           s9, a3, s3
                  slt          ra, s9, t4
7:                beq          a5, a3, 10f
                  sltu         sp, s2, a2
                  or           t2, ra, s9
10:               slt          t4, t1, s11
                  add          t4, s7, s2
                  blt          a3, s8, 27f
                  slt          t1, s2, s6
                  bge          s9, a1, 17f
                  ori          s10, a5, -557
                  sltu         t4, s10, t1
17:               blt          t2, gp, 34f
                  and          s6, s10, s1
                  bgeu         s3, a5, 29f
                  sll          s5, s5, t1
                  slli         t6, tp, 12
                  sra          s6, s7, t2
                  sra          a5, s1, s1
                  slli         a1, gp, 0
                  beq          t0, s8, 34f
                  sll          s11, s4, a6
27:               sltiu        a2, a3, 2026
                  blt          s8, tp, 32f
29:               srl          s8, a5, a2
                  blt          s11, s4, 48f
                  sub          s2, sp, sp
32:               addi         s5, t6, -401
                  auipc        s1, 634992
34:               bne          t2, sp, 49f
                  andi         a4, zero, 885
                  srl          t1, s4, a3
                  ori          t2, sp, -96
                  sra          s5, s11, t5
                  beq          s4, t0, 44f
                  sltiu        s1, t4, 106
                  blt          s6, t4, 49f
                  and          s5, s0, s2
                  ori          a4, s2, -702
44:               slti         t0, s4, -724
                  or           s3, a4, t3
                  bne          s2, s3, 55f
                  ori          s11, s6, -1232
48:               andi         s2, a6, -1564
49:               sub          a5, t2, s6
                  xori         a3, a4, 1035
                  slt          t3, t4, a1
                  auipc        gp, 1030111
                  lui          s1, 798846
                  slti         s6, tp, 1264
55:               ori          t3, s0, -2009
                  sub          s3, t2, s0
                  bge          a6, a1, 74f
                  bgeu         ra, s3, 73f
                  blt          zero, a6, 63f
                  srai         s6, a7, 28
                  bne          a5, t0, 70f
                  nop
63:               nop
                  sub          s3, a2, s5
                  bne          sp, sp, 72f
                  slli         a0, gp, 1
                  bgeu         s2, a5, 68f
68:               srl          a2, t5, t1
                  sub          t2, s0, t4
70:               beq          tp, s0, 80f
                  beq          a1, a0, 80f
72:               sltiu        s7, tp, -1636
73:               bltu         s1, a1, 80f
74:               srai         zero, ra, 3
                  lui          s11, 11097
                  sltu         sp, s3, t1
                  sltiu        s10, a5, 2019
                  slli         a5, a5, 13
                  add          ra, s9, t1
80:               slt          gp, s7, t3
                  add          s2, s11, t3
                  addi         a7, s11, -2048
                  lw           t4, 4(s0)
                  srai         t2, t3, 15
                  xori         s5, gp, -1799
                  add          a7, sp, s5
                  addi         s0, s0, 52
                  srai         s9, s4, 19
                  slli         a3, t6, 0
120:              addi x25, x29, 1
120:              jalr x25, x25, 0
sub_4:            bltu         t2, ra, sub_4_stack_p
sub_4_stack_p:    addi         s0, s0, -44
                  srli         a3, s9, 14
                  sw           t4, 4(s0)
                  addi         a7, s0, -1298
                  and          a7, t4, s11
                  xor          s5, a0, s0
                  lui          s2, 207807
                  add          t0, a3, s3
                  bne          t5, s8, sub_4_j8 #branch to jump instr
                  or           t3, sp, a3
                  or           s11, s11, gp
                  add          zero, s8, a1
sub_4_j8:         jal          t4, sub_5 #jump sub_4 -> sub_5
                  la           gp, region_1+1986 #start riscv_load_store_rand_instr_stream_0
                  sh           a4, -40(gp)
                  lb           s2, -92(gp)
                  slli         s4, s1, 4
                  srli         t3, a6, 18
                  slt          a0, a7, s5
                  sb           t2, -218(gp)
                  lbu          tp, -85(gp)
                  sb           s9, -57(gp)
                  sb           s8, -85(gp)
                  slti         a2, s9, 1339
                  slt          t4, sp, ra
                  sltiu        a2, a3, -223
                  srl          a0, a1, t3
                  xori         a0, s7, -646
                  sra          s2, s3, s1
                  lbu          a4, -131(gp)
                  sb           a3, -247(gp)
                  sb           s3, -157(gp)
                  slt          s11, a4, a0
                  and          s4, s1, s8
                  srli         a3, s7, 0
                  sub          s8, a6, s11
                  add          a3, a6, t1
                  sb           a1, -243(gp)
                  sub          s8, s10, a2
                  sb           s5, -101(gp)
                  lb           a0, -121(gp)
                  srli         s2, a1, 15
                  sh           a6, -232(gp)
                  xor          s4, zero, s0
                  srli         s6, a7, 3
                  auipc        t1, 880874
                  auipc        a5, 463968
                  lh           s9, -250(gp) #end riscv_load_store_rand_instr_stream_0
                  la           gp, region_0+1539 #start riscv_load_store_rand_instr_stream_2
                  and          s6, s5, a3
                  slli         s6, s0, 21
                  add          a2, a4, sp
                  lb           s3, 404(gp)
                  lbu          ra, -584(gp)
                  slli         s3, sp, 23
                  srli         zero, a5, 10
                  sub          t0, a1, a2
                  lb           a4, -65(gp)
                  sb           s5, -108(gp)
                  nop
                  auipc        t2, 683952
                  srli         a5, s0, 24
                  lh           t6, -1467(gp)
                  sb           ra, 240(gp)
                  sb           a6, -180(gp)
                  lb           t6, -280(gp)
                  lb           s2, -172(gp)
                  add          ra, ra, a2
                  lb           zero, -592(gp)
                  lbu          s2, -262(gp)
                  nop
                  lhu          t3, -529(gp)
                  sb           s11, -873(gp)
                  lh           a2, 189(gp)
                  lbu          s1, -728(gp)
                  lbu          t3, -601(gp)
                  lb           s7, -356(gp)
                  srl          t4, s11, s5
                  srl          tp, t0, t6
                  slli         a7, a2, 8
                  or           s1, s1, a2
                  sltu         s8, s5, t3
                  lb           s3, -1314(gp)
                  nop
                  sra          s6, t1, s2
                  lbu          t4, -1084(gp) #end riscv_load_store_rand_instr_stream_2
                  lui          tp, 564166
                  nop
                  srl          s10, a1, sp
                  xori         t6, t4, 72
                  ori          s3, a6, -1978
                  or           a4, s7, s7
                  bgeu         s4, s1, 19f
                  sltu         t3, s0, zero
                  and          s5, gp, ra
                  srai         t0, s1, 19
                  srli         a7, a3, 27
                  bge          ra, s9, 27f
                  sll          s1, ra, t4
                  sra          s4, sp, a3
                  beq          a4, a2, 27f
                  nop
                  nop
                  andi         s11, a7, -280
                  ori          t3, s11, -1165
19:               slli         t1, s7, 25
                  and          s8, s4, t4
                  and          gp, t2, t3
                  bne          s9, s11, 32f
                  bltu         s0, a4, 37f
                  andi         ra, s4, -294
                  add          t6, a7, s5
                  andi         a0, s11, 315
27:               blt          s1, t0, 46f
                  add          t6, s10, s10
                  sra          s8, a5, sp
                  sltu         a2, s11, s2
                  lui          a0, 584973
32:               srai         s4, a6, 18
                  lui          s4, 110580
                  sltiu        t2, t4, -1953
                  sra          a5, t2, t0
                  beq          t0, a3, 52f
37:               andi         s10, s6, -2035
                  sltiu        s11, s1, 1120
                  srl          a4, t0, s10
                  sltiu        t6, s11, -1111
                  bne          s4, s1, 44f
                  add          t1, s9, s10
                  sra          s2, t0, s5
44:               or           a0, t3, t6
                  srai         ra, s3, 10
46:               lui          s1, 330166
                  and          s7, tp, s3
                  slt          a1, a2, t4
                  and          s6, s10, a4
                  slti         s11, tp, -1361
                  sltu         t1, s6, t5
52:               slti         zero, s2, 0
                  bltu         s1, t1, 57f
                  srai         t1, t1, 25
                  bgeu         tp, s8, 69f
                  add          s11, t5, s2
57:               bne          a4, t6, 61f
                  srli         s11, s2, 9
                  srl          s9, s8, zero
                  srli         s3, t3, 5
61:               addi         t6, a0, 941
                  nop
                  srli         s10, s7, 2
                  andi         s9, t3, -1568
                  and          a4, s0, a0
                  add          ra, t6, a7
                  xor          a5, s0, s11
                  bge          a6, t6, 88f
69:               add          s9, tp, s11
                  ori          s9, a0, -339
                  xori         zero, gp, -826
                  sltiu        s6, t6, -1612
                  nop
                  slt          s11, t6, s1
                  bge          t5, a7, 77f
                  lui          a1, 1042250
77:               bgeu         t0, a2, 85f
                  auipc        s6, 278984
                  nop
                  beq          t1, s6, 84f
                  srli         a7, a5, 14
                  sub          zero, sp, sp
                  srli         s1, gp, 6
84:               slli         a5, a4, 17
85:               lui          tp, 560361
                  nop
                  blt          s9, t4, 106f
88:               addi         s2, s7, -2032
                  bgeu         a1, a6, 107f
                  srai         sp, s5, 25
                  blt          a0, t2, 107f
                  sub          s6, s4, s2
                  and          s7, t1, a7
                  sll          s1, s0, zero
                  srai         s11, gp, 10
                  slt          a7, s11, s0
                  xor          s6, gp, s7
                  or           s3, a0, s7
                  blt          t4, s4, 112f
                  and          t3, ra, t6
                  blt          a5, sp, 121f
                  beq          tp, a6, 118f
                  ori          t6, s3, -1652
                  add          s5, s4, t3
                  bltu         gp, tp, 115f
106:              ori          t2, t5, -297
107:              nop
                  addi         gp, s8, 1275
                  sub          ra, s7, s10
                  or           s4, t3, tp
                  slli         t0, t2, 23
112:              add          t4, s5, ra
                  srl          t2, sp, a5
                  sra          t3, a7, s10
115:              sub          sp, s4, sp
                  xor          sp, t4, s3
                  ori          zero, s11, 1671
118:              add          s11, gp, a3
                  nop
                  xori         s3, t1, 1241
121:              ori          a5, t6, 1680
                  bltu         t3, a4, 140f
                  sltu         ra, s0, tp
                  sltiu        a7, s9, 723
                  blt          sp, s8, 140f
                  bge          t0, a2, 145f
                  slt          t6, a6, t1
                  beq          t2, s5, 132f
                  srl          s1, a4, sp
                  and          a7, s1, s2
                  sltu         s7, ra, t5
                  la           s7, region_0+1068 #start riscv_load_store_rand_instr_stream_1
                  xor          t3, a7, a1
                  lbu          s5, 39(s7)
                  andi         a4, s2, -1999
                  sb           s4, -3(s7)
                  xor          s9, t2, s10
                  sb           a7, -19(s7)
                  sb           t3, -47(s7)
                  sh           a4, 62(s7)
                  sra          s5, s5, tp
                  or           t2, sp, s6
                  lh           a0, -52(s7)
                  lb           t3, 35(s7)
                  lbu          s8, -45(s7)
                  lb           t2, -60(s7)
                  sh           t2, -50(s7)
                  add          s10, sp, a7
                  lbu          s11, -24(s7)
                  sb           s3, -15(s7)
                  sltiu        a2, a7, 270
                  sh           a5, 60(s7)
                  or           gp, s9, a6
                  andi         s2, s7, 1320
                  sb           t0, 10(s7)
                  slt          s8, a1, a4
                  srli         zero, s6, 16
                  lbu          t3, -13(s7)
                  xori         s2, s4, -1909
                  lb           s6, 11(s7)
                  sb           a4, -63(s7)
                  sb           s6, -9(s7)
                  sb           s9, -36(s7) #end riscv_load_store_rand_instr_stream_1
132:              andi         a1, s5, 687
                  bltu         gp, s2, 136f
                  ori          s1, a3, 1225
                  slti         s6, ra, 914
136:              srl          t3, t5, s3
                  beq          a2, a6, 156f
                  addi         t6, a0, -1004
                  bge          a3, t4, 158f
140:              xor          a2, s7, s5
                  sll          t3, a2, a5
                  srli         gp, s8, 30
                  sub          s8, t6, t1
                  addi         a4, a2, -1021
145:              or           a7, s2, tp
                  blt          s0, zero, 152f
                  srli         s7, a7, 2
                  sub          sp, t4, a3
                  srai         zero, t0, 0
                  sub          t1, s3, t6
                  blt          s9, s8, 164f
152:              bne          a6, a5, 156f
                  auipc        t1, 704801
                  slt          s1, a2, zero
                  bne          a6, t4, 159f
156:              sub          s4, a0, zero
                  xori         s7, s7, -939
158:              addi         t3, a7, 1309
159:              or           t1, a2, s0
                  lui          a4, 259829
                  ori          s8, s10, -1495
                  slt          a0, a4, a7
                  bne          s5, s1, 181f
164:              srai         t4, t4, 21
                  addi         s6, tp, -1488
                  slti         s7, s8, -476
                  or           zero, s0, s5
                  srl          s3, s5, s5
                  slti         t1, a4, -305
                  addi         s7, tp, 1377
                  sltiu        tp, s2, -542
                  beq          s6, s10, 192f
                  xor          t0, t2, s7
                  add          s11, sp, a6
                  and          ra, a2, t4
                  sltu         t0, a0, s1
                  bgeu         t0, s0, 193f
                  blt          t4, s2, 197f
                  slli         s3, a6, 19
                  srli         s4, t2, 23
181:              srai         s3, ra, 30
                  auipc        s3, 294720
                  sltiu        a0, t4, 1299
                  add          t6, ra, a6
                  sltu         s8, gp, s9
                  bge          a1, a0, 199f
                  lui          s9, 62704
                  addi         s1, a7, -669
                  or           s2, s9, t4
                  ori          a5, s5, -380
                  sub          s2, s9, s1
192:              xor          t0, s5, s0
193:              bge          t4, a1, 212f
                  slli         s1, a1, 17
                  bge          a1, s0, 213f
                  slt          zero, zero, s2
197:              slt          s8, s11, s2
                  addi         t2, ra, 1355
199:              nop
                  lui          s3, 493212
                  andi         a3, s9, 574
                  srli         a0, t1, 15
                  sll          gp, s5, t2
                  slti         s4, a4, -1721
                  lui          t3, 652483
                  slt          s1, a2, zero
                  slti         a3, s10, -334
                  sub          s4, s0, gp
                  xor          a5, a2, ra
                  sltiu        sp, a3, 1302
                  bge          s3, s1, 230f
212:              slti         sp, t5, 510
213:              beq          sp, t4, 229f
                  or           a0, ra, s10
                  slt          ra, s3, s10
                  srli         sp, a4, 11
                  slli         s3, sp, 8
                  slti         a3, t1, -1821
                  bge          t0, s6, 233f
                  bne          t2, a7, 236f
                  blt          t2, t6, 231f
                  or           s6, s11, a7
                  blt          s8, s2, 236f
                  lui          s4, 706456
                  bne          s11, t4, 233f
                  slli         t6, t3, 29
                  slli         t2, a6, 26
                  sra          t2, s0, s0
229:              blt          sp, s1, 249f
230:              addi         a3, s11, -1646
231:              sra          t4, zero, s4
                  slt          t4, s2, s8
233:              bgeu         s1, a5, 243f
                  sub          s4, t4, t4
                  sra          s7, a2, s1
236:              xori         s3, tp, -1234
                  slti         a7, a1, 1981
                  srai         a1, s7, 23
                  xor          s6, a6, s0
                  sll          a2, s3, a1
                  sltiu        s9, a6, -1864
                  addi         t0, s3, 1384
243:              bge          a6, a1, 262f
                  nop
                  xori         s4, s10, 1989
                  bgeu         s9, s10, 262f
                  sra          ra, s6, s7
                  add          a3, t1, s11
249:              sub          a7, s2, tp
                  bltu         a1, a2, 256f
                  bgeu         a5, tp, 253f
                  nop
253:              slti         sp, s1, -1121
                  srai         a2, a1, 4
                  or           a2, s2, s11
256:              srl          s6, a6, s7
                  sub          a7, a7, a5
                  blt          s1, s2, 272f
                  sll          s8, gp, s0
                  sltu         s8, s11, a7
                  sltiu        s7, a5, -1329
262:              bltu         s5, s1, 281f
                  blt          tp, zero, 267f
                  bltu         t5, t6, 268f
                  xor          s6, a2, sp
                  bgeu         s11, a4, 269f
267:              andi         s9, a0, -357
268:              srai         t4, s7, 26
269:              andi         a4, s0, -1974
                  beq          a6, s8, 273f
                  srl          t0, t6, t5
272:              ori          s3, a3, -765
273:              nop
                  lui          t1, 289031
                  ori          s8, s9, -1847
                  auipc        s5, 218889
                  sltiu        t3, ra, 714
                  sltu         a1, s3, s6
                  nop
                  add          s3, s1, s8
281:              sltiu        t3, s3, 1499
                  or           s7, tp, t3
                  xor          t6, a3, s1
                  bltu         s2, sp, 299f
                  addi         t2, a4, -1198
                  slti         a1, s1, -1893
                  andi         sp, t5, -1430
                  beq          s3, a5, 302f
                  sra          s4, s3, zero
                  beq          zero, s9, 308f
                  bne          t6, s6, 297f
                  bltu         gp, t3, 300f
                  lui          t3, 790587
                  or           a2, s7, s6
                  bge          gp, ra, 309f
                  sltiu        a2, t5, -1557
297:              xor          s10, a1, a2
                  or           s10, s11, t0
299:              addi         sp, s9, 1841
300:              sltiu        t1, a7, 2015
                  slli         t6, s9, 30
302:              add          s7, a6, zero
                  and          s5, t2, gp
                  nop
                  slti         t6, a4, -734
                  auipc        s9, 449524
                  sltu         ra, a2, t1
308:              srl          s5, s0, ra
309:              sub          s2, s3, t3
                  bgeu         ra, a1, 326f
                  slt          t1, a7, gp
                  auipc        a4, 485848
                  slt          t1, sp, t6
                  add          s10, s5, t1
                  slti         a5, tp, -1032
                  nop
                  sll          a4, a4, s9
                  srli         s7, t5, 31
                  andi         s1, a5, -1569
                  andi         s3, s2, 121
                  sltiu        a4, gp, -442
                  sltu         a0, s2, gp
                  sltiu        s11, s8, -559
                  sltiu        a7, a2, 493
                  addi         t6, s3, -1495
326:              or           a7, t1, a2
                  sltiu        a0, t0, -1341
                  bge          a0, s3, 341f
                  sltiu        a2, s4, 475
                  sll          s6, s11, a4
                  beq          s2, s0, 350f
                  srl          s9, s4, a4
                  ori          t3, sp, 1315
                  sltu         tp, s2, t1
                  auipc        s2, 437230
                  blt          s9, t0, 340f
                  andi         a7, s1, -1800
                  andi         a5, sp, 191
                  auipc        ra, 725437
340:              lui          ra, 507316
341:              sltiu        sp, ra, 1260
                  srai         s2, s9, 7
                  srli         t2, a4, 19
                  auipc        t4, 385867
                  xor          s6, a1, zero
                  bge          s10, zero, 362f
                  or           sp, a0, t4
                  lui          t3, 243383
                  beq          s7, s10, 368f
350:              slt          s2, s4, s5
                  xor          s7, t0, a3
                  sltiu        t0, a1, 204
                  srl          tp, a5, t5
                  bne          s0, s9, 358f
                  blt          a6, s4, 375f
                  add          s7, a2, zero
                  slti         a1, t4, -1443
358:              bltu         s5, s6, 374f
                  nop
                  andi         a1, s0, -1079
                  or           s8, ra, a2
362:              srl          s5, s9, s11
                  sra          t6, s11, s6
                  srli         a5, tp, 11
                  sll          s1, a2, gp
                  and          t1, t4, a6
                  add          tp, s8, zero
368:              bltu         s6, gp, 372f
                  and          s5, t2, a7
                  lui          a7, 772530
                  sltiu        a0, a4, 1536
372:              srl          a1, s11, a0
                  auipc        t1, 874388
374:              srai         a5, t2, 17
375:              bltu         s1, ra, 385f
                  ori          zero, s7, 1686
                  lui          t3, 380959
                  bne          s7, s4, 388f
                  srli         a7, t6, 3
                  addi         a5, ra, 651
                  srli         s6, t1, 30
                  sltu         ra, s4, a2
                  ori          a1, t5, 295
                  auipc        a5, 411292
385:              andi         t0, t6, -859
                  bge          s9, s10, 405f
                  srai         zero, t6, 29
388:              sll          a7, a2, a5
                  xori         t2, t4, 635
                  xori         a2, s5, 1659
                  andi         sp, sp, 1816
                  xori         zero, s11, 937
                  lui          s3, 365412
                  sll          a1, t0, s0
                  bltu         a7, s11, 415f
                  and          t1, a7, t6
                  bne          s4, a7, 400f
                  bgeu         t1, a0, 411f
                  and          s9, zero, a0
400:              bge          t6, tp, 418f
                  beq          t2, s7, 405f
                  addi         a1, t5, 1830
                  nop
                  ori          s8, t5, 624
405:              beq          s11, ra, 420f
                  sll          s2, s9, a7
                  srai         a1, a4, 7
                  sltiu        gp, t0, 655
                  sra          t0, t4, s3
                  sub          t4, s7, s9
411:              nop
                  bne          t1, sp, 425f
                  bge          s7, a5, 429f
                  and          tp, zero, t5
415:              sll          tp, s7, t2
                  srli         s11, sp, 21
                  slt          a0, t3, zero
418:              and          ra, s2, t1
                  bge          ra, s9, 421f
420:              slt          s7, a2, t5
421:              and          s9, a1, s8
                  sltu         s9, zero, s11
                  slt          t6, s6, s5
                  bltu         t0, s2, 427f
425:              sra          sp, s6, t0
                  add          s9, zero, s0
427:              auipc        s8, 197892
                  nop
429:              xor          s10, s1, sp
                  sub          a7, s9, a2
                  lui          s6, 489743
                  slt          a2, a4, s2
                  and          s1, t4, a6
                  auipc        ra, 328749
                  or           gp, s8, a0
                  andi         t1, s8, 1773
                  add          gp, t1, tp
                  srl          a0, s6, t4
                  bltu         s6, t2, 458f
                  slti         s3, a0, -156
                  slt          t3, a5, a6
                  and          a3, a4, s11
                  auipc        t2, 519430
                  addi         t3, s8, -718
                  lui          zero, 396230
                  srai         s1, t1, 10
                  add          s11, tp, t0
                  slli         sp, a1, 26
                  and          a4, a1, t2
                  xori         s5, a6, -1166
                  sll          s9, t1, t1
                  la           t3, sub_6
                  xori         s1, t4, -2042
                  addi         t3, t3, 539
                  bltu         a5, gp, sub_4_j7 #branch to jump instr
                  and          s7, s5, t2
                  and          s2, s5, s10
                  andi         a7, s5, 735
                  sra          a3, s5, tp
                  sltu         zero, t1, t0
                  sll          gp, t1, t2
                  srli         gp, s4, 20
                  sltiu        t4, zero, 1049
sub_4_j7:         jalr         t4, t3, -538 #jump sub_4 -> sub_6
                  ori          tp, a4, -80
                  slli         tp, t1, 8
                  srli         sp, a2, 23
                  bltu         ra, t3, 473f
                  ori          a5, s4, -1919
                  and          sp, s0, s3
                  auipc        a3, 326657
458:              xor          t0, t3, s7
                  lui          a1, 352804
                  or           s11, t5, t1
                  lui          s5, 620548
                  xor          t0, t5, a1
                  and          t3, a5, s3
                  sltu         tp, s8, a6
                  and          a5, t0, t0
                  srli         tp, zero, 2
                  or           s6, a2, a1
                  sub          a4, tp, s2
                  slt          t2, s11, a5
                  nop
                  bgeu         t1, s4, 475f
                  sra          s6, s10, t6
473:              andi         a5, zero, 1520
                  bge          t6, t1, 485f
475:              sll          t1, tp, s8
                  auipc        a3, 350302
                  bge          s10, t6, 485f
                  add          s11, s3, t6
                  sltu         t2, gp, ra
                  srl          t2, s11, a2
                  auipc        s5, 540563
                  sra          s1, s6, t0
                  nop
                  srl          tp, a4, a2
485:              ori          s8, a3, -806
                  lw           t4, 4(s0)
                  nop
                  sltiu        s1, s4, -1022
                  addi         s0, s0, 44
                  sll          s3, s1, gp
                  sra          a5, a4, s0
                  sltu         a7, s10, s5
                  slli         s9, a1, 3
                  slti         s10, s0, 861
628:              addi x17, x29, 0
628:              jalr x17, x17, 0
sub_1:            srli         tp, s10, 12
                  sltu         s9, s6, t4
                  bltu         a3, a1, sub_1_stack_p
                  slli         zero, t3, 20
                  ori          zero, s6, -1002
                  or           t6, a1, a0
sub_1_stack_p:    addi         s0, s0, -56
                  slt          t2, t2, t6
                  slli         s7, t3, 31
                  add          t2, s10, s0
                  sw           t4, 4(s0)
                  xor          s11, s0, a5
                  sltu         t2, t3, s10
                  slt          s5, a4, ra
                  ori          a5, a6, -386
                  sltu         zero, s6, t2
                  slti         a7, t5, 1217
                  sltiu        s3, a7, -704
                  slt          ra, zero, s7
                  andi         a7, s4, -1487
                  slti         s10, s1, 1274
                  nop
                  auipc        s3, 333985
sub_1_j3:         jal          t4, sub_3 #jump sub_1 -> sub_3
                  la           s1, region_1+1365 #start riscv_load_store_rand_instr_stream_1
                  sll          a5, s2, t4
                  lb           s3, 178(s1)
                  sb           t3, -32(s1)
                  sb           t6, -123(s1)
                  sltiu        zero, s5, -1178
                  lbu          a1, -301(s1)
                  lb           zero, -635(s1)
                  sw           s1, -813(s1)
                  or           s5, s1, zero
                  sra          s3, t3, s0
                  lb           s6, -1362(s1)
                  sub          sp, t0, sp
                  sra          s8, s0, a4
                  lhu          ra, -439(s1)
                  lbu          s2, -801(s1)
                  auipc        sp, 462163
                  addi         s3, sp, 1108
                  and          s9, a2, t0
                  add          t2, s0, t0
                  lh           t0, -1169(s1)
                  slt          gp, a5, a7
                  sltiu        a1, t6, 912
                  lb           a3, -1118(s1)
                  lbu          t2, -422(s1)
                  sb           s1, 43(s1) #end riscv_load_store_rand_instr_stream_1
                  la           a0, region_0+813 #start riscv_load_store_rand_instr_stream_0
                  lhu          t1, -9(a0)
                  sb           a7, -59(a0)
                  lbu          t0, -34(a0)
                  sb           a2, 18(a0)
                  nop
                  srl          ra, sp, a5
                  lbu          s5, 0(a0)
                  sltu         a2, s10, s2
                  lb           s9, -42(a0)
                  add          t3, s8, tp
                  slli         tp, s7, 13
                  lbu          s3, -46(a0)
                  sb           t0, 46(a0)
                  lhu          a5, 15(a0)
                  sb           a6, 21(a0)
                  sb           t5, 18(a0)
                  lb           a3, 46(a0)
                  lb           zero, 63(a0)
                  slti         s5, s7, -1148
                  addi         s1, s9, 1154
                  sh           t4, -35(a0)
                  auipc        a3, 467852
                  or           a5, ra, t1
                  add          t0, s10, t2
                  sltu         t1, s8, t4
                  sub          s8, t5, t2
                  slli         a5, s0, 23
                  slti         s4, a4, -653
                  sw           a2, 59(a0)
                  lb           zero, -45(a0)
                  add          s1, s6, a2
                  lbu          t0, -54(a0)
                  sb           zero, -38(a0)
                  lhu          a7, 13(a0)
                  slti         a1, s0, 1033
                  xori         s11, s10, 310
                  lui          a7, 880701
                  lb           s8, 10(a0)
                  lhu          a3, -15(a0)
                  srai         s8, s9, 4
                  and          a1, t2, a5
                  andi         s6, a3, -1706
                  sb           s0, 31(a0)
                  xori         t3, t2, -586
                  lbu          s2, -24(a0)
                  lbu          s11, -56(a0) #end riscv_load_store_rand_instr_stream_0
                  sra          a4, tp, s5
                  blt          t5, s2, 12f
                  bltu         t0, t0, 4f
                  xori         tp, t6, -2
4:                auipc        s6, 34892
                  add          s6, t5, a1
                  beq          t5, t0, 10f
                  slli         a0, t6, 23
                  auipc        s11, 597994
                  srl          a0, t3, s6
10:               or           s10, s9, sp
                  sltiu        s4, s1, 1752
12:               srl          tp, tp, t0
                  srli         s4, t3, 12
                  srai         zero, a5, 16
                  lui          a4, 718249
                  beq          s7, s0, 33f
                  srli         s5, a1, 2
                  blt          a4, ra, 35f
                  srli         s8, s1, 24
                  sub          sp, s1, a5
                  auipc        t6, 473920
                  or           a2, s8, s9
                  auipc        t0, 142548
                  xori         s8, s4, -1872
                  andi         t0, sp, -1926
                  srli         t3, a2, 19
                  sltu         s11, s5, s10
                  blt          zero, s1, 35f
                  bge          a3, a4, 46f
                  add          s5, s6, s9
                  srai         a5, a1, 20
                  andi         tp, s1, -401
33:               sub          a5, a1, a1
                  sra          t2, s8, s10
35:               andi         zero, s9, 1005
                  xor          t4, a6, ra
                  srli         s6, a3, 27
                  srl          ra, s9, a3
                  sub          t2, s4, s1
                  slt          a3, zero, sp
                  sltu         s4, t2, s4
                  slti         a0, zero, 876
                  srl          s8, a1, a0
                  srl          s9, s6, s10
                  andi         ra, t5, 176
46:               beq          s6, s1, 48f
                  srli         s11, s1, 22
48:               sltiu        tp, a0, 1617
                  srli         a7, a4, 10
                  bgeu         a3, s11, 61f
                  slli         s10, a2, 31
                  slti         ra, s9, -1757
                  auipc        t1, 968989
                  slti         s8, s7, -1142
                  xor          t6, a0, t6
                  bge          s5, s7, 73f
                  slti         t2, a0, -1842
                  ori          s3, a1, -494
                  xori         gp, s7, 2041
                  ori          t0, a0, 1391
61:               slti         t3, a5, 183
                  slli         t6, s4, 26
                  blt          t4, a3, 71f
                  ori          t0, t5, 1667
                  blt          s11, zero, 66f
66:               sltiu        gp, a6, -1678
                  sra          s1, gp, a4
                  bltu         a0, t1, 74f
                  nop
                  sltu         s2, a0, t6
71:               sll          s7, t1, t1
                  nop
73:               andi         s5, s5, -873
74:               sub          s2, gp, t3
                  or           a4, t6, a0
                  and          t0, a0, s1
                  bne          a7, zero, 88f
                  slt          t3, s8, t1
                  xori         t3, t4, 805
                  xor          a7, a7, a2
                  addi         t4, s3, -641
                  bge          s6, s6, 84f
                  add          s8, t1, a1
84:               xor          t6, a4, s10
                  xori         a7, a5, -57
                  sltiu        s1, sp, -1483
                  bne          s1, t4, 93f
88:               lui          a7, 886503
                  and          s3, gp, t4
                  xori         s11, s4, 1237
                  sll          a1, s5, s11
                  slti         a0, a4, 1474
93:               slt          s10, zero, t0
                  addi         s3, sp, -92
                  blt          t3, t2, 115f
                  ori          s2, t2, -1675
                  slti         s3, a1, -2024
                  bge          t6, t4, 104f
                  nop
                  sltiu        tp, zero, -518
                  sltu         s10, a7, tp
                  sltiu        s8, t5, -1239
                  lui          s8, 371432
104:              xor          gp, t2, tp
                  blt          a5, a4, 111f
                  andi         s9, ra, -1193
                  sub          s8, a2, zero
                  nop
                  srli         s3, s1, 29
                  slli         a7, a7, 8
111:              auipc        a3, 171787
                  xor          a4, s2, tp
                  sll          t4, t4, s7
                  addi         s7, a0, 1752
115:              bne          s8, s11, 130f
                  andi         s11, s10, 1991
                  bgeu         t2, a4, 128f
                  auipc        a5, 240156
                  slli         s8, s3, 7
                  beq          gp, t4, 122f
                  lui          a7, 172470
122:              auipc        t6, 931218
                  sltu         a4, zero, s1
                  sll          gp, s1, s8
                  sltiu        t1, a3, -1771
                  or           a1, a1, t6
                  srai         t2, s3, 24
128:              or           t3, s5, t1
                  lui          s4, 300277
130:              beq          sp, t3, 145f
                  sra          a2, gp, zero
                  sltiu        s7, a6, 1231
                  sub          s6, t2, s3
                  lui          s11, 367293
                  xor          t0, t4, a7
                  xor          s10, a3, ra
                  sll          a1, t3, tp
                  xori         a3, a5, 712
                  sltiu        s7, s6, -1805
                  andi         a7, s11, -1470
                  add          t6, a0, s8
                  nop
                  nop
                  sltiu        t0, a5, -1855
145:              xor          t1, zero, t0
                  slli         s7, t6, 27
                  andi         a1, s1, 1225
                  srli         a3, s10, 21
                  ori          s1, t0, -174
                  bne          gp, ra, 167f
                  sltiu        s8, gp, 665
                  ori          s8, s5, 1761
                  bltu         sp, s8, 155f
                  addi         zero, s10, -1692
155:              bne          a7, ra, 167f
                  blt          ra, a7, 170f
                  xori         ra, s9, 1115
                  xor          a1, t2, a1
                  sll          a3, s5, a3
                  blt          gp, gp, 173f
                  bltu         s11, s4, 168f
                  sll          s10, t4, s10
                  ori          s4, a3, -62
                  bne          zero, zero, 174f
                  xor          s4, t4, a6
                  addi         s8, s5, 830
167:              sra          tp, a3, a1
168:              sltu         t6, zero, sp
                  slli         t3, a0, 22
170:              blt          t2, gp, 177f
                  and          s3, s0, s6
                  nop
173:              blt          a3, s6, 183f
174:              bgeu         t4, s3, 189f
                  bgeu         t3, tp, 190f
                  sltiu        a0, a1, 0
177:              auipc        s8, 996033
                  bne          s1, t4, 184f
                  sll          s8, s4, a4
                  sra          a1, s11, s2
                  srl          t3, t1, sp
                  sll          s6, zero, s4
183:              bne          t2, t6, 200f
184:              sub          gp, s3, s1
                  sub          t1, zero, gp
                  andi         s1, s2, -1600
                  or           a3, t0, a0
                  lui          t0, 574890
189:              nop
190:              lui          s8, 120383
                  and          a3, a5, t4
                  sra          t4, s6, s4
                  slt          s11, tp, s9
                  blt          t1, ra, 211f
                  addi         t1, a4, 1738
                  nop
                  slti         t6, t0, -510
                  bge          t3, s4, 200f
                  ori          s5, t0, -44
200:              srli         ra, s3, 19
                  ori          a2, a4, 359
                  srai         ra, gp, 5
                  beq          a6, t4, 223f
                  beq          sp, s4, 215f
                  sltu         s11, s7, s11
                  slt          t0, s11, gp
                  srai         a4, tp, 13
                  andi         s11, s11, 1956
                  bne          s3, s6, 222f
                  and          s2, ra, s1
211:              addi         a7, a3, 1589
                  bltu         ra, t6, 226f
                  sra          s6, s2, a7
                  xori         s8, t6, 1509
215:              sub          sp, s0, a0
                  bne          a1, a2, 228f
                  slt          zero, a1, a3
                  xori         s5, s6, 361
                  sltiu        sp, t5, 795
                  sltu         gp, a2, s6
                  add          a7, a3, a6
222:              blt          t4, t3, 223f
223:              sub          s1, s7, a0
                  slti         s11, t5, 632
                  sltu         t6, sp, a7
226:              add          zero, s6, s1
                  bne          s8, t4, 233f
228:              srli         s7, t2, 11
                  sll          a3, a5, tp
                  andi         a4, s0, 1192
                  slli         s6, s4, 30
                  sub          sp, t5, t5
233:              beq          s1, t3, 241f
                  bltu         ra, s6, 245f
                  srl          a5, s6, s4
                  nop
                  auipc        t2, 174817
                  slli         s7, a3, 13
                  ori          a7, tp, -1998
                  auipc        s11, 895293
241:              ori          s7, s10, 524
                  slti         t0, s4, 1889
                  sra          a1, s9, t4
                  sra          s4, t5, s7
245:              slt          a0, t3, a5
                  auipc        s7, 847314
                  slli         s10, s0, 17
                  bge          a0, a1, 250f
                  andi         tp, a6, 577
250:              blt          s7, t3, 261f
                  ori          s4, s10, 23
                  slt          a2, s4, a5
                  blt          t3, a1, 270f
                  nop
                  nop
                  addi         t2, tp, 595
                  sll          a5, a4, t0
                  sltiu        t1, s9, -1651
                  andi         tp, a7, 198
                  addi         s9, t5, 423
261:              sltiu        a4, s6, -44
                  or           s7, t3, a5
                  andi         s5, t6, 1368
                  addi         t3, s7, 950
                  blt          a7, t5, 271f
                  nop
                  andi         t6, s8, 1167
                  add          t0, a1, s4
                  ori          s6, s9, 1728
270:              slt          a1, s3, t1
271:              addi         s6, s7, -220
                  blt          t4, t2, 274f
                  slli         a3, s0, 21
274:              sltiu        s1, a5, 1307
                  sltu         s6, gp, s9
                  add          s5, t0, zero
                  bge          a7, s8, 283f
                  sra          s7, sp, s5
                  auipc        a1, 80878
                  or           a3, a6, s6
                  sll          gp, a3, s10
                  sll          s6, zero, tp
283:              sub          tp, s11, s5
                  srai         a2, ra, 1
                  beq          a1, a1, 287f
                  bge          s9, t5, 287f
287:              srli         s10, s7, 3
                  nop
                  sll          t2, t1, s6
                  sll          a3, s11, tp
                  xori         t6, a3, 1708
                  lw           t4, 4(s0)
                  andi         gp, gp, -579
                  addi         s0, s0, 56
                  sltu         t2, t4, s10
                  sub          s7, a7, s7
                  and          t1, s0, zero
                  and          a7, t3, s4
396:              addi x10, x29, 1
396:              jalr x10, x10, 0
sub_7:            sra          s3, s5, s0
                  srai         a3, a7, 29
                  srai         t2, s10, 0
                  addi         s5, s6, 394
                  addi         s0, s0, -20
                  sw           t4, 4(s0)
                  addi         s3, t0, -1722
                  or           s4, s9, s0
                  sll          s5, s4, tp
                  srai         s7, s10, 1
                  ori          t1, s5, 1367
                  la           s1, region_1+1576 #start riscv_load_store_rand_instr_stream_0
                  lb           s3, -172(s1)
                  lh           t2, -152(s1)
                  sw           a5, 140(s1)
                  lhu          t0, -140(s1)
                  sltu         s8, s9, s2
                  sltiu        t1, t2, 1297
                  nop
                  lbu          sp, 185(s1)
                  sb           a6, -132(s1)
                  lhu          s3, -30(s1)
                  sb           s9, 170(s1)
                  lbu          t6, -202(s1)
                  lb           a1, -3(s1)
                  slti         s6, a2, 233
                  and          a5, s3, a6
                  sub          sp, s9, s5
                  lb           s3, -157(s1)
                  and          a1, s6, gp
                  lw           t1, 124(s1)
                  srai         a1, t6, 4
                  sb           s5, 245(s1)
                  sb           s11, 160(s1)
                  sltiu        t2, s5, -455
                  sh           s10, 232(s1)
                  add          tp, a6, t4
                  lb           s11, 101(s1)
                  ori          t3, a7, 392
                  lbu          sp, 168(s1)
                  xor          s8, s8, a3
                  lb           a0, -87(s1) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_0+1634 #start riscv_load_store_rand_instr_stream_2
                  addi         zero, t3, -948
                  lb           s7, 79(sp)
                  sb           a4, 40(sp)
                  srl          s2, t6, s10
                  lhu          zero, -20(sp)
                  lbu          s4, -235(sp)
                  or           s5, s6, zero
                  sw           s4, -86(sp)
                  ori          gp, t3, 960
                  addi         s3, a0, -2025
                  lh           a0, -110(sp)
                  sb           t3, -115(sp)
                  sb           a2, 70(sp)
                  sb           a3, -8(sp)
                  xori         s1, t6, 1581
                  lbu          a4, 24(sp)
                  srl          s5, t2, s3
                  slli         ra, sp, 10
                  sll          tp, a3, a6
                  lb           gp, -89(sp)
                  andi         s2, s1, 1361
                  sub          a2, a7, ra
                  lbu          t0, -194(sp)
                  sb           s4, -227(sp)
                  xori         t0, a6, 1157
                  auipc        gp, 778449
                  ori          s7, s11, 781
                  lbu          s3, 109(sp)
                  auipc        s7, 752990
                  lb           s1, 86(sp)
                  slt          a3, a6, s7
                  xori         s9, a5, -1926
                  lbu          t3, -139(sp)
                  lhu          s10, 56(sp)
                  sh           a3, 72(sp)
                  lb           s8, 178(sp)
                  nop
                  srai         s9, tp, 20
                  lw           a0, 90(sp)
                  sltiu        s1, s4, 1164
                  andi         zero, tp, 696
                  lw           s3, -250(sp)
                  ori          a2, a7, 1750
                  sltu         s2, s3, a1
                  lbu          a2, -33(sp)
                  slt          a1, a4, a1
                  lb           a5, 101(sp)
                  addi         s2, s11, 36
                  sltu         a7, zero, s2
                  nop
                  lh           s11, -164(sp) #end riscv_load_store_rand_instr_stream_2
                  la           s9, region_1+130 #start riscv_load_store_rand_instr_stream_5
                  lui          a0, 977483
                  srli         t4, a7, 8
                  sltiu        sp, t0, 217
                  sb           sp, 1053(s9)
                  ori          s6, gp, 1084
                  sub          ra, t3, a1
                  slti         a0, s5, 404
                  sb           s3, 1007(s9)
                  slli         a0, s7, 18
                  add          s5, zero, a1
                  auipc        s5, 118480
                  addi         t4, s2, 582
                  or           a4, s2, a2
                  xori         t6, t5, -251
                  andi         s6, s1, 263
                  lbu          t4, 1845(s9)
                  lb           t3, 439(s9)
                  nop
                  sub          t3, a3, ra
                  slti         s7, s6, 917
                  addi         s7, s5, -2046
                  sltu         gp, s0, s6
                  sb           a0, 47(s9)
                  sb           t2, 1313(s9)
                  sh           t2, 230(s9)
                  lbu          t1, 779(s9)
                  lbu          t6, 847(s9)
                  sra          s4, s10, a3
                  sw           a7, 1818(s9)
                  srai         t4, ra, 29
                  sltu         s5, t3, gp
                  srai         zero, s8, 19
                  lbu          t2, 1241(s9)
                  srl          a0, s10, s11
                  lui          s5, 872237
                  sub          t3, sp, t4
                  srai         t6, s11, 14
                  lb           sp, 801(s9)
                  add          t0, s1, s9
                  slt          s4, t5, a2
                  sll          s10, s5, s3
                  slli         ra, s5, 21
                  lbu          t6, 887(s9) #end riscv_load_store_rand_instr_stream_5
                  sub          tp, s4, ra
                  blt          ra, s9, 17f
                  add          s4, tp, s10
                  and          t1, s0, s10
                  beq          a0, sp, 6f
                  lui          tp, 456082
6:                srai         s11, a6, 23
                  slt          s11, a2, s8
                  ori          a5, t0, -1008
                  bne          a5, s10, 12f
                  sll          t4, s9, a7
                  or           s11, s5, a3
12:               sra          s9, s8, ra
                  sra          ra, tp, a3
                  xori         zero, s10, 257
                  slt          t0, t0, s10
                  or           a7, a6, s10
17:               sll          tp, s6, t0
                  xor          s5, a4, a7
                  add          t0, s6, a2
                  beq          tp, t2, 28f
                  or           a3, zero, a5
                  blt          t4, s11, 30f
                  beq          s0, t4, 41f
                  nop
                  srl          s2, s3, s5
                  bltu         s1, s7, 32f
                  srli         tp, a6, 31
28:               bne          s10, t5, 31f
                  bltu         s7, s6, 41f
30:               srl          t0, s11, zero
31:               nop
32:               or           s7, a0, zero
                  srai         s10, s1, 2
                  and          s9, a2, s10
                  nop
                  blt          tp, a2, 39f
                  andi         a1, a3, -620
                  bne          s10, s4, 43f
39:               xor          a3, a0, t2
                  slt          t0, t2, s4
41:               and          a3, t3, s4
                  ori          s7, a0, -5
43:               sll          a7, t4, s7
                  bne          s8, t1, 48f
                  srl          t0, a2, s0
                  andi         s8, a4, 337
                  bltu         s0, a3, 53f
48:               bge          s1, t6, 59f
                  or           t0, s7, gp
                  slli         a1, ra, 23
                  beq          ra, s11, 69f
                  andi         s2, sp, 522
53:               auipc        a2, 588650
                  srl          t6, a5, t2
                  add          s4, s7, t4
                  xori         sp, s1, -165
                  add          t4, t2, s4
                  sltu         s3, s10, s8
59:               or           t3, a5, t5
                  bge          t4, a5, 61f
61:               sltiu        a3, t1, -1206
                  xori         s2, s11, 1818
                  andi         s1, a4, -495
                  beq          a1, a7, 66f
                  blt          a2, s9, 78f
66:               auipc        s4, 1031530
                  sra          a2, s0, t0
                  sra          a0, s2, s3
69:               bge          t0, a7, 78f
                  slt          a4, zero, s6
                  bgeu         a1, s1, 77f
                  ori          s1, a2, 526
                  or           gp, zero, s0
                  xor          s8, s3, s6
                  add          sp, s7, s11
                  srai         t4, s9, 2
77:               or           t2, s7, s4
78:               ori          s11, s4, -524
                  sra          t0, a7, a2
                  addi         s5, s10, -1074
                  bge          s11, a1, 97f
                  srl          tp, a3, sp
                  slt          s5, t5, a1
                  bltu         s10, s4, 90f
                  and          zero, zero, t6
                  blt          s6, s4, 98f
                  bge          a0, zero, 101f
                  or           gp, t0, a7
                  slli         a0, sp, 27
90:               bge          s1, s9, 104f
                  srli         zero, t1, 31
                  or           s6, s1, t6
                  addi         s3, s10, 2002
                  lui          a7, 124772
                  add          s6, s9, t4
                  bltu         s3, gp, 115f
97:               lui          s7, 949219
98:               bgeu         gp, t4, 118f
                  and          s3, gp, s9
                  sltu         a5, t2, s0
101:              slt          s2, t2, s11
                  sra          zero, tp, a2
                  add          s7, s11, a2
104:              auipc        t6, 296974
                  bgeu         t6, s10, 112f
                  sub          a3, t2, sp
                  bge          s4, t0, 118f
                  andi         t4, s2, -573
                  slli         s11, s8, 2
                  addi         a3, t5, -43
                  sltiu        s9, gp, 1378
112:              xori         a4, a0, 314
                  sltiu        t2, t0, -319
                  lui          a0, 144860
115:              slti         s2, s2, 810
                  sll          s11, s1, ra
                  bne          ra, s8, 125f
118:              srl          a1, s7, s0
                  nop
                  andi         zero, t6, -1412
                  slt          s3, s11, s0
                  bltu         t3, gp, 130f
                  bne          t1, s6, 124f
124:              srai         s3, sp, 20
125:              slt          s5, a2, s0
                  sll          s8, s10, sp
                  bne          s8, t3, 132f
                  srai         s5, a0, 0
                  sll          s3, t2, a3
130:              slli         a7, s2, 0
                  slt          t3, a6, t2
132:              slti         tp, a3, -1052
                  lui          gp, 875065
                  slti         s8, s1, 279
                  andi         s4, a4, 45
                  srli         ra, s4, 27
                  srl          gp, ra, tp
                  auipc        tp, 670218
                  sra          s4, s0, s11
                  auipc        a4, 428443
                  nop
                  auipc        s5, 958169
                  blt          s4, t0, 154f
                  ori          s3, t1, -919
                  sltu         a7, s3, a1
                  sltiu        tp, s10, -782
                  or           s1, a0, zero
                  slti         t3, a5, 1861
                  and          a0, a6, s3
                  srl          tp, t4, s8
                  xor          a2, s3, t6
                  sll          tp, a4, s9
                  addi         s7, t0, -1148
154:              bgeu         zero, s2, 156f
                  sub          a4, s4, t3
156:              auipc        s10, 476646
                  slli         t1, a6, 26
                  sll          a0, s1, s11
                  bne          t6, s10, 162f
                  blt          s10, t2, 174f
                  srai         s5, s5, 3
162:              and          s7, ra, t0
                  sll          a3, ra, s6
                  andi         tp, a6, -357
                  sub          a4, s10, s8
                  sub          t3, a6, s8
                  or           t6, s11, a7
                  srai         s9, t1, 13
                  add          tp, t2, zero
                  bne          a1, ra, 189f
                  slt          s5, s7, s2
                  auipc        s5, 740636
                  sll          a3, a7, s0
174:              xori         a7, t4, 1844
                  andi         a1, ra, 1709
                  andi         s9, ra, 520
                  srl          s11, s11, t2
                  bltu         s5, t3, 184f
                  slt          s2, ra, s6
                  sll          a7, ra, tp
                  slli         t3, s10, 12
                  la           sp, region_0+332 #start riscv_load_store_rand_instr_stream_4
                  lbu          t0, -7(sp)
                  auipc        t6, 674247
                  ori          t3, s9, -842
                  ori          s1, s2, 113
                  slt          a5, zero, s8
                  slt          a5, s8, s2
                  nop
                  lh           s9, 56(sp)
                  lb           t2, 45(sp)
                  lb           a4, -37(sp)
                  slti         ra, t1, -1151
                  lbu          a1, -32(sp)
                  sw           a6, 56(sp)
                  sh           s11, 52(sp)
                  sra          a5, t1, gp
                  sb           s9, -10(sp)
                  lbu          a7, -29(sp)
                  sb           gp, -13(sp)
                  lb           a4, 21(sp)
                  srai         s9, s9, 16
                  nop
                  lbu          zero, -23(sp)
                  sw           s6, -32(sp) #end riscv_load_store_rand_instr_stream_4
                  srl          t0, sp, s4
                  slli         t0, a4, 5
184:              or           s9, t1, t1
                  addi         t1, a5, -526
                  ori          a1, s0, 1929
                  and          t1, s11, gp
                  srl          s9, a5, tp
189:              lui          a0, 423476
                  bltu         s4, s4, 193f
                  srl          s8, a2, a1
                  ori          gp, s0, 709
193:              srli         zero, a2, 13
                  bgeu         a6, zero, 208f
                  xori         a0, t2, 795
                  ori          s7, a5, -1240
                  or           s8, a0, s1
                  slli         s1, s4, 20
                  add          a1, s3, s10
                  slt          zero, a6, t0
                  auipc        s11, 450673
                  sltu         tp, s6, s1
                  or           t1, t3, s11
                  addi         gp, t6, 1593
                  bne          t2, s10, 225f
                  bne          s1, s6, 210f
                  sra          s3, zero, s0
208:              add          sp, sp, s10
                  beq          a4, a4, 217f
210:              andi         s3, a3, -851
                  bne          t6, a6, 217f
                  or           a2, s9, t4
                  and          zero, s6, s9
                  blt          a5, t6, 230f
                  or           a5, a1, a5
                  srli         a7, s10, 31
217:              slli         a5, ra, 17
                  srai         a5, a7, 27
                  and          a3, a1, a4
                  srai         s9, s9, 28
                  ori          s1, t5, -447
                  ori          t0, s2, -559
                  xori         a5, a3, -333
                  bge          s11, t1, 230f
225:              lui          ra, 730428
                  blt          t1, s9, 242f
                  srli         t6, s6, 18
                  xori         a3, s1, -1163
                  sll          a2, a2, s11
230:              sra          s10, s0, a7
                  srai         s4, s1, 4
                  blt          ra, s2, 250f
                  auipc        a0, 387869
                  bltu         t0, s0, 236f
                  bltu         s4, t0, 244f
236:              sra          t6, t5, a0
                  slti         s9, gp, 259
                  srl          s9, t5, zero
                  nop
                  ori          s7, s10, -1619
                  srl          s6, t5, s8
242:              srl          s1, tp, s4
                  srl          a7, t3, s4
244:              slt          a3, t5, a3
                  bltu         a1, zero, 253f
                  sub          t2, s1, s10
                  srl          a5, s9, s10
                  or           tp, s8, t6
                  or           tp, t4, a1
250:              slt          a0, s11, s3
                  sltu         s3, t2, a0
                  bltu         s5, t4, 259f
253:              sltu         s2, s4, a0
                  bgeu         ra, s9, 272f
                  sub          s11, a0, t5
                  sll          a3, t4, t0
                  srli         zero, s0, 12
                  auipc        s5, 407129
259:              or           s10, t0, a7
                  sltu         zero, s9, s0
                  sub          a2, t5, a2
                  sltiu        a0, a5, -355
                  srli         a7, t5, 14
                  sll          t0, s6, s7
                  slti         s2, zero, 1653
                  bgeu         a4, zero, 279f
                  add          s1, a7, t6
                  srai         s2, zero, 24
                  bltu         s8, s0, 281f
                  ori          t3, s1, -1144
                  sltiu        a4, a5, 1254
272:              srl          tp, t3, a5
                  slli         s8, s3, 1
                  ori          t3, t3, 1923
                  bne          s6, s2, 278f
                  xor          s5, s7, s8
                  beq          t5, a1, 288f
278:              slti         a1, s0, -1466
279:              blt          s0, s6, 291f
                  nop
281:              sll          s10, a5, t0
                  nop
                  or           sp, t5, a4
                  lui          a1, 388053
                  xori         a4, s11, -697
                  sra          a4, t6, t1
                  bge          s11, tp, 293f
288:              slli         tp, ra, 29
                  or           ra, s0, t3
                  bltu         s1, t3, 309f
291:              srai         a3, t2, 3
                  srl          s3, s8, s8
293:              sltu         s4, a3, zero
                  andi         a2, s4, -1227
                  sltu         s4, a4, t1
                  sra          t3, a0, s2
                  bne          t2, s5, 308f
                  addi         s4, t1, 1125
                  sltiu        a0, zero, 639
                  sra          s11, ra, t0
                  addi         s5, ra, 886
                  slti         s3, s7, -1164
                  sltiu        a3, a0, 513
                  srli         s9, a7, 22
                  bge          s8, zero, 311f
                  slti         a4, a3, -1330
                  slti         ra, s11, -1964
308:              xori         s8, s7, 730
309:              beq          a2, t0, 315f
                  sra          a3, s1, a3
311:              sra          a7, a7, a7
                  xori         s5, t1, 1703
                  addi         sp, ra, 991
                  andi         s6, a1, -1748
315:              bge          s4, a6, 321f
                  slti         sp, a2, 1443
                  auipc        gp, 869778
                  and          s10, s6, s1
                  la           s4, region_1+1409 #start riscv_load_store_rand_instr_stream_1
                  xori         t6, ra, -856
                  lbu          a0, 2(s4)
                  sra          a1, t3, a6
                  sh           s9, 9(s4)
                  sb           s5, -2(s4)
                  lbu          s10, -12(s4)
                  lui          t1, 978489
                  sb           gp, 1(s4)
                  and          a7, s4, a2
                  lb           t3, 0(s4)
                  sltiu        s11, s11, 1674
                  and          t6, s11, s3
                  sb           s7, -10(s4)
                  lh           a2, -11(s4)
                  add          s2, a2, t6
                  sltu         s7, ra, s1
                  lbu          a4, -8(s4)
                  lhu          s3, -9(s4)
                  sra          ra, tp, zero
                  lb           a2, -2(s4)
                  sltu         s10, t1, a3
                  or           ra, s2, s7
                  lb           a4, 0(s4)
                  nop
                  sll          s9, a0, s11
                  lb           a1, 9(s4)
                  addi         a4, s0, -262
                  srli         a4, t5, 12
                  nop
                  lbu          t6, -2(s4)
                  sb           sp, 16(s4)
                  lb           t4, -10(s4)
                  lhu          t6, 5(s4) #end riscv_load_store_rand_instr_stream_1
                  auipc        s5, 604563
                  lui          s3, 236218
321:              blt          tp, a6, 325f
                  slt          a0, tp, t0
                  addi         t2, s5, 844
                  bne          a1, sp, 325f
325:              sub          t6, s0, s5
                  nop
                  srai         s5, a2, 0
                  blt          a5, t2, 341f
                  blt          s8, ra, 337f
                  sltiu        a0, sp, 416
                  lui          a0, 1023674
                  nop
                  slt          s9, zero, a5
                  srl          a7, s3, a0
                  slt          gp, t6, t1
                  and          tp, a4, t0
337:              andi         s7, zero, 382
                  sltu         s11, t6, tp
                  and          s11, s5, a7
                  sltu         sp, s7, a6
341:              add          gp, t5, s6
                  sra          a5, s11, a6
                  slti         s11, t2, 695
                  bltu         s0, s10, 356f
                  xor          s7, a4, t5
                  add          s3, tp, a6
                  sll          t3, sp, zero
                  nop
                  xor          a7, t6, t4
                  slt          s3, s10, a3
                  sub          ra, a6, sp
                  and          s1, a3, a6
                  ori          a3, t5, -1775
                  xor          a2, s2, t2
                  sub          sp, s11, s5
356:              bltu         s11, t4, 365f
                  slti         a1, tp, -1293
                  slli         a3, s8, 9
                  slti         t3, s8, -1434
                  or           t3, s5, s3
                  and          sp, s4, t5
                  addi         sp, a7, 389
                  bge          a4, t3, 374f
                  xor          s8, s7, a2
365:              slti         a1, zero, 480
                  bne          s11, s8, 374f
                  sltiu        a5, gp, 1057
                  and          t6, s9, a3
                  bgeu         a1, a0, 371f
                  blt          s5, s7, 384f
371:              srli         a3, s11, 11
                  sra          s11, t1, t3
                  sll          t6, s9, a3
374:              sra          t4, s11, s7
                  andi         a3, a1, -1860
                  srl          t4, s10, s6
                  slti         t1, a3, -1735
                  slti         sp, s9, 898
                  auipc        s2, 821040
                  srl          t6, t4, zero
                  add          t4, t1, s1
                  add          s5, s2, a0
                  slti         a2, t0, -551
384:              slt          a7, t5, t6
                  sll          gp, gp, a6
                  xor          s3, a3, a5
                  beq          s10, s1, 405f
                  srai         t3, s6, 21
                  sltu         s5, a0, a4
                  srli         a2, s3, 10
                  bge          a6, s9, 398f
                  srai         s6, a0, 21
                  la           tp, region_1+1767 #start riscv_load_store_rand_instr_stream_3
                  sb           t4, -1116(tp)
                  lbu          a4, -1568(tp)
                  sub          a3, t5, a4
                  slli         s3, zero, 7
                  lhu          zero, -851(tp)
                  sb           t6, -1418(tp)
                  lw           t6, -699(tp)
                  lb           s6, -1438(tp)
                  lbu          gp, -198(tp)
                  lbu          s1, -686(tp)
                  sb           s10, -757(tp)
                  nop
                  lbu          s2, -50(tp)
                  lui          s6, 770727
                  sub          t4, t2, t3
                  lh           s9, -53(tp)
                  lh           a3, -815(tp)
                  lbu          gp, -1468(tp)
                  lb           s3, 4(tp)
                  xor          a4, sp, t1
                  lbu          t6, -1634(tp)
                  lb           a7, -534(tp)
                  or           s2, zero, s0
                  sb           t1, -357(tp)
                  sb           ra, -1388(tp)
                  add          a0, a0, t2
                  lbu          s7, -714(tp)
                  lh           a2, -1371(tp)
                  ori          t2, s7, 769
                  lbu          a4, -232(tp)
                  lb           s7, 12(tp)
                  sh           s1, -627(tp)
                  lb           s8, -1232(tp)
                  sh           s3, -1411(tp)
                  lui          s3, 238072
                  and          t4, s9, t2
                  lhu          a5, -1751(tp)
                  lh           s6, -9(tp) #end riscv_load_store_rand_instr_stream_3
                  ori          a4, a2, -15
                  slti         t3, gp, -1716
                  slti         s1, zero, -1362
                  add          s4, s1, t6
                  xor          s5, s10, t5
398:              bge          tp, s8, 403f
                  bgeu         s7, a4, 402f
                  sra          s5, a0, s2
                  lui          s8, 1046810
402:              bne          s8, s4, 404f
403:              slli         a3, a6, 22
404:              srai         tp, a2, 13
405:              ori          a0, a5, 1605
                  and          s7, ra, s3
                  xor          s10, tp, s6
                  xori         t3, a2, 1385
                  and          t6, s4, gp
                  sra          t0, s9, s0
                  auipc        a4, 239473
                  bne          t2, s3, 420f
                  xori         a5, a4, -900
                  xor          t3, sp, zero
                  sub          s10, t6, s9
                  auipc        gp, 109427
                  nop
                  bne          t2, a4, 430f
                  ori          t1, t2, -1486
420:              bne          t5, zero, 434f
                  sll          t1, t0, s0
                  srli         s2, a5, 3
                  slti         a0, t4, -193
                  srl          tp, a2, a7
                  andi         t0, s10, -840
                  and          s2, zero, a4
                  slti         sp, t1, -1966
                  srli         t2, a6, 17
                  xor          a1, s5, s0
430:              sll          t2, a3, t3
                  nop
                  srli         t0, t1, 22
                  nop
434:              slli         t2, t5, 18
                  slti         t2, a5, -1816
                  and          t0, t5, gp
                  auipc        t4, 476121
                  bne          s0, a1, 454f
                  srli         t6, zero, 17
                  andi         a0, a0, -1077
                  addi         t2, s3, 1132
                  sll          t2, a6, a4
                  add          a5, s11, sp
                  sub          s1, s8, s11
                  srai         a4, zero, 27
                  srl          a0, s9, a1
                  add          t4, t0, a4
                  or           t4, s1, t5
                  sltu         s8, s11, s9
                  slt          t2, a7, sp
                  xor          sp, s6, t2
                  slli         a2, s6, 0
                  sll          a0, s11, a5
454:              srl          s8, s3, t2
                  bltu         s2, t0, 471f
                  sltiu        t2, t4, -116
                  nop
                  sltu         s11, s7, a6
                  bge          gp, t4, 462f
                  slt          zero, s0, a5
                  ori          sp, t3, -203
462:              sltiu        s1, sp, -1082
                  sltu         gp, s8, s4
                  blt          ra, t4, 470f
                  bgeu         s1, s5, 483f
                  slti         s6, s9, -1520
                  srl          s11, tp, t6
                  srli         a2, s7, 21
                  bge          sp, a7, 489f
470:              bltu         s9, t2, 473f
471:              sll          s1, s6, sp
                  sub          s5, t6, s1
473:              xori         ra, a7, 1359
                  srai         t0, a4, 28
                  sll          s5, s3, s5
                  sra          t3, a5, s11
                  lui          ra, 262637
                  xori         t0, a0, 93
                  beq          s4, s0, 482f
                  bltu         a0, a3, 494f
                  auipc        t2, 487712
482:              srl          a1, s8, t1
483:              and          s2, a7, s3
                  blt          t5, t4, 495f
                  sltu         t1, a6, s6
                  srl          t6, ra, t3
                  sltu         s7, s7, t4
                  sub          t6, zero, s7
489:              srai         s6, t5, 8
                  xori         s4, s7, -108
                  sra          a0, s7, tp
                  lui          t1, 249300
                  bne          t0, gp, 495f
494:              blt          s5, s9, 506f
495:              sltu         a2, tp, a3
                  lui          sp, 259209
                  bge          gp, s11, 505f
                  bltu         t0, s9, 504f
                  slti         s10, a6, -1283
                  xori         s3, s11, 999
                  bgeu         tp, ra, 517f
                  srli         t6, t4, 5
                  or           ra, a1, a6
504:              sltiu        s7, s7, -1177
505:              bltu         s4, s11, 506f
506:              xori         a3, zero, 1088
                  blt          s6, s2, 513f
                  slti         s6, s10, 686
                  and          s5, t1, a2
                  add          t0, s0, s7
                  srli         gp, s9, 0
                  beq          a0, s8, 520f
513:              lui          a5, 251434
                  slli         a0, a3, 29
                  auipc        s8, 879427
                  sub          sp, s6, a1
517:              bgeu         t4, ra, 537f
                  bgeu         a6, t5, 530f
                  slti         a0, a4, -1864
520:              and          a7, zero, t5
                  xori         s8, t1, -1123
                  add          s1, s3, t1
                  bge          t3, t6, 531f
                  add          a4, t3, s7
                  ori          s3, s11, 699
                  sltu         a7, t2, a6
                  sll          s7, a0, t3
                  xori         s5, s3, -914
                  add          t0, t5, t4
530:              xor          s11, a2, s0
531:              lui          ra, 722591
                  srli         tp, s4, 3
                  xori         a5, s5, 635
                  beq          s10, t3, 537f
                  xori         a1, sp, 49
                  andi         a0, t5, -1144
537:              bge          a0, zero, 546f
                  ori          zero, t6, -192
                  srl          s3, a3, t2
                  slt          zero, s6, s3
                  bltu         sp, s7, 547f
                  bgeu         a0, t6, 558f
                  sub          s6, s9, tp
                  sra          t0, s9, ra
                  auipc        a0, 892261
546:              and          s8, a7, t2
547:              sll          s10, t5, zero
                  or           a1, a7, a6
                  srli         s4, s5, 25
                  ori          s6, a7, -1175
                  beq          s4, s7, sub_7_j12 #branch to jump instr
                  add          s1, a7, s11
                  srl          s1, zero, a0
                  slti         s5, a3, 1856
                  srai         t1, zero, 25
                  slt          t2, s5, a1
                  andi         a1, t2, 1430
sub_7_j12:        jal          t4, sub_10 #jump sub_7 -> sub_10
                  bgeu         a3, zero, 567f
                  srli         a0, s1, 31
                  ori          s1, zero, -425
                  auipc        a3, 677004
                  xori         t4, zero, 739
                  sltiu        tp, a7, -1779
                  srl          s1, s3, gp
                  sra          tp, s2, a0
                  nop
558:              bltu         s8, gp, 572f
                  slti         s1, s10, 1954
                  auipc        a2, 636884
                  auipc        s3, 766265
                  xori         a5, s1, 309
                  srli         zero, s3, 19
                  xor          tp, gp, s10
                  sra          s7, a3, zero
                  srai         s6, t3, 22
567:              slti         sp, s6, 1297
                  slti         t0, ra, -1494
                  bltu         s2, a6, 588f
                  bltu         s4, t4, 575f
                  and          s10, a4, a1
572:              srli         a4, t1, 30
                  bne          ra, s0, 584f
                  xor          a7, s0, t3
575:              srl          a2, a0, s10
                  bgeu         s0, t0, 578f
                  bne          t2, t2, 590f
578:              xor          tp, a3, a1
                  beq          a2, t4, 583f
                  sltu         s2, a0, s10
                  srl          ra, s6, a3
                  bge          a1, t1, 589f
583:              andi         a2, t2, -953
584:              bgeu         a0, s0, 587f
                  xori         s8, a1, 1050
                  xor          t4, t6, t5
587:              auipc        s2, 971896
588:              sra          t3, a6, a0
589:              add          s1, s1, a1
590:              auipc        tp, 264363
                  and          s10, s1, t6
                  add          s4, a5, s5
                  sra          a1, t5, s5
                  lui          s4, 17918
                  srl          a4, t1, s10
                  add          sp, s9, s6
                  sltiu        t1, s2, -1769
                  nop
                  andi         a4, tp, -7
                  ori          s5, s0, 67
                  bne          zero, s5, 619f
                  bne          t0, a0, 608f
                  sub          t1, s5, t2
                  sub          a3, s5, tp
                  and          s9, gp, a3
                  auipc        t6, 814561
                  xor          t1, s7, a0
608:              auipc        sp, 98813
                  bltu         zero, sp, 617f
                  bltu         t3, s5, 618f
                  srl          s10, t0, t4
                  and          s10, a0, t1
                  bgeu         s11, s11, 622f
                  andi         t6, t5, -1259
                  bne          a5, s1, 626f
                  ori          t6, t4, 893
617:              sltu         gp, zero, a0
618:              srai         ra, a0, 29
619:              and          t0, t2, t2
                  sub          a2, ra, sp
                  bltu         sp, a2, 624f
622:              andi         s10, s8, 1112
                  sltiu        t0, t6, -848
624:              xori         a0, a5, 1966
                  slt          s4, s9, t0
626:              sra          zero, s7, t5
                  auipc        a4, 528522
                  bgeu         tp, s7, 632f
                  xor          s1, a4, t1
                  auipc        s8, 728007
                  sll          a3, t5, a4
632:              and          s2, s1, t4
                  addi         s7, a4, -909
                  xori         a4, t0, 2027
                  lui          a1, 937550
                  xori         t6, s6, -1011
                  or           t0, s2, a2
                  sll          zero, t2, t0
                  beq          a2, a2, 653f
                  srai         s7, s6, 18
                  addi         s9, t0, -857
                  sub          a0, ra, t6
                  andi         a7, s7, -965
                  bltu         a2, s5, 660f
                  lui          s2, 342266
                  xor          s11, s5, s9
                  srai         t0, s3, 5
                  slt          s6, s11, t3
                  srai         a0, sp, 0
                  addi         a3, s11, -472
                  or           a4, s1, a7
                  xor          t2, t1, gp
653:              lui          gp, 329104
                  bge          s8, s5, 660f
                  xor          a2, s6, gp
                  slli         s4, s7, 8
                  sll          s7, gp, s3
                  nop
                  srl          s6, a2, s4
660:              slt          s11, a0, s4
                  blt          a2, t4, 673f
                  xori         ra, s7, -107
                  slli         s6, t6, 9
                  slt          a0, s1, s0
                  addi         s10, a0, -58
                  bge          s2, a5, 674f
                  addi         s10, s9, -1435
                  sub          s7, a6, s9
                  slt          s2, gp, a6
                  add          sp, a5, a1
                  bgeu         s7, a6, 687f
                  ori          s6, t4, 1475
673:              ori          s3, a0, -439
674:              bge          t3, zero, 677f
                  sltu         s6, s0, ra
                  andi         sp, zero, 688
677:              sltiu        a3, s8, -555
                  and          s8, s6, t0
                  lui          s9, 569004
                  bne          s9, a1, 691f
                  add          s8, s5, sp
                  srl          s7, s7, gp
                  sltu         zero, sp, t4
                  andi         s1, sp, -1079
                  srl          s9, a3, a3
                  nop
687:              add          s4, t6, s2
                  srl          t4, s2, t6
                  addi         a1, a7, -1933
                  slli         s1, s5, 24
691:              sra          zero, t0, tp
                  xor          s11, sp, t2
                  xor          s1, a4, tp
                  sra          ra, a5, s3
                  nop
                  addi         s8, s2, 1718
                  sub          a7, s4, s1
                  or           a4, s11, a1
                  srl          s9, s4, s6
                  sra          t1, ra, t1
                  bltu         a5, tp, 719f
                  slt          a3, a6, s9
                  sltu         sp, t6, a2
                  sub          s7, a0, s6
                  xori         t0, t1, -493
                  sltu         tp, s9, s8
                  sub          a1, a1, tp
                  sltiu        a5, s1, 760
                  bne          t6, t6, 728f
                  sub          sp, s8, s2
                  bne          s3, a7, 717f
                  addi         s4, sp, 1969
                  or           s3, a1, a0
                  bne          a0, s7, 715f
715:              bgeu         a1, a1, 720f
                  bltu         ra, a7, 722f
717:              beq          a5, s2, 729f
                  slli         t4, zero, 0
719:              sra          a5, t5, s9
720:              blt          s5, tp, 740f
                  sltiu        s1, s3, -1921
722:              blt          s7, a2, 724f
                  xori         ra, s9, -282
724:              and          s11, a6, t4
                  slt          t0, a6, a5
                  blt          t5, s4, 740f
                  sub          zero, s3, zero
728:              sltiu        t3, s0, -1163
729:              slli         s8, s4, 14
                  add          a7, t3, s10
                  sub          s5, s6, t4
                  xori         sp, a6, 1946
                  andi         a5, a2, 1657
                  slti         tp, ra, 1547
                  srl          t6, s10, tp
                  add          s8, gp, t0
                  slti         s5, a7, -444
                  ori          s4, t3, 1657
                  slti         a7, a5, -1107
740:              srai         s3, s4, 3
                  addi         a2, s0, -1102
                  lui          ra, 576821
                  ori          s3, s8, -208
                  bltu         s4, t4, 746f
                  sub          s11, t6, s1
746:              slli         zero, a3, 23
                  bne          s4, t1, 760f
                  bne          s4, a7, 755f
                  auipc        a1, 31165
                  sltiu        t0, s11, 272
                  add          a3, t1, t0
                  sra          a2, t2, s5
                  srl          s9, t0, zero
                  slli         a2, a1, 12
755:              slli         a3, s11, 27
                  ori          s9, s6, 972
                  srli         t4, a5, 13
                  sll          s7, a5, s4
                  slti         a0, s6, -1840
760:              andi         t4, s10, -704
                  sltu         t1, a1, a3
                  lui          s8, 810791
                  auipc        t6, 617641
                  sra          s1, s6, t5
                  sra          s3, s0, s2
                  srli         a7, tp, 21
                  slt          t4, s7, s2
                  bge          gp, sp, 771f
                  sra          sp, a4, a4
                  sra          a3, a3, a4
771:              srli         ra, a2, 6
                  slt          t6, a5, s7
                  slli         s4, a3, 11
                  nop
                  sltiu        s1, t0, -949
                  addi         s7, s0, 281
                  xori         tp, a7, 651
                  bltu         sp, tp, 796f
                  xori         s8, s9, -239
                  blt          t4, a1, 786f
                  sra          ra, a5, zero
                  srl          a3, t2, a1
                  bltu         ra, t0, 794f
                  sra          s11, a4, s11
                  nop
786:              beq          a5, s3, 805f
                  srli         tp, a2, 9
                  lui          a7, 26593
                  blt          t6, s11, 802f
                  bge          tp, s3, 796f
                  xori         t2, t1, 1493
                  sltiu        a1, s8, 444
                  srai         s5, t6, 23
794:              lui          sp, 882068
                  sub          t2, s9, a6
796:              ori          s3, a6, 342
                  sll          s5, tp, ra
                  blt          s7, s8, 809f
                  bgeu         s9, s6, 807f
                  bge          t1, s9, 809f
                  nop
802:              addi         t0, a3, 323
                  bgeu         s7, s0, 809f
                  xori         a5, t1, 667
805:              srai         a7, s0, 5
                  addi         sp, s5, -1095
807:              bltu         ra, t5, 809f
                  sra          sp, s10, t4
809:              srli         s9, s5, 29
                  sltiu        a0, a5, -1980
                  and          t3, s3, t2
                  srai         s10, t6, 8
                  lui          s7, 370033
                  lw           t4, 4(s0)
                  xori         gp, tp, 1638
                  sub          s5, a6, tp
                  addi         s0, s0, 20
                  sll          s4, s0, t3
                  nop
1065:             addi x9, x29, 1
1065:             jalr x9, x9, 0
sub_8:            ori          a3, a6, 1356
                  and          t3, t6, t0
                  sub          sp, s0, s1
                  sll          s1, t5, s2
                  lui          t0, 134881
                  bgeu         a5, t2, sub_8_stack_p
sub_8_stack_p:    addi         s0, s0, -64
                  and          sp, a7, t5
                  sw           t4, 4(s0)
                  sll          t3, t6, t4
                  la           a3, sub_10
                  ori          t1, s5, -520
                  srl          s10, tp, ra
                  sltiu        a0, s9, 172
                  srai         s10, zero, 20
                  sra          s1, t2, zero
                  xori         sp, a7, 1277
                  addi         a3, a3, -268
                  xori         t0, t3, -1164
                  xori         a7, t0, -1809
                  bltu         t6, s5, sub_8_j13 #branch to jump instr
                  srai         zero, s8, 8
sub_8_j13:        jalr         t4, a3, 268 #jump sub_8 -> sub_10
                  la           s7, sub_9
                  or           s11, s4, a4
                  srli         a0, t2, 23
                  srli         s4, a2, 19
                  lui          s2, 633301
                  and          zero, a5, ra
                  xor          s8, s4, a3
                  addi         s7, s7, 75
                  andi         t4, s10, 1273
                  slti         s1, t5, 1086
sub_8_j14:        jalr         t4, s7, -74 #jump sub_8 -> sub_9
                  beq          s5, a5, 11f
                  auipc        s3, 434016
                  auipc        s6, 44891
                  and          s3, t3, s3
                  bne          s8, t6, 7f
                  xori         s4, a7, -128
                  bltu         t3, a5, 26f
7:                srli         a5, t3, 2
                  beq          a1, t5, 19f
                  bgeu         s1, s2, 21f
                  bge          s11, s5, 22f
11:               sra          t0, s3, t5
                  bgeu         a1, t0, 25f
                  beq          tp, t4, 19f
                  blt          t5, a4, 22f
                  bne          s5, t6, 18f
                  slti         s1, a1, -1974
                  addi         s1, t5, -1887
18:               lui          s1, 534409
19:               srl          t4, s7, sp
                  sltu         a7, t1, gp
21:               srai         t0, a5, 12
22:               xor          a3, s8, s8
                  slti         a4, s5, 1355
                  sra          t2, gp, s7
25:               srli         a0, a7, 30
26:               slti         t1, sp, -291
                  bge          s3, gp, 37f
                  sll          sp, t6, s1
                  blt          s7, t5, 46f
                  addi         t1, s0, 113
                  bge          gp, a7, 47f
                  sltu         a5, s2, s2
                  bge          t4, s3, 46f
                  bne          t5, s8, 41f
                  auipc        zero, 168571
                  beq          gp, a1, 48f
37:               andi         t2, gp, -617
                  srli         s3, tp, 26
                  bltu         s0, a6, 53f
                  srl          s4, t1, gp
41:               auipc        s9, 149359
                  auipc        s1, 906458
                  srl          s10, s9, t4
                  sra          a5, t6, s11
                  ori          t3, a6, -554
46:               and          a1, t2, s10
47:               sra          t1, s9, gp
48:               nop
                  slli         a5, zero, 30
                  addi         s11, s6, -481
                  slt          a1, t3, t3
                  auipc        tp, 165902
53:               add          a0, a6, a3
                  lui          t6, 411632
                  and          a2, sp, s4
                  sub          s11, a5, a3
                  ori          s7, s3, 189
                  lui          s6, 336242
                  add          a3, sp, a0
                  or           s9, s8, s9
                  lui          t2, 425654
                  or           gp, s0, s2
                  sltiu        a7, t6, -1771
                  sltiu        s2, a3, 1997
                  sub          a5, s10, s11
                  auipc        s6, 992675
                  nop
                  slli         s7, t2, 26
                  add          zero, t4, a4
                  srai         s1, gp, 16
                  xor          s10, t5, s1
                  auipc        gp, 742758
                  slt          t3, s0, s3
                  blt          sp, a5, 83f
                  sltiu        s2, a5, 352
                  slti         a1, t0, -1224
                  slt          t3, a7, s6
                  add          s8, a3, s0
                  sltu         s5, t5, a3
                  xor          s3, s0, a0
                  sltiu        t4, t0, 1750
                  xori         t4, t5, -415
83:               slt          a4, zero, s5
                  lw           t4, 4(s0)
                  xori         s7, a7, 1497
                  sll          s8, t1, s4
                  lui          tp, 970411
                  sra          a5, s11, a5
                  xori         a4, s9, 1606
                  addi         s0, s0, 64
                  andi         a3, s9, -432
                  srl          gp, s3, s3
                  or           s9, a7, t5
                  srli         s9, t0, 8
129:              addi x26, x29, 1
129:              jalr x26, x26, 0
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
                  addi x8, x8, -128
                  sw  x1, 4(x8)
                  sw  x2, 8(x8)
                  sw  x3, 12(x8)
                  sw  x4, 16(x8)
                  sw  x5, 20(x8)
                  sw  x6, 24(x8)
                  sw  x7, 28(x8)
                  sw  x8, 32(x8)
                  sw  x9, 36(x8)
                  sw  x10, 40(x8)
                  sw  x11, 44(x8)
                  sw  x12, 48(x8)
                  sw  x13, 52(x8)
                  sw  x14, 56(x8)
                  sw  x15, 60(x8)
                  sw  x16, 64(x8)
                  sw  x17, 68(x8)
                  sw  x18, 72(x8)
                  sw  x19, 76(x8)
                  sw  x20, 80(x8)
                  sw  x21, 84(x8)
                  sw  x22, 88(x8)
                  sw  x23, 92(x8)
                  sw  x24, 96(x8)
                  sw  x25, 100(x8)
                  sw  x26, 104(x8)
                  sw  x27, 108(x8)
                  sw  x28, 112(x8)
                  sw  x29, 116(x8)
                  sw  x30, 120(x8)
                  sw  x31, 124(x8)
                  add x30, x8, zero
                  csrr x20, 0x300 # MSTATUS
                  csrr x20, 0x342 # MCAUSE
                  srli x20, x20, 31
                  bne x20, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x20, 0x341 # MEPC
                  csrr x20, 0x342 # MCAUSE
                  li x5, 0x3 # BREAKPOINT
                  beq x20, x5, ebreak_handler
                  li x5, 0x8 # ECALL_UMODE
                  beq x20, x5, ecall_handler
                  li x5, 0x9 # ECALL_SMODE
                  beq x20, x5, ecall_handler
                  li x5, 0xb # ECALL_MMODE
                  beq x20, x5, ecall_handler
                  li x5, 0x1
                  beq x20, x5, instr_fault_handler
                  li x5, 0x5
                  beq x20, x5, load_fault_handler
                  li x5, 0x7
                  beq x20, x5, store_fault_handler
                  li x5, 0xc
                  beq x20, x5, pt_fault_handler
                  li x5, 0xd
                  beq x20, x5, pt_fault_handler
                  li x5, 0xf
                  beq x20, x5, pt_fault_handler
                  li x5, 0x2 # ILLEGAL_INSTRUCTION
                  beq x20, x5, illegal_instr_handler
                  csrr x5, 0x343 # MTVAL
                  1: la x16, test_done
                  jalr x1, x16, 0

ecall_handler:    
                  la x20, _start
                  sw x0, 0(x20)
                  sw x1, 4(x20)
                  sw x2, 8(x20)
                  sw x3, 12(x20)
                  sw x4, 16(x20)
                  sw x5, 20(x20)
                  sw x6, 24(x20)
                  sw x7, 28(x20)
                  sw x8, 32(x20)
                  sw x9, 36(x20)
                  sw x10, 40(x20)
                  sw x11, 44(x20)
                  sw x12, 48(x20)
                  sw x13, 52(x20)
                  sw x14, 56(x20)
                  sw x15, 60(x20)
                  sw x16, 64(x20)
                  sw x17, 68(x20)
                  sw x18, 72(x20)
                  sw x19, 76(x20)
                  sw x20, 80(x20)
                  sw x21, 84(x20)
                  sw x22, 88(x20)
                  sw x23, 92(x20)
                  sw x24, 96(x20)
                  sw x25, 100(x20)
                  sw x26, 104(x20)
                  sw x27, 108(x20)
                  sw x28, 112(x20)
                  sw x29, 116(x20)
                  sw x30, 120(x20)
                  sw x31, 124(x20)
                  la x16, write_tohost
                  jalr x0, x16, 0

instr_fault_handler:
                  add x8, x30, zero
                  lw  x1, 4(x8)
                  lw  x2, 8(x8)
                  lw  x3, 12(x8)
                  lw  x4, 16(x8)
                  lw  x5, 20(x8)
                  lw  x6, 24(x8)
                  lw  x7, 28(x8)
                  lw  x8, 32(x8)
                  lw  x9, 36(x8)
                  lw  x10, 40(x8)
                  lw  x11, 44(x8)
                  lw  x12, 48(x8)
                  lw  x13, 52(x8)
                  lw  x14, 56(x8)
                  lw  x15, 60(x8)
                  lw  x16, 64(x8)
                  lw  x17, 68(x8)
                  lw  x18, 72(x8)
                  lw  x19, 76(x8)
                  lw  x20, 80(x8)
                  lw  x21, 84(x8)
                  lw  x22, 88(x8)
                  lw  x23, 92(x8)
                  lw  x24, 96(x8)
                  lw  x25, 100(x8)
                  lw  x26, 104(x8)
                  lw  x27, 108(x8)
                  lw  x28, 112(x8)
                  lw  x29, 116(x8)
                  lw  x30, 120(x8)
                  lw  x31, 124(x8)
                  addi x8, x8, 128
                  mret

load_fault_handler:
                  add x8, x30, zero
                  lw  x1, 4(x8)
                  lw  x2, 8(x8)
                  lw  x3, 12(x8)
                  lw  x4, 16(x8)
                  lw  x5, 20(x8)
                  lw  x6, 24(x8)
                  lw  x7, 28(x8)
                  lw  x8, 32(x8)
                  lw  x9, 36(x8)
                  lw  x10, 40(x8)
                  lw  x11, 44(x8)
                  lw  x12, 48(x8)
                  lw  x13, 52(x8)
                  lw  x14, 56(x8)
                  lw  x15, 60(x8)
                  lw  x16, 64(x8)
                  lw  x17, 68(x8)
                  lw  x18, 72(x8)
                  lw  x19, 76(x8)
                  lw  x20, 80(x8)
                  lw  x21, 84(x8)
                  lw  x22, 88(x8)
                  lw  x23, 92(x8)
                  lw  x24, 96(x8)
                  lw  x25, 100(x8)
                  lw  x26, 104(x8)
                  lw  x27, 108(x8)
                  lw  x28, 112(x8)
                  lw  x29, 116(x8)
                  lw  x30, 120(x8)
                  lw  x31, 124(x8)
                  addi x8, x8, 128
                  mret

store_fault_handler:
                  add x8, x30, zero
                  lw  x1, 4(x8)
                  lw  x2, 8(x8)
                  lw  x3, 12(x8)
                  lw  x4, 16(x8)
                  lw  x5, 20(x8)
                  lw  x6, 24(x8)
                  lw  x7, 28(x8)
                  lw  x8, 32(x8)
                  lw  x9, 36(x8)
                  lw  x10, 40(x8)
                  lw  x11, 44(x8)
                  lw  x12, 48(x8)
                  lw  x13, 52(x8)
                  lw  x14, 56(x8)
                  lw  x15, 60(x8)
                  lw  x16, 64(x8)
                  lw  x17, 68(x8)
                  lw  x18, 72(x8)
                  lw  x19, 76(x8)
                  lw  x20, 80(x8)
                  lw  x21, 84(x8)
                  lw  x22, 88(x8)
                  lw  x23, 92(x8)
                  lw  x24, 96(x8)
                  lw  x25, 100(x8)
                  lw  x26, 104(x8)
                  lw  x27, 108(x8)
                  lw  x28, 112(x8)
                  lw  x29, 116(x8)
                  lw  x30, 120(x8)
                  lw  x31, 124(x8)
                  addi x8, x8, 128
                  mret

ebreak_handler:   
                  csrr  x20, 0x341
                  addi  x20, x20, 4
                  csrw  0x341, x20
                  add x8, x30, zero
                  lw  x1, 4(x8)
                  lw  x2, 8(x8)
                  lw  x3, 12(x8)
                  lw  x4, 16(x8)
                  lw  x5, 20(x8)
                  lw  x6, 24(x8)
                  lw  x7, 28(x8)
                  lw  x8, 32(x8)
                  lw  x9, 36(x8)
                  lw  x10, 40(x8)
                  lw  x11, 44(x8)
                  lw  x12, 48(x8)
                  lw  x13, 52(x8)
                  lw  x14, 56(x8)
                  lw  x15, 60(x8)
                  lw  x16, 64(x8)
                  lw  x17, 68(x8)
                  lw  x18, 72(x8)
                  lw  x19, 76(x8)
                  lw  x20, 80(x8)
                  lw  x21, 84(x8)
                  lw  x22, 88(x8)
                  lw  x23, 92(x8)
                  lw  x24, 96(x8)
                  lw  x25, 100(x8)
                  lw  x26, 104(x8)
                  lw  x27, 108(x8)
                  lw  x28, 112(x8)
                  lw  x29, 116(x8)
                  lw  x30, 120(x8)
                  lw  x31, 124(x8)
                  addi x8, x8, 128
                  mret

illegal_instr_handler:
                  csrr  x20, 0x341
                  addi  x20, x20, 4
                  csrw  0x341, x20
                  add x8, x30, zero
                  lw  x1, 4(x8)
                  lw  x2, 8(x8)
                  lw  x3, 12(x8)
                  lw  x4, 16(x8)
                  lw  x5, 20(x8)
                  lw  x6, 24(x8)
                  lw  x7, 28(x8)
                  lw  x8, 32(x8)
                  lw  x9, 36(x8)
                  lw  x10, 40(x8)
                  lw  x11, 44(x8)
                  lw  x12, 48(x8)
                  lw  x13, 52(x8)
                  lw  x14, 56(x8)
                  lw  x15, 60(x8)
                  lw  x16, 64(x8)
                  lw  x17, 68(x8)
                  lw  x18, 72(x8)
                  lw  x19, 76(x8)
                  lw  x20, 80(x8)
                  lw  x21, 84(x8)
                  lw  x22, 88(x8)
                  lw  x23, 92(x8)
                  lw  x24, 96(x8)
                  lw  x25, 100(x8)
                  lw  x26, 104(x8)
                  lw  x27, 108(x8)
                  lw  x28, 112(x8)
                  lw  x29, 116(x8)
                  lw  x30, 120(x8)
                  lw  x31, 124(x8)
                  addi x8, x8, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x20, 0x300 # MSTATUS;
                  csrr  x20, 0x304 # MIE;
                  csrr  x20, 0x344 # MIP;
                  csrrc x20, 0x344, x20 # MIP;
                  add x8, x30, zero
                  lw  x1, 4(x8)
                  lw  x2, 8(x8)
                  lw  x3, 12(x8)
                  lw  x4, 16(x8)
                  lw  x5, 20(x8)
                  lw  x6, 24(x8)
                  lw  x7, 28(x8)
                  lw  x8, 32(x8)
                  lw  x9, 36(x8)
                  lw  x10, 40(x8)
                  lw  x11, 44(x8)
                  lw  x12, 48(x8)
                  lw  x13, 52(x8)
                  lw  x14, 56(x8)
                  lw  x15, 60(x8)
                  lw  x16, 64(x8)
                  lw  x17, 68(x8)
                  lw  x18, 72(x8)
                  lw  x19, 76(x8)
                  lw  x20, 80(x8)
                  lw  x21, 84(x8)
                  lw  x22, 88(x8)
                  lw  x23, 92(x8)
                  lw  x24, 96(x8)
                  lw  x25, 100(x8)
                  lw  x26, 104(x8)
                  lw  x27, 108(x8)
                  lw  x28, 112(x8)
                  lw  x29, 116(x8)
                  lw  x30, 120(x8)
                  lw  x31, 124(x8)
                  addi x8, x8, 128
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
