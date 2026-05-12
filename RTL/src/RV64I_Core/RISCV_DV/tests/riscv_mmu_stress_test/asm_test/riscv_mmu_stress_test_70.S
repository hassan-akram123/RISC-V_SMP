.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x23, h0_start
jalr x0, x23, 0
h0_start:
                  li x30, 0x40000100
                  csrw 0x301, x30
kernel_sp:        
                  la x21, kernel_stack_end

trap_vec_init:    
                  la x30, mtvec_handler
                  ori x30, x30, 0
                  csrw 0x305, x30 # MTVEC

mepc_setup:       
                  la x30, init
                  csrw 0x341, x30

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x30, 0x1800
                  csrw 0x300, x30 # MSTATUS
                  mret
init:             
                  li x0, 0x80000000
                  li x1, 0x1
                  li x2, 0x4
                  li x3, 0x0
                  li x4, 0x0
                  li x5, 0xdde21cd
                  li x6, 0x80000000
                  li x7, 0xa905a83d
                  li x8, 0x80000000
                  li x9, 0x76f6ea45
                  li x10, 0xf1826a9f
                  li x12, 0xf020372d
                  li x13, 0xfa7dd680
                  li x14, 0x4
                  li x15, 0xf34dde1b
                  li x16, 0x0
                  li x17, 0x0
                  li x18, 0x0
                  li x19, 0xd
                  li x20, 0x80000000
                  li x22, 0xe
                  li x23, 0x0
                  li x24, 0x8
                  li x25, 0x8
                  li x26, 0x0
                  li x27, 0xcca67586
                  li x28, 0x80000000
                  li x29, 0xfd75cfa2
                  li x30, 0x80000000
                  li x31, 0x80000000
                  la x11, user_stack_end
main:             la           s6, region_1+896 #start riscv_load_store_hazard_instr_stream_2
                  xor          s2, a7, sp
                  lbu          gp, 7(s6)
                  lbu          s9, 16(s6)
                  sltiu        s4, t4, -863
                  sh           t4, 16(s6)
                  srl          t2, a4, a4
                  sb           a2, 16(s6)
                  xori         s1, t1, 1183
                  lw           s4, 16(s6)
                  lhu          t1, 16(s6)
                  sw           s10, 16(s6)
                  ori          zero, gp, -229
                  lbu          sp, -13(s6)
                  lw           s9, 12(s6)
                  lb           a5, 13(s6) #end riscv_load_store_hazard_instr_stream_2
                  la           a0, region_1+71 #start load_store_instr_stream_3
                  sb           s1, 1886(a0)
                  lb           s1, 529(a0)
                  la           gp, region_1+1082 #start load_store_instr_stream_1
                  la           a4, region_1+1069 #start load_store_instr_stream_0
                  lbu          zero, 33(gp)
                  la           s0, region_1+518 #start load_store_instr_stream_2
                  lb           s8, -22(a4)
                  lb           tp, 8(s0)
                  lb           a3, -43(gp)
                  lb           t2, 40(s0)
                  sh           s3, -18(s0)
                  lb           t3, 1567(a0)
                  lb           a2, 15(gp)
                  sb           zero, -51(s0)
                  lbu          s4, 1234(a0)
                  lb           s4, 2(gp)
                  sh           s2, -14(s0)
                  lhu          t0, -5(a4)
                  sh           s7, 1677(a0)
                  lb           t2, -36(gp)
                  lb           t5, -23(s0)
                  lw           tp, 1533(a0)
                  lb           a6, -56(a4)
                  sb           s1, -50(a4)
                  sh           s9, 1043(a0) #end load_store_instr_stream_3
                  lh           s8, 42(gp) #end load_store_instr_stream_1
                  sb           t6, -49(s0) #end load_store_instr_stream_2
                  lbu          sp, -47(a4) #end load_store_instr_stream_0
                  la           s4, region_0+1745 #start load_store_instr_stream_0
                  la           s11, region_0+74 #start load_store_instr_stream_1
                  la           sp, region_0+403 #start load_store_instr_stream_2
                  sb           t0, 5(s4)
                  lhu          ra, -58(s11)
                  lb           ra, -27(s11)
                  lhu          s10, 5(sp)
                  sb           s10, 64(s11)
                  sh           t3, -5(sp)
                  lh           ra, -11(s4)
                  lhu          ra, -7(s4)
                  lbu          t6, 15(sp)
                  lb           t3, 47(s11)
                  sb           a1, 58(s11)
                  lb           t4, 2(sp)
                  lh           s6, 1(s4)
                  lb           ra, 16(sp)
                  sb           s3, 2(s4)
                  sb           a1, -10(sp)
                  lbu          t1, 45(s11)
                  lb           gp, 1(s11)
                  sh           s8, -5(sp)
                  lbu          a3, -14(s4)
                  lhu          t4, -24(s11)
                  lw           a4, 11(s4)
                  sb           t1, -6(sp)
                  lbu          a5, -17(s11) #end load_store_instr_stream_1
                  sb           a6, 10(sp) #end load_store_instr_stream_2
                  sb           ra, -14(s4) #end load_store_instr_stream_0
                  la           s2, region_0+1283 #start load_store_instr_stream_2
                  la           s9, region_0+449 #start load_store_instr_stream_1
                  lh           gp, -13(s2)
                  la           s1, region_0+604 #start load_store_instr_stream_0
                  sh           a1, -5(s9)
                  sh           t2, 11(s9)
                  lb           s8, -10(s1)
                  lb           a3, 12(s2)
                  lbu          s6, 11(s1)
                  sb           a7, 9(s9)
                  sb           t0, 9(s9)
                  lbu          a5, -6(s1)
                  sb           a1, 6(s2)
                  lb           s0, 6(s1)
                  sw           s0, -9(s9)
                  sb           ra, -7(s1)
                  lb           a7, 12(s2)
                  sb           s3, -1(s1)
                  lb           s10, -2(s1)
                  lbu          s11, 12(s9) #end load_store_instr_stream_1
                  sh           tp, 13(s2) #end load_store_instr_stream_2
                  sh           s11, 16(s1)
                  lbu          ra, -1(s1)
                  lh           t6, 8(s1) #end load_store_instr_stream_0
                  la           sp, region_0+150 #start riscv_load_store_hazard_instr_stream_0
                  lb           s9, -7(sp)
                  lb           s0, -7(sp)
                  lbu          t5, -7(sp)
                  sb           t5, -7(sp)
                  lbu          t5, -7(sp)
                  lbu          a0, -7(sp)
                  sra          t6, a7, s3
                  xori         s9, a0, 1990
                  lb           s0, -7(sp)
                  lb           a6, -7(sp)
                  lbu          t0, -7(sp)
                  lbu          s11, -7(sp)
                  sb           a5, -7(sp)
                  lb           s1, -7(sp)
                  lbu          s3, -7(sp)
                  sb           a2, -7(sp)
                  lbu          zero, -7(sp)
                  lbu          a0, -7(sp)
                  lbu          gp, -7(sp)
                  lbu          a6, -7(sp)
                  lbu          t4, -7(sp) #end riscv_load_store_hazard_instr_stream_0
                  la           t3, region_0+845 #start riscv_load_store_rand_instr_stream_2
                  lb           t2, -3(t3)
                  lhu          zero, -11(t3)
                  lui          s4, 714711
                  and          t6, a4, s0
                  srli         t4, s7, 2
                  nop
                  lbu          s3, -7(t3)
                  sltu         a6, t3, t0
                  lw           a0, -25(t3)
                  lh           s8, 5(t3)
                  lb           t6, 1(t3)
                  and          s2, s4, a7
                  sb           a5, -4(t3)
                  add          s2, s1, t3
                  sb           t0, 4(t3)
                  lui          tp, 527277
                  sltu         t4, a7, a7
                  or           gp, s0, a1
                  lb           s10, -61(t3)
                  lb           sp, -57(t3)
                  addi         zero, sp, 2033
                  and          t0, a5, a3
                  slt          a6, zero, t4
                  lb           s9, -32(t3)
                  lb           t4, 43(t3)
                  srai         gp, a1, 25
                  srli         tp, s1, 0
                  lh           a6, 47(t3)
                  sb           s2, 45(t3)
                  xor          a3, s1, a2
                  lb           s8, 60(t3)
                  sb           s2, -43(t3)
                  or           zero, a4, gp
                  lbu          a5, 6(t3)
                  auipc        t0, 287738
                  slt          t1, s0, s6
                  lbu          t6, 20(t3)
                  sb           t6, -1(t3)
                  srai         s2, s11, 24
                  lui          s8, 480838
                  lui          tp, 741569
                  slli         a6, a0, 26
                  slt          t1, s9, sp
                  auipc        a7, 274360
                  sb           s7, 14(t3)
                  lbu          t5, 58(t3)
                  srl          sp, t6, t4
                  lh           a2, -35(t3)
                  xor          s8, t6, a6
                  lui          t0, 497084
                  srai         s3, a6, 11
                  sb           t1, -2(t3)
                  lb           s0, 39(t3)
                  sh           s7, 27(t3)
                  lbu          t6, 56(t3)
                  xor          a3, a0, s11
                  sb           s5, -14(t3) #end riscv_load_store_rand_instr_stream_2
                  la           sp, region_0+541 #start riscv_load_store_rand_instr_stream_0
                  lb           s2, 6(sp)
                  addi         t1, a7, 45
                  srl          a2, a3, tp
                  slt          s11, a7, t0
                  lb           a7, 4(sp)
                  nop
                  lh           t3, 1(sp)
                  andi         a6, s3, 1318
                  slti         a4, a6, -1898
                  and          s0, ra, s3
                  lbu          ra, -13(sp)
                  sub          ra, a6, zero
                  lbu          a6, 13(sp)
                  lb           s11, 2(sp)
                  or           zero, a4, sp
                  srl          t0, s10, a5
                  srli         s4, s7, 27
                  lbu          t2, 8(sp)
                  sb           t0, 12(sp)
                  or           s6, a5, sp
                  sub          s2, tp, tp
                  xor          a6, t1, ra
                  srai         t6, s7, 14
                  lbu          t5, 10(sp)
                  lb           t1, 6(sp)
                  slti         ra, ra, -334
                  lbu          s6, 13(sp)
                  lb           s8, -4(sp)
                  lw           a0, -13(sp)
                  xori         s2, tp, 678
                  lhu          s8, -7(sp)
                  sltu         s9, t1, s2
                  lbu          t5, -3(sp)
                  sb           a5, 15(sp)
                  lbu          t6, -12(sp)
                  lbu          t2, -8(sp)
                  addi         a7, zero, 1174
                  lhu          a6, 11(sp)
                  nop
                  slti         a5, s4, -571
                  lui          a5, 898237
                  lhu          a5, -7(sp)
                  sb           s11, -12(sp)
                  sltu         a5, a4, s9
                  lbu          a4, 15(sp)
                  sh           t2, 1(sp) #end riscv_load_store_rand_instr_stream_0
                  la           sp, region_1+1984 #start riscv_load_store_rand_instr_stream_1
                  lb           t4, -2(sp)
                  lhu          s2, -38(sp)
                  add          a2, s3, s4
                  sb           gp, -28(sp)
                  lbu          ra, -49(sp)
                  xor          s10, s1, a6
                  lbu          zero, -31(sp)
                  lbu          a6, -43(sp)
                  sh           a4, -2(sp)
                  sh           a6, 4(sp)
                  sltu         t3, s9, t5
                  lb           s3, -35(sp)
                  lbu          s2, -3(sp)
                  lhu          s6, -34(sp)
                  srl          zero, a4, s11
                  sw           s4, 0(sp)
                  lb           t0, -17(sp)
                  lb           ra, -37(sp)
                  sh           a4, -16(sp)
                  add          a3, ra, s10
                  lb           s4, 13(sp)
                  sltu         gp, s3, sp
                  sb           s10, -19(sp)
                  lhu          t6, 14(sp)
                  sb           a7, -53(sp)
                  sb           zero, -3(sp)
                  sb           a3, -30(sp)
                  lbu          a4, -7(sp)
                  slli         s11, a2, 9
                  lhu          a3, -58(sp)
                  sb           tp, 3(sp)
                  or           s4, gp, a4
                  slli         tp, s3, 23
                  lbu          zero, -5(sp)
                  ori          a2, a2, 595
                  srl          s3, s4, a3
                  lh           t1, 10(sp)
                  lb           t3, -7(sp)
                  lh           a2, -6(sp)
                  lbu          t4, 9(sp) #end riscv_load_store_rand_instr_stream_1
                  lui          a3, 161352
                  srl          s8, a1, s7
                  sltu         a4, s8, t6
                  xor          a4, tp, s11
                  sltu         t0, s5, t6
                  bltu         s6, t5, 23f
                  xori         a2, a3, -391
                  ori          a0, s4, 1291
                  xori         s11, sp, 155
                  sub          a4, s1, s1
                  bge          t3, t6, 15f
                  xori         t1, s4, 548
                  andi         s2, a3, -1875
                  srli         s11, s11, 26
                  bltu         gp, a2, 27f
