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
                  li x8, 0x40000100
                  csrw 0x301, x8
kernel_sp:        
                  la x10, kernel_stack_end

trap_vec_init:    
                  la x8, mtvec_handler
                  ori x8, x8, 1
                  csrw 0x305, x8 # MTVEC

mepc_setup:       
                  la x8, init
                  csrw 0x341, x8

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x8, 0x1800
                  csrw 0x300, x8 # MSTATUS
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0x5
                  li x2, 0x45451357
                  li x3, 0xb10826f1
                  li x4, 0xf
                  li x5, 0x80000000
                  li x6, 0xf7717004
                  li x7, 0xb
                  li x8, 0xd6309283
                  li x9, 0x80000000
                  li x11, 0xe
                  li x12, 0x7
                  li x13, 0x0
                  li x14, 0x80000000
                  li x15, 0xfeeb5dae
                  li x16, 0x80000000
                  li x17, 0x2
                  li x18, 0x0
                  li x19, 0x1
                  li x20, 0x0
                  li x21, 0x80000000
                  li x22, 0xa5dbeed0
                  li x23, 0x9b754220
                  li x24, 0x7
                  li x25, 0x6
                  li x26, 0xb
                  li x28, 0xfd52536d
                  li x29, 0xfdcc1946
                  li x30, 0x80000000
                  li x31, 0x80000000
                  la x27, user_stack_end
main:             la           tp, region_1+975 #start riscv_load_store_rand_instr_stream_3
                  lbu          a2, -331(tp)
                  lb           s1, -251(tp)
                  sll          s8, t4, s0
                  lb           a6, -161(tp)
                  auipc        s3, 433123
                  sb           s3, -284(tp)
                  slli         a2, ra, 29
                  sra          s3, a5, s0
                  lb           s7, -644(tp)
                  lb           sp, -572(tp)
                  andi         s8, s10, -352
                  sb           s7, 400(tp)
                  sb           s7, -625(tp)
                  sb           s4, 170(tp)
                  sra          s10, a5, s1
                  srai         t1, a5, 5
                  xori         a1, s0, -1959
                  and          t3, s5, t4
                  lbu          a2, 915(tp)
                  srai         a3, s8, 8
                  lb           t1, -760(tp)
                  sb           a1, -77(tp)
                  lb           s8, 1010(tp)
                  auipc        s1, 889286
                  sll          t3, s5, s1
                  lbu          t2, -788(tp)
                  lb           t4, 936(tp)
                  lbu          a4, 1003(tp)
                  sltu         s3, a7, s10
                  lb           a7, 84(tp)
                  auipc        s10, 140313
                  andi         s10, ra, -1924
                  lbu          t5, 440(tp)
                  sltiu        a7, s11, 50
                  sb           s8, 744(tp)
                  sh           s4, 1017(tp)
                  lbu          a2, 335(tp)
                  lbu          s5, 489(tp)
                  lhu          t1, 71(tp)
                  sra          t0, a0, t2
                  lb           s6, 584(tp)
                  sb           t5, -844(tp)
                  andi         s1, s2, -1392
                  xori         a1, s7, 155
                  sub          a7, s10, a0
                  lw           s4, 685(tp)
                  lb           t1, -538(tp)
                  sb           a0, 951(tp) #end riscv_load_store_rand_instr_stream_3
                  la           a7, region_0+1026 #start riscv_load_store_rand_instr_stream_5
                  sb           t6, 14(a7)
                  addi         s1, s4, -1348
                  lh           s4, 54(a7)
                  lb           s4, 25(a7)
                  sb           s0, 33(a7)
                  lhu          ra, -18(a7)
                  slli         t6, ra, 1
                  lbu          t1, 49(a7)
                  lbu          t2, 0(a7)
                  lb           s9, -16(a7)
                  lb           a2, -35(a7)
                  slt          s10, s5, s6
                  sb           a6, 7(a7)
                  add          s7, s9, t5
                  srli         a6, a3, 31
                  auipc        sp, 423303
                  slli         t1, s9, 16
                  xor          a6, a7, s6
                  addi         t1, t0, -1858
                  srl          a3, s4, s6
                  lb           s3, -49(a7)
                  sb           a0, -9(a7)
                  lb           t6, 61(a7)
                  slli         a6, a0, 17
                  ori          s7, s10, -821
                  sll          s10, sp, gp
                  and          t2, t3, s3
                  lh           s0, 42(a7)
                  lb           a3, 61(a7)
                  or           a6, s7, ra
                  lbu          t2, -11(a7)
                  andi         s6, s0, 513
                  auipc        t1, 492467
                  andi         a4, a3, -1872
                  nop
                  lbu          t1, 17(a7)
                  lbu          s3, 3(a7)
                  sb           s3, -19(a7)
                  sw           s7, 22(a7)
                  lb           a1, 12(a7)
                  sb           s4, 57(a7)
                  sb           a2, -15(a7) #end riscv_load_store_rand_instr_stream_5
                  la           s3, region_0+1710 #start riscv_load_store_rand_instr_stream_1
                  sb           a1, 41(s3)
                  sltu         s0, s7, a3
                  auipc        a7, 607228
                  lbu          ra, 63(s3)
                  xori         tp, t4, 1605
                  lb           t5, 48(s3)
                  lh           tp, -4(s3)
                  add          t1, t4, sp
                  srl          t0, t2, a3
                  lbu          s4, 44(s3)
                  sb           s1, 52(s3)
                  lh           t3, -2(s3)
                  lbu          t1, -56(s3)
                  xor          t4, a2, t1
                  lbu          s4, 56(s3)
                  sll          tp, s7, sp
                  lui          s1, 950791
                  andi         s6, s9, 480
                  lb           s7, 54(s3)
                  sb           t5, 43(s3)
                  sb           a5, -53(s3)
                  lh           s7, 60(s3)
                  nop
                  sb           a5, -31(s3)
                  lb           t5, -19(s3)
                  sh           a2, -28(s3)
                  lbu          t1, -21(s3)
                  or           a6, s11, a7
                  lhu          a3, -16(s3) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_1+1990 #start riscv_load_store_rand_instr_stream_10
                  and          t3, s2, t2
                  lw           s5, -2(sp)
                  lbu          a4, -5(sp)
                  lbu          s8, -11(sp)
                  lh           s2, 8(sp)
                  lbu          a6, -16(sp)
                  sw           t4, -6(sp)
                  sb           s0, -13(sp)
                  addi         zero, s4, -688
                  nop
                  lui          zero, 850182
                  sb           s10, -3(sp)
                  lb           s3, -7(sp)
                  andi         a6, a4, -1160
                  lh           zero, -4(sp)
                  lbu          gp, 5(sp)
                  xori         zero, t0, 2016
                  sb           t1, 1(sp)
                  andi         a2, s7, 27
                  lb           s2, -13(sp)
                  lbu          a2, -3(sp)
                  andi         t2, tp, -859
                  sb           s7, -12(sp)
                  sb           a1, -8(sp)
                  sb           s6, -14(sp)
                  sb           tp, -12(sp)
                  lbu          t2, 3(sp)
                  sb           t4, -5(sp)
                  sb           s7, -4(sp)
                  lbu          t1, 4(sp)
                  nop
                  lb           s9, 6(sp)
                  lh           s8, -16(sp)
                  lbu          s3, -7(sp)
                  slt          ra, a2, t1
                  lb           t5, -6(sp) #end riscv_load_store_rand_instr_stream_10
                  la           sp, region_1+1805 #start riscv_load_store_rand_instr_stream_2
                  nop
                  andi         a4, t5, 1085
                  xori         ra, ra, -1000
                  xor          a1, t1, zero
                  slti         s6, a2, -896
                  lb           s7, -6(sp)
                  lb           s7, -11(sp)
                  and          tp, s11, s0
                  lb           tp, 9(sp)
                  nop
                  xor          t1, zero, a4
                  add          s3, gp, a3
                  add          ra, t4, ra
                  addi         s7, s0, -335
                  add          gp, ra, s6
                  lbu          a6, 12(sp)
                  lbu          t0, 4(sp)
                  slt          tp, s6, t6
                  slti         t1, t6, 378
                  srli         a3, gp, 0
                  add          a1, a0, s1
                  slli         a6, tp, 30
                  srli         t6, s7, 21
                  lbu          t6, 14(sp)
                  lhu          s1, -13(sp)
                  auipc        tp, 484173
                  xor          t0, a0, t2
                  lh           a6, 5(sp)
                  lui          s9, 261857
                  xor          t3, t4, s2
                  slti         s10, s5, 170
                  srl          ra, s4, a5
                  lbu          zero, -16(sp)
                  auipc        t1, 156401
                  sltiu        s2, s5, -1927
                  sub          s3, a1, s8
                  lbu          s4, -15(sp)
                  lb           t5, -9(sp) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_1+1688 #start riscv_load_store_rand_instr_stream_4
                  lhu          a4, -56(sp)
                  sltiu        t2, a5, 633
                  sra          t5, s8, ra
                  slt          s6, a4, a1
                  xori         a7, s0, 1267
                  srai         a1, t1, 9
                  srl          t0, a3, a0
                  lw           s1, 64(sp)
                  add          t4, s11, t6
                  andi         t4, tp, -1645
                  sra          s4, t1, s2
                  add          zero, t0, s8
                  slli         s4, s9, 3
                  or           s8, a5, sp
                  add          s0, gp, s8
                  and          a2, zero, s6
                  sll          tp, a7, s5
                  xori         t4, s5, -798
                  sll          t3, a0, s4
                  sb           tp, -45(sp)
                  lbu          a1, -20(sp)
                  srl          t1, t1, t1
                  addi         gp, s6, 1844
                  add          a2, s11, s11
                  lbu          s0, -39(sp)
                  sltu         t5, t1, t0
                  xor          s9, s4, ra
                  lb           gp, 37(sp)
                  srai         t6, s8, 20
                  srl          ra, s10, t2
                  lbu          s0, -18(sp)
                  sltiu        s6, t6, -1049
                  sh           s1, 26(sp)
                  sub          s1, s2, a1
                  and          t6, s3, a2
                  sb           a5, 47(sp)
                  lh           a4, 18(sp)
                  xor          s2, a6, s8
                  sb           a4, 62(sp)
                  xori         tp, t1, 326
                  lb           t2, -22(sp) #end riscv_load_store_rand_instr_stream_4
                  la           s1, region_1+1084 #start riscv_load_store_rand_instr_stream_7
                  sltu         s7, a2, s8
                  xor          zero, s2, s2
                  slt          t2, s2, s7
                  lui          t3, 288458
                  ori          t6, gp, 1901
                  sll          s0, gp, s9
                  xori         s7, s9, -113
                  or           sp, t3, t3
                  lbu          s0, -50(s1)
                  srli         a4, a4, 4
                  sub          zero, a6, t0
                  sb           t0, 25(s1)
                  sltiu        s8, a4, -1757
                  xori         s10, s0, -295
                  auipc        a6, 320198
                  xori         s2, a3, 1942
                  lbu          s3, 21(s1)
                  lbu          ra, 27(s1)
                  sb           t0, -34(s1)
                  auipc        s7, 428950
                  lb           s5, -43(s1)
                  lbu          s4, -9(s1)
                  sub          s7, s4, t6
                  lh           a1, -22(s1)
                  sw           s1, -64(s1)
                  sb           s3, 9(s1) #end riscv_load_store_rand_instr_stream_7
                  la           a6, region_1+881 #start riscv_load_store_rand_instr_stream_0
                  sb           s4, 4(a6)
                  lh           s6, 1(a6)
                  and          s10, s2, a7
                  and          tp, s8, s3
                  sb           s7, -3(a6)
                  srli         t3, s7, 8
                  lh           a7, -15(a6)
                  slt          t6, s5, a1
                  sltiu        t2, t3, 716
                  lb           a2, -7(a6)
                  lb           t0, 1(a6)
                  sb           s10, -6(a6)
                  sw           s11, -5(a6)
                  sltu         t1, a1, s9
                  sb           a4, -15(a6)
                  sh           s6, -15(a6)
                  lhu          gp, 3(a6)
                  slt          tp, tp, a0
                  sll          zero, s11, s3
                  lbu          a4, -15(a6)
                  sub          s2, t6, t4
                  lb           s6, -14(a6)
                  ori          s0, s1, 1234
                  sb           s11, -10(a6)
                  sb           t2, 4(a6)
                  sltu         s5, t2, sp
                  sll          a3, sp, s8
                  lbu          a1, -11(a6)
                  lbu          s0, 10(a6)
                  addi         s5, s2, -1569
                  lb           s9, -6(a6)
                  lb           s4, 16(a6)
                  lbu          a1, 16(a6)
                  lh           s0, -5(a6)
                  lhu          t2, 7(a6)
                  lbu          a2, -7(a6)
                  sb           ra, -4(a6) #end riscv_load_store_rand_instr_stream_0
                  slt          s8, a0, s1
                  sltu         t2, t2, a7
                  or           t6, zero, a5
                  blt          t1, s1, 6f
                  beq          s6, t0, 7f
                  lui          s3, 847543
6:                xor          s10, s9, t5
7:                xor          s4, t1, a7
                  srl          tp, a2, a7
                  bgeu         a7, a4, 10f
10:               sll          s3, tp, a5
                  auipc        a4, 977321
                  srli         tp, a1, 16
                  blt          a2, s5, 28f
                  auipc        a7, 20425
                  blt          t5, a6, 23f
                  lui          s6, 642600
                  sltiu        t3, t1, 82
                  srli         a3, s9, 9
                  add          s3, a2, s2
                  sra          a3, s9, s3
                  and          s7, t0, a3
                  srai         s0, sp, 28
23:               srl          t0, a0, sp
                  slli         zero, s10, 10
                  sltiu        s1, sp, -209
                  and          s10, zero, t1
                  srai         s8, zero, 20
28:               and          s1, a7, a1
                  xori         s3, s7, 1610
                  xori         s5, ra, -1132
                  slli         s8, a6, 2
                  slt          ra, t0, a1
                  lui          s6, 403075
                  sub          gp, s7, t5
                  bne          s4, a5, 50f
                  srli         sp, s8, 21
                  sll          t4, ra, a1
                  nop
                  andi         s10, t4, -537
                  slti         s9, gp, -180
                  bgeu         s2, a5, 55f
                  xori         a1, t1, -596
                  sltiu        s2, a3, 990
                  bgeu         s11, t2, 57f
                  bge          s8, s7, 48f
                  slt          a2, s7, s8
                  add          tp, s4, s0
48:               or           s7, sp, a4
                  bgeu         s5, s1, 65f
50:               bgeu         t3, t2, 61f
                  srai         s5, a0, 21
                  srli         t1, a0, 26
                  auipc        sp, 816890
                  sltu         a2, a1, s11
55:               sltiu        s9, t3, -383
                  add          gp, t2, t1
57:               slli         s2, s2, 21
                  or           t3, a7, a1
                  sra          tp, tp, t2
                  xor          a2, a7, s4
61:               srl          s9, a0, sp
                  slti         a7, s2, 749
                  sltu         s7, s8, s10
                  sltiu        s1, t6, -677
65:               sltiu        s10, s5, -149
                  beq          ra, sp, 69f
                  bltu         sp, a3, 68f
68:               srli         s1, a5, 0
69:               blt          t2, t1, 85f
                  bltu         t1, tp, 79f
                  add          s1, t1, a1
                  nop
                  nop
                  nop
                  or           a3, s9, a0
                  andi         s3, t6, -1459
                  sltu         t0, t0, t0
                  lui          s5, 405759
79:               slli         s9, t0, 1
                  sra          a4, s8, t6
                  bgeu         s11, t1, 83f
                  srli         s8, a5, 24
83:               blt          a3, ra, 87f
                  srli         sp, t0, 9
85:               slli         s3, t5, 11
                  add          t6, t3, t0
87:               srli         t2, gp, 10
                  blt          ra, t5, 99f
                  slt          t2, a7, a3
                  xori         s6, a3, -1436
                  sll          s0, s9, a2
                  sra          t5, ra, s10
                  bgeu         a2, a3, 104f
                  bltu         a0, t0, 111f
                  blt          gp, s8, 112f
                  blt          tp, t1, 102f
                  srl          a7, s3, s10
                  srl          s5, t4, a6
99:               or           a2, t6, s0
                  sltu         s6, gp, zero
                  sltu         s4, t6, t1
102:              slt          s7, s6, t3
                  or           s2, a7, s9
104:              bge          s1, s9, 111f
                  addi         zero, a1, 1947
                  or           s10, s8, ra
                  xori         s2, tp, 76
                  srai         a6, a7, 15
                  xori         s9, a3, -240
                  add          t5, a7, a5
111:              srai         t1, t6, 5
112:              srli         t4, a3, 7
                  xori         t6, zero, -1500
                  srli         s10, a6, 15
                  nop
                  slti         t4, sp, 1435
                  addi         t1, t6, 1190
                  xori         t1, s7, 700
                  sub          a6, s10, a7
                  addi         s1, zero, -1532
                  sltu         t5, a6, t5
                  add          sp, a0, tp
                  andi         zero, zero, 1563
                  sub          s7, t0, s7
                  or           t2, s9, ra
                  slli         t0, s8, 21
                  srai         t0, s0, 16
                  srl          a4, s9, a4
                  la           tp, sub_1
                  auipc        s5, 682787
                  sub          s7, t3, ra
                  xor          s5, t1, a1
                  lui          s7, 970067
                  addi         s2, t4, -1104
                  sltu         s4, s0, tp
                  addi         tp, tp, -829
                  add          a4, tp, t6
                  lui          s7, 121993
                  bge          s1, s0, main_j2 #branch to jump instr
                  slli         a7, s6, 9
main_j2:          jalr         s5, tp, 829 #jump main -> sub_1
                  addi         t3, a0, 534
                  blt          t0, a0, 147f
                  auipc        a7, 857759
                  blt          s8, a1, 147f
                  slli         tp, a2, 28
                  lui          gp, 642358
                  sltu         t2, t3, t3
                  sra          t4, t3, a3
                  beq          a2, s2, 138f
                  bgeu         s5, a4, 147f
138:              slti         t5, s9, -853
                  bge          t6, t2, 141f
                  xori         t5, t4, -727
141:              sra          gp, s9, s3
                  sra          t5, s11, t1
                  add          t0, t2, t1
                  bne          s7, a6, 154f
                  xor          s2, tp, a4
                  sll          s2, a1, s5
147:              andi         s8, a7, -341
                  srl          a2, s10, s9
                  and          t3, s11, t6
                  bge          a6, gp, 154f
                  or           s4, gp, gp
                  blt          s11, t2, 155f
                  andi         s10, gp, 844
154:              bne          a5, a1, 158f
155:              sltiu        t1, s8, -1018
                  or           a3, s8, gp
                  lui          sp, 968733
158:              slt          a7, s2, s7
                  slli         a7, a6, 5
                  nop
                  blt          s0, s2, 162f
162:              beq          t6, gp, 164f
                  lui          s10, 195357
164:              or           a6, a5, a4
                  sra          s3, s8, a0
                  lui          a7, 758390
                  sltiu        t6, gp, 1944
                  add          s1, a1, gp
                  bge          t1, a3, 184f
                  sltu         a6, a0, a0
                  sra          s8, tp, s4
                  beq          t4, t6, 175f
                  nop
                  andi         zero, s8, 1346
175:              sub          s0, tp, a6
                  sltiu        s9, ra, 2013
                  auipc        a7, 148006
                  addi         t1, s7, 1858
                  srli         a4, s4, 23
                  add          tp, t5, s6
                  lui          t2, 862877
                  add          t6, a6, s0
                  nop
184:              sltiu        t1, s2, -836
                  auipc        a2, 812309
                  auipc        t2, 997360
                  sltiu        a7, s10, 1859
                  and          s1, t2, a1
                  blt          s7, ra, 195f
                  sltu         s10, s5, ra
                  bgeu         s10, s0, 195f
                  beq          t0, s3, 202f
                  lui          s1, 732469
                  auipc        t5, 274208
195:              blt          t3, s4, 197f
                  bge          ra, s3, 207f
197:              xor          t2, a4, t5
                  bge          a4, a7, 208f
                  ori          gp, a1, 631
                  sra          gp, t5, ra
                  nop
202:              srli         s9, s0, 12
                  srli         sp, t6, 1
                  xor          a2, a1, s2
                  andi         tp, s3, 1125
                  sltu         zero, t6, t6
207:              bgeu         a4, a6, 209f
208:              srai         a6, s0, 31
209:              sra          t6, s9, s9
                  sltiu        t0, a7, 1074
                  xor          t1, t3, a4
                  xor          s1, tp, a6
                  bge          a7, sp, 216f
                  slti         s6, s3, -1325
                  xor          s6, a1, tp
216:              bgeu         t1, a1, 227f
                  blt          t0, gp, 226f
                  xor          t3, a7, t4
                  sltu         s2, s5, s10
                  bne          s10, t0, 231f
                  srl          t3, a7, s2
                  sub          gp, s0, t3
                  slt          a7, t0, s0
                  auipc        s9, 381418
                  bne          t1, t6, 241f
226:              bltu         a6, t6, 233f
227:              slti         s0, s8, 1395
                  slli         s7, sp, 3
                  slli         s5, s3, 2
                  srl          s5, s6, tp
231:              srai         s6, s10, 6
                  slt          t0, a4, a4
233:              add          t3, a6, a5
                  xori         s5, a7, 1928
                  srli         s9, t6, 10
                  slt          t4, a7, a5
                  srl          t5, a5, a3
                  lui          s6, 351586
                  slli         tp, s2, 2
                  bge          s1, s0, 257f
241:              nop
                  srai         t2, t1, 29
                  xori         s4, t0, 1169
                  xori         s10, s9, -34
                  srai         ra, s5, 7
                  andi         a2, s9, 377
                  or           s5, s0, s5
                  lui          zero, 734234
                  or           s9, s7, sp
                  bge          t1, t2, 251f
251:              blt          t6, sp, 254f
                  slli         a6, t5, 26
                  and          zero, sp, s11
254:              ori          ra, a6, 890
                  bltu         s0, t3, 271f
                  bge          t2, s0, 264f
257:              srli         s10, t1, 18
                  srli         s5, s6, 5
                  srl          s3, a0, s7
                  addi         s8, s11, -1218
                  srai         t0, t0, 23
                  bgeu         t3, s9, 278f
                  sra          tp, gp, s2
264:              andi         s1, a3, -1406
                  andi         zero, a3, -600
                  bge          t2, t1, 280f
                  bge          t2, s2, 280f
                  sltu         t3, t2, s3
                  ori          a6, gp, 265
                  bne          t6, s7, 287f
271:              bne          t2, s2, 286f
                  ori          s8, s7, -1580
                  beq          tp, s2, 291f
                  sra          s1, a4, s2
                  auipc        zero, 982070
                  bgeu         a5, t2, 294f
                  beq          s6, a6, 288f
278:              beq          a7, s11, 293f
                  bne          a5, s1, 281f
280:              add          s9, a5, s1
281:              bge          s0, t2, 294f
                  auipc        s10, 1035949
                  sltiu        zero, a0, 1507
                  sub          t5, gp, t3
                  sltiu        t4, gp, -1549
286:              beq          s10, a2, 287f
287:              and          s5, ra, t2
288:              andi         a7, t0, 492
                  slli         t5, a2, 14
                  and          s3, a7, t0
291:              sll          a2, t5, s7
                  add          t1, ra, s2
293:              srl          s5, a6, sp
294:              auipc        s0, 834321
                  blt          s6, s8, 312f
                  xori         zero, t3, 76
                  or           s5, s9, t1
                  ori          t2, a2, 519
                  sltu         tp, t0, a7
                  and          t2, a2, a4
                  beq          s8, t5, 318f
                  nop
                  lui          t4, 776526
                  bltu         t4, a2, 307f
                  andi         s9, t5, 344
                  and          t2, a1, s10
307:              auipc        zero, 403927
                  ori          zero, s2, -2038
                  bge          t6, s8, 312f
                  sll          t5, s3, tp
                  and          t2, s9, s11
312:              ori          s4, s11, -866
                  addi         s8, s2, -848
                  slt          tp, a7, s7
                  bltu         s1, s7, 326f
                  bgeu         sp, t3, 324f
                  bgeu         zero, a6, 320f
318:              auipc        a6, 500929
                  srli         s2, t6, 6
320:              sltiu        zero, a1, -627
                  add          t4, s10, t4
                  la           sp, region_0+242 #start riscv_load_store_rand_instr_stream_8
                  xori         a4, s3, -525
                  sltu         zero, a4, a6
                  addi         a4, s7, 858
                  sltiu        s9, t6, 1309
                  srl          s4, s8, a3
                  lb           gp, 795(sp)
                  sra          s0, gp, s11
                  lb           s0, 1473(sp)
                  auipc        a2, 488891
                  and          a2, s1, s0
                  sb           s9, 1238(sp)
                  srl          a2, a4, sp
                  or           ra, t5, t0
                  slti         a6, s6, 2036
                  lui          s4, 441431
                  lhu          s6, 1416(sp)
                  sb           t4, 1315(sp)
                  lb           a4, 1685(sp)
                  sub          t0, s1, t4
                  lb           s6, 5(sp)
                  lh           t4, 318(sp)
                  lbu          tp, 311(sp)
                  lui          t2, 989427
                  and          s9, s5, sp
                  nop
                  srai         t0, s1, 10
                  sh           sp, 538(sp)
                  lbu          s2, 927(sp)
                  lbu          s3, 246(sp)
                  sra          t5, ra, t5
                  lh           s10, 1494(sp)
                  ori          s6, t6, -514
                  lbu          a3, 1000(sp)
                  or           s10, a4, s11
                  lb           s0, 1107(sp)
                  sltiu        s9, a6, -1400
                  lbu          s5, -140(sp)
                  sb           t4, 843(sp)
                  sh           tp, -204(sp)
                  sb           s5, 1130(sp)
                  lbu          s10, 843(sp) #end riscv_load_store_rand_instr_stream_8
                  beq          s8, t5, 323f
323:              bltu         s8, a0, 339f
324:              and          a4, a2, ra
                  bne          t6, a2, 327f
326:              slt          s8, s7, t4
327:              beq          s5, a5, 336f
                  beq          a6, tp, 330f
                  bne          gp, a4, 332f
330:              add          s3, a1, a2
                  sll          s10, t6, s7
332:              sll          s9, a5, s4
                  slli         s0, a5, 31
                  andi         t4, s0, 397
                  bne          s6, t2, 349f
336:              auipc        t4, 18049
                  addi         s10, s3, -961
                  srl          a4, a4, s3
339:              add          s7, s8, s9
                  lui          tp, 850144
                  andi         a1, a2, 596
                  nop
                  add          t4, s5, a5
                  andi         s9, t0, -306
                  bltu         s5, s11, 360f
                  slt          a2, a4, s11
                  sub          t2, sp, s4
                  andi         t5, t4, 916
349:              and          s7, t4, ra
                  beq          ra, zero, 357f
                  sltu         a3, s2, t6
                  and          s5, a5, sp
                  addi         t1, gp, 1639
                  sltu         t4, sp, tp
                  xor          s6, s11, a0
                  bltu         s3, gp, 366f
357:              addi         s4, s9, 1458
                  srai         s4, sp, 6
                  slti         a4, s10, -1651
360:              srl          a2, t0, a1
                  lui          sp, 766910
                  sltu         t4, zero, s9
                  add          ra, gp, t3
                  sub          t1, t5, s9
                  bgeu         gp, t2, 371f
366:              slti         a7, s9, 922
                  nop
                  ori          s7, s8, -601
                  sltiu        s6, t1, -5
                  sltiu        s6, t4, -553
371:              bne          sp, a3, 387f
                  slti         a3, a4, 506
                  slti         s2, s7, -862
                  srai         s9, t1, 18
                  and          a7, t5, zero
                  add          s7, t4, t0
                  ori          a6, s3, 390
                  srl          s3, t5, t3
                  slli         s8, a5, 22
                  addi         a2, gp, 1324
                  ori          s10, s1, 315
                  add          a7, s10, s0
                  xori         s10, t2, -2036
                  slt          s0, s7, sp
                  bgeu         s8, s10, 395f
                  sltiu        a4, tp, -1116
387:              addi         zero, a2, -1795
                  sra          a6, a0, s3
                  sltu         t2, ra, s10
                  sll          a4, s7, s7
                  auipc        s7, 435353
                  bgeu         t6, a7, 396f
                  add          t2, s6, a6
                  beq          s9, a3, 405f
395:              slli         t0, a6, 23
396:              sltiu        t1, tp, 710
                  add          a2, a3, s6
                  srai         gp, s3, 5
                  and          s6, a6, zero
                  andi         t4, s0, 112
                  auipc        a1, 177091
                  ori          s0, a6, 729
                  or           t4, a2, s1
                  bgeu         ra, a6, 408f
405:              sltiu        t3, s4, -609
                  sub          s3, s10, t1
                  ori          zero, t6, -505
408:              slti         s10, t1, 1248
                  slli         s0, t2, 7
                  la           sp, region_0+931 #start riscv_load_store_rand_instr_stream_9
                  sub          t6, s7, a0
                  sll          t5, a5, a3
                  sh           s4, 19(sp)
                  lbu          s9, -9(sp)
                  xor          t2, sp, a4
                  sb           t3, 13(sp)
                  addi         s4, a4, -1130
                  ori          s5, ra, 324
                  sh           a0, 39(sp)
                  sb           gp, -22(sp)
                  lh           s6, -33(sp)
                  lbu          a3, 39(sp)
                  lb           s8, -61(sp)
                  and          t6, s1, a0
                  lw           s10, 21(sp)
                  lh           t0, -13(sp)
                  auipc        s10, 909099
                  sh           s5, -5(sp)
                  addi         s10, ra, -279
                  and          zero, t2, a6
                  lb           t0, -30(sp)
                  sb           s8, 16(sp)
                  sh           s8, 39(sp)
                  sub          s3, gp, t1
                  lbu          s4, -25(sp)
                  sb           s8, -40(sp)
                  lui          s10, 54021
                  xor          t0, t2, a0
                  slti         a4, t5, 935
                  lb           a1, -44(sp)
                  lbu          t5, -32(sp) #end riscv_load_store_rand_instr_stream_9
                  sltu         zero, t2, s1
                  or           s9, t6, tp
                  slt          s4, a3, a3
                  or           t3, s4, s0
                  sra          a7, a6, a6
                  bne          a1, s6, 431f
                  bne          s4, gp, 432f
                  auipc        tp, 100353
                  auipc        s5, 15337
                  slli         t6, t1, 16
                  and          tp, ra, t6
                  nop
                  la           sp, region_0+1004 #start riscv_load_store_rand_instr_stream_6
                  lhu          a2, -54(sp)
                  lbu          t6, -9(sp)
                  lb           t5, 104(sp)
                  slli         s2, s1, 13
                  lb           t3, -208(sp)
                  lbu          s8, -154(sp)
                  sb           tp, 132(sp)
                  sh           s1, 86(sp)
                  lb           t6, -161(sp)
                  sltu         zero, a3, a6
                  srli         t2, t4, 21
                  lbu          s6, 254(sp)
                  add          tp, s6, t3
                  sh           sp, -230(sp)
                  sll          t5, t6, a7
                  xori         t2, a5, 1075
                  or           s7, s11, a1
                  lw           s1, 20(sp)
                  nop
                  sb           t3, -240(sp)
                  lh           s5, -36(sp)
                  lb           s6, 122(sp)
                  xori         t2, a6, -1539
                  lh           s10, 128(sp)
                  sb           a1, 210(sp)
                  srli         gp, t2, 23
                  lbu          t3, -123(sp)
                  lbu          s1, 103(sp)
                  sb           t5, -31(sp)
                  nop
                  sh           sp, 176(sp)
                  lb           a1, 203(sp)
                  lbu          s9, 249(sp)
                  lbu          a2, 219(sp)
                  lh           s10, 134(sp) #end riscv_load_store_rand_instr_stream_6
                  slt          a1, t0, t4
                  slt          s10, s9, t4
                  sltiu        t4, t4, -1858
                  nop
                  sub          a7, t1, t0
                  xor          t5, s10, ra
                  bgeu         a0, s10, 430f
                  xori         s8, s4, 1747
