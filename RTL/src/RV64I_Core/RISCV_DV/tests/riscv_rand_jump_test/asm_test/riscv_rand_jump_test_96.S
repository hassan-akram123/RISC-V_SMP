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
                  li x22, 0x40000100
                  csrw 0x301, x22
kernel_sp:        
                  la x28, kernel_stack_end

trap_vec_init:    
                  la x22, mtvec_handler
                  ori x22, x22, 0
                  csrw 0x305, x22 # MTVEC

mepc_setup:       
                  la x22, init
                  csrw 0x341, x22

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x22, 0x1800
                  csrw 0x300, x22 # MSTATUS
                  mret
init:             
                  li x0, 0x3f47c176
                  li x1, 0x0
                  li x2, 0xb09af089
                  li x3, 0x80000000
                  li x4, 0x80000000
                  li x5, 0x0
                  li x6, 0x977c6975
                  li x8, 0x0
                  li x9, 0x0
                  li x10, 0x0
                  li x11, 0x0
                  li x12, 0xd993afda
                  li x13, 0x9
                  li x14, 0x7e676378
                  li x15, 0xb5a48694
                  li x16, 0x3b253530
                  li x17, 0xfa355608
                  li x18, 0x475a92a9
                  li x19, 0xff5bc33e
                  li x20, 0x80000000
                  li x21, 0xf738400b
                  li x22, 0x0
                  li x23, 0x0
                  li x24, 0xb
                  li x25, 0x80000000
                  li x26, 0xf898ee0b
                  li x27, 0x80000000
                  li x29, 0xa
                  li x30, 0xfd3870f9
                  li x31, 0xfe11372d
                  la x7, user_stack_end
main:             la           t4, sub_1
                  slt          s5, s4, t6
                  andi         s6, a4, -1766
                  slt          t1, a3, a7
                  ori          sp, s4, -748
                  sub          s8, s2, a1
                  or           s4, s0, s4
                  addi         t4, t4, 435
                  bltu         a1, ra, main_j2 #branch to jump instr
                  or           s11, a7, s10
                  nop
                  sll          s0, t1, a0
main_j2:          jalr         gp, t4, -434 #jump main -> sub_1
                  bne          t3, t5, 3f
                  sll          s6, s8, s8
                  beq          t4, ra, 22f
3:                sub          s8, t6, s4
                  and          s5, s6, s3
                  slt          s1, a3, sp
                  bne          s0, t0, 24f
                  srai         a1, a5, 7
                  add          s9, t3, tp
                  nop
                  sub          a5, s1, a0
                  srl          a5, sp, a2
                  beq          a4, s6, 26f
                  srai         s3, s8, 2
                  andi         a0, s9, 253
                  sub          t5, s1, s7
                  and          a0, a4, s4
                  sltiu        a6, s4, -1900
                  slti         a6, a0, -1939
                  sub          a0, a7, t1
                  xori         tp, a0, 386
                  andi         s4, a3, -1737
22:               lui          gp, 413313
                  sll          t1, s5, a4
24:               srl          a1, s5, sp
                  andi         s5, zero, 1414
26:               addi         s5, a4, 191
                  andi         s8, s11, 479
                  sltu         t0, a1, s2
                  add          tp, tp, s0
                  srai         ra, a6, 3
                  or           t4, s6, a1
                  srl          s8, s8, a1
                  slti         a2, a7, 748
                  bltu         a7, s7, 52f
                  add          s6, a5, t6
                  sltu         a0, tp, ra
                  sra          t6, s11, s6
                  bne          t3, s0, 49f
                  lui          s3, 389342
                  bne          a1, s1, 46f
                  auipc        s9, 727800
                  bge          s6, t1, 59f
                  slli         s1, s9, 22
                  bge          s2, ra, 60f
                  la           sp, region_0+915 #start riscv_load_store_rand_instr_stream_0
                  srli         t5, a5, 7
                  lbu          t0, -3(sp)
                  sb           s9, 8(sp)
                  lh           gp, -7(sp)
                  sw           a1, 13(sp)
                  sb           a6, -14(sp)
                  sh           t5, -15(sp)
                  lbu          t1, 13(sp)
                  sw           a2, -3(sp)
                  lbu          a4, 8(sp)
                  slt          zero, t3, s0
                  lbu          a5, 7(sp)
                  srl          s9, a0, s11
                  sw           s9, 13(sp)
                  slti         t5, t5, 1447
                  srai         s1, a6, 13
                  ori          a4, t1, 1910
                  lb           a7, -7(sp)
                  addi         s6, s3, -807
                  lbu          s11, -16(sp)
                  sh           tp, 13(sp)
                  lhu          s8, -5(sp)
                  sb           tp, 9(sp)
                  lui          s5, 548632
                  lb           s6, -9(sp)
                  lb           s8, 6(sp)
                  slt          a5, s10, a3
                  slti         t6, a7, -542
                  lbu          s10, 12(sp)
                  lb           s6, -4(sp)
                  srai         t4, s1, 17
                  lbu          tp, 4(sp)
                  sra          s9, s8, t5
                  sll          s11, gp, t0
                  sb           s8, -10(sp)
                  lbu          a3, -15(sp)
                  lh           s9, -5(sp)
                  sb           a2, 14(sp)
                  sb           s7, -5(sp)
                  ori          a4, gp, 1757
                  andi         a3, s2, -1726
                  sh           sp, 15(sp)
                  sh           a6, 7(sp)
                  add          a7, sp, s4
                  lb           a7, -2(sp)
                  lbu          t4, -6(sp) #end riscv_load_store_rand_instr_stream_0
                  and          s1, s1, t5
46:               xori         a6, a1, -540
                  blt          t1, s8, 62f
                  or           a7, a3, s5
49:               andi         s9, t6, -835
                  bgeu         a1, s0, 68f
                  sra          a2, ra, s3
52:               srl          s7, s4, s3
                  slt          tp, a2, a1
                  blt          s5, a7, 74f
                  auipc        t1, 849833
                  blt          a4, t6, 67f
                  beq          s2, gp, 60f
                  blt          s1, t3, 77f
59:               sub          ra, a1, s0
60:               sra          gp, sp, a6
                  ori          t4, a5, 401
62:               andi         s9, s3, 1663
                  add          ra, a6, s5
                  nop
                  auipc        tp, 500085
                  xor          a4, a1, t2
67:               slti         a6, t0, -1402
68:               bge          a3, sp, 84f
                  srl          s10, s0, s6
                  srai         s10, t0, 9
                  ori          s8, a3, 1198
                  srl          s7, t6, s9
                  sra          s4, t1, zero
74:               nop
                  sra          s1, s1, s6
                  srl          s7, s8, a5
77:               lui          tp, 528248
                  bge          s2, s11, 98f
                  sll          zero, s9, s0
                  srli         a2, t2, 18
                  andi         a3, s6, -863
                  bgeu         gp, ra, 84f
                  srl          a5, a3, s1
84:               and          tp, tp, s0
                  nop
                  sub          gp, t2, sp
                  addi         s10, s0, 717
                  sra          s4, a2, a0
                  ori          s6, gp, 1373
                  slti         t6, a2, -251
                  slt          t4, t3, t1
                  sltiu        s6, s7, -709
                  nop
                  and          a1, zero, t1
                  auipc        t6, 357942
                  or           a5, a7, t3
                  sltu         s9, s9, s3
                  add          s10, s9, t5
                  srl          s11, t5, s11
                  add          s6, s6, t1
                  sltiu        t6, t0, -1062
                  la           t5, sub_1
                  slt          s6, a6, ra
                  nop
                  addi         t5, t5, -59
                  sltu         a3, t0, t1
main_j1:          jalr         gp, t5, 60 #jump main -> sub_1
                  bgeu         a2, t5, 107f
                  bgeu         tp, t6, 106f
98:               lui          s7, 774875
                  slt          t0, sp, s3
                  andi         a5, gp, -24
                  bltu         s7, s3, 120f
                  slli         a3, zero, 19
                  bgeu         t2, t6, 120f
                  lui          zero, 360308
                  bltu         s1, a7, 122f
106:              srl          gp, s6, gp
107:              bge          s5, s11, 124f
                  sltu         t4, s10, t5
                  srli         zero, zero, 30
                  bge          zero, s9, 115f
                  beq          zero, s2, 118f
                  bge          zero, s11, 116f
                  and          gp, zero, a5
                  blt          t6, s1, 116f
115:              slt          t4, a4, a6
116:              slt          a4, s1, a4
                  xori         s1, ra, -330
118:              xori         s5, s3, 372
                  sra          t1, a2, s11
120:              or           s5, s6, s7
                  bge          a4, sp, 124f
122:              or           sp, a0, s1
                  sra          s9, s9, a3
124:              lui          t6, 222575
                  la x18, test_done
                  jalr x0, x18, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            and          s1, t4, t4
                  addi         s6, a5, -1161
                  or           s7, sp, t6
                  srli         a0, a0, 28
                  addi         t2, t2, -24
                  addi         s11, t2, -1659
                  sw           gp, 4(t2)
                  slti         a2, a1, -1383
                  xor          s7, a6, a4
                  and          t0, s5, s6
                  slt          t5, t3, s8
                  slt          a4, a3, s8
                  ori          a2, a5, 1520
                  la           s3, sub_2
                  auipc        s8, 615156
                  slli         a4, a4, 29
                  addi         s3, s3, -329
                  bltu         tp, s6, sub_1_j3 #branch to jump instr
                  sub          a4, s7, s4
                  srl          t1, t2, s3
                  xor          a3, a2, s4
sub_1_j3:         jalr         gp, s3, 330 #jump sub_1 -> sub_2
                  xor          s4, t1, t6
                  slt          a6, s8, tp
                  la           a2, sub_3
                  slt          ra, t2, a5
                  addi         a2, a2, -622
                  addi         s6, zero, -51
                  add          s4, tp, s4
                  srli         a3, t2, 28
                  srl          t4, t1, s10
                  bgeu         s1, t3, sub_1_j4 #branch to jump instr
                  slti         gp, a3, -1735
                  srai         t1, s8, 18
sub_1_j4:         jalr         gp, a2, 623 #jump sub_1 -> sub_3
                  auipc        s7, 741137
                  la           a6, sub_2
                  sll          t0, s6, t2
                  and          s9, ra, t5
                  sll          s6, gp, s8
                  addi         a6, a6, -470
                  slli         t0, s1, 10
                  slti         s7, s11, -243
                  bltu         s0, a1, sub_1_j5 #branch to jump instr
                  or           tp, gp, s4
                  sltu         t0, zero, a5
                  xor          s11, s7, t3
                  xor          s0, tp, t4
sub_1_j5:         jalr         gp, a6, 470 #jump sub_1 -> sub_2
                  lui          a0, 322007
                  srai         t1, s11, 29
                  lui          s7, 414684
                  slt          t6, a5, t0
                  and          a1, a4, s0
                  slli         t4, t6, 23
                  slti         a0, a7, -1609
                  bne          t5, gp, 11f
                  nop
                  sltiu        a2, s8, 938
                  slt          a5, t4, a0
11:               and          a3, ra, t1
                  andi         s11, s7, 799
                  slti         s3, tp, 254
                  sltu         s1, a0, s4
                  sra          a2, t6, a7
                  slli         s8, t6, 15
                  lw           gp, 4(t2)
                  addi         s11, t5, -1572
                  addi         t2, t2, 24
                  slli         s5, t5, 0
                  xori         s11, t4, -678
                  sltu         tp, s10, s8
72:               addi x17, x3, 0
72:               jalr x17, x17, 0
sub_7:            beq          t5, zero, sub_7_stack_p
sub_7_stack_p:    addi         t2, t2, -56
                  add          s5, t4, sp
                  sw           gp, 4(t2)
                  lui          s5, 892325
                  sub          s11, s8, tp
                  sltiu        s7, t1, 79
                  bltu         s5, s0, sub_7_j13 #branch to jump instr
                  sltu         s0, s11, s3
                  slt          a6, s3, s3
                  srl          s8, a3, s1
                  or           s7, gp, t6
sub_7_j13:        jal          gp, sub_9 #jump sub_7 -> sub_9
                  and          a5, t0, a4
                  bgeu         a2, s1, sub_7_j14 #branch to jump instr
                  slli         s7, s1, 8
                  sra          s8, t5, t1
                  add          a0, t2, sp
                  srai         a2, a1, 25
                  and          sp, t4, t0
                  andi         a4, tp, 1336
sub_7_j14:        jal          gp, sub_10 #jump sub_7 -> sub_10
                  bge          s11, a2, 14f
                  lui          s8, 565632
                  nop
                  slt          s11, a4, t5
                  xori         a1, zero, -1261
                  xori         s5, t2, 1669
                  ori          s11, a7, 1784
                  bne          s6, s5, 12f
                  xori         t4, s3, -586
                  nop
                  andi         gp, s4, 1914
                  bltu         a2, t0, 22f
12:               srl          s0, s7, s10
                  ori          a3, zero, 912
14:               and          a6, s1, t1
                  srai         tp, s3, 3
                  bgeu         a1, s11, 36f
                  ori          t6, s8, -1045
                  slti         a3, tp, -900
                  slt          t1, a4, s4
                  addi         a6, s7, 2030
                  andi         s0, t3, 1826
22:               srl          zero, t6, s11
                  bne          a2, t2, 31f
                  sra          s3, a7, a6
                  nop
                  bgeu         t2, t1, 27f
27:               sll          s11, s1, t4
                  sll          gp, s6, s10
                  srai         s5, t5, 15
                  add          a7, a2, s7
31:               beq          s8, tp, 51f
                  and          s11, a7, s3
                  addi         s9, a1, 1179
                  ori          s7, s1, -46
                  bltu         zero, t5, 51f
36:               blt          a3, t2, 55f
                  sra          s1, t4, a6
                  beq          a5, t5, 50f
                  lui          sp, 181946
                  xor          s5, s6, a5
                  srai         t6, t0, 7
                  andi         t4, t2, -119
                  srli         t6, a7, 0
                  bne          s0, s11, 56f
                  sll          t0, t6, t0
                  slt          sp, s7, a0
                  bltu         s9, ra, 67f
                  add          a6, t6, s3
                  srai         t0, s3, 9
50:               bgeu         tp, a0, 58f
51:               beq          a1, a2, 54f
                  or           a6, s10, a6
                  srli         t0, a0, 6
54:               sra          t5, t0, a0
55:               sra          a6, s8, a0
56:               sra          a4, a7, s1
                  bltu         a6, a1, 58f
58:               sltu         zero, s4, s0
                  sll          a4, zero, t0
                  bne          t0, s3, 63f
                  sll          t0, s3, a2
                  lui          tp, 580047
63:               beq          s6, s2, 67f
                  xor          s10, sp, a0
                  sltu         t1, t0, s9
                  bgeu         s10, s0, 81f
67:               addi         s10, a1, -1187
                  addi         a3, t2, 569
                  bne          s9, zero, 72f
                  lui          s6, 924851
                  or           zero, a3, zero
72:               srai         s9, a3, 6
                  lui          s8, 858891
                  or           a7, a2, a1
                  or           s7, s7, s4
                  addi         a2, t3, 214
                  sltu         s10, s2, s3
                  sltiu        zero, a2, 231
                  sra          s7, t2, a0
                  srli         sp, s2, 6
                  la           s9, sub_8
                  sltu         t5, s1, s3
                  addi         s9, s9, 147
                  slti         s1, zero, 268
                  srli         sp, s1, 25
                  addi         a1, zero, -1133
                  xor          tp, gp, t5
                  add          ra, a6, a5
                  lui          s1, 632322
                  xor          a0, t3, s5
                  nop
sub_7_j12:        jalr         gp, s9, -146 #jump sub_7 -> sub_8
81:               lui          a6, 116161
                  bgeu         s2, s8, 87f
                  nop
                  add          zero, ra, a6
                  auipc        a7, 277092
                  andi         s9, s5, -269
87:               nop
                  sub          a7, s4, t3
                  bltu         s1, a2, sub_7_j11 #branch to jump instr
                  slli         a1, t4, 1
                  sltiu        gp, t4, -1193
                  or           zero, a3, ra
                  sltu         s11, s10, a7
                  auipc        a5, 690799
                  srl          s1, s1, tp
sub_7_j11:        jal          gp, sub_10 #jump sub_7 -> sub_10
                  sltu         a1, t4, sp
                  sra          a1, s6, a1
                  andi         t5, tp, 1017
                  srai         ra, sp, 29
                  sll          a7, t1, a3
                  srai         s11, s11, 6
                  bltu         s2, a2, 108f
                  srli         a7, s10, 3
                  andi         s10, a1, -316
                  andi         ra, a3, -863
                  sltu         tp, s9, s1
                  sub          ra, a0, s6
                  srl          a0, tp, sp
                  beq          t1, s0, 108f
                  or           s7, s11, a4
                  slt          a5, a6, sp
                  sub          t0, t0, s9
                  sltu         s10, t2, gp
                  auipc        s10, 981087
                  beq          a0, s4, 108f
108:              slli         tp, a5, 3
                  srl          t0, tp, a3
                  lw           gp, 4(t2)
                  and          s11, s8, t1
                  srai         a5, t5, 2
                  addi         t2, t2, 56
                  xor          s9, a3, sp
                  sra          sp, s3, s4
159:              addi x23, x3, 0
159:              jalr x23, x23, 0
sub_6:            bgeu         s8, tp, sub_6_stack_p
                  add          s1, a0, s11
                  sltu         s3, s11, s9
                  add          s6, a7, s6
                  and          s6, a7, s1
sub_6_stack_p:    addi         t2, t2, -52
                  nop
                  sltu         s7, sp, a3
                  sll          t5, sp, s1
                  srli         t6, a2, 30
                  sw           gp, 4(t2)
                  add          a4, s0, s11
                  la           s1, region_0+1879 #start riscv_load_store_rand_instr_stream_9
                  slti         a1, s11, 1176
                  lb           zero, -222(s1)
                  lb           s3, -99(s1)
                  sub          s7, s4, t0
                  ori          s0, t2, 1529
                  lhu          s8, -49(s1)
                  sb           s9, -28(s1)
                  lh           gp, 117(s1)
                  sll          s11, s11, a7
                  slti         a1, ra, 1480
                  sb           s5, -230(s1)
                  lbu          a4, 28(s1)
                  srai         t0, s10, 13
                  sb           t1, 119(s1)
                  xori         s8, s4, -640
                  sh           a5, 109(s1)
                  lhu          a3, 79(s1)
                  sub          s4, t0, s10
                  auipc        a6, 220017
                  lb           s11, 101(s1)
                  lbu          a5, 96(s1)
                  srli         a6, a2, 11
                  lb           s5, 73(s1)
                  lbu          ra, -255(s1)
                  and          s11, t6, s4
                  sh           t0, 25(s1)
                  lw           a6, 13(s1)
                  lhu          s5, -129(s1)
                  add          s11, t5, s2
                  add          a4, s5, a3
                  lbu          s6, 56(s1) #end riscv_load_store_rand_instr_stream_9
                  la           sp, region_1+1514 #start riscv_load_store_rand_instr_stream_6
                  sb           a4, -81(sp)
                  sh           t6, 236(sp)
                  sh           a3, 200(sp)
                  lbu          tp, 194(sp)
                  srli         a5, t2, 2
                  sh           a1, -114(sp)
                  sll          gp, zero, s6
                  slli         a4, a3, 25
                  lbu          a7, -22(sp)
                  nop
                  lb           tp, 207(sp)
                  lb           a3, 128(sp)
                  or           s8, sp, s7
                  xori         a5, t3, -208
                  sb           sp, 96(sp)
                  lbu          s3, 255(sp)
                  add          zero, s3, a5
                  srl          s0, a1, s7
                  sh           t3, 56(sp)
                  sb           s6, -153(sp)
                  sll          a0, s8, s8
                  lb           s4, -124(sp)
                  lb           s10, 189(sp)
                  sb           a6, 227(sp)
                  sb           a5, -115(sp)
                  lbu          s3, -124(sp)
                  lb           gp, 127(sp)
                  lb           a0, 44(sp)
                  nop
                  lhu          gp, 82(sp)
                  lb           s10, 172(sp) #end riscv_load_store_rand_instr_stream_6
                  la           sp, region_0+1531 #start riscv_load_store_rand_instr_stream_10
                  lbu          s9, -234(sp)
                  lh           s10, 233(sp)
                  lb           s1, -234(sp)
                  lbu          t0, -88(sp)
                  lhu          a7, -139(sp)
                  slti         s1, s9, 1032
                  lbu          a6, -186(sp)
                  lbu          a6, 10(sp)
                  sll          a7, s2, t0
                  slt          ra, t6, a4
                  srai         s9, s7, 14
                  sb           a7, -227(sp)
                  sh           t6, 59(sp)
                  lbu          s8, 208(sp)
                  sb           t3, 56(sp)
                  sb           a4, -22(sp)
                  lbu          s9, 189(sp)
                  sb           s4, -36(sp)
                  lbu          s6, 89(sp)
                  lbu          s10, 212(sp)
                  sb           a7, -142(sp)
                  lbu          s7, -56(sp)
                  lh           a5, -225(sp)
                  sb           s11, -226(sp)
                  lbu          gp, -60(sp)
                  lbu          s5, -223(sp)
                  sh           a2, 149(sp)
                  lhu          t6, -227(sp)
                  add          s3, a7, s2
                  srai         t6, a2, 25
                  srai         a7, gp, 30
                  sltu         a6, t1, s0
                  lh           s4, 165(sp)
                  xor          s11, a7, ra
                  lh           s3, 65(sp)
                  slt          a0, t4, s3
                  lb           t4, -210(sp)
                  sw           s1, -119(sp)
                  lbu          zero, 10(sp) #end riscv_load_store_rand_instr_stream_10
                  la           a7, region_0+1277 #start riscv_load_store_rand_instr_stream_2
                  lb           t0, -4(a7)
                  sb           a1, -260(a7)
                  xori         s1, a4, -1836
                  sub          a1, sp, s5
                  sb           a6, 706(a7)
                  lbu          t1, -315(a7)
                  sb           t0, 718(a7)
                  lb           s5, -1058(a7)
                  lbu          a2, 522(a7)
                  and          sp, a3, s3
                  sltu         a2, a4, sp
                  lb           a1, -100(a7)
                  slti         a4, s9, -2026
                  andi         a0, a1, 1696
                  andi         s5, s7, 1773
                  nop
                  srl          t5, gp, a6
                  lb           t0, -947(a7)
                  auipc        s9, 200193
                  lbu          s1, 398(a7)
                  lbu          s7, -781(a7)
                  sltu         s6, s6, gp
                  lbu          a2, 259(a7)
                  add          a1, t6, t5
                  sh           t6, -51(a7)
                  lb           a3, 38(a7)
                  lh           gp, -769(a7) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_0+1882 #start riscv_load_store_rand_instr_stream_8
                  sh           a4, 26(sp)
                  lb           a6, 51(sp)
                  lhu          a6, -18(sp)
                  addi         a1, sp, 1908
                  lui          a3, 306506
                  sb           t6, -49(sp)
                  ori          a6, t6, 708
                  lw           s4, 26(sp)
                  lb           t0, 44(sp)
                  sw           a6, -14(sp)
                  lh           s11, -38(sp)
                  lbu          a0, 32(sp)
                  sb           s10, 61(sp)
                  lhu          a0, 20(sp)
                  slt          a7, s8, t4
                  sb           s10, -13(sp)
                  lh           s3, -54(sp)
                  and          a4, s7, t2
                  addi         s5, s10, 1682
                  auipc        a4, 408645
                  lb           t0, 33(sp)
                  slti         a6, s10, -429
                  lhu          t4, -22(sp)
                  andi         t0, t2, -1618
                  ori          t0, a0, 1852
                  sb           s11, -61(sp)
                  sltiu        s0, a7, 1094
                  sra          a0, a4, a4
                  xori         s9, s7, 227
                  lui          s4, 16386
                  lb           a2, -3(sp) #end riscv_load_store_rand_instr_stream_8
                  la           sp, region_1+67 #start riscv_load_store_rand_instr_stream_1
                  lhu          s1, 1455(sp)
                  sb           s3, 1408(sp)
                  lbu          zero, 1875(sp)
                  add          a0, a2, s11
                  lui          s7, 41266
                  lw           a3, 433(sp)
                  srli         t1, tp, 15
                  xor          a4, s9, t4
                  sh           t6, 1783(sp)
                  slli         s6, a1, 25
                  xori         a5, tp, 1732
                  auipc        s6, 150955
                  sra          s10, t4, s10
                  lhu          tp, 1705(sp)
                  sltiu        zero, s2, -1746
                  sltu         a4, a0, a3
                  sw           t5, 25(sp)
                  sb           a0, 1131(sp)
                  slti         t0, t6, -778
                  sb           s1, 1810(sp)
                  lb           s0, 1433(sp)
                  sw           tp, 737(sp)
                  sb           a7, 1228(sp)
                  lb           a5, 650(sp)
                  sw           gp, 201(sp)
                  srai         s1, sp, 22
                  sb           t2, 1182(sp)
                  lh           a7, 1849(sp)
                  sra          zero, s10, s5
                  xor          t1, a0, zero
                  lh           gp, 1191(sp)
                  lbu          t1, 716(sp)
                  sh           s3, 1831(sp)
                  lb           s9, 1380(sp)
                  or           zero, ra, t4
                  andi         s8, sp, -639
                  sb           t3, 1396(sp)
                  lbu          s8, 960(sp)
                  sh           ra, 379(sp)
                  sb           ra, 1507(sp)
                  lbu          s9, 919(sp) #end riscv_load_store_rand_instr_stream_1
                  or           t1, a3, t6
                  auipc        s0, 232478
                  xor          sp, s8, t3
                  ori          s6, s9, -1637
                  andi         a0, s8, 1219
                  slli         a4, gp, 19
                  lui          t1, 999771
                  slt          a6, sp, s11
                  sll          s1, a1, a6
                  slt          s3, s1, a0
                  or           s4, a7, a0
                  slli         t1, s2, 8
                  and          tp, t3, s8
                  and          s10, a0, gp
                  auipc        t1, 615235
                  and          s7, a1, s2
                  xor          ra, a6, t0
                  andi         sp, a7, 584
                  and          t0, s1, t5
                  and          s1, zero, t1
                  or           zero, t4, s0
                  beq          a3, t5, 35f
                  srli         a3, s11, 4
                  bge          a4, a1, 27f
                  sltiu        a0, zero, 2003
                  srli         t0, a0, 7
                  srl          t4, t4, s5
27:               nop
                  slli         t0, ra, 16
                  sltiu        a5, s5, 398
                  or           s1, a1, s7
                  bne          s9, zero, 33f
                  bgeu         a7, s0, 49f
33:               bgeu         gp, t6, 39f
                  srai         s7, a1, 10
35:               beq          a4, s6, 40f
                  lui          a1, 548105
                  nop
                  sltu         s6, a2, s2
39:               andi         t5, tp, -471
40:               bge          s10, t2, 60f
                  sub          a7, a6, sp
                  bne          a7, s0, 48f
                  bne          a3, a4, 51f
                  xori         sp, t2, 863
                  bgeu         s2, t4, 46f
46:               lui          a1, 967189
                  srli         sp, t4, 8
48:               xor          tp, s10, a6
49:               or           s1, gp, s1
                  and          sp, sp, s3
51:               srli         gp, t1, 12
                  sltu         a7, s4, a2
                  srai         a0, a4, 31
                  slti         s3, t0, 2015
                  andi         s8, s4, 1506
                  xori         t5, s1, 1868
                  sltu         ra, s10, t1
                  bltu         a5, zero, 62f
                  bgeu         s2, a1, 61f
60:               xor          s4, s4, a0
61:               slli         s7, a1, 1
62:               xori         a6, a6, -395
                  and          s6, s8, a2
                  srli         s7, s2, 20
                  bge          t0, sp, 85f
                  sll          t6, t4, s11
                  srl          s5, t6, s4
                  bne          a4, a5, 71f
                  xori         a3, s8, 1104
                  nop
71:               and          t5, gp, t1
                  bne          s11, gp, 74f
                  and          s5, a6, s3
74:               bltu         a0, s0, 82f
                  xori         a7, a6, -405
                  bltu         sp, sp, 87f
                  nop
                  bgeu         a0, a0, 94f
                  bne          t4, t2, 99f
                  auipc        a6, 727055
                  slt          t1, a2, s2
82:               sll          a7, s11, s10
                  andi         a0, s0, -1124
                  sll          t0, s10, tp
85:               bne          a0, tp, 105f
                  addi         t6, t0, -1800
87:               andi         s9, zero, 1055
                  bne          a3, t5, 102f
                  slli         s11, zero, 27
                  andi         a6, s10, -1096
                  srli         s6, zero, 6
                  bge          t5, s5, 105f
                  lui          s4, 468171
94:               srl          t5, s9, a3
                  bne          s2, s4, 105f
                  sll          a5, a6, t3
                  xori         s5, gp, 41
                  slt          ra, zero, s9
99:               and          s0, s11, a0
                  srli         s3, t4, 27
                  slli         a7, t3, 16
102:              srli         s3, a7, 31
                  slt          a4, s1, t6
                  slli         s5, a1, 20
105:              xori         s7, s1, -1619
                  bge          t5, ra, 119f
                  slt          s9, t5, s4
                  beq          t3, tp, 109f
109:              add          s6, t3, t3
                  xori         a2, tp, 262
                  sra          s9, s6, t0
                  blt          a3, t1, 126f
                  ori          a0, s7, 1624
                  ori          s1, t5, 656
                  ori          a6, s11, -1499
                  bge          ra, ra, 133f
                  and          s10, t1, t6
                  slt          t1, s6, a6
119:              auipc        sp, 1021624
                  slti         gp, a5, -100
                  and          s11, sp, s9
                  srli         a3, s9, 20
                  sub          s0, a0, ra
                  add          s10, a7, s5
                  addi         a5, a1, -720
126:              auipc        s8, 252153
                  bge          s4, s11, 138f
                  srl          a2, a2, a0
                  bgeu         s10, zero, 140f
                  bgeu         a5, s4, 131f
131:              slti         s11, t5, 1164
                  bge          t6, s0, 138f
133:              srai         a2, sp, 20
                  xori         t1, s1, 975
                  add          tp, s11, a1
                  lui          s10, 689772
                  srl          s1, s6, sp
138:              bne          a1, a4, 146f
                  blt          sp, t1, 140f
