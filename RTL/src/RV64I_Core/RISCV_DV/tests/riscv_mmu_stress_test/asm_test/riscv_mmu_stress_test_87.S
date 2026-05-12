.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x25, h0_start
jalr x0, x25, 0
h0_start:
                  li x12, 0x40000100
                  csrw 0x301, x12
kernel_sp:        
                  la x24, kernel_stack_end

trap_vec_init:    
                  la x12, mtvec_handler
                  ori x12, x12, 0
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
                  li x0, 0x8a71c22
                  li x1, 0x9
                  li x2, 0x80000000
                  li x3, 0xf5c5b072
                  li x4, 0xfd90fbc
                  li x5, 0x5d6e88b5
                  li x6, 0x8
                  li x7, 0x0
                  li x8, 0x0
                  li x9, 0x0
                  li x10, 0x4
                  li x11, 0x80000000
                  li x12, 0x8d894b9d
                  li x14, 0xabcda5b8
                  li x15, 0xf707afd0
                  li x16, 0xf0ad175f
                  li x17, 0x80000000
                  li x18, 0x9ad1b3d1
                  li x19, 0x0
                  li x20, 0xf1ddb3e5
                  li x21, 0x80000000
                  li x22, 0x0
                  li x23, 0x0
                  li x25, 0x1
                  li x26, 0x80000000
                  li x27, 0x80000000
                  li x28, 0xba09dba
                  li x29, 0x7fe6e418
                  li x30, 0xf3500fca
                  li x31, 0xf06dc00a
                  la x13, user_stack_end
main:             la           t0, sub_1
                  add          s0, t6, a7
                  nop
                  slti         t5, t2, 374
                  addi         t0, t0, -420
                  srai         s4, s11, 26
                  and          a4, s2, t2
main_j2:          jalr         s3, t0, 421 #jump main -> sub_1
                  la           sp, region_0+674 #start riscv_load_store_rand_instr_stream_1
                  ori          t5, t2, -1739
                  sb           t6, -13(sp)
                  lbu          t2, -2(sp)
                  lh           s6, -24(sp)
                  nop
                  sb           a2, -50(sp)
                  sh           s3, 54(sp)
                  lbu          s4, 50(sp)
                  sb           sp, 4(sp)
                  lhu          s1, -52(sp)
                  sltiu        s0, s6, 1171
                  slli         t0, a5, 18
                  nop
                  ori          a4, t5, 1687
                  lb           s0, -1(sp)
                  lb           ra, -59(sp)
                  sb           t1, 17(sp)
                  sra          s6, a2, t2
                  lh           a1, -30(sp)
                  sb           s7, 55(sp)
                  andi         a7, s5, -75
                  lbu          s1, -60(sp)
                  lb           gp, 59(sp)
                  sh           s10, 38(sp)
                  sb           gp, -7(sp)
                  sll          a4, t3, ra
                  lh           zero, -10(sp)
                  lb           s4, 46(sp)
                  lb           s2, -32(sp)
                  lb           t2, -19(sp)
                  lb           a7, -53(sp)
                  xori         t2, t4, 538
                  lb           tp, 56(sp)
                  sb           t1, -51(sp)
                  slli         tp, s1, 21
                  add          s7, s7, s5
                  or           t1, s9, t2
                  sb           a4, -53(sp)
                  lbu          t0, -49(sp)
                  xori         s0, s10, 1931
                  lh           t5, -4(sp)
                  xor          a1, a5, t5
                  lbu          s11, -25(sp)
                  sra          s7, s5, t5
                  sra          t0, s0, s7
                  sltu         gp, t2, t1
                  sub          tp, sp, t5
                  sltu         s3, s9, zero
                  sb           a1, 47(sp) #end riscv_load_store_rand_instr_stream_1
                  la           t0, region_0+656 #start load_store_instr_stream_0
                  la           sp, region_0+313 #start load_store_instr_stream_1
                  lb           a0, -26(t0)
                  lhu          a6, 10(t0)
                  lbu          t3, -15(t0)
                  sh           s9, 53(sp)
                  lw           a7, -4(t0)
                  lhu          t1, 37(sp)
                  lb           s4, 63(t0)
                  sh           zero, -49(sp)
                  sh           s10, -40(t0)
                  lhu          t5, 29(sp)
                  lbu          s5, 40(sp)
                  sb           s9, 20(sp)
                  lb           t1, 25(t0)
                  sb           s4, 62(sp)
                  sb           a0, -33(sp) #end load_store_instr_stream_1
                  lhu          s0, -8(t0) #end load_store_instr_stream_0
                  la           ra, region_0+676 #start riscv_load_store_rand_instr_stream_0
                  lui          s10, 689575
                  sb           sp, 1150(ra)
                  lui          s5, 971511
                  sub          t1, t5, a2
                  lb           sp, 358(ra)
                  sb           s11, 357(ra)
                  add          s5, a5, sp
                  slti         a5, a3, -1526
                  lhu          t1, 262(ra)
                  lb           s11, 485(ra)
                  srl          s4, a3, t0
                  sh           s0, -22(ra)
                  sll          t6, s9, s0
                  lw           t4, 516(ra)
                  ori          t2, s3, 282
                  sb           t4, 254(ra)
                  andi         t4, a3, -1293
                  srai         s2, a2, 5
                  andi         s5, t2, 1521
                  xor          a7, t0, t3
                  srli         s5, a1, 7
                  slli         tp, a7, 20
                  addi         t6, t4, 1832
                  sb           sp, -367(ra)
                  slli         t3, t1, 16
                  lui          a1, 751933
                  sh           t0, 932(ra)
                  sub          gp, s9, a2
                  lui          a4, 58270
                  add          t1, t0, t5
                  lb           sp, -649(ra)
                  sltu         a7, s2, t5
                  nop
                  lbu          a0, 551(ra) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_1+1203 #start riscv_load_store_hazard_instr_stream_0
                  lhu          t2, 427(sp)
                  sh           s7, 427(sp)
                  sltiu        s1, a3, -1800
                  lbu          t2, 427(sp)
                  lb           a6, -870(sp)
                  slt          a0, s1, t1
                  lbu          s7, -870(sp)
                  lbu          a5, -870(sp)
                  sw           s0, -795(sp)
                  lw           t1, -795(sp)
                  lb           t6, -795(sp)
                  lw           gp, -795(sp)
                  lh           s11, -625(sp)
                  lhu          s7, -625(sp)
                  or           a7, s4, a3
                  lb           a2, 580(sp)
                  lb           s0, 580(sp)
                  lb           gp, 580(sp)
                  lbu          s6, 580(sp) #end riscv_load_store_hazard_instr_stream_0
                  la           s1, region_0+591 #start riscv_load_store_hazard_instr_stream_1
                  sh           s1, 1(s1)
                  lbu          t0, 1(s1)
                  lb           ra, 2(s1)
                  lb           sp, -14(s1)
                  lbu          s10, -16(s1)
                  lb           a5, -6(s1)
                  sll          gp, a6, a3
                  sb           s5, 0(s1)
                  sb           t1, 0(s1)
                  lb           a2, -13(s1)
                  add          a0, s9, t4
                  lhu          t6, -13(s1)
                  sb           s1, -13(s1)
                  sb           s11, 10(s1)
                  sra          t4, s8, a4
                  lbu          a2, 7(s1)
                  sb           ra, -4(s1)
                  lb           s2, -4(s1)
                  lh           s6, 13(s1)
                  srli         a1, s1, 5
                  lh           a6, 13(s1)
                  lbu          s3, 13(s1)
                  sb           t5, 9(s1) #end riscv_load_store_hazard_instr_stream_1
                  beq          s2, t1, 10f
                  sltiu        s6, s6, 701
                  bgeu         a0, gp, 17f
                  and          t3, sp, s5
                  bge          s9, a7, 9f
                  add          s1, tp, a3
                  sltu         s5, zero, s3
                  bgeu         a1, s8, 16f
                  sub          s7, a0, s6
9:                slti         s2, s4, -790
10:               bne          zero, t0, 13f
                  slt          s2, gp, a2
                  srl          s1, s6, a4
13:               bgeu         s7, s5, 23f
                  srl          t2, t5, ra
                  slt          a6, s1, s2
16:               slli         a0, zero, 17
17:               srl          t1, a0, a3
                  blt          s9, a0, 31f
                  sltu         t2, s11, a2
                  and          s3, tp, t6
                  lui          a5, 803709
                  slti         zero, ra, 349