15:               or           t1, a5, s6
                  nop
                  bge          ra, s6, 23f
                  sll          s4, a1, ra
                  sll          a4, t6, a1
                  bge          a0, s1, 39f
                  srai         sp, s11, 19
                  sltu         s0, s3, a2
23:               xor          s11, s3, s6
                  sltiu        tp, a1, -940
                  sltiu        s10, t0, 699
                  andi         t3, s8, 1423
27:               sra          t0, s6, a7
                  auipc        s3, 422928
                  and          s0, a5, s8
                  xor          s1, a3, s7
                  slt          s2, s1, a1
                  slt          t0, a5, s11
                  and          a4, a2, a1
                  sub          sp, s8, s3
                  or           s1, s1, t6
                  ori          sp, s9, 1895
                  xor          s10, t6, a7
                  srli         t3, a4, 15
39:               auipc        a3, 829492
                  beq          t2, gp, 45f
                  slti         a5, s5, -196
                  blt          a6, s1, 46f
                  sltu         a3, tp, t3
                  ori          s11, s1, -1752
45:               ori          t1, t6, 8
46:               xor          a3, a1, s0
                  andi         t0, s7, 891
                  add          t2, t2, t4
                  and          a6, s11, s1
                  sltu         t6, a4, a1
                  or           a4, a1, t6
                  andi         s1, a1, 1220
                  lui          t6, 908122
                  bge          a4, s9, 74f
                  andi         a5, s8, -578
                  and          a4, gp, a2
                  or           a3, t4, s3
                  lui          sp, 112505
                  beq          s9, s1, 62f
                  lui          s3, 508853
                  sub          s10, sp, s8
62:               auipc        a3, 256155
                  sll          zero, t3, s4
                  and          a7, a1, s2
                  xori         a7, t0, -487
                  slti         a4, s4, 1437
                  slli         s0, s0, 15
                  nop
                  sra          t2, zero, ra
                  addi         t2, a0, -994
                  add          zero, s10, a7
                  srl          t2, s11, t3
                  sltiu        sp, s7, 1405
74:               sltiu        s8, s7, 220
                  or           a6, t6, a2
                  beq          zero, t5, 88f
                  sltiu        s0, ra, -1781
                  srli         a2, t4, 24
                  auipc        t2, 36578
                  slti         t0, t6, -1141
                  or           a2, a4, s10
                  slt          a3, zero, s5
                  xor          t0, s0, a0
                  xori         s4, s2, -1875
                  or           sp, t6, gp
                  slt          tp, s6, t1
                  bge          s11, tp, 103f
88:               slti         gp, sp, -1115
                  slt          a7, a3, a3
                  xori         s9, a0, -1592
                  slli         ra, t4, 25
                  srli         zero, t2, 7
                  lui          t0, 319706
                  slli         t5, s8, 26
                  srai         a4, a6, 29
                  lui          sp, 330013
                  blt          a5, ra, 108f
                  srai         tp, zero, 26
                  sra          zero, a4, gp
                  bne          sp, s0, 109f
                  srl          ra, t4, tp
                  xor          a2, s10, t5
103:              sltu         s2, a6, s4
                  slt          a6, t4, a5
                  bge          a3, a4, 111f
                  xor          s3, s8, s5
                  xor          a4, t5, a3
108:              sub          ra, s5, s8
109:              or           a7, s6, t2
                  andi         tp, s6, 206
111:              ori          t0, a1, -718
                  slti         s11, ra, 1904
                  sll          s11, t3, a6
                  srli         t0, s9, 11
                  sub          s4, gp, gp
                  xori         a7, s4, 1984
                  bge          s2, t5, 130f
                  bgeu         ra, s1, 129f
                  sltu         s6, a1, gp
                  addi         s2, s4, -1099
                  sltu         a4, s6, a3
                  add          a3, s3, s5
                  slli         gp, t6, 28
                  la           sp, region_1+495 #start riscv_load_store_hazard_instr_stream_1
                  sh           s5, 29(sp)
                  lw           t1, 29(sp)
                  xor          t0, a6, t0
                  sh           t0, 29(sp)
                  lh           tp, 27(sp)
                  lh           t3, -57(sp)
                  sb           s5, 0(sp)
                  lhu          a4, -29(sp)
                  lhu          t2, -29(sp)
                  sltu         t6, s2, s2
                  lui          ra, 73141
                  sltiu        t2, ra, -258
                  sb           s8, -26(sp)
                  sb           t1, 53(sp)
                  lb           t2, -33(sp)
                  lb           s11, 51(sp)
                  lbu          t4, 51(sp)
                  sb           a5, 51(sp)
                  add          t2, s7, s2
                  lbu          a4, 30(sp)
                  lb           t4, 64(sp)
                  lh           tp, 47(sp)
                  srli         t1, s8, 1
                  add          tp, tp, t2
                  sh           t0, 47(sp)
                  sb           a5, -55(sp)
                  lhu          t3, 3(sp) #end riscv_load_store_hazard_instr_stream_1
                  lui          a4, 486161
                  sub          t2, s0, s3
                  slti         s6, s7, -1376
                  bne          sp, a7, 131f
                  xor          s0, s8, s8
129:              auipc        a3, 468706
130:              auipc        sp, 576098
131:              nop
                  andi         a0, s3, -830
                  blt          tp, s2, 153f
                  sltu         t5, t5, gp
                  bltu         s4, s1, 151f
                  xor          sp, s9, a7
                  sltiu        sp, s10, 1052
                  slli         ra, s6, 6
                  xor          s10, s0, s7
                  bge          gp, t3, 158f
                  bge          a2, tp, 159f
                  addi         a6, a0, 1681
                  bltu         gp, t6, 150f
                  add          a7, t3, a1
                  nop
                  bne          a6, s2, 161f
                  add          sp, s7, t0
                  nop
                  sub          a3, s10, a5
150:              bge          a4, t2, 170f
151:              beq          a1, s1, 154f
                  slt          s1, sp, a6
153:              slt          a5, t0, a7
154:              slt          a4, ra, a7
                  xori         t4, s4, 602
                  bgeu         t3, t6, 173f
                  beq          s11, s5, 164f
158:              srli         a4, s7, 4
159:              auipc        s6, 676569
                  andi         s11, s2, 261
161:              sll          a4, a2, a2
                  bltu         t1, a7, 181f
                  sltiu        a5, t3, 62
164:              slt          a0, sp, zero
                  slli         t4, s9, 7
                  sltiu        s4, s8, 117
                  bne          sp, a7, 168f
168:              auipc        zero, 935734
                  srli         t5, s3, 4
170:              bge          t1, s11, 187f
                  blt          t4, t6, 191f
                  bltu         s3, t0, 189f
173:              bne          s8, s0, 179f
                  and          a0, s10, s9
                  srl          t1, s3, s3
                  addi         t4, s1, -939
                  srli         ra, s9, 27
                  and          a6, s8, s0
179:              srl          a0, zero, s6
                  and          ra, s11, zero
181:              bgeu         sp, s8, 186f
                  sltu         zero, t4, a5
                  or           s6, t1, t1
                  xor          t5, a6, t2
                  bltu         s0, s11, 188f
186:              sll          s10, a3, s10
187:              auipc        t6, 70298
188:              slti         t0, a5, -1346
189:              nop
                  sub          t2, s9, s10
191:              or           s10, t3, s11
                  beq          a3, s10, 203f
                  sltu         zero, t5, t4
                  srli         a3, a5, 8
                  sll          s8, t2, t4
                  sltu         s3, a7, t5
                  beq          t2, s1, 212f
                  beq          a6, s6, 210f
                  srai         s6, a1, 22
                  ori          ra, a5, -1565
                  or           a0, s1, a1
                  beq          a3, sp, 213f
203:              ori          t1, sp, -350
                  xor          t3, s10, t6
                  srl          zero, t2, a6
                  bge          zero, a6, 224f
                  nop
                  nop
                  sub          t3, a3, a3
210:              srli         gp, a6, 24
                  srai         a2, s0, 2
212:              srli         a3, ra, 17
213:              bgeu         s0, sp, 229f
                  andi         t1, a3, 1231
                  andi         sp, s9, -898
                  bltu         a5, ra, 236f
                  sll          s3, s8, s6
                  sltu         t6, a4, s1
                  or           t5, zero, s9
                  auipc        t0, 700391
                  slti         t2, t1, 1366
                  srai         t0, s6, 6
                  sltu         s0, tp, a5