430:              slli         t6, zero, 0
431:              addi         a4, a5, -36
432:              bltu         s9, sp, 449f
                  srai         a2, a5, 14
                  srl          a1, a1, s9
                  nop
                  sra          s3, a0, t3
                  ori          t5, tp, 912
                  andi         a3, gp, -797
                  bne          t5, s1, 442f
                  sra          s3, s3, t3
                  slti         a7, t1, -912
442:              xori         t4, t6, 1725
                  and          a7, a7, a0
                  xor          s1, s9, s10
                  bne          ra, s9, 452f
                  bge          s9, s10, 461f
                  beq          zero, t4, 455f
                  srli         sp, s8, 13
449:              nop
                  sltiu        s1, t4, 202
                  sub          t5, t0, t1
452:              slli         zero, s1, 3
                  srai         a3, t2, 13
                  slti         s7, tp, 1027
455:              bltu         s3, s1, 459f
                  bltu         a6, s7, 457f
457:              auipc        s6, 613260
                  srai         gp, t0, 31
459:              or           s8, ra, a2
                  lui          ra, 47468
461:              sltu         s6, t4, a6
                  or           gp, t0, t0
                  or           ra, s10, t6
                  andi         t1, zero, 738
                  xor          sp, a5, a4
                  bltu         s1, s10, 472f
                  srli         t2, s11, 9
                  andi         s10, t2, -203
                  addi         s1, s9, -770
                  sltu         t1, s1, s9
                  bge          t3, t4, 484f
472:              bne          t3, a4, 489f
                  bge          t2, s6, 475f
                  beq          s4, s8, 489f
475:              slt          s1, s2, t4
                  nop
                  sll          s6, s2, a0
                  srl          ra, s7, tp
                  addi         a7, s2, 403
                  sub          tp, t6, s7
                  srli         a1, s10, 10
                  or           t0, a3, s6
                  bltu         zero, s2, 484f
484:              sltiu        a1, s5, 39
                  sltu         ra, t5, a3
                  sub          t2, a0, a4
                  sra          a6, s4, s10
                  sltiu        s9, s3, -1059
489:              bgeu         t2, s5, 500f
                  sltu         ra, zero, t6
                  slt          t6, s0, t0
                  nop
                  ori          s9, tp, -179
                  bne          a1, s1, 497f
                  srli         a3, sp, 1
                  beq          a3, t3, 500f
497:              sltu         a3, gp, a7
                  sub          s3, t5, a1
                  auipc        s0, 1007496
500:              slt          s3, tp, s3
                  ori          s1, s4, 294
                  or           s6, a1, t5
                  blt          s0, a3, 514f
                  auipc        s5, 392966
                  bgeu         a6, a1, 515f
                  sub          t5, s11, s2
                  slli         s8, t2, 19
                  srl          gp, s9, gp
                  bgeu         s9, zero, 525f
                  xori         t3, s1, -1502
                  blt          t4, gp, 522f
                  nop
                  andi         t2, s8, 793
514:              and          sp, s3, s9
515:              xori         t6, s0, -640
                  sll          t0, sp, s11
                  srl          s5, s10, s2
                  sltiu        t3, ra, 1798
                  bge          a4, tp, 529f
                  srli         s2, s4, 9
                  andi         s3, t2, -1812
522:              sra          gp, a1, s5
                  ori          s2, sp, -125
                  bgeu         t1, s7, 527f
525:              or           s4, t3, a1
                  slli         t1, s1, 0
527:              sltiu        s9, a5, 1689
                  xor          ra, t3, a3
529:              sltiu        a7, a6, 305
                  bge          s3, t0, 539f
                  srai         t5, a7, 23
                  sub          zero, a1, a1
                  slli         s0, s0, 6
                  srl          s10, sp, a6
                  add          gp, a5, s5
                  srai         s8, ra, 19
                  add          gp, s9, a7
                  slli         s2, s8, 26
539:              andi         s8, s9, -1624
                  nop
                  ori          sp, a4, 1331
                  sltiu        t6, tp, 57
                  sltu         t2, s0, a7
                  srl          s1, s7, s5
                  sltiu        t2, s2, -1401
                  bge          s2, gp, 560f
                  sll          ra, a7, t6
                  bltu         t6, t1, 564f
                  slli         s1, t4, 9
                  bge          s5, a4, 568f
                  bltu         a7, s4, 553f
                  add          s8, a2, t1
553:              sll          sp, s10, zero
                  srl          s3, a3, s7
                  slt          s3, tp, t1
                  srl          tp, t3, s4
                  srai         a4, t6, 17
                  srli         t2, a0, 28
                  slt          a7, zero, t6
560:              blt          s1, s3, 563f
                  ori          s8, a6, 1874
                  and          s10, t1, a5
563:              slt          s7, gp, s3
564:              slt          a4, s6, s5
                  nop
                  auipc        a1, 1020208
                  bgeu         s9, s0, 582f
568:              auipc        s7, 983121
                  slti         t6, a1, -1565
                  ori          ra, t3, 49
                  addi         a2, a0, 1073
                  srl          t2, s6, a5
                  srai         s9, gp, 18
                  sll          s6, s2, s6
                  ori          s9, a7, 1242
                  and          s2, a7, t2
                  bge          a3, a7, 588f
                  ori          s4, s6, -706
                  sltiu        tp, a2, 151
                  sltiu        a4, a7, 2040
                  sltu         s9, a7, s0
582:              sra          s1, a0, s8
                  and          t6, ra, ra
                  beq          sp, a7, 587f
                  and          gp, s10, a7
                  srl          a7, t2, a6
587:              slt          sp, s4, a1
588:              add          t2, t3, s7
                  bge          t5, a0, 595f
                  xor          s2, s11, s6
                  bne          a3, s11, 607f
                  sltiu        s4, t1, 901
                  srli         s4, t3, 15
                  nop
595:              addi         ra, s0, 1865
                  nop
                  blt          s0, a2, 600f
                  nop
                  sub          s10, a6, s9
600:              sra          tp, s10, zero
                  srli         t1, t1, 27
                  lui          a4, 10114
                  ori          t6, a7, 495
                  sltiu        s6, s1, 924
                  addi         t5, ra, -1359
                  beq          a4, a4, 617f
607:              slli         s7, zero, 12
                  slli         s5, a0, 23
                  or           t5, t3, s5
                  lui          a7, 157043
                  xori         a2, t1, -1267
                  andi         s9, a0, 1147
                  sltu         t5, t1, t1
                  bltu         a1, gp, 630f
                  sub          t6, t5, s0
                  slli         ra, a5, 19
617:              sltiu        t6, zero, 589
                  bltu         t3, t0, 620f
                  beq          t1, s5, 637f
620:              auipc        a7, 969637
                  and          s3, zero, s2
                  nop
                  srl          t3, s9, gp
                  beq          s4, t3, 638f
                  blt          s3, t3, 629f
                  sltu         sp, s0, a5
                  xor          s10, s2, a7
                  slli         s0, t6, 17
629:              andi         s10, s3, 1738
630:              and          s10, tp, zero
                  ori          s5, t4, -531
                  sltiu        s6, t4, 1263
                  slt          s10, a1, t5
                  sub          t2, s7, s5
                  sltu         ra, sp, s9
                  bne          s2, sp, 637f
637:              srl          a4, t5, s3
638:              xor          t3, a5, a7
                  slti         a7, tp, -1560
                  slti         s6, sp, -788
                  slt          tp, ra, gp
                  add          a7, a0, t3
                  beq          a1, a7, 660f
                  srai         ra, a5, 3
                  and          s7, a2, a1
                  sltu         s9, a7, gp
                  slt          zero, t4, s2
                  bge          s10, a2, 657f
                  sra          s3, t6, a3
                  sltiu        gp, a1, -163
                  srai         s7, s3, 18
                  addi         a3, s1, -506
                  bgeu         s8, t5, 668f
                  andi         a7, s7, 28
                  slti         a3, s5, 1477
                  bne          a2, s9, 666f
657:              slli         s1, a5, 29
                  or           s9, a0, zero
                  srl          a6, t1, s7
660:              beq          a2, zero, 677f
                  and          a3, t4, s7
                  lui          a7, 299883
                  srli         s8, t6, 3
                  xor          t4, zero, a6
                  andi         a4, s6, 1058
666:              ori          s4, a5, 429
                  bltu         a5, a4, 680f
668:              ori          t3, a1, 306
                  sub          t6, t0, a3
                  xori         t1, s1, 1657
                  lui          t4, 961778
                  bgeu         t5, s10, 675f
                  and          s7, t3, s11
                  srli         s5, s10, 31
675:              srl          zero, t3, t5
                  sltiu        s3, s8, 704
677:              lui          tp, 192581
                  srai         s6, a6, 4
                  xori         t2, a4, -732
680:              sra          s0, s8, t2
                  slti         s3, zero, 199
                  bgeu         s9, gp, 689f
                  xor          s2, s0, a1
                  addi         a2, t3, 480
                  sltiu        s0, a7, 1884
                  ori          s5, s4, 273
                  bge          t0, sp, 703f
                  ori          a1, t5, -604
689:              xor          t3, sp, a0
                  bgeu         t0, t1, 698f
                  sra          a3, t3, t5
                  srli         a1, sp, 17
                  sub          sp, s3, s3
                  slli         a2, s8, 16
                  auipc        t0, 514460
                  auipc        t5, 1047910
                  sll          a7, t6, ra
698:              bgeu         s10, a5, 709f
                  srli         s8, s3, 17
                  srai         s3, s6, 4
                  slt          s10, a1, s5
                  auipc        t6, 29100
703:              sll          s10, a6, a4
                  lui          tp, 1001042
                  xor          s9, tp, zero
                  addi         s2, zero, 507
                  add          s2, s1, tp
                  xori         t3, a6, 491
709:              addi         a4, a5, -373
                  srli         a2, a4, 26
                  xor          gp, gp, s1
                  sll          sp, t4, tp
                  bne          s7, s5, 715f
                  srai         t5, s7, 8
715:              slt          t2, a5, a4
                  bne          s3, a0, 717f
717:              sub          s1, s2, s3
                  sub          s0, t4, a7
                  bne          a0, s5, 721f
                  xor          a4, a7, a0
721:              xor          s5, s7, s1
                  xori         t0, a2, -1316
                  slt          s7, ra, a2
                  bne          s8, s5, 727f
                  sltu         s2, s4, a7
                  xor          zero, t0, sp
727:              blt          t4, s8, 737f
                  bgeu         a0, zero, 732f
                  srai         a2, a4, 4
                  sltu         s3, a5, a2
                  srai         s2, t3, 14
732:              and          a4, s2, gp
                  slt          a7, s4, s1
                  ori          zero, a0, -1602
                  xori         s8, s6, -276
                  auipc        a6, 841587
737:              lui          tp, 954444
                  xori         t2, t4, 154
                  slli         s0, a6, 14
                  slti         t0, a2, 233
                  srli         s3, a4, 22
                  nop
                  slti         t0, a5, 215
                  beq          s1, a1, 751f
                  xor          zero, a2, t3
                  auipc        s0, 226009
                  ori          tp, s6, -463
                  bne          gp, t0, 754f
                  and          a2, s4, t4
                  bgeu         t1, a3, 765f
751:              slli         t1, s0, 9
                  xori         zero, a6, -1915
                  add          a6, s5, s5
754:              bge          tp, a4, 756f
                  srai         t1, t4, 30
756:              srli         ra, t2, 19
                  sll          s10, a7, t5
                  addi         s7, a1, -724
                  xor          s0, s3, s5
                  xori         a4, a0, 352
                  nop
                  slti         t3, s0, 1606
                  sub          t1, s6, zero
                  bltu         s11, s10, 775f
765:              and          t4, t2, s11
                  slt          s8, sp, t0
                  addi         a2, s7, 1343
                  bgeu         s1, ra, 778f
                  slli         t0, s8, 0
                  auipc        t5, 120934
                  bge          s4, a5, 787f
                  add          sp, a2, s3
                  sltiu        t0, s0, -960
                  blt          a6, s8, 789f
775:              nop
                  srl          t4, gp, a1
                  sub          s0, t2, s10
778:              srli         zero, a4, 9
                  srli         sp, s4, 25
                  bne          t6, s9, 782f
                  bgeu         s2, a1, 790f
782:              or           a7, s10, a2
                  add          t2, a6, s9
                  slti         t6, s1, -145
                  slt          a6, s8, s5
                  bltu         s8, a7, 802f
787:              slt          t0, s2, gp
                  auipc        a4, 558974
789:              slti         s7, gp, 324
790:              slti         a2, t2, -1564
                  add          s2, a0, t0
                  srl          zero, gp, s1
                  srai         a2, a3, 20
                  xor          t0, ra, s11
                  srai         t6, s11, 12
                  bge          a5, a6, 804f
                  xori         t5, gp, -1895
                  sra          s4, t2, t5
                  srai         s8, s7, 31
                  srai         s0, a6, 7
                  sll          s5, s4, t6
802:              slli         t0, a0, 12
                  andi         s1, t4, 1071
804:              sll          s4, a5, gp
                  lui          s6, 869954
                  auipc        ra, 1038301
                  nop
                  xor          s9, a3, s5
                  slli         s3, tp, 24
                  sltiu        t3, a4, 1150
                  and          sp, a1, t3
                  bge          s9, s11, 816f
                  sltiu        s3, s4, 808
                  bge          t5, t1, 831f
                  srli         ra, s11, 24
816:              srai         s10, s3, 19
                  or           s5, t3, t1
                  sub          t6, sp, gp
                  and          a7, s6, gp
                  sra          t5, t4, a5
                  sub          t2, gp, ra
                  sra          s9, t5, t3
                  bltu         s1, s11, 826f
                  slt          s10, sp, s1
                  beq          s5, s2, 836f
826:              andi         s0, s3, 1925
                  sra          t5, t0, t3
                  or           gp, t0, s9
                  xori         ra, a4, 717
                  srai         t5, s5, 9
831:              slti         s2, a7, -385
                  xor          s3, s8, a1
                  xor          t5, s10, s3
                  srai         gp, t3, 20
                  bne          zero, s0, 838f
836:              lui          a6, 481890
                  and          t1, s2, s4
838:              sltu         s2, s0, tp
                  bge          s9, t2, 853f
                  srl          a6, s6, a7
                  sltiu        tp, zero, -1141
                  andi         a1, a5, -216
                  slt          zero, ra, t5
                  sltiu        s6, a4, 518
                  srl          s2, s11, tp
                  addi         s2, t6, 984
                  bgeu         s4, t0, 864f
                  add          t4, a4, a1
                  srai         a4, s10, 25
                  xori         s3, s3, -1713
                  bltu         a3, a4, 853f
                  and          t3, t0, s3
853:              srl          t3, s11, s2
                  auipc        s5, 342779
                  addi         gp, s11, 915
                  beq          t0, a2, 867f
                  and          s0, s1, t1
                  sra          sp, s8, a6
                  xor          a6, a3, t5
                  addi         s6, s3, -1629
                  sltu         s9, a5, zero
                  srl          t0, t6, a4
                  and          t1, t1, t1
864:              bltu         a0, a1, 867f
                  sub          t4, t1, s9
                  andi         t5, s1, -994
867:              lui          t1, 150229
                  lui          sp, 742371
                  sra          t5, s2, s3
                  xori         t6, t5, 1418
                  srl          t3, s6, ra
                  xori         s5, s8, -1555
                  slti         a3, a2, -1904
                  blt          s7, sp, 890f
                  srl          s7, t6, s0
                  and          s4, s1, a3
                  bge          s7, t1, 881f
                  lui          ra, 1036751
                  add          s10, s1, s4
                  add          t2, s8, a2
881:              sra          zero, t0, t3
                  beq          s10, s9, 883f
883:              bgeu         t6, s9, 896f
                  sll          s9, ra, s8
                  srai         t3, tp, 17
                  and          s5, s2, gp
                  sll          t4, t6, a7
                  bltu         s1, s8, 906f
                  srli         s1, a3, 1
890:              bge          t3, s10, 893f
                  beq          s10, t6, 892f
892:              andi         s0, a6, 1385
893:              beq          sp, t3, 903f
                  la           t0, sub_1
                  ori          a6, s3, -1421
                  sltiu        s6, s3, 1933
                  slt          s0, a3, sp
                  slti         s10, gp, 1550
                  addi         t0, t0, -193
                  nop
main_j1:          jalr         s5, t0, 194 #jump main -> sub_1
                  sra          tp, s10, a4
                  add          sp, s0, a2
896:              sll          s7, ra, t1
                  slt          sp, s10, a6
                  sltu         s6, a0, s4
                  srli         a1, s1, 6
                  slli         t3, ra, 20
                  bgeu         t3, s4, 909f
                  srl          ra, a5, s10
903:              bltu         a6, s11, 914f
                  add          t6, a4, s10
                  sll          s10, t0, t0
906:              bltu         t1, t0, 922f
                  addi         t0, t3, 1732
                  auipc        t5, 53925
909:              slti         s3, a2, 89
                  sll          s9, a0, t0
                  xor          a1, s1, a4
                  bne          a0, a6, 929f
                  slti         t2, t2, 1302
914:              andi         s9, ra, -1859
                  xor          a3, s5, s0
                  xori         t5, s10, 1264
                  slti         t1, t4, -1207
                  beq          t6, s5, 921f
                  sra          s0, s7, s0
                  nop
921:              bltu         s1, s1, 923f
922:              sra          s9, s2, s5
923:              add          s0, sp, s6
                  bge          s8, s4, 926f
                  srli         s2, a7, 1
926:              slti         gp, a3, 1279
                  lui          a3, 1034165
                  srai         a2, s3, 27
929:              slli         s5, t4, 29
                  sltiu        t3, s10, 1055
                  and          t2, t1, t3
                  xor          ra, s1, s7
                  xor          s10, s10, a4
                  xori         t3, s9, -1181
                  addi         t1, tp, -350
                  nop
                  lui          gp, 919148
                  and          s2, s10, s10
                  ori          a2, s3, -1773
                  nop
                  sll          zero, a5, sp
                  bgeu         a7, s8, 957f
                  xori         t6, a5, -1023
                  sltu         a4, s8, a4
                  srai         a1, a4, 2
                  auipc        gp, 549873
                  add          s9, ra, s5
                  slt          ra, a0, s2
                  srai         s9, s10, 18
                  bne          s3, a5, 953f
                  sltu         a6, s0, a6
                  ori          t1, a7, 242
953:              sltu         a1, t0, s4
                  sltiu        s0, a5, 852
                  and          a2, a2, t1
                  srli         t6, ra, 2
957:              bgeu         t0, a7, 968f
                  lui          s8, 721681
                  sra          t4, s8, s8
                  sltiu        gp, t3, 222
                  xori         a2, a3, 1300
                  sra          ra, t1, s10
                  bne          s6, t5, 969f
                  addi         ra, ra, -1800
                  bgeu         s11, t6, 966f
966:              sll          t1, a0, s5
                  bgeu         t3, t0, 983f
968:              bge          t0, a6, 970f
969:              xor          a2, s10, a5
970:              add          t2, gp, s4
                  auipc        s9, 624827
                  bge          s7, s3, 983f
                  bne          a6, t1, 986f
                  xor          sp, gp, t1
                  bltu         a6, zero, 989f
                  beq          s10, a4, 977f
977:              srai         s9, a2, 16
                  blt          s7, t0, 995f
                  srai         s7, s9, 22
                  bne          a6, s5, 983f
                  sltu         s4, s0, zero
                  xor          s9, a6, s6
983:              srli         s0, s0, 14
                  add          a7, s3, s3
                  beq          t3, tp, 995f
986:              andi         s4, t6, 1554
                  xor          ra, a7, a4
                  bgeu         t0, a4, 992f
989:              bgeu         sp, s3, 992f
                  xori         s8, a3, 150
                  bgeu         t0, s10, 1007f
992:              xori         s8, tp, -1767
                  bne          gp, t1, 1003f
                  srai         a1, t5, 28
995:              add          s2, s9, s9
                  xor          s10, gp, a3
                  lui          s5, 10323
                  ori          t0, s6, -1727
                  andi         ra, t2, 234
                  or           s7, a0, a0
                  ori          a7, t4, -1606
                  andi         s6, s10, -1933
1003:             add          s4, t3, s7
                  lui          s0, 929435
                  blt          s7, t5, 1020f
                  sll          s2, a4, s2
1007:             sltu         s0, t3, s7
                  or           s8, a3, ra
                  ori          ra, a4, 608
                  bge          zero, s6, 1028f
                  xor          t4, s3, a3
                  slt          a4, s6, a7
                  sltu         gp, s2, s0
                  blt          s3, t5, 1021f
                  bne          s6, zero, 1019f
                  andi         s1, gp, -1077
                  bgeu         t0, s10, 1026f
                  andi         s6, a4, -1043
1019:             srai         zero, t6, 9
1020:             slt          t6, t5, tp
1021:             xor          tp, s11, gp
                  lui          s9, 965965
                  andi         ra, a0, 1634
                  xor          s6, t1, s7
                  bltu         a4, s2, 1041f
1026:             bge          s0, a4, 1040f
                  sltu         s8, s8, s11
1028:             ori          t1, t0, -1279
                  or           zero, t2, a5
                  sra          zero, t1, s4
                  xori         t0, a7, -392
                  add          ra, s3, ra
                  and          s6, s8, a6
                  srli         zero, zero, 25
                  ori          s7, t4, -917
                  slt          s4, s9, s3
                  srli         a6, t6, 25
                  or           t3, s2, gp
                  sub          a1, a6, t3
1040:             addi         a4, s3, -1390
1041:             bgeu         gp, s7, 1057f
                  or           s9, a7, a6
                  lui          t6, 699789
                  add          sp, s0, s8
                  auipc        ra, 533557
                  sll          a6, a5, s8
                  auipc        sp, 85156
                  slti         s2, zero, -1697
                  bgeu         a4, a1, 1055f
                  slt          tp, s5, s11
                  sub          s10, t5, s2
                  bne          s7, a6, 1053f
1053:             slti         ra, s2, 1110
                  sub          t1, tp, t2
1055:             slli         t5, s3, 28
                  srli         s3, s6, 11
1057:             blt          a1, s6, 1060f
                  addi         zero, s8, -1996
                  slli         a1, s1, 28
1060:             beq          s3, t3, 1062f
                  xori         a2, a2, -460
1062:             sra          a7, s9, a4
                  and          ra, t5, a6
                  slt          t5, s4, t3
                  slt          gp, s10, t3
                  andi         t2, a0, -1955
                  sll          s6, t3, s3
                  beq          s6, t4, 1085f
                  srl          a6, tp, t4
                  slti         a3, s1, 864
                  sra          gp, a0, s10
                  beq          gp, s6, 1082f
                  bge          sp, s1, 1084f
                  blt          s5, a2, 1087f
                  sltiu        a4, a7, -769
                  srl          a7, a1, a7
                  bne          a3, a0, 1085f
                  andi         s3, s9, -771
                  xori         t3, a1, -213
                  addi         t6, a7, 1281
                  beq          s7, a4, 1096f
1082:             or           s8, s3, a6
                  andi         ra, a6, 795
1084:             slt          a2, a1, ra
1085:             bne          a7, tp, 1088f
                  add          a2, zero, a1
1087:             nop
1088:             slt          s7, s10, tp
                  beq          t4, t5, 1098f
                  nop
                  sub          s8, t4, a2
                  sll          ra, s8, a7
                  lui          s2, 2509
                  and          s7, tp, zero
                  sra          s3, s4, t4
1096:             andi         s1, s8, 941
                  bltu         t1, s10, 1101f
1098:             ori          tp, s2, -597
                  srli         s3, ra, 19
                  blt          s3, t1, 1102f
1101:             srai         s0, s0, 13
1102:             blt          s5, s11, 1104f
                  lui          a2, 633134
1104:             xori         s3, a0, 245
                  beq          s9, a4, 1108f
                  sltiu        s9, a6, -1976
                  sra          a2, a6, s8
1108:             ori          s5, a0, 1304
                  slli         a1, s8, 20
                  xor          s4, tp, t3
                  bge          s6, a3, 1128f
                  bge          t6, sp, 1123f
                  xor          s4, t1, t5
                  slt          t0, s6, a6
                  bgeu         s11, a0, 1122f
                  or           a6, s0, sp
                  and          tp, s11, ra
                  srai         a4, s4, 10
                  blt          s1, s11, 1130f
                  ori          s7, a3, 1236
                  sll          t4, t6, a2
1122:             srli         t0, s2, 16
1123:             bgeu         s6, s10, 1127f
                  addi         gp, a1, -1014
                  slt          t4, s5, t6
                  srai         gp, t5, 10
1127:             slti         t4, s4, -1642
1128:             slli         gp, t0, 25
                  slti         a6, s8, -785
1130:             andi         a6, s7, 786
                  xori         s4, gp, -1941
                  sltiu        a4, s9, -1410
                  xori         s2, t2, -1763
                  ori          t4, t3, 1919
                  beq          sp, s0, 1138f
                  ori          a2, tp, 916
                  add          sp, t2, s7
1138:             add          t5, gp, s10
                  lui          t6, 133431
                  srai         s6, t4, 16
                  srl          t3, s9, s8
                  bgeu         s6, a2, 1160f
                  slli         t1, s10, 7
                  sra          a6, s6, t6
                  add          s3, t6, s3
                  bltu         tp, s6, 1161f
                  bltu         a7, a7, 1148f
1148:             sltu         t5, s2, s2
                  bltu         a2, t6, 1159f
                  slti         t1, t3, 1236
                  auipc        s9, 882835
                  and          t1, s3, t4
                  slti         sp, a5, -1311
                  sub          t5, s8, s1
                  sll          s7, a1, s11
                  addi         s0, s2, -1284
                  bge          s5, sp, 1173f
                  bne          a3, s6, 1169f
1159:             bge          a3, t5, 1177f
1160:             srl          a3, s4, t2
1161:             sub          s5, s5, a3
                  slti         a6, zero, -1022
                  sltiu        t1, t6, -1718
                  srl          s1, s0, a7
                  or           t5, t2, a2
                  bltu         gp, s4, 1170f
                  srli         sp, s1, 6
                  sub          s6, s8, s3
1169:             beq          a0, tp, 1172f
1170:             sra          t3, t1, t6
                  sra          s5, s3, gp
1172:             beq          s1, a3, 1182f
1173:             or           a2, a1, a2
                  sra          s3, t3, s9
                  lui          a2, 1004484
                  slti         a6, s9, 1945
1177:             auipc        s6, 693523
                  sub          zero, ra, a2
                  bge          s9, t1, 1183f
                  srl          t4, sp, s7
                  srli         s3, gp, 11
1182:             sra          tp, t5, t3
1183:             lui          t3, 868626
                  bltu         sp, t6, 1201f
                  sll          s3, a0, s9
                  srl          s3, sp, a2
                  slti         a2, a6, -1275
                  bge          a7, tp, 1196f
                  beq          s9, s3, 1204f
                  and          a6, s4, s8
                  blt          t4, t5, 1200f
                  slt          s3, s2, s6
                  nop
                  bgeu         ra, tp, 1208f
                  slt          a3, t5, s0
1196:             slti         t4, tp, 757
                  beq          t3, t6, 1199f
                  ori          a2, a6, 213
1199:             sub          s2, t4, s7
1200:             slt          t1, t6, s8
1201:             srl          s1, t6, s9
                  bltu         t2, s0, 1218f
                  bge          a1, s4, 1216f
1204:             sltiu        s0, a1, 636
                  blt          s9, s8, 1207f
                  srli         s0, a4, 10
1207:             ori          t4, s8, -1074
1208:             sltu         s10, a2, t0
                  lui          a4, 358327
                  ori          s4, s4, -198
                  bge          s7, s0, 1212f
1212:             sltiu        t6, s0, -625
                  beq          t4, a6, 1215f
                  slti         sp, a1, 1036
1215:             or           s4, t1, tp
1216:             bne          t1, t3, 1219f
                  sra          s10, t2, t5
1218:             addi         s10, s5, 1035
1219:             slli         s3, s3, 30
                  sltiu        zero, s3, 909
                  bgeu         t1, a1, 1238f
                  bge          s0, t2, 1225f
                  sra          tp, s11, t5
                  addi         ra, t2, -168
1225:             addi         a7, a1, 807
                  bne          s0, a7, 1242f
                  bltu         s1, a5, 1234f
                  lui          a1, 581105
                  bltu         a6, s4, 1232f
                  sub          a3, zero, t5
                  nop
1232:             srl          s2, s2, s0
                  slti         a6, s6, -1987
1234:             sub          sp, s1, t2
                  sltiu        tp, t2, 449
                  auipc        s5, 949742
                  srl          t0, tp, a1
1238:             blt          s9, sp, 1249f
                  sra          t3, t6, s0
                  sltiu        a7, a0, 1223
                  nop
1242:             ori          sp, s4, -523
                  bne          t6, s1, 1249f
                  addi         ra, t3, 176
                  beq          tp, a0, 1256f
                  sra          t4, a6, tp
                  andi         t1, s9, 1245
                  blt          t4, s10, 1263f
1249:             lui          a4, 946880
                  and          s8, s11, s1
                  lui          t3, 106684
                  or           t3, a7, a1
                  bne          t5, s3, 1263f
                  add          sp, t4, gp
                  bne          tp, t4, 1271f