140:              sub          a4, s3, sp
                  srli         t4, a1, 10
                  srl          t4, s9, a2
                  sra          s10, s2, a2
                  srai         s9, t5, 25
                  bltu         ra, s5, 147f
146:              add          zero, a1, ra
147:              lui          s4, 966332
                  or           a4, t3, sp
                  nop
                  srai         a3, t1, 17
                  sll          a6, s8, t2
                  ori          t1, s3, 470
                  and          a6, a5, t6
                  bne          sp, s5, 164f
                  bgeu         s7, a7, 156f
156:              sltu         a3, s11, a6
                  sub          s1, s2, s0
                  andi         a4, a1, -1490
                  blt          t6, zero, 172f
                  srai         s11, s3, 26
                  lui          gp, 439511
                  bne          tp, s9, 173f
                  addi         a4, a3, -1327
164:              bne          t3, s5, 165f
165:              bgeu         t2, tp, 179f
                  xori         t5, t3, -705
                  blt          s10, s10, 180f
                  bgeu         tp, a0, 170f
                  bge          t2, s11, 183f
170:              sll          gp, a5, a6
                  or           s3, a1, s4
172:              auipc        sp, 283856
173:              lui          s4, 221283
                  sll          sp, s8, tp
                  slti         t1, a3, -200
                  srai         a3, t5, 7
                  sltiu        a6, a2, -890
                  sll          t6, s8, t2
179:              beq          t4, a1, 185f
180:              bltu         s11, s4, 184f
                  xori         s9, s11, 1671
                  ori          a0, t0, 1425
183:              bgeu         s4, a7, 188f
184:              sub          ra, s8, tp
185:              or           a6, t3, a0
                  addi         a1, a6, -1932
                  srl          ra, s6, t1
188:              addi         a2, s10, -1077
                  and          t6, s2, zero
                  sltu         s4, a7, s9
                  bge          s0, s1, 208f
                  slti         s3, a2, -412
                  addi         a6, gp, -1855
                  sltu         t5, s4, s6
                  srl          sp, a7, sp
                  srl          t0, s0, a6
                  ori          sp, a4, -406
                  lui          s5, 485198
                  xor          t5, s0, a3
                  bgeu         tp, a3, 208f
                  slt          sp, tp, s4
                  bne          ra, s8, 222f
                  sll          sp, a4, a5
                  and          zero, s10, zero
                  xori         s10, t3, -1970
                  addi         s7, s8, 578
                  or           s0, t4, a1
208:              sll          a3, s11, s1
                  sub          zero, a7, a3
                  bge          t2, a7, 230f
                  srli         s11, s9, 2
                  ori          ra, s3, 103
                  bne          a7, t4, 224f
                  srli         sp, s2, 29
                  beq          t4, s8, 232f
                  sltiu        a4, s10, 371
                  bgeu         a4, ra, 221f
                  or           s7, a4, t4
                  sltu         zero, t5, s6
                  srli         s0, a3, 18
221:              bge          s6, t5, 235f
222:              sub          s1, a7, t3
                  srl          s3, s10, t4
224:              auipc        a7, 787941
                  xori         a4, sp, 1056
                  bgeu         s5, t1, 237f
                  sll          s5, t6, tp
                  and          tp, s3, s1
                  xori         a4, s0, -1728
230:              slli         t1, tp, 22
                  or           s7, t2, t4
232:              sll          t1, s11, a7
                  addi         t5, s7, -170
                  sll          s3, zero, s7
                  sltu         a3, s3, tp
                  xori         a6, gp, 1533
                  sltiu        a0, a2, -256
                  srli         s0, t4, 7
                  srl          sp, t1, t2
                  or           a5, t4, s3
                  ori          zero, s11, 1386
                  sub          s7, a3, a2
                  bltu         a2, s6, sub_6_j10 #branch to jump instr
                  sltiu        s6, a6, 111
                  srli         a0, a1, 31
sub_6_j10:        jal          gp, sub_7 #jump sub_6 -> sub_7
235:              sll          gp, t6, s3
                  bge          t1, gp, 252f
237:              slti         a1, s8, -1235
                  and          t4, t2, a5
                  xor          s1, t2, a7
                  bge          t0, s9, 260f
                  or           a1, s4, sp
                  la           s3, region_0+989 #start riscv_load_store_rand_instr_stream_5
                  nop
                  addi         s9, t3, -1197
                  lhu          a7, -11(s3)
                  lhu          s8, -1(s3)
                  lb           s6, 2(s3)
                  lh           s5, -1(s3)
                  lb           tp, 2(s3)
                  lbu          s6, 14(s3)
                  lb           t0, -4(s3)
                  srl          a4, a3, sp
                  lb           s7, -13(s3)
                  or           s11, s4, s5
                  xori         s0, a3, 40
                  sb           a4, 4(s3)
                  auipc        a1, 33389
                  lui          a7, 465600
                  slli         a4, s6, 11
                  srl          sp, zero, a1
                  sra          s7, s8, a7
                  xor          a5, s7, a4
                  slt          a1, s0, a6
                  lbu          t1, 12(s3)
                  sb           s2, 16(s3)
                  lb           a4, 1(s3)
                  lb           t1, -16(s3)
                  lb           tp, -11(s3)
                  xori         a1, a2, -959
                  addi         zero, s8, 469
                  ori          a4, t0, 1671
                  lhu          a5, -15(s3)
                  sb           s5, 0(s3)
                  lbu          t0, 14(s3)
                  lbu          s11, 0(s3) #end riscv_load_store_rand_instr_stream_5
                  sll          gp, t5, s7
                  slt          s1, t2, s1
                  add          a6, tp, s3
                  bltu         gp, t4, 265f
                  or           t4, s0, s5
                  lui          s1, 642570
                  slt          s6, s10, s11
                  addi         a3, s5, -1980
                  srl          s5, s2, gp
                  slt          gp, s7, t4
252:              sltu         t0, s0, a7
                  blt          tp, s2, 255f
                  bltu         a3, a1, 257f
255:              srl          s1, tp, s11
                  and          s9, sp, a5
257:              xor          s11, s0, a6
                  slti         s5, a5, -25
                  slli         t5, a5, 5
260:              sltiu        ra, sp, -677
                  bgeu         t3, gp, 274f
                  srai         a1, t3, 20
                  slt          a4, t6, t4
                  and          ra, t1, s6
265:              xori         s7, s6, 1842
                  sra          s4, s10, t6
                  srai         a6, s3, 16
                  beq          s9, s4, 276f
                  srl          t0, a6, a5
                  or           a0, a0, s6
                  srai         t6, s1, 18
                  xori         s9, s10, -1064
                  bltu         t6, gp, 284f
274:              bne          gp, sp, 294f
                  slti         s4, a0, -1592
276:              bne          s3, s8, 277f
277:              xor          a0, s8, a0
                  bge          s1, a1, 281f
                  sltiu        s9, a2, 204
                  sltiu        s7, t4, -492
281:              slti         s11, s7, -532
                  and          gp, t3, a2
                  auipc        t1, 385729
284:              srli         t5, s7, 23
                  srli         a4, sp, 9
                  slt          s4, t0, tp
                  sltiu        gp, s5, 812
                  ori          s7, s10, 2003
                  andi         t0, s11, -1224
                  ori          a1, a2, -131
                  xori         zero, ra, 1368
                  srai         a1, zero, 21
                  blt          t6, t0, 307f
294:              addi         t5, t2, 199
                  and          tp, t2, t0
                  bne          ra, t2, 297f
297:              bge          tp, a7, 299f
                  beq          t5, t2, 309f
299:              sltiu        s0, t3, 1764
                  lui          s5, 908494
                  andi         t6, a7, -499
                  bge          t1, a7, 313f
                  xor          a2, s10, s7
                  beq          s11, s0, 324f
                  beq          gp, sp, 325f
                  sltu         s11, a0, s2
307:              or           t5, t0, a5
                  bgeu         a7, sp, 313f
309:              srai         s8, a1, 16
                  srli         s10, t4, 20
                  sra          s8, a1, tp
                  srai         s8, t0, 24
313:              and          a3, t5, s0
                  bge          t0, s6, 316f
                  or           a7, a0, s3
316:              bgeu         s2, t3, 320f
                  lui          zero, 392715
                  auipc        t5, 735284
                  bltu         gp, tp, 332f
320:              ori          s6, s4, 1689
                  beq          s9, s8, 335f
                  lui          a5, 354319
                  slli         tp, a5, 22
324:              lui          a7, 286927
325:              lui          a6, 441443
                  sltiu        a4, ra, 1468
                  xor          t6, ra, tp
                  bne          tp, zero, 345f
                  bltu         t4, t0, 331f
                  bltu         t2, s9, 340f
331:              bltu         s4, a4, 345f
332:              slt          s1, t6, s6
                  sltu         s5, t1, t5
                  bge          s10, t5, 354f
335:              or           s7, a0, t6
                  srli         s0, s9, 23
                  add          s9, t0, s11
                  slti         a6, s0, -621
                  bgeu         t6, s4, 356f
340:              srai         t0, ra, 25
                  srli         s8, a7, 15
                  beq          s8, a1, 348f
                  lui          a6, 789788
                  sll          a0, a2, zero
345:              add          a2, s4, s8
                  sltiu        s1, t2, 57
                  add          a1, tp, s0
348:              nop
                  bne          a4, s1, 353f
                  or           t4, a3, a7
                  nop
                  beq          zero, s4, 368f
353:              slt          ra, s3, s10
354:              sltiu        s8, a2, 1539
                  srli         gp, t2, 31
356:              add          s5, t4, t5
                  slt          a1, zero, a2
                  addi         t5, s5, 308
                  ori          a1, a2, 1011
                  srli         a1, ra, 19
                  xori         a4, t0, -681
                  srli         s11, s2, 16
                  auipc        s0, 362452
                  xor          t0, t4, s1
                  bgeu         tp, sp, 371f
                  andi         s7, t1, -245
                  sll          t4, s0, a2
368:              slti         gp, s11, -982
                  srl          s10, gp, t4
                  andi         ra, a1, 1342
371:              sltu         s9, t5, s9
                  bne          a7, t1, 380f
                  or           gp, s4, s2
                  xor          t5, a4, s6
                  add          s7, a1, a7
                  sub          s9, a7, s7
                  and          a4, t2, a4
                  andi         sp, a0, -1952
                  auipc        sp, 170910
380:              xori         s10, t2, 1705
                  add          s4, a0, s1
                  bltu         s11, a7, 383f
383:              auipc        s8, 897845
                  add          zero, tp, t1
                  sltu         s0, tp, gp
                  beq          t0, s3, 397f
                  or           sp, ra, s8
                  andi         s6, a5, 446
                  xor          t4, s6, s11
                  srl          s6, t6, a1
                  nop
                  xor          a0, s6, a4
                  srl          s8, a1, s11
                  slt          s11, ra, ra
                  ori          s1, sp, 1074
                  nop
397:              sltu         s3, a0, a1
                  beq          a0, s5, 399f
399:              xori         s11, t6, 1250
                  slt          s8, s1, a4
                  bltu         s11, s7, 404f
                  sra          t4, s5, s8
                  beq          s2, s10, 423f
                  la           sp, region_0+290 #start riscv_load_store_rand_instr_stream_4
                  sub          a3, a4, t0
                  lbu          s4, 75(sp)
                  or           a6, s0, a4
                  auipc        s10, 640034
                  srai         s11, zero, 21
                  lhu          s3, -22(sp)
                  slli         s7, a5, 3
                  lb           t5, -133(sp)
                  nop
                  lh           s0, -84(sp)
                  or           zero, s10, s11
                  sb           s1, 115(sp)
                  xor          a3, a3, s2
                  lb           zero, -66(sp)
                  slli         t4, t0, 11
                  lui          t6, 276824
                  lw           s9, -66(sp)
                  lw           s5, -190(sp)
                  auipc        s10, 65248
                  sra          s1, s0, a1
                  lhu          a3, -126(sp)
                  lbu          a5, -25(sp)
                  srl          gp, a4, s8
                  srai         a3, a2, 21
                  sw           gp, 146(sp) #end riscv_load_store_rand_instr_stream_4
404:              sll          a0, t1, tp
                  slli         a2, a2, 14
                  sub          a2, gp, a1
                  or           s0, sp, t2
                  srl          a2, s4, t3
                  sub          t6, s2, t1
                  sra          s0, ra, a5
                  sra          a6, t0, zero
                  sltu         a4, a1, a6
                  andi         a5, t5, 1423
                  sra          s3, s5, s7
                  blt          s11, a1, 423f
                  xor          s5, gp, t5
                  bne          s11, sp, 431f
                  slli         s6, s1, 26
                  sltu         s4, t3, s9
                  srli         t0, zero, 29
                  srai         a4, a7, 13
                  and          s1, s8, ra
423:              xori         tp, s9, -116
                  add          a6, s4, s8
                  slti         tp, zero, 171
                  and          s8, t2, s11
                  srli         a5, a2, 23
                  slli         t4, s6, 28
                  srli         ra, s8, 28
                  auipc        a1, 537094
431:              sub          s5, t0, t5
                  nop
                  bltu         gp, s0, 434f
434:              add          tp, t3, t4
                  slt          s1, t5, s8
                  xori         s10, s3, 1478
                  slti         s4, s8, -1748
                  srli         a2, a2, 9
                  sltiu        ra, s8, -1520
                  and          a3, s6, s8
                  bltu         s9, a7, 461f
                  bltu         a1, a0, 456f
                  nop
                  bltu         gp, t1, 455f
                  srai         s8, s10, 14
                  srli         a7, s8, 30
                  nop
                  sub          s5, t6, tp
                  slti         t5, t6, -1400
                  and          a3, ra, ra
                  ori          a5, gp, -488
                  and          s3, a4, t2
                  slt          tp, a3, s3
                  blt          s8, sp, 456f
455:              and          a1, a3, s9
456:              xor          t6, s5, t1
                  slt          a2, s4, a7
                  xor          a2, t3, s0
                  or           a6, t1, s8
                  ori          a5, s7, 91
461:              andi         s10, s9, 513
                  bgeu         s10, a6, 466f
                  sra          t4, s3, s6
                  bgeu         a5, zero, 474f
                  or           s9, s0, s1
466:              bgeu         t5, a1, 472f
                  andi         gp, t5, -1525
                  srl          s3, ra, a4
                  addi         a3, a7, -206
                  bltu         a0, t5, 471f
471:              sra          t6, a4, a5
472:              srl          s9, a5, t4
                  bltu         a3, s5, 479f
474:              andi         t4, s0, 630
                  addi         a7, t5, 1967
                  bltu         s5, a1, 487f
                  srli         s8, t1, 1
                  slli         s4, s4, 5
479:              nop
                  slti         t1, s3, -1
                  nop
                  sra          t5, s0, s0
                  addi         a4, t5, 812
                  beq          a2, s10, 489f
                  blt          t3, s8, 505f
                  lui          s3, 588771
487:              slti         a0, a6, -45
                  bne          a0, gp, 490f
489:              sll          tp, tp, s0
490:              xor          t0, s7, a0
                  sra          s10, t0, t6
                  add          t5, t0, s7
                  sub          s1, s8, s9
                  xori         t5, sp, -694
                  bgeu         s4, s1, 512f
                  slti         a7, s1, 611
                  and          tp, ra, tp
                  sra          s1, a3, t2
                  nop
                  beq          t3, a3, 504f
                  slli         a7, t3, 21
                  addi         s9, t1, 728
                  srai         t6, s4, 27
504:              bltu         a5, s9, 517f
505:              xori         t5, t3, -928
                  andi         a4, s7, 921
                  beq          s1, a5, 521f
                  addi         a2, s0, -1040
                  srl          s4, a2, t4
                  auipc        a3, 267274
                  srai         s7, a2, 29
512:              sll          s4, a6, t6
                  blt          gp, t4, 515f
                  slli         s8, s2, 3
515:              ori          t4, ra, 1421
                  xor          t0, s6, gp
517:              bge          sp, a6, 525f
                  xor          s10, tp, t3
                  slli         s11, zero, 17
                  add          s5, s6, s7
521:              add          a4, a4, t6
                  sltiu        a3, s5, 1695
                  ori          s5, s6, -494
                  ori          a3, gp, -428
525:              or           s8, s0, t3
                  bge          s11, s9, 539f
                  addi         a5, s0, -115
                  srl          s0, s8, t1
                  sra          tp, tp, s3
                  sltiu        a0, t1, -570
                  slli         a4, s4, 22
                  addi         t4, s7, -1197
                  bgeu         s5, ra, 550f
                  andi         a3, s8, 1504
                  add          s4, t0, t5
                  slti         tp, s1, 2021
                  sltu         t1, s8, a0
                  slt          a4, zero, t2
539:              slli         s4, gp, 6
                  bgeu         s6, s7, 560f
                  srl          s3, s8, gp
                  and          a0, s0, t0
                  sltu         s9, t3, a3
                  blt          t1, s0, 560f
                  bgeu         s10, t5, 550f
                  auipc        a5, 791228
                  bne          s10, t3, 555f
                  nop
                  sll          t0, a7, t1
550:              slti         a6, s2, 2018
                  bltu         s7, t2, 555f
                  addi         a4, a7, -284
                  srl          t6, s0, s10
                  xor          s1, s6, s8
555:              sra          zero, a6, a1
                  bltu         zero, s7, 567f
                  sub          t0, t1, a0
                  ori          t6, s11, 1399
                  blt          t1, s7, 560f
560:              srl          s7, s8, t1
                  xori         s0, tp, 186
                  xor          tp, a5, s0
                  srl          a0, a4, s6
                  srl          t4, t2, s8
                  or           t1, t2, a3
                  sltiu        s11, sp, 1133
567:              xor          s0, a2, s0
                  srli         sp, s9, 25
                  srai         s10, t1, 10
                  slti         a1, s10, 1113
                  bge          a6, s1, 588f
                  slt          s3, t1, s8
                  sra          s3, a0, s10
                  sll          t6, tp, tp
                  slli         s6, a1, 25
                  srl          a0, s8, s9
                  slt          a3, a1, s6
                  xor          s1, a1, zero
                  slli         tp, a5, 23
                  add          t0, a6, s0
                  slt          sp, s4, gp
                  bgeu         a3, t1, 583f
583:              lui          a3, 463194
                  sub          ra, a6, gp
                  slt          s8, ra, s5
                  sltiu        s11, zero, 1875
                  slt          t5, gp, zero
588:              srli         s5, s8, 16
                  sll          s8, t0, a7
                  auipc        t5, 766545
                  sltiu        s4, s8, -571
                  nop
                  sub          s6, a6, a6
                  addi         a6, a1, -293
                  sub          s4, t1, s11
                  blt          t0, a3, 607f
                  auipc        s4, 706948
                  and          t4, a1, a3
                  sltu         a6, s7, ra
                  bltu         tp, t1, 611f
                  bne          s1, s4, 607f
                  srl          zero, tp, s11
                  srli         s1, tp, 16
                  sltiu        t4, tp, -1260
                  sll          t5, a4, gp
                  srli         t0, sp, 26
607:              addi         a4, gp, 295
                  andi         a4, a5, 2045
                  srai         a4, gp, 11
                  nop
611:              sub          s1, s7, a4
                  slli         a5, s3, 14
                  srai         a4, a6, 7
                  andi         s10, sp, 1923
                  or           gp, t2, s11
                  andi         s0, a4, -1870
                  lui          sp, 419983
                  addi         a1, s5, -1902
                  bge          gp, t5, 639f
                  auipc        a5, 208682
                  sra          s0, s11, ra
                  sltu         s10, s3, a4
                  sltu         s4, a6, s6
                  la           sp, region_1+1773 #start riscv_load_store_rand_instr_stream_7
                  sltiu        t1, a6, -1520
                  lw           t5, -373(sp)
                  add          s3, a4, s11
                  srai         a4, a5, 27
                  xor          a2, a2, ra
                  xori         s9, t6, 453
                  or           a3, a2, s9
                  sub          s9, s10, gp
                  lhu          s9, -1367(sp)
                  sb           t0, -1278(sp)
                  sh           s1, -813(sp)
                  slt          s11, s5, a6
                  or           t6, s4, s9
                  slt          s11, gp, gp
                  xori         s5, t3, -202
                  slt          t5, s1, t3
                  nop
                  sh           a1, -1605(sp)
                  sltiu        s9, t2, 1436
                  sw           a3, -1353(sp)
                  lbu          gp, -1358(sp)
                  add          t1, s6, t4
                  xor          s4, s9, t0
                  sb           s1, -63(sp)
                  lh           s5, -425(sp)
                  slti         s5, s1, 1725
                  srai         a0, s3, 31
                  sb           s1, -269(sp) #end riscv_load_store_rand_instr_stream_7
                  add          s1, ra, s3
                  auipc        gp, 1032419
                  bgeu         s2, a7, 630f
                  addi         t0, t4, 10
                  srli         s3, zero, 13
                  and          a2, a6, a5
630:              addi         gp, tp, -363
                  add          t1, s1, s10
                  bltu         s6, s5, 634f
                  lui          a6, 889382
634:              add          ra, a4, t2
                  addi         s7, a5, 358
                  slti         s1, a6, -1927
                  add          a4, s7, s10
                  sll          s1, a0, s6
639:              slt          t0, a4, a5
                  slt          s5, s5, a0
                  sub          s1, t0, t1
                  sltiu        a3, t0, -1211
                  sltiu        s7, s3, 1147
                  sltu         s8, t6, tp
                  addi         a3, s9, 1988
                  slti         s5, zero, 1103
                  sltu         s9, a6, s2
                  sra          tp, s11, t5
                  sltiu        a4, s1, 1038
                  nop
                  sltiu        s11, tp, 1816
                  bge          a3, ra, 662f
                  xor          tp, s0, t2
                  andi         s6, t4, -383
                  slli         s8, s9, 5
                  srai         a5, t0, 14
                  srl          ra, zero, s1
                  xori         t4, t1, 256
                  sltu         s0, t0, a6
                  or           a1, t1, zero
                  or           s7, tp, s3
662:              sra          a6, s3, sp
                  nop
                  or           s7, s5, sp
                  sra          s7, s2, s6
                  slli         s1, a7, 6
                  addi         s6, s5, -766
                  sltu         a0, gp, a6
                  slt          a1, s6, a1
                  sub          s6, s9, t2
                  slt          s9, t6, gp
                  bne          gp, t3, 692f
                  ori          sp, s5, 1813
                  sub          tp, t3, s4
                  slli         ra, s0, 1
                  andi         a0, gp, -1821
                  and          a1, s10, a5
                  ori          s6, t3, -529
                  addi         a7, a6, -29
                  srai         s1, t5, 20
                  srli         zero, a1, 2
                  sltiu        s4, s6, -944
                  addi         s3, s11, -843
                  bge          s2, s8, 686f
                  sll          s11, a1, a6
686:              sltiu        a6, s0, 1697
                  nop
                  nop
                  xori         t0, a3, 230
                  sll          s6, zero, t2
                  nop
692:              slt          a7, zero, a5
                  nop
                  nop
                  slt          s4, gp, a5
                  bgeu         t1, t3, 697f
697:              sltiu        s8, s8, 629
                  slli         t5, a7, 29
                  sltu         a4, t5, t1
                  andi         t1, a2, 931
                  nop
                  sltiu        a6, s11, -1818
                  addi         s3, s7, -2002
                  blt          t0, s8, 717f
                  sll          tp, a4, sp
                  sra          s3, a2, a2
                  sra          s1, a0, gp
                  slti         a5, s6, -455
                  ori          s9, t0, -1917
                  blt          gp, s7, 712f
                  bge          s11, t6, 724f
712:              slli         s8, ra, 19
                  and          s10, a6, a4
                  or           s9, a7, t5
                  auipc        a1, 280965
                  xori         sp, a4, 382
717:              srai         zero, a0, 23
                  xori         t6, t4, 1842
                  blt          a1, tp, 725f
                  bltu         s11, t2, 740f
                  slt          s7, a4, s1
                  add          s0, zero, s8
                  or           a5, s6, a6
724:              bgeu         a5, s2, 727f
725:              ori          a4, s7, 350
                  bgeu         t5, tp, 742f
727:              auipc        t5, 236621
                  slt          s4, s10, a7
                  nop
                  srli         s10, ra, 11
                  lui          s0, 930004
                  srai         s8, gp, 25
                  beq          a6, a5, 747f
                  or           s1, s9, ra
                  bge          s2, t4, 749f
                  nop
                  nop
                  add          s5, s3, s4
                  lui          t1, 108076
740:              srl          a7, tp, s0
                  beq          s9, a6, 761f
742:              and          t6, s1, a5
                  add          a3, a6, a7
                  bltu         a5, t6, 752f
                  bge          gp, tp, 762f
                  slli         s9, a6, 21
747:              and          a7, s5, a1
                  nop
749:              srai         zero, t6, 11
                  andi         s7, s6, 1256
                  bge          gp, gp, 765f
752:              sub          a1, s11, ra
                  srai         s1, s9, 27
                  sltu         tp, t5, t4
                  sra          a6, s7, a1
                  sra          s0, s7, s1
                  bne          a7, zero, 765f
                  sll          s8, s1, gp
                  and          a5, t1, s3
                  sll          a5, a3, sp
761:              beq          s1, zero, 772f
762:              lui          a2, 133753
                  add          tp, a4, a0
                  xori         s10, a1, -117
765:              bge          s9, s5, 769f
                  ori          sp, ra, -1821
                  or           a1, a3, s7
                  srl          a1, a1, t4
769:              add          a1, s4, s5
                  slli         s7, a5, 6
                  or           s1, a7, s1
772:              lui          a2, 932898
                  slt          s7, s8, t6
                  srai         t1, s10, 10
                  blt          a0, a7, 789f
                  bne          a3, t4, 796f
                  auipc        s7, 83625
                  xori         s8, s9, -1425
                  sltu         sp, s2, a6
                  bgeu         t5, s8, 793f
                  sub          tp, t3, a6
                  bge          s1, a0, 796f
                  or           s10, tp, s6
                  blt          s0, a2, 801f
                  slti         gp, s6, -1868
                  nop
                  srl          a5, a5, s6
                  srli         t1, a3, 24
789:              nop
                  addi         a3, a7, 297
                  and          a6, s7, s6
                  sub          sp, s1, s10
793:              ori          s4, s10, 2037
                  sltiu        t6, t0, 1241
                  bltu         a0, a4, 798f
796:              slt          t6, s1, s9
                  addi         s7, a6, 540
798:              srl          sp, s7, sp
                  or           s9, zero, t3
                  sra          a5, s2, ra
801:              blt          s8, gp, 803f
                  srai         a0, t3, 27
803:              bgeu         a5, a5, 804f
804:              add          t4, s3, a0
                  and          s1, s3, t5
                  ori          s11, ra, -1296
                  beq          sp, s6, 809f
                  sra          s0, s9, s7
809:              srai         ra, s0, 9
                  ori          s6, t0, 1604
                  bne          s6, s3, 813f
                  slt          t4, a2, a7
813:              andi         t6, a2, -1088
                  srl          t5, s3, ra
                  srli         s3, a3, 31
                  sra          sp, gp, a5
                  slt          t1, s4, t2
                  add          s6, a2, ra
                  sub          a7, t6, s2
                  andi         s6, t1, -535
                  sra          gp, ra, a5
                  bge          sp, t1, 828f
                  sltiu        s3, t2, -1012
                  addi         zero, sp, -1009
                  sltu         s0, s4, t4
                  and          ra, gp, s4
                  add          t0, a3, tp
828:              bgeu         tp, s2, 836f
                  auipc        a0, 272698
                  slti         s7, t1, -1405
                  sub          a6, s6, a3
                  bgeu         a2, a1, 833f
833:              srai         s0, s11, 30
                  andi         s5, s2, -407
                  sltiu        s3, gp, 570
836:              sltu         s7, s6, s7
                  ori          a0, zero, 423
                  or           s1, s9, t1
                  sltu         a7, t3, s1
                  auipc        a5, 205335
                  sltu         a1, s6, s11
                  bne          s0, a1, 848f
                  sltu         t6, a6, t5
                  sltiu        s10, s0, 1070
                  or           sp, t3, t5
                  sll          t4, s7, s2
                  srli         a5, a3, 12
848:              auipc        s1, 576179
                  slt          s9, s11, a6
                  andi         s10, tp, -1879
                  blt          a2, a5, 868f
                  blt          a0, tp, 868f
                  sub          s7, s11, sp
                  andi         t6, tp, -1482
                  nop
                  nop
                  slti         a7, a3, -1901
                  slli         a5, a0, 2
                  nop
                  sll          s8, s8, t3
                  slti         a3, s3, -117
                  sub          s4, a4, tp
                  slli         s4, t1, 11
                  or           tp, t2, a3
                  beq          t2, gp, 885f
                  sll          s5, a4, s0
                  andi         tp, s11, -1929
868:              add          s4, s6, ra
                  bge          a4, a2, 873f
                  addi         t5, a0, 1653
                  slli         a1, s5, 21
                  slli         s3, a2, 28
873:              lui          ra, 677320
                  bgeu         t0, s9, 884f
                  xor          s5, s2, gp
                  sltiu        s0, a6, -491
                  add          s10, t4, a6
                  nop
                  addi         t5, zero, 733
                  lui          a2, 543844
                  slli         t6, a6, 28
                  srl          s8, gp, s8
                  srli         s8, t0, 31
884:              or           tp, s9, sp
885:              blt          s11, s1, 899f
                  nop
                  bltu         a3, s1, 888f
888:              xor          gp, s1, a5
                  sra          s5, zero, zero
                  blt          t6, s9, 895f
                  add          a7, a4, t3
                  xor          s10, a2, s7
                  lui          s1, 466394
                  sra          sp, s2, a4
895:              bne          sp, sp, 915f
                  nop
                  slt          zero, ra, s10
                  andi         s5, t5, -1508
899:              add          s4, tp, t2
                  xori         a1, zero, -754
                  lui          s3, 56639
                  andi         t1, ra, 1475
                  add          t6, tp, s5
                  sltu         a7, gp, s4
                  add          s8, a5, zero
                  sltiu        t6, a6, -1181
                  srai         a2, t5, 11
                  ori          tp, s11, 136
                  sll          gp, t4, a6
                  bgeu         s11, s7, 921f
                  sll          s6, t4, a7
                  bltu         s5, sp, 925f
                  xor          a1, gp, s7
                  bge          s9, s1, 934f
915:              sra          t1, s0, s5
                  slt          t6, s5, s5
                  slti         t0, s8, -1351
                  ori          a6, s7, 1366
                  addi         s11, t3, 1370
                  xor          a2, a0, ra