224:              andi         s4, t2, -1057
                  bltu         a0, a7, 231f
                  srai         s3, s4, 23
                  xor          sp, a7, t2
                  bge          t3, a2, 235f
229:              sra          a0, a7, a1
                  sra          t6, tp, sp
231:              bgeu         sp, t2, 249f
                  bne          t0, a7, 248f
                  slti         sp, s2, -523
                  or           a6, t2, s11
235:              add          t0, gp, s3
                  la           tp, sub_1
                  add          a0, s1, tp
                  srai         gp, t6, 3
                  addi         tp, tp, 689
                  or           gp, ra, a1
                  srl          t6, t0, t2
                  addi         sp, a2, 274
main_j1:          jalr         ra, tp, -689 #jump main -> sub_1
236:              xor          s10, t3, a4
                  bgeu         a5, a6, 242f
                  slti         s1, s8, 1819
                  slli         a5, sp, 26
                  slt          a4, t0, a7
                  slt          s9, s4, a7
242:              sll          a5, s9, s2
                  and          t3, sp, t4
                  auipc        s3, 696254
                  or           t4, s0, s0
                  srl          t3, s5, t0
                  lui          a2, 550315
248:              and          gp, a1, s3
249:              andi         s6, a7, 1630
                  sltu         a4, a7, s8
                  sll          sp, t2, t0
                  add          t1, tp, t1
                  nop
                  sub          s11, gp, t2
                  srl          ra, s7, a0
                  srai         t1, t1, 28
                  sll          s0, zero, t3
                  bltu         s0, a5, 267f
                  or           a7, a2, zero
                  bge          s11, t6, 279f
                  sltu         t3, a7, s3
                  sra          a6, s5, s3
                  xori         gp, t6, -1223
                  nop
                  sll          ra, gp, s10
                  xor          t3, a3, t3
267:              slli         a6, a5, 27
                  auipc        a5, 950887
                  srli         sp, s11, 16
                  xor          s11, gp, s7
                  bgeu         a5, a1, 284f
                  sub          s8, s5, a7
                  sltiu        s2, t1, 1594
                  xori         t6, t1, 1319
                  xor          s9, t5, t3
                  sltiu        s11, a6, 103
                  slli         gp, s5, 18
                  add          t0, tp, ra
279:              ori          t0, s5, 758
                  slt          t5, s3, s11
                  andi         t5, zero, -1265
                  blt          a4, t6, 285f
                  sub          s1, a5, s6
284:              addi         t5, t0, 1123
285:              sub          s6, s3, s4
                  auipc        s1, 933513
                  and          sp, s0, s11
                  or           t4, s5, s0
                  bne          tp, s8, 293f
                  blt          t2, t0, 303f
                  srli         t3, ra, 24
                  lui          s2, 99630
293:              sll          t5, s11, a5
                  slt          s8, t0, s4
                  addi         s2, t3, 2027
                  beq          a5, s5, 303f
                  srl          a4, t3, t1
                  beq          ra, s11, 299f
299:              srli         t1, s0, 10
                  bltu         s1, t1, 319f
                  slli         sp, s8, 17
                  srai         t5, a7, 15
303:              add          t3, s8, s4
                  lui          a7, 463383
                  lui          ra, 702841
                  bne          t6, s1, 324f
                  srl          a3, t1, tp
                  or           a3, tp, s11
                  sltu         s3, a2, s5
                  xor          a0, t3, s7
                  andi         a6, t0, -773
                  xori         t4, a6, 1170
                  bne          s11, s3, 333f
                  nop
                  add          s6, a7, a4
                  sltiu        s3, ra, -1801
                  sltu         tp, s8, t6
                  srl          s4, a5, a7
319:              sra          s3, a0, s9
                  bge          a0, s1, 324f
                  srli         s11, s11, 11
                  bge          zero, ra, 339f
                  ori          t6, a1, -796
324:              bgeu         a4, s11, 328f
                  bgeu         s7, a0, 330f
                  or           t0, s5, gp
                  auipc        s0, 752718
328:              beq          s4, gp, 333f
                  auipc        a2, 629855
330:              xor          zero, s7, s11
                  bltu         a6, t3, 338f
                  sub          a7, a5, s6
                  or           s6, t5, a5
                  slti         t3, s9, 153
                  la           t2, sub_1
                  add          s6, a0, tp
                  addi         t2, t2, 281
                  beq          s10, a3, main_j2 #branch to jump instr
                  and          s6, t5, s7
main_j2:          jalr         ra, t2, -280 #jump main -> sub_1
                  sltu         s2, s10, s3
333:              srai         t3, s5, 11
                  or           s4, sp, gp
                  sub          t2, ra, s4
                  add          gp, a5, t5
                  sltu         s1, gp, a2
338:              auipc        zero, 481492
339:              bgeu         a7, ra, 345f
                  beq          a6, t1, 356f
                  addi         tp, t6, -1787
                  srai         t1, sp, 18
                  sub          s6, a4, s0
                  srai         s6, s4, 7
345:              slt          t0, t4, t1
                  srli         t0, a7, 30
                  bltu         s1, a7, 353f
                  srl          t1, gp, t6
                  sra          a5, s7, s7
                  ori          a3, t0, 237
                  srl          a6, a2, a2
                  xor          s1, a0, ra
353:              nop
                  addi         t4, a6, -903
                  lui          gp, 439446
356:              or           t0, s3, s6
                  srai         s11, t6, 26
                  or           s0, t5, t6
                  la x23, test_done
                  jalr x0, x23, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            nop
                  sltiu        s6, a0, -1837
                  blt          a1, t6, sub_2_stack_p