1256:             bgeu         s3, s0, 1257f
1257:             srli         s1, s6, 30
                  sra          sp, gp, a4
                  nop
                  bltu         s4, a4, 1271f
                  add          s10, t2, t6
                  srli         s9, a4, 20
1263:             sll          a6, t4, a7
                  sltu         t2, t0, ra
                  beq          s0, tp, 1271f
                  bne          a3, s4, 1281f
                  srl          t5, s1, t3
                  sltu         s9, t5, gp
                  srai         t5, a4, 28
                  bgeu         ra, a6, 1281f
1271:             sra          s2, s5, a5
                  xori         t1, a2, -50
                  or           a7, s1, s6
                  add          s0, s10, t0
                  xori         s9, t2, -335
                  bne          s1, s6, 1284f
                  sub          t4, a7, s7
                  srai         t5, t1, 5
                  sub          s3, s2, a7
                  or           a3, s3, tp
1281:             sll          ra, ra, t4
                  xori         t0, s9, 909
                  bge          t0, zero, 1284f
1284:             xori         ra, t1, -711
                  srai         s0, s7, 25
                  bge          s5, gp, 1293f
                  xori         a1, a4, -997
                  or           t3, t5, ra
                  bge          s2, s1, 1292f
                  lui          t0, 603712
                  xor          ra, a7, t6
1292:             and          a7, t2, a4
1293:             bgeu         tp, ra, 1303f
                  ori          s0, a2, -604
                  bgeu         s0, tp, 1311f
                  srai         s7, a3, 23
                  bltu         t1, a1, 1299f
                  sll          s7, zero, t3
1299:             nop
                  addi         s4, tp, 924
                  slli         a6, s2, 11
                  slli         t2, a2, 0
1303:             sltiu        s4, a3, 1944
                  addi         a3, a4, 313
                  ori          a3, s2, -620
                  sltu         zero, s2, a3
                  srli         t3, ra, 2
                  lui          t6, 476505
                  slt          t6, t6, t2
                  xor          t5, s0, ra
1311:             addi         a2, a1, 500
                  srai         s6, tp, 2
                  sra          t6, t3, s7
                  slti         t1, s11, 1195
                  srai         s2, t0, 7
                  slt          a4, s1, zero
                  sll          s6, s1, zero
                  ori          a3, t0, -1504
                  blt          ra, t1, 1332f
                  srli         s2, t4, 0
                  sll          a6, t4, ra
                  ori          a7, a1, -1539
                  sltu         s7, s1, ra
                  add          s5, a7, a1
                  slt          a7, a2, s2
                  blt          s6, gp, 1342f
                  or           zero, t6, gp
                  srai         t2, ra, 31
                  sltiu        s7, s7, 1848
                  or           a1, t1, sp
                  bge          t2, t4, 1348f
1332:             slt          s6, s3, s8
                  and          gp, t6, s7
                  andi         t3, t2, 156
                  srai         s8, zero, 10
                  andi         t6, s5, -1217
                  xori         t6, t0, -866
                  ori          t6, tp, -692
                  bge          s9, s9, 1356f
                  sll          a7, s1, t4
                  beq          a1, zero, 1351f
1342:             slt          a4, a6, s8
                  lui          a3, 600186
                  sltiu        a6, a6, -90
                  add          a2, gp, t5
                  addi         a1, tp, -1648
                  addi         s8, a7, -378
1348:             slti         s1, sp, -1558
                  ori          sp, a7, 1012
                  xori         a7, s11, -1492
1351:             bltu         s4, s3, 1367f
                  bge          a3, s3, 1361f
                  srl          t1, s3, t2
                  srli         t4, t5, 17
                  sub          t6, t2, ra
1356:             slli         s7, a0, 8
                  andi         a3, s0, 848
                  slti         s8, t6, -1222
                  xor          s1, t4, s1
                  sltu         zero, sp, s3
1361:             bgeu         a5, s9, 1364f
                  sltu         gp, s7, s7
                  andi         a6, t3, -1733
1364:             xor          t4, t5, a2
                  nop
                  sltu         s8, a1, s11
1367:             slli         s0, s4, 1
                  add          s8, a2, s2
                  nop
                  nop
                  bne          t3, s10, 1374f
                  auipc        s9, 291269
                  slti         s3, a0, 538
1374:             slli         s7, t1, 20
                  sltiu        a2, a6, -621
                  or           t1, t2, t2
                  xori         a2, s7, -184
                  sltiu        s3, t6, -868
                  slti         s0, t4, -381
                  bltu         t0, a1, 1395f
                  bltu         tp, t1, 1392f
                  srai         t1, t0, 23
                  auipc        s9, 507665
                  ori          s3, gp, -809
                  slt          s0, t0, a4
                  slti         a3, a5, 213
                  addi         s7, a7, -1542
                  slli         t4, zero, 0
                  addi         s8, a7, 698
                  andi         a2, s3, -494
                  srli         a4, ra, 19
1392:             lui          s5, 748710
                  ori          t1, s5, 1654
                  or           s4, a6, s8
1395:             sltu         s10, sp, s10
                  xori         ra, a2, 1304
                  srl          sp, t6, s5
                  or           sp, s8, t2
                  sra          a3, ra, s4
                  sub          t4, a0, s6
                  sltiu        t1, s7, -279
                  blt          s2, s10, 1406f
                  srl          s7, s6, s10
                  slti         zero, s6, 749
                  nop
1406:             sub          a6, a6, s9
                  xor          t6, ra, a5
                  lui          a1, 429404
                  slt          t1, s5, a5
                  srli         s10, a7, 21
                  srli         a3, s8, 7
                  sltu         a1, a2, s3
                  addi         a2, t6, -1409
                  beq          s8, s10, 1416f
                  xor          s5, a4, s10
1416:             srli         t0, s5, 20
                  la x15, test_done
                  jalr x0, x15, 0
test_done:        
                  li gp, 1
                  ecall
sub_4:            auipc        t5, 1028786
                  addi         s11, s11, -56
                  xor          t0, s4, t5
                  or           tp, t6, a7
                  auipc        a1, 667551
                  ori          tp, s9, 1519
                  slti         s6, t3, -1849
                  sw           s5, 4(s11)
                  slt          a7, a2, s2
                  sub          s4, zero, a0
                  auipc        t6, 164805
                  la           s6, sub_5
                  addi         s6, s6, 154
                  andi         t0, s5, 111
                  bltu         t3, s10, sub_4_j8 #branch to jump instr
                  slli         s9, tp, 22
                  sub          t2, ra, a0
                  sll          gp, a1, s5
sub_4_j8:         jalr         s5, s6, -154 #jump sub_4 -> sub_5
                  la           s10, sub_6
                  srai         t5, t4, 13
                  add          s9, a7, s7
                  srai         sp, ra, 29
                  nop
                  addi         s0, a7, -1054
                  addi         s10, s10, -409
                  nop
sub_4_j9:         jalr         s5, s10, 409 #jump sub_4 -> sub_6
                  auipc        s2, 98629
                  bge          a7, t3, 18f
                  bne          s2, t6, 20f
                  beq          a5, a4, 10f
                  or           sp, tp, gp
                  sll          a2, a3, t0
                  bgeu         a7, a3, 20f
                  blt          s5, s3, 22f
                  nop
                  bgeu         gp, s8, 28f
10:               slli         s1, sp, 13
                  sub          t6, s11, s9
                  ori          s1, s2, 1483
                  bne          s11, s7, 22f
                  sub          s4, zero, s11
                  srai         s0, a6, 23
                  slti         s0, t5, 894
                  bgeu         a2, tp, 22f
18:               sll          gp, s11, s11
                  auipc        t2, 569705
20:               slti         s6, s4, -1339
                  or           sp, s9, s1
22:               xori         s4, s3, 1851
                  sltu         t3, a5, t5
                  bltu         s8, s10, 28f
                  ori          s2, a7, 723
                  sltu         t6, ra, s0
                  nop
28:               auipc        t5, 240829
                  auipc        t1, 710324
                  lui          s4, 49886
                  addi         s2, s3, -1248
                  srai         tp, a0, 2
                  add          t1, a0, s1
                  xori         a3, t3, -1464
                  sltiu        a1, a5, 1385
                  xor          gp, sp, s1
                  srli         t1, a4, 10
                  bge          zero, s2, 46f
                  bltu         t0, t6, 44f
                  sltu         a4, t1, t4
                  bgeu         gp, a7, 46f
                  sll          t3, s2, t1
                  sll          s6, t1, t2
44:               slti         t2, a2, 1499
                  and          zero, t5, a0
46:               sub          s1, a4, s1
                  slli         a7, tp, 18
                  and          t6, a3, s0
                  sll          s7, s5, ra
                  lw           s5, 4(s11)
                  slti         a1, s6, -306
                  auipc        s8, 375047
                  nop
                  srai         s7, s4, 3
                  ori          t1, t4, 1332
                  addi         s11, s11, 56
                  lui          s6, 481960
86:               addi x16, x21, 1
86:               jalr x16, x16, 0
sub_8:            srli         s7, s11, 14
                  ori          a1, s8, 661
                  addi         s11, s11, -12
                  srai         gp, a7, 4
                  slli         t3, t4, 11
                  sw           s5, 4(s11)
                  nop
                  nop
                  xor          s0, s6, t4
                  or           s3, a0, s3
                  andi         s9, ra, -1431
                  srl          t2, t5, a4
                  la           sp, region_1+1657 #start riscv_load_store_rand_instr_stream_0
                  sb           s2, -168(sp)
                  sb           t6, 33(sp)
                  ori          a2, a4, -1808
                  or           s4, a1, t4
                  add          t3, t0, tp
                  lb           s7, -112(sp)
                  sb           s3, 250(sp)
                  srai         s8, t3, 17
                  sh           s9, 1(sp)
                  sb           t2, 256(sp)
                  lbu          s4, 1(sp)
                  add          gp, s9, a0
                  lb           t0, -160(sp)
                  addi         t4, s9, -399
                  sb           t5, 40(sp)
                  auipc        a1, 661806
                  lb           s3, 209(sp)
                  xori         gp, s2, 844
                  lbu          s7, 128(sp)
                  lbu          s10, -81(sp)
                  lb           s7, 73(sp)
                  slti         t4, gp, 263
                  sb           t4, -8(sp)
                  slti         t2, s7, 1571
                  lbu          zero, 56(sp)
                  lb           t5, -256(sp)
                  sb           a4, -62(sp)
                  sb           ra, -206(sp)
                  sb           s0, -76(sp)
                  slt          s7, t0, t6
                  sb           s6, -19(sp)
                  sb           s11, 67(sp)
                  lb           s9, 204(sp)
                  ori          gp, s4, 1285
                  sh           t1, 83(sp)
                  auipc        s4, 363391
                  sltu         a7, s3, t2
                  lb           s10, 156(sp)
                  lbu          t1, 88(sp)
                  sltiu        t4, zero, 620
                  sh           s8, 153(sp)
                  lbu          a1, 200(sp)
                  lb           s8, 210(sp)
                  sb           tp, -208(sp) #end riscv_load_store_rand_instr_stream_0
                  la           s7, region_0+1518 #start riscv_load_store_rand_instr_stream_1
                  lhu          s2, -8(s7)
                  srai         t2, s11, 11
                  and          s10, gp, s10
                  lbu          s3, -5(s7)
                  sb           gp, 15(s7)
                  sb           s1, -11(s7)
                  sb           gp, -1(s7)
                  sh           a1, 16(s7)
                  lb           zero, 5(s7)
                  or           s5, t1, s7
                  sll          gp, t3, s8
                  nop
                  lb           a4, -2(s7)
                  slti         s1, a3, -386
                  lw           s5, -2(s7)
                  and          t6, s6, s1
                  sll          t0, s7, a7
                  lui          t0, 647075
                  lb           a2, 8(s7)
                  lbu          ra, 13(s7)
                  sltiu        t6, zero, -1361
                  slt          a1, s4, s3
                  srli         a3, a7, 1
                  slli         tp, tp, 8
                  srli         a7, a2, 26
                  srl          s1, ra, zero
                  srl          a7, s10, a0
                  andi         t0, a7, 1755
                  slt          a6, s1, s9
                  lb           s8, -5(s7)
                  ori          ra, s8, 814
                  sb           a5, -15(s7)
                  ori          t0, t6, 335
                  lbu          s6, -7(s7)
                  ori          t2, t2, 1737
                  sh           t6, 16(s7)
                  ori          gp, s2, 1459
                  ori          a7, sp, 253
                  slti         a4, a6, -1983
                  lbu          s2, -3(s7) #end riscv_load_store_rand_instr_stream_1
                  la           sp, region_0+698 #start riscv_load_store_rand_instr_stream_12
                  nop
                  srl          zero, zero, s5
                  sb           ra, -547(sp)
                  or           a1, s8, gp
                  lbu          s5, -349(sp)
                  slt          a6, gp, ra
                  lb           s9, 555(sp)
                  xori         s8, t4, -256
                  slli         a6, s9, 5
                  lw           a2, 1034(sp)
                  slli         s3, s1, 5
                  ori          t2, t2, 413
                  sll          gp, s11, ra
                  sw           t5, -614(sp)
                  or           a6, a7, s1
                  ori          s7, t1, 1451
                  sb           s3, -456(sp)
                  sll          gp, s0, s3
                  andi         s10, s8, 1016
                  slli         s6, t4, 19
                  slli         zero, a0, 7
                  sll          a4, s3, s0
                  lb           s2, 298(sp)
                  xor          t6, s2, a1
                  lbu          a3, -450(sp)
                  ori          a4, t3, -1677
                  lbu          s5, -408(sp)
                  srl          ra, s2, s7
                  srli         a1, a3, 2
                  srai         zero, t4, 31
                  sra          s0, s4, s6
                  andi         a3, t4, 1934
                  lbu          tp, 109(sp)
                  lhu          t2, 146(sp)
                  sb           t0, 713(sp)
                  sra          t3, t2, a7
                  lh           s5, 924(sp)
                  lb           s7, 1101(sp)
                  slt          a3, t2, a3
                  lb           t5, 1233(sp)
                  sh           s2, 1104(sp) #end riscv_load_store_rand_instr_stream_12
                  la           t0, region_0+502 #start riscv_load_store_rand_instr_stream_7
                  slti         t6, gp, 204
                  auipc        a1, 621071
                  xor          sp, a4, a3
                  lb           s9, 99(t0)
                  lh           s5, -42(t0)
                  lb           s8, 11(t0)
                  sra          t3, ra, t0
                  lb           t4, -13(t0)
                  sb           tp, 253(t0)
                  lb           t4, 167(t0)
                  srai         s1, a2, 24
                  sll          s7, tp, ra
                  andi         sp, a0, 1874
                  sb           s9, 59(t0)
                  lh           t1, -158(t0)
                  lb           s2, 166(t0)
                  lh           s7, 86(t0)
                  lw           tp, 242(t0)
                  slt          s2, a6, t0
                  sltiu        a6, s8, -1401
                  sltiu        s5, s9, -1892
                  lb           s3, 249(t0)
                  sll          t6, a5, a3
                  sub          a6, s2, zero
                  sub          s2, sp, s7
                  or           t5, s0, s2
                  lui          tp, 898602
                  lh           gp, -164(t0)
                  lbu          s10, 72(t0)
                  xori         a2, t2, 1515
                  sub          ra, s3, ra
                  lw           ra, -210(t0)
                  addi         t5, s5, -1888
                  add          s6, zero, s1
                  sb           s3, 125(t0)
                  slt          a4, a1, a5
                  slt          t5, ra, a4
                  sb           s7, 3(t0)
                  srai         t3, sp, 31
                  sll          t5, s11, a0
                  lui          s6, 738693
                  add          sp, s8, a2
                  lbu          t2, 183(t0)
                  lb           a6, 65(t0)
                  sb           t1, -197(t0) #end riscv_load_store_rand_instr_stream_7
                  la           t6, region_1+1803 #start riscv_load_store_rand_instr_stream_3
                  add          s2, s1, s7
                  lhu          a1, -1135(t6)
                  nop
                  lb           tp, -647(t6)
                  sb           t1, 146(t6)
                  andi         t3, t6, -62
                  auipc        a6, 122289
                  sltu         s6, t1, a4
                  or           gp, zero, t0
                  srl          gp, a7, tp
                  lhu          s9, 9(t6)
                  andi         a6, zero, -1896
                  lb           s10, 99(t6)
                  nop
                  srai         zero, t4, 5
                  andi         a1, ra, -1526
                  slt          s0, zero, s5
                  lh           s8, -293(t6)
                  lh           t0, 27(t6)
                  slli         zero, t2, 15
                  addi         s9, s11, 317
                  sltiu        a4, a1, -184
                  sb           s8, -746(t6)
                  xor          a6, a4, sp
                  sb           t6, -1772(t6)
                  and          s1, t4, a0
                  sra          zero, a2, a3
                  add          s9, s4, s2
                  sb           zero, -1591(t6)
                  slt          s9, t5, s10
                  lb           zero, 162(t6)
                  sub          tp, s10, t6
                  lbu          ra, -1236(t6)
                  lh           tp, -197(t6)
                  or           s0, a4, s8
                  sltiu        s3, t0, 381
                  andi         t3, ra, -655
                  sltu         s4, t3, ra
                  lb           s7, -1645(t6)
                  slt          t3, a3, s10
                  slt          t4, t0, s3
                  lb           s9, 32(t6) #end riscv_load_store_rand_instr_stream_3
                  la           sp, region_0+557 #start riscv_load_store_rand_instr_stream_6
                  slli         s7, s4, 9
                  xori         s9, t5, 1802
                  lb           t3, 750(sp)
                  sb           s11, 458(sp)
                  sltiu        a6, a4, 1776
                  slli         s0, a5, 24
                  lw           ra, 1115(sp)
                  xor          t2, t6, t1
                  lb           s2, 892(sp)
                  ori          t4, a2, 2043
                  sra          s10, s3, a5
                  sra          ra, s2, s3
                  lh           a1, 1101(sp)
                  lh           s2, 1409(sp)
                  sltu         t1, s6, s4
                  lbu          s5, 600(sp)
                  xor          a6, s9, gp
                  lh           a7, 657(sp)
                  sb           s10, 1272(sp)
                  sb           a5, 1188(sp)
                  xor          zero, a3, a1
                  sw           tp, 1163(sp)
                  auipc        s5, 956483
                  slti         t0, tp, 1576
                  sb           s1, 200(sp)
                  lb           s1, 8(sp)
                  lbu          s3, 556(sp)
                  sltu         t5, a7, s6
                  sltiu        tp, zero, -314
                  lhu          s4, 399(sp)
                  lhu          s9, 357(sp)
                  lbu          t6, -294(sp)
                  sltu         t2, s11, s7
                  sb           a7, 408(sp) #end riscv_load_store_rand_instr_stream_6
                  la           s7, region_0+996 #start riscv_load_store_rand_instr_stream_8
                  or           s8, s5, s6
                  sb           tp, -17(s7)
                  sltiu        t3, s10, 782
                  lh           s4, -36(s7)
                  slti         zero, a0, -362
                  sb           t4, -45(s7)
                  lbu          gp, 47(s7)
                  slli         s0, tp, 20
                  or           a2, s1, sp
                  lui          s3, 340864
                  slti         a6, s11, 1196
                  srai         s8, s0, 28
                  sltiu        s9, s1, 1186
                  sub          s6, s10, t1
                  and          t2, a5, zero
                  and          tp, a1, a4
                  lh           a4, 20(s7)
                  lh           a7, -32(s7)
                  sb           sp, -57(s7)
                  sh           s4, -20(s7)
                  add          zero, s8, s1
                  or           s6, a7, a6
                  lbu          tp, 59(s7)
                  sb           s7, 40(s7)
                  srai         s5, s8, 31
                  lbu          t3, -27(s7)
                  lh           s9, -54(s7)
                  lbu          t0, -27(s7) #end riscv_load_store_rand_instr_stream_8
                  la           sp, region_0+205 #start riscv_load_store_rand_instr_stream_13
                  sltiu        a7, t3, -1816
                  sltiu        s0, t0, 1659
                  andi         s4, s10, 987
                  slli         s5, s11, 0
                  sub          a3, s10, t4
                  lbu          a1, -2(sp)
                  sb           s1, 24(sp)
                  sra          s1, s10, zero
                  ori          t6, s1, 1125
                  sw           s10, 51(sp)
                  sltiu        a6, t2, -602
                  lui          a7, 281665
                  srai         s6, ra, 24
                  sb           s3, -36(sp)
                  xori         t2, a3, -694
                  and          tp, a0, s10
                  sb           a3, 64(sp)
                  or           a2, a2, a3
                  slt          s8, gp, s8
                  lbu          zero, 58(sp)
                  sra          s8, t0, tp
                  sltu         gp, s7, a7
                  sltiu        a2, t1, -1334
                  sb           s5, -63(sp)
                  and          t0, a2, a5
                  addi         s1, s10, -574
                  sh           ra, -1(sp)
                  lb           s0, -53(sp)
                  sra          t5, t3, a4
                  xori         a4, s0, 605
                  add          a4, s2, s6
                  srl          a2, t5, s6
                  ori          t2, sp, -237
                  sh           a7, -15(sp) #end riscv_load_store_rand_instr_stream_13
                  la           s0, region_1+1381 #start riscv_load_store_rand_instr_stream_10
                  slti         s5, tp, 473
                  lh           s7, -77(s0)
                  lui          s5, 740564
                  sb           a6, -196(s0)
                  slli         tp, gp, 5
                  xor          t0, s9, a0
                  sltu         a3, gp, s0
                  lbu          s2, 142(s0)
                  lb           s2, -34(s0)
                  slli         zero, t5, 3
                  lb           t4, -119(s0)
                  lbu          a6, 226(s0)
                  lbu          t2, 192(s0)
                  lhu          t0, -229(s0)
                  nop
                  lbu          a4, -196(s0)
                  lbu          t0, 56(s0)
                  sb           a6, -130(s0)
                  sb           s11, 228(s0)
                  lh           s3, -201(s0)
                  lb           tp, 239(s0)
                  sll          zero, t1, s10
                  lb           t0, 237(s0)
                  lui          a4, 501112
                  srli         sp, zero, 2
                  lb           a1, 24(s0)
                  lh           gp, 69(s0)
                  sb           s2, -222(s0)
                  lb           s9, 29(s0) #end riscv_load_store_rand_instr_stream_10
                  la           sp, region_0+1055 #start riscv_load_store_rand_instr_stream_11
                  sb           s10, 7(sp)
                  slt          s8, s1, tp
                  sh           tp, -5(sp)
                  slti         a4, s0, 699
                  srli         s3, s0, 15
                  xori         s6, s6, 533
                  lw           s7, -11(sp)
                  andi         t5, s2, 1590
                  sltiu        t5, s4, -351
                  or           s1, ra, a1
                  sb           s10, 1(sp)
                  sb           a5, -12(sp)
                  lui          a6, 458847
                  slt          ra, s2, s7
                  sb           a1, 13(sp)
                  lui          a6, 328408
                  ori          zero, t3, -179
                  lbu          s2, -2(sp)
                  andi         s5, ra, -1412
                  lbu          s8, -10(sp)
                  lh           s0, 11(sp)
                  slti         s9, zero, 1371
                  lbu          tp, 2(sp)
                  lhu          s4, -3(sp)
                  sh           a3, 3(sp) #end riscv_load_store_rand_instr_stream_11
                  la           ra, region_1+1659 #start riscv_load_store_rand_instr_stream_4
                  xori         s5, a1, -1565
                  lw           a3, 13(ra)
                  lbu          t5, 2(ra)
                  ori          t3, s2, 1515
                  sb           s2, -6(ra)
                  slt          t4, s5, t5
                  lh           a7, -11(ra)
                  sb           t2, 8(ra)
                  lb           a6, -14(ra)
                  sb           a1, 4(ra)
                  lbu          a2, 4(ra)
                  sb           s1, -8(ra)
                  add          sp, t5, s11
                  lb           sp, -1(ra)
                  addi         s6, a1, 1170
                  sub          t2, s1, tp
                  sb           tp, -16(ra)
                  lw           s9, 9(ra)
                  slt          t4, s10, s7
                  lbu          s6, -4(ra)
                  xor          t3, s6, gp
                  addi         s8, t6, -590
                  sll          a7, zero, s7
                  sll          gp, sp, a1
                  sb           sp, -12(ra)
                  andi         a7, s4, -1106
                  lb           t6, -16(ra)
                  add          s9, s4, tp
                  nop
                  lh           s2, 5(ra)
                  slti         s0, s3, -245
                  sltiu        t5, s5, 459
                  sh           a3, -1(ra)
                  lb           gp, 10(ra)
                  lbu          a2, -12(ra)
                  sh           zero, -5(ra) #end riscv_load_store_rand_instr_stream_4
                  and          t0, a1, s5
                  sra          s2, t6, sp
                  sll          t6, s2, s1
                  sub          a1, s8, a7
                  sub          s2, tp, a2
                  bne          s9, s11, 20f
                  bltu         s10, s5, 26f
                  or           a7, t4, a7
                  sltiu        tp, s0, -207
                  lui          s4, 506838
                  sll          a2, t1, s11
                  xor          a1, a3, s11
                  sub          t6, s7, t1
                  ori          t0, a7, 219
                  srai         s0, a4, 31
                  slli         s3, s6, 26
                  nop
                  bltu         s8, s3, 32f
                  nop
                  bgeu         t5, a0, 28f
20:               sra          s0, s2, a2
                  bge          zero, t5, 32f
                  add          a2, a0, a7
                  and          a4, s10, t0
                  sub          zero, t3, gp
                  bgeu         gp, t6, 26f
26:               slt          t5, t2, t4
                  slti         t3, a7, 1655
28:               nop
                  slt          gp, s2, a4
                  beq          t3, a3, 42f
                  sra          t5, s6, s2
32:               ori          t1, t0, -1017
                  slt          a4, s1, s3
                  bltu         s7, t3, 42f
                  nop
                  bgeu         zero, a2, 37f
37:               bgeu         t1, t4, 43f
                  slli         a2, a6, 23
                  ori          s7, t2, -840
                  sll          a1, a0, t1
                  ori          s3, a0, 844
42:               bne          a0, a6, 46f
43:               sltu         s3, a5, a1
                  bgeu         ra, sp, 58f
                  slt          a3, t1, t2
46:               nop
                  or           s9, s8, s11
                  andi         sp, s5, -16
                  sra          t3, a4, ra
                  bgeu         gp, s1, 60f
                  slt          a7, a1, s7
                  addi         a2, zero, 957
                  ori          s6, tp, 1910
                  sll          gp, t3, t5
                  slli         s8, a7, 27
                  beq          s5, s11, 74f
                  add          s8, a7, s3
58:               slli         zero, t2, 28
                  bne          t0, a0, 61f
60:               bne          a3, s0, 71f
61:               blt          s2, s7, 80f
                  sra          zero, t6, s0
                  beq          a4, a6, 83f
                  bgeu         s8, t1, 81f
                  bne          s4, s10, 72f
                  or           t3, a0, t2
                  sltu         s6, s1, ra
                  sltiu        tp, a0, 523
                  bltu         s8, s4, 70f
70:               bne          gp, t5, 88f
71:               lui          a2, 582507
72:               and          a7, s9, sp
                  ori          s9, s0, -1889
74:               sll          t4, s6, zero
                  bltu         s1, a6, 94f
                  beq          a1, s9, 77f
77:               srl          tp, t0, s9
                  add          s8, s1, s8
                  srli         gp, a6, 5
80:               sra          gp, s5, s5
81:               sll          a3, s0, a7
                  lui          s6, 588753
83:               nop
                  bne          a7, a2, 104f
                  xor          sp, s4, a6
                  lui          s9, 418363
                  sll          tp, s6, s9
88:               sltiu        t1, a2, 205
                  add          t5, ra, s6
                  beq          t2, t2, 92f
                  srai         a2, s1, 13
92:               addi         gp, s5, -1664
                  sra          t4, s4, s4
94:               bltu         s7, sp, 99f
                  ori          t4, s0, -1513
                  sltiu        a6, s3, -173
                  sll          a6, s9, t1
                  auipc        s7, 848986
99:               lui          t0, 307352
                  xor          gp, a3, t2
                  bne          s5, s5, 119f
                  andi         a1, s3, -1966
                  slt          s9, tp, s2
104:              and          a3, a2, a5
                  addi         a7, s7, -1892
                  sub          s2, s5, s4
                  bne          t3, t1, 109f
                  srai         a3, t0, 14
109:              srai         sp, s7, 30
                  sra          t2, s0, zero
                  bltu         zero, s10, 122f
                  addi         t0, s11, -1621
                  sll          a2, s7, t4
                  bne          s11, t2, 125f
                  slt          t0, t1, t3
                  sra          t3, t4, s5
                  bgeu         zero, s9, 135f
                  slti         s8, gp, 332
119:              sll          s4, ra, t1
                  ori          zero, s8, 937
                  addi         s5, s1, -1796
122:              sll          a4, a3, a5
                  auipc        t1, 666123
                  bgeu         t3, tp, 135f
125:              add          a2, s1, t3
                  add          tp, a5, t6
                  bne          t5, t3, 146f
                  and          gp, s8, s9
                  bne          a5, a5, 144f
                  bgeu         s1, a3, 137f
                  and          s1, s2, tp
                  sra          a4, s10, a1
                  lui          s6, 288833
                  sub          s5, a3, s7
135:              auipc        gp, 771340
                  and          s2, s4, s11
137:              and          t2, s5, a0
                  lui          a7, 961599
                  sub          s7, s4, s7
                  sub          a6, zero, t5
                  blt          a4, t1, 155f
                  addi         a3, a5, 1698
                  slli         t4, a2, 30
144:              bge          s5, t6, 146f
                  sll          s8, a4, s7
146:              sltiu        a1, a0, -894
                  xori         s2, a1, -1069
                  bne          a1, s0, 160f
                  andi         s3, s10, 1262
                  bgeu         a7, s8, 170f
                  srai         a2, t3, 31
                  bgeu         s1, t6, 170f
                  srl          s5, t3, a6
                  andi         s8, a7, -1219
155:              nop
                  slti         s3, s3, 1916
                  xor          a7, s10, tp
                  ori          s5, t3, -620
                  sll          a2, s4, zero
160:              ori          a6, s2, 889
                  addi         a2, s9, 177
                  bgeu         a1, t3, 181f
                  lui          s8, 137988
                  sll          s9, s4, zero
                  bgeu         s8, t6, 174f
                  sltiu        sp, s6, -170
                  add          a7, t5, s3
                  nop
                  bltu         t3, t3, 187f
170:              beq          s2, sp, 172f
                  nop
172:              srl          s7, t4, gp
                  sltiu        a4, s4, 1924
174:              bne          s5, sp, 178f
                  ori          a7, s5, -1849
                  sub          t4, t3, s2
                  add          a1, t0, s4