921:              bge          s7, s1, 932f
                  and          s5, a5, a2
                  addi         s1, s3, -376
                  xor          s10, s9, s7
925:              srl          ra, t4, s1
                  or           s1, s10, t0
                  srl          a3, t3, a7
                  xori         a6, a1, -1409
                  beq          s7, t2, 943f
                  slt          s4, s2, a1
                  slli         a5, s7, 12
932:              xori         s7, t1, 10
                  srl          t6, a6, s6
934:              sltu         s11, s5, s10
                  bne          a7, s4, 955f
                  bltu         t4, s7, 942f
                  or           t1, s10, s9
                  addi         a3, a1, -973
                  bgeu         a5, s7, 959f
                  auipc        a0, 641841
                  addi         a3, t3, 1759
942:              nop
943:              srl          sp, s0, t0
                  addi         s10, s11, -1165
                  sltiu        a2, a2, 1792
                  slt          s10, s8, s9
                  sll          a5, s0, s6
                  nop
                  bge          a5, s1, 959f
                  sub          s4, s10, s9
                  nop
                  bge          s7, ra, 965f
                  sll          a6, t5, s4
                  addi         a2, a2, 240
955:              auipc        zero, 1045304
                  sll          t0, a4, gp
                  nop
                  srl          a7, gp, gp
959:              xor          t6, a3, s7
                  nop
                  bge          t1, s2, 974f
                  addi         s8, s7, -964
                  slli         s8, t4, 27
                  beq          s7, s2, 981f
965:              bge          s1, s5, 967f
                  sltiu        t1, s0, -966
967:              bgeu         a7, gp, 975f
                  sll          ra, gp, t2
                  slli         s4, s8, 30
                  auipc        s6, 902178
                  addi         s9, s10, -258
                  beq          s8, sp, 986f
                  srl          ra, a5, s3
974:              sltu         s1, s8, s0
975:              bltu         s5, s7, 980f
                  bgeu         t5, s7, 996f
                  or           a0, s5, a0
                  ori          s9, t3, -918
                  sub          s5, s8, s2
980:              srai         a2, s2, 13
981:              or           t1, a6, s0
                  beq          sp, a0, 984f
                  lui          a5, 944156
984:              sra          a3, a7, a0
                  bgeu         t0, s10, 986f
986:              sltiu        t5, a5, -540
                  slli         s1, zero, 27
                  sltu         zero, s6, a0
                  andi         s7, a0, 359
                  srl          s8, t2, s5
                  slli         a1, t4, 12
                  bne          s8, s7, 1009f
                  blt          s10, s10, 1004f
                  sltu         s4, s1, s2
                  bne          t4, t4, 1006f
996:              bgeu         t4, s8, 998f
                  sub          a2, t6, gp
998:              addi         s10, s3, 1888
                  slt          s10, a3, t6
                  la           sp, region_1+774 #start riscv_load_store_rand_instr_stream_3
                  lbu          a2, -51(sp)
                  lb           s7, -59(sp)
                  srli         t0, t5, 31
                  addi         a3, ra, 1037
                  auipc        s7, 934822
                  xori         s9, t0, -164
                  lbu          s4, 143(sp)
                  srl          a4, t1, a4
                  nop
                  lb           s1, 191(sp)
                  lb           s9, 24(sp)
                  lb           t1, 133(sp)
                  xori         s10, t0, -96
                  lbu          s11, -16(sp)
                  lbu          s4, 80(sp)
                  lb           a3, -153(sp)
                  nop
                  slt          ra, a4, s10
                  andi         t0, gp, 980
                  addi         a2, a7, 1067
                  lhu          s4, 256(sp)
                  slt          a1, tp, a6
                  lh           a1, -104(sp)
                  sb           a7, 171(sp)
                  sll          s8, a5, tp
                  sltu         s3, zero, s0
                  lbu          s8, 133(sp)
                  lui          s9, 520270
                  srl          a0, s2, s7
                  andi         s9, s11, 1162
                  lui          s0, 65760
                  lb           t0, -191(sp)
                  lbu          a4, 60(sp)
                  sll          s5, tp, t0
                  srli         t1, a2, 0
                  xor          a3, a0, tp
                  lb           s9, 34(sp)
                  sb           t0, 191(sp)
                  andi         s4, s2, 38
                  lbu          s9, 163(sp) #end riscv_load_store_rand_instr_stream_3
                  srli         a2, s5, 18
                  srli         s6, a7, 16
                  add          s6, zero, t5
                  xor          s8, ra, s8
1004:             beq          a0, t6, 1012f
                  and          a5, s2, t0
1006:             ori          gp, s10, -663
                  bne          s4, a3, 1013f
                  sltu         s9, s1, a2
1009:             beq          s9, s8, 1010f
1010:             slli         sp, s0, 11
                  srl          t6, t1, s8
1012:             bltu         s2, t1, 1015f
1013:             auipc        s7, 613888
                  srl          s11, s11, t0
1015:             bne          zero, t2, 1019f
                  slti         t6, t2, -602
                  srai         gp, s10, 0
                  bge          t6, a0, 1022f
1019:             bne          ra, s5, 1020f
1020:             bgeu         a5, s0, 1036f
                  nop
1022:             srl          s6, s1, s3
                  sltu         s8, s11, s5
                  xori         t6, s0, 1492
                  auipc        zero, 339950
                  sll          a0, t4, s1
                  xor          a3, gp, a6
                  sltiu        sp, t0, -727
                  sltu         a7, t6, a1
                  lui          tp, 380588
                  xori         a0, s5, -1205
                  sltu         zero, t1, s9
                  blt          s5, s11, 1044f
                  bltu         t2, sp, 1048f
                  auipc        s5, 731431
1036:             srl          s11, a0, a7
                  slti         tp, s0, 827
                  srl          a7, t1, tp
                  slli         s4, s2, 17
                  sll          a6, a2, s6
                  sll          tp, t4, gp
                  auipc        t5, 307299
                  or           t6, a5, s4
1044:             bltu         zero, sp, 1064f
                  bge          s10, s2, 1065f
                  add          s8, t1, t3
                  bne          s3, a7, 1055f
1048:             slt          a1, a4, s6
                  bltu         s11, a6, 1060f
                  bgeu         zero, t2, 1063f
                  ori          s10, s8, 949
                  bne          s1, t6, 1053f
1053:             srl          a6, t3, a6
                  andi         s3, s9, -1396
1055:             nop
                  bltu         a2, t4, 1058f
                  bgeu         ra, a6, 1077f
1058:             auipc        s8, 700093
                  xor          s4, s1, a3
1060:             srai         a6, t4, 5
                  ori          s10, tp, 933
                  lui          s8, 735926
1063:             bltu         tp, a2, 1064f
1064:             slli         a3, t2, 21
1065:             xor          s5, sp, s0
                  bne          gp, t6, 1069f
                  ori          s0, a4, 1407
                  bgeu         a5, t2, 1085f
1069:             xori         s3, s5, -1079
                  nop
                  bge          s3, t0, 1084f
                  nop
                  srai         s8, s1, 11
                  sub          s9, s3, s11
                  xor          sp, tp, s11
                  bge          a7, s0, 1081f
1077:             slti         gp, zero, -1500
                  bltu         s11, a5, 1098f
                  add          t4, t5, s2
                  sltiu        ra, s1, -1003
1081:             sra          t5, s6, s8
                  add          s9, a7, s11
                  slli         a3, t4, 9
1084:             sra          t6, s1, s5
1085:             bge          a1, t0, 1096f
                  beq          ra, a5, 1092f
                  nop
                  la           sp, region_1+190 #start riscv_load_store_rand_instr_stream_0
                  xori         tp, a2, -59
                  nop
                  lw           t1, -2(sp)
                  lb           s10, -16(sp)
                  andi         a4, s6, 604
                  lb           s11, -7(sp)
                  and          t5, s1, a2
                  addi         tp, t6, 161
                  lbu          t5, 5(sp)
                  lh           a1, -6(sp)
                  lbu          s1, -5(sp)
                  sltu         a3, t2, s3
                  ori          a6, a0, -1939
                  sb           s2, 7(sp)
                  sb           s3, 12(sp)
                  srli         zero, t4, 28
                  srli         t4, s7, 18
                  sb           a5, 5(sp)
                  lbu          s8, -5(sp)
                  slti         s7, s2, 727
                  xori         s10, s9, -535
                  lhu          a2, 6(sp)
                  xor          a3, a3, t5
                  srai         s9, t5, 7
                  lw           s11, 6(sp)
                  sh           s0, 2(sp)
                  sb           s11, -6(sp)
                  lb           t6, -10(sp)
                  sb           s1, -4(sp)
                  lw           ra, 6(sp)
                  sub          ra, s5, s2
                  sb           s6, -9(sp)
                  lw           t0, -14(sp)
                  sw           sp, 6(sp)
                  andi         s5, s8, 1982
                  lh           a5, -8(sp)
                  ori          a5, sp, -1227
                  ori          tp, s11, 235
                  lw           s5, 6(sp)
                  and          a2, t0, s3
                  sll          a4, s1, ra
                  lw           s8, -10(sp)
                  and          s7, s8, s4
                  sltu         a0, s8, s8
                  lh           a4, 6(sp)
                  sb           s10, -15(sp)
                  lw           s4, 2(sp) #end riscv_load_store_rand_instr_stream_0
                  sltu         t4, t1, t1
                  sll          ra, s9, zero
                  and          s8, zero, gp
                  srl          s11, a4, a4
1092:             srl          sp, s9, s10
                  xori         s7, t3, -677
                  slt          a1, s11, s1
                  sltiu        ra, t0, 310
1096:             sub          t6, a6, s7
                  slti         sp, s1, -223
1098:             lui          a4, 868936
                  beq          s0, s2, 1116f
                  bge          a4, t2, 1102f
                  bge          ra, s8, 1115f
1102:             srli         t6, s4, 11
                  slti         ra, gp, 1548
                  sll          s10, sp, t6
                  sltu         s4, s4, s6
                  auipc        s0, 433320
                  srli         s10, t4, 31
                  xor          t4, a4, s3
                  bge          a3, a3, 1117f
                  ori          s7, t5, -792
                  srai         s7, s10, 20
                  add          s8, t5, a3
                  sltiu        t4, s6, 1691
                  sra          t0, s11, s9
1115:             beq          a3, s11, 1131f
1116:             nop
1117:             bge          t4, a7, 1131f
                  bgeu         t4, t2, 1122f
                  blt          s2, zero, 1120f
1120:             xor          t5, s1, s4
                  nop
1122:             srai         s8, s3, 27
                  ori          s8, t3, 454
                  slli         t4, s8, 11
                  sll          s9, s11, t1
                  add          a1, s5, t2
                  srli         a7, a4, 1
                  slti         a7, t4, -1911
                  sub          s10, a3, s7
                  blt          t2, ra, 1136f
1131:             and          s6, t3, a4
                  sltu         a1, s7, sp
                  srli         a5, s10, 17
                  srl          a3, a2, s9
                  sra          t6, tp, zero
1136:             ori          s3, s3, -1603
                  sll          tp, a0, a3
                  slli         s0, t0, 2
                  sra          tp, t3, s4
                  ori          a4, a7, 797
                  blt          s11, a2, 1152f
                  sra          ra, ra, ra
                  sltu         a5, a6, a1
                  and          a7, t2, s5
                  add          t4, t6, a0
                  srai         s8, ra, 30
                  xor          a4, s6, s0
                  srli         s4, a6, 0
                  and          a3, t3, a0
                  slli         t6, s4, 3
                  xor          t1, t3, s2
1152:             sltiu        s10, s1, -946
                  sll          t1, s7, t4
                  sltiu        s10, tp, -271
                  xori         t4, s4, -1231
                  ori          s11, a7, -871
                  lui          s6, 732860
                  sra          a5, a4, s8
                  bgeu         t1, a6, 1163f
                  or           s0, tp, t5
                  sltu         s11, tp, ra
                  slt          a2, a6, s1
1163:             bne          s5, t2, 1183f
                  bgeu         t2, a4, 1166f
                  slli         s10, tp, 24
1166:             beq          gp, a3, 1176f
                  srl          a4, t4, s5
                  add          a6, s3, a7
                  sltu         t1, a2, a7
                  or           s9, a6, t2
                  beq          ra, t0, 1185f
                  bne          s0, t0, 1176f
                  xori         gp, s10, -1628
                  slti         s5, a2, 803
                  beq          a2, s8, 1195f
1176:             srli         sp, ra, 26
                  sra          a4, s5, a2
                  bge          s0, s9, 1180f
                  bltu         a3, t1, 1189f
1180:             beq          t1, s0, 1191f
                  blt          ra, s11, 1201f
                  srl          s7, t6, t6
1183:             sub          t5, s1, a2
                  bne          t3, s8, 1197f
1185:             bge          t5, s0, 1205f
                  bltu         a5, zero, 1200f
                  slti         t4, s8, -910
                  srl          s5, a6, s10
1189:             lui          a7, 154178
                  andi         s3, a0, -88
1191:             or           sp, s6, ra
                  sll          s7, s9, a6
                  srl          s8, a5, s1
                  ori          s3, s9, -1374
1195:             bgeu         zero, a7, 1201f
                  or           t4, t2, s9
1197:             and          zero, s5, a7
                  srl          a3, a0, s0
                  bltu         gp, s7, 1201f
1200:             srli         s1, t0, 15
1201:             bge          s3, a0, 1218f
                  sll          a6, s0, t5
                  sll          s10, s9, a1
                  and          t4, sp, a2
1205:             bgeu         t2, a2, 1216f
                  slt          zero, s0, tp
                  bgeu         a5, t0, 1209f
                  ori          s9, s8, 2000
1209:             sra          a0, t0, s1
                  lui          s8, 258488
                  andi         a5, s7, -1163
                  ori          s3, a2, -1911
                  slt          t5, t3, a6
                  beq          a5, a3, 1222f
                  xori         s10, a1, 363
1216:             beq          a3, s7, 1229f
                  add          s8, t2, a2
1218:             or           sp, ra, a3
                  ori          s3, s0, -425
                  addi         t1, s0, 458
                  sltiu        sp, t4, 1452
1222:             lui          t5, 560229
                  bge          a0, tp, 1224f
1224:             add          s7, s3, s11
                  bge          sp, s9, 1241f
                  slt          gp, gp, tp
                  nop
                  bltu         s9, s0, 1242f
1229:             sltu         zero, s0, tp
                  andi         ra, a1, 1270
                  nop
                  slli         s6, a4, 30
                  sltu         s11, s6, t5
                  bge          t3, s4, 1237f
                  slti         s3, gp, -1975
                  sra          a2, s1, a2
1237:             sltu         a2, s2, zero
                  bltu         a0, a4, 1258f
                  srli         t0, a0, 15
                  sll          s6, a2, a2
1241:             auipc        t0, 320712
1242:             slti         s5, s11, -1376
                  sub          a6, t4, t4
                  slt          a3, t4, t2
                  or           s0, a4, zero
                  bltu         s5, a7, 1250f
                  srl          tp, a2, tp
                  nop
                  addi         a5, s6, -1742
1250:             xor          t4, t0, t6
                  srai         s10, a7, 7
                  sra          gp, s10, ra
                  bltu         a2, s11, 1270f
                  and          zero, t6, t4
                  sra          s10, t2, t1
                  lui          gp, 265245
                  xor          ra, s5, a0
1258:             blt          a2, ra, 1264f
                  nop
                  beq          s4, t0, 1261f
1261:             slti         s5, tp, -1758
                  bge          t6, s10, 1263f
1263:             and          sp, gp, ra
1264:             sll          s10, s1, gp
                  ori          t1, ra, 1962
                  sltiu        t4, a4, 1149
                  srai         s9, t4, 22
                  bge          s1, s4, 1273f
                  sra          zero, a6, a7
1270:             add          a3, s11, s7
                  srli         t0, s6, 24
                  sltiu        a6, t5, -249
1273:             bgeu         t2, ra, 1284f
                  sub          a3, a4, s3
                  or           zero, s0, t1
                  xori         s1, s5, 1461
                  addi         s10, s6, 1683
                  srl          t6, s6, gp
                  ori          t1, t4, 725
                  ori          ra, s6, -135
                  sub          s10, t2, t3
                  slti         a6, t4, -1082
                  srai         a4, s0, 13
1284:             sltu         sp, tp, a6
                  andi         a7, a0, 1063
                  ori          ra, a0, 1052
                  sltiu        a3, a5, 169
                  srai         s6, t3, 27
                  sll          s9, s11, zero
                  xori         s8, a6, 1773
                  srl          zero, s8, t0
                  add          s11, gp, t5
                  add          s10, a2, s7
                  auipc        zero, 891502
                  srai         s6, t2, 28
                  lui          sp, 775469
                  ori          a5, t2, -1121
                  beq          s3, s0, 1306f
                  slli         s8, s2, 23
                  slt          a6, t0, tp
                  auipc        t5, 709568
                  sll          a0, t3, a3
                  srl          s4, s10, sp
                  beq          s1, sp, 1318f
                  blt          a4, s10, 1321f
1306:             addi         s1, a5, 1513
                  sll          t5, t0, t5
                  sltu         ra, a3, t4
                  sra          a0, s8, t3
                  beq          s6, t3, 1330f
                  auipc        t6, 979407
                  or           s8, a2, s8
                  andi         a0, t1, -38
                  andi         t0, a3, 1143
                  srli         tp, ra, 0
                  sub          s1, gp, s4
                  bgeu         zero, s1, 1337f
1318:             srai         s9, a4, 1
                  xor          s3, a7, s5
                  bgeu         s6, zero, 1325f
1321:             or           a2, t1, s9
                  xor          s5, s4, zero
                  addi         t6, s8, -505
                  slti         a5, a6, 986
1325:             andi         t5, s0, 1003
                  add          s10, t4, sp
                  blt          a5, t5, 1347f
                  blt          tp, t3, 1330f
                  sltu         s0, a7, s7
1330:             sra          s8, s9, a4
                  srai         a6, a5, 16
                  bgeu         s1, s1, 1342f
                  ori          s8, a5, 930
                  sltiu        ra, s10, -353
                  sub          t0, s1, s9
                  xori         s6, s8, 205
1337:             sra          t4, s1, sp
                  sltu         s3, t3, t1
                  nop
                  sltu         a7, a2, t3
                  nop
1342:             srl          s3, s9, a6
                  bltu         t3, s0, 1360f
                  sub          s10, t2, sp
                  lui          a1, 350361
                  slti         s5, tp, 554
1347:             srl          s6, s7, t3
                  sll          t6, s4, s8
                  bne          s5, t6, 1362f
                  nop
                  xor          ra, s0, s6
                  sra          ra, a2, a2
                  beq          ra, ra, 1361f
                  slt          a2, s1, a3
                  xori         s3, a6, -119
                  beq          t1, s4, 1373f
                  xor          a1, a4, t6
                  bgeu         sp, s1, 1362f
                  beq          a6, t1, 1362f
1360:             or           a0, a7, a2
1361:             add          s5, t3, a7
1362:             sltiu        t6, a3, 1396
                  sll          s9, gp, s2
                  add          s0, s3, sp
                  sub          gp, s4, s1
                  or           t0, t4, s7
                  blt          s9, t4, 1375f
                  slt          tp, tp, s6
                  auipc        s6, 736083
                  bgeu         s11, s3, 1384f
                  blt          s7, s6, 1377f
                  sltiu        s9, t3, -1322
1373:             sltiu        s9, t1, 1114
                  slt          a6, s7, a5
1375:             slt          a6, t0, a4
                  slt          s8, s11, t0
1377:             slti         t0, s3, 1061
                  srli         s7, a5, 19
                  slt          s1, s1, s3
                  beq          tp, t3, 1393f
                  sltiu        a1, s4, 1716
                  sub          s4, s3, s3
                  sltu         a6, s3, s4
1384:             or           s3, t0, s10
                  slt          sp, zero, a4
                  nop
                  sltu         a4, a1, t6
                  addi         t6, ra, 1603
                  lui          t6, 43383
                  bne          s7, s9, 1404f
                  nop
                  bltu         t0, t4, 1398f
1393:             xori         s11, s8, -1939
                  sub          s8, t5, s8
                  blt          s3, s5, 1409f
                  sll          s3, t5, s8
                  bltu         t6, s4, 1408f
1398:             sltu         a6, a6, a5
                  bne          a1, t1, 1401f
                  slti         t5, sp, 292
1401:             sltu         t4, zero, s3
                  or           s10, a2, tp
                  add          s11, a4, s3
1404:             srai         gp, a4, 18
                  srai         a6, s6, 29
                  lui          s1, 617299
                  or           s9, a7, s4
1408:             addi         s7, a3, 865
1409:             sra          a2, t5, s4
                  addi         a4, s7, -1600
                  slti         gp, ra, -518
                  srli         s8, s9, 25
                  sll          a6, gp, sp
                  nop
                  sub          t5, gp, s9
                  add          s0, s1, zero
                  or           s8, ra, s9
                  slli         a7, a3, 1
                  xor          a3, t3, tp
                  addi         gp, s6, 1756
                  lui          gp, 266223
                  andi         s4, t4, -403
                  and          s6, s3, t2
                  addi         s9, a1, 1733
                  and          a4, gp, a2
                  sra          s1, a7, t1
                  beq          s5, sp, 1429f
                  sltu         tp, t3, a7
1429:             lui          a7, 428941
                  bge          t6, t1, 1431f
1431:             srai         s5, a5, 20
                  sltu         s10, t6, t0
                  slli         a4, s0, 8
                  lui          a4, 968502
                  sra          a2, s3, sp
                  srli         ra, a1, 27
                  lui          tp, 559503
                  sra          zero, t5, sp
                  lw           gp, 4(t2)
                  srai         s11, sp, 15
                  slti         sp, s1, 902
                  slli         t0, a2, 23
                  xori         a1, s2, 21
                  add          s10, s10, s7
                  addi         t2, t2, 52
                  srai         s3, s10, 11
1855:             addi x25, x3, 1
1855:             jalr x25, x25, 0
sub_3:            srl          t1, a4, a6
                  or           t0, a7, a0
                  slti         s10, s4, 1667
                  nop
                  ori          a4, a0, 1631
                  addi         t2, t2, -60
                  ori          t0, a5, 714
                  sll          s11, a4, s0
                  sw           gp, 4(t2)
                  xor          s6, a0, t2
                  lui          t1, 261471
                  srl          t4, s7, s9
                  andi         zero, a3, 366
                  la           a2, sub_6
                  slt          sp, a1, t3
                  addi         a2, a2, -545
                  slt          t1, s3, t4
                  nop
                  sra          s8, s5, t1
                  add          s1, a1, s3
                  blt          gp, s11, sub_3_j9 #branch to jump instr
                  sra          a0, t5, s2
                  andi         s3, zero, -273
sub_3_j9:         jalr         gp, a2, 546 #jump sub_3 -> sub_6
                  xor          s6, t4, t3
                  slti         a6, t0, -2031
                  bge          t5, s7, 16f
                  xor          s4, s3, a1
                  bltu         t4, tp, 8f
                  sll          s1, t4, ra
                  sll          gp, s0, s1
                  sll          a1, a6, s5
8:                sub          s4, t0, s6
                  add          a0, a6, t1
                  slti         s6, t0, -8
                  srli         a0, s6, 23
                  xor          a4, t0, t3
                  bgeu         s5, ra, 30f
                  slti         a1, a6, -696
                  xor          a0, a7, t6
16:               xori         gp, a2, -123
                  slli         s4, s6, 12
                  nop
                  or           a7, s4, s4
                  bgeu         sp, s9, 24f
                  bne          t1, s0, 32f
                  nop
                  sltu         a2, zero, a6
24:               auipc        a6, 261171
                  xori         t1, t3, -614
                  bge          s4, a2, 32f
                  xori         s1, s7, 103
                  slli         s0, s5, 31
                  ori          a2, a6, -1874
30:               ori          s3, s1, 937
                  bge          t4, gp, 39f
32:               xor          a7, s1, a7
                  sub          t5, s8, s10
                  addi         t6, s3, -452
                  or           t0, a5, a1
                  lui          s3, 444403
                  lui          a0, 961969
                  andi         s3, a3, 1533
39:               xor          a5, s10, a7
                  slt          ra, a5, s7
                  auipc        s6, 465913
                  lw           gp, 4(t2)
                  sltu         zero, s10, a0
                  addi         t2, t2, 60
                  srai         t6, s5, 3
                  lui          ra, 877105
                  sltiu        a6, s10, -1923
                  srl          sp, a1, ra
                  sll          t5, s10, a0
74:               addi x27, x3, 0
74:               jalr x27, x27, 0
sub_10:           and          t6, s11, t3
                  bltu         s3, s10, sub_10_stack_p
                  nop
sub_10_stack_p:   addi         t2, t2, -20
                  slt          a0, s0, a6
                  sw           gp, 4(t2)
                  or           s10, a0, a5
                  bne          s11, a2, 8f
                  add          s6, zero, t2
                  slti         t0, zero, 574
                  bgeu         zero, s1, 10f
                  addi         s4, a4, 158
                  addi         s0, t5, -863
                  or           zero, sp, s4
                  addi         zero, s11, 1712
8:                sltu         t4, tp, s0
                  blt          t3, a3, 17f
10:               sltiu        s11, gp, -1527
                  addi         t6, s10, -473
                  blt          s6, s7, 13f
13:               sltu         t0, s9, t3
                  slt          a0, a3, s2
                  and          s7, s2, s2
                  auipc        s11, 729884
17:               srai         t5, t4, 21
                  add          s4, s11, a1
                  sub          a2, a4, s9
                  sra          t5, zero, tp
                  lw           gp, 4(t2)
                  slli         a5, a7, 14
                  slti         ra, a7, -1999
                  sll          s7, t3, a0
                  addi         t2, t2, 20
                  slli         s4, a0, 28
34:               addi x23, x3, 1
34:               jalr x23, x23, 0
sub_9:            addi         t2, t2, -28
                  lui          s1, 212388
                  slti         t6, s4, -366
                  sw           gp, 4(t2)
                  andi         a3, sp, -864
                  sltiu        ra, a7, -383
                  la           t4, region_0+197 #start riscv_load_store_rand_instr_stream_4
                  sra          s6, s7, t3
                  add          s8, s6, tp
                  and          s11, a0, a3
                  andi         s1, ra, 1415
                  ori          a7, t4, 708
                  lhu          a4, 13(t4)
                  add          s1, s1, a7
                  sltiu        t1, a5, -931
                  sra          s7, s2, t1
                  lbu          t6, 16(t4)
                  lbu          s6, -6(t4)
                  andi         a2, t2, 43
                  xori         s7, s0, 978
                  sub          gp, s5, s3
                  sb           s11, 0(t4)
                  ori          t5, s9, 1819
                  lui          s10, 973528
                  ori          s0, s5, -1919
                  lbu          a6, -10(t4)
                  sb           ra, -4(t4)
                  lb           a0, -12(t4)
                  srli         s1, s1, 31
                  lb           a0, 12(t4)
                  sltu         s6, s8, t5
                  lh           a6, 11(t4)
                  add          t6, t6, s11
                  lh           t5, 9(t4)
                  xori         gp, s3, -1025
                  lb           s1, -4(t4)
                  sb           s10, -8(t4)
                  slli         sp, t1, 0
                  sll          s3, a4, a0
                  sb           t4, -10(t4)
                  sltu         t5, a5, s2
                  xori         s8, t1, 405
                  nop
                  sb           s4, -6(t4)
                  srai         s7, a2, 14
                  lb           a1, 6(t4)
                  lb           s7, -6(t4)
                  and          a7, s3, t3
                  lb           s7, -8(t4) #end riscv_load_store_rand_instr_stream_4
                  la           s4, region_1+1728 #start riscv_load_store_rand_instr_stream_2
                  sub          a2, s9, a5
                  nop
                  lb           s0, -50(s4)
                  lbu          s0, -29(s4)
                  lbu          a2, 37(s4)
                  lbu          t0, -3(s4)
                  slli         a5, s6, 22
                  auipc        a6, 152980
                  sll          s5, s5, a0
                  sll          zero, s1, t5
                  srli         ra, s10, 12
                  lh           a3, -38(s4)
                  sw           a7, 12(s4)
                  sltiu        a2, a4, -160
                  srl          s7, a6, a4
                  sb           t5, -4(s4)
                  sltu         s1, s5, ra
                  sltu         a3, s0, s8
                  lhu          s3, 46(s4)
                  auipc        a1, 800858
                  lbu          s8, -63(s4)
                  srli         s11, a5, 0
                  or           s7, a1, t4
                  lh           s3, -52(s4)
                  or           a5, s4, a3
                  auipc        s3, 443006
                  sll          s10, s9, s2
                  ori          a2, s2, 455
                  sra          s5, s8, t2
                  lb           a6, -39(s4)
                  sltu         s11, gp, gp
                  addi         s6, s8, -857
                  sb           s4, -53(s4)
                  auipc        s0, 308560
                  sltu         a2, tp, s5
                  sub          a2, a5, tp
                  sub          s6, a5, s3
                  and          t6, a4, t6
                  lb           t5, -5(s4)
                  srl          s5, tp, t3
                  lhu          ra, 2(s4)
                  lb           s7, 0(s4)
                  add          a7, sp, ra
                  lb           s11, -17(s4) #end riscv_load_store_rand_instr_stream_2
                  la           s8, region_1+1081 #start riscv_load_store_rand_instr_stream_0
                  sll          t6, t2, a3
                  sh           a6, 11(s8)
                  sub          s0, ra, s11
                  auipc        s10, 31804
                  lbu          s0, -10(s8)
                  ori          s7, s4, -49
                  lhu          s4, 11(s8)
                  sb           a1, 2(s8)
                  or           tp, ra, a3
                  sll          s1, s8, tp
                  addi         t4, t4, 712
                  srai         s1, t4, 19
                  nop
                  slt          zero, s6, s6
                  lb           a5, 9(s8)
                  lhu          a7, -7(s8)
                  and          t6, t5, tp
                  lui          gp, 157685
                  addi         s5, t2, -457
                  lb           a5, -12(s8)
                  lbu          a0, -3(s8)
                  sh           s1, 9(s8)
                  sw           a6, -9(s8)
                  sh           s11, 1(s8)
                  add          ra, s1, a1
                  lbu          s4, -2(s8)
                  sw           s9, 3(s8)
                  and          s4, s1, t1
                  lbu          a3, -14(s8)
                  sb           t6, -12(s8)
                  addi         a3, s10, -1688
                  sub          s9, t2, a6
                  and          s11, t2, sp
                  sh           s8, 15(s8)
                  lb           s6, 12(s8)
                  lb           zero, -8(s8)
                  sb           s5, -11(s8)
                  sb           sp, 0(s8)
                  lhu          a3, -15(s8)
                  sb           a3, -9(s8)
                  sltu         t6, t5, a7
                  sb           s1, 6(s8)
                  andi         a3, t5, -1051
                  lbu          s5, -1(s8)
                  lhu          a2, 7(s8)
                  xori         s0, t3, 81
                  slt          a1, s6, zero
                  sw           s0, -5(s8)
                  sb           s11, -14(s8)
                  lb           s7, -8(s8)
                  lbu          sp, 9(s8)
                  sb           t2, -12(s8) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_0+1017 #start riscv_load_store_rand_instr_stream_7
                  lbu          a3, -16(sp)
                  addi         ra, a1, 272
                  or           a5, s8, s11
                  srl          s4, s0, s10
                  xori         s11, s8, 694
                  lbu          tp, -7(sp)
                  slt          a7, s4, s3
                  sltu         s0, t3, s5
                  sll          a3, a3, s4
                  lb           s3, -12(sp)
                  sll          tp, gp, s9
                  sub          a5, zero, t5
                  andi         gp, ra, 1620
                  lh           s0, 13(sp)
                  and          s5, s4, a4
                  slli         a5, zero, 18
                  lb           a3, -3(sp)
                  lb           a7, -13(sp)
                  slti         a1, s11, 150
                  srai         a2, s0, 21
                  sh           s8, -11(sp)
                  lb           a7, 12(sp)
                  slli         t0, s6, 15
                  sh           a7, 13(sp)
                  srli         a5, zero, 29
                  sll          t1, a7, s6
                  lh           s8, 11(sp)
                  ori          t1, t6, -308
                  sll          a4, s4, s5
                  addi         s10, a3, -1425
                  slti         a0, s2, -1819
                  and          t0, s2, a4
                  nop
                  sltiu        zero, a0, 178
                  ori          a4, gp, 1610
                  sb           t6, 0(sp)
                  sb           t5, 0(sp)
                  lhu          s5, -3(sp)
                  sltu         s0, s9, a1
                  andi         a2, s7, 996
                  sb           t0, -10(sp)
                  sb           t0, -10(sp)
                  nop
                  lhu          t0, -7(sp)
                  slt          a2, s5, t5
                  lb           s5, -13(sp)
                  sb           t4, -1(sp)
                  sb           t0, -12(sp) #end riscv_load_store_rand_instr_stream_7
                  sub          a7, s1, s3
                  slti         a4, s8, 530
                  sltiu        s6, s11, 567
                  auipc        s6, 204077
                  ori          ra, t5, -2017
                  srai         s5, s3, 21
                  sll          t1, s4, a7
                  sltu         a5, t6, t1
                  blt          a6, s6, 23f
                  xori         ra, s4, 1907
                  or           a2, gp, s11
                  bge          zero, a1, 20f
                  srli         s4, a7, 6
                  bltu         zero, ra, 23f
                  addi         s1, t2, 444
                  addi         zero, s6, 362
                  or           t0, a1, s6
                  sltu         tp, s3, s7
                  add          gp, a0, s1
                  add          t5, s0, t2