23:               lui          s6, 597779
                  beq          a3, s3, 36f
                  sra          s7, s10, a6
                  ori          t5, a2, -1704
                  ori          t2, s8, 1869
                  or           t6, a7, a7
                  addi         s11, s8, 1611
                  blt          t3, a0, 46f
31:               slli         gp, t2, 6
                  sll          sp, zero, s8
                  slli         s11, s10, 5
                  sub          a5, s6, gp
                  xori         a2, s8, -1711
36:               xor          s5, t2, s10
                  addi         s5, zero, -321
                  slti         t1, a5, -1799
                  andi         sp, a7, 1245
                  bgeu         s10, a4, 47f
                  xor          t2, s3, a1
                  auipc        s5, 151213
                  sra          zero, t6, s6
                  bgeu         sp, ra, 47f
                  bne          a0, s6, 60f
46:               sltiu        a1, s3, 328
47:               blt          a2, t3, 54f
                  add          t5, t2, t5
                  nop
                  bne          tp, a3, 56f
                  xori         s4, t1, 955
                  and          sp, t0, a6
                  xor          t0, a5, a3
54:               addi         t6, s5, -147
                  xori         a1, a6, -1571
56:               bge          s5, s6, 59f
                  srai         t3, a2, 16
                  slli         s4, a5, 20
59:               bltu         tp, s3, 69f
60:               andi         t0, t2, 1237
                  slli         a6, a0, 18
                  sub          s1, t1, tp
                  sltiu        t6, t5, -1762
                  sra          t2, a2, a5
                  srai         s10, a7, 17
                  sra          tp, t0, t0
                  sltiu        a7, s6, -876
                  bgeu         tp, s5, 71f
69:               sra          a1, sp, t1
                  blt          t6, a1, 78f
71:               add          t0, t6, t0
                  bge          t2, s6, 80f
                  srai         t3, s2, 2
                  sltu         s6, t1, a3
                  srli         s3, tp, 10
                  ori          s5, s9, 46
                  blt          s5, gp, 97f
78:               blt          s0, s3, 98f
                  srai         t6, sp, 7
80:               addi         t4, s9, -1216
                  sll          s3, s6, zero
                  xori         s11, a2, 1353
                  ori          s11, s9, 683
                  bne          a2, s8, 96f
                  sltiu        gp, t5, -2009
                  beq          s5, a0, 91f
                  la           a5, sub_2
                  sub          a0, s3, t5
                  and          s7, s9, ra
                  ori          s2, s7, -91
                  addi         a5, a5, -184
                  ori          sp, a1, -186
                  and          t1, t3, t1
                  ori          a1, s2, -1519
                  slti         t1, s9, -1090
                  andi         a6, a5, -1077
                  slli         a7, a4, 6
                  bge          s10, s2, main_j1 #branch to jump instr
                  ori          a1, a6, -1109
main_j1:          jalr         s3, a5, 185 #jump main -> sub_2
                  bne          ra, t6, 103f
                  xor          s11, s8, t0
                  bge          gp, a2, 99f
                  bgeu         s8, a5, 102f
91:               slli         s4, s3, 11
                  and          s1, a6, s1
                  srl          s4, zero, a4
                  beq          t0, a4, 105f
                  srai         t0, s10, 26
96:               srl          a2, tp, s0
97:               lui          t2, 1048473
98:               or           a7, a0, a6
99:               lui          sp, 999148
                  srl          ra, t1, s2
                  xor          a4, a4, zero
102:              bge          ra, s1, 107f
103:              and          t0, a2, s8
                  sltiu        t1, s8, -441
105:              nop
                  and          sp, s5, a7
107:              add          a2, a3, s11
                  bge          t1, s0, 123f
                  sub          s7, a5, s11
                  sra          zero, s11, s7
                  and          a7, s1, s3
                  add          a6, s8, tp
                  and          gp, a2, s1
                  nop
                  sltiu        s3, s1, -384
                  auipc        gp, 556221
                  ori          a0, a5, 364
                  srai         s1, zero, 20
                  slti         s1, a6, -707
                  add          t6, t6, a6
                  xori         s6, s6, 1014
                  sub          s4, t1, s1
123:              bne          s9, a3, 127f
                  slli         a4, zero, 4
                  xori         a7, t0, 1813
                  bltu         s6, t4, 146f
127:              sltiu        t3, a5, -169
                  ori          s3, s1, -675
                  xori         t3, s10, 1551
                  slli         t4, s0, 7
                  or           a1, sp, s7
                  xori         a7, s6, -776
                  sltiu        a2, a2, -1574
                  auipc        s11, 917353
                  addi         gp, t5, -1129
                  srli         a1, s0, 0
                  auipc        a7, 320357
                  add          t2, s4, s5
                  auipc        t0, 393381
                  and          a5, s9, s1
                  bne          t1, ra, 144f
                  srl          a2, a3, t1
                  sltiu        s0, t2, -532
144:              slt          gp, t1, zero
                  beq          t2, tp, 152f
146:              sltiu        a4, s4, -285
                  bne          t6, s3, 150f
                  sltu         t4, t6, zero
                  la           sp, region_0+608 #start load_store_instr_stream_3
                  la           t2, region_0+220 #start load_store_instr_stream_0
                  la           t4, region_0+1145 #start load_store_instr_stream_2
                  lbu          a7, -29(t2)
                  la           s0, region_0+681 #start load_store_instr_stream_1
                  sb           zero, 17(sp)
                  lh           t3, -1(t4)
                  lb           t5, 3(t2)
                  lb           t0, -63(sp)
                  sb           a2, -2(t4)
                  lb           tp, -31(t2)
                  sh           sp, 1(t4)
                  sh           a7, 12(sp)
                  lb           t0, -29(s0)
                  sb           a3, -11(t2)
                  sb           s9, -31(sp)
                  sb           gp, -7(t2)
                  lbu          t0, 30(s0)
                  lbu          s2, -22(sp)
                  lbu          a7, -15(t4)
                  lb           s3, 15(t4)
                  lbu          s1, -8(t4)
                  lbu          s6, -34(sp)
                  sb           t5, 29(s0)
                  lb           s5, 2(t2)
                  lb           a0, -37(sp)
                  sb           zero, 6(t4)
                  lb           s4, -37(sp) #end load_store_instr_stream_3
                  lbu          a1, 50(s0)
                  lbu          t1, 12(t4) #end load_store_instr_stream_2
                  lb           t5, -23(t2)
                  lb           s2, 56(s0) #end load_store_instr_stream_1
                  lbu          tp, 29(t2) #end load_store_instr_stream_0
                  bge          t2, a2, 158f
150:              sll          t1, s4, a4
                  slti         t0, t5, -228
152:              slli         s2, t1, 28
                  slt          tp, s2, s11
                  auipc        s1, 512263
                  addi         gp, a3, 545
                  bltu         t6, s8, 172f
                  sll          s11, t5, t4
158:              or           zero, s3, t1
                  andi         a7, s0, -1780
                  blt          s11, s8, 164f
                  and          t1, a0, s8
                  beq          s8, t3, 165f
                  ori          t1, t2, -1361
164:              srl          s11, t2, a5
165:              slt          zero, t2, a0
                  addi         sp, s4, 2020
                  sltu         a5, a0, sp
                  slli         a0, tp, 13
                  bgeu         t6, s6, 174f
                  and          t1, t4, s10
                  srli         s2, t4, 31
172:              xor          s10, tp, t1
                  slti         s0, t3, -1367
174:              add          t1, sp, a5
                  srli         ra, a0, 28
                  nop
                  or           a0, s9, t0
                  ori          a7, t5, -329
                  xori         t3, s2, 196
                  beq          s3, a3, 188f
                  sub          s7, a6, t0
                  or           s2, s7, t5
                  bne          t3, a7, 188f
                  bge          a0, a4, 194f
                  blt          a2, a0, 197f
                  blt          s4, a0, 189f
                  bltu         s2, s11, 199f
188:              sra          t3, a6, a1
189:              blt          s1, a1, 200f
                  bgeu         s9, s5, 200f
                  srli         s11, s0, 9
                  sra          t2, a3, a7
                  add          t1, s6, a0
194:              auipc        s7, 971950
                  ori          a1, a2, 1892
                  or           s3, tp, a0
197:              or           t0, t1, t5
                  sltu         t6, s0, ra
199:              sltiu        s0, a1, -1645
200:              srl          s0, t1, s8
                  bgeu         a6, gp, 209f
                  sll          s6, s7, t5
                  slt          a1, t5, s1
                  sub          s4, t5, t5
                  and          s11, a0, a7
                  srl          t5, s11, a3
                  slli         a0, s1, 8
                  bltu         tp, s8, 218f