178:              sub          s5, ra, gp
                  srl          a7, a4, t4
                  lui          s8, 654612
181:              ori          s2, ra, -1705
                  xor          s0, t3, s3
                  srli         sp, s2, 10
                  bge          s9, a0, 195f
                  xori         ra, a6, -297
                  add          t1, t0, s7
187:              addi         t4, a2, -889
                  sub          s9, gp, t0
                  auipc        s5, 346465
                  slli         t2, s7, 28
                  bltu         a2, tp, 192f
192:              xor          t0, t4, a2
                  sra          s0, s4, s10
                  sub          s10, a4, tp
195:              sra          a4, gp, a1
                  add          t0, s5, t4
                  sltiu        t6, s3, -1382
                  bne          gp, s6, 208f
                  sltiu        s9, s9, 1013
                  xor          s5, zero, t3
                  sra          s6, a7, s4
                  bltu         s11, s2, 222f
                  auipc        gp, 481298
                  addi         s4, a2, -1948
                  srai         s10, s10, 11
                  sltu         s0, sp, s9
                  addi         s6, s3, 787
208:              sub          ra, t0, gp
                  srl          t5, gp, a1
                  bge          t4, s11, 225f
                  srl          t5, s9, s7
                  srli         tp, t4, 26
                  bgeu         ra, a3, 230f
                  nop
                  slti         s7, s9, 1035
                  lui          t4, 985741
                  ori          a3, a3, 783
                  nop
                  sra          a6, s3, s5
                  auipc        zero, 960877
                  srai         t5, t3, 11
222:              sltu         a3, a4, s4
                  beq          s5, s1, 224f
224:              beq          a4, t3, 229f
225:              bltu         a5, a3, 245f
                  slti         t5, s6, 1156
                  beq          sp, s0, 233f
                  blt          a6, s9, 236f
229:              sltiu        s9, s11, 883
230:              bne          t1, a0, 231f
231:              bge          s2, t6, 233f
                  addi         s1, zero, 1908
233:              bgeu         t2, t3, 234f
234:              slti         gp, t2, 1838
                  and          a6, a3, t5
236:              srai         t0, t1, 22
                  andi         s1, t5, 1643
                  bgeu         a1, s5, 256f
                  bne          s5, s10, 253f
                  slt          s0, s4, s6
                  add          s0, s11, a0
                  slt          t1, t4, s7
                  srai         s10, t5, 11
                  auipc        a2, 825990
245:              bne          s0, s7, 263f
                  ori          s6, t1, 473
                  beq          t5, tp, 249f
                  srl          s4, t4, s6
249:              bge          a7, s3, 250f
250:              andi         t3, s6, 942
                  ori          ra, a5, -1921
                  ori          a7, s5, 862
253:              xori         tp, s0, 1920
                  lui          s4, 984155
                  andi         a7, t1, -417
256:              bge          a4, a4, 271f
                  slt          a4, gp, zero
                  ori          s2, s11, 1918
                  bge          s6, s10, 267f
                  sra          a2, a0, s0
                  slti         a7, ra, 1483
                  add          gp, s5, a3
263:              xori         s8, t6, 1331
                  and          s2, t2, s3
                  slt          s8, sp, t2
                  xor          s5, s2, a1
267:              slli         s3, a6, 26
                  nop
                  addi         s10, s7, 1147
                  sltu         a4, t2, s7
271:              srai         zero, t2, 24
                  slt          s10, t1, a6
                  slt          t1, a7, t5
                  addi         t2, s0, 52
                  auipc        a2, 501516
                  bgeu         sp, t5, 277f
277:              blt          sp, a4, 297f
                  xor          a6, t0, a7
                  slli         s4, a4, 23
                  andi         a1, tp, 340
                  bne          a1, a3, 301f
                  sra          tp, sp, s6
                  add          a4, a3, s5
                  blt          s3, tp, 289f
                  srai         s3, ra, 17
                  srai         t5, s5, 23
                  nop
                  lui          s3, 974670
289:              beq          a1, s6, 306f
                  blt          a0, s5, 299f
                  slli         t3, s5, 24
                  bgeu         a4, s1, 303f
                  srai         t3, t3, 16
                  slt          s1, t3, s8
                  auipc        s5, 511259
                  xori         zero, a6, -721
297:              bltu         s5, t0, 304f
                  sltiu        a4, zero, 926
299:              or           tp, s2, s3
                  add          tp, a2, s1
301:              blt          gp, a6, 305f
                  bge          t3, sp, 314f
303:              xor          sp, s3, sp
304:              sra          t1, zero, s5
305:              beq          gp, t6, 316f
306:              and          tp, a6, t2
                  bne          s8, s5, 308f
308:              sltu         s3, t3, s4
                  slli         tp, t0, 23
                  addi         s2, a0, -505
                  sltiu        s5, t6, -198
                  sra          sp, s9, s10
                  or           t1, a3, zero
314:              sltiu        s6, t4, -641
                  sub          s2, t4, s6
316:              auipc        a2, 749428
                  andi         a7, tp, 935
                  slt          a2, s2, s8
                  blt          s1, a2, 337f
                  andi         t1, a7, 255
                  andi         t0, s2, -1942
                  bltu         tp, a4, 337f
                  nop
                  auipc        s7, 624012
                  blt          t1, t0, 327f
                  slt          s4, t3, t2
327:              sub          s6, s1, s4
                  ori          a3, s9, -1041
                  beq          s4, a3, 330f
330:              srli         a3, t2, 30
                  andi         s9, a2, -1147
                  sltiu        a6, s2, -95
                  blt          t3, t5, 335f
                  xor          t1, s10, a7
335:              blt          t5, t4, 346f
                  sra          a7, t0, a0
337:              sra          s8, t1, s8
                  auipc        s10, 209770
                  sub          s6, t5, s2
                  bltu         t1, zero, 359f
                  blt          s8, gp, 351f
                  sub          a4, a5, t1
                  slli         t0, s4, 28
                  sltu         s10, a4, a3
                  or           s1, t1, zero
346:              sra          s9, s6, a3
                  bge          a5, t3, 367f
                  nop
                  srl          a2, s10, t2
                  bge          s4, t6, 369f
351:              sll          t0, a0, gp
                  bge          ra, t1, 358f
                  lui          s5, 124793
                  auipc        gp, 130842
                  sub          s9, s7, a3
                  lui          a2, 134307
                  add          s3, s0, s4
358:              sra          t0, t4, s11
359:              sll          s9, s5, a1
                  sub          a3, zero, a3
                  or           s8, sp, s1
                  slti         gp, s11, -2021
                  sltiu        s4, t5, 1141
                  slti         s7, a6, 327
                  srai         a4, s5, 29
                  la           s1, region_1+1292 #start riscv_load_store_rand_instr_stream_2
                  lh           s7, -110(s1)
                  addi         a4, s2, 1870
                  srai         s3, t0, 6
                  sltiu        t0, a4, 1854
                  lh           s5, 138(s1)
                  auipc        t2, 538261
                  lhu          t5, -6(s1)
                  lbu          t2, -183(s1)
                  lw           t2, 208(s1)
                  lbu          ra, -107(s1)
                  lbu          a4, -17(s1)
                  srl          a7, zero, s9
                  ori          tp, a6, 1639
                  addi         a2, s4, -53
                  sltiu        a6, s4, 419
                  slli         a7, s0, 13
                  sra          tp, tp, t4
                  sltu         t4, a0, s0
                  lw           s10, 96(s1)
                  sub          a3, s1, s4
                  lbu          t1, 235(s1)
                  slti         ra, a1, 1245
                  nop
                  sb           s0, 96(s1)
                  andi         s7, s3, 1179
                  sh           a1, -94(s1)
                  sb           s0, 223(s1)
                  nop
                  lb           s3, -150(s1)
                  sltiu        s5, t2, 231
                  lh           s0, 144(s1)
                  addi         ra, t2, 1264
                  nop
                  sra          zero, s6, a5
                  or           s2, a1, t3
                  xor          s4, a3, t2
                  slti         t6, s9, -28
                  xor          s9, a3, s10
                  sb           s6, 86(s1) #end riscv_load_store_rand_instr_stream_2
                  bne          ra, sp, 381f
367:              xor          ra, t5, a3
                  or           t2, s5, s4
369:              sltiu        t1, s5, -1583
                  srl          s8, a7, zero
                  nop
                  and          s3, s6, a0
                  andi         s4, t0, -1705
                  sra          s6, s7, a1
                  xor          a4, s2, a1
                  slti         s7, s11, 839
                  sra          s10, gp, s6
                  or           ra, s2, s9
                  slt          a7, zero, a6
                  nop
381:              bne          s9, s7, 395f
                  xori         t0, s6, 700
                  bltu         a4, s8, 385f
                  sltiu        sp, t4, -1972
385:              sltiu        a2, s4, -16
                  nop
                  sltu         a6, s10, a4
                  nop
                  sltiu        s10, a5, -1689
                  bne          s10, a3, 392f
                  sll          zero, t3, s4
392:              srai         t0, t5, 23
                  srl          s7, a7, s9
                  sra          ra, a0, t4
395:              sll          s8, t3, s9
                  srl          s9, ra, sp
                  or           s7, a2, s6
                  addi         s4, s7, 287
                  bge          a0, t5, 419f
                  andi         gp, t4, -188
                  addi         sp, s3, 1248
                  auipc        t1, 899439
                  slt          a6, sp, a5
                  xori         t2, s1, 238
                  xor          t4, a4, tp
                  sltu         s8, a5, s5
                  andi         s0, a4, 441
                  lui          t0, 572902
                  slt          s5, s1, t6
                  bge          s2, gp, 417f
                  bgeu         gp, s8, 413f
                  add          a2, a7, s8
413:              srl          s10, s2, a7
                  or           t1, s11, ra
                  srai         s7, t2, 4
                  srai         gp, s6, 17
417:              sll          s7, zero, t4
                  sltiu        s0, a2, -1165
419:              srai         ra, a0, 22
                  slli         tp, s8, 27
                  add          ra, a0, a4
                  add          zero, a1, s7
                  lui          t3, 521427
                  ori          sp, a5, -1614
                  nop
                  srli         t1, sp, 6
                  bgeu         a6, zero, 428f
428:              addi         s5, a3, 1746
                  xori         t6, t3, -1682
                  addi         s7, t6, -1922
                  xori         t0, ra, 949
                  slli         s9, s5, 17
                  sll          s6, s8, s5
                  srl          s0, s2, t6
                  sra          sp, s0, s4
                  slt          a7, s0, s2
                  xor          s1, a0, a4
                  srli         zero, tp, 8
                  slli         tp, s2, 23
                  beq          a1, t6, 459f
                  srl          t0, s10, s7
                  srl          t0, a5, a0
                  sub          a4, t6, s8
                  and          s7, s1, s8
                  sltu         s1, tp, s5
                  sra          s0, t0, s10
                  srl          t5, s3, sp
                  sltiu        s6, t3, -1
                  slt          a2, a4, ra
                  xori         t1, a7, 1380
                  xor          t1, a5, s2
                  slt          t1, a5, a4
                  srl          a4, s10, sp
                  bge          a1, s4, 462f
                  andi         s2, a6, 934
                  sltu         t4, s10, tp
                  slli         s9, a5, 14
                  xori         a2, s8, -1675
459:              srl          zero, s7, s10
                  or           a7, s5, a7
                  and          s10, a7, a2
462:              srl          sp, s6, s6
                  srli         a2, a5, 26
                  ori          s8, s11, -845
                  srl          a1, t4, s6
                  sub          s8, a5, s2
                  beq          a2, a1, 484f
                  sll          a6, s0, t1
                  sltu         t0, t2, s1
                  add          s2, s2, s2
                  addi         t0, a4, -749
                  slt          zero, a4, a3
                  and          sp, a3, a2
                  bge          t1, a0, 493f
                  add          a7, ra, s8
                  ori          gp, s6, -1128
                  srli         s7, t5, 6
                  or           zero, t0, a2
                  sltiu        zero, a5, -1280
                  add          s7, s2, s4
                  xor          a1, s6, s5
                  lui          sp, 171766
                  sub          t3, a3, s0
484:              slt          tp, s6, s5
                  or           s3, a2, a1
                  srai         zero, t4, 29
                  auipc        a7, 893839
                  bltu         s5, a4, 494f
                  or           t0, s5, tp
                  slt          a2, sp, s0
                  or           s4, t6, t1
                  slt          tp, s9, ra
493:              auipc        t0, 1018820
494:              and          t1, t4, t0
                  sll          t4, s5, t2
                  or           tp, a2, a5
                  bltu         a1, a1, 517f
                  sltiu        a2, sp, 846
                  slt          t0, s5, s8
                  add          t5, s6, a0
                  bltu         a0, t3, 505f
                  srli         a7, a6, 31
                  blt          ra, s10, 504f
504:              addi         s7, t2, -818
505:              slt          s9, s9, t2
                  bne          t4, gp, 524f
                  bltu         a6, a1, 508f
508:              sltiu        t4, a7, -530
                  xor          t3, t6, s1
                  nop
                  bgeu         zero, t2, 529f
                  addi         a3, a6, 717
                  bne          t0, a1, 533f
                  sltiu        s5, s0, -1496
                  auipc        sp, 253061
                  sltu         s6, t5, s10
517:              andi         t4, s5, -1418
                  slli         s3, t2, 2
                  srai         a4, s1, 5
                  and          t3, s11, a3
                  xor          t0, a5, sp
                  bge          a0, t2, 540f
                  and          s1, tp, ra
524:              slti         zero, a0, -967
                  blt          s1, t3, 536f
                  slti         s2, a1, 1027
                  sll          s7, a7, a1
                  srl          t2, t3, t4
529:              bne          sp, sp, 540f
                  bgeu         s0, s1, 545f
                  beq          a0, s7, 543f
                  sra          tp, t4, t4
533:              bgeu         sp, s11, 538f
                  sltu         t5, a4, s2
                  sll          s9, s3, a2
536:              ori          s8, tp, 1828
                  srli         s4, s5, 2
538:              sll          s10, t1, t6
                  bgeu         t4, s7, 540f
540:              slli         a1, t3, 2
                  bgeu         s6, zero, 551f
                  beq          gp, t3, 551f
543:              srli         a1, t2, 28
                  slt          ra, s6, s8
545:              slt          a3, ra, a1
                  bne          t5, t4, 557f
                  srl          t6, t0, a6
                  auipc        a3, 1014328
                  srli         a3, s6, 16
                  srl          a2, t2, a6
551:              bge          t2, s4, 560f
                  bltu         t3, s2, 569f
                  sltiu        a2, s7, -2
                  slti         a3, t5, 1379
                  sltu         s8, sp, t0
                  or           s0, s2, zero
557:              ori          a7, a3, 809
                  slt          a3, t1, a5
                  sra          zero, zero, t2
560:              srli         s5, a2, 23
                  add          gp, tp, s10
                  blt          a3, a1, 570f
                  blt          a7, s3, 578f
                  srli         t4, s1, 17
                  srai         a1, s0, 30
                  srai         t3, t5, 25
                  sltu         t1, t6, ra
                  sltu         t1, a6, s7
569:              srai         s1, zero, 4
570:              bgeu         s7, s10, 580f
                  bge          s1, sp, 572f
572:              slli         t5, s4, 23
                  sra          ra, a4, a3
                  bgeu         tp, t1, 575f
575:              or           s5, a2, a7
                  bltu         tp, t3, 594f
                  slli         t5, s6, 24
578:              nop
                  sll          a1, a4, a5
580:              bne          gp, s8, 600f
                  xor          t2, t3, t2
                  sub          t4, a1, s1
                  add          s10, s8, a5
                  srli         t2, a4, 18
                  sltu         a4, gp, t3
                  srl          zero, s8, s6
                  bltu         s3, gp, 601f
                  auipc        s6, 293665
                  slti         a6, s11, -1918
                  xori         t2, a7, -1128
                  or           s9, s0, t1
                  srl          zero, s3, gp
                  xor          s3, a5, gp
594:              xor          a3, a0, s7
                  lui          a4, 810029
                  beq          s6, tp, 614f
                  sltu         a3, a6, s8
                  and          s7, s5, s11
                  sltiu        s2, gp, 1651
600:              bne          a4, t2, 618f
601:              srl          t0, s6, s9
                  sll          s10, t2, s5
                  nop
                  xor          a2, a0, tp
                  beq          gp, s6, 606f
606:              sll          sp, s5, zero
                  sll          a7, s10, a6
                  auipc        t1, 1042677
                  add          sp, a1, t6
                  blt          s9, a7, 614f
                  srai         s7, tp, 3
                  sltiu        s1, ra, -73
                  bge          a3, t6, 624f
614:              ori          s1, s10, 188
                  srl          s7, a1, a4
                  srai         s9, t2, 30
                  add          s6, s4, s7
618:              slti         t0, a4, 1322
                  bne          s4, a4, 620f
620:              sltu         a6, t2, t0
                  slt          a2, a2, a6
                  auipc        a3, 1004314
                  sra          t3, s10, a0
624:              and          tp, s5, s2
                  sll          sp, t3, gp
                  ori          t4, a5, -1375
                  nop
                  add          a4, sp, a2
                  srl          s8, s4, s6
                  andi         ra, s5, 1236
                  slli         tp, t0, 3
                  sra          t6, sp, s6
                  slli         ra, gp, 18
                  srai         a3, t3, 6
                  andi         t3, t3, 445
                  bne          s6, t5, 642f
                  bne          a0, s9, 639f
                  srl          t0, s11, t5
639:              blt          s0, zero, 641f
                  xor          s4, t4, s5
641:              add          a7, gp, s5
642:              sub          s0, s3, s7
                  srl          ra, a2, a6
                  nop
                  slti         t4, s11, 387
                  bgeu         s5, a1, 651f
                  sra          a6, ra, s2
                  and          s0, a6, t5
                  beq          s2, s8, 661f
                  xor          t4, a7, s5
651:              beq          s4, gp, 662f
                  srli         ra, t4, 24
                  slt          s0, t6, t6
                  bgeu         a1, t2, 673f
                  ori          s7, s2, -1761
                  sub          s4, a1, s10
                  nop
                  srai         a3, ra, 28
                  srl          s9, t3, a0
                  bltu         s10, s6, 662f
661:              andi         s3, a4, -798
662:              sub          s3, s2, tp
                  lui          s9, 1019144
                  beq          a1, t2, 671f
                  and          a3, s6, t2
                  bge          a0, a0, 686f
                  bltu         s11, t1, 686f
                  or           zero, t0, s2
                  sltu         a4, t0, s5
                  and          gp, s11, t1
671:              sll          a4, s10, a3
                  slti         s6, a5, -1
673:              xor          a3, t0, tp
                  slli         s7, t0, 6
                  nop
                  sltiu        gp, a1, -100
                  srl          s7, a2, s8
                  bgeu         t4, s4, 693f
                  sub          s3, a7, t1
                  andi         a2, ra, 246
                  bgeu         tp, s6, 701f
                  slli         ra, t5, 16
                  or           s10, ra, a1
                  srl          t1, a2, s11
                  ori          a4, t5, 440
686:              bne          s0, t3, 697f
                  slt          t6, a5, s10
                  blt          a7, tp, 689f
689:              blt          t0, a7, 698f
                  sub          s10, s0, t0
                  srai         s9, s9, 13
                  addi         a3, t2, -566
                  la           tp, region_1+1115 #start riscv_load_store_rand_instr_stream_9
                  lbu          sp, 1(tp)
                  sra          t3, s7, zero
                  slti         t5, t3, 886
                  slli         s5, a7, 30
                  sll          s2, t2, s3
                  slt          s1, a4, s3
                  addi         s2, tp, -642
                  sb           s11, -6(tp)
                  sh           t5, 3(tp)
                  lb           s7, 6(tp)
                  ori          t5, t6, -500
                  nop
                  or           t1, s1, zero
                  sub          t4, t4, s8
                  sb           t5, 0(tp)
                  xori         s2, s5, 1829
                  sb           s0, -1(tp)
                  lw           zero, 13(tp)
                  sltu         a4, s2, a4
                  lhu          a4, -11(tp)
                  xori         t4, ra, 514
                  lbu          s0, -4(tp)
                  addi         a1, tp, 234
                  slli         s3, a6, 4
                  lb           s4, -12(tp)
                  sb           a1, -12(tp)
                  lb           t3, -5(tp)
                  lhu          t0, -3(tp)
                  srl          s5, t2, t2
                  sh           gp, 13(tp)
                  sb           s8, -10(tp)
                  sw           a3, -3(tp)
                  lb           s7, 8(tp)
                  slt          s0, a5, s8
                  andi         s8, a2, 461
                  srai         a3, t5, 28
                  and          s0, t4, a6
                  ori          a7, s7, -868
                  lui          t1, 892242
                  sh           gp, -9(tp)
                  srli         t2, t0, 6
                  xor          s0, t2, s6
                  lhu          s10, -5(tp)
                  lui          a3, 994991
                  xor          s7, a0, t5
                  lb           t5, 8(tp)
                  lh           s2, 3(tp)
                  sh           a1, -9(tp)
                  andi         a7, t2, 376
                  srli         s2, s5, 19
                  sub          s6, a2, t2
                  lh           ra, 15(tp) #end riscv_load_store_rand_instr_stream_9
693:              srli         s1, a4, 19
                  srl          s1, a2, sp
                  bne          s2, a1, 706f
                  lui          t2, 709178
697:              srli         sp, zero, 0
698:              nop
                  andi         ra, s0, -1422
                  bne          a4, a4, 714f
701:              or           t6, s5, a0
                  andi         s5, t4, 2039
                  slti         s2, t3, 334
                  beq          a3, a2, 724f
                  xori         s2, s4, 2017
706:              srai         ra, s7, 13
                  xori         s9, s10, 476
                  add          s7, s11, s9
                  sll          gp, tp, zero
                  blt          s10, a7, 714f
                  srl          s0, s0, ra
                  lui          gp, 165660
                  nop
714:              andi         ra, s4, 1204
                  srai         gp, a4, 21
                  slli         s10, s4, 22
                  beq          s5, a0, 737f
                  sub          s10, t0, s9
                  or           s10, t6, t2
                  bne          a2, tp, 722f
                  nop
722:              and          s9, sp, t2
                  nop
724:              sltu         tp, s4, s1
                  beq          a0, t4, 731f
                  beq          t1, s1, 727f
727:              bne          gp, s5, 747f
                  slli         a6, zero, 24
                  auipc        t3, 956549
                  ori          s5, s8, -791
731:              addi         s9, a5, -12
                  slli         sp, s10, 14
                  sltu         s3, a7, s8
                  slli         s5, zero, 15
                  and          t1, sp, zero
                  andi         a1, ra, -1144
737:              or           tp, a7, s7
                  or           s2, s5, t4
                  slt          sp, t1, s6
                  srli         t3, t3, 14
                  slt          a3, gp, t6
                  bgeu         a6, t0, 753f
                  lui          t2, 757611
                  bltu         a1, s2, 746f
                  bltu         s6, a3, 746f
746:              slt          a3, a2, s7
747:              slli         t6, t4, 21
                  andi         t5, s7, 483
                  lui          t1, 663755
                  sub          s1, t5, s11
                  beq          s4, t2, 753f
                  sltiu        t4, t5, 1977
753:              sub          tp, a2, s6
                  bge          t4, gp, 762f
                  sra          a4, s8, tp
                  addi         s10, s3, 1759
                  and          t1, s11, zero
                  blt          t1, t0, 776f
                  slli         s8, t4, 0
                  ori          s9, tp, -364
                  bltu         s1, t1, 779f
762:              srl          a4, s6, ra
                  bgeu         a0, s11, 770f
                  ori          s7, a6, -1790
                  slli         s10, s1, 7
                  xori         s0, t1, -1465
                  srl          s5, a1, s8
                  srl          a3, s7, a2
                  srl          s0, a2, a7
770:              bne          s4, a4, 781f
                  auipc        s7, 174364
                  slli         t3, sp, 26
                  blt          gp, tp, 788f
                  slli         a7, tp, 9
                  add          t3, a4, t4
776:              ori          a7, t3, 712
                  beq          zero, a6, 782f
                  sltiu        s1, zero, 348
779:              bgeu         t4, s7, 798f
                  andi         t5, s10, -1228
781:              bne          s7, a1, 793f
782:              bltu         s4, s8, 800f
                  slti         a1, t3, -1599
                  blt          tp, s8, 794f
                  add          t0, ra, a7
                  add          s6, s1, s2
                  addi         s3, s11, -146
788:              and          s7, s6, t3
                  srl          s10, sp, s8
                  bge          t2, t4, 807f
                  srl          t6, s8, a4
                  sltiu        gp, a4, -1223
793:              or           s3, gp, s1
794:              bne          s5, s4, 795f
795:              or           s10, gp, s7
                  or           s6, s11, sp
                  slt          a2, a4, s8
798:              sltiu        a6, zero, -1693
                  add          ra, t2, s6
800:              bgeu         t0, a5, 815f
                  bge          t0, t2, 820f
                  blt          s1, s3, 804f
                  sll          s0, t3, s2
804:              xori         s0, a4, -1587
                  xor          t3, s1, t5
                  andi         t6, a7, 900
807:              srai         t1, t0, 19
                  lui          a7, 563922
                  sra          s7, a1, s11
                  bge          s11, tp, 811f
811:              sub          s1, t5, a7
                  auipc        s6, 583482
                  bltu         zero, s10, 824f
                  slti         zero, a6, 1271
815:              sll          a4, t5, a5
                  srl          zero, s7, s11
                  xor          t1, t2, s3
                  bge          sp, s6, 833f
                  lui          t0, 735942
820:              beq          s0, t6, 827f
                  slt          s1, a2, t0
                  add          ra, a4, s4
                  sltiu        a6, s8, -1219
824:              beq          s5, s0, 825f
825:              slli         t0, a6, 25
                  auipc        t3, 567869
827:              and          s5, a6, t0
                  bgeu         s2, s5, 848f
                  slli         t0, a2, 20
                  sub          t5, a6, s7
                  srli         s3, s9, 0
                  sra          t3, t1, s1
833:              sltiu        s2, t0, 1746
                  nop
                  sltiu        zero, s9, -360
                  srl          a6, s8, a3
                  ori          t4, a2, -560
                  nop
                  slti         t0, s1, -264
                  andi         a6, a3, 445
                  auipc        sp, 665442
                  blt          a4, t5, 862f
                  bltu         sp, s9, 862f
                  lui          s2, 623732
                  slti         t3, a2, -435
                  slt          s0, s11, sp
                  sra          s8, ra, s9
848:              srl          s5, zero, s5
                  blt          sp, a4, 855f
                  auipc        gp, 971413
                  bne          t5, s4, 853f
                  beq          a3, t6, 870f
853:              sra          s6, a1, a5
                  and          t5, s11, s11
855:              nop
                  sra          t1, s4, gp
                  xori         a7, t4, 480
                  sra          t4, t5, t5
                  sra          s10, a6, zero
                  srl          s8, a2, s8
                  sltiu        a1, t3, 1886
862:              sltu         s4, a6, t0
                  srl          ra, s11, s4
                  and          a2, tp, a1
                  sub          s7, t0, s0
                  blt          s1, t3, 886f
                  or           t3, s1, gp
                  sub          t5, t0, s10
                  slli         t4, s1, 24
870:              bltu         zero, a6, 887f
                  beq          s11, a7, 879f
                  xor          t0, s7, s10
                  sltu         t2, s7, a7
                  srli         t6, a0, 12
                  beq          a4, t3, 880f
                  sltu         s1, s5, t5
                  bne          s6, ra, 895f
                  srli         t2, a6, 4
879:              lui          t1, 459398
880:              andi         a1, a6, -939
                  sltiu        s8, t3, 1331
                  nop
                  srl          a6, t2, s4
                  slt          tp, s1, t2
                  bltu         s11, a5, 886f
886:              slti         s2, a4, 1150
887:              bge          s1, s2, 899f
                  or           s0, a3, s0
                  beq          t5, s6, 900f
                  bne          s1, a1, 901f
                  lui          s5, 259005
                  sltiu        s10, s2, -320
                  addi         s1, sp, 1997
                  bge          ra, s10, 908f
895:              slti         s7, a1, -1841
                  add          s3, t1, a5
                  andi         s5, a7, -73
                  sra          s6, s0, s8
899:              lui          t4, 704776
900:              bne          t1, s5, 901f
901:              srai         a1, t5, 7
                  sltu         t2, a3, s0
                  auipc        a3, 83925
                  srl          t3, s6, t4
                  blt          s11, s1, 924f
                  blt          a1, a7, 924f
                  slti         t6, a6, 319
908:              beq          s11, a4, 918f
                  bgeu         a1, s11, 911f
                  sltiu        t5, a1, -982
911:              or           s0, s4, tp
                  slt          a4, a1, t1
                  bne          a1, a7, 922f
                  sub          a2, a6, t3
                  slt          s9, t2, ra
                  sltiu        s4, s6, 333
                  blt          s11, a6, 921f
918:              bltu         s0, s11, 933f
                  sltu         t3, t4, s1
                  nop
921:              ori          s0, s7, -409
922:              sltiu        a4, s6, 1978
                  sub          t3, a5, s9
924:              slt          gp, t2, s1
                  lui          t4, 232872
                  sra          t3, a5, s1
                  andi         a1, t2, -2011
                  slt          s5, t2, tp
                  lui          t1, 329062
                  bltu         sp, a3, 938f
                  or           s4, a3, s9
                  srl          t5, t6, s4
933:              slti         t1, s0, -1245
                  srai         ra, s4, 6
                  slti         t4, t4, 343
                  slli         s3, s3, 8
                  slt          s5, t0, gp
938:              sltu         a6, t3, t5
                  and          s10, t0, s7
                  addi         tp, zero, 1928
                  srai         t6, s2, 21
                  sub          a4, gp, s4
                  slti         tp, t5, 914
                  ori          t1, t5, -1213
                  slli         s7, t5, 13
                  bgeu         gp, t1, 947f
947:              auipc        a4, 282968
                  nop
                  xor          ra, a3, a2
                  and          s5, a1, s1
                  beq          s1, a0, 968f
                  ori          s8, s6, 1782
                  addi         s4, t6, -667
                  srai         sp, a3, 3
                  xor          a4, t1, a5
                  addi         s2, s6, -425
                  sra          s6, a2, t0
                  srli         zero, t0, 24
                  bltu         a3, a0, 966f
                  bgeu         s5, a6, 969f
                  lui          sp, 436124
                  sll          gp, s5, s0
                  add          a2, a4, a1
                  bne          sp, zero, 978f
                  lui          s5, 804779
966:              add          t5, a2, s11
                  bltu         ra, tp, 987f