20:               nop
                  sltu         t6, t5, t0
                  auipc        sp, 36764
23:               slli         a6, s6, 14
                  auipc        t6, 722013
                  beq          gp, s1, 28f
                  bne          t1, s2, 36f
                  bne          zero, s8, 40f
28:               bge          t3, s6, 36f
                  la           t1, region_1+1488 #start riscv_load_store_rand_instr_stream_6
                  sb           s7, -50(t1)
                  xori         s9, a2, -2002
                  slli         a5, s3, 27
                  lb           a0, -32(t1)
                  sb           zero, 12(t1)
                  sltiu        a1, s0, 280
                  slli         s0, a4, 20
                  srli         a7, s3, 16
                  auipc        a1, 3866
                  slti         a2, zero, -896
                  addi         a4, a1, 714
                  nop
                  sb           tp, -53(t1)
                  lb           s0, 61(t1)
                  slt          t5, sp, t5
                  lbu          gp, 9(t1)
                  lh           a7, 30(t1)
                  lh           tp, -2(t1)
                  sltiu        a5, a4, 1176
                  lh           zero, 20(t1)
                  slli         s11, t5, 3
                  lb           a1, -30(t1)
                  sh           a7, -50(t1)
                  sub          ra, zero, t6
                  slti         s5, a2, -434
                  ori          a6, a3, 314
                  ori          s8, s5, -1769
                  srl          s4, s0, s3
                  lh           a5, 44(t1) #end riscv_load_store_rand_instr_stream_6
                  xor          a4, t2, t1
                  sltiu        s4, s8, -1708
                  andi         t5, s10, -381
                  bne          s10, s1, 39f
                  sub          t0, a7, ra
                  beq          t4, s1, 52f
                  andi         t1, a3, -1705
36:               xor          t4, s0, s2
                  bne          ra, a7, 43f
                  nop
39:               sltu         a7, a1, t3
40:               andi         sp, s0, -1617
                  slli         ra, ra, 4
                  blt          a5, sp, 59f
43:               ori          s5, s11, 126
                  sra          s0, zero, a2
                  sltu         s5, t4, s11
                  and          a3, t1, t0
                  srai         s3, s6, 11
                  sub          s9, t3, a4
                  xori         a7, a5, -1202
                  bgeu         zero, gp, 53f
                  sll          t0, t5, s9
52:               bltu         t5, t1, 55f
53:               ori          a6, s2, 371
                  nop
55:               slt          tp, t0, s5
                  or           s0, a4, a4
                  xori         a6, a5, -219
                  auipc        s6, 456223
59:               slt          s8, t2, s3
                  bltu         a3, ra, 74f
                  blt          t6, t0, 68f
                  sra          s5, t6, t0
                  and          a7, s2, s7
                  ori          t4, s4, 638
                  slli         s9, t0, 30
                  slt          zero, s0, sp
                  beq          a3, a0, 84f
68:               srai         s5, s4, 13
                  srai         s9, s3, 24
                  auipc        tp, 924780
                  xori         gp, a7, -1444
                  sltiu        a1, s4, -674
                  lui          gp, 568267
74:               bge          s11, s6, 76f
                  or           s8, s11, s8
76:               bge          t1, t3, 79f
                  sltu         a7, a6, a6
                  bltu         s8, s8, 93f
79:               srl          sp, t4, s10
                  ori          t1, s10, 621
                  sub          t6, s2, a0
                  srli         a3, gp, 27
                  srli         a3, sp, 21
84:               sltiu        s8, s3, -1810
                  addi         s3, tp, 819
                  sub          s7, a7, s11
                  and          zero, t1, sp
                  beq          a5, t6, 100f
                  sll          ra, zero, t6
                  slti         t0, a2, -1356
                  xori         t5, s3, 15
                  xori         a3, s8, 1736
93:               beq          a4, sp, 96f
                  sltu         a7, t5, s8
                  sll          s9, s2, sp
96:               slti         s8, s1, 956
                  slli         t4, s9, 28
                  sra          s11, s3, a5
                  slli         a3, t6, 0
100:              blt          sp, a2, 118f
                  sltu         s5, gp, s6
                  sltiu        t1, a5, -722
                  andi         s4, s8, 1844
                  andi         zero, a1, 574
                  bgeu         a0, t4, 125f
                  add          tp, t3, t3
                  slt          zero, s9, t1
                  sltu         s4, s8, s11
                  auipc        zero, 396860
                  or           s11, s10, t4
                  slli         a1, tp, 13
                  add          s3, s8, s4
                  sra          s9, sp, sp
                  add          t1, a2, s9
                  blt          sp, s11, 129f
                  sra          a1, a5, s3
                  lui          gp, 125632
118:              blt          t6, t1, 123f
                  srli         a0, sp, 31
                  srli         t5, t6, 26
                  bgeu         a4, t0, 137f
                  bltu         t5, s6, 132f
123:              xori         sp, t4, 161
                  bge          ra, s3, 137f
125:              sll          s8, t4, tp
                  bltu         t4, t5, 129f
                  ori          s10, s4, -968
                  bltu         a7, t2, 132f
129:              srl          a2, t1, tp
                  bltu         a4, s2, 137f
                  srai         s7, s6, 10
132:              lui          s9, 246765
                  slti         s5, t2, 1740
                  or           s11, s7, t0
                  xor          s3, s1, a5
                  slt          sp, a6, s8
137:              sub          a0, t0, s6
                  nop
                  srl          s3, a4, a2
                  bge          t4, s6, 148f
                  srai         gp, s7, 1
                  slt          tp, s6, s10
                  xori         ra, a1, 916
                  sra          sp, s6, a5
                  andi         s1, s9, -576
                  nop
                  sra          t5, s6, s8
148:              bgeu         s8, a0, 162f
                  bne          a4, tp, 154f
                  and          a4, tp, s7
                  andi         s3, sp, 902
                  sltu         ra, s3, a5
                  ori          s1, t6, -976
154:              addi         s7, s4, -1405
                  bge          a7, zero, 158f
                  slti         s10, s7, 339
                  blt          s10, s7, 174f
158:              add          s3, s6, a2
                  add          a0, t2, a0
                  add          a1, s0, a3
                  beq          a4, s7, 171f
162:              andi         gp, a4, -1406
                  srl          s8, tp, gp
                  slli         s9, s1, 15
                  nop
                  xor          gp, s7, a3
                  and          a2, zero, t2
                  andi         t0, ra, 247
                  sll          s6, a0, s8
                  add          s9, a1, gp
171:              bge          s1, s1, 174f
                  sra          a2, t2, a1
                  sltu         t5, t3, s5
174:              addi         a2, s0, -1010
                  addi         s4, t1, -1540
                  bgeu         a6, a1, 185f
                  or           s5, t5, s8
                  addi         ra, a3, 1247
                  addi         t0, s10, -977
                  or           a3, s7, t2
                  slt          a0, sp, sp
                  srai         t6, t5, 21
                  slt          tp, a6, s10
                  sra          s11, s8, t4
185:              and          t6, ra, s7
                  xor          ra, s1, a0
                  sra          s6, s1, t5
                  bge          a7, s10, 201f
                  srl          s8, a2, t4
                  bgeu         t3, a0, 193f
                  add          sp, zero, s8
                  slti         t6, zero, -2020
193:              blt          t0, s6, 211f
                  beq          a2, s0, 212f
                  lui          a5, 782615
                  xori         a4, s6, 724
                  xori         t0, a3, 797
                  ori          s7, t2, 248
                  srai         s7, gp, 7
                  sltiu        s1, s6, -1068
201:              lui          a1, 39220
                  slli         a3, ra, 25
                  sltiu        t4, zero, 1744
                  srai         s1, s0, 0
                  slti         s9, s2, -1965
                  srl          s8, sp, s4
                  srli         s4, a1, 27
                  nop
                  addi         sp, s0, 1176
                  addi         a3, t1, -684
211:              slti         s4, s3, -471
212:              sltu         a0, s6, s5
                  srai         a5, a6, 11
                  xor          s7, a7, gp
                  ori          s1, s5, 1002
                  blt          a7, a5, 236f
                  srli         a6, tp, 30
                  bgeu         ra, s5, 232f
                  slli         zero, s2, 23
                  blt          s11, t2, 223f
                  srai         s3, s9, 10
                  xori         tp, s8, 845
223:              sra          sp, s5, ra
                  slt          s11, s2, a6
                  ori          a7, s6, -11
                  sltiu        s10, zero, 1275
                  blt          tp, s11, 239f
                  sll          a1, a2, gp
                  auipc        a4, 747121
                  nop
                  nop
232:              and          s3, s5, s1
                  slt          a7, s6, s7
                  sra          a4, gp, tp
                  xor          ra, t2, a5
236:              xori         s3, a3, -956
                  slli         t4, s3, 21
                  slti         a5, s2, 903
239:              ori          s6, t4, 1541
                  addi         t4, a6, 1913
                  ori          s3, t2, 312
                  sub          a7, s4, a2
                  slli         s3, s5, 30
                  srai         a4, a1, 27
                  sltiu        t5, ra, -978
                  nop
                  bne          s10, t3, 257f
                  addi         ra, sp, 6
                  and          s4, tp, s7
                  blt          t0, s8, 253f
                  srai         s10, gp, 14
                  xor          s1, zero, s3
253:              slt          a4, t6, s11
                  srai         t4, a6, 27
                  sll          ra, a6, sp
                  ori          ra, s3, 1158
257:              bge          s0, t0, 259f
                  sltiu        s1, sp, -717
259:              addi         a3, gp, -1733
                  lui          s9, 1040323
                  srli         t4, t6, 2
                  ori          s10, ra, 664
                  srai         ra, s3, 20
                  bne          a3, t4, 279f
                  bge          s8, s3, 281f
                  bge          s2, zero, 269f
                  srl          s8, t4, s4
                  beq          a0, s6, 272f
269:              ori          s6, s10, 1492
                  bne          a3, a3, 283f
                  ori          t4, t6, 1548
272:              srai         t0, s9, 22
                  slti         s6, t2, -1977
                  addi         gp, s4, -876
                  addi         sp, t6, -503
                  xor          t6, gp, ra
                  sll          a1, s5, a4
                  and          tp, a0, a1
279:              slt          ra, a3, ra
                  srl          a0, s9, a2
281:              and          s7, sp, s2
                  sub          t5, ra, s0
283:              srai         s6, s7, 2
                  sltu         a5, a4, t1
                  blt          zero, s6, 302f
                  blt          sp, t1, 292f
                  slt          t4, t6, a2
                  ori          a5, t3, -152
                  sltiu        t4, s8, 21
                  sll          s3, t4, s5
                  srli         s3, ra, 4
292:              slt          a3, s6, s6
                  auipc        tp, 71682
                  xor          ra, s4, tp
                  andi         t4, s1, -601
                  slt          s7, s6, s7
                  srl          a2, t5, a1
                  add          s6, a7, a2
                  add          t5, s7, a1
                  nop
                  addi         s6, a6, -1270
302:              or           sp, t0, tp
                  xori         a1, t0, -2027
                  blt          tp, s10, 311f
                  srai         a1, a6, 14
                  andi         zero, a4, -317
                  slt          a2, s1, sp
                  bne          s10, s10, 323f
                  beq          s1, t6, 319f
                  beq          t5, t3, 317f
311:              sra          a0, t6, a1
                  slt          s7, s10, a0
                  slli         t5, a2, 30
                  sltu         s8, sp, a3
                  add          t6, a3, ra
                  or           sp, t1, s10
317:              slli         zero, t0, 31
                  ori          a2, s3, -433
319:              nop
                  nop
                  srli         t6, s10, 11
                  add          a1, s3, a5
323:              addi         s6, a6, 580
                  sub          t1, a0, a4
                  bge          a3, a1, 331f
                  andi         s11, s9, -949
                  nop
                  or           a4, ra, t1
                  bge          s5, s11, 332f
                  sub          gp, s3, s4
331:              ori          t4, t5, 178
332:              srai         t1, s2, 0
                  sltu         a5, a5, t2
                  lui          a1, 968436
                  lui          s7, 532859
                  nop
                  slti         a2, t6, 860
                  andi         s9, s10, 1326
                  auipc        a3, 778278
                  blt          tp, t1, 343f
                  ori          zero, a1, -642
                  bge          s2, t5, 360f
343:              slt          s10, s5, zero
                  srl          a2, s6, s2
                  sub          a4, a3, a0
                  bltu         s1, s4, 356f
                  srl          t5, s9, s3
                  add          tp, s11, s9
                  andi         s8, zero, 1214
                  slli         t1, gp, 11
                  srl          t4, s4, a7
                  sltiu        t0, t5, 678
                  nop
                  auipc        t1, 191730
                  andi         a0, a0, 1564
356:              sra          s6, t4, s6
                  xori         t1, s7, 1474
                  slti         t0, t5, -1525
                  bge          t2, t0, 369f
360:              auipc        t1, 1017866
                  sll          t0, zero, a0
                  addi         s1, s3, -1585
                  slti         a5, a2, -828
                  slt          a4, s9, t1
                  srai         a3, s2, 3
                  bltu         ra, s5, 384f
                  bgeu         s10, a0, 380f
                  sll          t0, t1, a3
369:              and          s3, s6, s6
                  bge          a0, tp, 372f
                  sra          s10, a0, gp
372:              sltu         t0, t5, t3
                  beq          zero, t2, 388f
                  bge          t0, s3, 383f
                  andi         t5, s7, 114
                  bne          s11, s7, 381f
                  sub          s10, t6, t5
                  andi         gp, t4, 836
                  blt          a6, gp, 386f
380:              or           s9, a5, s5
381:              ori          a2, a4, -1955
                  srli         t1, s2, 10
383:              blt          a0, s1, 397f
384:              or           gp, s0, t4
                  srli         a0, s10, 19
386:              or           t1, gp, t3
                  blt          tp, zero, 403f
388:              sra          s0, a3, a2
                  auipc        s4, 785686
                  xori         zero, a2, -1442
                  ori          a2, s6, -1536
                  or           sp, a1, ra
                  nop
                  xori         a1, s6, -488
                  addi         s1, tp, -472
                  sltu         ra, t6, t4
397:              bltu         sp, gp, 407f
                  slt          a2, t3, t5
                  andi         t0, t3, -966
                  srl          a2, a5, s1
                  and          zero, s8, s11
                  nop
403:              andi         a1, t1, -798
                  xori         a4, a2, -1830
                  xor          a3, a3, a5
                  lui          s8, 830586
407:              xor          a2, tp, ra
                  xor          t5, a7, s9
                  auipc        a1, 190843
                  srli         t1, s9, 14
                  nop
                  or           s10, s5, t1
                  lui          sp, 728675
                  andi         a4, t0, 518
                  xor          a3, t2, s9
                  bgeu         t2, zero, 430f
                  nop
                  xor          s3, s6, t2
                  auipc        s6, 609938
                  sltu         t1, zero, s4
                  bltu         sp, a6, 424f
                  slti         t1, gp, 409
                  srl          s11, s5, s11
424:              auipc        s5, 201267
                  bne          t5, tp, 437f
                  andi         t5, t6, 1308
                  add          a7, a3, a2
                  beq          t3, s4, 445f
                  blt          s11, s1, 437f
430:              bgeu         s11, zero, 434f
                  bne          a3, a1, 434f
                  bge          s1, s0, 452f
                  or           s7, s10, a0
434:              addi         a2, a1, 1404
                  beq          s8, a7, 452f
                  xori         t6, t0, 907
437:              nop
                  blt          sp, t1, 441f
                  sub          a5, s9, s2
                  addi         a1, t3, -1246
441:              sltu         s6, t6, s5
                  ori          a0, t2, 1684
                  bltu         s9, t2, 446f
                  xori         t0, sp, 733
445:              bgeu         s9, s4, 460f
446:              sra          a6, s2, tp
                  sltiu        zero, s3, 1176
                  slli         a2, a7, 2
                  sra          s0, a0, s6
                  sll          t5, s0, t5
                  xor          s9, a1, a6
452:              xori         ra, a7, -2015
                  and          s6, a1, s2
                  bgeu         sp, s5, 467f
                  addi         s10, s0, -1440
                  andi         a4, a4, -1420
                  sll          t1, a6, a1
                  bne          tp, s7, 476f
                  la           ra, region_1+1074 #start riscv_load_store_rand_instr_stream_9
                  and          s6, s0, s2
                  srl          tp, a3, t2
                  lb           gp, 891(ra)
                  auipc        s11, 592555
                  ori          a2, a3, -149
                  lb           s11, -538(ra)
                  auipc        s3, 868649
                  lhu          tp, 740(ra)
                  slt          a7, sp, t4
                  slti         a6, tp, 1484
                  or           a7, s2, a5
                  lh           t1, -78(ra)
                  lb           zero, 197(ra)
                  srli         a0, s9, 1
                  nop
                  lbu          zero, 88(ra)
                  lb           zero, 213(ra)
                  sh           s1, -894(ra)
                  srli         s5, s0, 2
                  sb           s2, -555(ra)
                  slti         t0, t2, -904
                  slli         a0, a2, 20
                  sub          a3, s4, s10
                  lbu          t0, 747(ra)
                  lbu          t4, -815(ra)
                  and          sp, t3, t2
                  lb           s1, -323(ra)
                  sll          a2, tp, s10
                  lbu          t6, 783(ra)
                  ori          a7, s1, 59
                  sb           ra, -307(ra)
                  lbu          t5, -90(ra)
                  sltiu        a4, a1, 1712
                  lui          a5, 866614
                  sltu         a1, ra, t6
                  lbu          t6, -881(ra) #end riscv_load_store_rand_instr_stream_9
                  ori          a7, gp, 1888
460:              bgeu         a2, a6, 466f
                  xori         s7, zero, -1024
                  auipc        s11, 852261
                  srl          s10, a0, zero
                  add          a7, t5, s2
                  beq          s4, t2, 475f
466:              nop
467:              slli         tp, a4, 1
                  sub          s3, sp, a7
                  beq          t0, s0, 483f
                  xori         t6, t6, 946
                  slli         s3, a6, 27
                  slli         a4, s8, 30
                  bgeu         s4, s1, 478f
                  sltiu        s5, s5, 1225
475:              sra          t0, s0, a6
476:              xor          ra, s2, zero
                  lui          a5, 800129
478:              slli         t1, t0, 31
                  or           s3, s11, a1
                  andi         a3, t5, -1999
                  srai         t1, ra, 29
                  or           t4, sp, a0
483:              blt          a4, tp, 498f
                  sra          gp, s5, t2
                  sltiu        t4, tp, -1786
                  slli         s4, t6, 24
                  nop
                  srli         a4, s0, 6
                  srl          t1, a0, a6
                  add          t0, zero, a5
                  sll          a3, t5, s1
                  andi         t0, tp, 1401
                  srai         s11, gp, 30
                  srai         zero, s11, 23
                  xor          a4, t6, s1
                  xor          s3, a0, t1
                  srli         a6, t1, 26
498:              slli         s6, a0, 7
                  bne          gp, a7, 502f
                  sub          t6, s0, a4
                  sltiu        t6, s11, -961
502:              ori          s7, s0, -1455
                  srai         t1, s6, 19
                  bgeu         s3, t3, 508f
                  addi         a4, gp, 1002
                  sll          sp, a6, s4
                  bgeu         s5, s8, 510f
508:              xori         s0, s10, -1838
                  ori          tp, a3, -1824
510:              sll          a4, t0, zero
                  beq          s2, a3, 528f
                  sll          s1, zero, a4
                  nop
                  or           a2, s11, tp
                  srli         a0, t6, 18
                  sll          s10, ra, gp
                  sub          a6, a0, a7
                  sub          s5, t0, t3
                  slli         a1, a0, 29
                  slti         t4, s0, -145
                  add          s6, ra, gp
                  sltu         zero, s0, t3
                  or           t0, tp, s5
                  xor          t6, ra, tp
                  ori          zero, s7, -327
                  bgeu         zero, a6, 544f
                  lui          s1, 61309
528:              srli         s9, a2, 8
                  addi         t5, s9, -559
                  xor          t6, s11, sp
                  beq          t4, t3, 543f
                  bne          s3, a0, 542f
                  addi         ra, a6, 562
                  srli         s7, s7, 28
                  slli         s10, tp, 5
                  sltu         ra, s7, gp
                  srl          t1, s5, s5
                  bne          s0, t6, 555f
                  nop
                  auipc        s4, 509680
                  blt          s11, s4, 544f
542:              slli         t0, a0, 13
543:              nop
544:              bgeu         a0, t0, 560f
                  bgeu         a7, a6, 554f
                  beq          a0, t6, 549f
                  slli         a5, sp, 23
                  sub          a0, ra, t4
549:              bge          s6, s2, 552f
                  xori         t5, s11, 1680
                  sltu         s1, s3, a4
552:              slti         a2, t5, -1886
                  lui          s3, 643508
554:              slti         a5, a4, -1157
555:              bltu         sp, s8, 569f
                  srli         s7, tp, 0
                  nop
                  srli         s3, a5, 15
                  bge          s1, a0, 566f
560:              srli         gp, ra, 18
                  bne          s3, s8, 581f
                  and          s3, t4, s3
                  lui          t6, 492541
                  auipc        ra, 672472
                  srl          a0, s2, s3
566:              andi         a7, a4, -200
                  bne          s2, gp, 577f
                  slt          s5, a2, s0
569:              sltiu        a5, a0, 373
                  auipc        tp, 401286
                  sub          sp, zero, s10
                  beq          t2, s5, 575f
                  blt          s0, a5, 586f
                  bltu         sp, s5, 582f
575:              xori         s8, t5, -316
                  slli         t4, t5, 11
577:              ori          s7, s2, -453
                  sll          s9, s11, a2
                  or           a4, s3, s6
                  srai         gp, s8, 16
581:              srai         zero, a4, 9
582:              sltu         a2, s11, s11
                  slt          s3, s6, gp
                  slt          zero, a7, s7
                  sltiu        a7, t2, -1023
586:              srli         s3, a4, 27
                  bge          s8, t6, 594f
                  or           a1, s4, t2
                  bltu         s0, t0, 591f
                  addi         t6, t0, 1062
591:              or           a2, a6, a3
                  slt          s6, s3, a4
                  bltu         s6, t5, 606f
594:              bge          a7, gp, 609f
                  bgeu         a6, zero, 610f
                  and          t1, t6, gp
                  addi         a7, a4, 1941
                  xori         zero, zero, -1713
                  lui          s8, 780866
                  or           t0, s5, t3
                  addi         s0, s7, -640
                  bge          tp, s4, 622f
                  sub          a4, t1, a7
                  sub          ra, a5, s2
                  lui          s0, 340563
606:              sltu         s7, t0, s2
                  srai         t4, gp, 0
                  sra          a7, a6, tp
609:              nop
610:              auipc        s3, 681363
                  srai         s6, gp, 7
                  slli         s7, a7, 24
                  andi         s11, a6, 804
                  srl          s0, s5, t0
                  andi         ra, a4, -1084
                  add          s5, t4, s5
                  sub          zero, s9, s5
                  srai         s5, a7, 31
                  and          a3, t1, ra
                  srli         s0, t1, 6
                  and          ra, gp, t4
622:              blt          t2, s3, 638f
                  slli         gp, s2, 30
                  blt          t4, a0, 627f
                  or           s5, t3, s11
                  srai         s8, s5, 23
627:              addi         sp, s1, -1783
                  srai         s9, ra, 31
                  bltu         s10, s5, 641f
                  slti         s11, s0, -315
                  sltu         a5, zero, t2
                  bltu         s11, s10, 645f
                  auipc        s9, 785614
                  nop
                  srli         a7, t4, 15
                  lui          a0, 965657
                  bgeu         tp, s10, 641f
638:              add          a0, a1, s8
                  srai         s7, t3, 24
                  bge          s6, a2, 654f
641:              slt          s5, s1, t3
                  bne          sp, s4, 659f
                  and          zero, t4, s7
                  beq          sp, t4, 650f
645:              addi         a6, a7, 1405
                  add          a2, t5, sp
                  bne          t1, t2, 665f
                  srl          t1, a2, s0
                  srl          a1, s11, s5
650:              lui          s8, 566490
                  srai         a4, t3, 15
                  add          a5, s5, tp
                  bne          a7, s1, 670f
654:              bge          s7, a7, 672f
                  blt          s0, a2, 658f
                  xori         a4, gp, -469
                  srl          gp, s6, a5
658:              sltiu        tp, gp, 582
659:              nop
                  slli         s5, t3, 29
                  andi         s11, s8, -83
                  add          s5, ra, s7
                  srli         s0, s0, 0
                  sub          t4, a1, t1
665:              sltiu        s6, t5, -340
                  lui          a0, 279700
                  sll          t6, t1, t5
                  xor          s7, a5, zero
                  sra          s3, s5, s0
670:              sltu         t6, a5, t2
                  slt          s10, s11, t3
672:              srli         ra, zero, 28
                  addi         s10, t5, 1453
                  auipc        ra, 67080
                  srli         s1, t3, 11
                  slt          t6, a2, a7
                  xor          gp, t4, t3
                  slti         s10, s10, 1260
                  sub          a3, s11, a2
                  addi         t4, s4, 563
                  bne          s8, t0, 683f
                  slti         s1, s5, -1281
683:              slti         s7, t3, -575
                  slt          s7, s10, a1
                  xor          t4, s6, s0
                  bge          a6, s3, 701f
                  beq          s5, sp, 690f
                  sub          a4, a0, sp
                  auipc        gp, 962121
690:              bltu         s2, zero, 697f
                  bltu         a6, a6, 701f
                  add          t6, t4, s5
                  auipc        s7, 861384
                  lui          s5, 808583
                  bgeu         t4, a7, 708f
                  bne          s5, s8, 710f
697:              or           s1, sp, s5
                  andi         t0, s3, -1059
                  and          a4, a2, s11
                  or           t5, s6, ra
701:              or           s5, s10, s7
                  bgeu         s7, t0, 705f
                  srl          zero, a0, tp
                  sltiu        s9, a2, 319
705:              and          s0, gp, s2
                  srai         s11, s7, 3
                  slt          t6, s2, s8
708:              or           s11, a1, a0
                  xori         s6, a1, -3
710:              slli         t4, a0, 3
                  ori          s8, a4, 2015
                  sltu         zero, s5, a3
                  xor          t4, s4, a6
                  or           t6, s6, s7
                  bltu         gp, s2, 725f
                  srl          t0, a1, a5
                  bgeu         s4, zero, 722f
                  sub          gp, t0, t2
                  sll          a3, s2, s2
                  srai         a1, a1, 28
                  sub          a4, t3, t1
722:              and          zero, t1, s9
                  slt          s1, t3, t5
                  slli         a2, s10, 7
725:              bne          s3, a7, 728f
                  xor          zero, t0, tp
                  sll          s11, a3, t2
728:              srai         a4, sp, 11
                  addi         t4, t4, 624
                  bgeu         a1, s8, 733f
                  andi         s9, gp, -247
                  bne          s1, a4, 741f
733:              srl          a6, ra, t6
                  srai         s3, ra, 22
                  srli         s1, s1, 13
                  andi         a5, s0, 607
                  slt          s9, gp, zero
                  slt          s6, s1, t2
                  srai         t6, a5, 6
                  slli         a4, s3, 2