sub_2_stack_p:    addi         a1, a1, -28
                  add          s6, tp, a6
                  sw           ra, 4(a1)
                  andi         s8, s5, -1508
                  la           s6, region_0+1450 #start riscv_load_store_rand_instr_stream_3
                  nop
                  srl          s2, a1, a2
                  slti         a0, s10, -25
                  lhu          s10, -84(s6)
                  lbu          a6, -252(s6)
                  lbu          t4, -74(s6)
                  lbu          a2, 144(s6)
                  lh           a0, -96(s6)
                  sll          t6, s4, s4
                  sltiu        s1, t2, 1466
                  auipc        s1, 652377
                  sltiu        s0, t1, -444
                  sb           s6, 242(s6)
                  xori         s3, zero, -1572
                  sb           a6, 239(s6)
                  slt          a0, s7, s11
                  sh           t3, 254(s6)
                  or           t2, t3, t3
                  lui          s0, 1000517
                  xor          s9, a4, zero
                  lbu          a6, 127(s6)
                  lb           sp, 8(s6)
                  sll          t5, a6, a6
                  ori          s9, tp, -906
                  lhu          a7, -136(s6)
                  sh           s3, 212(s6)
                  nop
                  lbu          s11, -255(s6)
                  lb           s10, 159(s6)
                  lb           a2, -41(s6)
                  addi         ra, s0, 2018
                  sb           a1, 81(s6)
                  lb           a0, -149(s6)
                  lbu          a7, 158(s6)
                  lh           a0, -226(s6)
                  or           t4, a2, s1
                  lbu          t1, 25(s6)
                  lb           t2, -129(s6)
                  or           ra, t2, zero
                  sb           s10, -184(s6)
                  sb           a3, 21(s6)
                  xori         zero, s9, -299
                  sb           s8, -233(s6)
                  lb           a5, -184(s6)
                  lb           s0, 41(s6)
                  lb           sp, -233(s6)
                  sb           ra, 92(s6)
                  sb           t1, 115(s6)
                  sra          s9, a2, t0
                  sb           s0, 228(s6) #end riscv_load_store_rand_instr_stream_3
                  la           a5, region_1+47 #start riscv_load_store_hazard_instr_stream_1
                  lb           zero, 495(a5)
                  lhu          ra, 495(a5)
                  lb           s2, 495(a5)
                  lhu          t6, 495(a5)
                  sltiu        a4, gp, 353
                  lb           t5, 495(a5)
                  lhu          t4, 495(a5)
                  lb           a2, 1944(a5)
                  andi         a0, a4, 1975
                  sltu         ra, s6, gp
                  slti         a6, s6, -1600
                  xor          s4, s10, t4
                  slti         t4, s10, -1676
                  lb           zero, 1774(a5)
                  lbu          s2, 1774(a5)
                  sb           a4, 1774(a5) #end riscv_load_store_hazard_instr_stream_1
                  la           s6, region_0+1965 #start riscv_load_store_hazard_instr_stream_4
                  lbu          t6, 12(s6)
                  sh           s8, -7(s6)
                  lbu          a3, -16(s6)
                  lbu          t3, -16(s6)
                  sub          s10, gp, s0
                  lbu          t2, -16(s6)
                  lbu          a4, -13(s6)
                  lhu          s2, -13(s6)
                  sw           gp, -13(s6)
                  sw           t0, -13(s6)
                  lb           s9, 16(s6)
                  lbu          s10, 16(s6)
                  lb           a0, 16(s6)
                  lb           s4, 16(s6)
                  xor          zero, s1, a4
                  lbu          s1, 16(s6)
                  lbu          zero, 16(s6)
                  lb           s4, -12(s6) #end riscv_load_store_hazard_instr_stream_4
                  la           sp, region_0+1843 #start riscv_load_store_rand_instr_stream_2
                  lhu          t6, 13(sp)
                  sra          a4, t0, t4
                  andi         t6, a6, 776
                  slti         t2, a2, 1644
                  srai         s3, a0, 26
                  slt          ra, gp, t3
                  srli         s4, a1, 21
                  slli         t2, s7, 13
                  lhu          a5, 13(sp)
                  sltu         ra, a3, s6
                  lb           a7, 1(sp)
                  lbu          t0, 3(sp)
                  sltu         t4, tp, s6
                  or           t0, s1, s0
                  lbu          s11, -3(sp)
                  lbu          s8, -10(sp)
                  sltu         s9, a4, t1
                  lb           t0, 10(sp)
                  lui          t0, 914093
                  sb           zero, 0(sp)
                  sll          s4, tp, ra
                  andi         gp, t6, -2033
                  srai         s1, a3, 25
                  lbu          a2, 3(sp)
                  sb           gp, 12(sp)
                  lb           s1, -4(sp)
                  lh           t0, 1(sp)
                  srl          s10, a7, s2
                  andi         t0, t6, -1755
                  lb           t5, 0(sp)
                  addi         s2, a6, 331
                  xori         a4, s0, -1667
                  lb           s4, -2(sp)
                  lbu          s1, 8(sp) #end riscv_load_store_rand_instr_stream_2
                  la           s4, region_1+412 #start load_store_instr_stream_3
                  la           t0, region_1+183 #start load_store_instr_stream_2
                  la           gp, region_1+576 #start load_store_instr_stream_1
                  lb           a7, 15(gp)
                  lb           a0, 43(t0)
                  lbu          s3, -140(t0)
                  la           s1, region_1+1631 #start load_store_instr_stream_0
                  sb           tp, 27(s1)
                  lbu          a2, 53(s4)
                  la           a4, region_1+592 #start load_store_instr_stream_4
                  sb           s0, 33(s1)
                  lb           s3, 34(s4)
                  sb           a0, 12(s1)
                  lbu          s0, 11(a4)
                  lbu          s3, -16(a4)
                  lbu          s3, -13(a4)
                  lb           a6, -5(gp)
                  lh           t5, 97(t0)
                  lb           a0, 23(s1)
                  sw           s11, 52(s4)
                  lbu          a3, 33(s4)
                  lb           a2, 187(t0)
                  lh           a2, 10(s4)
                  lbu          t5, 1(gp)
                  lbu          s6, 0(a4)
                  lb           t3, -81(t0)
                  lb           t5, -58(s1)
                  lhu          s10, 6(gp)
                  sh           t2, 16(s4)
                  lb           t4, 7(gp)
                  lbu          t3, -48(s1)
                  lhu          s11, 40(s4)
                  lb           s3, 5(a4) #end load_store_instr_stream_4
                  lbu          ra, -51(s4)
                  sb           tp, -112(t0) #end load_store_instr_stream_2
                  lb           ra, -5(gp) #end load_store_instr_stream_1
                  sw           s3, -60(s4) #end load_store_instr_stream_3
                  sh           a7, -45(s1) #end load_store_instr_stream_0
                  la           a0, region_1+1487 #start load_store_instr_stream_2
                  lh           s0, -9(a0)
                  la           a4, region_1+1243 #start load_store_instr_stream_0
                  la           t1, region_1+333 #start load_store_instr_stream_1
                  lb           t5, 10(a0)
                  lb           gp, 1615(t1)
                  lbu          t4, -2(a4)
                  lhu          ra, 1399(t1)
                  lh           s4, -1(a4)
                  lbu          s2, -262(t1)
                  lb           a2, -1(a4)
                  lb           s1, 1233(t1)
                  lbu          sp, -12(a0)
                  lbu          ra, -10(a4)
                  lhu          s10, 201(t1)
                  sb           a3, 12(a0)
                  lb           s4, -16(a4)
                  lb           t3, -8(a0)
                  lbu          s1, 14(a0)
                  lw           t0, 1003(t1)
                  lb           a5, 1631(t1)
                  lbu          t5, 12(a0)
                  lb           tp, -8(a4)
                  lhu          a2, 439(t1)
                  lhu          t5, -1(a0)
                  lb           s0, 14(a4)
                  sb           s5, 284(t1)
                  lbu          a3, 774(t1) #end load_store_instr_stream_1
                  lbu          s9, 9(a0) #end load_store_instr_stream_2
                  lb           s4, -4(a4) #end load_store_instr_stream_0
                  la           s9, region_1+621 #start riscv_load_store_hazard_instr_stream_3
                  lbu          a0, -58(s9)
                  sb           tp, -58(s9)
                  sb           a7, -58(s9)
                  sltiu        t4, a6, -860
                  lbu          t2, -58(s9)
                  sb           t2, -26(s9)
                  lb           tp, 56(s9)
                  lh           t6, -7(s9)
                  sb           s1, -7(s9)
                  lbu          t0, -7(s9)
                  slli         s4, s6, 25
                  lb           a2, -7(s9)
                  lbu          a4, -7(s9)
                  sb           s1, -11(s9)
                  lb           gp, -38(s9)
                  lb           s1, -37(s9) #end riscv_load_store_hazard_instr_stream_3
                  la           s10, region_1+974 #start load_store_instr_stream_1
                  la           a6, region_1+369 #start load_store_instr_stream_3
                  lb           t4, 0(a6)
                  la           tp, region_1+351 #start load_store_instr_stream_0
                  lh           s1, -10(s10)
                  la           sp, region_1+1632 #start load_store_instr_stream_2
                  sw           tp, 2(s10)
                  lb           s3, 21(a6)
                  lbu          a3, -13(s10)
                  lb           s2, -215(sp)
                  lb           t6, 189(sp)
                  sb           a6, 30(a6)
                  lbu          a7, 39(tp)
                  sb           s5, -27(a6)
                  sb           s5, -10(s10)
                  lbu          a0, 7(a6)
                  lb           s4, 7(tp)
                  sh           t0, -2(s10)
                  lb           s4, 54(a6)
                  sb           sp, 171(sp)
                  sh           s2, 17(tp)
                  lb           s3, -35(tp)
                  lh           a7, 144(sp)
                  lb           s6, -3(s10)
                  lw           t0, -23(tp)
                  lbu          s2, -3(s10) #end load_store_instr_stream_1
                  lb           a2, -118(sp)
                  lbu          a7, 5(tp)
                  lhu          zero, 59(a6)
                  sb           ra, 90(sp) #end load_store_instr_stream_2
                  lb           gp, -44(tp)
                  lw           ra, -5(a6) #end load_store_instr_stream_3
                  sh           s9, 43(tp)
                  sb           s0, 28(tp) #end load_store_instr_stream_0
                  la           s6, region_1+1457 #start riscv_load_store_hazard_instr_stream_0
                  lbu          s8, -3(s6)
                  lb           s9, 11(s6)
                  sb           a5, 0(s6)
                  lb           a5, 0(s6)
                  lb           s0, 6(s6)
                  auipc        tp, 647651
                  lbu          s4, 6(s6)
                  lbu          t1, 6(s6)
                  lbu          s2, -14(s6)
                  lh           t4, -7(s6)
                  sb           s10, -16(s6)
                  lbu          s11, -10(s6) #end riscv_load_store_hazard_instr_stream_0
                  la           a5, region_0+635 #start riscv_load_store_rand_instr_stream_4
                  and          a0, tp, t5
                  lb           s8, 29(a5)
                  sh           s4, -43(a5)
                  sub          s1, a0, a1
                  andi         sp, a0, 789
                  slt          s2, ra, s5
                  srli         t1, s9, 27
                  lb           s8, -26(a5)
                  sb           s11, -46(a5)
                  sh           t0, -63(a5)
                  lb           tp, 32(a5)
                  sh           sp, 53(a5)
                  lbu          s8, -42(a5)
                  lbu          t2, 44(a5)
                  auipc        t2, 249515
                  sltiu        t6, s3, -1751
                  ori          s0, t1, 1182
                  srai         s4, s2, 31
                  lh           ra, 31(a5)
                  sh           s9, -15(a5)
                  sh           s4, -1(a5)
                  sb           s2, -52(a5)
                  addi         s1, s2, 1204
                  sb           s5, -56(a5)
                  lbu          zero, -18(a5)
                  ori          s1, t5, 315
                  lb           gp, 4(a5)
                  sb           a6, 5(a5)
                  sb           t1, -24(a5)
                  lb           s4, 54(a5)
                  slli         a6, s7, 2
                  auipc        s3, 986645
                  lb           s9, -17(a5)
                  lhu          s1, -39(a5)
                  lbu          ra, 58(a5)
                  sb           t2, 51(a5)
                  add          ra, a2, s1
                  addi         t3, t1, -1827
                  lh           a3, 1(a5)
                  lb           a4, 54(a5)
                  sb           sp, 52(a5)
                  lbu          t4, 50(a5)
                  sb           s2, -59(a5)
                  xori         t6, t2, 34
                  sw           s9, 33(a5)
                  lhu          a0, -61(a5) #end riscv_load_store_rand_instr_stream_4
                  la           s2, region_1+1984 #start load_store_instr_stream_0
                  la           s6, region_1+569 #start load_store_instr_stream_2
                  sb           s1, -31(s2)
                  lh           a2, -41(s6)
                  la           s8, region_1+591 #start load_store_instr_stream_3
                  sh           a3, -18(s2)
                  lh           t3, -5(s6)
                  sb           s1, 922(s8)
                  la           a7, region_1+1747 #start load_store_instr_stream_4
                  lh           a0, 43(a7)
                  la           ra, region_1+597 #start load_store_instr_stream_1
                  lbu          a6, -19(s2)
                  lb           s0, 918(s8)
                  lhu          t4, -51(s6)
                  lbu          t4, 9(s2)
                  sb           t3, 43(a7)
                  lbu          sp, 3(ra)
                  lhu          a2, 57(ra)
                  lbu          zero, 474(s8)
                  lbu          zero, -50(s6)
                  lhu          t2, -2(s2)
                  lbu          s10, 1313(s8)
                  sh           t2, -43(ra)
                  lbu          a2, -399(s8)
                  lb           t6, 18(a7)
                  sb           t6, 64(s6)
                  lb           s11, 682(s8)
                  lb           s9, 9(s2)
                  sb           a0, -64(s6)
                  lb           s11, -30(s2)
                  sh           a7, 11(a7)
                  lb           s11, 272(s8)
                  sh           tp, -21(s6)
                  sh           a2, -441(s8)
                  lbu          a3, 46(ra)
                  lhu          t4, -30(s2)
                  lbu          s1, -44(ra)
                  sb           gp, -3(s6) #end load_store_instr_stream_2
                  lb           s11, -45(ra) #end load_store_instr_stream_1
                  sb           a6, -59(a7) #end load_store_instr_stream_4
                  sb           t4, 1394(s8) #end load_store_instr_stream_3
                  sb           a1, -11(s2) #end load_store_instr_stream_0
                  la           a6, region_1+951 #start load_store_instr_stream_1
                  la           a7, region_1+404 #start load_store_instr_stream_2
                  la           a5, region_1+1757 #start load_store_instr_stream_0
                  lbu          a4, -256(a6)
                  lbu          s1, -50(a7)
                  lbu          a4, -258(a5)
                  sb           s11, -168(a6)
                  sb           s3, -715(a5)
                  sw           gp, 41(a6)
                  lw           t0, -28(a7)
                  sh           s9, -191(a6)
                  lb           s4, -1291(a5)
                  lh           s1, 24(a7)
                  lbu          zero, 236(a5)
                  sw           a5, -8(a7)
                  sb           s11, -23(a7) #end load_store_instr_stream_2
                  lbu          ra, -210(a6)
                  sb           t4, -141(a6) #end load_store_instr_stream_1
                  lb           a3, -355(a5) #end load_store_instr_stream_0
                  la           sp, region_0+1154 #start riscv_load_store_rand_instr_stream_0
                  sb           s9, -12(sp)
                  lui          tp, 391987
                  srli         a5, tp, 0
                  lw           t4, 242(sp)
                  sb           s8, 146(sp)
                  srl          s9, a4, s8
                  lbu          a6, -191(sp)
                  lb           s9, 153(sp)
                  sb           s8, 127(sp)
                  andi         a4, s8, 511
                  sra          t2, t6, t1
                  slt          s8, sp, t6
                  lb           s10, -7(sp)
                  slt          t4, a6, a3
                  sltiu        t2, s9, -1649
                  andi         a6, gp, -1027
                  lb           t2, -224(sp)
                  lb           t5, -138(sp)
                  add          s9, gp, s2
                  sll          t0, s11, t6
                  addi         a7, tp, -1346
                  lb           s10, 21(sp)
                  add          s3, sp, sp
                  lb           t6, -88(sp)
                  auipc        s0, 27151
                  sltiu        s4, s1, 1765
                  sll          a2, t3, s10
                  sb           a1, -171(sp)
                  sb           gp, -187(sp)
                  sll          gp, gp, s0
                  sh           s5, -22(sp)
                  xor          a3, s2, s6
                  lh           a4, 204(sp)
                  sra          gp, gp, t0
                  sra          s9, t5, s0
                  sh           s6, 28(sp) #end riscv_load_store_rand_instr_stream_0
                  slti         s4, t4, 1939
                  sub          t3, s9, s4
                  beq          s5, a2, 15f
                  andi         s11, a7, -177
                  slti         gp, t5, -50
                  auipc        sp, 183137
                  srli         t6, a2, 11
                  beq          s8, ra, 13f
                  bgeu         s0, t3, 14f
                  xori         s11, s10, -1347
                  slti         s4, s3, 215
                  sra          t2, ra, s4
                  auipc        ra, 809668