968:              addi         s9, t4, -1004
969:              andi         a3, s1, -510
                  sll          s2, a7, s8
                  srli         tp, s2, 26
                  sra          s2, a5, tp
                  slti         a4, s10, 362
                  slt          a7, a0, a7
                  slti         s3, t5, -1747
                  add          sp, a6, s5
                  ori          a1, s0, -1631
978:              add          s4, ra, ra
                  slt          s2, s2, s7
                  slt          s7, a3, s8
                  bgeu         t6, a1, 992f
                  bne          s6, a3, 1000f
                  sub          a4, s4, a3
                  lui          s6, 449708
                  sltiu        s9, s10, 905
                  bne          s5, a5, 990f
987:              sra          a3, t4, a5
                  auipc        a4, 946700
                  xori         t2, t1, 441
990:              lui          s8, 214709
                  bgeu         a0, s3, 1009f
992:              or           s2, s2, t0
                  srai         s8, t0, 0
                  sll          ra, a0, s0
                  add          s8, ra, s4
                  add          a7, tp, t4
                  add          t3, t2, t3
                  blt          s7, s8, 999f
999:              srai         s7, sp, 23
1000:             sltu         s7, a3, sp
                  sra          s9, zero, a2
                  sltiu        s5, a6, -1597
                  or           a3, a7, ra
                  xori         t2, t2, 1181
                  sltiu        t0, s5, 885
                  xor          a1, s6, a3
                  slt          s5, ra, s4
                  nop
1009:             srl          a6, t3, t0
                  ori          s6, a0, 191
                  srai         t2, t4, 30
                  bgeu         s4, t4, 1024f
                  slti         s5, a0, 252
                  slli         s1, gp, 16
                  or           gp, s4, t6
                  sub          s7, zero, tp
                  srai         t2, s7, 7
                  sra          gp, s4, s11
                  sub          s10, a6, tp
                  auipc        a1, 724596
                  slt          t6, s6, s9
                  srl          ra, a2, ra
                  srl          t2, ra, sp
1024:             auipc        ra, 827456
                  slt          a1, s1, s3
                  bge          t2, a0, 1041f
                  srl          t1, t0, s8
                  or           s0, a7, a0
                  sltu         a7, s9, a7
                  srl          a2, s10, t5
                  beq          s6, s11, 1032f
1032:             addi         s8, s5, -1472
                  sltu         t4, s4, s9
                  bltu         t5, tp, 1040f
                  sltiu        t2, s1, -265
                  auipc        s3, 496226
                  xor          s10, s1, sp
                  slt          s5, s8, s8
                  xori         t2, a0, 188
1040:             sltiu        a1, s8, -316
1041:             auipc        a2, 937244
                  xori         t5, gp, 1648
                  srli         ra, s10, 7
                  sll          a4, a0, sp
                  sltu         tp, a5, s8
                  sltiu        s2, a4, -1540
                  srli         s4, s4, 31
                  sltiu        s9, s1, 983
                  sltu         gp, s1, t2
                  andi         t2, gp, 237
                  nop
                  or           s4, t0, s3
                  sll          s7, a2, s11
                  add          s6, t2, s8
                  srli         s1, a1, 6
                  and          t1, t0, a0
                  bge          s0, a7, 1059f
                  sra          s4, t6, a4
1059:             auipc        s0, 121364
                  sra          a4, sp, t1
                  nop
                  sltu         s2, s10, a5
                  srl          t2, t0, a3
                  andi         ra, zero, -1531
                  slti         sp, s8, -1084
                  slt          t5, a5, gp
                  srli         tp, s5, 20
                  blt          a5, s3, 1079f
                  andi         zero, tp, -701
                  srl          s6, a7, t4
                  or           t4, a0, tp
                  blt          s1, s11, 1092f
                  lui          s10, 30065
                  nop
                  srai         s7, t6, 21
                  lui          t4, 67188
                  bne          s0, t1, 1078f
1078:             sltu         zero, a2, a7
1079:             xori         a2, ra, -888
                  sll          a3, s6, a1
                  srl          a1, a0, t6
                  bge          t5, a0, 1084f
                  sll          t1, s7, a2
1084:             ori          a1, s8, -867
                  slt          t0, s7, s2
                  sll          a4, a4, tp
                  ori          s4, s5, -1007
                  sltiu        s6, s7, -1881
                  bge          s2, t5, 1091f
                  xor          t6, a2, a1
1091:             add          a6, tp, gp
1092:             nop
                  sltu         s1, a7, s4
                  sra          s3, s10, s5
                  xor          t5, s8, a7
                  lui          s9, 654900
                  srl          a7, gp, a2
                  sltu         s5, s6, a1
                  xor          a2, t6, t6
                  ori          t0, s4, -1110
                  xor          a4, s10, t2
                  blt          t3, s3, 1120f
                  sll          s10, s0, s10
                  bge          ra, a3, 1123f
                  sltiu        t2, a5, -776
                  srl          t4, sp, a3
                  sll          a1, a6, a5
                  srli         t5, s9, 8
                  slt          s0, s5, a5
                  bltu         s7, a0, 1120f
                  sltiu        s7, a4, -35
                  srli         t5, tp, 6
                  sltu         a3, s11, a5
                  la           a3, region_1+40 #start riscv_load_store_rand_instr_stream_5
                  srai         tp, t3, 22
                  slti         a7, a6, 512
                  and          s4, s9, a1
                  sltu         s9, s4, gp
                  or           t0, t0, a6
                  sb           tp, 59(a3)
                  lhu          t6, -40(a3)
                  sb           a1, -14(a3)
                  lw           s9, -24(a3)
                  lbu          t0, -27(a3)
                  srl          a7, a1, a4
                  lbu          s5, 7(a3)
                  and          t5, s11, a2
                  lb           sp, -21(a3)
                  auipc        ra, 523654
                  sb           zero, 19(a3)
                  srli         s8, t6, 7
                  srli         s9, s10, 20
                  sra          s5, sp, a5
                  add          s6, a3, s9
                  xori         ra, t3, 1916
                  lbu          s9, -10(a3)
                  lb           s7, 33(a3) #end riscv_load_store_rand_instr_stream_5
                  bltu         t1, t1, 1134f
                  lui          s9, 790599
                  andi         a1, a7, -161
                  bne          t0, gp, 1122f
                  add          a7, s0, s10
                  lui          s0, 512056
1120:             auipc        zero, 586644
                  blt          t1, s10, 1136f
1122:             bge          t6, zero, 1133f
1123:             auipc        s4, 506404
                  beq          gp, sp, 1143f
                  add          s10, t0, a7
                  xori         a6, t4, -1177
                  ori          s4, a2, 1262
                  bgeu         a3, s6, 1146f
                  sltiu        s5, t4, 1721
                  bgeu         s7, s9, 1142f
                  bgeu         t3, gp, 1140f
                  auipc        t6, 780007
1133:             beq          s1, t1, 1151f
1134:             slt          s7, t2, s8
                  blt          t1, t4, 1146f
1136:             lui          ra, 701803
                  bltu         t4, a3, 1138f
1138:             srl          s2, sp, sp
                  srai         a7, a5, 14
1140:             bgeu         a0, s9, 1142f
                  xor          t4, s9, s2
1142:             beq          s4, t5, 1144f
1143:             andi         a2, t4, 1986
1144:             auipc        a2, 295271
                  nop
1146:             blt          a0, a6, 1156f
                  srl          s1, s10, s10
                  beq          s2, s10, 1159f
                  bge          t5, a5, 1160f
                  sub          s1, t1, s10
1151:             srai         ra, t3, 24
                  xori         tp, s2, -713
                  sltu         zero, t4, s0
                  sub          s0, s1, t4
                  bgeu         s3, s6, 1170f
1156:             addi         ra, ra, 1991
                  xor          t6, a4, a1
                  bltu         a0, s3, 1159f
1159:             srl          s7, s7, t1
1160:             srl          a2, t5, t3
                  sra          a1, gp, s11
                  beq          s11, a0, 1163f
1163:             bgeu         s1, a5, 1171f
                  and          t1, tp, zero
                  slli         a1, gp, 24
                  sub          t1, a0, sp
                  blt          t4, a7, 1186f
                  sltiu        t4, a7, -1561
                  bltu         t2, s2, 1184f
1170:             sub          s1, zero, t3
1171:             nop
                  and          t2, s6, a6
                  sltiu        s6, s7, -143
                  srl          s9, s7, t2
                  ori          sp, s8, -825
                  ori          t1, t3, -1764
                  slt          s0, t0, a0
                  xor          s0, a0, gp
                  xor          zero, t4, tp
                  andi         a1, s9, 646
                  bltu         s8, s5, 1199f
                  sra          s10, s5, s8
                  lui          a7, 127154
1184:             auipc        s8, 125855
                  and          s9, t1, a2
1186:             lui          s2, 825512
                  bgeu         a1, sp, 1191f
                  add          s8, ra, s11
                  sub          s10, a3, t5
                  slli         gp, a7, 16
1191:             addi         s10, s11, -454
                  beq          a7, t6, 1206f
                  addi         t2, s3, -519
                  sll          a1, t3, s5
                  sltiu        s4, tp, 1006
                  srl          t3, a5, a7
                  srai         t1, s1, 26
                  bltu         t3, s8, 1204f
1199:             lui          ra, 448692
                  bgeu         t6, s8, 1220f
                  slti         t6, zero, 1630
                  bge          gp, a6, 1222f
                  and          a4, tp, sp
1204:             slti         t0, a4, 1316
                  ori          s3, s10, -1688
1206:             xor          t4, t0, s4
                  blt          a4, tp, 1227f
                  bge          a3, s0, 1209f
1209:             blt          s11, s9, 1214f
                  bgeu         a4, s0, 1212f
                  addi         s5, a3, 1996
1212:             sltiu        t3, a7, -1960
                  lui          s2, 372142
1214:             beq          t1, a4, 1221f
                  sub          tp, s10, t6
                  xor          a2, t5, s7
                  slli         s0, t0, 22
                  sra          s8, s11, s1
                  slti         s0, s6, 1144
1220:             bge          s1, s3, 1239f
1221:             andi         ra, sp, 1436
1222:             sll          gp, s10, a3
                  ori          s4, s7, 836
                  sltu         t2, sp, s10
                  bltu         a5, tp, 1242f
                  sltu         a4, sp, s11
1227:             sltu         s1, t5, s5
                  slli         t3, s5, 4
                  lui          a1, 751891
                  srli         s5, s2, 9
                  sltu         a6, s7, a1
                  bgeu         ra, t3, 1251f
                  nop
                  auipc        gp, 1018738
                  add          zero, t0, t0
                  sltu         a6, a5, s9
                  lui          s6, 633838
                  sltu         t2, t2, s7
1239:             add          a4, s8, t5
                  xor          tp, s7, t3
                  sll          tp, t2, a1
1242:             sll          s0, a7, s6
                  bltu         a6, ra, 1257f
                  bge          a2, t3, 1264f
                  sra          a2, t0, a7
                  blt          a1, t6, 1253f
                  bne          s6, t5, 1267f
                  lui          zero, 779722
                  add          t5, a1, s7
                  bltu         a4, s11, 1268f
1251:             auipc        t5, 414532
                  add          t1, a6, zero
1253:             andi         gp, a6, 311
                  srli         t5, s5, 10
                  srl          a7, s7, a7
                  andi         t2, t2, 510
1257:             xori         a1, a7, 1103
                  bne          s11, s9, 1269f
                  sltu         t2, t0, t2
                  slti         s10, s9, 1667
                  lui          t3, 1021971
                  slt          sp, a0, t2
                  slt          s0, sp, tp
1264:             sub          zero, t4, t6
                  ori          t6, sp, -1594
                  and          s10, s4, gp
1267:             bgeu         a6, a2, 1268f
1268:             bge          t6, ra, 1283f
1269:             sltu         s6, t0, t3
                  sltiu        t5, s3, 289
                  andi         t4, s9, 776
                  and          t5, s7, t4
                  sra          a4, sp, zero
                  sll          a1, s4, t0
                  blt          a6, s6, 1294f
                  nop
                  sltiu        t2, s10, 754
                  sltiu        t3, s7, 1265
                  xori         a3, s3, 706
                  andi         tp, t4, -1191
                  slli         a4, t4, 28
                  beq          s10, s10, 1288f
1283:             lui          s8, 735522
                  bge          gp, s10, 1286f
                  or           t1, a4, a0
1286:             and          a4, a2, t2
                  auipc        ra, 1031154
1288:             or           s10, s3, s2
                  slti         a2, a7, -622
                  slti         ra, a3, -1750
                  blt          t6, s11, 1306f
                  sub          t6, t4, t6
                  slti         t0, s10, 1524
1294:             add          t0, ra, a2
                  bltu         t4, t5, 1296f
1296:             nop
                  srli         a4, a7, 21
                  sltu         tp, s3, s4
                  sll          s0, a7, s4
                  addi         a7, a0, -16
                  or           t4, ra, sp
                  slti         a3, sp, 887
                  blt          a5, t2, 1308f
                  slti         a6, a7, -629
                  bne          a4, s9, 1322f
1306:             slli         a1, a2, 6
                  bltu         s0, s11, 1318f
1308:             sltiu        t2, a5, -807
                  andi         a1, s3, -81
                  or           a4, t5, t2
                  srl          a4, s11, a5
                  and          s8, t3, s11
                  nop
                  lui          s1, 313068
                  ori          s6, s8, -1679
                  bge          t1, a7, 1334f
                  andi         s8, sp, -1826
1318:             addi         s2, zero, -1120
                  beq          s6, t4, 1329f
                  sltu         zero, s7, gp
                  sltiu        t4, t1, -794
1322:             srl          gp, s8, t2
                  sra          s4, t1, t4
                  addi         s6, a7, 276
                  slli         gp, t1, 14
                  slli         sp, t3, 10
                  auipc        t5, 664778
                  or           s4, t6, t1
1329:             and          sp, s8, t6
                  slti         t3, s4, 1316
                  lui          s5, 434485
                  xori         s0, t4, -300
                  nop
1334:             ori          t4, a5, 1207
                  bltu         s5, ra, 1336f
1336:             blt          s5, t4, 1348f
                  sltiu        t2, s7, 223
                  nop
                  andi         s9, t0, 1116
                  bne          t3, t2, 1342f
                  sltu         ra, a7, sp
1342:             bge          t1, zero, 1346f
                  or           t1, t6, s5
                  lui          s5, 250747
                  nop
1346:             bne          s6, s11, 1347f
1347:             blt          a5, a0, 1367f
1348:             bge          tp, a4, 1359f
                  srai         tp, s0, 4
                  sra          s3, tp, s10
                  blt          zero, s9, 1360f
                  bltu         s9, a0, 1354f
                  srai         t3, s5, 30
1354:             bltu         t6, t0, 1372f
                  slt          t1, a2, t1
                  sll          t4, a0, tp
                  auipc        s6, 153280
                  srai         t6, a4, 20
1359:             slti         s1, t6, -840
1360:             srli         s7, t5, 4
                  auipc        zero, 714000
                  andi         a6, a6, -34
                  ori          a6, s11, -1492
                  bgeu         a1, s11, 1372f
                  auipc        t4, 493323
                  nop
1367:             sltiu        s0, t4, 1698
                  auipc        zero, 559441
                  and          s9, t2, t3
                  sll          t0, sp, s11
                  beq          a1, t4, 1376f
1372:             xori         s0, s9, -548
                  srli         sp, s2, 15
                  addi         s5, a5, 580
                  srai         tp, a0, 4
1376:             slti         t3, a7, 523
                  bge          s11, t1, 1386f
                  auipc        a7, 237598
                  addi         s3, s9, -559
                  auipc        t6, 27463
                  slti         s6, s8, 542
                  sub          a4, t2, t6
                  sra          t5, tp, s2
                  auipc        s0, 506478
                  slti         zero, t3, -102
                  sra          t1, s3, gp
                  nop
                  sra          s8, t4, a7
sub_8_j14:        jal          s5, sub_10 #jump sub_8 -> sub_10
                  or           s0, s11, tp
                  nop
                  slli         a2, t1, 28
                  sub          t4, a3, s10
                  andi         s0, s5, -1520
                  slli         s6, s5, 2
1386:             sltiu        ra, s10, 650
                  bltu         a7, tp, 1398f
                  andi         s4, t3, -966
                  sltu         t6, s3, tp
                  sll          t2, s7, t2
                  ori          t5, a0, 1036
                  sltiu        a2, s9, 284
                  bge          s1, a7, 1413f
                  sltiu        zero, tp, -1218
                  sltu         s7, s10, a1
                  sll          t1, s9, t2
                  sltu         t2, s10, s4
1398:             bltu         s7, s2, 1413f
                  slt          ra, s3, a0
                  or           s6, a2, t3
                  slti         ra, t5, 185
                  sltu         s2, tp, ra
                  xor          tp, a1, t3
                  sra          a2, s5, zero
                  nop
                  slti         s8, t3, 1029
                  srl          s9, t1, s2
                  or           t3, a0, t0
                  bltu         a0, a4, 1410f
1410:             lui          t4, 882476
                  xori         sp, a1, -1812
                  xori         a2, a6, -1764
1413:             slli         s4, s3, 10
                  xori         ra, s9, -985
                  bgeu         s0, t3, 1416f
1416:             bgeu         tp, a6, 1434f
                  and          a7, a2, s2
                  or           a3, t4, t1
                  srl          a1, sp, s0
                  slli         t4, t2, 30
                  srli         t2, tp, 13
                  addi         t0, t2, -515
                  sll          tp, a7, t6
                  bgeu         s6, ra, 1444f
                  bge          s1, s9, 1435f
                  bgeu         a0, s6, 1428f
                  andi         t5, a5, 1850
1428:             auipc        s9, 359563
                  lui          t0, 942008
                  andi         t0, s4, -405
                  ori          t3, t1, -724
                  sltiu        s0, s7, -515
                  or           a1, a1, s4
1434:             srli         t0, t5, 22
1435:             and          s4, t5, a4
                  xor          ra, s2, s4
                  bge          gp, a3, 1444f
                  sltu         s9, a7, gp
                  bge          a5, s1, 1450f
                  bge          s6, a4, 1448f
                  add          sp, s11, gp
                  ori          a1, s11, 2045
                  lui          s4, 968741
1444:             xor          t6, gp, t2
                  or           t6, t6, s11
                  slt          t5, a2, a6
                  slli         s2, s11, 11
1448:             slti         a2, t3, 1681
                  beq          s3, a4, 1455f
1450:             addi         t4, a5, -1234
                  slt          gp, a5, gp
                  sra          t2, t5, a6
                  ori          s7, s11, -190
                  add          s5, zero, s6
1455:             blt          s5, zero, 1457f
                  nop
1457:             sub          t0, s0, t3
                  addi         t3, t4, -1887
                  srai         t1, s7, 0
                  xor          a3, zero, t5
                  add          s0, s5, s9
                  or           a7, s8, a5
                  and          t3, s4, ra
                  srai         s8, s0, 22
                  sltiu        t6, s10, 1232
                  xor          s3, t4, t4
                  srl          a7, s8, t3
                  srai         tp, s6, 14
                  sub          t2, s10, a2
                  blt          t0, s8, 1484f
                  and          sp, a6, ra
                  slti         s0, ra, -1298
                  or           gp, s4, t0
                  addi         s1, a0, -1785
                  xori         s8, zero, -40
                  or           s2, s7, t2
                  blt          t2, t1, 1488f
                  srli         t4, s5, 10
                  ori          ra, zero, 1431
                  sltu         s9, a4, s0
                  beq          s10, s11, 1482f
1482:             slti         s2, s10, 1501
                  sll          s7, t4, ra
1484:             xor          gp, s4, a4
                  sll          s0, t1, gp
                  auipc        t0, 1015627
                  srl          s4, s9, s10
1488:             bltu         s4, t0, 1507f
                  srli         a3, t5, 1
                  sra          a7, a7, s7
                  andi         s5, t4, 1815
                  or           t0, t4, sp
                  add          tp, a0, s3
                  sltu         s5, a5, t2
                  blt          s8, s10, 1507f
                  addi         tp, s5, 1431
                  xor          a3, t6, s5
                  addi         a1, s1, -1242
                  nop
                  bltu         sp, s6, 1504f
                  blt          a7, t0, 1521f
                  beq          gp, t5, 1504f
                  add          t6, t0, t6
1504:             addi         s7, t1, 1053
                  xori         s7, t6, 1552
                  srli         a7, a4, 12
1507:             sltiu        s1, t6, 1066
                  auipc        s10, 932024
                  ori          s6, a1, 654
                  xor          s7, s0, s9
                  xori         zero, gp, 1730
                  xori         s8, s10, 1996
                  slt          a2, t1, gp
                  srl          s5, a7, t5
                  add          tp, a4, s7
                  ori          s7, tp, -838
                  auipc        a4, 895369
                  srl          a4, a3, s4
                  slli         s3, a6, 14
                  or           a3, s3, a0
1521:             lui          a7, 971574
                  bne          a1, a4, 1541f
                  sltiu        sp, zero, -490
                  xori         a3, s0, 310
                  srli         s0, t1, 3
                  sltu         s5, a1, t5
                  srli         s1, gp, 17
                  srli         ra, a1, 31
                  add          t3, t2, ra
                  sll          zero, tp, t3
                  bge          s5, s0, 1548f
                  xori         t3, sp, 1274
                  srli         a4, ra, 9
                  xori         s0, s6, -211
                  slti         s1, s4, 866
                  blt          gp, ra, 1551f
                  add          a1, s6, t3
                  sll          t1, tp, s7
                  slt          t4, s10, t6
                  ori          a6, s2, 1822
1541:             bgeu         s2, s7, 1559f
                  sra          t2, a6, s6
                  auipc        t1, 120556
                  srai         s1, s6, 9
                  slli         a3, a1, 23
                  sltu         s5, ra, a5
                  sltiu        a1, s8, -285
1548:             bgeu         a1, s10, 1566f
                  sub          s5, t5, t0
                  addi         a4, sp, 1772
1551:             blt          gp, a2, 1552f
1552:             slt          t4, a3, t6
                  bltu         gp, s0, 1570f
                  and          t0, s10, a3
                  add          t1, a3, sp
                  or           a7, s4, tp
                  addi         a3, s3, -1359
                  ori          s9, a7, 1997
1559:             srai         t0, ra, 31
                  sll          t5, s6, t4
                  ori          t3, s8, 791
                  bne          tp, t3, 1577f
                  srl          s7, t6, zero
                  add          a1, a0, t3
                  sll          t0, t1, t4
1566:             beq          t4, s4, 1586f
                  sll          s9, t1, zero
                  sltiu        sp, s7, 1663
                  lui          s2, 926016
1570:             nop
                  sltu         t3, zero, a7
                  auipc        s10, 177170
                  sltu         a3, t0, t1
                  sra          t2, s9, gp
                  xori         a6, s9, 748
                  beq          a1, s5, 1581f
1577:             blt          t1, s9, 1596f
                  nop
                  bltu         ra, s4, 1585f
                  auipc        s7, 210281
1581:             and          zero, s2, s5
                  blt          t6, zero, 1583f
1583:             xor          s1, t5, t1
                  sltiu        s6, a4, -1356
1585:             sub          s10, s3, t6
1586:             srl          s7, t2, s11
                  sub          t3, s3, a2
                  auipc        sp, 936932
                  slt          gp, s1, a7
                  blt          s3, a0, 1601f
                  sra          t4, a2, s1
                  srai         s7, a6, 0
                  srli         t3, s9, 14
                  bltu         s1, s0, 1601f
                  slt          a4, s0, t6
1596:             sltiu        s8, t3, 1599
                  andi         s2, t5, -1211
                  add          s9, s7, t1
                  ori          s1, a4, -1282
                  beq          s8, t3, 1611f
1601:             sub          ra, s8, s0
                  srai         a4, t6, 13
                  bge          t4, s1, 1621f
                  sltu         s5, ra, a0
                  sltiu        t2, a7, -2005
                  andi         a1, t0, -172
                  lui          t2, 146658
                  or           t0, a0, t2
                  srli         t6, a4, 27
                  slli         a1, s3, 0
1611:             nop
                  addi         t5, a1, 1684
                  sltiu        t6, tp, 967
                  ori          s4, s3, 1925
                  sra          s3, s10, a0
                  bge          t1, t2, 1628f
                  sll          zero, s4, sp
                  bltu         s9, s2, 1636f
                  bltu         ra, s10, 1629f
                  srli         s6, t2, 0
1621:             sltu         s1, s9, ra
                  or           t0, s11, s0
                  sll          a7, s5, s2
                  srl          s10, zero, gp
                  lui          t2, 153761
                  blt          t2, s5, 1627f
1627:             slt          s9, ra, s10
1628:             bge          s2, t1, 1642f
1629:             xor          s1, a1, a5
                  xor          s2, zero, s11
                  beq          a0, ra, 1633f
                  bne          t6, s5, 1641f
1633:             sra          sp, a2, t3
                  slti         s5, sp, -1928
                  or           tp, tp, a1
1636:             beq          a4, s6, 1637f
1637:             auipc        s7, 823453
                  andi         s3, s3, 1071
                  and          s7, s8, s3
                  srai         t0, a1, 27
1641:             sltiu        a4, a5, 570
1642:             xor          t3, s6, a1
                  slli         a3, s9, 19
                  blt          t5, t5, 1664f
                  ori          s9, a3, -504
                  ori          s8, t0, -1541
                  slli         s0, a7, 20
                  sub          a2, s5, t5
                  sltu         t1, a0, s1
                  blt          t6, s2, 1658f
                  ori          s10, s10, -879
                  or           ra, zero, s10
                  sra          a7, s4, sp
                  slli         s2, s6, 14
                  sub          tp, s7, s2
                  srai         s0, zero, 13
                  bge          s11, ra, 1668f
1658:             slli         s10, s5, 7
                  sra          tp, zero, gp
                  bgeu         s6, s11, 1661f
1661:             auipc        t0, 451059
                  sll          s8, a7, a6
                  bge          gp, a3, 1667f
1664:             sll          a1, t3, a4
                  sra          s1, a3, a3
                  bne          s6, a0, 1684f
1667:             xori         gp, s7, -841
1668:             srai         t1, s1, 16
                  sltu         sp, sp, a2
                  xor          t2, s10, a2
                  srli         a4, s9, 31
                  srl          gp, a7, s9
                  beq          t0, a0, 1692f
                  auipc        s9, 248006
                  srli         s4, s6, 14
                  lui          a1, 297524
                  slli         t4, t4, 1
                  slti         a4, a0, -1366
                  xor          s9, a3, t0
                  bgeu         t5, a7, 1700f
                  add          t1, t0, a3
                  bge          s1, t5, 1697f
                  auipc        s5, 360961
1684:             bge          t4, a2, 1686f
                  and          ra, t3, s4
1686:             sub          a1, a4, t0
                  nop
                  auipc        sp, 919561
                  or           s0, s10, a6
                  andi         a4, a1, 1768
                  addi         s0, ra, -1825
1692:             add          tp, s10, a3
                  bgeu         s10, a6, 1695f
                  srli         ra, s3, 0
1695:             slti         s0, s5, 1700
                  xori         gp, s7, -633
1697:             sra          t1, sp, s6
                  lui          s4, 197166
                  sltu         gp, a2, a7
1700:             nop
                  srli         t6, s2, 6
                  addi         s8, gp, -1720
                  xori         t1, s9, -369
                  blt          tp, s2, 1723f
                  sltu         gp, s10, a3
                  nop
                  sub          t6, sp, a2
                  add          s6, s1, t6
                  and          t5, s2, zero
                  sltu         a6, s2, t1
                  beq          s7, t5, 1721f
                  lui          s10, 109587
                  lui          a2, 679133
                  addi         s8, tp, 1607
                  beq          t5, t1, 1727f
                  sltiu        tp, a6, -914
                  sub          gp, s3, s0
                  srai         s1, t6, 18
                  and          s3, gp, s1
                  blt          a0, sp, 1728f
1721:             blt          t1, s3, 1739f
                  sltiu        sp, s10, -816
1723:             slli         a4, s0, 28
                  andi         s10, s0, -869
                  lui          s8, 821448
                  lui          t4, 331824
1727:             sll          t2, a2, s11
1728:             bltu         ra, t0, 1739f
                  bge          s10, zero, 1744f
                  sll          s2, tp, t3
                  bgeu         tp, s3, 1749f
                  nop
                  lui          tp, 984054
                  srli         zero, a1, 31
                  beq          s6, s7, 1742f
                  blt          t1, s5, 1737f
1737:             sltu         s3, s3, a1
                  xori         t6, sp, -319
1739:             bgeu         a3, ra, 1744f
                  srl          zero, a6, t6
                  nop
1742:             srli         s0, a5, 3
                  bltu         t2, a2, 1763f
1744:             srli         s0, s0, 22
                  beq          ra, gp, 1765f
                  sltiu        t2, t6, 66
                  blt          zero, s3, 1749f
                  bltu         a5, a6, 1763f
1749:             sltu         s0, s10, s7
                  auipc        t4, 495139
                  sra          s8, s1, a7
                  beq          a4, t6, 1766f
                  ori          s1, a0, -87
                  sltu         t4, a6, s4
                  nop
                  bne          ra, zero, 1758f
                  lui          s6, 573981
1758:             srli         a3, s1, 15
                  bgeu         s4, gp, 1779f
                  nop
                  add          ra, s11, t2
                  slli         s6, s10, 0
1763:             bge          s3, s10, 1780f
                  slt          tp, t1, t5
1765:             sll          s6, s9, t5
1766:             ori          a1, t0, -1263
                  auipc        s5, 40430
                  bge          gp, t0, 1779f
                  auipc        s6, 364192
                  sltu         t6, a5, s3
                  sltiu        s10, a0, 134
                  slt          a6, a4, s3
                  srli         a4, s3, 26
                  xor          t1, s2, s6
                  sll          t0, s10, zero
                  slti         s9, ra, 1058
                  blt          zero, a6, 1781f
                  bgeu         s11, s1, 1779f
1779:             bgeu         s10, t4, 1782f
1780:             bgeu         gp, a5, 1781f
1781:             nop
1782:             lui          sp, 971469
                  slli         sp, t1, 27
                  lw           s5, 4(s11)
                  ori          s1, t4, -1156
                  xor          s7, s7, s8
                  addi         s11, s11, 12
                  slli         t1, a2, 12
                  lui          s8, 682403
                  auipc        a4, 63344
2339:             addi x2, x21, 0
2339:             jalr x2, x2, 0
sub_6:            bltu         s10, a2, sub_6_stack_p
                  ori          s1, tp, -539