209:              sltu         gp, a6, s0
                  beq          t3, s1, 222f
                  slt          a7, a2, t5
                  srli         zero, a2, 9
                  bne          gp, a4, 228f
                  sra          s11, a3, s1
                  bge          tp, s3, 222f
                  srl          t5, s9, a2
                  slli         gp, a1, 27
218:              slti         s4, s7, -90
                  auipc        a5, 261811
                  sub          a5, s1, s0
                  bgeu         s11, s9, 237f
222:              bltu         zero, t4, 228f
                  andi         s11, s1, 1
                  sll          sp, a4, s8
                  slli         a6, s2, 22
                  xori         t6, a6, -1645
                  add          t3, zero, ra
228:              addi         a1, a6, 593
                  ori          ra, s1, 507
                  bgeu         a5, t4, 243f
                  ori          t0, s8, -1162
                  srl          ra, s1, t1
                  bgeu         t3, s9, 248f
                  sra          t5, s6, s10
                  slti         s5, s7, -1832
                  bgeu         a1, gp, 256f
237:              nop
                  ori          a4, t4, -1367
                  sll          s6, s7, a6
                  blt          t5, a3, 250f
                  addi         s0, s0, 985
                  addi         tp, s7, 1006
243:              srli         s10, s1, 15
                  andi         sp, t3, -194
                  sra          a6, s7, s6
                  add          zero, a7, t6
                  sub          a2, t0, t2
248:              sll          t0, a1, t6
                  srl          t0, tp, a2
250:              bgeu         t1, s6, 255f
                  sra          s1, a0, s7
                  xor          t6, tp, ra
                  auipc        s6, 599444
                  bltu         a5, t1, 257f
255:              slti         s1, a4, -154
256:              sll          s4, s5, s3
257:              sub          a5, a6, s0
                  la x25, test_done
                  jalr x0, x25, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            sll          a6, tp, sp
                  andi         a2, s1, 1192
                  nop
                  bne          tp, s10, sub_2_stack_p
sub_2_stack_p:    addi         a3, a3, -48
                  and          t2, t5, zero
                  and          sp, s0, a2
                  lui          a7, 61038
                  lui          s5, 326814
                  srl          s0, zero, gp
                  addi         sp, a5, -1400
                  sw           s3, 4(a3)
                  sra          s7, s3, t0
                  la           a5, region_0+854 #start riscv_load_store_hazard_instr_stream_2
                  sb           ra, -14(a5)
                  lbu          t6, -14(a5)
                  lhu          s2, -14(a5)
                  sb           a7, -14(a5)
                  lhu          gp, -14(a5)
                  lh           t5, -14(a5)
                  lbu          t2, -13(a5)
                  sub          t3, s4, s8
                  lbu          a6, -13(a5)
                  sb           s6, -13(a5)
                  sb           t0, -13(a5)
                  slt          ra, t5, a3
                  lb           s10, -13(a5)
                  sltu         a6, t1, s11
                  srl          gp, t2, a1
                  lhu          t5, -10(a5)
                  lb           a0, -10(a5)
                  lb           s4, -10(a5)
                  lhu          a7, -10(a5)
                  addi         gp, s11, 556
                  lhu          s2, -10(a5)
                  lbu          t3, -10(a5) #end riscv_load_store_hazard_instr_stream_2
                  la           s0, region_0+1209 #start load_store_instr_stream_2
                  la           a6, region_0+1792 #start load_store_instr_stream_1
                  lhu          s11, 142(a6)
                  lbu          t5, -223(a6)
                  la           a0, region_0+654 #start load_store_instr_stream_0
                  lb           s11, -294(s0)
                  sb           t2, -40(a6)
                  sb           tp, 114(a6)
                  sh           s11, -2(a0)
                  lw           t3, 164(a6)
                  lbu          s2, 3(a0)
                  lw           sp, -1057(s0)
                  lbu          s2, -190(a6)
                  lbu          ra, -119(a6)
                  lh           s10, -4(a0)
                  sb           tp, -630(s0)
                  lb           tp, -145(a6)
                  lhu          sp, -1053(s0)
                  lb           s2, 1(a0)
                  lbu          t1, 68(a6)
                  lh           t1, -8(a0)
                  sw           s3, 347(s0)
                  lb           s1, 620(s0)
                  lb           t6, 10(a0)
                  lb           s6, -16(a0)
                  lh           s6, 145(s0)
                  lb           t0, -796(s0) #end load_store_instr_stream_2
                  lb           t2, 54(a6) #end load_store_instr_stream_1
                  sb           t1, 10(a0)
                  lbu          t3, -9(a0) #end load_store_instr_stream_0
                  la           s3, region_0+1266 #start load_store_instr_stream_2
                  lb           s10, 440(s3)
                  la           a6, region_0+1284 #start load_store_instr_stream_1
                  lbu          s4, 43(a6)
                  la           t1, region_0+1806 #start load_store_instr_stream_0
                  sb           t2, 726(s3)
                  lhu          ra, -40(t1)
                  lbu          sp, -5(a6)
                  sh           sp, 6(a6)
                  lb           s1, 24(t1)
                  lb           zero, 71(s3)
                  sb           t6, 47(t1)
                  lbu          t6, -84(s3)
                  sb           s2, -537(s3)
                  sb           t2, 255(a6)
                  sb           t3, -171(a6)
                  lhu          a7, -150(a6)
                  lb           t5, 29(t1)
                  lb           zero, 19(t1)
                  lhu          t2, -190(a6)
                  sb           t6, -57(t1)
                  lbu          t2, -581(s3)
                  sb           s2, 35(a6) #end load_store_instr_stream_1
                  sb           t1, -1045(s3) #end load_store_instr_stream_2
                  lh           a2, 48(t1)
                  lhu          t6, -40(t1) #end load_store_instr_stream_0
                  la           s1, region_1+1376 #start riscv_load_store_hazard_instr_stream_0
                  lh           t0, 0(s1)
                  lbu          t3, 5(s1)
                  lbu          a2, 5(s1)
                  lbu          a6, 62(s1)
                  sb           t0, 62(s1)
                  lh           zero, -36(s1)
                  sw           s5, 8(s1)
                  auipc        a0, 1035723
                  sb           s4, 45(s1)
                  addi         a6, s1, -624
                  addi         t3, a6, -1704
                  sh           t5, -62(s1)
                  sb           s1, 20(s1)
                  sh           sp, 20(s1)
                  lh           gp, 42(s1) #end riscv_load_store_hazard_instr_stream_0
                  la           a7, region_0+1325 #start load_store_instr_stream_0
                  la           t3, region_0+1195 #start load_store_instr_stream_1
                  la           t2, region_0+1750 #start load_store_instr_stream_2
                  sb           t6, -74(a7)
                  lb           s0, -3(t3)
                  sh           s8, -3(a7)
                  lw           a0, 6(t2)
                  sw           t1, -7(t3)
                  lb           a5, -4(t2)
                  sb           sp, -11(t3)
                  lb           s2, -2(t2)
                  lb           gp, -2(t2)
                  lw           t1, -1(a7)
                  lbu          t4, 2(t3)
                  lbu          a0, -14(t3)
                  lw           t6, -145(a7)
                  lb           s2, -7(t2) #end load_store_instr_stream_2
                  lb           t6, 44(a7)
                  lh           ra, -13(t3)
                  lh           t6, -13(t3)
                  lbu          s7, 12(t3)
                  lb           gp, -106(a7)
                  lbu          t1, 177(a7)
                  lb           a0, -107(a7)
                  lhu          t6, -3(t3) #end load_store_instr_stream_1
                  sb           t6, 135(a7) #end load_store_instr_stream_0
                  la           sp, region_1+1592 #start riscv_load_store_rand_instr_stream_0
                  lbu          a0, -6(sp)
                  lb           s3, 8(sp)
                  lb           a1, 2(sp)
                  lbu          t2, -3(sp)
                  lhu          s4, 0(sp)
                  sb           a6, -3(sp)
                  auipc        t1, 965344
                  ori          zero, t5, -598
                  lhu          s7, -12(sp)
                  sh           s7, 0(sp)
                  addi         s4, a3, 1173
                  xori         s5, s1, 1719
                  slti         zero, s9, -113
                  sltu         t5, s10, s0
                  lbu          s2, 5(sp)
                  lbu          s2, -16(sp)
                  sb           a4, -13(sp)
                  xor          a2, s8, s1
                  slli         zero, a0, 26
                  lb           s4, 5(sp)
                  sb           t4, 7(sp)
                  ori          a1, s1, 545
                  sb           s8, 11(sp)
                  slt          a6, a2, sp
                  sll          t6, s3, s11
                  srl          s4, s7, a1
                  slli         t1, a2, 16
                  slti         t0, a5, 833
                  ori          a1, a5, -1903
                  lb           s7, 13(sp)
                  sb           zero, -8(sp)
                  sh           s1, 10(sp)
                  nop
                  lh           t4, 0(sp)
                  lui          t4, 192823
                  slt          t1, s0, zero
                  lw           t0, 16(sp)
                  lb           t3, -13(sp)
                  sltiu        t6, t2, 1289
                  lbu          s1, 11(sp)
                  add          a0, t4, s9
                  srai         s2, a4, 23
                  lbu          t4, 3(sp)
                  lh           t3, -4(sp)
                  xori         t1, s2, 1627
                  lbu          a1, -3(sp)
                  srl          t2, a2, t3
                  srl          s1, t6, sp
                  lbu          t1, -1(sp)
                  lb           ra, -4(sp)
                  or           s1, s10, s3
                  addi         a5, t5, 1524
                  lbu          zero, -11(sp)
                  or           a2, s5, t0
                  lbu          ra, -1(sp)
                  sb           t3, 9(sp) #end riscv_load_store_rand_instr_stream_0
                  la           s2, region_0+1449 #start riscv_load_store_rand_instr_stream_1
                  sll          a5, s2, t2
                  srl          a1, s2, zero
                  lbu          t0, -60(s2)
                  lb           s7, -47(s2)
                  sb           t3, 6(s2)
                  lui          s10, 615804
                  sh           t0, -49(s2)
                  sll          a4, a0, a2
                  auipc        s4, 318914
                  add          a6, s1, a0
                  andi         sp, a4, -269
                  sra          t6, s8, a0
                  sb           a6, -41(s2)
                  and          t2, sp, a1
                  lh           t1, -43(s2)
                  sh           zero, 19(s2)
                  lbu          gp, 58(s2)
                  sb           a2, -12(s2)
                  xori         a0, a4, -808
                  lb           t1, 44(s2)
                  lbu          s7, -62(s2)
                  lb           s0, 46(s2)
                  sb           s6, -26(s2)
                  lhu          s1, 61(s2)
                  xor          s11, a1, zero
                  sh           a1, -21(s2) #end riscv_load_store_rand_instr_stream_1
                  sra          s5, t2, s11
                  srl          a2, a1, s10
                  bge          gp, s0, 5f
                  andi         a6, tp, -62
                  bne          s7, a6, 22f