13:               add          s6, s9, s8
14:               slti         s3, a2, 1805
15:               srl          t3, s1, t6
                  srl          t4, s4, s6
                  srli         t2, a4, 3
                  srl          s11, a7, s2
                  xori         s11, s7, 140
                  slti         s8, s6, -1321
                  sll          ra, a6, zero
                  xori         s3, gp, -1978
                  bne          t5, a6, 41f
                  sltu         t1, t4, gp
                  bne          t6, s8, 28f
                  sub          s6, s2, s6
                  add          s3, gp, s9
28:               slli         tp, a6, 2
                  srl          t3, s10, a6
                  ori          ra, sp, 899
                  slt          t2, t0, ra
                  xor          t6, gp, a6
                  sltu         s1, t4, t3
                  bne          t3, a7, 40f
                  bne          a6, zero, 49f
                  bgeu         s10, a3, 50f
                  bge          a7, s0, 52f
                  addi         s1, t1, 1008
                  slt          a7, t4, a5
40:               blt          a7, s10, 58f
41:               lui          s4, 347529
                  bltu         a7, gp, 45f
                  bgeu         s5, s11, 53f
                  nop
45:               auipc        s0, 278771
                  add          t5, t1, t4
                  auipc        t4, 659995
                  bge          s2, s6, 68f
49:               xor          tp, t6, s6
50:               bgeu         s2, s0, 66f
                  beq          s0, a5, 58f
52:               auipc        tp, 30672
53:               sltiu        s11, s8, 1502
                  bgeu         a2, s7, 63f
                  add          t3, s10, sp
                  add          s8, a5, s1
                  srl          s2, t2, s0
58:               slt          t1, a0, t4
                  srl          t6, zero, a2
                  xori         t6, a2, 783
                  slli         s9, zero, 26
                  sltu         s8, s6, a5
63:               xori         t5, s2, -1869
                  sltiu        t0, s6, -770
                  sll          s8, a5, a0
66:               addi         tp, t3, 1580
                  sra          t6, t1, s4
68:               sra          t6, a5, ra
                  add          t0, s5, s3
                  or           t6, s8, t4
                  or           t0, a6, a6
                  andi         t0, a3, -1387
                  sltu         a5, zero, s9
                  or           a2, t4, tp
                  beq          a7, t5, 79f
                  xor          sp, s2, a5
                  bge          a1, t1, 83f
                  lui          t4, 251946
79:               sra          s3, a6, t1
                  srai         s0, t0, 30
                  bne          ra, t5, 94f
                  bltu         t1, s0, 96f
83:               sltu         sp, a0, s4
                  bltu         a2, s3, 100f
                  ori          tp, a4, -347
                  sll          a2, a5, s3
                  auipc        a3, 808769
                  blt          a2, a2, 107f
                  andi         t4, gp, 317
                  slt          t3, tp, s5
                  and          s11, t2, t2
                  andi         s9, zero, 1209
                  bltu         a2, a0, 112f
94:               sltu         zero, s11, s10
                  andi         a4, s0, -455
96:               slti         s8, zero, 1829
                  lui          s6, 383759
                  andi         a7, s11, -1095
                  slti         a5, zero, -1894
100:              sra          ra, a3, sp
                  add          s4, t2, s7
                  and          t0, s3, t2
                  add          t2, tp, s5
                  ori          s6, s7, 625
                  srl          a0, zero, a1
                  sltiu        zero, t6, 1935
107:              sltu         a0, gp, t5
                  andi         t4, t3, -32
                  sltu         tp, a1, t4
                  xor          t0, a7, t3
                  addi         a5, s9, -841
112:              andi         a5, t6, 1888
                  sltiu        t3, a0, 38
                  sltu         a0, a4, a1
                  bgeu         t4, s1, 132f
                  sll          s6, s8, a2
                  xor          s1, s10, a0
                  srl          t5, s11, s4
                  slti         a7, s1, -1802
                  andi         t5, s2, -1965
                  sll          a6, t0, s3
                  or           a4, sp, tp
                  srli         a2, s0, 19
                  sltiu        a2, t4, -979
                  slli         t1, t2, 7
                  add          a0, tp, s7
                  and          s10, t5, ra
                  and          zero, s1, t5
                  sltu         gp, a0, a3
                  xor          a0, s6, a7
                  or           s4, s2, a4
132:              slli         t6, s2, 3
                  slti         t0, s5, 300
                  xor          a5, a6, zero
                  andi         t4, sp, 1962
                  sltiu        s4, s4, 997
                  ori          zero, a0, -20
                  addi         s8, a6, 151
                  slti         s10, gp, 1175
                  bne          a4, s9, 154f
                  bgeu         t1, a4, 145f
                  lui          gp, 495953
                  xori         a4, t4, -1372
                  ori          ra, t0, -551
145:              nop
                  srl          s2, a2, a1
                  or           sp, t4, gp
                  slti         s8, s7, 624
                  bne          s10, s5, 158f
                  ori          t5, s7, -235
                  lui          t1, 940085
                  bltu         a1, t2, 161f
                  add          sp, a0, t2
154:              xor          t6, s10, gp
                  andi         a6, s8, 1020
                  auipc        s2, 607168
                  slli         ra, t5, 26
158:              sra          zero, t0, a7
                  ori          t5, t3, -1616
                  srli         s1, s3, 7
161:              or           t0, sp, s4
                  srli         t0, t4, 8
                  lui          a2, 927779
                  bgeu         a4, zero, 175f
                  add          s8, zero, s8
                  srai         a2, s1, 21
                  add          ra, t3, s11
                  bge          t1, s4, 181f
                  sub          a4, gp, a0
                  sltu         t3, s11, s10
                  xori         s9, ra, -1308
                  bltu         s0, a6, 190f
                  slt          a5, a4, a0
                  lui          s2, 676631
175:              sra          a6, s11, a3
                  srai         sp, s5, 12
                  beq          s10, s7, 181f
                  addi         t1, tp, -606
                  srl          s10, t1, s2
                  srl          s2, ra, s8
181:              nop
                  beq          s6, t4, 201f
                  slt          a4, s2, a0
                  xori         sp, a4, 1861
                  bgeu         s6, s7, 198f
                  blt          s0, a7, 195f
                  sltiu        t1, a3, 158
                  xori         zero, a3, -133
                  and          s2, s9, s6
190:              bgeu         s7, gp, 193f
                  xor          tp, s0, ra
                  auipc        a4, 436041
193:              sltu         sp, s9, ra
                  slt          t6, s4, s6
195:              srai         t1, s7, 22
                  sll          s6, s1, zero
                  sra          a7, a2, a1
198:              sub          t4, s5, s4
                  lui          s0, 580740
                  sltu         a2, s4, s1
201:              xor          s3, sp, a3
                  bne          s0, a0, 212f
                  blt          zero, s4, 219f
                  sltu         s0, s8, a2
                  bltu         s8, t1, 219f
                  xori         t0, s2, 952
                  sltu         ra, t6, zero
                  sra          t3, a2, t6
                  slti         s9, a6, 1311
                  and          gp, a0, a7
                  ori          t2, a2, 762
212:              srai         t1, t0, 23
                  srl          a2, t3, tp
                  bge          a4, a3, 227f
                  slti         a3, sp, -1942
                  add          s9, s5, s7
                  xori         t6, t0, -2005
                  srai         zero, a7, 27
219:              lui          s3, 995477
                  and          t0, t1, s7
                  sra          s11, s10, t5
                  auipc        t3, 547060
                  sltu         s0, s4, s2
                  sra          s0, t2, s8
                  xor          a2, s1, s8
                  slli         s2, s5, 24
227:              slli         t1, t4, 6
                  nop
                  add          t6, s6, t6
                  sub          a3, t6, s5
                  andi         gp, t1, -602
                  xori         gp, a5, 146
                  or           a0, sp, tp
                  beq          t6, s4, 249f
                  nop
                  bltu         t2, s10, 242f
                  nop
                  xor          tp, a1, s9
                  srli         t4, s3, 7
                  sub          t3, tp, sp
                  sltu         gp, t5, ra
242:              sub          a6, t4, t1
                  sll          a3, a6, s4
                  bltu         s4, gp, 257f
                  nop
                  bne          s6, s6, 260f
                  xori         a0, a2, 1278
                  sra          s10, a4, s0
249:              xor          s6, s0, s1
                  bltu         t2, a7, 254f
                  or           a2, s5, a7
                  srl          s2, s6, a4
                  sra          t1, a3, a2
254:              srl          s9, s4, gp
                  xor          s6, a1, a1
                  nop
257:              sll          a5, gp, a4
                  sub          a5, s4, s5
                  slti         s3, s4, -1836
260:              slt          a2, s7, zero
                  beq          t1, t5, 270f
                  and          a5, gp, t2
                  sltiu        s8, a3, -1521
                  sub          sp, a7, s7
                  srli         a0, a7, 1
                  slti         s2, t4, 1977
                  ori          t2, ra, 1334
                  sltiu        s0, a5, -1195
                  auipc        t6, 827286
270:              bne          s2, s8, 281f
                  xori         t1, s10, -1738
                  bgeu         t3, s6, 289f
                  addi         s2, t2, -1858
                  and          s9, t0, t1
                  slli         s0, t3, 26
                  bgeu         zero, sp, 290f
                  slli         s3, t1, 2
                  bne          s4, t5, 294f
                  add          t0, a2, s8
                  lui          s2, 677569