sub_6_stack_p:    addi         s11, s11, -36
                  nop
                  sub          s8, ra, s4
                  add          s2, t6, gp
                  sw           s5, 4(s11)
                  auipc        a1, 72951
                  sll          s7, a1, s1
                  slti         a2, s4, -1901
                  la           sp, region_0+750 #start riscv_load_store_rand_instr_stream_0
                  xori         a6, a1, 964
                  sb           s3, -251(sp)
                  lbu          t2, -13(sp)
                  lbu          s3, 107(sp)
                  lb           s5, -81(sp)
                  xori         a3, s5, 370
                  lbu          s8, -131(sp)
                  sb           a5, 187(sp)
                  srai         ra, s7, 8
                  auipc        a6, 286020
                  nop
                  addi         s3, a7, 1354
                  lb           gp, 243(sp)
                  lb           zero, -168(sp)
                  lb           a3, 151(sp)
                  slt          t5, a4, s10
                  sb           a3, -85(sp)
                  lui          a1, 526332
                  nop
                  nop
                  and          s10, a6, t3
                  andi         gp, t4, -1706
                  srl          gp, s10, a2
                  add          ra, s11, t0
                  lbu          s8, 89(sp)
                  ori          t2, s9, -399
                  slti         ra, t0, -946
                  xori         s3, s8, 574
                  sltiu        s2, s4, 1814
                  slli         t1, t3, 8
                  slli         s5, s8, 5
                  sh           s4, -20(sp)
                  sub          t3, tp, t1
                  lh           s10, -24(sp)
                  xor          t2, a0, s2
                  slti         t4, t2, -678
                  lb           t4, -212(sp)
                  lbu          s5, 255(sp)
                  lb           t1, 192(sp)
                  sb           s4, 231(sp)
                  lb           s8, 135(sp)
                  lhu          s4, -144(sp)
                  srli         t0, tp, 10
                  slti         a7, t3, -643
                  andi         s1, t6, -785
                  sub          a3, sp, t0
                  lh           gp, -104(sp)
                  sb           s5, -80(sp) #end riscv_load_store_rand_instr_stream_0
                  srl          a6, tp, a5
                  slli         t1, s2, 6
                  or           s8, a4, s7
                  srli         s0, s1, 8
                  bne          a1, s6, 6f
                  sltiu        tp, s1, 14
6:                srl          s3, t5, t0
                  nop
                  bgeu         t3, s6, 20f
                  sltiu        gp, t3, 1697
                  xor          a6, t2, s9
                  sll          s6, sp, t1
                  beq          a4, s4, 21f
                  bgeu         s6, t1, 30f
                  bge          s5, t2, 17f
                  sra          t4, s11, s0
                  bltu         s1, a3, 17f
17:               bltu         s7, gp, 23f
                  sll          t2, t2, t0
                  srai         a2, t0, 24
20:               lui          s9, 995101
21:               addi         s9, s3, 596
                  and          s1, sp, a4
23:               sra          s0, s0, a4
                  and          s2, gp, ra
                  slli         sp, t1, 25
                  srai         a6, tp, 29
                  sll          s9, t5, tp
                  andi         s6, zero, -1458
                  auipc        zero, 895039
30:               and          s3, a7, a2
                  srl          s6, t2, a1
                  or           ra, t5, s4
                  or           t2, t0, a5
                  or           a3, t6, s8
                  srl          tp, s2, s7
                  lui          t5, 107307
                  slti         zero, sp, -1448
                  addi         s9, t2, -441
                  beq          s3, sp, 52f
                  add          s0, s3, s6
                  nop
                  bge          t4, a5, 58f
                  sltiu        a3, sp, -1325
                  xori         ra, a5, 1969
                  bltu         tp, s2, 52f
                  blt          s5, a2, 52f
                  sltiu        ra, t5, 640
                  bltu         t1, a0, 55f
                  slli         a3, a5, 26
                  srl          s8, t3, s0
                  lui          a4, 598290
52:               xor          a3, a3, tp
                  bge          gp, s8, 57f
                  or           ra, t1, s1
55:               sll          t6, tp, t6
                  beq          tp, a2, 76f
57:               nop
58:               bge          s5, tp, 59f
59:               bltu         s1, gp, 71f
                  bgeu         a0, s3, 71f
                  sll          s6, a5, s1
                  sltu         t1, a1, a0
                  srli         a6, gp, 20
                  lui          s7, 312718
                  beq          gp, s10, 71f
                  slt          t3, s8, a1
                  beq          s4, t2, 78f
                  or           s7, a3, t4
                  addi         ra, sp, -996
                  or           a6, a0, s10
71:               srai         s10, s8, 28
                  xori         sp, sp, -1925
                  blt          a0, t3, 76f
                  andi         s5, s2, 1510
                  xori         a1, s1, 1749
76:               add          a3, a7, t4
                  slti         s4, a4, 1237
78:               bge          t4, s3, 90f
                  nop
                  lui          t1, 230099
                  xori         s2, a6, -955
                  xori         t1, t4, -1239
                  slli         a1, s8, 28
                  lui          t4, 461928
                  beq          s10, a5, 94f
                  and          a3, a1, t6
                  srai         a6, a4, 16
                  sra          a6, s9, t5
                  sltu         sp, s8, sp
90:               slt          s0, ra, a0
                  or           a4, tp, s1
                  lui          s9, 483568
                  sub          a7, sp, gp
94:               auipc        a1, 579615
                  ori          s1, gp, -464
                  sll          t6, s6, a3
                  bge          zero, s1, 103f
                  nop
                  bltu         a1, t3, 107f
                  andi         s8, t0, -1807
                  sra          s7, t6, a7
                  bltu         s11, s11, 112f
103:              sltiu        t2, s3, -736
                  srli         t6, s4, 7
                  srai         ra, a2, 9
                  xori         t2, sp, -690
107:              blt          t5, s8, 108f
108:              or           gp, ra, a3
                  lui          gp, 1006571
                  bltu         s1, s2, 112f
                  sub          t6, gp, a7
112:              bltu         gp, a7, 115f
                  and          s0, t0, t0
                  beq          s10, t4, 124f
115:              sra          s8, a6, s6
                  ori          t1, s7, -632
                  ori          s0, t6, -769
                  or           a4, s0, ra
                  beq          s6, t2, 136f
                  or           s9, s2, s7
                  srl          s10, a5, s11
                  sra          s1, s8, s8
                  bltu         t3, s4, 129f
124:              andi         a2, s7, 1488
                  addi         gp, a4, -1047
                  xor          s8, s3, t2
                  andi         a2, gp, 1886
                  sub          sp, t6, s10
129:              add          a6, a7, ra
                  xori         s8, s4, 1664
                  addi         a3, zero, -660
                  add          t1, a3, t0
                  addi         s7, t0, -610
                  bne          a6, a5, 144f
                  bgeu         s9, t6, 138f
136:              andi         s8, s11, 2017
                  xor          t6, a4, s8
138:              nop
                  sltu         s6, ra, zero
                  srli         s10, t4, 2
                  xor          t3, a4, s5
                  srl          a1, s8, a2
                  bne          a1, t2, 155f
144:              beq          t1, s10, 145f
145:              xor          gp, s6, s0
                  slli         sp, a7, 19
                  slli         a4, a0, 16
                  sltu         s10, s1, s9
                  sltu         s0, a2, sp
                  nop
                  andi         s1, s2, -925
                  xori         t6, t5, -522
                  addi         s3, s3, 1580
                  sltu         s1, s3, s7
155:              add          a2, a1, t3
                  xor          a4, gp, ra
                  srl          ra, a2, a4
                  sltu         t5, s6, t3
                  or           t2, s6, s0
                  andi         t6, t4, 419
                  ori          s6, t3, -1911
                  sltu         t4, s11, t4
                  srli         s9, s9, 2
                  sra          zero, s3, s5
                  lui          t5, 661181
                  sub          s1, s0, s2
                  bne          t3, sp, 174f
                  nop
                  slt          t3, s8, t6
                  bgeu         a4, s11, 171f
171:              bne          s5, t1, 183f
                  andi         a6, a0, 1805
                  auipc        t2, 461719
174:              sltiu        tp, a2, -85
                  add          tp, sp, s0
                  srai         gp, s11, 0
                  srli         s7, t0, 2
                  add          tp, ra, a2
                  bge          t5, t4, 182f
                  bltu         s10, t6, 186f
                  or           t0, s6, a2
182:              xor          s5, s9, t1
183:              auipc        s0, 291257
                  bgeu         a3, t2, 191f
                  and          s5, t0, gp
186:              xori         t4, s8, 1253
                  nop
                  add          ra, t1, s9
                  and          a3, a0, ra
                  and          a4, zero, s7
191:              sra          a7, a0, s2
                  sltu         s3, s7, s0
                  slli         s1, tp, 12
                  sltu         t5, tp, a4
                  lui          t4, 1030518
                  slti         sp, s1, -701
                  srl          s0, t4, a4
                  sltu         t1, a1, s6
                  xor          t6, t6, zero
                  sll          t1, s11, s0
                  xori         t2, s2, -1979
                  srl          s4, a0, s1
                  or           ra, s1, s8
                  blt          s0, a3, 219f
                  ori          s9, sp, -648
                  beq          s8, s1, 212f
                  bge          s0, s6, 219f
                  auipc        a6, 158172
                  andi         s2, s0, 1433
                  addi         t4, s0, -202
                  xor          s2, t4, s9
212:              sra          t4, s1, s8
                  sub          s1, s9, t1
                  xori         s10, a3, -24
                  sll          t4, t0, s3
                  andi         a6, t5, 1288
                  slt          s8, a3, ra
                  srli         s4, t4, 28
219:              ori          s3, s1, -1152
                  nop
                  srli         s4, a4, 22
                  lw           s5, 4(s11)
                  lui          a6, 206215
                  andi         t6, t1, -593
                  sll          a3, t4, a1
                  srli         s1, t6, 14
                  addi         s11, s11, 36
                  and          a2, t4, t5
                  xori         a3, tp, -703
289:              addi x28, x21, 0
289:              jalr x28, x28, 0
sub_9:            lui          s1, 200169
                  andi         s7, a6, -1836
                  bgeu         a6, a6, sub_9_stack_p
                  xor          t3, s11, s1
                  andi         s2, s0, 296
                  slti         t3, s3, 1328
                  xor          t4, s1, zero
sub_9_stack_p:    addi         s11, s11, -12
                  sw           s5, 4(s11)
                  sra          t5, t6, ra
                  ori          a6, tp, -798
                  slli         zero, s11, 22
                  xori         t1, a3, 1411
                  la           t4, sub_10
                  lui          s7, 630119
                  sltu         s3, zero, a4
                  srai         s4, zero, 29
                  srli         s9, s6, 9
                  ori          s6, ra, 1612
                  xor          t1, s1, a6
                  srli         t6, s8, 28
                  addi         s0, s11, 1809
                  and          s4, s2, s9
                  addi         t4, t4, 441
                  lui          a4, 690605
sub_9_j15:        jalr         s5, t4, -441 #jump sub_9 -> sub_10
                  blt          a3, s10, 5f
                  xori         s9, t6, 136
                  bne          t3, s3, 11f
                  slti         t1, tp, 59
                  bge          s8, s2, 10f
5:                sub          tp, tp, a6
                  slli         s0, a4, 0
                  sltiu        a1, a6, -1940
                  lui          sp, 289322
                  sltiu        t6, t2, -338
10:               xor          s8, a7, s10
11:               beq          s0, t0, 15f
                  lui          s10, 884570
                  bge          s3, a4, 21f
                  slt          t2, a0, s6
15:               sltu         t2, s4, t2
                  sub          t1, s8, t0
                  slt          a2, sp, t3
                  or           sp, s2, s9
                  nop
                  beq          s10, sp, 21f
21:               srli         s3, s11, 16
                  auipc        a6, 423041
                  lw           s5, 4(s11)
                  addi         s11, s11, 12
                  sra          tp, t1, zero
                  sra          zero, t3, t2
                  xori         s8, t2, -193
54:               addi x1, x21, 0
54:               jalr x1, x1, 0
sub_3:            slti         t2, s10, 683
                  sub          s2, s0, s0
                  srli         t1, s11, 0
                  sub          a7, a0, t1
                  addi         s11, s11, -16
                  sll          tp, a3, ra
                  sw           s5, 4(s11)
                  xor          t5, tp, t5
                  sltiu        a2, tp, 343
                  sltiu        ra, s3, -899
                  or           a6, s7, s7
                  sltu         s4, s8, zero
                  or           s7, s6, t6
                  blt          a3, a4, sub_3_j7 #branch to jump instr
                  andi         s6, t1, -1664
sub_3_j7:         jal          s5, sub_4 #jump sub_3 -> sub_4
                  la           t1, region_0+882 #start riscv_load_store_rand_instr_stream_2
                  lb           ra, -17(t1)
                  auipc        s4, 423286
                  xori         a2, a2, -1046
                  sltu         t3, s4, s8
                  auipc        gp, 778007
                  sll          a2, a3, sp
                  lhu          s5, 64(t1)
                  xori         s9, a2, -588
                  and          t5, s0, s2
                  and          t6, gp, t6
                  nop
                  xor          sp, s9, a5
                  auipc        a4, 754818
                  sll          s9, s10, gp
                  sltu         gp, a4, s4
                  xor          s7, s8, a6
                  addi         t2, sp, 622
                  sh           t5, 32(t1)
                  lbu          a6, -13(t1)
                  lb           s0, 47(t1)
                  slli         s8, t1, 6
                  ori          s6, a4, 1209
                  lbu          t3, -17(t1)
                  slti         zero, a6, -2043
                  lbu          s1, 56(t1)
                  lbu          s0, 21(t1)
                  srl          a7, s4, a2
                  sb           s11, -43(t1)
                  lb           s10, 33(t1)
                  lb           s10, -62(t1)
                  sra          s3, ra, a1
                  nop
                  auipc        t0, 483582
                  sll          a1, s9, tp
                  andi         sp, a3, 1656
                  sh           t3, -36(t1)
                  lb           ra, -61(t1)
                  xor          a7, t0, s0
                  lbu          a2, 1(t1)
                  ori          t5, s4, 1184
                  sh           s1, 6(t1)
                  slt          s2, tp, zero
                  lhu          t0, -18(t1)
                  lbu          s0, 37(t1) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_0+710 #start riscv_load_store_rand_instr_stream_0
                  ori          s5, s3, -60
                  slli         t2, s11, 6
                  lbu          t4, -3(sp)
                  sb           s5, 37(sp)
                  lb           s7, 42(sp)
                  sb           sp, 26(sp)
                  slli         t6, t4, 16
                  sb           s10, 3(sp)
                  sb           tp, 9(sp)
                  auipc        a6, 1008944
                  slli         s4, tp, 17
                  lhu          s2, 46(sp)
                  sltiu        a1, s11, 857
                  slli         s8, t1, 6
                  sub          s5, t3, s9
                  lbu          t5, -5(sp)
                  ori          t1, s2, -1757
                  sll          a2, t1, t3
                  lbu          a4, 37(sp)
                  lbu          s9, 64(sp)
                  lh           gp, 16(sp)
                  sll          s6, s7, s1
                  lbu          s6, -40(sp)
                  srli         s10, gp, 4
                  sra          t2, s6, s1
                  add          ra, t0, s5
                  sb           t4, -20(sp) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_0+418 #start riscv_load_store_rand_instr_stream_1
                  and          s8, s4, s6
                  xor          s0, a7, s2
                  sll          a2, a2, s3
                  slt          a7, a4, s9
                  xor          t3, s5, t2
                  sll          t4, a5, s4
                  sub          t5, sp, t6
                  slli         t0, sp, 10
                  lb           s5, 5(sp)
                  sb           t5, -5(sp)
                  srli         s1, gp, 4
                  lh           t4, 12(sp)
                  lbu          ra, -5(sp)
                  sra          s0, gp, a3
                  ori          s4, gp, -608
                  lbu          t4, 12(sp)
                  srl          ra, t3, s11
                  srl          a2, s0, ra
                  lhu          t4, -6(sp)
                  auipc        a2, 743242
                  lb           a4, -11(sp)
                  lb           a2, 6(sp)
                  and          zero, s5, a4
                  and          t5, a4, a7
                  lhu          s2, -12(sp)
                  lbu          gp, -14(sp)
                  lbu          t6, -13(sp)
                  sb           a2, -7(sp)
                  lbu          t5, 12(sp)
                  sub          zero, s5, s9
                  add          a1, s3, ra
                  sll          t1, ra, t5
                  sll          a1, tp, s4
                  srai         a3, s1, 14
                  lhu          a7, -14(sp)
                  slt          t1, a6, a3
                  srai         a3, t6, 16
                  addi         a7, tp, -572
                  lb           a7, 5(sp)
                  lb           zero, 5(sp)
                  lb           s5, 1(sp)
                  lb           s7, -11(sp)
                  lbu          s3, 1(sp) #end riscv_load_store_rand_instr_stream_1
                  sra          s1, s7, s7
                  auipc        zero, 202509
                  beq          s3, ra, 19f
                  sltu         t1, gp, t0
                  bgeu         s9, a0, 13f
                  sll          a2, s0, t0
                  sltiu        t6, t4, -924
                  sltu         s8, t0, t3
                  ori          gp, s11, 1609
                  or           s10, a7, s3
                  bge          t0, t0, 14f
                  lui          a1, 919521
                  srai         a4, s8, 27
13:               xor          zero, s1, s11
14:               bltu         s7, t0, 16f
                  bge          sp, t0, 30f
16:               sltu         s0, a0, ra
                  add          s5, s8, t0
                  or           a6, s11, t0
19:               ori          s4, a7, 490
                  sub          s9, s5, s6
                  slt          gp, s6, s4
                  sra          a4, a1, gp
                  auipc        s2, 28026
                  bne          t4, a2, 42f
                  bne          s6, a3, 31f
                  sra          s10, a7, sp
                  auipc        s7, 738389
                  lui          t2, 478017
                  beq          s4, t2, 44f
30:               lui          sp, 558541
31:               lui          t1, 573695
                  srl          s4, s0, t5
                  bltu         a3, s7, 45f
                  xori         s8, ra, 168
                  slti         t0, a1, -1043
                  srli         a7, a4, 1
                  bgeu         s3, s6, 43f
                  xor          s10, a0, s2
                  bge          s3, s3, 42f
                  sltiu        ra, a3, -367
                  lui          t5, 234400
42:               beq          s9, s1, 44f
43:               sll          t3, s7, gp
44:               xor          t6, s8, s7
45:               bne          ra, t2, 65f
                  beq          s3, gp, 47f
47:               sub          a3, ra, a1
                  nop
                  nop
                  and          s10, t0, s3
                  sub          a3, a1, s6
                  sll          s1, s5, ra
                  sltu         s2, ra, s2
                  nop
                  srli         zero, s8, 6
                  xori         a2, a0, 837
                  slti         a4, a0, -204
                  or           tp, s3, gp
                  bgeu         s8, gp, 67f
                  or           t0, a6, t5
                  bge          t3, a7, 63f
                  sra          t3, sp, s4
63:               bgeu         a0, a6, 64f
64:               xori         t0, t4, -1390
65:               sra          t2, zero, gp
                  bgeu         sp, a6, 78f
67:               srl          s9, s9, t6
                  srl          a7, s9, s2
                  slti         s7, a4, -1178
                  sra          t0, a1, s0
                  sltu         sp, s11, tp
                  sub          s3, s2, s5
                  slli         s1, s6, 0
                  srl          s2, s7, s4
                  beq          a0, sp, 90f
                  lui          s8, 185019
                  auipc        s1, 142520
78:               lui          a7, 444182
                  and          sp, s5, a4
                  slti         tp, s2, 1917
                  bltu         a4, t3, 90f
                  srl          t3, s3, s7
                  srli         a1, s10, 23
                  sltu         t3, a4, t0
                  nop
                  slti         s3, t6, -1040
                  srai         s8, a4, 23
                  andi         s4, s7, -1136
                  srli         a1, t5, 30
90:               srli         a7, s5, 1
                  nop
                  auipc        tp, 372464
                  srai         s8, tp, 2
                  sra          tp, a2, s1
                  slti         s6, s8, 1064
                  or           tp, t1, t5
                  and          a1, a1, ra
                  beq          s7, a7, 113f
                  bgeu         s6, t0, 108f
                  srai         s8, s4, 14
                  ori          a7, gp, -1300
                  sub          s9, gp, zero
                  or           t3, a2, s2
                  add          a4, s2, s8
                  nop
                  and          s10, a6, s1
                  sltu         t0, t6, ra
108:              and          s8, a3, zero
                  lui          s2, 199964
                  srai         a2, t1, 14
                  or           sp, s10, a2
                  sltu         a4, a0, a3
113:              bne          s9, t6, 131f
                  bgeu         t5, t4, 119f
                  ori          t1, s5, 1563
                  srl          s0, zero, a3
                  auipc        a4, 180804
                  bgeu         a0, a0, 137f
119:              and          s1, s3, t3
                  blt          a7, a6, 132f
                  bne          gp, s8, 136f
                  and          s10, tp, s11
                  sub          s1, a4, a5
                  xori         a3, s7, 1961
                  sltu         s0, a1, s6
                  nop
                  ori          t5, s5, 1657
                  bne          a6, s3, 144f
                  nop
                  slti         sp, s2, -1276
131:              nop
132:              and          t6, a3, s2
                  andi         s3, a3, -351
                  blt          s5, t2, 154f
                  slli         s9, a7, 26
136:              bge          s9, a6, 149f
137:              slt          s8, s5, s8
                  sub          ra, zero, s7
                  auipc        s0, 83217
                  srl          s8, s10, s3
                  bne          s5, s0, 142f
142:              srai         a3, t5, 9
                  bltu         s11, t1, 159f
144:              slt          a2, a7, s1
                  slli         a7, gp, 11
                  bge          a7, s3, 148f
                  andi         t1, s7, -464
148:              slt          s8, a4, s11
149:              beq          a2, tp, 164f
                  xori         ra, zero, -457
                  sltiu        t5, s6, -438
                  beq          a6, t5, 156f
                  andi         t0, s2, 257
154:              nop
                  or           s5, s5, a6
156:              ori          t0, ra, 412
                  add          s1, sp, s9
                  srli         ra, s7, 5
159:              nop
                  sltu         s4, a7, s2
                  srai         s4, s11, 11
                  nop
                  bne          a6, t1, 172f
164:              auipc        s6, 692245
                  bgeu         a3, t1, 174f
                  addi         zero, t5, -796
                  auipc        a2, 671003
                  srai         s6, t0, 19
                  xor          s7, s10, a1
                  add          a6, t6, t5
                  xori         gp, t5, 90
172:              add          s4, a7, s4
                  bne          t0, t2, 178f
174:              bltu         a3, t5, 194f
                  bgeu         zero, s1, 178f
                  auipc        s1, 587269
                  add          sp, t1, a0
178:              sra          t5, s8, t6
                  nop
                  xor          sp, t3, t3
                  andi         s2, a6, 379
                  sub          s10, t0, ra
                  sll          t1, s2, gp
                  slti         t1, a6, -1565
                  xori         a7, ra, 1099
                  srl          s7, a3, a1
                  add          t5, s1, zero
                  bge          s2, ra, 206f
                  slti         s8, t5, 1398
                  xori         a1, s8, -1673
                  lui          a3, 56553
                  sltu         s8, ra, ra
                  blt          a0, s10, 210f
194:              sra          s2, ra, gp
                  andi         s5, s7, 1940
                  bne          s4, t5, 202f
                  sll          t1, ra, t1
                  slti         t2, s8, 1604
                  sra          zero, tp, ra
                  blt          s11, t4, 215f
                  bne          a4, t4, 213f
202:              slt          s1, s6, s6
                  xor          t2, t5, s6
                  bltu         s5, t5, 223f
                  andi         t6, t5, 275
206:              andi         a6, t0, 189
                  sra          s8, s6, s1
                  auipc        t0, 1003426
                  sll          s4, s9, gp
210:              sltiu        s9, s11, 1414
                  addi         s6, ra, 1356
                  add          t2, sp, t6
213:              bgeu         gp, s10, 215f
                  add          s2, tp, gp
215:              xor          gp, gp, sp
                  slti         s5, a7, 1472
                  beq          a0, a5, 230f
                  srai         a3, zero, 4
                  auipc        s5, 128415
                  ori          a3, a0, 1652
                  sll          sp, s6, a6
                  add          t6, a0, s5
223:              blt          s4, a3, 243f
                  blt          a0, a7, 225f
225:              xor          s6, gp, sp
                  beq          s8, t6, 238f
                  bgeu         s1, a2, 245f
                  xor          a2, gp, s4
                  auipc        t2, 702365
230:              bltu         t1, s5, 245f
                  and          a3, s4, s6
                  bge          t6, a4, 241f
                  slti         a4, s7, 241
                  auipc        a2, 435299
                  sltu         a2, t4, a3
                  bge          s6, t1, 238f
                  sra          t2, t4, ra
238:              xor          t1, t3, s5
                  or           gp, s10, s5
                  bltu         t1, t1, 248f
241:              andi         t3, a0, -1313
                  sltu         t6, s11, t5
243:              bge          gp, a1, 258f
                  slti         t3, t6, 852
245:              and          gp, s0, a5
                  and          s9, s9, ra
                  beq          a0, zero, 262f
248:              sltiu        s7, gp, 119
                  sltiu        zero, zero, 1612
                  srl          zero, ra, a2
                  srl          t1, s8, t5
                  sra          t1, a2, a5
                  blt          s7, s10, 265f
                  blt          s0, a7, 260f
                  add          a7, gp, t2
                  slt          a6, zero, s7
                  addi         t4, a6, -8
258:              addi         s9, a2, 1901
                  andi         s2, a3, -11
260:              or           t3, s2, s10
                  sltu         s3, t0, a0
262:              slti         a4, s2, 1415
                  sll          a7, s3, t1
                  xor          tp, t3, zero
265:              nop
                  sll          t0, t2, a2
                  lui          s5, 139069
                  sub          s3, sp, s8
                  auipc        s4, 658894
                  sll          ra, s1, t4
                  sltu         ra, t0, s0
                  lui          tp, 1021156
                  xori         sp, s5, 637
                  bltu         a1, t4, 275f
275:              bgeu         t1, s6, 277f
                  addi         s1, ra, -748
277:              xor          s7, a6, s11
                  xor          a1, s0, a2
                  blt          gp, s0, 283f
                  sltiu        a2, t3, -1278
                  bge          s9, t5, 301f
                  bge          sp, s4, 297f
283:              beq          s2, s11, 292f
                  sltu         s2, t1, t6
                  nop
                  srai         a1, a1, 10
                  ori          t3, t3, 1394
                  srli         s7, tp, 25
                  nop
                  nop
                  blt          ra, s1, 309f
292:              blt          tp, a6, 294f
                  bgeu         gp, a6, 302f
294:              and          t2, a1, s10
                  lui          t1, 918590
                  bne          t4, s1, 305f
297:              slt          s4, s7, t2
                  blt          ra, t4, 301f
                  ori          a7, a0, 1729
                  bgeu         a3, s10, 319f
301:              sub          t5, gp, s11
302:              sltiu        s4, s11, -1350
                  srli         s5, t2, 22
                  slli         s8, s1, 13
305:              sltu         a7, gp, s3
                  andi         sp, s4, -1239
                  bgeu         t1, t1, 309f
                  xor          s0, a4, a5
309:              slli         s6, s9, 20
                  slt          t1, a1, a2
                  sll          s0, t6, s3
                  blt          t4, a7, 324f
                  and          t2, s3, a0
                  sra          ra, a4, s9
                  or           t0, s1, a5
                  andi         a3, s9, -906
                  sltiu        s0, t6, 1368
                  srli         gp, s3, 28
319:              slti         a7, s3, -2043
                  andi         s3, a5, -491
                  beq          t0, s6, 336f
                  sub          s3, s6, s5
                  nop
324:              beq          s3, s0, 340f
                  srl          sp, a3, t5
                  bge          t2, s1, 346f
                  slli         t5, s8, 18
                  bltu         ra, s1, 336f
                  srli         a7, a1, 13
                  andi         s10, t6, 748
                  srai         s3, s0, 5
                  auipc        sp, 171885
                  or           s8, zero, t4
                  sra          sp, t2, a3
                  slli         s0, s11, 5
336:              nop
                  beq          s0, a0, 349f
                  bne          s0, a1, 350f
                  sltu         ra, ra, a4
340:              and          a7, ra, s6
                  andi         s7, a4, 1184
                  sub          t4, s11, s0
                  bne          sp, s3, 358f
                  add          gp, tp, t4
                  auipc        s3, 396179
346:              addi         ra, gp, 1553
                  slt          t0, zero, a1
                  sra          s9, t3, s7
349:              slti         s8, gp, -832
350:              bltu         t2, a4, 367f
                  andi         a4, a6, 757
                  bltu         t3, sp, 367f
                  or           s8, a1, s5
                  andi         t6, a0, -1701
                  srai         t3, s5, 24
                  slt          zero, t4, a2
                  srl          t1, s7, tp
358:              sltu         zero, t1, s11
                  bgeu         t3, s0, 372f
                  andi         s7, t6, 890
                  ori          t5, t3, 5
                  sll          s2, a4, a1
                  bltu         a6, s1, 378f
                  srai         t0, t6, 20
                  or           a6, t0, s1
                  blt          sp, s5, 372f
367:              or           t1, s5, s4
                  srli         s2, t0, 17
                  ori          a1, s5, -518
                  sra          s3, a6, s0
                  bgeu         a3, s4, 377f
372:              slt          a3, t0, s0
                  slti         a6, t0, -1071
                  bgeu         t4, s8, 379f
                  sltiu        a3, gp, -1836
                  xori         tp, a4, 2011
377:              lui          s9, 554597
378:              srl          s3, s10, a7
379:              xori         t4, zero, -1621
                  slli         zero, a7, 22
                  auipc        tp, 337876
                  srli         ra, s2, 28
                  or           t5, tp, a7
                  andi         t3, ra, 432
                  lw           s5, 4(s11)
                  addi         s11, s11, 16
                  sltu         s3, ra, a0
                  and          s8, t2, ra
                  andi         s3, a1, -1390
                  slli         s8, s8, 27
524:              addi x7, x21, 1
524:              jalr x7, x7, 0
sub_7:            sra          gp, zero, s10
                  nop
                  lui          gp, 625115
                  bltu         t3, a7, sub_7_stack_p
                  sra          s0, s4, s2
                  slt          a3, zero, t6
                  srai         tp, a1, 14
                  xori         t2, s5, 1794
sub_7_stack_p:    addi         s11, s11, -20
                  sw           s5, 4(s11)
                  addi         t2, sp, 831
                  xor          s0, t2, t0
                  xor          a2, a3, s11
                  la           s1, sub_9
                  add          t5, gp, t0
                  slt          a2, s1, a0
                  sltiu        t6, s10, -744
                  xor          s8, s3, gp
                  addi         s1, s1, -728
                  xori         a4, ra, 1037
                  bgeu         ra, s2, sub_7_j11 #branch to jump instr
                  andi         ra, s10, 1264
                  srl          gp, s4, t3