741:              bltu         s6, zero, 749f
                  xori         s1, s11, -1354
                  beq          s7, a0, 753f
                  ori          s3, s1, -1891
                  srl          s7, s3, a5
                  bne          a6, a3, 753f
                  bltu         t5, s2, 750f
                  xor          sp, t4, t5
749:              bltu         a5, t0, 759f
750:              sll          s5, t1, a0
                  lui          t1, 882406
                  sub          sp, s9, s8
753:              srli         t6, s4, 15
                  sra          a2, s3, gp
                  lui          s0, 941258
                  xori         a3, zero, -847
                  slt          a7, zero, tp
                  bltu         ra, a3, 764f
759:              addi         zero, t5, 1323
                  sltu         s3, tp, s11
                  ori          a2, t0, -1719
                  lui          a4, 999717
                  slli         a7, s3, 26
764:              srli         t6, t5, 1
                  blt          a6, tp, 768f
                  bltu         a0, s7, 782f
                  bne          tp, t0, 777f
768:              sub          s8, t2, t6
                  sll          s4, s6, t6
                  slt          t5, zero, s9
                  slti         a2, t4, -1307
                  srai         zero, s9, 22
                  auipc        a3, 98789
                  beq          s1, a7, 791f
                  srli         t0, s7, 13
                  srli         a7, s3, 6
777:              bltu         s5, s7, 795f
                  ori          s3, a4, 2039
                  sltu         a6, s1, s3
                  auipc        t0, 19181
                  sra          s9, zero, s4
782:              slt          tp, s1, a7
                  and          s4, s0, a5
                  nop
                  sra          s9, s3, t3
                  beq          s2, a5, 790f
                  sub          s0, a3, s3
                  xor          s7, s10, s11
                  and          a3, s7, gp
790:              bgeu         t5, a1, 793f
791:              bgeu         a5, t3, 794f
                  blt          t4, ra, 812f
793:              beq          s7, t2, 796f
794:              beq          a0, t1, 809f
795:              srli         a7, t2, 25
796:              xori         a1, s1, 788
                  sub          s10, s2, s6
                  sltu         t5, a5, sp
                  slti         zero, s10, 1889
                  sra          sp, t5, a7
                  slli         s0, t5, 25
                  la           gp, region_0+1257 #start riscv_load_store_rand_instr_stream_1
                  lb           zero, 60(gp)
                  xor          t1, s11, t0
                  lh           a2, -11(gp)
                  add          t0, s3, ra
                  slti         s5, ra, 1841
                  and          t1, a4, s3
                  lb           s4, -63(gp)
                  sb           ra, 52(gp)
                  sb           t1, 61(gp)
                  lhu          s4, 7(gp)
                  lui          t5, 722333
                  srai         s0, a2, 7
                  xor          s1, a5, a0
                  auipc        t6, 240185
                  lbu          a7, 36(gp)
                  sb           t4, 56(gp)
                  lb           s11, -9(gp)
                  slti         s8, a7, -433
                  sb           ra, 53(gp)
                  sw           s1, 47(gp)
                  lbu          t0, -39(gp)
                  sh           s7, -23(gp)
                  lbu          t4, 64(gp)
                  sra          t6, gp, sp
                  srli         t5, s0, 5
                  or           t0, gp, a5
                  andi         a7, s0, 1864
                  lb           t5, 28(gp)
                  lbu          tp, -30(gp)
                  lbu          s10, 4(gp)
                  sb           a1, 2(gp) #end riscv_load_store_rand_instr_stream_1
                  srli         s1, s0, 20
                  auipc        t4, 323527
                  add          s3, s7, t4
                  bgeu         t5, a0, 808f
                  ori          a6, t4, 2009
                  bgeu         s0, s10, 814f
808:              nop
809:              sub          zero, tp, s4
                  lui          a0, 274732
                  sub          t4, s0, s9
812:              bge          s2, sp, 820f
                  blt          t1, s4, 815f
814:              nop
815:              auipc        s5, 769953
                  add          a2, a6, s1
                  or           s11, s10, ra
                  auipc        gp, 164637
                  add          a6, a6, s8
820:              auipc        gp, 984641
                  ori          s6, s11, -884
                  srl          a1, a5, s4
                  auipc        a7, 308655
                  ori          s0, gp, 1827
                  bgeu         t3, t6, 837f
                  slli         sp, a4, 3
                  add          zero, ra, s8
                  addi         s6, a3, -442
                  bgeu         a6, sp, 838f
                  sub          s4, a1, a7
                  sra          s3, t2, s8
                  add          s6, a3, a5
                  andi         ra, t5, -30
                  sub          t4, s8, s8
                  sll          gp, a4, a1
                  bgeu         gp, t6, 843f
837:              xor          s1, s3, a7
838:              slti         a2, s8, 592
                  and          t6, s0, s5
                  sub          a7, a3, gp
                  addi         a7, t0, 1306
                  sra          t1, a1, s8
843:              sra          t0, t2, s8
                  bltu         t2, zero, 858f
                  srl          a5, t5, s6
                  sll          s9, s7, tp
                  add          t6, t1, s1
                  sltu         s1, s9, ra
                  srai         t5, s4, 7
                  srai         s9, s5, 25
                  add          s10, a2, s4
                  slt          a7, a4, s6
                  bgeu         a3, ra, 870f
                  xor          gp, t2, gp
                  andi         a5, ra, -834
                  la           sp, region_0+1852 #start riscv_load_store_rand_instr_stream_8
                  sub          a6, t5, s7
                  lui          t5, 696495
                  lbu          s8, -13(sp)
                  lb           a2, 0(sp)
                  lui          a0, 448425
                  or           s3, sp, a1
                  lw           a2, -8(sp)
                  srai         s3, s4, 10
                  slt          t1, a7, s7
                  lb           s3, -15(sp)
                  lui          t4, 167375
                  sb           t2, 5(sp)
                  sb           s8, -11(sp)
                  lbu          gp, -12(sp)
                  add          s1, sp, t4
                  auipc        t1, 468898
                  lhu          t5, -14(sp)
                  lbu          s6, 9(sp)
                  lbu          s4, 7(sp)
                  srl          a5, a7, s0
                  auipc        a5, 88854
                  or           a6, t5, a4
                  nop
                  sll          a5, s3, a4
                  nop
                  sltiu        s7, a1, 1164
                  nop
                  lbu          ra, -13(sp)
                  sra          s7, s7, t0
                  srli         tp, sp, 9
                  slt          a0, s3, a2
                  lh           gp, -8(sp)
                  sb           t2, 16(sp)
                  auipc        t5, 2536
                  lb           ra, 5(sp) #end riscv_load_store_rand_instr_stream_8
                  sll          s4, t5, a7
                  srli         s1, t5, 31
858:              sra          s1, ra, a2
                  bltu         s1, sp, 869f
                  srl          a2, a2, s8
                  srl          t4, s0, a4
                  sltu         a3, t2, a7
                  xor          s8, s2, s8
                  addi         s7, a1, 1415
                  and          t4, a7, s7
                  bltu         s11, s4, 879f
                  or           a7, zero, t5
                  slli         s6, s9, 17
869:              beq          a1, t3, 884f
870:              slti         s11, t0, -1825
                  srl          a0, s4, t5
                  slti         s6, s6, -1211
                  lui          zero, 606779
                  and          a1, s3, a4
                  slt          a7, a4, a3
                  slli         a0, s7, 31
                  sltu         a5, a0, s9
                  srl          tp, a1, a6
879:              bltu         s2, s3, 897f
                  add          s3, a7, s9
                  lui          t5, 1030349
                  slli         gp, t4, 31
                  sub          s3, gp, s7
884:              sll          t4, s1, a4
                  andi         s8, gp, -1440
                  nop
                  srli         s10, t4, 17
                  sra          s0, a6, s11
                  xori         a5, t6, -1993
                  andi         gp, s1, -671
                  xor          zero, t6, s11
                  sub          sp, t1, s3
                  slti         gp, s1, 336
                  auipc        s4, 491227
                  slt          t0, t0, a2
                  sltiu        t6, s3, -521
897:              xori         s11, tp, -2037
                  srai         a0, t3, 22
                  slli         a0, s6, 5
                  sll          s4, gp, t0
                  slli         zero, t3, 29
                  addi         s1, s2, 1897
                  sub          a1, a7, a4
                  nop
                  sub          a5, s10, a1
                  bne          a1, s3, 920f
                  slt          t0, t3, a6
                  bltu         s8, s0, 921f
                  bge          s3, s9, 914f
                  bne          s8, t5, 919f
                  sltiu        gp, t5, 1546
                  nop
                  blt          s2, t4, 927f
914:              xori         s5, s8, 1191
                  blt          t6, zero, 922f
                  srli         a5, gp, 24
                  srl          s8, s2, s1
                  and          t4, t2, ra
919:              and          s11, a4, sp
920:              addi         a6, s11, -1694
921:              slli         gp, t2, 1
922:              lui          t6, 105092
                  beq          a5, a7, 933f
                  and          t6, t1, a2
                  bge          s3, t1, 932f
                  xori         s5, a7, -371
927:              addi         s1, a4, 502
                  sltu         sp, s1, sp
                  auipc        a4, 55221
                  bgeu         t4, s1, 934f
                  bltu         s5, s3, 934f
932:              sltiu        s6, s1, -239
933:              blt          a7, t3, 948f
934:              blt          a1, t2, 949f
                  srl          ra, s8, tp
                  and          a7, s3, t4
                  slli         s0, s8, 25
                  lui          s1, 35969
                  bge          a7, ra, 942f
                  srai         t5, a2, 10
                  or           s9, s0, s3
942:              bgeu         s5, s7, 952f
                  addi         t0, tp, 1495
                  srl          a0, a5, s0
                  sll          s10, sp, t1
                  blt          s1, s5, 949f
                  add          s9, s5, a6
948:              addi         t5, t0, -1166
949:              or           gp, s8, gp
                  lui          s8, 984067
                  xori         a7, a1, -768
952:              lui          s7, 772454
                  sltiu        t5, s7, -224
                  srli         a5, ra, 20
                  bge          s2, ra, 973f
                  xori         a5, tp, 227
                  srai         sp, s7, 14
                  sll          zero, s11, a0
                  srl          s1, tp, s7
                  auipc        s4, 633041
                  srai         t1, s2, 25
                  bne          s4, s5, 978f
                  add          s4, t3, t3
                  nop
                  lui          a7, 336203
                  la           tp, region_1+1268 #start riscv_load_store_rand_instr_stream_3
                  lbu          s4, 219(tp)
                  lh           sp, -72(tp)
                  lbu          zero, -174(tp)
                  lhu          s3, -980(tp)
                  slli         s4, t3, 30
                  sh           t1, -554(tp)
                  srl          t5, t2, zero
                  sh           t2, -986(tp)
                  slti         a3, a4, -1031
                  xor          t1, s3, s6
                  sb           t3, -1180(tp)
                  sh           t4, -654(tp)
                  lui          t5, 486219
                  srai         t6, s7, 13
                  slt          s6, s4, t6
                  sw           t4, 32(tp)
                  lb           s0, -961(tp)
                  lbu          a7, 359(tp)
                  lh           s10, 272(tp)
                  sb           s8, -663(tp)
                  sh           tp, -888(tp)
                  sb           s2, -589(tp)
                  xor          s5, s3, t1
                  lbu          gp, -288(tp)
                  srli         gp, s9, 0
                  add          a3, s8, s11
                  slt          sp, a3, s10
                  ori          s11, t0, 91
                  sh           s3, 654(tp)
                  lbu          s10, -389(tp)
                  lui          s1, 270675
                  sb           s8, -971(tp)
                  slt          a5, t3, a6
                  lui          t0, 20162
                  lh           s5, -968(tp)
                  sb           a7, 157(tp)
                  lhu          s4, -100(tp)
                  sh           s0, -1192(tp) #end riscv_load_store_rand_instr_stream_3
                  sltiu        a4, t0, 1524
                  slt          t6, s3, gp
                  slti         s1, s4, -1456
                  xori         s8, s6, 1398
                  srli         s3, t1, 3
                  auipc        sp, 188694
                  and          a2, s8, s0
973:              or           s1, a1, a5
                  or           a7, ra, s3
                  srai         a3, s5, 0
                  xor          s10, t2, tp
                  sub          s11, s1, t4
978:              sra          sp, a1, s0
                  bgeu         s2, s2, 982f
                  slti         s3, a2, -796
                  nop
982:              nop
                  sltu         t0, t5, s1
                  addi         t4, s2, -1385
                  sltu         t4, a3, tp
                  sub          a3, sp, s8
                  slli         gp, t6, 18
                  bltu         s1, a4, 991f
                  sub          t5, a5, a5
                  beq          sp, sp, 1008f
991:              lui          t4, 447844
                  addi         s10, t3, -549
                  sltiu        s9, t1, 933
                  sltiu        a5, t5, -651
                  and          a5, a3, s9
                  auipc        a5, 516316
                  beq          ra, s10, 1014f
                  slt          s4, a3, t2
                  slt          s1, s0, s9
                  auipc        s10, 1010600
                  sll          s7, zero, s4
                  sll          a1, s8, s9
                  auipc        t6, 278366
                  sltu         t4, s11, a1
                  xor          s4, a0, tp
                  add          t6, sp, t5
                  slt          sp, t3, zero
1008:             slt          t4, zero, gp
                  nop
                  srli         a4, t5, 1
                  sll          t1, s7, t0
                  xori         ra, a6, 1727
                  sub          a6, a4, t1
1014:             xor          gp, t0, s0
                  ori          t6, a0, 1279
                  srli         s3, a3, 0
                  srai         sp, a4, 25
                  bgeu         s8, ra, 1030f
                  sltu         s8, s0, t2
                  sra          s8, s0, s2
                  xor          a1, tp, gp
                  sra          gp, s3, t4
                  add          s4, t3, t6
                  lui          s0, 953736
                  blt          t4, t4, 1027f
                  ori          a5, s6, 19
1027:             sra          s10, t6, gp
                  bge          a3, t1, 1031f
                  xor          a1, s10, s6
1030:             sub          a5, sp, s5
1031:             slli         s11, t3, 29
                  or           s11, t5, a3
                  slti         s10, t2, -2019
                  sltu         s9, a0, a4
                  sltiu        zero, t1, -692
                  and          s4, t4, s11
                  beq          a2, s1, 1050f
                  sub          gp, a0, a4
                  sub          gp, sp, gp
                  addi         a6, s8, 1487
                  bge          a5, a7, 1058f
                  xori         a6, t4, -1076
                  srai         zero, s6, 4
                  sltiu        ra, gp, 572
                  xori         s10, s4, 1236
                  xori         t6, gp, 1056
                  beq          a3, sp, 1057f
                  bgeu         s1, tp, 1054f
                  ori          t4, a2, 538
1050:             slli         s8, s11, 7
                  add          s1, a2, a5
                  xor          a1, t3, a2
                  slti         t1, s5, 1638
1054:             slti         s4, t6, 1298
                  sll          s11, s3, s2
                  xori         a1, sp, 1558
1057:             xor          a1, a2, sp
1058:             ori          a6, s5, -1267
                  bge          t6, t4, 1072f
                  beq          t5, s9, 1065f
                  srli         a0, a3, 8
                  slt          s10, ra, s11
                  srli         t6, s2, 7
                  slli         s11, s0, 3
1065:             andi         s7, s6, 1198
                  or           t5, a2, a7
                  srli         s5, a6, 6
                  bgeu         ra, s11, 1088f
                  add          s5, t6, s3
                  and          s9, s10, t1
                  sll          sp, sp, s9
1072:             auipc        s5, 460817
                  xor          a5, t6, a1
                  slti         t0, s6, 2037
                  andi         a0, s7, 1045
                  xor          ra, a1, t0
                  sub          tp, s9, s6
                  nop
                  lui          ra, 106787
                  ori          s6, t4, -1476
                  srl          gp, s10, a4
                  srl          a1, s7, a0
                  slti         t0, s11, 596
                  bne          t2, t5, 1098f
                  slti         s6, ra, -1101
                  and          s10, sp, t4
                  sub          s9, a2, zero
1088:             ori          s0, a6, -494
                  lui          t0, 315277
                  nop
                  sra          t4, t2, s2
                  srli         sp, t5, 12
                  sra          s6, t0, t4
                  and          s7, s7, a3
                  sra          ra, gp, s11
                  sra          t4, s10, tp
                  ori          s4, ra, -1364
1098:             sll          gp, s8, s11
                  bltu         t4, s3, 1107f
                  ori          t6, zero, 610
                  bge          tp, t4, 1108f
                  xor          s8, s8, s3
                  nop
                  slli         a0, t0, 17
                  beq          s10, s3, 1122f
                  xori         t6, gp, 792
1107:             ori          a3, a7, 1363
1108:             auipc        s5, 958463
                  auipc        t4, 927876
                  beq          sp, gp, 1114f
                  srai         a7, t1, 21
                  nop
                  slli         sp, a5, 12
1114:             bge          a4, zero, 1131f
                  and          t5, t3, t6
                  and          a2, a1, a5
                  add          s8, s5, s11
                  xori         a3, sp, -643
                  sub          tp, ra, s0
                  srai         sp, zero, 14
                  andi         s10, t3, 1500
1122:             sltu         tp, ra, a2
                  nop
                  sltu         t6, a4, s11
                  or           s7, s2, t4
                  slt          s0, t2, s10
                  bne          a2, t3, 1133f
                  slli         t5, s4, 26
                  andi         a4, t3, -856
                  blt          a2, zero, 1150f
1131:             sll          t0, gp, tp
                  auipc        t6, 137853
1133:             bne          t0, t1, 1135f
                  lui          a7, 983003
1135:             beq          s2, a5, 1149f
                  slt          a4, s4, s4
                  ori          s0, tp, 839
                  bne          t2, a1, 1143f
                  andi         s3, s11, -1244
                  srli         t5, s10, 13
                  slt          s10, tp, sp
                  srl          a4, s3, s10
1143:             auipc        sp, 976710
                  sltiu        a1, s4, 792
                  slt          s8, t3, s2
                  xor          a0, a1, s3
                  beq          s6, s4, 1160f
                  xor          t1, s3, zero
1149:             andi         tp, s10, 1932
1150:             slt          zero, sp, a6
                  bltu         s10, s9, 1167f
                  beq          s7, a7, 1165f
                  lui          s11, 175827
                  slti         s8, sp, 1859
                  sll          t4, t0, a6
                  sub          s6, t4, s7
                  addi         s9, s3, 1449
                  slt          sp, a6, ra
                  andi         t1, t1, -20
1160:             add          sp, t4, t1
                  lui          a5, 983417
                  xor          a0, t3, a2
                  srai         a4, s8, 20
                  srli         s3, a1, 15
1165:             slt          s7, s6, t2
                  slli         gp, s9, 22
1167:             sltiu        ra, ra, 1391
                  sltu         a3, t5, s8
                  xor          t4, zero, s6
                  slli         a4, t6, 5
                  bge          sp, s7, 1174f
                  slt          a2, t5, s9
                  bne          s8, s8, 1176f
1174:             bltu         t2, s10, 1177f
                  sltu         a7, gp, s8
1176:             xori         ra, s3, 1981
1177:             beq          a3, t4, 1192f
                  or           s3, a6, s3
                  srli         a2, s9, 22
                  beq          s2, s2, 1189f
                  bne          s10, t3, 1189f
                  srl          t5, s7, t1
                  srli         s1, a2, 7
                  bge          ra, s1, 1198f
                  sra          s11, t3, s9
                  addi         a2, s2, 693
                  sltu         a2, t5, s7
                  and          t6, a2, t1
1189:             bge          a3, a3, 1192f
                  sub          t6, a0, s7
                  xori         t0, t1, -1951
1192:             blt          t1, s1, 1202f
                  bge          s3, t1, 1211f
                  bltu         s4, tp, 1204f
                  bne          t2, t5, 1213f
                  beq          a4, s6, 1211f
                  auipc        t6, 1018730
1198:             sltu         s8, s7, a4
                  sltiu        s9, zero, 1275
                  lui          a1, 222341
                  lui          t5, 893144
1202:             blt          s5, a5, 1205f
                  andi         s6, t5, -561
1204:             bgeu         s3, s5, 1216f
1205:             sll          s4, ra, ra
                  bltu         s9, a3, 1209f
                  slti         zero, t2, 1829
                  srl          a7, s7, gp
1209:             bne          s3, t3, 1216f
                  sra          s11, t2, a7
1211:             bge          sp, t3, 1221f
                  lui          s7, 948706
1213:             auipc        a6, 279837
                  auipc        a3, 712425
                  blt          t6, a5, 1235f
1216:             beq          a6, a3, 1219f
                  srli         t0, gp, 5
                  sll          s9, a1, s5
1219:             slt          a3, a4, s3
                  sub          a5, s4, s5
1221:             slt          s6, s9, t6
                  bne          sp, s2, 1237f
                  srl          t5, t4, t2
                  bltu         s11, a6, 1228f
                  srl          a1, a2, a4
                  srl          s5, s10, s3
                  slli         s1, s2, 12
1228:             bltu         t0, a5, 1235f
                  addi         sp, a7, -1649
                  beq          tp, a5, 1238f
                  addi         a6, s5, -188
                  nop
                  nop
                  slt          s1, t1, a6
1235:             bne          ra, a2, 1250f
                  and          zero, t5, a6
1237:             nop
1238:             srai         a2, zero, 7
                  nop
                  bltu         t0, s7, 1250f
                  la           s9, region_1+51 #start riscv_load_store_rand_instr_stream_5
                  sltu         s11, s8, s7
                  sll          sp, sp, a2
                  slti         ra, a5, -842
                  auipc        t6, 664437
                  lb           t4, 38(s9)
                  lh           ra, 27(s9)
                  lh           s0, -13(s9)
                  lw           a2, -35(s9)
                  or           a4, s8, s9
                  srl          s0, t2, a3
                  sb           s0, -15(s9)
                  xori         s0, s4, 1621
                  andi         a0, t2, -215
                  sh           s5, -51(s9)
                  and          a3, tp, s4
                  xor          t5, s3, t5
                  lbu          a3, -27(s9)
                  lb           s5, 31(s9)
                  srl          s7, t2, s2
                  srli         gp, s3, 11
                  sra          t5, a4, t5
                  lbu          s1, 64(s9)
                  sb           gp, 42(s9)
                  nop
                  slt          t4, a6, s2
                  slti         a4, a4, -306
                  lh           s8, 1(s9)
                  sb           ra, -37(s9)
                  xori         ra, s3, -1854
                  lbu          a3, 24(s9)
                  lh           s11, 25(s9)
                  sb           gp, -38(s9)
                  sra          s11, s10, ra
                  auipc        s0, 708649
                  sb           s8, 32(s9)
                  auipc        s5, 42370
                  lbu          a3, -46(s9)
                  sb           zero, 15(s9)
                  lbu          s6, 61(s9)
                  sb           t2, -8(s9)
                  srai         a6, a7, 30
                  lh           zero, -5(s9)
                  lh           ra, -27(s9)
                  sb           a7, -2(s9)
                  lhu          s5, 11(s9)
                  lhu          s8, 27(s9)
                  srli         zero, t5, 29
                  sb           a3, 11(s9)
                  sw           a5, -7(s9) #end riscv_load_store_rand_instr_stream_5
                  xor          a3, s1, a7
                  bge          s4, t2, 1245f
                  srai         a3, tp, 26
                  sll          a3, s2, a6
1245:             auipc        a1, 674630
                  sub          s6, s8, t5
                  ori          t4, s5, -1731
                  andi         a4, tp, -512
                  slli         s10, a1, 3
1250:             slli         s5, tp, 25
                  sltu         s9, t0, s6
                  srai         a7, gp, 6
                  bne          t2, s7, 1263f
                  slt          s6, s9, s4
                  bltu         a0, s6, 1273f
                  auipc        s5, 899447
                  ori          s1, t6, 369
                  beq          gp, a1, 1275f
                  srli         t5, tp, 12
                  ori          a5, s1, 1420
                  sra          s9, s3, s6
                  sub          a1, tp, t2
1263:             sll          sp, t2, s11
                  or           s4, s10, sp
                  and          s6, s3, a7
                  addi         s11, s0, -1960
                  sltu         ra, a1, t4
                  xor          a6, gp, s3
                  and          s9, a3, s8
                  andi         gp, a4, -810
                  xori         s4, s6, 10
                  sll          s9, a7, t4
1273:             sll          tp, s9, t1
                  ori          s6, s11, 812
1275:             sltiu        t6, t3, 655
                  slli         s7, s2, 6
                  bne          s3, a4, 1290f
                  srli         a1, s5, 23
                  sub          s9, s6, s9
                  sltiu        t1, t2, -1223
                  blt          sp, t6, 1287f
                  blt          tp, s0, 1289f
                  beq          a2, t2, 1292f
                  sltu         s9, t4, s8
                  bltu         s2, s11, 1287f
                  bgeu         s5, zero, 1289f
1287:             srai         s7, s11, 10
                  srai         a6, t5, 19
1289:             xori         gp, t2, -1397
1290:             xor          a0, tp, t6
                  andi         t1, s2, 213
1292:             andi         s5, s7, -1976
                  sltiu        s3, a2, -1902
                  nop
                  srli         a5, t5, 15
                  lui          s6, 919826
                  xori         zero, a2, -575
                  slti         s8, a5, 1374
                  srai         t4, zero, 8
                  xor          s6, t1, a4
                  xor          s1, a4, tp
                  auipc        t6, 411571
                  bne          s11, a6, 1317f
                  ori          t1, s0, 1687
                  xori         a7, t0, 1636
                  auipc        zero, 983400
                  srli         s3, a4, 22
                  xori         s7, s7, -1780
                  and          s7, t1, s6
                  srli         sp, s6, 10
                  srli         s4, s0, 20
                  auipc        s0, 507893
                  sltu         a5, a5, zero
                  srl          s7, tp, t5
                  sra          zero, s6, t1
                  andi         s6, gp, 1750
1317:             andi         a0, t6, -769
                  blt          a6, s2, 1330f
                  sra          s8, a6, s1
                  and          t0, t2, a6
                  bgeu         t1, zero, 1337f
                  or           ra, zero, a5
                  sub          s1, s2, t3
                  bne          s3, s4, 1329f
                  sll          gp, sp, s5
                  sra          t0, t3, a3
                  bge          a1, s9, 1337f
                  slti         t0, t5, 1912
1329:             srl          s3, s4, s7
1330:             srli         a5, s2, 24
                  blt          sp, s6, 1349f
                  lui          s8, 389551
                  beq          a2, a4, 1346f
                  slli         t4, s0, 5
                  ori          s9, gp, 1845
                  and          s9, a5, s8
1337:             sltu         tp, s3, t0
                  bne          ra, a4, 1355f
                  lui          s8, 228889
                  slti         a7, s1, -331
                  sltu         t0, t2, s6
                  blt          s10, s4, 1345f
                  addi         gp, s9, 1699
                  ori          a1, t0, 17
1345:             bltu         s0, a7, 1348f
1346:             addi         s6, t6, 1345
                  auipc        s0, 453780
1348:             slli         a2, t6, 10
1349:             slli         s5, s3, 19
                  or           s11, a4, t1
                  bne          t0, t2, 1360f
                  bne          t0, s6, 1355f
                  or           s10, s7, t4
                  nop
1355:             add          a7, s1, gp
                  xori         t4, s4, -609
                  nop
                  xori         s3, t5, 768
                  sll          s11, t6, s2
1360:             sub          sp, gp, a2
                  xor          s8, s9, zero
                  lw           gp, 4(t2)
                  and          tp, a3, a7
                  slti         t0, t6, -539
                  addi         t2, t2, 28
                  ori          t4, s9, 1234
                  sub          s7, s3, s9
1788:             addi x4, x3, 1
1788:             jalr x4, x4, 0
sub_8:            ori          s5, sp, 860
                  auipc        t6, 927369
                  auipc        zero, 956433
                  addi         t2, t2, -32
                  add          s7, a7, s3
                  xori         ra, s10, -458
                  nop
                  nop
                  addi         t6, s6, 1482
                  sw           gp, 4(t2)
                  sltiu        a2, s11, -1290
                  sll          s11, s5, s7
                  srli         a7, s7, 2
                  sra          s8, a2, s1
                  and          t4, ra, s1
                  auipc        a6, 1044902
                  beq          a4, t0, 11f
                  or           s6, s6, ra
                  andi         a5, s8, -597
                  bgeu         a7, s2, 11f
                  xori         t4, t0, 1070
                  add          s3, s2, gp
11:               add          s11, t0, a3
                  lw           gp, 4(t2)
                  sra          a0, s1, s10
                  srai         zero, s5, 17
                  lui          s9, 220113
                  addi         t2, t2, 32
                  add          t4, t1, t3
29:               addi x5, x3, 0
29:               jalr x5, x5, 0
sub_4:            bne          gp, s5, sub_4_stack_p
                  srli         a4, a7, 6