281:              slli         a0, t3, 10
                  and          a5, zero, s6
                  sll          s9, s10, s0
                  sltu         a5, a2, t4
                  sltiu        s1, s6, 1877
                  andi         gp, s2, 1771
                  bgeu         a3, a7, 293f
                  beq          s1, s3, 294f
289:              srai         a4, zero, 26
290:              lui          a2, 756273
                  bgeu         s1, a1, 297f
                  sltu         t2, sp, s5
293:              auipc        s8, 559372
294:              ori          a0, a3, 751
                  auipc        t4, 947450
                  sll          a5, s0, s2
297:              nop
                  addi         tp, a7, -1361
                  sltu         a0, t4, s6
                  xori         gp, a4, 1467
                  srai         s9, t1, 11
                  xor          s10, a0, a7
                  xori         s6, s8, -324
                  sltu         t5, a5, s10
                  xori         ra, t4, 1263
                  sltiu        t5, zero, -1229
                  xori         s0, s9, 1848
                  sll          t4, s9, t4
                  and          zero, s5, a5
                  auipc        s8, 592051
                  bltu         s11, s2, 325f
                  addi         t6, a4, 575
                  lui          s2, 296100
                  sra          sp, zero, s8
                  slli         s4, tp, 19
                  bltu         s0, s7, 336f
                  lui          a2, 516675
                  sub          sp, s7, a2
                  sra          s8, tp, s9
                  ori          a7, zero, 1339
                  nop
                  srli         t2, s9, 8
                  slti         ra, s2, -1892
                  beq          t3, a7, 343f
325:              or           s1, tp, tp
                  xor          t6, s5, s10
                  or           s3, s7, s8
                  addi         t2, gp, 1781
                  srli         t4, s3, 5
                  bge          t6, a5, 337f
                  nop
                  and          t6, s11, s9
                  bne          a7, s11, 336f
                  addi         a2, a2, 428
                  add          t2, zero, t4
336:              slt          sp, t1, a3
337:              slli         a2, a5, 24
                  bne          a7, a7, 356f
                  andi         s4, a6, 1660
                  sll          t2, s7, s11
                  srl          ra, t4, a5
                  bne          t0, t4, 351f
343:              sra          sp, s11, s0
                  slti         tp, s3, 1927
                  bltu         tp, a0, 362f
                  slt          s2, gp, a0
                  xori         t5, t6, 973
                  slt          s11, t2, s0
                  slti         zero, t1, -8
                  lui          zero, 879990
351:              slti         t0, a5, -2023
                  sltiu        s9, a1, 1461
                  add          t3, s0, a3
                  lui          s9, 867479
                  bge          t0, s7, 371f
356:              sll          s6, a5, s10
                  sub          s3, ra, s8
                  andi         t0, s10, -1571
                  sub          a0, ra, t3
                  srli         s6, s7, 20
                  beq          t1, a4, 364f
362:              slt          s2, s0, a6
                  slt          a7, t0, s11
364:              srl          t1, t1, s6
                  slli         zero, gp, 15
                  nop
                  blt          t3, s0, 370f
                  sra          s9, gp, sp
                  slli         sp, a5, 10
370:              add          t0, a3, a2
371:              andi         a6, s7, -1218
                  la           t2, region_1+1308 #start riscv_load_store_rand_instr_stream_1
                  srai         s3, s2, 20
                  lui          t6, 659972
                  andi         gp, zero, -1691
                  srl          a0, s4, s1
                  sll          tp, a0, zero
                  sb           s4, 14(t2)
                  sb           s8, -11(t2)
                  addi         a0, a1, -1379
                  lb           s1, 16(t2)
                  sll          s4, t1, tp
                  sll          s3, gp, a0
                  lb           tp, -6(t2)
                  lhu          t6, 0(t2)
                  slt          a5, s11, a2
                  sltu         a4, s1, s8
                  lbu          t6, 13(t2)
                  sltu         s11, a6, s7
                  xori         s3, a5, 1700
                  ori          s6, gp, -867
                  slti         a3, a5, -336
                  sb           a6, -8(t2)
                  and          t4, s5, a2
                  or           a2, gp, a6
                  xor          sp, t4, a5
                  nop
                  lh           s11, -6(t2)
                  nop
                  sh           a1, -10(t2)
                  srl          s8, a6, s10
                  lb           gp, 15(t2)
                  srai         a0, s2, 25
                  xori         ra, ra, 1185
                  nop
                  add          s11, gp, s4
                  sb           ra, 14(t2)
                  xor          tp, s8, s1
                  srli         t3, a5, 31
                  nop
                  lbu          a0, -9(t2)
                  lb           a2, -14(t2)
                  sub          sp, s8, s6
                  sltu         t0, s7, t1
                  sb           tp, -7(t2) #end riscv_load_store_rand_instr_stream_1
                  srl          zero, gp, s7
                  xori         a5, a6, 1047
                  slt          s4, s8, a7
                  srl          s6, t0, a0
                  slli         t4, a1, 11
                  and          s4, t0, zero
                  slti         gp, s7, 155
                  addi         s11, a5, -368
                  slti         t2, s10, -40
                  srli         a4, s2, 6
                  and          t4, tp, a3
                  xori         a7, sp, -1265
                  addi         t1, s10, -2012
                  addi         s10, t5, -659
                  srai         s10, a5, 4
                  srai         a5, a6, 18
                  slti         t1, a0, -1420
                  sltu         t3, a0, a6
                  bgeu         a6, s11, 409f
                  or           t1, s5, tp
                  bne          a7, zero, 405f
                  beq          s9, s2, 397f
                  nop
                  slt          s3, ra, s4
                  beq          sp, s4, 409f
397:              srai         ra, a0, 29
                  bltu         s2, a0, 404f
                  blt          s10, sp, 413f
                  lui          s10, 1045011
                  addi         s6, s5, -2038
                  or           a7, t5, s5
                  sub          s9, ra, s0
404:              slli         sp, a3, 22
405:              auipc        s9, 230740
                  srl          s2, t2, tp
                  addi         a0, s10, 768
                  slt          t1, s8, s0
409:              bgeu         t5, s1, 415f
                  nop
                  beq          t6, a7, 420f
                  sub          a4, a0, s4
413:              sltiu        t3, s7, -601
                  slli         s3, s11, 22
415:              slli         t4, ra, 10
                  sll          s6, a0, a7
                  nop
                  srl          t4, s5, a6
                  srl          a4, a3, s8
420:              bge          t6, t2, 439f
                  sltu         a2, s11, s8
                  or           s10, a3, t5
                  or           a2, ra, s8
                  xor          t5, a7, a1
                  auipc        gp, 475050
                  beq          s11, a0, 440f
                  xori         s6, a5, -1441
                  add          s10, t3, a1
                  nop
                  bge          s11, a6, 445f
                  or           s0, sp, s4
                  addi         tp, zero, 1594
                  srli         s4, t1, 6
                  sub          s6, t0, a1
                  srl          a4, a3, a3
                  ori          zero, t0, -600
                  xor          t5, s5, a4
                  ori          s3, s5, 1312
439:              bge          s6, a4, 453f
440:              bltu         t1, s1, 458f
                  sltu         s1, a1, s4
                  xori         s0, s7, 163
                  slti         a7, t6, 1608
                  bgeu         s11, s0, 451f
445:              and          zero, s3, s10
                  ori          a3, zero, 1134
                  add          t1, a0, a7
                  xori         a0, a3, 454
                  srli         t6, tp, 1
                  nop
451:              or           s0, a2, a3
                  sltu         s1, s7, sp
453:              sra          s10, t0, s6
                  beq          s8, t4, 467f
                  srai         t4, s3, 20
                  lui          s2, 836515
                  blt          gp, t5, 475f
458:              sub          t6, tp, a1
                  sra          s2, t1, zero
                  bgeu         s10, a7, 466f
                  srai         a2, s0, 1
                  bne          t3, s5, 472f
                  xori         tp, t3, -1511
                  andi         s9, zero, 556
                  beq          s8, s5, 471f
466:              lui          a4, 425610
467:              bne          s8, a6, 476f
                  slt          gp, s5, t0
                  srl          t1, a3, tp
                  bltu         zero, sp, 484f
471:              addi         s6, a7, 279
472:              sra          gp, s9, s2
                  xori         s0, s10, -1038
                  srai         t6, t3, 23
475:              nop
476:              bne          t1, t3, 496f
                  sltu         t5, s7, s11
                  andi         a6, a6, -901
                  srli         sp, s8, 20
                  la           t5, region_0+1211 #start riscv_load_store_hazard_instr_stream_2
                  sub          t3, s3, a6
                  lb           t0, 136(t5)
                  lb           a3, 136(t5)
                  lb           a6, 136(t5)
                  srai         zero, t4, 27
                  lw           tp, 385(t5)
                  sh           a7, -705(t5)
                  lbu          a2, -705(t5)
                  lb           t0, -705(t5)
                  sb           s9, -705(t5)
                  sub          tp, s1, s2
                  sb           a2, -705(t5)
                  lh           t3, -705(t5)
                  sb           a5, -705(t5)
                  lb           a0, -705(t5)
                  lbu          ra, -705(t5) #end riscv_load_store_hazard_instr_stream_2
                  xor          s1, a5, a2
                  sltiu        s9, s10, 1499
                  sltiu        t2, s4, 2016
                  andi         t4, a2, -262
484:              srli         tp, a5, 30
                  srli         t5, t6, 30
                  nop
                  bltu         t6, t0, 491f
                  blt          s8, a0, 497f
                  xor          s6, t5, zero
                  xori         s9, s10, 1006
491:              slti         a5, s8, 418
                  sltu         ra, gp, s10
                  sll          a0, s7, t3
                  beq          s6, s4, 508f
                  srai         s2, a2, 22
496:              or           a0, sp, s3
497:              bltu         a5, s5, 508f
                  beq          s3, t3, 508f
                  auipc        s6, 209339
                  slti         zero, s8, -1446
                  auipc        t6, 8983
                  sll          s4, a2, s8
                  sltu         s8, s8, s9
                  srl          s9, a0, s8
                  sll          s11, a7, s10
                  or           a7, sp, s0
                  bltu         s11, s0, 508f
508:              addi         t2, tp, 481
                  or           a6, a7, s2
                  srli         t5, a4, 4
                  sltu         s2, t4, t1
                  addi         s2, s5, -777
                  lw           ra, 4(a1)
                  srli         t4, zero, 13
                  sll          sp, a3, a3
                  addi         a1, a1, 28
                  auipc        t4, 181691
                  slli         a6, gp, 6
                  lui          sp, 492907