sub_7_j11:        jalr         s5, s1, 728 #jump sub_7 -> sub_9
                  addi         a1, s4, 1406
                  xor          s1, s5, s4
                  beq          zero, a0, sub_7_j12 #branch to jump instr
                  sub          a1, a1, s5
                  srli         tp, ra, 26
                  or           s5, s10, sp
                  andi         a4, t6, -519
sub_7_j12:        jal          s5, sub_8 #jump sub_7 -> sub_8
                  add          a7, t2, t6
                  add          a6, sp, s0
                  sra          zero, s6, a0
                  auipc        s1, 964160
                  slt          s5, sp, t6
                  and          t5, t2, s0
                  nop
                  slli         s10, t2, 13
sub_7_j13:        jal          s5, sub_9 #jump sub_7 -> sub_9
                  and          s9, s3, t5
                  and          s7, ra, s8
                  nop
                  ori          ra, s10, 189
                  add          t6, a6, s9
                  xori         gp, a6, -1946
                  beq          t3, a1, 26f
                  slli         s5, a0, 8
                  sll          s9, s4, gp
                  add          t6, a4, s1
                  blt          tp, zero, 16f
                  xori         s5, gp, -1106
                  ori          s9, sp, 1094
                  bltu         s8, s8, 29f
                  xori         t4, s0, -964
                  addi         t0, a5, 1691
16:               or           a7, t1, s7
                  and          a4, t6, t4
                  add          zero, t2, t1
                  slli         s3, s7, 6
                  and          a4, ra, zero
                  bltu         a2, a1, 26f
                  and          s9, gp, t5
                  bgeu         s5, a6, 32f
                  xori         a3, t5, -567
                  beq          a1, s10, 30f
26:               xor          a2, sp, a6
                  bltu         zero, gp, 32f
                  srl          zero, s8, t3
29:               ori          t6, s6, 216
30:               bltu         zero, s6, 45f
                  beq          t3, s4, 39f
32:               srai         gp, s2, 27
                  slti         a6, a3, 1398
                  slti         s3, s7, -1774
                  xori         s8, s11, -844
                  slt          s0, sp, s8
                  slti         s4, s2, 602
                  ori          a3, a6, 56
39:               bge          s6, a2, 51f
                  srl          s2, a2, s9
                  sltu         gp, s5, a2
                  bne          s6, a5, 47f
                  auipc        s9, 402220
                  blt          a7, s9, 51f
45:               sra          a6, zero, t0
                  slti         zero, tp, 2003
47:               add          a6, ra, t6
                  sll          ra, t5, a1
                  bltu         t6, s11, 56f
                  srl          s7, t0, zero
51:               bgeu         s6, s2, 64f
                  sltiu        ra, s10, 1812
                  ori          t0, a1, -557
                  sra          a1, s1, tp
                  add          s0, t6, a4
56:               sub          a4, zero, s1
                  bne          ra, s11, 63f
                  slt          ra, s11, s9
                  or           s10, s11, gp
                  sra          t1, t3, s8
                  lui          s10, 380073
                  slli         s9, t6, 2
63:               xor          t5, t4, s3
64:               slt          s3, t6, a6
                  auipc        ra, 745325
                  xori         ra, s3, 927
                  srl          t0, t6, t2
                  ori          s9, s0, -208
                  ori          a4, a3, -1941
                  srli         s2, a0, 26
                  xori         s9, t3, 734
                  srli         ra, a1, 14
                  slli         s8, s8, 30
                  xor          t1, gp, tp
                  srli         s4, s3, 30
                  auipc        a4, 562328
                  sltu         s1, tp, s10
                  and          s2, t6, a6
                  srli         s3, a3, 4
                  srai         t4, s4, 19
                  sll          s3, s7, sp
                  or           t0, s2, s9
                  beq          a3, t3, 84f
84:               addi         t3, ra, -1983
                  sltu         s1, gp, t2
                  srl          a7, t5, t2
                  ori          a6, t3, -352
                  auipc        s10, 239751
                  beq          s4, sp, 91f
                  srai         s1, t4, 3
91:               slt          ra, a1, s10
                  ori          a4, s1, 2012
                  bne          a5, s9, 102f
                  srl          s1, t5, a4
                  bne          s2, t1, 104f
                  slti         a7, a2, -1651
                  srai         a2, s6, 18
                  add          a4, t4, t3
                  sltiu        s7, gp, -380
                  beq          zero, s11, 105f
                  andi         a2, sp, -1608
102:              srl          s10, a6, s4
                  sll          ra, a5, a4
104:              bltu         a6, s6, 112f
105:              xor          s2, a2, s1
                  lui          s5, 350673
                  bne          ra, a3, 114f
                  add          gp, a6, s4
                  sltu         a2, s0, t6
                  auipc        s7, 651445
                  xori         a6, s11, 1825
112:              auipc        a7, 982179
                  andi         s3, s11, 648
114:              auipc        s1, 24949
                  lw           s5, 4(s11)
                  srai         s2, zero, 9
                  srl          t4, s11, s10
                  addi         s11, s11, 20
                  or           s2, s10, s10
                  xori         sp, s10, -1912
                  and          t1, a0, t5
                  sll          s4, s2, a0
                  slti         t2, t4, 886
                  srli         t5, ra, 2
166:              addi x14, x21, 1
166:              jalr x14, x14, 0
sub_1:            bltu         s0, a2, sub_1_stack_p
                  nop
sub_1_stack_p:    addi         s11, s11, -64
                  srai         t5, a3, 31
                  andi         zero, a0, -1258
                  sw           s5, 4(s11)
                  slt          s10, s6, s2
                  ori          zero, t2, 1251
                  srli         s4, t6, 15
                  nop
                  sltu         s1, s9, s7
                  la           s4, region_0+736 #start riscv_load_store_rand_instr_stream_1
                  addi         t5, s4, 114
                  sb           t3, -220(s4)
                  slt          t1, s8, t3
                  sra          a1, a3, s10
                  ori          t5, zero, -1289
                  lb           a1, 50(s4)
                  slli         s7, s8, 4
                  sh           t4, -36(s4)
                  addi         a1, a1, 1105
                  sll          s10, gp, sp
                  slt          t1, sp, t4
                  auipc        t2, 189903
                  srli         t1, t0, 17
                  auipc        s5, 969200
                  lb           tp, -127(s4)
                  lui          s6, 525755
                  lbu          zero, 234(s4)
                  sw           t3, 84(s4)
                  and          gp, s9, s11
                  lui          s8, 356790
                  xor          t4, zero, a1
                  lui          s7, 284789
                  sw           s10, 228(s4)
                  lui          tp, 846159
                  slti         s6, t5, 1712
                  sb           a1, 94(s4)
                  slti         s1, a6, 810
                  sh           s6, 212(s4)
                  sll          t1, s10, s1
                  lui          a1, 885536
                  sb           sp, -83(s4)
                  lb           ra, -47(s4)
                  slti         t0, s9, 954
                  lh           t3, -6(s4)
                  slti         a3, tp, 679
                  lbu          s3, -61(s4) #end riscv_load_store_rand_instr_stream_1
                  la           s0, region_1+712 #start riscv_load_store_rand_instr_stream_3
                  sltiu        sp, s0, -674
                  slt          s2, s9, a2
                  slti         s4, s0, -1706
                  sb           t5, -543(s0)
                  addi         zero, s4, 1249
                  andi         a1, a6, 947
                  addi         t6, t1, -601
                  ori          s6, s3, 1859
                  slli         a4, a0, 6
                  lb           s7, 706(s0)
                  auipc        tp, 251290
                  auipc        a3, 662091
                  lbu          s10, 541(s0)
                  lw           t1, -676(s0)
                  xor          gp, s5, t3
                  or           a4, tp, ra
                  sb           s10, 805(s0)
                  lbu          t1, 150(s0)
                  ori          s2, t4, 1444
                  xor          t1, a1, s2
                  lhu          s3, 738(s0)
                  lh           s1, 514(s0)
                  lhu          t0, 890(s0)
                  sll          t4, t0, s10
                  slt          t6, a7, s3
                  sltiu        t3, s6, 234
                  lb           t5, 1085(s0)
                  slti         t0, s0, 494
                  slt          t4, s2, s9
                  lhu          s1, -532(s0)
                  lbu          t3, 856(s0)
                  lb           a7, 222(s0) #end riscv_load_store_rand_instr_stream_3
                  xori         s7, s6, -1226
                  lui          s6, 238561
                  sra          t5, ra, t2
                  blt          zero, t1, 8f
                  slt          s5, a3, sp
                  auipc        a4, 858753
                  ori          s9, zero, 183
                  addi         a7, s3, 1355
8:                blt          tp, s7, 9f
9:                sub          s2, t0, s9
                  lui          s6, 595114
                  sub          a6, a3, s7
                  xor          sp, a1, s10
                  xor          s4, s8, s8
                  bltu         s0, a2, 30f
                  slti         gp, a5, -1488
                  bne          a3, s0, 33f
                  srli         t4, gp, 3
                  nop
                  slti         ra, s8, -1580
                  sltu         a4, a3, s0
                  slt          ra, s11, t1
                  sltu         s8, s10, a0
                  sltiu        a3, a7, 1259
                  slt          s4, t3, a6
                  bgeu         t2, gp, 35f
                  sltiu        gp, t3, 98
                  xor          a6, s0, s9
                  slt          s5, a0, s9
                  srai         s1, s5, 9
30:               srai         s10, tp, 16
                  slli         t3, s9, 5
                  and          a4, s8, a1
33:               sltiu        sp, s0, 1196
                  lui          s10, 941361
35:               xor          a1, a5, s1
                  slli         sp, s2, 8
                  bgeu         s4, t2, 49f
                  slti         sp, a3, -762
                  bltu         s9, a2, 50f
                  srai         a2, s1, 16
                  addi         s1, s0, 1105
                  bgeu         t1, t5, 61f
                  or           a4, a6, a5
                  ori          s2, a1, -1142
                  bgeu         s11, gp, 48f
                  bltu         a3, s8, 58f
                  bgeu         s2, s6, 66f
48:               nop
49:               srl          t0, a7, s1
50:               auipc        s8, 287091
                  or           t0, s1, s5
                  bne          a6, s6, 72f
                  sltiu        s2, a4, -1218
                  sub          a4, t6, s11
                  lui          a6, 390932
                  beq          t6, a4, 69f
                  sltu         t4, s9, s7
58:               and          a3, a0, a6
                  srai         a1, t1, 9
                  add          s3, t2, s6
61:               addi         s9, a5, -731
                  or           s2, t4, a1
                  slti         sp, t2, -808
                  auipc        t6, 837340
                  slt          s4, s4, s3
66:               and          tp, s6, t3
                  sra          t6, t0, a0
                  nop
69:               sub          t2, t0, s4
                  bge          s9, t4, 80f
                  sub          t2, s0, a2
72:               xori         a4, sp, -974
                  beq          s11, a5, 85f
                  blt          t3, s7, 81f
                  xor          s5, t2, t3
                  srl          gp, a5, zero
                  ori          t0, t3, 878
                  sltu         t2, gp, tp
                  bgeu         sp, t2, 87f
80:               bne          tp, s11, 85f
81:               addi         s0, tp, -1954
                  slti         s8, t1, -1799
                  slti         ra, s6, -234
                  la           gp, region_0+248 #start riscv_load_store_rand_instr_stream_0
                  sb           s9, 3(gp)
                  srl          s5, s5, a1
                  lbu          t0, -6(gp)
                  sw           s2, 12(gp)
                  sw           zero, 8(gp)
                  sll          a4, t5, s0
                  sltu         s2, zero, a7
                  sw           a6, 0(gp)
                  sh           t1, 8(gp)
                  ori          a3, s4, -1704
                  slti         ra, s0, 482
                  sltiu        a4, zero, -1819
                  slt          a7, t5, s2
                  sh           a7, -10(gp)
                  lhu          s3, 0(gp)
                  lbu          a1, 11(gp)
                  lb           s3, -11(gp)
                  lh           t6, 2(gp)
                  sb           t1, -14(gp)
                  andi         s6, s8, 1878
                  add          s3, gp, a2
                  nop
                  add          tp, s1, t4
                  slti         sp, a0, 372
                  addi         ra, a0, 2022
                  slti         s4, s11, -1857
                  add          s5, a2, t3
                  lbu          ra, -15(gp)
                  slli         s9, a7, 19
                  lbu          s7, 15(gp)
                  sra          s6, a4, s4
                  srl          s2, t6, t0
                  lhu          s6, 4(gp)
                  sb           a0, -13(gp)
                  lui          a3, 753462
                  srai         s0, sp, 2
                  srl          s6, s4, t4
                  sb           s7, 15(gp)
                  lb           s2, -9(gp)
                  lbu          t1, 7(gp)
                  xori         a2, gp, 1037
                  srl          t3, a2, s1
                  lbu          tp, -11(gp)
                  lb           s10, 3(gp)
                  lhu          a2, -6(gp)
                  lh           a3, -2(gp)
                  srli         t2, ra, 4
                  slli         t2, a3, 15
                  lbu          s1, 15(gp)
                  xori         t3, s1, -951
                  sb           s11, 11(gp)
                  lbu          s0, -12(gp)
                  xori         t6, s3, -368
                  sb           ra, -9(gp) #end riscv_load_store_rand_instr_stream_0
                  sub          a6, s9, s0
85:               and          t3, s2, t6
                  beq          t1, s0, 105f
87:               xori         s3, s9, 514
                  nop
                  srli         sp, s10, 26
                  slt          s6, a6, a4
                  lui          s2, 182372
                  bgeu         t2, a3, 97f
                  sra          t0, s9, t0
                  bge          s1, a4, 102f
                  auipc        s9, 21773
                  sltu         s10, s3, tp
97:               xor          s10, sp, s11
                  srai         s7, a6, 27
                  blt          t0, t5, 117f
                  beq          a4, s4, 112f
                  blt          a2, t0, 104f
102:              or           s8, a2, s10
                  andi         t2, t6, 0
104:              slt          s3, t4, s4
105:              bge          a3, gp, 125f
                  sll          a3, tp, t6
                  sltu         a1, tp, t5
                  or           s10, t3, t1
                  and          s5, s6, s8
                  sub          ra, a1, t3
                  lui          t0, 919261
112:              sub          t4, s10, a5
                  slti         a6, s10, -713
                  auipc        s2, 96762
                  slt          t5, sp, t3
                  sltu         s4, sp, s4
117:              xori         t2, sp, -1687
                  nop
                  bne          s7, t0, 126f
                  ori          t6, s9, -45
                  sll          a2, a0, s7
                  ori          t3, s0, 1934
                  bltu         a1, t3, 133f
                  slli         t2, a4, 3
125:              ori          a6, s5, -1032
126:              xori         s9, t0, -673
                  nop
                  andi         a3, t0, -855
                  srl          t4, zero, a3
                  slli         a4, s0, 2
                  xor          t6, a0, zero
                  xori         ra, a3, -1744
133:              sltiu        t2, t2, 666
                  sltiu        t2, s2, 1322
                  andi         a7, s7, 599
                  bge          s8, a0, 137f
137:              sll          a7, gp, a3
                  sra          a6, zero, a0
                  srl          t1, s9, a6
                  bne          t0, s5, 155f
                  srai         a7, a4, 3
                  add          s3, t0, ra
                  beq          sp, a2, 148f
                  srai         t0, s11, 20
                  slt          ra, a0, t5
                  or           t4, s6, s1
                  beq          tp, zero, 165f
148:              addi         t0, t3, 1140
                  beq          t1, s6, 150f
150:              slli         t5, a1, 5
                  slli         a2, s9, 15
                  bltu         tp, a1, 162f
                  sll          t4, s2, s1
                  nop
155:              beq          a2, tp, 170f
                  sub          ra, a4, tp
                  slt          s4, a7, s9
                  blt          s11, sp, 159f
159:              bne          s2, s4, 167f
                  xori         t5, a1, -320
                  addi         t5, a5, -178
162:              bltu         a1, t6, 172f
                  bne          s4, s9, 175f
                  bgeu         s9, s3, 176f
165:              bne          zero, s6, 168f
                  add          t0, s1, s2
167:              sub          s6, a6, s9
168:              slli         s10, s7, 21
                  bge          tp, t2, 188f
170:              sll          ra, s6, t6
                  slli         s2, t0, 13
172:              bltu         t4, s6, 188f
                  sra          s1, tp, s5
                  addi         s1, s6, 1884
175:              bgeu         zero, gp, 192f
176:              bne          t4, s11, 195f
                  sltu         a4, s2, gp
                  sub          t0, a5, a3
                  xori         s7, s11, -1645
                  blt          s3, gp, 191f
                  bgeu         s2, t6, 191f
                  sll          t1, s5, s2
                  nop
                  slt          s0, tp, s2
                  sll          s8, a7, s2
                  srai         t3, a4, 16
                  sll          s1, s0, t2
188:              bge          t2, a6, 191f
                  slti         a7, s8, 1526
                  lui          s0, 492508
191:              srli         s7, t6, 28
192:              sltu         a3, a2, s11
                  and          a6, ra, a6
                  addi         t1, a3, 1087
195:              andi         s6, a4, -1505
                  or           s8, s2, s11
                  sub          t6, ra, s7
                  sltu         t1, a5, a5
                  blt          s6, a6, 207f
                  slt          s7, s7, s5
                  sra          t2, s9, tp
                  sltu         a7, a7, gp
                  auipc        zero, 533434
                  ori          a4, gp, -1737
                  sub          s10, s5, zero
                  xor          a4, s1, s3
                  sltu         s7, sp, t2
                  sra          s1, s11, sp
                  srai         tp, a7, 17
                  srli         zero, s6, 0
                  xori         s10, a5, -337
                  srli         s10, s2, 4
                  bltu         ra, s3, sub_1_j4 #branch to jump instr
                  and          a7, t0, t6
sub_1_j4:         jal          s5, sub_2 #jump sub_1 -> sub_2
                  bge          a0, ra, 209f
                  xor          s0, s8, s6
                  sltiu        t1, sp, 448
207:              ori          zero, t0, 403
                  sltiu        s7, t1, 445
209:              bltu         t2, s11, 221f
                  sltiu        gp, a7, -1364
                  slt          a4, s9, s5
                  beq          s4, s10, 225f
                  ori          t2, t4, 1506
                  slt          a3, gp, t0
                  auipc        a2, 355008
                  auipc        s5, 147564
                  auipc        t2, 1004763
                  addi         a4, a1, 1560
                  slti         zero, a2, 2010
                  bne          s11, tp, 225f
221:              slti         s9, a5, -144
                  blt          t5, s9, 229f
                  sub          t2, s10, a5
                  bltu         s1, s2, 244f
225:              blt          t6, s0, 230f
                  beq          a4, s0, 233f
                  and          t5, t4, s0
                  slti         s1, s0, -863
229:              xor          a1, t3, s1
230:              sltu         s3, a5, a1
                  slti         a1, s2, -1384
                  sltiu        t5, s6, -498
233:              lui          s4, 703560
                  srai         s0, a5, 29
                  slt          t3, sp, s11
                  sra          s4, s0, t4
                  sub          a1, s2, s6
                  andi         t3, a1, 1425
                  sltu         t4, ra, a2
                  srl          a4, t2, t6
                  lui          s6, 220265
                  sll          a4, a5, a6
                  slt          zero, t2, t4
244:              addi         s1, a2, 1143
                  lui          s8, 760963
                  andi         s6, a5, -2019
                  blt          a2, s7, 267f
                  blt          t5, a6, 253f
                  slli         s1, sp, 11
                  sra          t3, a2, t0
                  lui          s7, 866145
                  nop
253:              beq          tp, a4, 265f
                  addi         s8, t2, -1452
                  bge          s5, a7, 274f
                  blt          a3, t5, 261f
                  nop
                  xor          t4, a7, s3
                  and          t6, s3, a4
                  xori         a7, a5, 1379
261:              slti         t6, s6, -763
                  lui          s3, 654390
                  srai         s0, s8, 22
                  add          a6, s8, s4
265:              and          a4, s8, s1
                  or           sp, a5, a3
267:              bge          a5, s2, 275f
                  srl          a3, s0, zero
                  sra          a2, s8, t6
                  bne          s5, tp, 273f
                  sub          t6, t4, a5
                  lui          zero, 1018001
273:              bgeu         s4, a5, 278f
274:              srai         a7, tp, 16
275:              sra          t3, s1, t1
                  srai         t1, sp, 11
                  slli         t4, ra, 18
278:              slli         s8, s2, 14
                  slti         t1, t3, 662
                  add          a2, t0, s3
                  or           ra, s1, a4
                  srl          sp, s1, t4
                  sub          ra, s3, t4
                  slti         s2, s4, -1997
                  andi         s9, a4, -1974
                  add          a4, gp, s8
                  sub          s8, a3, s1
                  nop
                  srl          s5, s11, t0
                  slti         s5, s9, -1728
                  blt          ra, sp, 296f
                  lui          t1, 270111
                  srl          t5, t6, sp
                  nop
                  sltiu        gp, tp, 1976
296:              xori         a2, s6, -34
                  bltu         tp, t2, 308f
                  slti         s7, gp, -1621
                  beq          a1, s6, 319f
                  lui          t5, 654210
                  sll          s1, a3, zero
                  ori          a7, t1, 1831
                  bne          t3, t4, 315f
                  beq          s8, t1, 311f
                  slti         a1, a6, 1108
                  sub          s5, s4, t2
                  sltu         s1, s5, gp
308:              or           a7, a5, t1
                  sub          t5, a0, s9
                  sra          s8, a1, s11
311:              addi         a3, s7, 853
                  sll          tp, t6, t1
                  sra          s8, a0, t0
                  ori          tp, s0, 675
315:              bge          a5, a2, 318f
                  sltiu        s8, a3, -1255
                  xori         t2, t0, 951
318:              beq          t0, s9, 328f
319:              ori          ra, s5, -567
                  srl          zero, t3, t1
                  srai         a6, s10, 3
                  or           a7, s1, a5
                  sltu         s6, s8, s5
                  addi         s6, t2, 209
                  sltiu        t2, t0, -17
                  slti         t5, a5, -1257
                  srai         t0, s8, 0
328:              srai         s5, s0, 9
                  andi         zero, a2, -2015
                  andi         t4, t5, -492
                  bgeu         t5, t5, 343f
                  sll          s0, s7, s8
                  bge          t0, s4, 338f
                  sub          s9, t2, s8
                  xor          s2, s3, s1
                  srl          a6, t0, s7
                  andi         s8, a2, 1873
338:              and          s3, t2, a6
                  bne          t1, s6, 355f
                  or           gp, s4, a1
                  bge          t1, a6, 351f
                  ori          s10, a3, 239
343:              lui          s3, 547828
                  srl          t3, t3, s7
                  sra          a2, t4, s8
                  bgeu         a1, a6, 365f
                  and          a3, a7, t5
                  bltu         zero, s5, 366f
                  or           s1, tp, a7
                  slt          t4, t0, s10
351:              sra          t5, tp, s4
                  sltiu        s3, a2, 1177
                  sub          s5, s11, t1
                  xori         s3, gp, 1488
355:              add          t5, a5, s1
                  addi         s4, a0, 853
                  and          s8, s0, s9
                  or           a1, s11, t1
                  and          t1, t0, a3
                  lui          t4, 570260
                  slt          a7, s4, t5
                  auipc        a7, 462391
                  bne          s2, s4, 375f
                  add          tp, s3, ra
365:              blt          a6, t3, 382f
366:              xori         s7, t3, -1840
                  sll          a4, gp, s8
                  ori          a7, t1, -1593
                  add          s8, s0, tp
                  addi         t2, tp, 806
                  srl          s0, gp, tp
                  sltiu        s7, t5, -1604
                  addi         s9, s6, 303
                  bne          s2, a2, 393f
375:              auipc        a6, 400299
                  addi         s4, a3, -1467
                  ori          s6, s0, -754
                  sll          a3, t1, t5
                  slli         t1, t4, 30
                  bge          a6, s11, 393f
                  and          s4, s10, s10
382:              auipc        a1, 417345
                  srai         tp, sp, 24
                  srl          a4, a4, s6
                  blt          a3, t2, 404f
                  bne          sp, s10, 406f
                  bgeu         s6, s8, 399f
                  or           a2, tp, zero
                  andi         sp, t1, 1853
                  andi         tp, t4, -652
                  xori         t1, a7, 1741
                  sltu         s2, t5, s10
393:              slli         t2, s6, 12
                  auipc        a1, 599991
                  sll          s8, gp, s3
                  lui          t0, 702398
                  bge          s5, a0, 398f
398:              and          s10, t1, s5
399:              slt          s4, t5, s4
                  andi         t3, s7, -1137
                  lui          t5, 693413
                  sltu         s6, s11, sp
                  and          s3, t1, t0
404:              and          t6, t6, s11
                  srl          s3, a3, t4
406:              sra          a3, t3, t4
                  addi         a4, a0, -1985
                  slt          a4, t1, sp
                  bltu         s10, s0, 410f
410:              sra          a3, a0, s7
                  slt          a4, a7, t4
                  lui          zero, 761605
                  bgeu         t2, s5, 421f
                  addi         s0, a1, 1364
                  beq          s8, s0, 425f
                  xori         t4, s3, 1145
                  srl          a1, s5, s0
                  sub          t5, sp, a4
                  sub          t2, t6, s2
                  bltu         s8, s8, 435f
421:              slli         s0, ra, 9
                  slli         s10, gp, 22
                  bgeu         sp, a5, 430f
                  la           sp, region_0+1968 #start riscv_load_store_rand_instr_stream_2
                  slli         t6, t2, 21
                  ori          a4, a1, 1449
                  add          s5, a2, s1
                  and          a4, sp, s10
                  nop
                  lb           a2, -94(sp)
                  andi         s5, a2, -1345
                  and          t0, s4, gp
                  sb           s1, -825(sp)
                  xor          s10, s10, gp
                  srai         s10, t4, 19
                  lb           a3, -569(sp)
                  srl          s9, ra, zero
                  and          t5, a4, ra
                  lbu          s1, -1965(sp)
                  srl          a1, a6, ra
                  xori         a4, a1, -1962
                  srl          zero, s3, a2
                  lb           s2, -1583(sp)
                  sw           sp, -68(sp)
                  andi         s6, a1, -830
                  slti         t6, a4, -1765
                  srl          a2, a7, s3
                  lbu          a4, -1945(sp)
                  add          gp, s8, s7
                  lb           gp, -888(sp)
                  slt          s7, a7, s1
                  sll          t0, a2, a6
                  ori          a3, gp, 642
                  lbu          gp, -54(sp)
                  lbu          t5, -1095(sp) #end riscv_load_store_rand_instr_stream_2
                  or           t5, a0, ra
425:              bne          s9, gp, 445f
                  addi         zero, s2, -278
                  sub          s1, gp, zero
                  xor          s9, s0, a6
                  add          s5, s4, a2
430:              sltu         a6, s4, t4
                  lui          t2, 660693
                  auipc        s6, 427417
                  beq          s11, a0, 453f
                  bltu         s0, tp, 453f
435:              auipc        s2, 627621
                  sub          a2, gp, a0
                  andi         t1, s3, -1552
                  andi         s0, a5, -382
                  addi         sp, a4, 1906
                  andi         s3, a4, 1218
                  nop
                  beq          s3, a7, 460f
                  or           t4, t4, t6
                  addi         s3, a1, 1568
445:              srai         t6, s9, 26
                  or           gp, t1, t3
                  xori         a4, sp, 1859
                  bne          s11, s9, 461f
                  or           s1, t1, s6
                  blt          tp, gp, 462f
                  slli         s8, a2, 14
                  andi         gp, a1, 1620
453:              slti         t1, t1, 1246
                  sub          a3, a1, s4
                  slti         t5, s0, 1242
                  sll          s3, t4, sp
                  sub          t1, gp, s7
                  or           a4, t1, a7
                  blt          s2, s7, 476f
460:              xori         gp, a7, -1270
461:              sltu         t2, s3, a1
462:              slt          sp, s4, s11
                  addi         s4, a1, 322
                  add          gp, gp, s8
                  lui          tp, 154584
                  slt          t6, t1, a6
                  blt          t3, s9, 472f
                  and          a4, s11, a2
                  sltiu        sp, a0, -49
                  xor          tp, zero, tp
                  srli         a1, s4, 10
472:              slli         t6, t1, 16
                  slti         tp, s3, -457
                  andi         t2, t3, 1133
                  lui          a1, 597285
476:              sltu         s2, s3, zero
                  sltu         a3, s11, t2
                  bne          a1, s1, 488f
                  bgeu         a1, t2, 484f
                  srai         t5, s3, 1
                  ori          a3, t6, -1189
                  or           s1, a3, a2
                  ori          a3, a7, 921
484:              sll          t0, ra, t5
                  srl          s0, a5, a2
                  and          s2, t6, a4
                  ori          t5, a1, 1398
488:              bltu         gp, s8, 489f
489:              auipc        s6, 447086
                  lui          s9, 433983
                  sra          s0, a6, t5
                  xor          s5, s2, t6
                  sltiu        zero, a2, -1287
                  blt          a5, s10, 506f
                  bltu         a7, t3, 498f
                  xor          s7, s5, zero
                  sra          ra, t0, ra
498:              bgeu         a3, s8, 506f
                  srai         t3, s11, 13
                  and          a6, s3, s1
                  blt          a7, t6, 511f
                  bge          gp, tp, 512f
                  sll          sp, t1, s11
                  sll          t6, s11, a0
                  bge          t6, sp, sub_1_j3 #branch to jump instr
                  xori         a2, a5, -28
                  and          zero, s5, t2
                  slti         t6, a6, -729
                  srai         gp, a4, 15
                  slli         ra, s9, 14
                  sll          gp, a2, a6
                  slt          s6, a4, s6
sub_1_j3:         jal          s5, sub_2 #jump sub_1 -> sub_2
                  blt          s7, s9, 523f
                  slt          ra, t3, s6
506:              ori          t1, a0, -150
                  sltu         s6, a3, t1
                  addi         t4, s3, -1859
                  srli         s1, s11, 27
                  bltu         s0, a0, 522f
511:              srai         a4, s0, 29
512:              bge          a4, s11, 531f
                  srai         s1, sp, 29
                  andi         a6, tp, -583
                  xori         s6, a0, -965
                  slti         a3, s8, 1037
                  slt          s0, a7, gp
                  xori         a3, s2, 1962
                  blt          a3, s3, 531f
                  blt          t6, gp, 536f
                  andi         a2, s4, 794
522:              sub          s8, zero, s11
523:              xor          tp, a4, s1
                  srli         sp, a1, 18
                  ori          tp, a3, -347
                  andi         t3, t4, -527
                  xori         s1, s5, 343
                  slli         t2, ra, 24
                  bge          s9, a0, 536f
                  add          a7, s0, a3