sub_4_stack_p:    addi         t2, t2, -48
                  xori         s1, s9, -17
                  ori          t5, s8, 274
                  srai         a1, s1, 12
                  sw           gp, 4(t2)
                  ori          tp, s11, -391
                  la           s11, region_0+1675 #start riscv_load_store_rand_instr_stream_4
                  sltu         ra, zero, zero
                  lw           a2, -1259(s11)
                  lh           zero, -1057(s11)
                  or           s9, t0, a7
                  sra          gp, s1, s11
                  xor          t4, t3, s2
                  lb           s10, -346(s11)
                  srai         a6, a7, 3
                  lb           t0, -720(s11)
                  sub          s0, a2, t2
                  lui          s1, 125454
                  addi         t5, a4, -881
                  sub          zero, s5, s2
                  sltiu        t6, t2, 1468
                  sltu         gp, a5, a5
                  slli         s6, t5, 28
                  srl          sp, a1, a6
                  sub          ra, s6, t4
                  lh           t1, -371(s11)
                  lbu          a2, -925(s11)
                  or           a3, s6, s10
                  slli         a1, a6, 11
                  lhu          s7, -1187(s11)
                  and          t6, s4, t6
                  lb           a7, 146(s11)
                  sb           a6, -65(s11)
                  sw           t5, -1207(s11)
                  lbu          tp, -1520(s11)
                  sb           t2, -523(s11)
                  lbu          sp, -276(s11)
                  auipc        a0, 716145
                  slt          t4, tp, ra
                  lb           a3, -338(s11)
                  add          s1, t6, a0
                  xori         s5, s11, 561
                  sll          a3, s4, a1
                  lhu          s10, -1355(s11)
                  lbu          a3, -1349(s11) #end riscv_load_store_rand_instr_stream_4
                  la           tp, region_1+443 #start riscv_load_store_rand_instr_stream_1
                  andi         a2, t2, 1777
                  nop
                  lb           a7, 64(tp)
                  slt          s9, a7, a4
                  sh           s9, 43(tp)
                  srai         s0, a4, 23
                  sb           s1, 24(tp)
                  sb           gp, 32(tp)
                  lbu          s5, 64(tp)
                  lbu          s0, 49(tp)
                  lb           s8, -45(tp)
                  srai         a6, a4, 11
                  sll          a3, t2, a3
                  slti         gp, t2, 1197
                  or           a4, t4, t0
                  lbu          s5, -9(tp)
                  lh           a1, -61(tp)
                  sb           s5, 38(tp)
                  lh           s10, -47(tp)
                  add          t5, t4, a1
                  or           t1, a1, s9
                  lb           t1, -4(tp)
                  lbu          a4, 18(tp) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_0+795 #start riscv_load_store_rand_instr_stream_6
                  xori         a0, t1, -2014
                  andi         gp, s6, 563
                  add          zero, a5, s9
                  sb           a1, 16(sp)
                  sll          ra, s4, a7
                  srai         gp, a3, 2
                  sra          s9, a4, s2
                  lh           a7, -15(sp)
                  add          s3, s7, s0
                  or           a1, s3, s9
                  lui          a6, 454941
                  nop
                  sltiu        s6, a4, -170
                  lb           tp, 0(sp)
                  sltu         a7, t6, a4
                  andi         t4, a2, -1860
                  sh           zero, 13(sp)
                  addi         a1, s11, -1907
                  lhu          s10, -9(sp)
                  lhu          gp, 9(sp)
                  and          t5, zero, a1
                  sw           s1, -11(sp)
                  sll          s8, zero, s11
                  sh           tp, -15(sp)
                  sub          t0, ra, t1
                  sh           s10, 13(sp)
                  add          a4, gp, a7
                  lb           t0, 10(sp)
                  sb           t1, -9(sp)
                  sb           a0, 4(sp)
                  sltu         t1, tp, s7
                  sra          s9, s2, sp
                  sb           ra, -10(sp) #end riscv_load_store_rand_instr_stream_6
                  la           sp, region_0+0 #start riscv_load_store_rand_instr_stream_5
                  sltu         s6, tp, t4
                  sb           t2, 14(sp)
                  and          s1, a0, a6
                  srl          gp, a6, t3
                  sltu         s0, s6, a0
                  srai         zero, s6, 8
                  lb           s4, 5(sp)
                  nop
                  lbu          s5, 7(sp)
                  srl          a0, s8, s10
                  sh           t0, 14(sp)
                  slli         a7, t5, 13
                  lb           t6, 11(sp)
                  or           a7, s3, sp
                  lh           t1, 14(sp)
                  sb           a5, 4(sp)
                  or           t6, s6, s8
                  lbu          s11, 7(sp)
                  lb           s3, 4(sp)
                  xor          ra, tp, s3
                  addi         s5, a7, 443
                  srli         a5, s0, 8
                  sra          a7, s2, s8
                  or           s5, tp, s5
                  auipc        a4, 190525
                  addi         gp, tp, 363
                  nop
                  or           t0, t0, s0
                  sub          s5, a1, s6
                  slt          s4, a4, t1
                  and          gp, a6, a7
                  or           t4, s6, a7
                  lui          t5, 120797
                  sub          a0, s5, a4
                  auipc        t6, 215968
                  auipc        s10, 546711
                  srli         s7, t2, 11
                  sh           s9, 14(sp)
                  auipc        t6, 561766
                  xor          gp, t2, s10
                  lbu          s3, 16(sp) #end riscv_load_store_rand_instr_stream_5
                  la           sp, region_0+794 #start riscv_load_store_rand_instr_stream_0
                  auipc        a4, 1042091
                  sb           a6, 40(sp)
                  or           a7, a2, a4
                  srai         s11, a6, 30
                  lb           a5, -47(sp)
                  xor          s6, a5, s9
                  sb           sp, -52(sp)
                  lh           s1, -2(sp)
                  sb           t0, 27(sp)
                  xori         s6, s11, -1988
                  lbu          t5, -3(sp)
                  sra          a2, a5, s1
                  srli         s8, s0, 27
                  auipc        ra, 879772
                  nop
                  lbu          a4, 1(sp)
                  sw           s10, 62(sp)
                  lw           s6, 2(sp)
                  slli         s4, a2, 5
                  lbu          ra, 29(sp)
                  sub          zero, sp, s4
                  srli         a3, a2, 12
                  or           a7, s9, s9
                  lb           s9, 35(sp)
                  sw           t0, 30(sp)
                  addi         zero, s0, -1074
                  srli         a0, zero, 4
                  slt          t1, s5, a7
                  sb           s5, 23(sp)
                  lb           a0, -64(sp)
                  or           s11, s9, t4
                  sb           t6, 27(sp)
                  sb           gp, 11(sp)
                  srai         t5, s7, 29
                  lbu          s9, 52(sp)
                  lb           t5, -54(sp) #end riscv_load_store_rand_instr_stream_0
                  la           t1, region_0+550 #start riscv_load_store_rand_instr_stream_8
                  sb           a5, -473(t1)
                  sltu         ra, a2, t2
                  srai         ra, a5, 16
                  lhu          a6, 218(t1)
                  sll          gp, t1, s6
                  slt          s9, s9, s1
                  nop
                  lh           s11, 530(t1)
                  sh           s10, -380(t1)
                  lb           s1, -183(t1)
                  lh           s3, 348(t1)
                  srai         a0, a0, 15
                  sll          s9, t4, s7
                  and          gp, a3, gp
                  lh           s3, -484(t1)
                  sltu         s3, s6, t0
                  xori         t6, s3, -884
                  lb           s10, 1297(t1)
                  srai         a7, a6, 25
                  sh           s6, 1312(t1)
                  sll          s8, a2, s11
                  sb           s11, 29(t1)
                  sll          a7, s4, a4
                  and          s10, s7, s6
                  add          s6, s9, s6
                  srli         s5, ra, 7
                  lhu          s7, 728(t1)
                  xori         s4, a5, -1922
                  sb           a3, -472(t1)
                  and          sp, t2, s4
                  addi         s6, t3, 1115
                  or           gp, ra, zero
                  lh           s3, 1212(t1)
                  sra          s5, s6, a6
                  sll          s7, a2, a0
                  lbu          t4, -335(t1)
                  ori          s0, s5, 1017
                  sra          t5, s7, a4
                  slli         a0, s11, 23
                  srli         sp, gp, 12
                  slti         s5, sp, -666
                  sb           s9, 363(t1) #end riscv_load_store_rand_instr_stream_8
                  xor          s4, t5, a7
                  sltiu        t0, s10, 42
                  auipc        s1, 923539
                  andi         a0, a1, 226
                  bne          sp, s8, 24f
                  bne          s8, t6, 13f
                  sub          s9, s11, s11
                  sltu         ra, t0, s6
                  sub          s8, t4, a4
                  beq          a1, ra, 18f
                  auipc        a3, 978885
                  bge          zero, s8, 29f
                  sltiu        gp, s6, 329
13:               lui          s9, 435562
                  srl          tp, s3, t0
                  auipc        a7, 1035702
                  srli         zero, sp, 8
                  lui          a7, 35405
18:               xor          a0, a0, s6
                  blt          t1, s2, 36f
                  bge          t6, t0, 31f
                  bne          sp, t6, 27f
                  bltu         a7, s11, 23f
23:               andi         zero, t0, -402
24:               auipc        s10, 983836
                  bltu         s0, s0, 36f
                  sltiu        s5, ra, -241
27:               beq          s0, t5, 30f
                  add          ra, a4, a0
29:               xor          s11, t6, t5
30:               sltu         a2, a6, s7
31:               bne          zero, a5, 41f
                  beq          gp, s0, 35f
                  bge          t4, s5, 34f
34:               nop
35:               or           s6, s11, s11
36:               srl          s3, s3, s6
                  bltu         tp, s3, 46f
                  srl          tp, zero, s6
                  or           s4, t5, s3
                  add          a0, t6, sp
41:               bltu         gp, t2, 54f
                  lui          tp, 736276
                  and          a5, t1, s4
                  sltiu        s9, s7, 1043
                  bne          tp, gp, 65f
46:               bne          a4, t0, 65f
                  srai         gp, t1, 20
                  add          s4, s3, sp
                  addi         a1, a2, 971
                  bge          t3, a6, 57f
                  nop
                  srai         s1, s5, 0
                  srl          sp, s8, a5
54:               auipc        sp, 505178
                  or           s7, s5, a3
                  sltu         s3, s10, t6
57:               xor          s10, s1, t0
                  nop
                  srai         t0, a3, 19
                  blt          a5, s3, 76f
                  and          a5, s8, gp
                  sltiu        s9, t6, 281
                  bgeu         s11, a3, 75f
                  beq          t0, tp, 65f
65:               bltu         a0, sp, 70f
                  sll          s6, a7, t5
                  slli         tp, t0, 27
                  slt          gp, a0, s4
                  bltu         a6, s0, 87f
70:               or           t6, a2, a7
                  andi         s0, t3, -537
                  nop
                  slt          s9, tp, s10
                  slli         s7, s6, 29
75:               srl          s0, s7, t6
76:               sll          s10, sp, gp
                  xori         t1, ra, -1425
                  andi         s8, t4, 1363
                  srai         a2, tp, 4
                  srai         s9, s0, 28
                  bge          s7, t2, 90f
                  blt          a2, a4, 88f
                  bltu         s3, s1, 102f
                  sltiu        s8, t4, -121
                  beq          t3, a5, 91f
                  ori          s4, t2, -864
87:               ori          s8, t5, -491
88:               addi         zero, s1, -438
                  addi         t5, s8, -1731
90:               and          tp, s8, zero
91:               bltu         t3, t1, 96f
                  sra          s4, a7, s4
                  xor          s1, gp, t3
                  srli         zero, s3, 4
                  lui          s3, 75938
96:               slti         s3, a1, 2002
                  srli         tp, t5, 12
                  slli         s4, tp, 19
                  or           s11, a4, a2
                  srli         s6, t2, 6
                  bge          a5, a6, 121f
102:              bge          a5, s4, 105f
                  nop
                  nop
105:              or           s8, s9, a5
                  sltiu        a3, s9, -692
                  add          t0, s11, a5
                  srai         s1, zero, 15
                  nop
                  bge          s7, s2, 129f
                  lui          gp, 951310
                  sll          s0, s11, a7
                  beq          a0, a6, 118f
                  bge          t5, s8, 124f
                  add          s11, a4, a7
                  bge          a1, a1, 119f
                  slti         t6, gp, -1888
118:              blt          s5, a1, 138f
119:              auipc        s10, 1035459
                  blt          a3, s6, 126f
121:              bgeu         zero, a1, 141f
                  ori          a0, s3, -663
                  xori         a5, a3, -504
124:              bne          t6, s1, 130f
                  addi         s11, s11, -286
126:              sra          ra, t1, s0
                  bne          s9, a4, 128f
128:              ori          s7, t4, 1310
129:              srai         s0, s4, 6
130:              slti         a6, a0, 185
                  sll          s1, t5, a7
                  ori          t6, t6, 514
                  slt          t0, sp, t1
                  srli         s1, t3, 5
                  xor          s6, s2, a3
                  bltu         s6, a5, 144f
                  nop
138:              sub          s4, t6, s9
                  sra          t4, s1, a5
                  beq          t0, a6, 149f
141:              add          a5, s10, t1
                  bne          t4, t5, 147f
                  andi         s0, s11, -982
144:              blt          s6, gp, 153f
                  sltu         t0, t2, t0
                  addi         a7, a3, 948
147:              srli         t5, gp, 8
                  srli         s3, s8, 15
149:              ori          t4, sp, -246
                  sltu         s10, s0, a5
                  or           a5, t4, s6
                  addi         s3, a2, -861
153:              andi         t0, tp, 260
                  add          a2, s9, s1
                  sub          t5, t6, s4
                  sra          a3, s0, s3
                  beq          s2, s4, 160f
                  srli         sp, a4, 10
                  sltiu        a4, s1, -138
160:              bge          t0, s1, 167f
                  slli         t6, a5, 19
                  and          zero, a5, t0
                  bgeu         a7, a4, 176f
                  sub          a1, t3, s6
                  xori         s3, a1, -452
                  and          s7, gp, a4
167:              ori          s6, t0, -1465
                  bltu         t4, a0, 169f
169:              auipc        s8, 260243
                  srai         s1, t1, 4
                  bltu         tp, a2, 191f
                  slli         sp, s4, 10
                  beq          a1, a2, 179f
                  beq          a3, a6, 177f
                  blt          s10, t6, 184f
176:              addi         t1, a6, 1010
                  la           s6, region_1+1007 #start riscv_load_store_rand_instr_stream_9
                  lb           t5, 10(s6)
                  lbu          s11, -16(s6)
                  lbu          a7, 7(s6)
                  lui          s0, 16922
                  lbu          t6, 8(s6)
                  sb           s7, -4(s6)
                  nop
                  slti         s1, s0, -283
                  srai         t1, sp, 21
                  lbu          a7, -8(s6)
                  lb           a2, 13(s6)
                  sb           s4, 8(s6)
                  add          gp, a2, a0
                  sltu         a0, s3, s1
                  sh           a7, 5(s6)
                  andi         t5, s11, -591
                  srl          a4, a1, t5
                  or           s4, a4, s11
                  srl          a0, t4, s7
                  slt          a6, a0, s6
                  lbu          tp, 16(s6)
                  sltu         tp, a1, t6
                  sw           a3, 13(s6)
                  nop
                  lh           s0, -11(s6) #end riscv_load_store_rand_instr_stream_9
177:              srai         t6, s4, 4
                  srai         s7, s4, 7
179:              sra          s9, s1, tp
                  bge          a3, a1, 181f
181:              lui          s4, 513540
                  bge          s9, t3, 201f
                  srl          s1, sp, t3
184:              sra          s10, a3, gp
                  srai         a1, t5, 29
                  sltu         s11, zero, zero
                  slli         s3, s6, 29
                  bgeu         a7, s11, 206f
                  xor          s3, t3, t1
                  srli         s5, a5, 7
191:              bne          a5, t5, 203f
                  and          s1, s2, s4
                  lui          ra, 298576
                  slti         sp, s2, 855
                  ori          s1, s2, -332
                  sll          s4, s4, gp
                  andi         a0, s0, 104
                  bltu         a6, s11, 209f
                  xor          s11, tp, s4
                  slt          s11, t6, s5
201:              bge          s11, a2, 218f
                  srl          s1, a6, s3
203:              srli         s7, sp, 30
                  bne          s1, t1, 215f
                  bltu         a5, a0, 223f
206:              beq          sp, ra, 222f
                  srai         t1, s0, 1
                  sltiu        a4, a6, -394
209:              and          a7, a4, ra
                  xori         tp, a5, -665
                  sra          t1, a1, s3
                  bgeu         a4, t0, 230f
                  auipc        a3, 162525
                  srai         ra, ra, 30
215:              andi         s5, a1, -131
                  bge          a4, t3, 221f
                  add          a7, sp, t4
218:              sub          a5, s9, t3
                  beq          s11, a4, 228f
                  slt          t1, s6, a0
221:              sub          zero, a2, s1
222:              sll          s10, a4, gp
223:              blt          zero, ra, 240f
                  slt          s11, a3, t2
                  slli         s4, t0, 11
                  sll          s3, s9, ra
                  or           t0, t6, s8
228:              add          s11, s9, s11
                  slti         a3, a5, -1559
230:              srai         s4, sp, 26
                  slli         ra, t0, 7
                  nop
                  srl          t6, a4, a2
                  nop
                  bgeu         a5, s10, 253f
                  beq          s4, s1, 249f
                  srli         s4, s4, 18
                  sltu         s0, s0, a0
                  sltiu        s11, t0, -1430
240:              slli         s9, a6, 29
                  add          s0, s10, s11
                  bge          s10, s3, 254f
                  nop
                  srai         t0, t6, 23
                  ori          s9, a1, -321
                  sll          a2, t3, s8
                  bgeu         a3, t0, 258f
                  or           s7, s0, s10
249:              slti         zero, tp, 775
                  addi         s7, t2, -482
                  addi         s6, a3, 855
                  slli         a3, a3, 4
253:              auipc        t4, 359903
254:              bne          s4, zero, 260f
                  bge          s10, t1, 264f
                  sra          s8, s0, s10
                  xor          t6, s7, s4
258:              srl          s6, s10, a7
                  bne          t1, s6, 260f
260:              add          gp, t0, tp
                  andi         a6, t6, 1664
                  lui          s5, 57955
                  andi         zero, s5, -1699
264:              slli         a7, s5, 30
                  addi         s4, s4, -1597
                  sll          t6, a0, s1
                  beq          a4, s4, 286f
                  and          zero, a1, s6
                  nop
                  srai         a7, a4, 28
                  bgeu         t0, a7, 272f
272:              srai         a4, a7, 4
                  xori         s10, a5, -687
                  slt          gp, a6, a1
                  or           s3, s10, t3
                  or           a2, a7, s11
                  blt          t5, t4, 297f
                  slti         a3, t6, -1602
                  srl          zero, s7, t4
                  slli         s10, t1, 26
                  xor          s8, t6, s5
                  xori         a2, a2, -1711
                  sub          s11, s5, s8
                  and          a3, a6, t3
                  blt          sp, ra, 301f
286:              xori         s9, t0, 1984
                  srai         s4, a4, 19
                  add          t4, ra, t3
                  ori          s6, a5, -1502
                  andi         zero, s4, 801
                  bltu         s1, a2, 294f
                  auipc        t0, 1008778
                  blt          a1, s10, 301f
294:              bltu         s2, a5, 305f
                  or           t1, a1, a1
                  bge          t1, a6, 316f
297:              nop
                  srli         a1, t6, 16
                  slt          sp, t1, t0
                  xor          t5, sp, t0
301:              xori         a0, s3, -2019
                  sltiu        a1, sp, 558
                  auipc        s5, 903040
                  sltu         s11, s10, s11
305:              sra          tp, gp, a5
                  srli         s10, a5, 21
                  sra          a5, a2, s7
                  srai         ra, a5, 18
                  blt          s0, a6, 312f
                  addi         a0, s0, -2042
                  or           t0, t4, s3
312:              and          s5, a2, gp
                  auipc        s8, 378175
                  bne          gp, t6, 324f
                  sltu         s6, t2, s9
316:              and          s0, s4, gp
                  sltu         t1, t3, s7
                  ori          t1, zero, 167
                  sltu         zero, a6, zero
                  slt          gp, t5, s4
                  bge          t6, ra, 328f
                  sub          a0, a7, s6
                  sub          t5, s10, a6
324:              blt          s6, s1, 329f
                  auipc        s1, 598539
                  srai         a5, tp, 22
                  sltu         ra, a4, t1
328:              slli         t6, sp, 26
329:              nop
                  lui          a3, 681267
                  bltu         s5, s1, 337f
                  add          s3, t5, a4
                  or           s3, ra, a4
                  sltu         ra, s2, s0
                  nop
                  bge          sp, s3, 355f
337:              slt          a6, s10, s8
                  srai         s0, a2, 22
                  auipc        sp, 927058
                  or           s11, ra, a7
                  lui          a7, 141370
                  slti         s3, s0, -1967
                  slti         s4, s3, -1768
                  and          a5, a7, s7
                  srli         t5, s8, 16
                  sltiu        s9, t1, -1922
                  xori         a7, s6, 900
                  nop
                  xor          s9, s2, t1
                  blt          a2, t1, 351f
351:              bltu         a0, s2, 354f
                  la           s8, region_0+109 #start riscv_load_store_rand_instr_stream_12
                  add          t0, s2, s7
                  srl          t4, t1, ra
                  sub          t5, a2, t5
                  nop
                  srai         ra, s5, 24
                  lb           tp, 126(s8)
                  lh           t4, 63(s8)
                  addi         t4, t3, -271
                  lbu          a1, 15(s8)
                  slti         a2, a0, 1082
                  lhu          a1, 71(s8)
                  sb           s2, 202(s8)
                  slt          s11, a6, a1
                  lbu          tp, 150(s8)
                  lbu          s9, 98(s8)
                  lbu          t0, 208(s8)
                  lh           a6, 5(s8)
                  lb           a6, 134(s8)
                  lh           a5, -11(s8)
                  srli         s3, s5, 30
                  xori         s4, a0, 1687
                  sh           s7, 177(s8)
                  sll          a6, t4, s11
                  lbu          s4, -7(s8)
                  lb           tp, 216(s8) #end riscv_load_store_rand_instr_stream_12
                  bltu         s5, s10, 358f
                  add          a2, s11, a6
354:              slt          tp, s11, a2
355:              auipc        a2, 940052
                  andi         s1, s1, 682
                  sltu         s0, t6, s8
358:              slti         a0, a4, -1601
                  bgeu         zero, tp, 368f
                  andi         s6, a3, 1312
                  blt          t5, s9, 381f
                  sll          s10, t0, t6
                  beq          zero, s10, 375f
                  addi         s7, sp, 1884
                  auipc        t4, 713877
                  xor          tp, s7, t3
                  beq          s11, a1, 378f
368:              sra          t5, s6, a3
                  or           sp, t4, s10
                  blt          t1, a1, 379f
                  sll          t5, a2, ra
                  slt          sp, a7, a1
                  lui          a5, 1019192
                  add          zero, s10, sp
375:              beq          s11, s5, 376f
376:              nop
                  sra          gp, t4, ra
378:              bge          s10, a6, 379f
379:              add          t6, s10, s1
                  sra          s1, s1, s1
381:              bge          s7, ra, 401f
                  bge          a6, zero, 399f
                  srai         ra, s7, 19
                  bltu         sp, a0, 387f
                  nop
                  slli         gp, s0, 0
387:              auipc        a4, 230395
                  and          a3, s10, t5
                  andi         ra, tp, -1788
                  bgeu         t1, s11, 408f
                  bgeu         zero, s11, 410f
                  srai         sp, s7, 24
                  slt          s1, s3, t6
                  beq          t3, ra, 400f
                  ori          a7, a3, -138
                  beq          s9, ra, 399f
                  bltu         ra, t3, 404f
                  auipc        s10, 31655
399:              addi         s0, a6, -1705
400:              slli         s8, t0, 5
401:              auipc        s5, 158461
                  sltu         a3, a4, s4
                  bgeu         s7, s10, 423f
404:              slt          tp, a7, a2
                  xor          s0, t2, a4
                  slt          s0, t0, s8
                  beq          s2, s9, 418f
408:              bltu         s7, a1, 421f
                  beq          a2, s11, 414f
410:              srli         s8, s11, 12
                  or           a1, s10, a7
                  srl          s0, a5, sp
                  slt          s7, sp, t5
414:              and          s5, s8, t5
                  auipc        tp, 800188
                  auipc        a0, 46999
                  bge          s1, zero, 426f
418:              bgeu         s6, a4, 423f
                  beq          t0, s10, 428f
                  srl          a1, t5, a5
421:              bge          s9, s11, 422f
422:              bltu         a5, t1, 442f
423:              xor          t1, t1, s5
                  auipc        s11, 653876
                  srl          t5, s7, t5
426:              srl          gp, s9, s1
                  ori          s8, s10, 1338
428:              ori          tp, tp, -207
                  slli         ra, zero, 28
                  bge          t2, ra, 449f
                  blt          t0, tp, 441f
                  lui          t5, 251670
                  sub          s11, t5, t3
                  xori         t4, a4, -431
                  and          a5, s0, s1
                  addi         s9, s6, 60
                  and          a3, a4, s5
                  andi         t0, gp, -1334
                  srai         s0, s8, 15
                  lui          s5, 984038
441:              slt          a3, a1, t0
442:              slti         zero, s7, -127
                  addi         tp, t6, -1735
                  or           a6, t6, t6
                  sltiu        zero, gp, 240
                  beq          s9, tp, 464f
                  sll          a2, s3, t6
                  slli         s10, sp, 8
449:              sltu         s11, a3, ra
                  sltu         s11, a0, a0
                  bgeu         t5, a7, 457f
                  or           t6, s0, s8
                  slt          s1, t5, t6
                  add          s10, s10, s1
                  bgeu         t5, s0, 461f
                  sub          a5, s3, t2
457:              sra          a0, a5, t3
                  blt          a4, a5, 466f
                  nop
                  sltiu        s4, ra, 1455
461:              srl          s4, ra, a2
                  add          s7, t4, s8
                  add          s10, a7, t3
464:              andi         t6, ra, 346
                  auipc        a0, 727504
466:              xor          s1, s4, tp
                  xor          t5, a6, s5
                  beq          s10, t2, 484f
                  or           zero, a1, a3
                  and          s0, t5, a6
                  auipc        s1, 1034868
                  slti         s3, t4, -378
                  sll          s7, s9, sp
                  sub          s3, s8, t1
                  or           t1, s8, gp
                  andi         a1, a6, 1024
                  srli         s1, s11, 3
                  slli         sp, a3, 16
                  and          s8, s1, tp
                  slli         s3, s8, 19
                  or           t4, sp, s11
                  sra          s8, a5, a2
                  lui          zero, 184203
484:              ori          s3, a3, -1290
                  srl          a0, a6, s4
                  ori          sp, a5, -484
                  slt          a6, zero, zero
                  sra          s3, t2, s11
                  xori         s8, s7, -1701
                  auipc        a7, 279878
                  addi         tp, s1, -1879
                  sltiu        s0, t0, 309
                  bge          a6, t0, 496f
                  slt          t6, a1, sp
                  bne          t1, t6, 513f
496:              sra          a3, s8, t2
                  or           s1, s10, zero
                  and          s10, a5, s6
                  addi         t1, a7, -1481
                  srli         t6, gp, 4
                  sltu         a6, a4, t4
                  bne          s4, a7, 514f
                  bne          ra, t3, 512f
                  beq          sp, s5, 522f
                  nop
                  sub          ra, a4, gp
                  sltiu        t6, a5, 645
                  beq          a2, a1, 511f
                  bgeu         gp, t1, 526f
                  add          s5, zero, s0
511:              xori         s8, tp, 1486
512:              xor          s0, sp, t5
513:              sub          s0, s0, a2
514:              and          t1, s0, s4
                  and          s6, s2, s8
                  sltiu        s5, s2, 880
                  sra          a4, t2, a5
                  sll          ra, a7, t1
                  slli         gp, ra, 30
                  blt          t2, s2, 531f
                  slti         t5, s1, -1713
522:              slli         a5, t1, 20
                  blt          s9, t5, 524f
524:              andi         s11, t0, 488
                  addi         s10, a6, 357
526:              slti         s6, gp, -853
                  andi         s8, a0, -1855
                  bgeu         a6, s3, 536f
                  slti         gp, t1, -1120
                  sub          s8, s1, sp
531:              xori         zero, t2, -710
                  sltu         a5, t0, a6
                  sltiu        t5, a7, 693
                  auipc        a0, 715535
                  and          s0, t3, gp
536:              srl          a4, s1, a7
                  andi         a5, a1, -61
                  auipc        s0, 726430
                  srl          a5, t5, a3
                  add          s8, t0, t4
                  auipc        a0, 959575
                  add          s6, s10, s8
                  or           s9, a5, s2
                  slli         a1, zero, 26
                  srli         tp, s11, 25
                  sltiu        a5, t5, -235
                  auipc        t4, 297271
                  slti         ra, a7, 518
                  ori          t0, t2, 1260
                  ori          s3, t1, -454
                  sub          t0, a5, a5
                  addi         s7, a1, 153
                  addi         a6, t2, -620
                  bltu         a4, s9, 563f
                  srl          s11, s3, t4
                  auipc        s3, 477244
                  or           s1, a4, t3
                  sltiu        ra, t6, 932
                  slti         a1, t1, 144
                  slli         sp, s3, 6
                  blt          t5, s5, 572f
                  and          s1, tp, s2
563:              andi         tp, s3, -1082
                  nop
                  addi         s9, t5, 1150
                  add          s5, s1, ra
                  sub          a5, s11, ra
                  blt          s3, s6, 574f
                  sra          t6, a6, s10
                  srli         s3, a4, 29
                  beq          t1, a6, 574f
572:              srl          s8, s6, a1
                  sll          a3, s7, t2
574:              srli         a6, s7, 17
                  addi         t1, s2, 980
                  or           s3, t6, a7
                  slti         a2, a2, -216
                  srai         s6, t5, 16
                  lui          a6, 1037910
                  sltiu        s7, s2, -1616
                  srai         s8, s4, 21
                  xori         s7, tp, 124
                  sub          a7, a2, s10
                  auipc        ra, 507062
                  slt          s11, s1, t3
                  sltiu        t5, t6, 1831
                  lui          s7, 500950
                  nop
                  lui          s7, 585131
                  nop
                  and          t5, t5, a0
                  lui          s5, 640470
                  slti         s9, t2, 677
                  bltu         s9, a6, 599f
                  blt          a7, a5, 615f
                  slli         t0, t6, 1
                  sltu         a6, s6, s3
                  andi         s11, ra, -2024
599:              xori         a7, s3, 1892
                  add          s5, a4, s5
                  beq          ra, a0, 607f
                  bge          s7, a2, 621f
                  slt          t1, t4, s8
                  lui          a6, 1015314
                  bge          sp, t2, 612f
                  srli         tp, s3, 14
607:              ori          s0, tp, -935
                  andi         s3, tp, 639
                  nop
                  blt          s1, t1, 629f
                  srli         a3, s8, 2
612:              srli         tp, tp, 16
                  blt          s9, a6, 633f
                  ori          s7, s8, 337
615:              and          s0, a7, sp
                  srai         t1, a4, 15
                  bge          a2, s8, 627f
                  lui          a1, 972669
                  lui          a2, 474036
                  xori         t4, s7, 205
621:              sub          s5, a5, t1
                  srli         gp, s7, 3
                  auipc        a0, 926679
                  bltu         s7, zero, 644f
                  sltiu        t4, s0, -1099
                  sltu         a2, s10, t0
627:              sra          ra, s4, a2
                  ori          a7, t5, -247