5:                srai         a7, t6, 30
                  bgeu         s0, t6, 25f
                  lui          t6, 377681
                  sll          t4, s3, ra
                  or           s3, a7, a7
                  sltu         t0, s5, s10
                  sra          t1, s2, a3
                  auipc        a5, 880383
                  slti         a4, tp, -1201
                  srl          a7, a1, a6
                  addi         s0, t2, 267
                  xori         s3, a0, 990
                  lui          s5, 1032222
                  srli         s6, s4, 29
                  srli         t3, a2, 11
                  sltu         a5, t3, s4
                  sltiu        s7, s7, 551
22:               or           tp, a4, s6
                  nop
                  blt          s1, s5, 40f
25:               nop
                  beq          a3, s3, 44f
                  and          s0, s5, gp
                  ori          gp, t1, -1237
                  auipc        s6, 664516
                  slt          t3, tp, a3
                  slt          tp, a3, t2
                  nop
                  srli         s0, s8, 28
                  slli         s10, t2, 1
                  sll          t5, a6, a6
                  or           t3, s3, s9
                  srl          s10, a0, s0
                  sll          zero, a1, s7
                  srai         sp, s7, 10
40:               bne          a6, s2, 49f
                  slli         s4, a4, 31
                  srai         a2, s1, 10
                  srai         s2, a3, 2
44:               blt          a5, t2, 46f
                  auipc        s6, 452197
46:               ori          a6, zero, 1859
                  sltiu        t1, s2, 1399
                  andi         a5, s1, -1283
49:               and          s3, t4, s0
                  add          s7, s8, t0
                  lui          s10, 191650
                  and          t6, a5, s4
                  bge          s6, s2, 71f
                  srai         a1, t3, 17
                  srai         s1, s11, 17
                  and          s10, s2, a7
                  lui          s10, 591854
                  sll          tp, t0, ra
                  lui          a7, 818979
                  sub          zero, s1, t5
                  add          a4, a6, a7
                  sra          s7, a7, ra
                  bltu         t1, t0, 71f
                  slli         s11, s0, 14
                  bgeu         s6, s10, 83f
                  lui          zero, 36373
                  sll          s2, s3, a6
                  slli         s7, s10, 25
                  xori         t5, t2, 1051
                  beq          s7, ra, 76f
71:               sra          s4, tp, t1
                  addi         t2, t6, 470
                  sltiu        t5, s11, -2036
                  slt          s3, gp, t1
                  or           s0, a4, s6
76:               sll          sp, s0, t4
                  addi         tp, sp, -1457
                  bne          s5, t4, 81f
                  sub          a1, t3, t0
                  slti         t0, t3, 1328
81:               sll          s0, t4, t5
                  nop
83:               bne          t3, t6, 91f
                  addi         a2, a4, 515
                  andi         t6, sp, -1087
                  srai         s7, a5, 19
                  blt          t1, s3, 88f
88:               bgeu         s2, s10, 100f
                  ori          gp, a2, 1312
                  sltu         ra, s4, tp
91:               sub          t2, a3, t6
                  or           s11, s1, ra
                  bne          s0, s0, 100f
                  srl          s0, t2, a2
                  sll          s5, s0, sp
                  blt          zero, a7, 97f
97:               xor          t0, s3, t2
                  addi         t0, a5, 1659
                  and          zero, s4, a0
100:              srl          s4, s5, a3
                  blt          t6, s1, 111f
                  bltu         t0, t4, 118f
                  xori         t2, s2, -857
                  xor          t5, s1, s0
                  slti         t0, s6, 711
                  srl          s11, gp, a4
                  addi         zero, zero, -1693
                  xor          a0, s11, s3
                  xori         s5, s2, 844
                  slt          zero, s11, s6
111:              beq          t6, t6, 128f
                  addi         s1, s0, -841
                  auipc        t1, 112733
                  sltu         s7, a2, s5
                  sra          a4, t6, s5
                  slti         a5, t3, 1171
                  add          s10, a6, t5
118:              sra          s0, t6, t1
                  slti         t3, t1, 1527
                  bgeu         s11, a3, 130f
                  bltu         a0, a1, 134f
                  addi         s6, s0, 727
                  nop
                  bltu         s9, t0, 144f
                  add          t2, zero, s6
                  ori          t0, sp, 261
                  srl          t6, s8, t4
128:              addi         a1, s10, -793
                  slti         s2, s8, 1965
130:              xor          a7, t4, s2
                  bltu         s10, s5, 150f
                  lui          zero, 909003
                  ori          a7, a2, -1223
134:              nop
                  lui          s10, 506482
                  addi         a4, s8, 2037
                  bge          s2, t4, 153f
                  srl          a5, a0, s2
                  blt          t3, gp, 147f
                  slti         s1, a0, -2024
                  bge          a3, t5, 151f
                  addi         a2, a1, -455
                  bge          t5, tp, 144f
144:              sltiu        s3, a6, -436
                  sra          s5, s6, s10
                  bgeu         zero, s4, 147f
147:              bne          t3, a5, 150f
                  beq          t0, t0, 166f
                  bgeu         t5, t1, 156f
150:              addi         a5, a0, -1424
151:              sub          ra, s6, s0
                  auipc        s0, 211086
153:              ori          t3, t2, 1430
                  sltu         a2, s2, zero
                  addi         a7, s10, 882
156:              bltu         tp, t2, 172f
                  bltu         s8, a0, 173f
                  sub          a4, s11, s8
                  nop
                  auipc        t4, 327678
                  slt          s10, t5, gp
                  lui          t3, 464804
                  bge          s8, t3, 173f
                  ori          a6, s3, -866
                  slti         gp, s3, -285
166:              bltu         a3, a6, 182f
                  or           gp, s6, t5
                  nop
                  bge          s9, a2, 170f
170:              nop
                  andi         s11, t5, 990