987:              addi x16, x1, 0
987:              jalr x16, x16, 0
sub_1:            bgeu         t6, t5, sub_1_stack_p
                  and          s6, a7, s1
                  ori          s8, s4, 222
sub_1_stack_p:    addi         a1, a1, -24
                  or           a6, s7, zero
                  nop
                  sw           ra, 4(a1)
                  sltu         t3, s0, t3
                  xori         zero, t4, 479
                  slt          a7, s8, a3
                  sra          sp, ra, a4
                  sltiu        t6, a5, 963
                  bne          gp, t6, sub_1_j3 #branch to jump instr
                  add          a0, t5, t3
                  or           a4, s7, gp
                  and          s3, t2, a7
                  add          a5, t2, t1
                  nop
sub_1_j3:         jal          ra, sub_2 #jump sub_1 -> sub_2
                  la           s8, sub_2
                  sltiu        sp, s5, -1177
                  or           sp, s11, a3
                  andi         ra, t1, -301
                  nop
                  addi         s8, s8, -831
                  sltiu        a3, a3, -1547
                  sub          a5, a4, a0
                  sra          t3, s5, a6
                  bge          a2, t5, sub_1_j4 #branch to jump instr
                  sltu         s6, a6, ra
sub_1_j4:         jalr         ra, s8, 831 #jump sub_1 -> sub_2
                  la           ra, region_1+381 #start load_store_instr_stream_1
                  la           a6, region_1+1292 #start load_store_instr_stream_2
                  la           a2, region_1+1419 #start load_store_instr_stream_0
                  lw           gp, 7(ra)
                  sh           a5, -58(a6)
                  lbu          a7, 14(ra)
                  la           t0, region_1+1240 #start load_store_instr_stream_3
                  lb           a7, -101(a6)
                  lb           s8, -161(t0)
                  sb           gp, 31(a6)
                  lbu          s1, 33(a2)
                  lb           s4, -937(t0)
                  lb           t5, -139(a6)
                  sw           gp, 752(t0)
                  sb           s3, -15(ra)
                  sb           t0, 69(t0)
                  lb           gp, -38(a2)
                  lb           t1, -14(ra)
                  sb           a0, -222(t0)
                  lhu          s6, -602(t0)
                  lb           t4, 120(a6)
                  sh           t1, 27(a2)
                  lbu          s2, -16(ra)
                  sw           a3, -9(ra)
                  lb           s3, -2(ra)
                  sb           zero, -30(a2)
                  lh           gp, 392(t0)
                  lbu          s6, 157(a6)
                  lb           s8, -51(a6) #end load_store_instr_stream_2
                  lbu          s3, 709(t0) #end load_store_instr_stream_3
                  sb           t6, -8(ra) #end load_store_instr_stream_1
                  lbu          a0, 16(a2)
                  lb           s11, 21(a2) #end load_store_instr_stream_0
                  la           sp, region_0+1016 #start riscv_load_store_hazard_instr_stream_0
                  lb           t3, 13(sp)
                  or           ra, s4, a4
                  lbu          a5, 15(sp)
                  lbu          a4, 15(sp)
                  sb           s10, -5(sp)
                  lb           t4, -13(sp)
                  sh           sp, 6(sp)
                  addi         s1, s0, 1499
                  lhu          s9, 14(sp)
                  auipc        s1, 837385
                  sh           s1, -2(sp)
                  lh           t4, 10(sp)
                  lb           a7, 5(sp)
                  and          a5, a7, a1
                  lbu          s8, 14(sp)
                  sh           a1, 14(sp)
                  lbu          t3, -9(sp) #end riscv_load_store_hazard_instr_stream_0
                  la           s2, region_0+1640 #start riscv_load_store_rand_instr_stream_0
                  sltu         s8, t3, a2
                  and          a3, t0, s8
                  and          a4, sp, s9
                  lui          a7, 48349
                  sltu         s0, s8, s5
                  srli         t5, s4, 19
                  lb           ra, 162(s2)
                  slt          t6, a5, a5
                  addi         t6, s5, 1022
                  srli         s4, t0, 15
                  xori         t0, s8, -988
                  lb           a5, 222(s2)
                  or           a7, t4, zero
                  lb           s3, -19(s2)
                  srli         s4, gp, 5
                  sra          s10, s2, a1
                  sra          a5, s8, s10
                  lb           tp, 34(s2)
                  andi         a2, s0, 1628
                  ori          gp, t5, 1296
                  add          t2, a7, s2
                  and          s3, s5, a3
                  and          tp, a5, t0
                  add          s11, s11, a6
                  sb           a5, 239(s2)
                  lbu          t2, -124(s2)
                  srl          t6, t6, s11
                  xori         a6, s5, 1405
                  lb           s6, -168(s2)
                  nop
                  srl          t4, t2, s0
                  lbu          gp, -233(s2)
                  lui          a0, 80543
                  slti         s4, t0, 2043
                  sh           t5, 224(s2)
                  lh           s6, -176(s2)
                  lw           s4, -212(s2)
                  lh           t5, 114(s2)
                  sb           a3, 210(s2)
                  sb           s3, -63(s2)
                  or           t0, a4, s6
                  sra          t3, s0, a4
                  lui          s11, 974523
                  sb           gp, -73(s2) #end riscv_load_store_rand_instr_stream_0
                  nop
                  srli         s0, a0, 11
                  xori         ra, t6, -1213
                  xori         a5, a0, -1562
                  lui          zero, 952381
                  srl          t2, a6, ra
                  ori          s6, s6, 346
                  ori          t1, a2, 88
                  xor          a5, s2, s4
                  sltiu        s11, t0, 861
                  addi         a0, tp, 1479
                  or           ra, s3, a0
                  sra          t1, s1, a4
                  srli         s3, sp, 7
                  ori          zero, s2, -1702
                  bltu         gp, s8, 17f
                  nop
17:               slti         s9, t2, 2028
                  slt          a5, s8, a7
                  srai         a3, t5, 3
                  sra          t5, a4, sp
                  slti         s2, a5, 430
                  ori          s0, s10, 868
                  lui          t2, 339955
                  slti         s1, s6, -985
                  bge          tp, a1, 37f
                  and          t5, a2, a7
                  lui          t3, 780524
                  lui          t4, 271128
                  lui          zero, 872096
                  addi         a6, s2, -1636
                  auipc        a7, 627542
                  bge          a6, a4, 46f
                  sra          sp, t0, s4
                  bne          t3, s7, 52f
                  andi         t6, ra, -546
                  srl          s9, a7, tp
37:               sub          s1, s0, t1
                  beq          a4, a6, 53f
                  auipc        a2, 800277
                  slti         t5, s4, -53
                  slli         t4, s11, 19
                  bge          ra, t4, 58f
                  blt          zero, a3, 49f
                  nop
                  lui          a7, 410936
46:               auipc        zero, 118171
                  sll          t5, t6, s7
                  addi         t3, s1, 12
49:               bgeu         t1, s7, 57f
                  add          t6, sp, a2
                  nop
52:               slli         ra, a4, 1
53:               beq          s1, s9, 62f
                  srai         a7, a6, 29
                  slti         s3, a4, -1722
                  and          a7, t1, a6
57:               sub          t0, s8, tp
58:               sltiu        s9, a6, 431
                  bge          s2, a1, 61f
                  slti         a2, s9, 855
61:               bne          ra, s4, 79f
62:               bge          t4, gp, 77f
                  bge          s5, gp, 73f
                  slt          zero, s5, a7
                  xori         t1, a7, -691
                  sll          t5, zero, a4
                  ori          s6, s0, 1252
                  nop
                  blt          s4, sp, 87f
                  lui          s11, 471709
                  slti         s10, a7, -833
                  sra          s2, a2, s1
73:               lui          gp, 547764
                  sll          a2, a0, t0
                  srai         tp, s9, 13
                  beq          a7, sp, 96f
77:               xori         a4, s9, 1519
                  slt          a7, a6, s10
79:               srli         a5, s0, 2
                  bne          t1, ra, 94f
                  srl          t5, a0, gp
                  bne          s6, s0, 95f
                  xori         s10, s4, -848
                  bge          s6, s6, 85f
85:               ori          a4, a5, -1511
                  slt          ra, t5, tp
87:               sltu         a0, s6, t5
                  lui          a2, 911965
                  xori         s6, t6, 803
                  srli         s11, ra, 9
                  andi         a6, a7, -2038
                  addi         tp, s9, -1116
                  srai         tp, t5, 28
94:               or           zero, ra, s10
95:               and          s6, gp, s2
96:               slli         a2, t0, 4
                  bltu         s8, ra, 111f
                  andi         s9, s0, 186
                  add          t2, sp, ra
                  sra          a7, sp, gp
                  slt          t5, s3, t6
                  slti         zero, t3, 319
                  nop
                  nop
                  sub          t0, t0, ra
                  sub          t3, s4, t0
                  nop
                  andi         t6, a2, -930
                  srl          a7, s1, t3
                  bltu         sp, gp, 117f
111:              or           s11, a7, s2
                  auipc        zero, 446727
                  or           a6, a3, a6
                  sra          zero, s3, s4
                  slti         ra, ra, -1217
                  bne          sp, s3, 123f
117:              slti         a7, zero, -2011
                  srl          t1, gp, gp
                  or           t6, ra, a4
                  srli         t2, s4, 22
                  slli         a6, t6, 26
                  sub          ra, s5, s8
123:              sltu         s6, s6, s1
                  and          a3, s3, a1
                  xori         s2, s0, 456
                  add          s1, s8, s9
                  lui          s4, 519262
                  srl          s6, a4, t5
                  slli         sp, s9, 3
                  lui          s1, 304878
                  sll          s6, s3, s0
                  and          gp, a3, a3
                  sltu         s9, t4, a6
                  lw           ra, 4(a1)
                  ori          tp, s8, -861
                  srli         s11, a3, 2
                  sltu         t6, a4, a1
                  xori         t6, s2, 658
                  slt          s6, gp, a4
                  addi         a1, a1, 24
                  nop