531:              sltiu        s4, a2, -1492
                  add          t4, a3, a7
                  xor          t5, a5, t2
                  bne          s5, a5, 539f
                  add          tp, ra, s5
536:              sltiu        ra, a6, -1561
                  sub          gp, s7, t4
                  nop
539:              slli         a1, zero, 4
                  or           s9, s6, s0
                  andi         a7, s1, 1840
                  srai         ra, s3, 23
                  addi         a7, a3, 637
                  auipc        zero, 757585
                  sltiu        a2, t6, 545
                  xori         t0, s2, -1293
                  sltu         t3, s8, t5
                  lw           s5, 4(s11)
                  addi         s11, s11, 64
                  slt          s2, s8, zero
                  slt          a3, ra, sp
742:              addi x17, x21, 1
742:              jalr x17, x17, 0
sub_2:            slti         a2, s8, -2030
                  xori         t2, s7, -210
                  blt          s2, a6, sub_2_stack_p
sub_2_stack_p:    addi         s11, s11, -64
                  sw           s5, 4(s11)
                  srl          s2, s0, ra
                  slli         s7, a4, 23
                  add          t3, t4, a2
                  andi         s4, s9, 871
                  slt          a1, s8, a6
                  sltu         s2, t6, ra
                  nop
                  sub          a2, t1, a7
                  sra          s1, t0, t2
                  nop
                  la           t4, sub_3
                  slti         a4, t3, 1223
                  slti         ra, a5, 398
                  addi         t4, t4, 255
                  auipc        s3, 843542
                  add          s10, a2, ra
                  auipc        s1, 566972
                  srl          t6, s8, a3
sub_2_j6:         jalr         s5, t4, -255 #jump sub_2 -> sub_3
                  la           sp, region_1+1531 #start riscv_load_store_rand_instr_stream_2
                  lbu          s10, -204(sp)
                  lui          a1, 413492
                  sh           t2, -43(sp)
                  sb           gp, -118(sp)
                  nop
                  lbu          s1, -21(sp)
                  sh           s8, 113(sp)
                  lbu          gp, -12(sp)
                  lui          s6, 754252
                  srai         t5, t6, 19
                  sb           t3, -148(sp)
                  sw           s8, -171(sp)
                  ori          a4, gp, 1276
                  sll          s5, sp, s5
                  sb           a3, -125(sp)
                  sll          t0, t1, t2
                  xori         t1, s9, 387
                  addi         tp, s7, 1427
                  sw           a4, -131(sp)
                  nop
                  lhu          t5, 209(sp)
                  sb           s6, -248(sp)
                  sw           t5, -87(sp)
                  sub          t0, t5, sp
                  lbu          t3, -134(sp)
                  sltu         s0, s10, sp
                  lui          s9, 819465
                  lb           a4, 18(sp)
                  lbu          t2, -146(sp)
                  srai         s9, a1, 27
                  lbu          t6, 155(sp)
                  xor          t2, a0, s3
                  ori          a1, t1, 1884
                  lbu          t2, 120(sp)
                  sh           t5, 247(sp)
                  lhu          s3, 103(sp)
                  add          a4, t1, a5
                  lbu          t3, -223(sp)
                  lhu          s7, -29(sp)
                  sb           t5, 77(sp)
                  lbu          a4, -52(sp)
                  sh           s11, 15(sp)
                  lbu          s7, 2(sp) #end riscv_load_store_rand_instr_stream_2
                  la           t1, region_0+153 #start riscv_load_store_rand_instr_stream_0
                  sltiu        s0, a7, -595
                  lh           s5, 135(t1)
                  lb           t6, 187(t1)
                  lb           s5, 46(t1)
                  sra          t4, sp, s6
                  xori         a2, a2, 735
                  lb           a2, -52(t1)
                  andi         tp, s2, -1928
                  addi         s4, s7, -1359
                  srl          s4, t3, t1
                  sb           s0, 125(t1)
                  sw           s0, 147(t1)
                  lh           tp, -13(t1)
                  srl          s9, s3, s4
                  sb           s7, 243(t1)
                  slli         a1, s2, 29
                  lbu          a1, -48(t1)
                  lb           gp, 28(t1)
                  lhu          a6, -35(t1)
                  andi         s3, ra, -1648
                  lb           s4, 248(t1)
                  lb           s1, -127(t1)
                  lb           s9, 243(t1)
                  lbu          a2, 226(t1)
                  sra          a6, a3, s2
                  ori          s8, s9, -1463
                  sltiu        s8, sp, -224
                  xori         t3, s4, 1533
                  lbu          s1, 124(t1)
                  lbu          s7, -96(t1)
                  srai         a6, t1, 30
                  xor          ra, t1, t2
                  sw           a3, 3(t1)
                  sb           a2, -140(t1)
                  auipc        gp, 71377
                  lhu          s3, 47(t1) #end riscv_load_store_rand_instr_stream_0
                  la           s8, region_1+1088 #start riscv_load_store_rand_instr_stream_1
                  srai         t6, t4, 28
                  lui          s5, 84907
                  sub          s5, t5, t3
                  auipc        a3, 319272
                  andi         s9, a0, -57
                  lui          s3, 988240
                  slli         s2, a5, 18
                  sb           s9, 190(s8)
                  srl          a2, a4, zero
                  or           s7, s7, s10
                  sb           t6, -20(s8)
                  nop
                  xori         gp, a4, -398
                  sltu         t3, t1, s6
                  lbu          t4, 3(s8)
                  srl          a1, t2, s7
                  sb           t5, -81(s8)
                  sb           t3, 177(s8)
                  sb           s9, 91(s8)
                  add          s10, ra, a2
                  srai         s9, s6, 18
                  lhu          sp, -216(s8)
                  lui          a4, 995218
                  ori          t0, t2, 635
                  slt          s6, s1, s6
                  lb           a4, -126(s8)
                  sb           sp, -253(s8)
                  srai         a3, zero, 29
                  lb           t5, -250(s8)
                  add          a2, t1, a5
                  sll          t3, s5, a4
                  slt          t0, s3, zero
                  slt          a4, a5, s7
                  sb           a5, 241(s8)
                  srli         t3, s3, 11
                  slli         s6, s4, 31
                  lh           a2, 62(s8) #end riscv_load_store_rand_instr_stream_1
                  srai         t5, t6, 16
                  and          s2, t0, a7
                  slt          ra, s4, a2
                  xor          t1, t2, t1
                  and          s7, s2, t2
                  xor          sp, tp, t6
                  lui          t2, 366649
                  andi         s5, tp, -663
                  bgeu         a4, s4, 19f
                  slti         a3, s1, 1995
                  or           a4, s4, s5
                  ori          s9, t0, 442
                  bge          s8, a3, 28f
                  slli         s3, a2, 2
                  sltu         t1, s6, s4
                  or           a6, t2, a5
                  bge          t6, s2, 21f
                  addi         s4, a5, -382
                  and          s3, a6, gp
19:               bne          s9, t5, 31f
                  xor          s6, a3, s4
21:               slti         a6, a2, -1793
                  sll          s1, s8, s0
                  bne          t6, sp, 39f
                  srl          s3, t2, s3
                  sltu         t2, s4, s1
                  slti         s6, t1, -1242
                  srli         t3, t0, 3
28:               srai         a4, t1, 27
                  beq          t3, t6, 42f
                  andi         a6, t6, -72
31:               srl          s1, s0, a0
                  slti         s2, t4, 34
                  add          a3, t4, a6
                  blt          s11, s10, 37f
                  beq          a6, s10, 52f
                  beq          t0, a5, 47f
37:               xori         a2, s4, 1843
                  beq          zero, gp, 57f
39:               andi         s0, sp, -1671
                  srai         t1, s0, 18
                  slt          s3, a1, s9
42:               srl          a6, t2, t0
                  addi         a4, a0, 422
                  srai         s5, s11, 4
                  andi         tp, a4, -964
                  bgeu         s2, s5, 57f
47:               bne          a4, ra, 49f
                  slli         zero, s10, 15
49:               xori         t2, s2, -1958
                  and          a3, s8, a5
                  lui          a6, 506183
52:               blt          s11, a1, 62f
                  beq          t0, s10, 57f
                  srli         s9, t5, 29
                  xor          s5, a5, t3
                  bgeu         a2, s3, 73f
57:               slti         a2, s5, 812
                  slli         s4, s4, 29
                  blt          s7, a3, 61f
                  lui          sp, 346116
61:               bne          s1, a5, 72f
62:               srli         s9, t3, 21
                  bltu         a1, a4, 79f
                  srai         t5, t4, 14
                  beq          t5, gp, 68f
                  blt          s0, a3, 81f
                  bge          a5, a5, 85f
68:               lui          s10, 457276
                  srli         zero, s11, 18
                  bgeu         s9, a5, 77f
                  srli         s0, tp, 5
72:               add          ra, tp, t2
73:               slti         t2, a4, 468
                  srai         gp, s4, 7
                  blt          s6, s6, 79f
                  xori         s0, s8, 586
77:               ori          t6, a7, -135
                  xor          s2, a6, a0
79:               auipc        a1, 639047
                  srl          t5, t1, t0
81:               ori          a7, a2, 333
                  xori         tp, zero, -254
                  bge          s3, a5, 98f
                  or           sp, s9, gp
85:               nop
                  add          t5, zero, ra
                  auipc        sp, 663157
                  slti         zero, ra, -242
                  sub          s10, t6, s2
                  slt          t3, t5, t1
                  addi         a1, t5, 18
                  and          t5, a0, a6
                  andi         t3, a3, -450
                  srl          s5, a5, t0
                  sll          s10, t0, s5
                  bgeu         t3, a1, 115f
                  bltu         s11, a6, 116f
98:               lui          gp, 836619
                  srai         s1, s8, 15
                  xori         a6, a2, 373
                  xor          sp, a1, a1
                  xori         a1, s11, 1687
                  ori          s0, a7, -474
                  sltu         a4, t0, s8
                  or           a2, t5, a4
                  sltiu        a6, t1, -281
                  xor          s8, t1, a6
                  xori         a2, s11, 1598
                  bge          s3, zero, 126f
                  beq          sp, s2, 128f
                  beq          zero, sp, 121f
                  sll          s8, t1, s7
                  xor          zero, s6, s0
                  auipc        s5, 467374
115:              and          gp, t1, t4
116:              sll          t5, t1, a4
                  beq          s4, s6, 119f
                  slli         s1, s8, 13
119:              srli         a7, zero, 3
                  and          s4, t1, t5
121:              bne          s1, sp, 132f
                  andi         s9, s4, -1003
                  slt          t1, t5, a4
                  xor          s8, t3, s0
                  srl          a3, s2, s8
126:              slti         s4, s6, 320
                  addi         a4, s5, 1175
128:              sll          s0, s3, s11
                  sltu         a7, s3, s3
                  auipc        zero, 197975
                  nop
132:              xor          gp, s6, t6
                  xori         t5, s2, -789
                  auipc        a1, 478655
                  bgeu         a2, tp, 146f
                  slt          t3, s6, a2
                  slli         s0, s1, 17
                  blt          a7, a4, 153f
                  nop
                  addi         s1, sp, 1055
                  or           a3, sp, s9
                  srli         s4, s5, 0
                  sll          s8, s3, t4
                  xori         zero, t0, 1160
                  sra          t5, s6, s2
146:              sub          s1, s9, s9
                  slt          s10, s9, a1
                  srli         s6, t5, 21
                  srli         s10, tp, 6
                  sra          s10, a1, a0
                  bgeu         s9, a6, 162f
                  sub          t1, a3, s7
153:              sub          t2, tp, sp
                  xori         t3, a6, -1794
                  lui          s0, 734016
                  blt          t6, s2, 163f
                  srli         s3, a5, 27
                  nop
                  nop
                  beq          t5, zero, 164f
                  sra          gp, s8, ra
162:              bne          t2, s3, 166f
163:              xori         a3, s3, -490
164:              sra          t3, s4, t5
                  slli         a1, a7, 22
166:              nop
                  srai         t0, zero, 11
                  blt          a7, t0, 186f
                  sra          s0, t4, zero
                  lui          s5, 1008654
                  ori          t2, a7, -1486
                  xor          a6, a3, a4
                  slti         s8, t6, -959
                  and          a4, a0, s4
                  add          a4, s10, tp
                  xori         s1, s9, -1684
                  bge          s8, a5, 196f
                  andi         s5, gp, 324
                  and          s1, s8, t1
                  lui          zero, 874924
                  bgeu         zero, a3, 196f
                  and          ra, gp, ra
                  and          s0, s0, t6
                  xori         a3, s4, 309
                  bge          s0, s0, 190f
186:              and          s0, t5, s0
                  sltiu        s10, s10, 1860
                  slti         s9, a0, 1538
                  sltiu        a7, a5, 1917
190:              srl          zero, s1, tp
                  andi         a1, a1, 80
                  blt          s10, a4, 208f
                  blt          a4, s0, 209f
                  ori          a7, s2, -1826
                  andi         tp, sp, 657
196:              slt          t2, s0, s2
                  xori         s4, sp, -1838
                  and          t4, s5, t2
                  add          t4, a7, zero
                  add          s2, s3, s3
                  bge          zero, s6, 220f
                  nop
                  xori         t5, s5, 538
                  slti         a7, sp, -1768
                  auipc        s5, 363797
                  nop
                  bne          t4, a5, 223f
208:              ori          s7, s11, -1730
209:              slti         a3, a7, -2025
                  or           a6, sp, a0
                  sll          tp, t4, s1
                  xori         ra, t3, 634
                  lui          sp, 950954
                  add          sp, s2, gp
                  srli         zero, t2, 30
                  lui          t5, 207155
                  lui          s9, 429554
                  addi         t6, s11, 1560
                  blt          s5, s5, 230f
220:              slli         s9, t4, 23
                  bne          t1, s2, 224f
                  xori         s7, t5, -1304
223:              srli         s6, s1, 7
224:              ori          sp, s8, 1854
                  xori         a6, t3, 78
                  srli         ra, a4, 7
                  nop
                  beq          tp, s11, 230f
                  sub          ra, s11, a6
230:              srai         a1, s0, 14
                  nop
                  auipc        t2, 679043
                  auipc        ra, 703832
                  sltiu        s2, t1, -1234
                  or           t4, a4, gp
                  addi         zero, tp, -540
                  xori         s7, t6, -429
                  andi         zero, a2, 567
                  slti         s5, t5, 403
                  sltiu        sp, a5, -1810
                  srli         t0, s1, 14
                  or           a3, a0, t1
                  addi         s3, tp, 824
                  bgeu         s8, t3, 246f
                  xori         t5, a4, -1190
246:              bge          s6, s2, 265f
                  xori         ra, s9, 375
                  xori         s0, t3, 909
                  or           s1, s1, s11
                  auipc        s4, 831900
                  nop
                  lui          s4, 952644
                  sll          sp, s3, a3
                  slt          s4, zero, s0
                  auipc        a7, 249020
                  sub          s6, a1, s3
                  sltiu        tp, s8, -1331
                  slli         tp, t4, 17
                  xori         tp, t5, -1651
                  slt          s7, t4, t5
                  addi         s6, s9, 877
                  xor          t4, s0, a0
                  bltu         sp, t5, 265f
                  xori         t1, s7, -555
265:              addi         t6, s7, 548
                  bne          s9, s2, 283f
                  auipc        t0, 523221
                  bge          s9, s8, 278f
                  or           t1, t3, a5
                  sll          a2, a1, s1
                  sra          s5, s8, a3
                  bltu         ra, a2, 289f
                  xori         a1, a4, 1954
                  sra          s1, zero, s10
                  srli         s2, a7, 7
                  nop
                  srli         s3, a6, 3
278:              and          ra, a6, s8
                  slt          s1, t5, s6
                  slli         gp, ra, 27
                  sub          t0, s1, s10
                  nop
283:              srli         t6, gp, 1
                  nop
                  srai         s8, a1, 0
                  nop
                  nop
                  beq          zero, t2, 301f
289:              bgeu         a7, s0, 292f
                  blt          s9, s1, 300f
                  sll          s8, ra, s11
292:              bltu         t1, s11, 310f
                  sub          a6, a0, s2
                  sltiu        t6, s5, -1570
                  auipc        s8, 822948
                  blt          a4, a4, 313f
                  slli         s0, t0, 9
                  slt          tp, a7, t4
                  srai         s1, zero, 31
300:              slti         t2, t4, 1706
301:              ori          t0, t0, -1455
                  bge          s11, t1, 314f
                  and          s8, s6, t5
                  xori         ra, s6, -873
                  andi         a1, s5, 853
                  xor          s0, a2, gp
                  andi         t2, a6, 797
                  bltu         a6, sp, 310f
                  or           a7, t3, s2
310:              ori          t6, s3, 369
                  bgeu         t6, a1, 321f
                  srai         s2, a4, 4
313:              srl          s1, t6, s5
314:              bge          t0, ra, 329f
                  add          t6, a7, sp
                  sll          s4, t4, s5
                  slti         a1, a3, -1865
                  or           tp, sp, t6
                  ori          a3, a4, 458
                  sub          t4, t6, a4
321:              srai         s10, tp, 2
                  bgeu         gp, s11, 326f
                  sra          s1, a2, s7
                  auipc        gp, 807700
                  addi         s1, s8, 73
326:              beq          a6, s4, 343f
                  bne          sp, s2, 346f
                  blt          t4, zero, 338f
329:              nop
                  nop
                  srli         tp, tp, 10
                  xor          a7, s4, a4
                  bne          sp, s4, 349f
                  and          tp, sp, a4
                  slti         a4, s6, 1553
                  and          a4, a4, a3
                  blt          a3, t3, 340f
338:              nop
                  sltiu        s8, s0, -1782
340:              sll          a4, tp, s6
                  add          t2, s2, a5
                  srli         s8, a4, 2
343:              auipc        s3, 859438
                  lui          t5, 1007338
                  auipc        t6, 967457
346:              and          t1, a7, tp
                  sub          t6, gp, a3
                  blt          a5, s6, 366f
349:              srl          t6, a5, tp
                  srai         t6, t0, 1
                  beq          t6, t3, 368f
                  srai         s0, s4, 8
                  srai         a6, s0, 30
                  bgeu         gp, t1, 369f
                  slli         sp, a7, 3
                  auipc        s1, 11127
                  and          s10, a3, gp
                  bgeu         a2, s10, 360f
                  sltiu        s2, t2, 1235
360:              sub          s6, a7, a1
                  bltu         a2, gp, 374f
                  addi         t4, s10, -1059
                  srli         a3, s10, 13
                  nop
                  sll          s1, gp, t5
366:              andi         t0, s0, 485
                  bltu         s8, a0, 378f
368:              beq          a2, s1, 380f
369:              lui          s1, 296143
                  slti         a4, t6, -1908
                  sltiu        t6, t3, 58
                  slli         t6, t6, 8
                  xor          ra, s8, s6
374:              beq          t3, s8, 385f
                  xor          a4, t4, gp
                  nop
                  xor          s4, s9, ra
378:              srl          t5, s2, t2
                  ori          t0, s10, 916
380:              lui          gp, 740505
                  sltu         s3, gp, t4
                  sll          ra, a7, sp
                  andi         s10, s6, -1464
                  or           gp, zero, s5
385:              srl          s7, t0, t3
                  sub          a1, a1, s7
                  sra          t1, a2, s8
                  srl          ra, s4, s5
                  and          s8, s5, gp
                  addi         t4, s7, 1148
                  lui          t1, 63612
                  ori          s3, s4, -803
                  andi         a2, a2, 602
                  nop
                  sltu         ra, t4, tp
                  nop
                  nop
                  sltu         s6, t3, t3
                  xori         s8, a6, 425
                  sra          s5, s11, ra
                  or           t4, gp, zero
                  slt          t6, s4, a1
                  xor          t5, a5, t5
                  add          s9, s10, s8
                  bne          a3, s2, 407f
                  sub          t1, s11, t3
407:              nop
                  ori          s10, s5, -2004
                  beq          a5, t1, 412f
                  bge          s5, s4, 426f
                  and          t6, sp, a6
                  la           t1, sub_3
                  add          gp, s8, t1
                  ori          s3, a0, 630
                  addi         t1, t1, -544
                  sub          t5, s3, s5
                  srai         s3, s1, 10
                  sltu         a6, a5, gp
                  beq          t3, a1, sub_2_j5 #branch to jump instr
                  slt          a3, t4, t6
                  lui          a4, 46483
sub_2_j5:         jalr         s5, t1, 545 #jump sub_2 -> sub_3
412:              srl          s3, sp, a7
                  addi         a7, t0, 1217
                  slli         s0, s2, 29
                  nop
                  slt          s8, t4, a2
                  xori         a3, s3, 1142
                  xor          s0, s9, a2
                  bltu         a7, s5, 430f
                  sra          a6, a2, s8
                  beq          s4, s0, 438f
                  auipc        t0, 253997
                  sra          s3, a1, a5
                  or           zero, t6, ra
                  bne          a4, s7, 444f
426:              srl          ra, t5, t6
                  bge          a0, s8, 432f
                  xor          s4, t1, s10
                  add          s10, a4, a0
430:              sra          a4, a1, t0
                  sra          a3, zero, s5
432:              nop
                  bge          gp, s0, 444f
                  andi         tp, s6, -777
                  slt          a4, t0, t2
                  xori         s1, t1, 942
                  addi         a7, a6, 1128
438:              xor          t3, t2, t4
                  slli         t6, s11, 23
                  lui          s5, 738004
                  bgeu         t5, s1, 453f
                  sltiu        s7, a0, -1563
                  bne          a5, a6, 447f
444:              auipc        a4, 409117
                  sltu         s8, t5, zero
                  srli         s6, a2, 21
447:              sub          a6, s6, s11
                  sub          s6, s0, s11
                  xori         s1, t1, 1186
                  bgeu         a3, a0, 453f
                  slt          zero, s8, ra
                  sll          a1, s0, s4
453:              sltiu        a2, s8, 588
                  slli         a2, s8, 21
                  srli         sp, t5, 29
                  srli         a1, a0, 22
                  lw           s5, 4(s11)
                  auipc        sp, 608932
                  addi         s11, s11, 64
                  sltu         gp, ra, zero
615:              addi x21, x21, 1
615:              jalr x21, x21, 0
sub_10:           slt          a4, s2, a6
                  xor          s10, tp, a1
                  sltu         s6, t5, s1
                  blt          t6, zero, sub_10_stack_p
                  andi         t1, zero, 275
sub_10_stack_p:   addi         s11, s11, -20
                  srli         tp, t0, 12
                  sw           s5, 4(s11)
                  srai         s9, ra, 14
                  slti         s4, t6, -809
                  srli         t5, a7, 9
                  sltiu        a2, s1, 861
                  srl          sp, a1, sp
                  srl          s1, s0, gp
                  srli         s7, ra, 11
                  bne          tp, a4, 10f
                  andi         gp, a2, 658
                  srli         s7, a4, 18
                  srl          a3, t6, a5
                  sltiu        t0, s1, -1973
10:               sltiu        s8, t2, -1131
                  or           s3, t0, a3
                  lw           s5, 4(s11)
                  addi         s11, s11, 20
                  add          s3, s6, a3
                  xori         s3, a1, 1106
                  sra          a1, a1, a0
                  slt          s6, t2, s3
28:               addi x29, x21, 1
28:               jalr x29, x29, 0
sub_5:            addi         s11, s11, -48
                  slt          sp, t1, s7
                  sw           s5, 4(s11)
                  srl          s7, ra, t5
                  slt          ra, s5, gp
                  slti         t0, s4, 130
                  nop
                  la           s1, sub_7
                  xor          s9, sp, s0
                  sltu         s8, s9, s4
                  sub          a2, sp, t2
                  srl          s3, t2, s5
                  addi         s1, s1, 675
                  slli         ra, a7, 25
                  ori          s8, a3, 826
                  srai         s2, a0, 1
                  bne          s2, s2, sub_5_j10 #branch to jump instr
                  slli         s5, s8, 5
sub_5_j10:        jalr         s5, s1, -674 #jump sub_5 -> sub_7
                  bgeu         a4, s5, 8f
                  sll          s7, s7, s3
                  srai         s9, gp, 12
                  srli         t3, tp, 8
                  auipc        s5, 155776
                  or           s7, zero, s11
                  srai         t3, s10, 31
                  addi         gp, a6, -1310
8:                slt          tp, s1, a5
                  lw           s5, 4(s11)
                  andi         s2, t6, 1922
                  slt          t1, a5, t5
                  nop
                  addi         s11, s11, 48
                  add          s10, sp, sp
                  addi         ra, s1, -386
                  xori         sp, a6, 561
36:               addi x20, x21, 1
36:               jalr x20, x20, 0
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
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x10, x27, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_2:
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x10, x27, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_3:
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x10, x27, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_4:
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x10, x27, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_5:
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x10, x27, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_6:
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x10, x27, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_7:
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x10, x27, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_8:
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x10, x27, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_9:
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x10, x27, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_10:
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x10, x27, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_11:
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x10, x27, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_12:
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x10, x27, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_13:
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x10, x27, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_14:
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x10, x27, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
                  j mmode_intr_handler
                  1: la x15, test_done
                  jalr x0, x15, 0

mmode_intr_vector_15:
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x10, x27, zero
                  csrr x8, 0x342 # MCAUSE
                  srli x8, x8, 0x1f
                  beqz x8, 1f
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
                  addi x27, x27, -128
                  sw  x1, 4(x27)
                  sw  x2, 8(x27)
                  sw  x3, 12(x27)
                  sw  x4, 16(x27)
                  sw  x5, 20(x27)
                  sw  x6, 24(x27)
                  sw  x7, 28(x27)
                  sw  x8, 32(x27)
                  sw  x9, 36(x27)
                  sw  x10, 40(x27)
                  sw  x11, 44(x27)
                  sw  x12, 48(x27)
                  sw  x13, 52(x27)
                  sw  x14, 56(x27)
                  sw  x15, 60(x27)
                  sw  x16, 64(x27)
                  sw  x17, 68(x27)
                  sw  x18, 72(x27)
                  sw  x19, 76(x27)
                  sw  x20, 80(x27)
                  sw  x21, 84(x27)
                  sw  x22, 88(x27)
                  sw  x23, 92(x27)
                  sw  x24, 96(x27)
                  sw  x25, 100(x27)
                  sw  x26, 104(x27)
                  sw  x27, 108(x27)
                  sw  x28, 112(x27)
                  sw  x29, 116(x27)
                  sw  x30, 120(x27)
                  sw  x31, 124(x27)
                  add x10, x27, zero
                  csrr x8, 0x341 # MEPC
                  csrr x8, 0x342 # MCAUSE
                  li x18, 0x3 # BREAKPOINT
                  beq x8, x18, ebreak_handler
                  li x18, 0x8 # ECALL_UMODE
                  beq x8, x18, ecall_handler
                  li x18, 0x9 # ECALL_SMODE
                  beq x8, x18, ecall_handler
                  li x18, 0xb # ECALL_MMODE
                  beq x8, x18, ecall_handler
                  li x18, 0x1
                  beq x8, x18, instr_fault_handler
                  li x18, 0x5
                  beq x8, x18, load_fault_handler
                  li x18, 0x7
                  beq x8, x18, store_fault_handler
                  li x18, 0xc
                  beq x8, x18, pt_fault_handler
                  li x18, 0xd
                  beq x8, x18, pt_fault_handler
                  li x18, 0xf
                  beq x8, x18, pt_fault_handler
                  li x18, 0x2 # ILLEGAL_INSTRUCTION
                  beq x8, x18, illegal_instr_handler
                  csrr x18, 0x343 # MTVAL
                  1: la x15, test_done
                  jalr x1, x15, 0

ecall_handler:    
                  la x8, _start
                  sw x0, 0(x8)
                  sw x1, 4(x8)
                  sw x2, 8(x8)
                  sw x3, 12(x8)
                  sw x4, 16(x8)
                  sw x5, 20(x8)
                  sw x6, 24(x8)
                  sw x7, 28(x8)
                  sw x8, 32(x8)
                  sw x9, 36(x8)
                  sw x10, 40(x8)
                  sw x11, 44(x8)
                  sw x12, 48(x8)
                  sw x13, 52(x8)
                  sw x14, 56(x8)
                  sw x15, 60(x8)
                  sw x16, 64(x8)
                  sw x17, 68(x8)
                  sw x18, 72(x8)
                  sw x19, 76(x8)
                  sw x20, 80(x8)
                  sw x21, 84(x8)
                  sw x22, 88(x8)
                  sw x23, 92(x8)
                  sw x24, 96(x8)
                  sw x25, 100(x8)
                  sw x26, 104(x8)
                  sw x27, 108(x8)
                  sw x28, 112(x8)
                  sw x29, 116(x8)
                  sw x30, 120(x8)
                  sw x31, 124(x8)
                  la x15, write_tohost
                  jalr x0, x15, 0

instr_fault_handler:
                  add x27, x10, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
                  mret

load_fault_handler:
                  add x27, x10, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
                  mret

store_fault_handler:
                  add x27, x10, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
                  mret

ebreak_handler:   
                  csrr  x8, 0x341
                  addi  x8, x8, 4
                  csrw  0x341, x8
                  add x27, x10, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
                  mret

illegal_instr_handler:
                  csrr  x8, 0x341
                  addi  x8, x8, 4
                  csrw  0x341, x8
                  add x27, x10, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x8, 0x300 # MSTATUS;
                  csrr  x8, 0x304 # MIE;
                  csrr  x8, 0x344 # MIP;
                  csrrc x8, 0x344, x8 # MIP;
                  add x27, x10, zero
                  lw  x1, 4(x27)
                  lw  x2, 8(x27)
                  lw  x3, 12(x27)
                  lw  x4, 16(x27)
                  lw  x5, 20(x27)
                  lw  x6, 24(x27)
                  lw  x7, 28(x27)
                  lw  x8, 32(x27)
                  lw  x9, 36(x27)
                  lw  x10, 40(x27)
                  lw  x11, 44(x27)
                  lw  x12, 48(x27)
                  lw  x13, 52(x27)
                  lw  x14, 56(x27)
                  lw  x15, 60(x27)
                  lw  x16, 64(x27)
                  lw  x17, 68(x27)
                  lw  x18, 72(x27)
                  lw  x19, 76(x27)
                  lw  x20, 80(x27)
                  lw  x21, 84(x27)
                  lw  x22, 88(x27)
                  lw  x23, 92(x27)
                  lw  x24, 96(x27)
                  lw  x25, 100(x27)
                  lw  x26, 104(x27)
                  lw  x27, 108(x27)
                  lw  x28, 112(x27)
                  lw  x29, 116(x27)
                  lw  x30, 120(x27)
                  lw  x31, 124(x27)
                  addi x27, x27, 128
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