172:              addi         zero, s10, 331
173:              beq          t2, t3, 191f
                  bgeu         s1, a3, 182f
                  srai         a1, ra, 26
                  andi         tp, s9, -1340
                  bge          s3, zero, 196f
                  xori         a2, s3, -1730
                  blt          a4, gp, 188f
                  slli         a2, gp, 19
                  ori          s0, t1, -1108
182:              sll          s5, s11, zero
                  nop
                  srli         tp, s2, 6
                  blt          s8, a6, 195f
                  beq          s3, t4, 189f
                  xor          s1, a6, a1
188:              blt          zero, s5, 194f
189:              bge          t2, t1, 192f
                  bge          t5, t5, 209f
191:              bltu         gp, a4, 194f
192:              add          t5, t5, zero
                  xor          ra, s1, sp
194:              bgeu         s3, sp, 204f
195:              srai         a1, s11, 23
196:              sltiu        gp, t2, 1170
                  slli         a6, a6, 31
                  slli         a4, a0, 16
                  auipc        t3, 885128
                  auipc        t1, 112351
                  srl          t1, s4, s11
                  addi         s10, s7, 1560
                  srl          a4, t5, s5
204:              srli         s10, a4, 2
                  sub          a7, s9, a1
                  sltiu        t2, a6, -1838
                  bge          a7, s8, 208f
208:              xor          s1, s5, a1
209:              srl          a1, s9, t0
                  bge          zero, zero, 212f
                  srli         s10, gp, 19
212:              addi         t5, a5, -2012
                  xor          s11, s9, a3
                  slli         s1, s1, 30
                  bltu         t1, s1, 228f
                  lui          a0, 601378
                  bgeu         a5, s10, 218f
218:              bltu         s1, gp, 226f
                  xori         a6, a5, 1409
                  beq          a0, a2, 228f
                  blt          t4, t4, 222f
222:              and          s4, a6, t5
                  bgeu         s2, a2, 241f
                  beq          ra, s11, 236f
                  la           tp, region_0+316 #start riscv_load_store_hazard_instr_stream_1
                  sb           tp, -180(tp)
                  sw           t3, -180(tp)
                  sw           s10, -180(tp)
                  lb           a5, -180(tp)
                  sh           a3, -180(tp)
                  lw           t0, -180(tp)
                  lh           a5, -180(tp)
                  addi         s3, a2, 721
                  lhu          a5, -180(tp)
                  sh           s10, -180(tp)
                  sh           zero, -180(tp)
                  sh           a7, -180(tp)
                  sub          t1, t5, s5
                  lh           a6, -180(tp) #end riscv_load_store_hazard_instr_stream_1
                  xor          t0, a1, s1
226:              bgeu         t2, sp, 246f
                  and          a7, sp, s8
228:              bge          t1, gp, 246f
                  add          t6, s9, a1
                  bgeu         a1, t6, 247f
                  bne          s8, t3, 243f
                  bge          t3, zero, 242f
                  beq          a6, tp, 251f
                  xor          a7, tp, s6
                  bgeu         s1, a2, 238f
236:              slli         a0, a4, 9
                  xori         t3, a7, 1226
238:              sub          s2, t1, gp
                  addi         s0, s5, -2006
                  xor          s0, a3, s2
241:              xori         t0, sp, -1350
242:              bgeu         ra, s2, 244f
243:              and          a0, t2, s6
244:              add          s10, a2, s0
                  or           tp, s7, s7
246:              srai         t0, sp, 9
247:              srli         a7, s8, 16
                  sltiu        tp, s4, 1861
                  or           t5, ra, s4
                  sub          ra, s4, ra
251:              bltu         s10, s10, 261f
                  slti         t5, s3, 978
                  sltiu        gp, ra, -1130
                  slli         s7, t6, 16
                  addi         s6, tp, -1171
                  beq          a6, a1, 265f
                  srai         t6, t3, 8
                  add          a0, zero, s6
                  xori         t0, a3, -837
                  lui          a0, 763632
261:              bge          t3, t1, 279f
                  slt          t2, tp, s0
                  bltu         a1, a4, 281f
                  sltiu        s4, s1, -1917
265:              bgeu         s4, s0, 272f
                  sll          t4, a7, s1
                  slli         a5, s8, 18
                  xor          a4, s11, s10
                  blt          s4, s8, 285f
                  andi         t5, gp, 383
                  blt          s1, s1, 284f
272:              sltiu        s6, s3, 1495
                  srli         zero, sp, 25
                  sltu         t1, s10, t5
                  lui          s1, 436087
                  add          a5, a3, s10
                  and          s5, s8, s1
                  sltiu        s11, a7, -1926
279:              ori          a1, a4, 127
                  sltu         a4, t6, tp
281:              bge          s5, a5, 284f
                  sll          s6, s1, t1
                  andi         s7, s4, 573
284:              sub          gp, t6, a1
285:              blt          a1, a2, 301f
                  and          zero, t4, tp
                  lui          a1, 964397
                  srai         s6, a3, 24
                  sltu         t0, a0, a3
                  bne          a0, a5, 298f
                  xor          s6, a6, s0
                  srai         t0, s5, 25
                  slli         a1, t3, 19
                  sra          a1, a5, a0
                  bgeu         s4, s8, 313f
                  bltu         zero, s9, 297f
297:              add          a4, tp, s0
298:              srli         s11, tp, 6
                  slti         s5, s5, 1260
                  la           s1, region_0+756 #start riscv_load_store_rand_instr_stream_2
                  lb           gp, 6(s1)
                  sltu         ra, t3, a1
                  lb           t3, -13(s1)
                  lbu          s3, 6(s1)
                  lb           t3, -5(s1)
                  slt          t3, gp, t0
                  slti         a0, gp, 1659
                  lbu          a5, 2(s1)
                  sb           s10, -10(s1)
                  sb           tp, -13(s1)
                  sb           t0, 14(s1)
                  lbu          s0, 4(s1)
                  sb           s2, -7(s1)
                  lb           a5, -8(s1)
                  sb           t0, -16(s1)
                  slti         a7, t1, -1620
                  xor          t5, t5, t3
                  srli         a7, s11, 24
                  sltu         gp, s11, s0
                  lhu          s0, 2(s1)
                  srai         a4, s1, 20
                  lui          a5, 944532
                  lb           t0, 0(s1)
                  lb           tp, 15(s1)
                  lhu          zero, -10(s1)
                  lb           s4, -14(s1)
                  ori          a4, t6, 1400
                  lb           zero, 8(s1) #end riscv_load_store_rand_instr_stream_2
                  auipc        t1, 601431
301:              sub          s6, zero, s3
                  slti         a7, s3, -504
                  or           s1, t4, tp
                  nop
                  addi         tp, t2, -140
                  addi         s4, a3, -1726
                  ori          a2, t0, -188
                  sra          a4, s3, s11
                  sra          t2, s9, a6
                  addi         s3, a3, 1876
                  srl          a1, a4, tp
                  nop
313:              sra          tp, a3, t4
                  bne          s5, a5, 324f
                  sltiu        t5, t0, -1548
                  slti         t6, s2, -395
                  auipc        t6, 1002155
                  slti         s4, a3, 1495
                  addi         a6, a2, -881
                  lui          s6, 131875
                  sra          t0, t5, zero
                  andi         a0, a7, 1687
                  lui          t1, 937510
324:              xor          a0, a0, a1
                  bltu         t3, a7, 333f
                  srl          ra, a6, a0
                  sub          t6, s9, s9
                  bge          s4, a0, 329f
329:              bge          t5, a3, 337f
                  addi         t6, t5, 351
                  beq          t2, a2, 332f
332:              bge          s1, a4, 338f
333:              lui          a4, 101035
                  bne          s11, gp, 350f
                  bltu         t3, s5, 336f
336:              srli         t5, a6, 13
337:              add          a7, s1, ra
338:              srli         a6, s3, 7
                  srai         a1, t6, 31
                  xori         s10, t6, 1064
                  srli         t6, s0, 17
                  beq          t4, s2, 354f
                  srl          a7, sp, a4
                  lui          sp, 164732
                  srli         t1, t0, 2
                  andi         a5, a2, 1130
                  bge          s8, s0, 354f
                  bne          t5, s7, 351f
                  addi         tp, s8, 1918
350:              ori          s4, tp, -438
351:              andi         a7, a7, 1960
                  add          a2, s3, s10
                  sltu         a6, t0, t2
354:              lui          gp, 397327
                  nop
                  slt          tp, t2, t4
                  sra          s11, s10, gp
                  srai         t6, t0, 19
                  slti         t3, t3, 146
                  lw           s3, 4(a3)
                  or           s0, zero, zero
                  addi         a3, a3, 48
                  or           a7, t3, tp
                  nop
                  sra          s6, s3, a6