269:              addi x12, x1, 1
269:              jalr x12, x12, 0
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
                  addi x11, x11, -128
                  sw  x1, 4(x11)
                  sw  x2, 8(x11)
                  sw  x3, 12(x11)
                  sw  x4, 16(x11)
                  sw  x5, 20(x11)
                  sw  x6, 24(x11)
                  sw  x7, 28(x11)
                  sw  x8, 32(x11)
                  sw  x9, 36(x11)
                  sw  x10, 40(x11)
                  sw  x11, 44(x11)
                  sw  x12, 48(x11)
                  sw  x13, 52(x11)
                  sw  x14, 56(x11)
                  sw  x15, 60(x11)
                  sw  x16, 64(x11)
                  sw  x17, 68(x11)
                  sw  x18, 72(x11)
                  sw  x19, 76(x11)
                  sw  x20, 80(x11)
                  sw  x21, 84(x11)
                  sw  x22, 88(x11)
                  sw  x23, 92(x11)
                  sw  x24, 96(x11)
                  sw  x25, 100(x11)
                  sw  x26, 104(x11)
                  sw  x27, 108(x11)
                  sw  x28, 112(x11)
                  sw  x29, 116(x11)
                  sw  x30, 120(x11)
                  sw  x31, 124(x11)
                  add x21, x11, zero
                  csrr x30, 0x300 # MSTATUS
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 31
                  bne x30, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x30, 0x341 # MEPC
                  csrr x30, 0x342 # MCAUSE
                  li x14, 0x3 # BREAKPOINT
                  beq x30, x14, ebreak_handler
                  li x14, 0x8 # ECALL_UMODE
                  beq x30, x14, ecall_handler
                  li x14, 0x9 # ECALL_SMODE
                  beq x30, x14, ecall_handler
                  li x14, 0xb # ECALL_MMODE
                  beq x30, x14, ecall_handler
                  li x14, 0x1
                  beq x30, x14, instr_fault_handler
                  li x14, 0x5
                  beq x30, x14, load_fault_handler
                  li x14, 0x7
                  beq x30, x14, store_fault_handler
                  li x14, 0xc
                  beq x30, x14, pt_fault_handler
                  li x14, 0xd
                  beq x30, x14, pt_fault_handler
                  li x14, 0xf
                  beq x30, x14, pt_fault_handler
                  li x14, 0x2 # ILLEGAL_INSTRUCTION
                  beq x30, x14, illegal_instr_handler
                  csrr x14, 0x343 # MTVAL
                  1: la x23, test_done
                  jalr x1, x23, 0

ecall_handler:    
                  la x30, _start
                  sw x0, 0(x30)
                  sw x1, 4(x30)
                  sw x2, 8(x30)
                  sw x3, 12(x30)
                  sw x4, 16(x30)
                  sw x5, 20(x30)
                  sw x6, 24(x30)
                  sw x7, 28(x30)
                  sw x8, 32(x30)
                  sw x9, 36(x30)
                  sw x10, 40(x30)
                  sw x11, 44(x30)
                  sw x12, 48(x30)
                  sw x13, 52(x30)
                  sw x14, 56(x30)
                  sw x15, 60(x30)
                  sw x16, 64(x30)
                  sw x17, 68(x30)
                  sw x18, 72(x30)
                  sw x19, 76(x30)
                  sw x20, 80(x30)
                  sw x21, 84(x30)
                  sw x22, 88(x30)
                  sw x23, 92(x30)
                  sw x24, 96(x30)
                  sw x25, 100(x30)
                  sw x26, 104(x30)
                  sw x27, 108(x30)
                  sw x28, 112(x30)
                  sw x29, 116(x30)
                  sw x30, 120(x30)
                  sw x31, 124(x30)
                  la x23, write_tohost
                  jalr x0, x23, 0

instr_fault_handler:
                  add x11, x21, zero
                  lw  x1, 4(x11)
                  lw  x2, 8(x11)
                  lw  x3, 12(x11)
                  lw  x4, 16(x11)
                  lw  x5, 20(x11)
                  lw  x6, 24(x11)
                  lw  x7, 28(x11)
                  lw  x8, 32(x11)
                  lw  x9, 36(x11)
                  lw  x10, 40(x11)
                  lw  x11, 44(x11)
                  lw  x12, 48(x11)
                  lw  x13, 52(x11)
                  lw  x14, 56(x11)
                  lw  x15, 60(x11)
                  lw  x16, 64(x11)
                  lw  x17, 68(x11)
                  lw  x18, 72(x11)
                  lw  x19, 76(x11)
                  lw  x20, 80(x11)
                  lw  x21, 84(x11)
                  lw  x22, 88(x11)
                  lw  x23, 92(x11)
                  lw  x24, 96(x11)
                  lw  x25, 100(x11)
                  lw  x26, 104(x11)
                  lw  x27, 108(x11)
                  lw  x28, 112(x11)
                  lw  x29, 116(x11)
                  lw  x30, 120(x11)
                  lw  x31, 124(x11)
                  addi x11, x11, 128
                  mret

load_fault_handler:
                  add x11, x21, zero
                  lw  x1, 4(x11)
                  lw  x2, 8(x11)
                  lw  x3, 12(x11)
                  lw  x4, 16(x11)
                  lw  x5, 20(x11)
                  lw  x6, 24(x11)
                  lw  x7, 28(x11)
                  lw  x8, 32(x11)
                  lw  x9, 36(x11)
                  lw  x10, 40(x11)
                  lw  x11, 44(x11)
                  lw  x12, 48(x11)
                  lw  x13, 52(x11)
                  lw  x14, 56(x11)
                  lw  x15, 60(x11)
                  lw  x16, 64(x11)
                  lw  x17, 68(x11)
                  lw  x18, 72(x11)
                  lw  x19, 76(x11)
                  lw  x20, 80(x11)
                  lw  x21, 84(x11)
                  lw  x22, 88(x11)
                  lw  x23, 92(x11)
                  lw  x24, 96(x11)
                  lw  x25, 100(x11)
                  lw  x26, 104(x11)
                  lw  x27, 108(x11)
                  lw  x28, 112(x11)
                  lw  x29, 116(x11)
                  lw  x30, 120(x11)
                  lw  x31, 124(x11)
                  addi x11, x11, 128
                  mret

store_fault_handler:
                  add x11, x21, zero
                  lw  x1, 4(x11)
                  lw  x2, 8(x11)
                  lw  x3, 12(x11)
                  lw  x4, 16(x11)
                  lw  x5, 20(x11)
                  lw  x6, 24(x11)
                  lw  x7, 28(x11)
                  lw  x8, 32(x11)
                  lw  x9, 36(x11)
                  lw  x10, 40(x11)
                  lw  x11, 44(x11)
                  lw  x12, 48(x11)
                  lw  x13, 52(x11)
                  lw  x14, 56(x11)
                  lw  x15, 60(x11)
                  lw  x16, 64(x11)
                  lw  x17, 68(x11)
                  lw  x18, 72(x11)
                  lw  x19, 76(x11)
                  lw  x20, 80(x11)
                  lw  x21, 84(x11)
                  lw  x22, 88(x11)
                  lw  x23, 92(x11)
                  lw  x24, 96(x11)
                  lw  x25, 100(x11)
                  lw  x26, 104(x11)
                  lw  x27, 108(x11)
                  lw  x28, 112(x11)
                  lw  x29, 116(x11)
                  lw  x30, 120(x11)
                  lw  x31, 124(x11)
                  addi x11, x11, 128
                  mret

ebreak_handler:   
                  csrr  x30, 0x341
                  addi  x30, x30, 4
                  csrw  0x341, x30
                  add x11, x21, zero
                  lw  x1, 4(x11)
                  lw  x2, 8(x11)
                  lw  x3, 12(x11)
                  lw  x4, 16(x11)
                  lw  x5, 20(x11)
                  lw  x6, 24(x11)
                  lw  x7, 28(x11)
                  lw  x8, 32(x11)
                  lw  x9, 36(x11)
                  lw  x10, 40(x11)
                  lw  x11, 44(x11)
                  lw  x12, 48(x11)
                  lw  x13, 52(x11)
                  lw  x14, 56(x11)
                  lw  x15, 60(x11)
                  lw  x16, 64(x11)
                  lw  x17, 68(x11)
                  lw  x18, 72(x11)
                  lw  x19, 76(x11)
                  lw  x20, 80(x11)
                  lw  x21, 84(x11)
                  lw  x22, 88(x11)
                  lw  x23, 92(x11)
                  lw  x24, 96(x11)
                  lw  x25, 100(x11)
                  lw  x26, 104(x11)
                  lw  x27, 108(x11)
                  lw  x28, 112(x11)
                  lw  x29, 116(x11)
                  lw  x30, 120(x11)
                  lw  x31, 124(x11)
                  addi x11, x11, 128
                  mret

illegal_instr_handler:
                  csrr  x30, 0x341
                  addi  x30, x30, 4
                  csrw  0x341, x30
                  add x11, x21, zero
                  lw  x1, 4(x11)
                  lw  x2, 8(x11)
                  lw  x3, 12(x11)
                  lw  x4, 16(x11)
                  lw  x5, 20(x11)
                  lw  x6, 24(x11)
                  lw  x7, 28(x11)
                  lw  x8, 32(x11)
                  lw  x9, 36(x11)
                  lw  x10, 40(x11)
                  lw  x11, 44(x11)
                  lw  x12, 48(x11)
                  lw  x13, 52(x11)
                  lw  x14, 56(x11)
                  lw  x15, 60(x11)
                  lw  x16, 64(x11)
                  lw  x17, 68(x11)
                  lw  x18, 72(x11)
                  lw  x19, 76(x11)
                  lw  x20, 80(x11)
                  lw  x21, 84(x11)
                  lw  x22, 88(x11)
                  lw  x23, 92(x11)
                  lw  x24, 96(x11)
                  lw  x25, 100(x11)
                  lw  x26, 104(x11)
                  lw  x27, 108(x11)
                  lw  x28, 112(x11)
                  lw  x29, 116(x11)
                  lw  x30, 120(x11)
                  lw  x31, 124(x11)
                  addi x11, x11, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x30, 0x300 # MSTATUS;
                  csrr  x30, 0x304 # MIE;
                  csrr  x30, 0x344 # MIP;
                  csrrc x30, 0x344, x30 # MIP;
                  add x11, x21, zero
                  lw  x1, 4(x11)
                  lw  x2, 8(x11)
                  lw  x3, 12(x11)
                  lw  x4, 16(x11)
                  lw  x5, 20(x11)
                  lw  x6, 24(x11)
                  lw  x7, 28(x11)
                  lw  x8, 32(x11)
                  lw  x9, 36(x11)
                  lw  x10, 40(x11)
                  lw  x11, 44(x11)
                  lw  x12, 48(x11)
                  lw  x13, 52(x11)
                  lw  x14, 56(x11)
                  lw  x15, 60(x11)
                  lw  x16, 64(x11)
                  lw  x17, 68(x11)
                  lw  x18, 72(x11)
                  lw  x19, 76(x11)
                  lw  x20, 80(x11)
                  lw  x21, 84(x11)
                  lw  x22, 88(x11)
                  lw  x23, 92(x11)
                  lw  x24, 96(x11)
                  lw  x25, 100(x11)
                  lw  x26, 104(x11)
                  lw  x27, 108(x11)
                  lw  x28, 112(x11)
                  lw  x29, 116(x11)
                  lw  x30, 120(x11)
                  lw  x31, 124(x11)
                  addi x11, x11, 128
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