629:              slli         zero, s10, 2
                  sra          t1, tp, a0
                  sltu         a1, s6, t4
                  andi         t1, s3, -782
633:              nop
                  bgeu         t6, s2, 650f
                  beq          a1, a6, 648f
                  slli         a5, t3, 9
                  addi         s3, a1, -728
                  auipc        s8, 180897
                  sub          a4, t3, t4
                  sra          t1, a1, a4
                  nop
                  andi         a4, t3, 1994
                  andi         s4, a3, 502
644:              add          t4, s9, s1
                  sltiu        a4, s9, -308
                  xor          t5, t2, sp
                  sub          s7, s5, t5
648:              slt          s9, s4, tp
                  sltiu        s5, a4, 43
650:              srai         a6, s11, 8
                  ori          a6, s4, 59
                  srai         zero, s11, 28
                  srai         tp, a2, 4
                  ori          s5, s11, -763
                  srli         a7, t3, 6
                  sltu         tp, t2, s2
                  or           s9, s7, a1
                  bge          s10, a2, 667f
                  xori         a0, a0, 172
                  srai         s5, t3, 5
                  bne          t2, t2, 662f
662:              sra          ra, t4, t6
                  bgeu         s10, a3, 666f
                  or           t6, ra, gp
                  sub          t1, a4, s5
666:              or           s3, a2, s11
667:              beq          s0, t2, 672f
                  lui          a3, 766824
                  slli         s6, s9, 8
                  blt          s4, a6, 676f
                  and          a6, a3, gp
672:              slti         a1, t3, 1422
                  bltu         tp, s6, 674f
674:              nop
                  lui          a7, 545634
676:              slti         a2, a4, 896
                  ori          t6, a1, 924
                  slti         s8, a2, 913
                  add          a3, a7, s8
                  ori          a3, a4, -1817
                  srai         t0, s6, 8
                  bgeu         s3, gp, 687f
                  sll          zero, sp, a0
                  bgeu         s11, s8, 701f
                  bge          zero, s6, 694f
                  sll          s9, s11, t6
687:              bne          s2, s7, 693f
                  lui          sp, 885973
                  ori          a1, s1, -115
                  and          a0, t5, a2
                  sra          a0, s1, t2
                  sll          tp, s5, s3
693:              sub          t5, s6, t1
694:              slt          s8, s5, a1
                  add          ra, s10, s0
                  ori          t5, t1, -84
                  or           a2, a2, ra
                  auipc        sp, 793249
                  sltu         t5, t6, s4
                  xor          s8, s5, s7
701:              bne          s10, s7, 719f
                  sll          a2, t2, s9
                  add          a0, sp, a3
                  auipc        t6, 736207
                  srl          t5, s10, s10
                  slli         tp, t0, 30
                  sltiu        t6, a4, 1362
                  and          s3, t2, s7
                  srai         a4, s10, 4
                  sltu         s1, a5, s10
                  slli         zero, s1, 7
                  blt          gp, s3, 713f
713:              srli         s7, s8, 31
                  sra          ra, t1, s1
                  sra          ra, zero, t0
                  and          t5, s2, zero
                  bgeu         a4, t0, 737f
                  beq          t2, s5, 724f
719:              blt          a4, s6, 722f
                  xori         t5, s9, 1858
                  xor          a0, a7, t3
722:              bne          s9, a0, 729f
                  sll          s7, t6, s7
724:              sub          t1, a6, a2
                  srli         zero, a2, 31
                  sra          s3, a5, s8
                  bgeu         ra, tp, 746f
                  ori          tp, s10, 1071
729:              srai         t0, s9, 28
                  bge          t0, ra, 740f
                  sltu         a7, a3, s2
                  bltu         s5, s2, 750f
                  beq          s4, s1, 741f
                  nop
                  ori          a2, s2, 355
                  nop
737:              xori         s7, sp, -1380
                  ori          tp, ra, 944
                  sra          t6, sp, s3
740:              nop
741:              add          t1, t6, s9
                  slt          s1, a0, s7
                  bne          t6, gp, 744f
744:              sltu         t4, a4, a6
                  srl          sp, ra, s9
746:              lui          s11, 814618
                  or           t5, s4, a5
                  xori         ra, t1, -850
                  slli         s8, s11, 31
750:              srl          t6, zero, a3
                  srai         s6, s4, 7
                  sltu         a0, a1, t3
                  bne          a1, s10, 764f
                  slt          a7, a0, gp
                  bne          a4, t2, 764f
                  sll          a3, a7, a2
                  lui          ra, 62400
                  xori         s1, sp, 1664
                  and          zero, t1, t3
                  srai         a5, t2, 28
                  blt          t4, t5, 766f
                  xor          t1, gp, t6
                  slli         gp, t4, 0
764:              srl          zero, t6, ra
                  bgeu         s6, ra, 785f
766:              bgeu         a0, tp, 782f
                  lui          s3, 134713
                  andi         a7, t0, 1560
                  lui          s1, 687699
                  nop
                  beq          t2, s9, 777f
                  or           a0, s2, a2
                  bgeu         ra, t5, 776f
                  sub          a1, s3, a5
                  or           zero, a4, s7
776:              bgeu         t4, s5, 789f
777:              xori         a0, s8, -9
                  sltu         a7, s0, s1
                  sll          t0, a7, t4
                  ori          s10, tp, -1514
                  add          a0, a1, t1
782:              slti         t1, s7, 1763
                  nop
                  bge          a5, t0, 787f
785:              beq          s10, a4, 796f
                  xor          a3, zero, a0
787:              xori         s5, a4, 1566
                  and          zero, a0, s3
789:              addi         t0, t6, -912
                  sub          a6, s6, s0
                  andi         t4, a2, 176
                  bne          s4, s6, 793f
793:              andi         a2, t1, 1798
                  bne          s1, t2, 814f
                  bge          s1, s9, 807f
796:              bge          s4, t6, 815f
                  sltiu        gp, t5, 1302
                  auipc        s0, 66276
                  slt          t6, t6, t1
                  xor          a6, t3, a7
                  sra          t4, sp, s2
                  srai         s6, a7, 4
                  slli         sp, gp, 1
                  andi         t1, s9, -448
                  sltu         s10, s3, ra
                  bgeu         a4, t2, 815f
807:              sra          a5, t0, ra
                  sll          s3, s2, a1
                  nop
                  slti         t4, t3, 2008
                  slt          ra, a2, a0
                  srli         a4, a6, 2
                  beq          s0, gp, 816f
814:              sll          s4, t2, s5
815:              beq          zero, a2, 822f
816:              addi         a5, a0, -1741
                  xor          zero, t2, s9
                  srai         s8, s0, 0
                  and          a1, a4, a6
                  and          s3, s8, t5
                  ori          a3, s11, -1725
822:              srli         sp, t2, 2
                  andi         a7, a2, 995
                  and          s9, t4, s11
                  bltu         t6, s5, 834f
                  bne          t1, s3, 827f
827:              slli         zero, a4, 25
                  slli         s1, s8, 0
                  xori         s9, s11, -88
                  slli         t6, t2, 4
                  srl          a5, ra, s2
                  lui          gp, 430610
                  addi         a2, s6, 592
834:              sltiu        s10, t0, -1689
                  xori         t1, a2, -267
                  beq          s10, t5, 837f
837:              sra          t5, a1, a5
                  srl          t4, a5, s4
                  xori         t5, s4, 199
                  auipc        a7, 336063
                  bltu         a4, a5, 861f
                  auipc        t4, 150634
                  beq          gp, s2, 861f
                  sltiu        a6, s10, 1473
                  add          a4, a3, s2
                  nop
                  bge          t2, a2, 864f
                  bne          s5, a3, 856f
                  sltiu        s10, t1, 1152
                  xor          s6, a1, a0
                  and          sp, t2, a2
                  bgeu         a3, s0, 857f
                  or           zero, t1, s9
                  bltu         s6, a2, 865f
                  bge          s9, a6, 873f
856:              addi         ra, a4, -680
857:              srai         s11, t1, 13
                  andi         a2, a0, 1722
                  ori          t1, ra, -1740
                  sltu         s0, s8, a5
861:              slti         s5, s3, 779
                  or           gp, s8, a1
                  auipc        t4, 334584
864:              auipc        s3, 667203
865:              sll          s11, t0, a6
                  srai         s0, a4, 24
                  la           a5, region_0+979 #start riscv_load_store_rand_instr_stream_3
                  and          s4, a4, gp
                  lbu          a0, -721(a5)
                  and          a6, t5, a3
                  auipc        a1, 439098
                  lbu          t0, -877(a5)
                  lbu          s11, 501(a5)
                  add          t1, a7, s10
                  auipc        t0, 879146
                  lui          a2, 567849
                  addi         s4, a6, -211
                  lh           s3, -711(a5)
                  lw           ra, 993(a5)
                  addi         s3, t1, 1313
                  srli         s5, s0, 29
                  or           a6, s7, s9
                  srai         s10, tp, 7
                  srli         gp, s2, 20
                  ori          a1, a5, -1577
                  sh           s0, 165(a5)
                  slli         a0, tp, 12
                  lb           s11, -758(a5)
                  lh           t6, -541(a5)
                  sh           t2, -343(a5)
                  sltu         s1, s6, a4
                  sb           s8, 444(a5)
                  srli         a4, s3, 19
                  sh           t0, 203(a5)
                  sh           t1, 783(a5)
                  sra          s8, s3, tp
                  sb           tp, 1007(a5)
                  or           a3, gp, a5
                  ori          a2, s5, -544
                  sll          s4, s0, zero
                  sb           s3, 225(a5)
                  lui          s9, 761361
                  sb           s7, -729(a5)
                  lui          s6, 962777
                  andi         s10, a6, 1051
                  sb           gp, 315(a5) #end riscv_load_store_rand_instr_stream_3
                  srai         zero, s10, 22
                  lui          s5, 809227
                  slti         tp, s3, -1522
                  sll          tp, sp, a5
                  sra          a6, t2, a2
                  bge          a6, t2, 878f
873:              andi         ra, tp, -1412
                  andi         t0, s3, 957
                  srai         t6, s9, 11
                  beq          a7, s5, 879f
                  sll          a6, a2, t6
878:              srai         s3, s9, 31
879:              bgeu         t0, s10, 899f
                  sub          gp, a4, zero
                  sll          s5, s8, s11
                  bge          t2, a7, 891f
                  slt          gp, t5, s1
                  sub          s7, s1, t2
                  bltu         ra, t4, 898f
                  srai         s4, t3, 28
                  sltiu        s1, s5, 1416
                  xori         t6, s11, 1138
                  blt          s7, s6, 894f
                  blt          ra, t1, 902f
891:              sltiu        a4, t2, -572
                  la           a6, region_0+526 #start riscv_load_store_rand_instr_stream_7
                  sb           ra, 249(a6)
                  sltiu        s7, t0, 1779
                  lui          a5, 949634
                  sltu         a4, tp, s5
                  and          s10, s5, s3
                  lbu          s11, 1353(a6)
                  lbu          s1, -17(a6)
                  sra          a2, sp, s7
                  sra          t0, sp, gp
                  lui          zero, 584153
                  lhu          ra, 688(a6)
                  sra          a4, s11, s1
                  nop
                  srl          s3, s1, a1
                  nop
                  lb           s5, 1340(a6)
                  xori         t1, gp, -934
                  or           a0, s0, t3
                  srai         t6, a7, 11
                  sb           gp, -62(a6)
                  slti         s11, t3, -1090
                  sh           tp, 1360(a6)
                  ori          t0, s2, -834
                  lui          s3, 526784
                  slt          t5, a3, a2
                  lbu          gp, 773(a6)
                  sub          s6, zero, s1
                  srli         s1, s8, 21
                  sub          s0, t4, a3
                  lhu          a4, 64(a6)
                  or           sp, a7, s1
                  sltiu        a3, s5, 300
                  sb           gp, 554(a6)
                  addi         s11, t4, 1198
                  sub          a1, a2, s0
                  lbu          t1, -471(a6)
                  sra          s11, s11, a3
                  sb           a0, -229(a6)
                  or           s0, zero, s6
                  sw           s7, -158(a6)
                  lui          t6, 977642
                  andi         a3, zero, 1531
                  lhu          s8, -46(a6)
                  xor          t5, t4, s8
                  sb           t2, 993(a6)
                  lb           s0, 604(a6) #end riscv_load_store_rand_instr_stream_7
                  addi         s1, t2, 1570
                  ori          a5, gp, -1852
894:              sll          t4, s11, t3
                  sub          s6, a1, a3
                  nop
                  and          a6, s0, s0
898:              srli         s8, s7, 15
899:              andi         a2, s5, 286
                  srai         s3, zero, 18
                  slli         a2, sp, 25
902:              sltiu        a3, a6, 1365
                  lui          s1, 476837
                  or           s1, zero, s1
                  nop
                  beq          s6, s6, 926f
                  auipc        t4, 762323
                  bne          t1, a4, 918f
                  srai         t5, a4, 20
                  nop
                  andi         a0, a4, -479
                  andi         t1, s11, 1436
                  bge          a4, a0, 919f
                  sub          t5, s10, s9
                  sra          tp, t1, t1
                  sltiu        a2, s4, 2041
                  or           s5, t0, a5
918:              sltiu        s3, a7, -1974
919:              bge          s8, s1, 925f
                  ori          a4, t5, -1746
                  slt          s9, s9, t3
                  srl          a1, s11, s6
                  beq          a5, s10, 926f
                  bltu         s3, t6, 943f
925:              andi         t4, gp, -932
926:              blt          tp, t3, 942f
                  sll          t4, ra, a5
                  bgeu         t1, t4, 947f
                  lui          a4, 1033165
                  auipc        gp, 727411
                  bgeu         gp, s11, 942f
                  ori          a0, s7, -331
                  slti         s5, t4, -1906
                  bge          a2, s10, 935f
935:              sub          zero, t3, zero
                  slt          s8, s8, s9
                  sll          s8, s7, s8
                  slli         s10, t2, 3
                  srl          s11, sp, a4
                  bge          s8, s0, 949f
                  bltu         a4, a4, 954f
942:              blt          s0, s9, 945f
943:              and          s4, s2, s5
                  ori          tp, s4, -1876
945:              beq          gp, s0, 963f
                  bge          tp, gp, 957f
947:              slli         s7, s2, 21
                  lui          s0, 702841
949:              ori          t1, t1, -2034
                  addi         s8, a2, 996
                  auipc        t0, 286641
                  slli         a3, s8, 26
                  xor          s7, t6, a1
954:              beq          s7, t5, 966f
                  and          zero, t5, s0
                  add          a6, s8, a2
957:              addi         a1, a3, 745
                  sltu         a5, a2, a5
                  or           s4, s8, gp
                  srli         s3, s6, 0
                  auipc        tp, 996380
                  slli         a7, zero, 8
963:              srai         tp, a6, 11
                  slt          t0, a1, a2
                  auipc        s1, 824583
966:              srai         t0, s6, 24
                  srl          ra, s6, a4
                  sra          a7, a1, s1
                  xori         a4, s7, -1308
                  sra          t5, t2, s8
                  or           s3, a4, s4
                  bltu         t4, s0, 980f
                  srai         s10, s8, 31
                  sltu         zero, s6, a4
                  slli         s11, a2, 4
                  beq          a2, s11, 993f
                  sll          t6, a6, tp
                  beq          t3, a3, 979f
979:              sll          a0, s8, s5
980:              andi         t6, t2, 1320
                  sra          a4, t6, t4
                  auipc        s1, 570516
                  xor          s3, s11, s5
                  lui          tp, 1001430
                  bge          a2, s0, 992f
                  srl          s9, s5, a6
                  and          s6, a6, t4
                  sub          tp, s2, t2
                  slli         t5, t0, 15
                  xor          s8, a1, gp
                  or           tp, a0, a1
992:              srl          t1, s6, s7
993:              add          s5, s3, gp
                  slti         a3, a0, 970
                  sltiu        s7, s10, -45
                  sub          gp, zero, a5
                  xori         t6, a1, -721
                  addi         gp, s4, -1442
                  beq          t2, t1, 1000f
1000:             srli         a5, s6, 5
                  sub          zero, a4, zero
                  slt          s10, a0, a6
                  bgeu         s4, a1, 1008f
                  bgeu         s11, a6, 1015f
                  beq          s11, a5, 1021f
                  auipc        a7, 960711
                  xor          s3, t6, t0
1008:             xor          gp, a0, t0
                  srli         s4, a0, 10
                  xori         s9, s10, -818
                  addi         a4, a6, 7
                  blt          t4, a4, 1032f
                  bne          t2, s5, 1023f
                  bltu         t1, t3, 1034f
1015:             xor          s1, s5, t2
                  slli         s5, a5, 13
                  bge          s4, ra, 1018f
1018:             sra          s7, a6, s7
                  sub          s1, a1, s10
                  sltiu        a7, a1, -1237
1021:             sll          gp, s9, s2
                  lui          tp, 592539
1023:             srli         zero, ra, 31
                  srli         t5, t6, 14
                  slti         s10, t5, 272
                  sltiu        s10, t4, -1823
                  sltiu        s7, s0, -1886
                  addi         s7, s2, 1742
                  sra          ra, s0, a3
                  srli         s8, s4, 14
                  addi         tp, a5, 161
1032:             slt          a0, s10, a5
                  sra          a6, a6, s9
1034:             xori         gp, s1, -1574
                  nop
                  andi         s9, t6, 1350
                  lui          ra, 393910
                  blt          tp, t4, 1044f
                  slti         t1, t6, -1593
                  beq          t3, tp, 1046f
                  slti         s4, t6, 1086
                  bltu         a6, a1, 1061f
                  add          tp, s5, a1
1044:             bge          t5, s10, 1047f
                  lui          s3, 66543
1046:             bge          zero, s10, 1049f
1047:             ori          s11, s3, 933
                  beq          a7, gp, 1057f
1049:             addi         s0, gp, 822
                  bne          a2, gp, 1059f
                  or           s1, s4, s6
                  bne          s9, s4, 1057f
                  sltiu        tp, gp, 485
                  and          s4, a4, s0
                  srai         a6, t5, 0
                  addi         tp, a5, 889
1057:             sra          s9, t4, s8
                  srli         s6, t3, 0
1059:             auipc        s3, 222148
                  bgeu         zero, a3, 1069f
1061:             sub          s3, a3, a0
                  andi         a0, a7, 302
                  sltu         t5, s3, gp
                  xori         ra, s10, -1058
                  beq          a3, a3, 1085f
                  sub          a2, s11, t5
                  sltu         a5, a5, s1
                  nop
1069:             lui          s7, 390326
                  srai         a1, s8, 30
                  slt          gp, s7, t0
                  sub          t5, sp, s6
                  add          t4, s6, t1
                  srai         tp, s2, 0
                  srli         a4, s1, 13
                  beq          s10, a6, 1094f
                  andi         a3, s9, 1908
                  srai         sp, a1, 2
                  andi         ra, a1, -978
                  srai         a4, a2, 30
                  slli         s3, s1, 9
                  bgeu         a7, ra, 1101f
                  sltiu        s8, t3, -793
                  andi         t4, t5, 1461
1085:             slli         s9, s3, 6
                  bgeu         s11, tp, 1092f
                  add          s1, s3, s8
                  or           s9, t5, a5
                  blt          t3, tp, 1099f
                  andi         s1, ra, -2010
                  srli         t6, t0, 1
1092:             and          t5, s5, t3
                  srl          s6, gp, t3
1094:             slli         s4, s4, 1
                  bne          s5, sp, 1111f
                  slli         a4, a0, 27
                  slti         a2, t4, -337
                  addi         t6, s0, -1356
1099:             bltu         s6, a1, 1104f
                  srl          t6, s5, t1
1101:             sltu         tp, a2, a6
                  add          sp, a7, a0
                  add          t1, t1, gp
1104:             bltu         t5, a3, 1113f
                  addi         a6, tp, 311
                  slt          t6, s1, tp
                  andi         s8, s11, 1572
                  sub          s10, s0, ra
                  slt          t0, s10, s10
                  addi         tp, a5, 859
1111:             bgeu         s2, t5, 1112f
1112:             ori          s1, a0, -192
1113:             andi         t6, s7, -349
                  bltu         tp, t4, 1120f
                  bge          tp, t6, 1120f
                  xori         a6, a2, 376
                  sltiu        a6, gp, -1262
                  srli         gp, t0, 11
                  bge          s7, s8, 1139f
1120:             blt          a7, s4, 1121f
1121:             srl          a1, s10, s4
                  blt          s8, t5, 1141f
                  andi         a6, a5, 1249
                  sub          s7, a4, s3
                  la           t0, region_1+994 #start riscv_load_store_rand_instr_stream_11
                  sra          a1, s10, t1
                  xor          s11, tp, s1
                  xor          s5, t2, s2
                  nop
                  lh           a5, -16(t0)
                  add          s0, s5, s8
                  addi         a2, s6, 1805
                  lb           a3, -12(t0)
                  sltu         s8, s4, t6
                  sll          a2, s4, s7
                  nop
                  sb           a0, 10(t0)
                  lb           a2, -1(t0)
                  lbu          sp, -4(t0)
                  lbu          a6, -4(t0)
                  lbu          s1, 13(t0)
                  srli         s3, a1, 31
                  lbu          sp, -1(t0)
                  sh           t5, -2(t0)
                  slti         gp, s5, 45
                  sb           s11, 6(t0)
                  lbu          a7, -14(t0)
                  lhu          s10, -8(t0)
                  lui          s7, 624540
                  auipc        gp, 1031219
                  sb           tp, -13(t0)
                  addi         t1, s11, -158
                  sub          t4, s1, s1
                  add          zero, a2, t4
                  andi         a0, a5, -1268
                  slt          a4, gp, a6
                  lbu          t6, -16(t0)
                  or           tp, s6, gp
                  add          s6, a6, a0
                  sub          zero, a1, s6
                  lb           s10, -2(t0)
                  srl          t6, t5, s5
                  lhu          a3, 4(t0)
                  add          a4, s1, a7
                  sw           sp, -2(t0)
                  auipc        t1, 189177
                  lb           a7, 1(t0)
                  xori         t1, a4, 1770
                  slti         a2, t5, -1287
                  sh           s1, 6(t0)
                  auipc        s8, 173887
                  nop
                  sll          t6, t4, t6
                  slti         s1, a1, -1642
                  sb           t5, 13(t0) #end riscv_load_store_rand_instr_stream_11
                  bgeu         s10, t2, 1126f
1126:             slli         s11, s11, 16
                  slli         s5, s6, 5
                  addi         t5, t2, 294
                  ori          s9, s11, -1810
                  andi         sp, s7, 262
                  and          a3, t6, s0
                  addi         s10, s1, 395
                  or           t5, s5, s3
                  add          gp, t2, a4
                  and          t6, s5, s6
                  slti         t6, s9, 409
                  bne          s1, s6, 1149f
                  blt          a7, zero, 1145f
1139:             slli         s9, a1, 27
                  andi         s7, tp, -767
1141:             bgeu         gp, a3, 1161f
                  slli         zero, a4, 2
                  sra          a3, tp, a3
                  sll          gp, s10, t5
1145:             lui          t1, 282075
                  bltu         s6, sp, 1164f
                  lui          s9, 250742
                  xor          s7, a0, s2
1149:             sll          t0, a6, t5
                  and          s8, zero, a2
                  la           sp, region_1+1696 #start riscv_load_store_rand_instr_stream_10
                  lui          s11, 426276
                  lh           a7, -4(sp)
                  sb           t1, -15(sp)
                  sb           s8, 11(sp)
                  sb           t0, 11(sp)
                  sw           s4, -16(sp)
                  lbu          s0, -7(sp)
                  and          s8, a7, a6
                  nop
                  auipc        ra, 106824
                  lb           t1, -15(sp)
                  lw           t0, 0(sp)
                  lb           s6, 5(sp)
                  sltu         s6, sp, t1
                  lbu          a7, 0(sp)
                  sb           a7, 9(sp)
                  srli         a2, t1, 18
                  sb           s6, -10(sp)
                  slli         zero, t2, 19
                  andi         s0, s1, -311
                  lhu          s0, -10(sp)
                  sh           s5, -10(sp)
                  sb           ra, -5(sp)
                  lbu          t1, -1(sp)
                  sw           t5, -4(sp)
                  sub          ra, t5, a0
                  srli         s3, t0, 18
                  sb           s4, 16(sp)
                  sb           t0, 4(sp)
                  sb           s6, -13(sp)
                  sra          s10, gp, t2
                  lbu          a4, 13(sp)
                  lw           gp, -12(sp)
                  sltu         a0, s9, sp
                  lb           s3, -7(sp)
                  add          gp, t0, s1
                  srl          a0, t6, t1
                  srli         a5, s8, 14
                  slt          s6, a7, s9
                  sb           s6, -3(sp)
                  lbu          s3, 2(sp)
                  lhu          t5, -14(sp)
                  xori         t1, s4, 528
                  sb           sp, 15(sp)
                  lh           s1, 10(sp)
                  lui          t0, 24227
                  and          a3, s5, tp
                  sll          tp, s9, s11
                  lb           s7, -13(sp)
                  lbu          s10, 3(sp) #end riscv_load_store_rand_instr_stream_10
                  addi         s4, s0, -1302
                  bge          t2, a2, 1165f
                  sltiu        tp, a0, 106
                  and          s7, tp, a0
                  andi         s7, t6, 149
                  bgeu         s6, a0, 1167f
                  lui          s1, 189248
                  add          s11, s2, a5
                  slli         a5, s3, 24
                  andi         t5, t4, 839
1161:             bne          s1, s2, 1181f
                  xori         t1, s4, -1433
                  srai         s6, sp, 5
1164:             sll          tp, a1, s7
1165:             xori         tp, s6, 855
                  add          s10, s2, s7
1167:             bltu         t5, a4, 1184f
                  slti         s8, s11, 1416
                  add          a4, s2, s7
                  bltu         s3, s9, 1173f
                  lui          zero, 831657
                  bgeu         s3, a6, 1175f
1173:             blt          a1, tp, 1184f
                  bltu         t3, t5, 1192f
1175:             nop
                  bge          s0, t0, 1185f
                  ori          tp, a0, -10
                  ori          a3, t5, -446
                  addi         t5, s8, -817
                  slli         sp, s0, 14
1181:             and          s5, s3, a6
                  sltiu        tp, a2, -1905
                  andi         a2, s6, 1021
1184:             bge          t3, a2, 1192f
1185:             bne          t1, t0, 1188f
                  auipc        s1, 324397
                  sra          a3, s11, t1
1188:             beq          t4, gp, 1194f
                  srli         s4, t6, 0
                  sub          a2, a0, a1
                  blt          t0, s10, 1197f
1192:             slti         s3, t6, 882
                  sra          a7, s0, a3
1194:             sra          t5, s5, t0
                  sltu         s4, t1, s8
                  beq          s4, t5, 1205f
1197:             xor          s8, s5, a3
                  srai         s6, sp, 31
                  addi         s10, t4, 1744
                  and          a5, t3, s4
                  andi         t1, a7, 1715
                  slti         a7, s1, -1587
                  slli         a7, tp, 23
                  sll          a6, s7, s3
1205:             bgeu         a3, s10, 1224f
                  sub          t5, a3, t0
                  slti         s0, s3, -1939
                  xor          s8, a3, gp
                  srl          t0, gp, t6
                  slt          s4, a6, a6
                  bltu         s4, t6, 1214f
                  xor          s9, a4, ra
                  sltiu        a4, t3, 1607
1214:             srl          gp, t4, t1
                  lui          a2, 695795
                  auipc        a5, 343604
                  or           s3, a0, a1
                  xor          a7, a3, s10
                  bltu         t5, a0, 1232f
                  lui          s4, 355984
                  sll          s3, s6, a5
                  sub          a1, s11, t3
                  xor          s4, a3, zero
1224:             sltiu        t0, gp, 1699
                  andi         s9, tp, -412
                  sub          s6, s1, s9
                  sll          a6, t2, s5
                  srli         t1, s8, 16
                  nop
                  sll          s5, t3, s10
                  xori         s11, s5, -1562
1232:             sll          s4, s7, s11
                  srai         t1, ra, 20
                  sltiu        gp, a1, -1301
                  nop
                  add          s5, a7, s6
                  bge          t2, a2, 1254f
                  blt          s4, ra, 1244f
                  sltu         t0, s5, a3
                  ori          gp, a2, 1614
                  srai         ra, s3, 11
                  bne          s3, a6, 1253f
                  xori         s11, zero, -1069
1244:             addi         t4, a3, 1161
                  bne          s10, a7, 1265f
                  sub          a1, t2, a0
                  srli         s11, s11, 2
                  andi         s0, a2, -54
                  bgeu         a2, s11, 1256f
                  xori         s4, a4, -1515
                  blt          a5, s2, 1252f
1252:             bltu         s9, s11, 1263f
1253:             sll          s5, s11, s5
1254:             bge          s11, s5, 1273f
                  xor          sp, s7, t3
1256:             andi         a2, t4, 705
                  bgeu         zero, zero, 1266f
                  addi         a0, t1, -1609
                  sub          s4, s7, s1
                  sltiu        zero, tp, 1850
                  slti         t5, a3, -1585
                  bgeu         s9, tp, 1271f
1263:             srl          a6, s0, a7
                  slli         s0, a5, 12
1265:             nop
1266:             blt          s7, s5, 1272f
                  sub          gp, s6, sp
                  add          s5, a2, s8
                  slti         s8, tp, -1921
                  addi         a3, a7, 1841
1271:             bltu         a2, t4, 1291f
1272:             add          t5, a1, s11
1273:             auipc        s0, 929715
                  blt          a7, t4, 1275f
1275:             nop
                  srli         s3, a4, 30
                  nop
                  add          a7, ra, s10
                  and          s5, t4, a7
                  sll          s0, s6, zero
                  sra          s4, t1, s8
                  xori         a3, t4, 95
                  ori          a0, t4, -13
                  xori         a3, a3, -1183
                  nop
                  sll          t6, s11, a0
                  xor          a4, s6, t3
                  sub          s1, t0, s6
                  auipc        t5, 48339
                  bgeu         t2, gp, 1308f
1291:             blt          a4, s6, 1311f
                  or           a5, a7, s3
                  lui          s11, 162833
                  bgeu         t2, ra, 1310f
                  or           ra, s5, a6
                  slti         t4, t4, -1668
                  add          s8, s7, a1
                  xor          a5, a2, t0
                  add          ra, s0, gp
                  srli         s1, s10, 17
                  bgeu         t2, s3, 1313f
                  bne          a5, s4, 1305f
                  sub          t1, a3, t0
                  bltu         t2, s0, 1309f