628:              addi x20, x19, 0
628:              jalr x20, x20, 0
sub_1:            addi         a3, a3, -48
                  sltu         tp, t3, s0
                  srai         s2, a5, 6
                  sw           s3, 4(a3)
                  add          a6, t4, a1
                  ori          a1, s0, 1644
                  la           t4, region_0+1454 #start riscv_load_store_rand_instr_stream_2
                  auipc        a4, 364253
                  sub          t0, t3, s7
                  andi         a7, t1, -842
                  lhu          a2, 46(t4)
                  lbu          s1, 61(t4)
                  lh           s1, -28(t4)
                  add          s6, s1, a3
                  sltu         a4, sp, s7
                  sb           t1, 33(t4)
                  or           t2, a2, tp
                  sb           t3, 25(t4)
                  lb           t1, 39(t4)
                  nop
                  lbu          t5, -43(t4)
                  or           a6, s0, t1
                  sh           s0, -32(t4)
                  sb           s6, -37(t4)
                  auipc        s2, 851943
                  add          a5, t0, s7
                  sb           s10, 36(t4)
                  srai         s1, sp, 19
                  nop
                  lbu          s4, -17(t4) #end riscv_load_store_rand_instr_stream_2
                  la           t0, region_0+899 #start load_store_instr_stream_2
                  la           a7, region_0+694 #start load_store_instr_stream_1
                  sh           t4, -167(t0)
                  la           t6, region_0+991 #start load_store_instr_stream_0
                  sb           a2, -244(t0)
                  lb           a6, 242(t6)
                  lbu          s7, 33(a7)
                  sb           t4, -32(t6)
                  lb           s2, 31(t0)
                  sb           a5, -38(t6)
                  lbu          s3, 10(a7)
                  lbu          s6, -17(t6)
                  sb           s6, 58(t0)
                  lh           t5, 147(t6)
                  lb           t5, 12(a7)
                  lb           gp, -4(t0)
                  lbu          zero, -143(t0)
                  sb           ra, 224(t6)
                  lhu          a0, -117(t6)
                  lw           s2, 10(a7)
                  lb           s2, 76(t0) #end load_store_instr_stream_2
                  lh           gp, 54(a7)
                  lb           t1, 136(t6)
                  sh           s4, 20(a7) #end load_store_instr_stream_1
                  lb           s3, -222(t6) #end load_store_instr_stream_0
                  la           a5, region_0+438 #start load_store_instr_stream_0
                  lhu          t1, -78(a5)
                  lbu          t0, -55(a5)
                  la           s6, region_0+280 #start load_store_instr_stream_1
                  lbu          gp, -13(s6)
                  lb           s10, 8(s6)
                  lbu          t0, 245(a5)
                  sb           a2, -9(s6)
                  lb           t5, -95(a5)
                  lb           sp, 9(s6)
                  sb           s0, 775(a5)
                  lb           a4, -1(s6)
                  lbu          ra, -81(a5)
                  lhu          s11, 8(s6)
                  lw           a6, 16(s6)
                  sb           s8, -7(s6)
                  lb           ra, -203(a5)
                  sb           s1, 1066(a5)
                  lbu          s4, 7(s6)
                  sh           t4, -168(a5)
                  sh           t3, 16(s6) #end load_store_instr_stream_1
                  sb           a2, 1432(a5) #end load_store_instr_stream_0
                  la           t2, region_1+397 #start riscv_load_store_hazard_instr_stream_2
                  lh           t3, 705(t2)
                  lbu          a7, 705(t2)
                  lh           s5, 705(t2)
                  sb           s11, 705(t2)
                  sb           s4, 64(t2)
                  lbu          s2, 64(t2)
                  sb           a6, 892(t2)
                  sb           t6, -195(t2)
                  lb           gp, 1590(t2)
                  lb           s0, 1590(t2)
                  lbu          s11, 1590(t2)
                  slt          gp, t2, ra
                  srai         s5, s7, 13
                  srli         t6, zero, 30
                  addi         t0, t5, -1142
                  srli         s7, s5, 17
                  sb           zero, 1590(t2)
                  sh           a6, 1401(t2) #end riscv_load_store_hazard_instr_stream_2
                  la           a1, region_0+1858 #start load_store_instr_stream_1
                  la           t1, region_0+1372 #start load_store_instr_stream_2
                  sb           a7, 113(a1)
                  la           s1, region_0+571 #start load_store_instr_stream_3
                  lb           a5, -185(t1)
                  la           a4, region_0+1179 #start load_store_instr_stream_0
                  lhu          s0, 74(t1)
                  sb           s8, 1369(s1)
                  lbu          s0, -41(a1)
                  lbu          s3, -134(a1)
                  lhu          gp, 202(t1)
                  lbu          a5, 243(a4)
                  lbu          tp, 77(t1)
                  lw           ra, 213(s1)
                  lhu          t3, 173(a4)
                  lbu          a7, -213(a1)
                  lb           a0, 113(s1)
                  sb           s4, -140(t1)
                  lbu          t2, -1101(a4)
                  lbu          a2, -37(s1)
                  sb           a2, 569(a4)
                  lbu          t6, 960(s1)
                  sh           s6, -218(t1)
                  lhu          s4, -208(a1)
                  lhu          s2, 124(t1)
                  lbu          sp, 156(t1)
                  lb           s2, -87(a1)
                  lhu          gp, 1237(s1) #end load_store_instr_stream_3
                  lh           s3, 12(a1) #end load_store_instr_stream_1
                  lb           t6, 209(t1) #end load_store_instr_stream_2
                  lhu          s0, -799(a4) #end load_store_instr_stream_0
                  la           a2, region_1+233 #start riscv_load_store_hazard_instr_stream_1
                  sb           a0, 8(a2)
                  lui          t2, 671261
                  lb           s7, 8(a2)
                  xor          zero, tp, s3
                  sb           zero, 2(a2)
                  lbu          s3, 2(a2)
                  lbu          zero, -6(a2)
                  sb           s5, -6(a2)
                  lbu          gp, -6(a2)
                  sb           a0, -10(a2)
                  lb           t1, -10(a2)
                  lb           a4, 9(a2)
                  sra          a6, s8, s4
                  sb           sp, 9(a2)
                  sltiu        t1, a7, -319
                  lhu          s10, 9(a2) #end riscv_load_store_hazard_instr_stream_1
                  la           s5, region_1+1476 #start riscv_load_store_rand_instr_stream_1
                  lw           a5, -48(s5)
                  lb           sp, 128(s5)
                  lh           t2, 188(s5)
                  lbu          zero, -117(s5)
                  lhu          zero, 136(s5)
                  or           a7, t0, s5
                  xor          s6, s10, s11
                  lb           a1, 169(s5)
                  srli         a6, a3, 23
                  auipc        a2, 317591
                  sw           s9, 128(s5)
                  sh           t2, 70(s5)
                  lb           a7, -211(s5)
                  sltu         ra, a1, s7
                  slt          t0, a6, s0
                  andi         s1, ra, -1747
                  lbu          a4, -76(s5)
                  nop
                  lbu          s1, 219(s5)
                  sb           a3, 42(s5)
                  slti         s11, zero, 1687
                  lui          a2, 823956
                  lb           a1, -245(s5)
                  lb           tp, 40(s5)
                  lb           s6, 157(s5)
                  lhu          s1, -18(s5)
                  lbu          a2, 147(s5)
                  lw           s11, -76(s5)
                  sh           a3, -80(s5)
                  sb           a1, -255(s5)
                  sb           a7, -130(s5)
                  sb           a0, 144(s5) #end riscv_load_store_rand_instr_stream_1
                  la           t0, region_1+1358 #start riscv_load_store_rand_instr_stream_0
                  sb           s4, -516(t0)
                  lhu          t3, -680(t0)
                  sb           s8, -293(t0)
                  lh           s7, 152(t0)
                  addi         tp, a1, -790
                  and          s4, a3, t5
                  and          a2, a0, t3
                  srai         ra, sp, 6
                  lb           gp, 324(t0)
                  lui          t4, 971299
                  srli         t2, s2, 31
                  auipc        s6, 1041930
                  lb           s3, -395(t0)
                  lhu          a4, -702(t0)
                  slli         tp, s2, 16
                  lb           a6, -609(t0)
                  or           a4, a5, a5
                  lh           a1, 396(t0)
                  sb           s4, -481(t0)
                  sltu         ra, s2, a7
                  sb           t1, -792(t0)
                  sb           t6, -755(t0)
                  lb           s7, -239(t0)
                  lw           a5, -986(t0)
                  sb           a2, 563(t0)
                  sw           t0, -566(t0)
                  sltu         a1, t5, s9
                  lbu          s2, -1179(t0) #end riscv_load_store_rand_instr_stream_0
                  slti         s1, tp, 1224
                  lui          s5, 981014
                  xori         a2, t3, -1495
                  sltu         t1, t4, s2
                  nop
                  sra          t2, s8, s6
                  bgeu         a4, s3, 21f
                  or           t0, s5, a2
                  sra          sp, t6, s0
                  xori         a6, s5, -1778
                  and          t1, a1, s9
                  sra          sp, s4, s1
                  and          s11, t4, t4
                  nop
                  blt          a4, a7, 22f
                  sll          s10, t4, s3
                  andi         sp, zero, -1450
                  srl          s5, s2, a2
                  lui          a4, 361823
                  sltiu        s10, a4, 1381
                  sltiu        tp, s1, 983
                  la           s5, region_0+862 #start riscv_load_store_hazard_instr_stream_0
                  lbu          s1, -240(s5)
                  sh           a5, -240(s5)
                  slti         s1, s3, 1487
                  lh           t5, -240(s5)
                  lb           t5, -240(s5)
                  sub          s7, s10, s4
                  and          a4, tp, s6
                  sb           sp, -240(s5)
                  lh           a1, -148(s5)
                  lbu          ra, -147(s5)
                  srli         s6, a0, 27
                  sh           t1, -254(s5)
                  sb           t1, -13(s5)
                  lbu          t0, -87(s5)
                  lb           a6, -87(s5)
                  lbu          s10, 55(s5)
                  lbu          sp, 55(s5)
                  sb           a7, 55(s5) #end riscv_load_store_hazard_instr_stream_0
21:               blt          s0, t5, 37f
22:               sub          gp, t5, zero
                  srl          t1, s7, ra
                  nop
                  srl          a2, a0, t0
                  srai         a4, t2, 8
                  slti         sp, t1, 1006
                  slt          s4, a0, a3
                  ori          ra, s9, 744
                  auipc        a6, 762708
                  slti         s1, t1, 1241
                  srli         s6, a3, 19
                  sll          s10, t4, t4
                  sra          ra, s3, a2
                  beq          s6, a0, 42f
                  srli         a5, s9, 12
37:               sub          s4, a4, s7
                  sll          a2, a6, s8
                  bne          a0, s3, 59f
                  or           s10, s0, s6
                  bltu         t3, s3, 56f
42:               or           ra, t0, t4
                  ori          zero, s4, 612
                  and          a7, s6, t3
                  slti         t0, t4, 1377
                  sub          a1, s11, a4
                  srli         a2, t5, 21
                  addi         s5, a5, 230
                  srl          a1, s8, s9
                  sltiu        t6, tp, -139
                  andi         zero, a2, -1617
                  sra          s2, t1, a4
                  auipc        ra, 101593
                  slti         a7, s11, 550
                  or           sp, s5, gp
56:               and          s0, a1, ra
                  srai         s10, a6, 12
                  blt          a3, a4, 73f
59:               bge          s8, s0, 64f
                  sltu         s6, a2, s5
                  sltu         s4, ra, s9
                  andi         t0, s1, 1483
                  srli         s11, s10, 8
64:               xor          s1, s5, s2
                  sltiu        sp, zero, -1493
                  sltiu        ra, s2, -506
                  bne          a4, t6, 77f
                  xor          s1, a7, a4
                  addi         a0, tp, 421
                  nop
                  auipc        s2, 446165
                  slli         a4, t3, 3
73:               slt          zero, s2, a4
                  srai         s3, t2, 23
                  andi         zero, a6, -1705
                  sra          a6, s9, gp
77:               sll          sp, a2, sp
                  sll          tp, t3, s1
                  nop
                  sltu         s10, a0, a7
                  sltu         a7, a4, a3
                  andi         a1, a6, -384
                  xor          a6, tp, sp
                  nop
                  xori         s3, s10, -1406
                  srai         sp, s11, 17
                  bne          s1, a4, 95f
                  sltu         s1, t4, s9
                  slli         s5, gp, 4
                  auipc        a4, 755009
                  srai         t0, a0, 25
                  sll          ra, s6, s2
                  nop
                  sub          t1, sp, a1
95:               nop
                  bne          a2, s7, 97f
97:               andi         t0, s5, -1724
                  bne          t2, s2, 118f
                  xori         sp, a4, 1634
                  and          t5, a2, s9
                  bltu         sp, a7, 112f
                  slli         t2, a1, 12
                  slli         a4, s10, 7
                  beq          t4, s11, 110f
                  blt          s3, s8, 121f
                  sub          a0, s1, s8
                  sltiu        ra, t3, -1893
                  addi         t1, a6, -1252
                  add          a0, t2, s11
110:              slli         s5, a0, 13
                  sub          a4, s3, s11
112:              xori         s11, s3, -1043
                  bgeu         s2, t3, 117f
                  sltiu        t6, zero, 1583
                  or           s0, s6, t2
                  beq          sp, s11, 119f
117:              beq          a7, s0, 123f
118:              sltiu        s7, a3, 1190
119:              sltiu        s4, a6, 533
                  bge          t6, a3, 129f
121:              beq          sp, t3, 122f
122:              srl          s0, gp, a1
123:              sub          ra, t6, zero
                  bltu         s11, t0, 132f
                  or           s10, t1, zero
                  xor          sp, s2, a1
                  sra          s11, s7, t2
                  addi         a1, s2, 199
129:              sltiu        a5, s9, 899
                  auipc        t3, 848099
                  bne          a2, s9, 150f
132:              lui          a7, 148697
                  lui          t2, 487986
                  auipc        t2, 51455
                  xori         ra, a4, -213
                  addi         s7, t2, -729
                  blt          s10, s10, 144f
                  sra          s4, gp, t6
                  add          sp, zero, s11
                  bge          t2, s11, 160f
                  bltu         s7, a4, 157f
                  sub          a2, a4, s5
                  sltu         t3, t2, a6
144:              auipc        t0, 73911
                  sub          s6, a3, a5
                  bge          s3, a6, 148f
                  and          a6, t3, s8
148:              andi         a1, t6, -88
                  addi         a1, t5, 1457
150:              lui          s11, 826236
                  blt          t2, sp, 167f
                  slt          a7, a2, t0
                  nop
                  beq          a5, s5, 171f
                  sltiu        a5, a3, 792
                  bne          s1, s5, 165f
157:              bltu         s6, a5, 169f
                  or           sp, a2, s0
                  beq          t1, a0, 161f
160:              auipc        gp, 1013294
161:              andi         s5, t1, -1173
                  and          s4, s7, s0
                  sltiu        t5, tp, 301
                  xor          a5, a4, a3
165:              sub          t4, t0, s9
                  bltu         a3, t2, 174f
167:              slli         s6, s3, 25
                  srli         s4, a2, 3
169:              bgeu         a5, s8, 177f
                  bltu         s4, a6, 179f
171:              or           s7, s7, a5
                  slli         t2, sp, 15
                  nop
174:              sll          s0, s5, t2
                  auipc        t1, 787334
                  srli         s3, t5, 13
177:              bltu         ra, s8, 197f
                  auipc        zero, 453207
179:              blt          ra, sp, 196f
                  sltiu        s10, s4, -1688
                  or           s4, sp, s4
                  xor          t0, t0, a0
                  sltiu        zero, ra, -1760
                  bne          s8, t2, 196f
                  slli         tp, a6, 1
                  addi         s2, s7, 2016
                  sltu         sp, gp, a7
                  beq          gp, t3, 195f
                  srli         s2, a3, 15
                  or           t2, s7, t5
                  auipc        t1, 627926
                  slt          gp, a2, sp
                  sub          gp, a5, a3
                  and          s10, ra, t6
195:              add          s11, a5, a2
196:              xori         s3, t4, 374
197:              bge          s10, a6, 217f
                  sra          s2, a1, a7
                  sltiu        s10, a5, 1060
                  or           t3, s9, gp
                  sll          t3, s4, a0
                  bge          t1, s10, 218f
                  sltiu        a0, tp, 405
                  sltiu        ra, a1, -592
                  bgeu         a1, s2, 209f
                  sll          t4, sp, s10
                  srli         t4, t3, 0
                  sll          a0, s3, a2