1305:             bltu         t4, s6, 1324f
                  sltu         a6, a5, a7
                  srli         s8, a5, 8
1308:             xori         a7, s2, 238
1309:             bne          t5, gp, 1315f
1310:             sltu         a5, s1, s9
1311:             slti         s0, a6, 882
                  ori          t6, t5, -1417
1313:             srl          s5, sp, t3
                  slti         a0, t3, 101
1315:             slli         a3, s7, 16
                  slt          s7, t1, t4
                  xori         a6, s10, -1069
                  nop
                  andi         s7, a5, -1798
                  sltiu        s4, t3, 1153
                  ori          t5, s8, 1281
                  sltiu        s1, s6, -1641
                  bne          tp, s5, 1341f
1324:             sra          a7, t0, t0
                  beq          s0, t0, 1335f
                  ori          tp, s9, 1161
                  slli         s5, tp, 9
                  addi         s0, t5, -444
                  bltu         a5, s4, 1332f
                  lui          s5, 269480
                  beq          s2, t0, 1336f
1332:             srl          t0, s6, s0
                  andi         s8, s10, -30
                  slt          s11, s4, s5
1335:             sub          a3, a1, s0
1336:             bltu         gp, s11, 1345f
                  auipc        a7, 605726
                  srai         t6, sp, 28
                  la           sp, region_0+1400 #start riscv_load_store_rand_instr_stream_2
                  lui          s7, 250278
                  lui          a2, 687345
                  sltiu        t0, gp, -1166
                  sb           a4, -12(sp)
                  xor          a2, a1, s5
                  slli         t1, t0, 20
                  lhu          tp, -234(sp)
                  addi         a2, t4, -1127
                  lbu          s0, -194(sp)
                  nop
                  nop
                  lbu          t1, 84(sp)
                  addi         a6, t3, 1009
                  sra          s8, s11, tp
                  or           t5, a1, gp
                  lh           a7, 90(sp)
                  srl          s10, s8, s8
                  srli         a1, t6, 16
                  lb           tp, -195(sp)
                  srl          s1, sp, s9
                  lb           a6, -222(sp)
                  sub          zero, a3, t3
                  auipc        a6, 317575
                  addi         a1, t5, 1114
                  xor          s8, s10, a3
                  lbu          a3, 19(sp)
                  addi         s3, sp, 1010
                  sub          t0, s1, a6
                  slti         s5, s8, -985
                  sltiu        a7, s7, 1268
                  xor          s9, s11, a3
                  slli         s5, t2, 11
                  lh           s10, -26(sp)
                  slli         a2, s6, 29
                  sh           sp, -12(sp)
                  addi         s1, s0, -607
                  lh           a4, 212(sp)
                  sb           a3, -111(sp)
                  sll          s4, s8, a2
                  lbu          s3, 185(sp)
                  srai         s10, s1, 10
                  xori         t1, s0, -1733
                  sltiu        s8, tp, -1185
                  lb           t0, 182(sp)
                  lb           s0, -63(sp) #end riscv_load_store_rand_instr_stream_2
                  lui          s4, 911806
                  xor          s4, s5, a0
1341:             slt          s7, s2, a7
                  or           s4, a6, s9
                  addi         s1, a2, 139
                  srl          s7, a6, a2
1345:             or           a4, a3, t0
                  slt          gp, a3, t3
                  and          s6, s6, s1
                  bge          t1, s9, 1349f
1349:             srli         s9, s8, 30
                  bge          sp, a0, 1358f
                  srli         a7, a6, 0
                  and          a3, s8, a5
                  addi         a0, gp, -1258
                  addi         s0, sp, 916
                  add          s9, a7, t2
                  srl          s3, s8, s8
                  bltu         a4, sp, 1363f
1358:             srli         ra, s2, 30
                  ori          a4, s10, -739
                  sltu         s1, a1, t6
                  sltiu        s5, t5, 1221
                  or           sp, s6, a6
1363:             bltu         s4, s2, 1379f
                  slli         s3, a5, 30
                  or           sp, a4, s6
                  andi         a0, t1, 2000
                  sll          s1, s5, a3
                  sra          s5, a0, t6
                  ori          a5, zero, 1842
                  bne          t1, sp, 1380f
                  auipc        t6, 828430
                  sll          s7, a5, a1
                  sll          a3, a2, s8
                  sub          s5, zero, t2
                  slti         zero, t4, 1510
                  srl          t5, s11, a0
                  slt          s7, a3, s0
                  xori         ra, ra, 218
1379:             xori         s1, s5, 2025
1380:             slli         s6, t2, 13
                  bge          tp, a0, 1399f
                  xor          s0, tp, s5
                  slti         t5, a2, 162
                  addi         s0, a4, -843
                  xor          sp, s2, a7
                  sub          s11, t3, a6
                  srai         a5, t4, 21
                  bne          t4, t3, 1399f
                  addi         t6, a5, 547
                  lui          s6, 477264
                  bgeu         s2, t5, 1409f
                  slti         a5, s7, 953
                  sub          t6, t1, s1
                  bge          zero, s0, 1395f
1395:             sub          s0, t1, gp
                  sll          s11, t3, s9
                  add          a7, t5, a2
                  lui          a1, 950287
1399:             beq          ra, t5, 1408f
                  srai         s4, t2, 17
                  sub          sp, s10, a5
                  sltu         a5, t3, s4
                  slti         t4, t1, -201
                  andi         t4, ra, -997
                  bge          tp, t0, 1406f
1406:             blt          a0, a2, 1409f
                  slli         a2, a2, 7
1408:             srl          sp, s6, t4
1409:             auipc        s8, 245296
                  beq          s1, t4, 1419f
                  blt          t3, s11, 1423f
                  sub          a1, a0, s11
                  bgeu         s11, t6, 1416f
                  lui          a5, 886630
                  xor          a3, a3, t1
1416:             sltu         a5, s10, s5
                  and          t1, t1, s8
                  addi         a7, s11, -1382
1419:             auipc        t1, 791809
                  lui          s11, 577711
                  lui          a7, 655326
                  bne          a7, zero, 1423f
1423:             sltiu        s11, a2, -1279
                  and          s3, s8, t1
                  slti         s3, t0, 2025
                  bge          t6, s10, 1435f
                  beq          a5, s11, 1438f
                  srl          a1, s6, s1
                  bltu         zero, a1, 1434f
                  nop
                  bltu         s0, a3, 1439f
                  bltu         a3, s7, 1451f
                  sub          a7, tp, s7
1434:             bne          a0, gp, 1437f
1435:             xori         a5, a5, -646
                  sub          tp, s9, a3
1437:             sra          a0, a5, s9
1438:             or           t5, t3, s7
1439:             sltu         a5, s6, s0
                  sltu         s11, t6, s11
                  srl          t4, a6, a0
                  bge          t2, a3, 1449f
                  slli         a7, s0, 16
                  slli         t1, s5, 3
                  bgeu         a7, s10, 1465f
                  nop
                  and          tp, a7, t0
                  sltiu        a2, a3, -905
1449:             bltu         zero, s5, 1468f
                  bgeu         s10, zero, 1456f
1451:             srl          t5, ra, gp
                  nop
                  bge          s11, s11, 1470f
                  or           s7, s8, s1
                  ori          zero, s3, -270
1456:             slt          s9, a1, t6
                  auipc        s1, 995873
                  beq          a3, zero, 1478f
                  slti         s8, a2, 334
                  nop
                  bge          t3, a7, 1481f
                  nop
                  andi         a4, s11, -858
                  srli         sp, t5, 4
1465:             slti         s1, s0, -1881
                  bge          gp, s1, 1479f
                  sub          s0, a0, s2
1468:             srl          a5, a1, a5
                  beq          s6, s3, 1474f
1470:             slli         s7, t6, 2
                  sra          s6, s0, a3
                  lui          t0, 100301
                  addi         s7, t5, -332
1474:             bltu         t4, s3, 1480f
                  and          t1, t0, s2
                  nop
                  sltiu        s1, t3, -1579
1478:             sll          s1, ra, s7
1479:             srai         a3, s4, 12
1480:             lui          tp, 145798
1481:             srli         s6, s0, 8
                  bne          gp, t5, 1502f
                  sll          t1, a6, ra
                  bge          a6, s3, 1487f
                  or           s1, a7, a7
                  srai         t0, s11, 13
1487:             sltiu        a3, a4, 1185
                  bge          s9, t1, 1506f
                  srai         s11, t0, 23
                  beq          s8, a6, 1509f
                  srai         a6, s7, 2
                  addi         t1, t2, 1301
                  auipc        t0, 335325
                  lui          s5, 758098
                  slt          a7, t4, t4
                  xori         s4, zero, -831
                  auipc        s4, 576180
                  blt          gp, a3, 1504f
                  bltu         s2, t5, 1508f
                  sltu         tp, gp, s7
                  ori          a2, s7, -1209
1502:             ori          a4, s6, 1204
                  beq          t2, a7, 1509f
1504:             srl          s10, s1, s9
                  slti         t5, t5, 764
1506:             sra          a7, t6, t5
                  sra          gp, s10, tp
1508:             srli         s4, t6, 14
1509:             slt          tp, s2, s11
                  bne          gp, t5, 1511f
1511:             sll          t5, ra, tp
                  sltiu        s6, s3, 1501
                  xor          a7, sp, s9
                  or           a6, gp, a1
                  blt          t5, a7, 1527f
                  add          a6, s0, t4
                  sub          s9, gp, a5
                  sll          s8, s3, a5
                  srai         a5, sp, 20
                  lui          a4, 717634
                  andi         a5, zero, -371
                  sltu         s7, t4, ra
                  xor          t4, s4, zero
                  blt          s8, s0, 1533f
                  beq          t1, s7, 1530f
                  slt          s3, zero, a0
1527:             xori         s11, a4, 486
                  auipc        tp, 663047
                  xor          t1, t3, gp
1530:             ori          t0, zero, 123
                  sra          t0, s3, sp
                  srai         s11, t1, 22
1533:             srai         a4, gp, 28
                  bltu         zero, s2, 1550f
                  xor          s6, s5, t5
                  xor          t1, s4, t4
                  or           s0, zero, tp
                  beq          t5, s7, 1545f
                  auipc        s10, 201318
                  and          a7, s5, s7
                  sll          s9, tp, s1
                  ori          s8, t6, 1015
                  addi         a4, sp, 510
                  beq          a2, s9, 1563f
1545:             srai         a4, a7, 27
                  lui          a7, 451151
                  srli         s3, s8, 14
                  slt          a7, s9, gp
                  srai         a7, s0, 18
1550:             and          a7, t4, s1
                  and          s6, tp, s3
                  srli         t1, s0, 19
                  nop
                  sltiu        s5, a2, 2021
                  addi         a0, t4, 1089
                  lui          a3, 998041
                  srl          t1, t1, s3
                  sll          t6, gp, t1
                  bltu         s7, s5, 1570f
                  srl          s10, s1, a1
                  or           a4, s1, s11
                  nop
1563:             and          gp, sp, s10
                  bge          ra, t6, 1574f
                  xor          a2, s4, a1
                  and          a2, a6, a2
                  slti         t6, t5, -1728
                  bge          s6, t1, 1569f
1569:             ori          s3, s1, -787
1570:             ori          s8, s9, 639
                  or           s3, t4, tp
                  ori          s1, a5, 612
                  lui          s7, 341322
1574:             sltiu        a7, a7, -296
                  bgeu         a6, s11, 1586f
                  slti         gp, s6, -930
                  srai         a6, t2, 9
                  sra          a6, sp, s6
                  andi         a3, s10, -971
                  add          t1, t3, a4
                  nop
                  bne          s10, s9, 1588f
                  slli         a7, t0, 14
                  bge          s5, a1, 1587f
                  srli         sp, zero, 9
1586:             sltu         a0, s10, s11
1587:             bne          a2, s0, 1588f
1588:             addi         a5, s4, -833
                  slti         s11, a4, 735
                  andi         t6, s9, 887
                  sltiu        ra, a6, -1494
                  blt          a5, s0, 1597f
                  sll          s10, s8, a7
                  srai         s8, s5, 5
                  sltu         t4, s0, a6
                  sltu         s0, gp, s6
1597:             and          a7, t6, s6
                  bge          a1, a6, 1601f
                  bne          t0, t3, 1612f
                  beq          s8, s7, 1618f
1601:             srl          a5, s9, t3
                  srai         s9, gp, 31
                  or           t5, s2, ra
                  bgeu         sp, gp, 1621f
                  sll          tp, a4, a2
                  bgeu         ra, a5, 1626f
                  or           a6, sp, s0
                  bne          s6, s1, 1628f
                  xor          t5, s10, s1
                  sra          s9, t3, s10
                  sll          s7, a6, s2
1612:             andi         a0, s0, 1534
                  nop
                  bge          t2, a6, 1623f
                  sltu         s4, s2, t2
                  addi         a5, s5, 1881
                  auipc        s6, 905123
1618:             ori          s8, s8, -1880
                  nop
                  sra          t4, a1, a4
1621:             bgeu         s0, t6, 1629f
                  bgeu         t2, a6, 1630f
1623:             xori         a7, t4, -606
                  sltu         s11, tp, s6
                  sub          t5, t2, tp
1626:             bgeu         a2, t6, 1643f
                  sub          s1, a4, s10
1628:             bgeu         ra, a5, 1631f
1629:             auipc        a0, 839991
1630:             bge          tp, a6, 1637f
1631:             sra          s8, a5, t3
                  auipc        a5, 792063
                  xori         a5, s10, -533
                  bgeu         s3, a1, 1653f
                  add          a4, s3, s4
                  lui          zero, 509905
1637:             bne          t1, s5, 1655f
                  sltu         s3, s11, s1
                  bne          s1, s1, 1640f
1640:             sltu         a7, a2, s1
                  addi         s5, s7, 1253
                  add          s4, gp, s10
1643:             xori         a7, t4, -1962
                  sub          a5, a4, a7
                  blt          sp, s0, 1651f
                  slt          t6, a1, t1
                  bgeu         t6, t3, 1665f
                  bge          a7, a3, 1654f
                  sltu         s1, s3, s6
                  lui          t4, 454207
1651:             xori         t6, s5, 30
                  and          a4, a3, gp
1653:             lui          s0, 324387
1654:             srli         s3, s4, 30
1655:             beq          s10, s11, 1660f
                  sra          sp, s7, s2
                  slli         tp, s8, 4
                  slli         s7, gp, 5
                  lui          a5, 245543
1660:             nop
                  nop
                  bltu         s5, s5, 1678f
                  slti         s0, zero, 1956
                  ori          t6, s0, 871
1665:             or           a6, t1, a4
                  xor          a3, s7, t3
                  slli         t6, a7, 24
                  auipc        s10, 164530
                  slt          s4, t0, s4
                  sll          s6, a5, s10
                  or           gp, a5, a3
                  bltu         t6, s8, 1673f
1673:             nop
                  sra          s7, s7, s2
                  add          s9, s8, s8
                  or           a1, s0, s6
                  addi         s0, t1, -1470
1678:             srai         t4, s5, 9
                  sltiu        s0, t6, 1830
                  srli         tp, s5, 10
                  ori          gp, s1, -134
                  nop
                  sltiu        gp, s5, 987
                  bltu         t6, tp, 1703f
                  beq          a5, a7, 1705f
                  addi         s4, s1, 1736
                  srai         a3, a4, 0
                  auipc        a7, 630848
                  sll          s11, s3, a2
                  sra          gp, ra, t0
                  and          a0, t6, a3
                  bge          t5, s11, 1698f
                  and          a0, s3, t6
                  sub          s5, a2, a0
                  sra          t6, s5, t1
                  or           s8, s6, a7
                  sll          s11, tp, s2
1698:             bge          a4, a1, 1707f
                  slti         t1, s1, 1524
                  sra          a2, t0, a3
                  auipc        gp, 737586
                  sltu         s8, tp, tp
1703:             slli         a0, t2, 16
                  ori          a1, t6, 112
1705:             srai         s11, a2, 14
                  ori          s1, a1, -1816
1707:             srl          t4, t4, t1
                  slti         a4, t0, -1488
                  auipc        s0, 498778
                  add          s8, t6, a0
                  andi         a3, a0, 918
                  blt          gp, s9, 1717f
                  xori         s11, s11, -1131
                  slti         s1, a1, 1802
                  andi         s7, s5, -814
                  srl          t5, t3, a4
1717:             bne          a4, s4, 1720f
                  slti         t6, tp, -1199
                  or           zero, s1, s7
1720:             sltu         t6, t4, s9
                  blt          t5, s8, 1741f
                  andi         t1, a6, 1484
                  addi         s0, t0, 140
                  or           sp, zero, a0
                  bge          sp, s3, 1737f
                  ori          s5, gp, 1839
                  bne          s4, s2, 1736f
                  sra          t6, t5, s5
                  slti         s3, a6, 81
                  sra          gp, s6, s11
                  bgeu         a6, a7, 1741f
                  auipc        a3, 264776
                  xor          t1, t3, s3
                  lui          s3, 421843
                  srli         a0, s0, 19
1736:             slli         a0, a5, 14
1737:             or           s8, s5, s3
                  blt          gp, s1, 1739f
1739:             sltu         a2, a6, s0
                  sltu         a7, s7, t5
1741:             srli         s4, s4, 3
                  bltu         s8, s0, 1748f
                  srli         s3, s10, 11
                  bge          sp, t6, 1748f
                  andi         t0, s2, -421
                  slt          s5, s2, t4
                  add          t0, s9, t5
1748:             sltu         a5, ra, a7
                  xori         a0, t4, -1642
                  lw           gp, 4(t2)
                  srai         s7, a5, 7
                  slli         s1, a2, 12
                  addi         t2, t2, 48
                  sra          t5, t1, s11
2269:             addi x9, x3, 1
2269:             jalr x9, x9, 0
sub_5:            bge          a4, t3, sub_5_stack_p
                  slli         s0, s8, 7
                  srai         a7, a6, 30
                  ori          s8, a3, -202
sub_5_stack_p:    addi         t2, t2, -16
                  slt          a4, t6, a2
                  sw           gp, 4(t2)
                  addi         s7, a0, -595
                  srli         t0, gp, 16
                  sltu         s9, s2, gp
                  ori          s11, s6, -328
                  bge          a3, zero, 10f
                  bne          a1, a7, 12f
                  sra          t5, s3, zero
                  slti         s3, a6, -1475
                  sra          a0, gp, s1
                  sub          s9, s11, a3
                  slti         s9, ra, 1427
                  bge          s8, a3, 20f
                  bne          s4, s3, 13f
                  sra          s3, t0, a7
10:               srli         t0, a1, 14
                  beq          t0, a2, 12f
12:               srai         s5, a6, 1
13:               andi         a4, s10, -748
                  bge          t1, s11, 24f
                  ori          t5, s7, 737
                  bltu         s7, a5, 28f
                  add          sp, s8, s5
                  auipc        s8, 666229
                  or           s7, s0, t2
20:               srl          t4, ra, gp
                  blt          ra, a7, 30f
                  bne          a4, t1, 30f
                  blt          s8, s1, 25f
24:               bne          ra, t0, 37f
25:               bne          t2, s8, 28f
                  srai         a6, a2, 2
                  auipc        a1, 1015061
28:               beq          s1, a7, 39f
                  and          s3, ra, s2
30:               slti         s3, t6, -1216
                  srai         a3, t2, 3
                  bne          t6, a6, 51f
                  add          s1, s5, a5
                  xori         t1, s3, 1479
                  auipc        a7, 1022516
                  slt          zero, gp, a0
37:               xori         s10, s7, 1895
                  lui          a6, 817864
39:               srl          a0, a1, s7
                  nop
                  srai         ra, sp, 5
                  sll          a4, zero, sp
                  bge          s6, s2, 59f
                  sltu         s6, t5, t0
                  auipc        s4, 748970
                  xori         ra, t6, -136
                  srl          s8, ra, zero
                  xor          t5, zero, t6
                  ori          s3, s4, 1897
                  sra          a7, a0, t0
51:               sltiu        a2, t4, -868
                  srl          t0, a6, s8
                  bge          t1, s3, 54f
54:               add          a2, zero, ra
                  add          s10, a5, s10
                  auipc        s10, 502238
                  srl          s5, tp, s4
                  sra          a1, s3, s11
59:               srai         gp, s1, 27
                  bge          a2, t1, 78f
                  sub          sp, a7, s2
                  sltiu        a6, s3, -1587
                  and          t4, a1, s1
                  lui          gp, 767884
                  or           s11, a7, s3
                  andi         a5, s6, -1546
                  slli         tp, a1, 8
                  blt          ra, a6, 76f
                  auipc        t0, 578806
                  andi         a3, a4, 1478
                  ori          t1, t1, 1960
                  ori          a6, a1, -1597
                  srl          gp, s3, s10
                  ori          a3, t4, 1075
                  add          ra, s1, a7
76:               slti         a7, s7, 1040
                  xori         s8, t3, 329
78:               sltu         s6, a2, a7
                  sltiu        a4, t5, 19
                  and          s7, t0, s0
                  or           a6, s8, s11
                  blt          a0, s4, 95f
                  sra          a5, s0, a1
                  sll          s7, tp, t6
                  lui          s6, 478396
                  or           s5, s8, s9
                  srli         t4, tp, 9
                  xori         tp, a7, 1056
                  sll          t6, a4, s2
                  and          s1, t1, t4
                  sra          sp, s8, s5
                  or           t6, s4, t3
                  or           a0, s3, s1
                  xor          s8, t5, s11
95:               bgeu         s10, t0, 99f
                  and          a7, s3, a4
                  bgeu         t5, s11, 106f
                  nop
99:               andi         s11, s1, 1880
                  bltu         t5, ra, 117f
                  srli         a7, a3, 0
                  xor          tp, s10, a4
                  or           a4, a0, t5
                  xori         s0, t3, 2035
                  beq          a5, s9, 115f
106:              sub          a5, s5, a5
                  andi         gp, s11, 36
                  and          t4, t1, s10
                  beq          sp, a4, 118f
                  add          t5, t0, s11
                  srai         s0, t3, 27
                  addi         s6, t6, 1098
                  nop
                  xori         gp, s7, -1776
115:              ori          s7, s0, 331
                  and          s5, s11, s10
117:              add          s10, s1, a5
118:              slt          s5, s6, t5
                  add          t0, s2, s11
                  auipc        s11, 278182
                  sltiu        a0, a6, -1542
                  sltiu        a3, s4, 149
                  lw           gp, 4(t2)
                  or           s8, s8, s2
                  addi         t2, t2, 16
                  srl          ra, s3, a3
138:              addi x3, x3, 1
138:              jalr x3, x3, 0
sub_2:            addi         s10, t0, -746
                  bne          a4, s7, sub_2_stack_p
                  and          a7, t0, t2
                  ori          s7, s7, -521
sub_2_stack_p:    addi         t2, t2, -20
                  sw           gp, 4(t2)
                  srli         s8, a3, 2
                  slt          t4, a3, zero
                  slti         t5, t3, -1744
                  slli         s9, a4, 23
                  sra          s11, a6, s5
                  sltu         a0, zero, s2
                  sltu         t5, ra, a1
                  slti         t1, s2, -246
                  add          a2, s8, tp
sub_2_j6:         jal          gp, sub_4 #jump sub_2 -> sub_4
                  lui          s5, 245341
                  auipc        gp, 576672
                  slt          s11, a1, t3
                  auipc        a7, 730844
                  bltu         a1, s10, sub_2_j7 #branch to jump instr
                  or           s7, t2, t5
sub_2_j7:         jal          gp, sub_5 #jump sub_2 -> sub_5
                  auipc        s11, 912277
                  or           s6, s6, s10
                  auipc        s8, 163239
                  xori         a6, t0, -1652
                  la           a3, sub_5
                  addi         a3, a3, 370
                  sltu         s9, s10, sp
sub_2_j8:         jalr         gp, a3, -370 #jump sub_2 -> sub_5
                  beq          s4, a4, 9f
                  bne          t0, a5, 14f
                  srai         t5, s8, 18
                  addi         a1, s5, 767
                  bgeu         zero, t6, 14f
                  slti         sp, t0, 1561
                  slt          a3, t5, ra
                  xor          s1, sp, ra
                  sub          s4, a1, a6
9:                bgeu         s9, t5, 14f
                  xori         s4, a3, 1647
                  srai         s8, s1, 11
                  lui          a4, 452602
                  slt          t4, s2, ra
14:               srl          a5, s9, tp
                  srli         zero, s7, 20
                  xori         s0, t6, 770
                  lw           gp, 4(t2)
                  srli         s0, t0, 13
                  addi         tp, t4, -23
                  or           sp, a7, a1
                  addi         t2, t2, 20
                  srai         t4, s11, 19
54:               addi x24, x3, 0
54:               jalr x24, x24, 0
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
                  addi x7, x7, -128
                  sw  x1, 4(x7)
                  sw  x2, 8(x7)
                  sw  x3, 12(x7)
                  sw  x4, 16(x7)
                  sw  x5, 20(x7)
                  sw  x6, 24(x7)
                  sw  x7, 28(x7)
                  sw  x8, 32(x7)
                  sw  x9, 36(x7)
                  sw  x10, 40(x7)
                  sw  x11, 44(x7)
                  sw  x12, 48(x7)
                  sw  x13, 52(x7)
                  sw  x14, 56(x7)
                  sw  x15, 60(x7)
                  sw  x16, 64(x7)
                  sw  x17, 68(x7)
                  sw  x18, 72(x7)
                  sw  x19, 76(x7)
                  sw  x20, 80(x7)
                  sw  x21, 84(x7)
                  sw  x22, 88(x7)
                  sw  x23, 92(x7)
                  sw  x24, 96(x7)
                  sw  x25, 100(x7)
                  sw  x26, 104(x7)
                  sw  x27, 108(x7)
                  sw  x28, 112(x7)
                  sw  x29, 116(x7)
                  sw  x30, 120(x7)
                  sw  x31, 124(x7)
                  add x28, x7, zero
                  csrr x22, 0x300 # MSTATUS
                  csrr x22, 0x342 # MCAUSE
                  srli x22, x22, 31
                  bne x22, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x22, 0x341 # MEPC
                  csrr x22, 0x342 # MCAUSE
                  li x10, 0x3 # BREAKPOINT
                  beq x22, x10, ebreak_handler
                  li x10, 0x8 # ECALL_UMODE
                  beq x22, x10, ecall_handler
                  li x10, 0x9 # ECALL_SMODE
                  beq x22, x10, ecall_handler
                  li x10, 0xb # ECALL_MMODE
                  beq x22, x10, ecall_handler
                  li x10, 0x1
                  beq x22, x10, instr_fault_handler
                  li x10, 0x5
                  beq x22, x10, load_fault_handler
                  li x10, 0x7
                  beq x22, x10, store_fault_handler
                  li x10, 0xc
                  beq x22, x10, pt_fault_handler
                  li x10, 0xd
                  beq x22, x10, pt_fault_handler
                  li x10, 0xf
                  beq x22, x10, pt_fault_handler
                  li x10, 0x2 # ILLEGAL_INSTRUCTION
                  beq x22, x10, illegal_instr_handler
                  csrr x10, 0x343 # MTVAL
                  1: la x18, test_done
                  jalr x1, x18, 0

ecall_handler:    
                  la x22, _start
                  sw x0, 0(x22)
                  sw x1, 4(x22)
                  sw x2, 8(x22)
                  sw x3, 12(x22)
                  sw x4, 16(x22)
                  sw x5, 20(x22)
                  sw x6, 24(x22)
                  sw x7, 28(x22)
                  sw x8, 32(x22)
                  sw x9, 36(x22)
                  sw x10, 40(x22)
                  sw x11, 44(x22)
                  sw x12, 48(x22)
                  sw x13, 52(x22)
                  sw x14, 56(x22)
                  sw x15, 60(x22)
                  sw x16, 64(x22)
                  sw x17, 68(x22)
                  sw x18, 72(x22)
                  sw x19, 76(x22)
                  sw x20, 80(x22)
                  sw x21, 84(x22)
                  sw x22, 88(x22)
                  sw x23, 92(x22)
                  sw x24, 96(x22)
                  sw x25, 100(x22)
                  sw x26, 104(x22)
                  sw x27, 108(x22)
                  sw x28, 112(x22)
                  sw x29, 116(x22)
                  sw x30, 120(x22)
                  sw x31, 124(x22)
                  la x18, write_tohost
                  jalr x0, x18, 0

instr_fault_handler:
                  add x7, x28, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
                  mret

load_fault_handler:
                  add x7, x28, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
                  mret

store_fault_handler:
                  add x7, x28, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
                  mret

ebreak_handler:   
                  csrr  x22, 0x341
                  addi  x22, x22, 4
                  csrw  0x341, x22
                  add x7, x28, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
                  mret

illegal_instr_handler:
                  csrr  x22, 0x341
                  addi  x22, x22, 4
                  csrw  0x341, x22
                  add x7, x28, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x22, 0x300 # MSTATUS;
                  csrr  x22, 0x304 # MIE;
                  csrr  x22, 0x344 # MIP;
                  csrrc x22, 0x344, x22 # MIP;
                  add x7, x28, zero
                  lw  x1, 4(x7)
                  lw  x2, 8(x7)
                  lw  x3, 12(x7)
                  lw  x4, 16(x7)
                  lw  x5, 20(x7)
                  lw  x6, 24(x7)
                  lw  x7, 28(x7)
                  lw  x8, 32(x7)
                  lw  x9, 36(x7)
                  lw  x10, 40(x7)
                  lw  x11, 44(x7)
                  lw  x12, 48(x7)
                  lw  x13, 52(x7)
                  lw  x14, 56(x7)
                  lw  x15, 60(x7)
                  lw  x16, 64(x7)
                  lw  x17, 68(x7)
                  lw  x18, 72(x7)
                  lw  x19, 76(x7)
                  lw  x20, 80(x7)
                  lw  x21, 84(x7)
                  lw  x22, 88(x7)
                  lw  x23, 92(x7)
                  lw  x24, 96(x7)
                  lw  x25, 100(x7)
                  lw  x26, 104(x7)
                  lw  x27, 108(x7)
                  lw  x28, 112(x7)
                  lw  x29, 116(x7)
                  lw  x30, 120(x7)
                  lw  x31, 124(x7)
                  addi x7, x7, 128
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