209:              lui          s4, 586424
                  xor          tp, gp, zero
                  andi         sp, tp, -580
                  beq          t2, t1, 228f
                  blt          a4, a5, 233f
                  or           sp, ra, t5
                  srl          sp, s9, t2
                  xor          t0, t1, s3
217:              srl          a7, s3, t4
218:              sub          zero, s6, s0
                  addi         a5, tp, 1964
                  andi         tp, s7, 1492
                  lui          sp, 828266
                  or           s11, a3, t0
                  and          a6, zero, a1
                  addi         s2, s10, 21
                  slti         a0, s10, -59
                  sltu         s5, t4, a0
                  lui          t3, 450359
228:              or           t4, sp, s9
                  addi         t0, a0, -1460
                  srai         s4, t4, 29
                  xori         a5, sp, -1834
                  slli         t5, s1, 22
233:              sll          a1, s2, t0
                  sub          s2, s5, s0
                  beq          s10, sp, 238f
                  sub          s3, t1, t5
                  slli         s6, s5, 27
238:              bltu         a0, a5, 248f
                  slti         zero, t1, -1845
                  sltu         a4, s1, s7
                  lui          gp, 747781
                  sltu         s1, gp, t5
                  blt          a2, ra, 258f
                  slti         s2, a3, 373
                  ori          s6, t5, 834
                  lui          zero, 267359
                  sra          a0, t5, t4
248:              xori         t4, a2, 1052
                  beq          s1, gp, 265f
                  slti         a0, a6, -201
                  sll          s3, a5, a2
                  srli         t4, s5, 26
                  slti         a5, t1, -1151
                  bltu         sp, t2, 263f
                  sltiu        tp, sp, -1381
                  auipc        s10, 1003937
                  nop
258:              ori          a1, s6, -673
                  sltiu        gp, s4, 1554
                  bne          a3, s7, 268f
                  auipc        t5, 303328
                  srai         t0, a1, 5
263:              beq          a2, zero, 269f
                  bgeu         t6, s3, 271f
265:              xor          a0, t4, s1
                  slli         a7, s6, 2
                  xori         a6, sp, -265
268:              srl          a5, zero, s11
269:              ori          t4, t1, 1104
                  slt          s1, s11, t3
271:              bgeu         zero, a1, 276f
                  bne          t0, t6, 287f
                  bge          s11, a2, 288f
                  blt          t5, a1, 293f
                  beq          s4, gp, 276f
276:              beq          s4, s2, 287f
                  ori          t6, a2, 1064
                  sltiu        a5, a4, -1007
                  sltu         a2, tp, t6
                  srli         s7, a7, 17
                  and          a7, a3, a3
                  sll          zero, s3, sp
                  bne          tp, s1, 289f
                  bge          a1, s10, 300f
                  addi         s11, a7, 1945
                  andi         s3, s0, 476
287:              slt          ra, s2, ra
288:              addi         a7, a2, 1354
289:              addi         a4, a0, 2046
                  slli         a1, s8, 19
                  addi         s5, s6, 657
                  sltu         a6, s5, s3
293:              srl          s7, s0, a4
                  xor          s7, t3, a6
                  slt          s2, s9, t6
                  xori         t4, t0, 1958
                  nop
                  bne          sp, gp, 299f
299:              add          a2, a4, a7
300:              xor          t3, s10, a4
                  slt          a7, s4, sp
                  sra          s0, s4, a7
                  sltiu        t6, s7, -1201
                  or           s6, t3, t0
                  nop
                  slt          t4, a5, s3
                  sltu         s10, zero, s8
                  blt          s6, s7, 328f
                  bge          sp, s1, 328f
                  sltu         a5, a4, t4
                  and          ra, a4, a5
                  xori         gp, t4, 781
                  or           a2, tp, t0
                  bgeu         t1, a1, 315f
315:              bge          a4, s9, 317f
                  bge          zero, a2, 336f
317:              bltu         t0, t3, 321f
                  bgeu         a1, s9, 334f
                  sub          s1, ra, s3
                  lui          s10, 766286
321:              sll          t1, s0, s0
                  srli         s11, a0, 22
                  bgeu         a7, tp, 334f
                  srli         a2, a2, 26
                  srl          t3, t2, a5
                  lui          t5, 79209
                  or           s11, s8, a2
328:              and          a7, a3, tp
                  add          s5, s3, t4
                  xor          s5, s1, s9
                  bgeu         gp, a4, 340f
                  sltu         s10, a2, ra
                  srli         a0, t4, 15
334:              srli         ra, a1, 29
                  blt          s10, t5, 351f
336:              bne          a0, sp, 352f
                  slti         gp, a4, -1274
                  add          s10, a1, s9
                  sltu         a1, t5, a7
340:              slli         s10, s11, 17
                  auipc        s2, 613214
                  and          s6, s1, t3
                  slli         a1, s5, 28
                  lui          t1, 115910
                  bgeu         s0, sp, 351f
                  slti         t2, a3, -1250
                  xor          a5, a1, zero
                  bltu         t0, s8, 363f
                  srli         s7, s10, 16
                  slli         s0, s11, 9
351:              add          t6, t2, s4
352:              sll          s5, t0, t0
                  srai         s1, a4, 3
                  bge          a1, s2, 364f
                  lui          a7, 285711
                  sra          t3, s9, gp
                  bgeu         tp, t4, 360f
                  andi         s2, t6, 1712
                  srl          a7, s11, s11
360:              srai         s6, sp, 27
                  slt          sp, zero, zero
                  srl          s4, s7, t1
363:              srli         t3, tp, 25
364:              slli         tp, a6, 12
                  add          t1, a1, t6
                  auipc        s2, 739497
                  bgeu         s2, t0, 374f
                  blt          s9, s1, 383f
                  srl          gp, t5, a6
                  or           t4, a6, t4
                  srli         a0, t2, 7
                  sll          s7, a2, s2
                  sltiu        s6, a1, 99
374:              auipc        a0, 212439
                  slli         s4, a1, 14
                  nop
                  add          a6, a4, s0
                  sra          sp, t1, t4
                  beq          a6, t2, 380f
380:              sub          a1, t4, s8
                  bgeu         a0, ra, 386f
                  lui          a4, 820825
383:              andi         a5, t6, 1248
                  and          gp, a4, s10
                  srl          t0, a7, ra
386:              or           s1, s8, s9
                  lui          s6, 728449
                  sub          a0, t4, t1
                  xori         s5, gp, 747
                  lw           s3, 4(a3)
                  auipc        s4, 543835
                  xori         s6, a0, 144
                  addi         a3, a3, 48
                  slt          t1, a0, s6
                  xori         ra, zero, -564
                  ori          a5, s1, 1177
                  srai         s4, t1, 11
                  slt          ra, t0, ra
624:              addi x18, x19, 1
624:              jalr x18, x18, 0
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
                  csrr x12, 0x300 # MSTATUS
                  csrr x12, 0x342 # MCAUSE
                  srli x12, x12, 31
                  bne x12, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x12, 0x341 # MEPC
                  csrr x12, 0x342 # MCAUSE
                  li x20, 0x3 # BREAKPOINT
                  beq x12, x20, ebreak_handler
                  li x20, 0x8 # ECALL_UMODE
                  beq x12, x20, ecall_handler
                  li x20, 0x9 # ECALL_SMODE
                  beq x12, x20, ecall_handler
                  li x20, 0xb # ECALL_MMODE
                  beq x12, x20, ecall_handler
                  li x20, 0x1
                  beq x12, x20, instr_fault_handler
                  li x20, 0x5
                  beq x12, x20, load_fault_handler
                  li x20, 0x7
                  beq x12, x20, store_fault_handler
                  li x20, 0xc
                  beq x12, x20, pt_fault_handler
                  li x20, 0xd
                  beq x12, x20, pt_fault_handler
                  li x20, 0xf
                  beq x12, x20, pt_fault_handler
                  li x20, 0x2 # ILLEGAL_INSTRUCTION
                  beq x12, x20, illegal_instr_handler
                  csrr x20, 0x343 # MTVAL
                  1: la x25, test_done
                  jalr x1, x25, 0

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
                  la x25, write_tohost
                  jalr x0, x25, 0

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
                  csrr  x12, 0x341
                  addi  x12, x12, 4
                  csrw  0x341, x12
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
                  csrr  x12, 0x341
                  addi  x12, x12, 4
                  csrw  0x341, x12
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
                  csrr  x12, 0x300 # MSTATUS;
                  csrr  x12, 0x304 # MIE;
                  csrr  x12, 0x344 # MIP;
                  csrrc x12, 0x344, x12 # MIP;
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
