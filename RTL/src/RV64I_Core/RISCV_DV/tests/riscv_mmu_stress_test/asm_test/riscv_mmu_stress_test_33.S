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
                  la x5, kernel_stack_end

trap_vec_init:    
                  la x23, mtvec_handler
                  ori x23, x23, 0
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
                  li x0, 0x9
                  li x1, 0x80000000
                  li x2, 0xfff4e599
                  li x3, 0xf6963901
                  li x4, 0x4d21defc
                  li x6, 0xa0f711fb
                  li x7, 0xf3be270c
                  li x8, 0xf3a8add7
                  li x9, 0x1
                  li x10, 0xb
                  li x11, 0x2b64fa31
                  li x12, 0xe
                  li x13, 0x0
                  li x14, 0x7
                  li x15, 0xf
                  li x16, 0x53572a62
                  li x18, 0x80000000
                  li x19, 0x8677b5c6
                  li x20, 0x0
                  li x21, 0xc
                  li x22, 0x9fa44e93
                  li x23, 0x80000000
                  li x24, 0x0
                  li x25, 0x80000000
                  li x26, 0x80000000
                  li x27, 0x6d1e0dc9
                  li x28, 0x1
                  li x29, 0x7b7a50e6
                  li x30, 0x0
                  li x31, 0x80000000
                  la x17, user_stack_end
main:             la           s6, region_0+1995 #start riscv_load_store_rand_instr_stream_2
                  auipc        tp, 687760
                  lb           a5, -54(s6)
                  sb           s9, -4(s6)
                  sb           s1, -6(s6)
                  ori          s2, t4, -1579
                  lbu          s5, 0(s6)
                  lhu          s4, -29(s6)
                  and          s11, ra, a5
                  sll          s2, t4, zero
                  sltiu        t2, a3, -140
                  lhu          zero, -1(s6)
                  addi         t5, s4, -1847
                  srai         s4, t3, 19
                  sh           t2, -13(s6)
                  lbu          t1, -60(s6)
                  lui          s4, 290726
                  lhu          t6, -11(s6)
                  sb           s6, -60(s6)
                  lb           a1, -34(s6)
                  sltiu        s4, a7, -409
                  srai         tp, tp, 10
                  and          t5, a5, zero
                  sb           t2, -24(s6)
                  lb           tp, -34(s6)
                  slt          s7, ra, tp
                  sb           s9, -64(s6)
                  ori          a3, t6, 133
                  lb           tp, -7(s6)
                  srli         t6, s3, 23
                  lbu          t5, -48(s6)
                  sltiu        t6, s0, 449
                  xor          tp, t5, t6
                  slli         tp, s10, 24
                  lui          a0, 855831
                  lhu          a3, -29(s6)
                  sh           s4, -7(s6)
                  slt          s5, s10, s10
                  sb           t4, -64(s6)
                  sb           a5, -42(s6)
                  lb           s2, -32(s6)
                  sltu         a4, tp, s10
                  srai         s11, tp, 1
                  sltiu        a1, s3, -452
                  andi         s8, sp, 1145
                  lb           s5, -20(s6)
                  slt          a1, s5, s10
                  lh           a2, -9(s6) #end riscv_load_store_rand_instr_stream_2
                  la           t1, region_0+1564 #start load_store_instr_stream_4
                  la           a1, region_0+690 #start load_store_instr_stream_0
                  lb           s2, 181(t1)
                  la           s9, region_0+1189 #start load_store_instr_stream_3
                  la           s11, region_0+94 #start load_store_instr_stream_2
                  lbu          s7, -205(t1)
                  la           a2, region_0+1831 #start load_store_instr_stream_1
                  lh           s0, 11(s9)
                  sb           a2, 28(a1)
                  lb           t6, -216(a2)
                  lhu          t4, 24(a1)
                  lb           a4, 11(s9)
                  lbu          s10, -4(s9)
                  lb           tp, -29(a1)
                  lh           t5, -42(a1)
                  lbu          t5, 125(s11)
                  sb           t2, -44(t1)
                  sb           s11, -121(a2)
                  sb           a7, -59(s11)
                  sb           s9, -51(a1)
                  lb           s10, 57(a1)
                  lbu          s1, 29(s11)
                  lb           zero, 88(a2)
                  lhu          t5, -124(t1)
                  sb           s1, 6(s9)
                  lhu          a6, 13(s9)
                  sh           a2, 65(a2)
                  sb           s9, -256(a2)
                  lh           s4, -30(a1)
                  sb           a2, 14(s9)
                  lh           t3, 16(s11)
                  lhu          t3, 35(a2)
                  sh           s4, 107(a2) #end load_store_instr_stream_1
                  sb           s8, -4(s9) #end load_store_instr_stream_3
                  sb           s7, 149(s11)
                  sb           a4, 114(t1) #end load_store_instr_stream_4
                  sb           a2, 170(s11) #end load_store_instr_stream_2
                  sb           t3, -5(a1) #end load_store_instr_stream_0
                  la           tp, region_1+1194 #start riscv_load_store_hazard_instr_stream_1
                  sw           ra, 2(tp)
                  sb           a2, -111(tp)
                  sll          s6, a3, s1
                  lbu          s11, 3(tp)
                  lbu          t6, 83(tp)
                  sb           t1, -223(tp)
                  sw           s7, 50(tp)
                  sw           t6, 50(tp)
                  sh           a4, -8(tp)
                  sra          s9, a4, s8
                  lw           ra, 214(tp)
                  lbu          s3, 14(tp) #end riscv_load_store_hazard_instr_stream_1
                  la           t4, region_0+716 #start riscv_load_store_rand_instr_stream_0
                  lhu          s8, 1142(t4)
                  sub          t3, t4, a3
                  slti         s5, t6, 664
                  sra          a6, a7, a5
                  lb           t3, 483(t4)
                  slli         a6, s6, 18
                  sra          s6, s8, s3
                  sb           gp, 911(t4)
                  addi         ra, a2, 203
                  sb           tp, -175(t4)
                  nop
                  lb           t2, -40(t4)
                  lbu          a1, -607(t4)
                  sltiu        tp, a6, -1100
                  sb           s10, -313(t4)
                  sltu         zero, t2, s2
                  auipc        t3, 236042
                  sw           a7, 324(t4)
                  lb           s2, 829(t4)
                  add          t1, s3, s1
                  sb           t0, -308(t4)
                  sh           s3, 1172(t4)
                  lb           s3, -541(t4)
                  xori         gp, gp, 248
                  sh           zero, -280(t4)
                  srl          s11, t3, sp
                  srl          s4, a5, s7
                  sll          a1, s5, s2
                  sh           tp, -44(t4) #end riscv_load_store_rand_instr_stream_0
                  la           t6, region_0+1615 #start load_store_instr_stream_1
                  lb           t4, -2(t6)
                  la           tp, region_0+50 #start load_store_instr_stream_0
                  sb           s11, 9(t6)
                  lb           s8, 3(tp)
                  lh           s2, 13(t6)
                  sb           a2, 8(t6)
                  lb           a2, -15(tp)
                  lbu          s3, -16(t6)
                  sw           s3, -7(t6)
                  lbu          s7, 7(tp)
                  lw           t5, -10(tp)
                  lb           s8, -6(t6)
                  sb           a7, 7(tp)
                  lbu          t3, 15(tp)
                  sb           a3, -6(t6)
                  sb           s3, -5(t6) #end load_store_instr_stream_1
                  lbu          a0, 3(tp) #end load_store_instr_stream_0
                  la           gp, region_1+1752 #start load_store_instr_stream_2
                  la           s0, region_1+1575 #start load_store_instr_stream_0
                  la           s6, region_1+777 #start load_store_instr_stream_1
                  lbu          s3, 188(gp)
                  lbu          a3, 16(s6)
                  lb           t6, -225(gp)
                  lbu          a1, 46(s6)
                  lhu          a1, 133(s0)
                  lhu          t1, 71(s0)
                  sb           a6, -46(gp)
                  lh           s7, -55(s6)
                  lw           a5, -175(s0)
                  lbu          a3, -38(s6)
                  sb           zero, 79(s0)
                  sb           s1, 191(gp)
                  lhu          ra, 51(s6)
                  lb           s3, -239(gp) #end load_store_instr_stream_2
                  lbu          s1, -60(s0)
                  lw           s9, 11(s6) #end load_store_instr_stream_1
                  sb           s8, 124(s0)
                  lbu          s7, -254(s0)
                  sb           a1, 252(s0) #end load_store_instr_stream_0
                  la           a6, region_1+325 #start riscv_load_store_hazard_instr_stream_2
                  sll          t4, s9, t5
                  sh           t4, 525(a6)
                  lb           gp, -34(a6)
                  lbu          a5, -34(a6)
                  sb           a4, -34(a6)
                  xor          s4, sp, a3
                  sb           s7, -34(a6)
                  sltu         s5, a4, s6
                  lbu          s2, 657(a6)
                  sub          s3, s6, t1
                  lhu          t4, 657(a6)
                  lhu          ra, 657(a6)
                  lb           s6, 657(a6)
                  lb           a3, 367(a6)
                  sw           s5, 579(a6)
                  nop
                  lb           a2, 864(a6)
                  lb           a0, 982(a6)
                  lhu          s11, 1599(a6)
                  lh           s5, 1599(a6)
                  lbu          a4, 1599(a6)
                  lbu          t6, 1172(a6)
                  lb           a4, 1172(a6)
                  lbu          s9, 934(a6) #end riscv_load_store_hazard_instr_stream_2
                  bgeu         s10, a0, 14f
                  bne          t4, a0, 16f
                  xori         tp, gp, 598
                  lui          gp, 162532
                  beq          a3, t1, 5f
5:                andi         s3, gp, -404
                  xori         s3, s7, -82
                  beq          t4, t1, 12f
                  sub          a2, s7, a7
                  bgeu         t3, ra, 15f
                  srai         a6, t3, 16
                  lui          a4, 888849
12:               slli         s11, s11, 5
                  beq          s0, a7, 21f
14:               blt          t4, a1, 33f
15:               slt          s6, t3, a4
16:               or           a1, s1, tp
                  sltiu        zero, s8, 1857
                  andi         a5, a4, -877
                  slti         t6, t1, 854
                  sltu         s0, zero, t5
21:               xori         zero, s7, 807
                  andi         t5, t6, 1504
                  bltu         a1, s11, 43f
                  ori          a2, a4, -1332
                  andi         a5, sp, -938
                  bge          a3, t3, 29f
                  andi         a0, s4, -1097
                  sltiu        t4, s0, -1333
29:               and          t5, t0, s9
                  bne          a5, a4, 40f
                  andi         ra, s3, -1320
                  xor          gp, t0, t3
33:               srai         s5, a3, 11
                  bltu         a6, a4, 47f
                  auipc        a5, 504712
                  and          t3, s9, zero
                  bgeu         a4, s7, 55f
                  or           s4, ra, t3
                  sltu         t5, s9, t1
40:               and          s11, t6, t4
                  sltiu        a3, sp, 1040
                  addi         s8, s11, 274
43:               sll          s4, t2, t3
                  slli         ra, s0, 28
                  addi         ra, t2, -919
                  auipc        a0, 256260
47:               sltiu        t5, gp, -416
                  srai         tp, t2, 30
                  sltu         s6, s5, t2
                  auipc        t2, 536326
                  addi         tp, a3, -616
                  sll          t5, a4, s8
                  sltu         s4, s6, s8
                  addi         t4, s11, -134
55:               bne          t6, t3, 58f
                  srli         ra, zero, 25
                  srai         s5, a3, 22
58:               andi         s5, zero, 1218
                  and          a6, a5, s0
                  nop
                  xor          a4, s7, t3
                  lui          t1, 512824
                  lui          zero, 363546
                  sra          a5, s11, t3
                  blt          s5, s8, 72f
                  sltu         a5, t2, s11
                  lui          s9, 339487
                  slti         s6, sp, 1681
                  and          s7, t1, a0
                  bge          ra, s4, 81f
                  bne          s2, s7, 91f
72:               bltu         a6, s8, 80f
                  or           a3, t6, s1
                  ori          t4, s6, -691
                  sltiu        s1, s4, 751
                  srl          s2, a5, s1
                  lui          s9, 84803
                  bge          a5, s0, 96f
                  srli         a1, s0, 0
80:               lui          s11, 313674
81:               beq          t5, s2, 100f
                  bne          s6, s5, 90f
                  slt          ra, s2, t2
                  sltu         a6, t2, a7
                  andi         s6, a4, -1725
                  ori          ra, s9, -690
                  add          s9, a3, ra
                  bgeu         t2, s4, 103f
                  sll          t6, t6, s6
90:               bgeu         a5, s1, 92f
91:               sll          s4, t1, s1
92:               bge          sp, s2, 108f
                  sub          s6, s9, s1
                  blt          s6, s0, 99f
                  blt          ra, a5, 100f
96:               sltiu        s3, t0, -1329
                  sra          a0, a7, t0
                  andi         a5, t4, -247
99:               slt          a2, gp, s0
100:              slli         a0, a7, 20
                  auipc        s1, 38324
                  bltu         s0, s5, 121f
103:              bne          s3, t6, 116f
                  xor          s7, zero, s3
                  slli         s4, t3, 13
                  srl          s7, t1, s8
                  sll          s4, s10, a3
108:              lui          a2, 37318
                  sltiu        a6, t6, 342
                  nop
                  or           s8, sp, sp
                  srl          zero, s10, t5
                  blt          ra, sp, 132f
                  srai         a2, s0, 6
                  srai         s7, s3, 23
116:              sltiu        s8, gp, -1844
                  add          s9, s8, t4
                  srli         s2, s3, 4
                  srl          s2, zero, a5
                  slli         gp, s8, 28
121:              nop
                  srl          a1, t1, ra
                  xor          s0, a0, s11
                  slli         s3, s5, 28
                  la           s10, region_1+1954 #start riscv_load_store_hazard_instr_stream_0
                  srl          a2, s1, gp
                  sh           t6, -42(s10)
                  sltu         s1, s0, s3
                  sh           s1, -42(s10)
                  sw           gp, -42(s10)
                  sb           gp, -42(s10)
                  lw           s0, -26(s10)
                  srl          s9, s8, a6
                  auipc        s11, 163410
                  lbu          gp, -26(s10)
                  lw           t4, -26(s10)
                  slti         s11, s9, -921
                  slti         s8, sp, -1966
                  lbu          s6, -19(s10)
                  lb           s6, -19(s10)
                  lh           s8, 24(s10)
                  lhu          s0, 24(s10)
                  lhu          t4, 24(s10)
                  sb           t3, -19(s10)
                  lhu          s5, 12(s10)
                  sh           s1, -14(s10)
                  lb           a1, -39(s10)
                  lb           t2, -39(s10)
                  sb           s5, -25(s10)
                  sh           s9, -4(s10) #end riscv_load_store_hazard_instr_stream_0
                  sltu         t2, s6, t2
                  bge          s7, t2, 139f
                  bltu         a4, s2, 145f
                  bgeu         s4, a1, 141f
                  xori         t3, a3, 1628
                  sltu         a5, t5, a5
                  beq          s5, t4, 149f
132:              blt          s0, s3, 135f
                  slli         a5, s11, 24
                  bltu         s1, t1, 142f
135:              add          s10, s10, s1
                  and          t5, s1, s4
                  lui          a2, 314132
                  xori         a0, a2, -279
139:              slt          s7, t5, t5
                  sltiu        s8, t5, 865
141:              srai         s7, s7, 8
142:              bge          t5, s10, 150f
                  slli         zero, a5, 22
                  xori         a2, a3, -874
145:              sra          a1, a2, s1
                  slt          s8, s8, sp
                  slli         tp, t2, 19
                  nop
149:              sltu         t5, t4, s2
150:              bne          s3, a6, 152f
                  bgeu         t4, s3, 169f
152:              sll          s8, a2, s4
                  slti         a3, s6, 881
                  slt          ra, t4, s6
                  xor          t4, zero, s6
                  sll          a2, s11, t3
                  srl          s7, t5, zero
                  bgeu         t6, a2, 164f
                  sub          s2, s1, t2
                  bne          s6, sp, 175f
                  srai         s9, s5, 23
                  addi         a0, sp, 280
                  sll          t6, a3, a1
164:              xori         s8, a5, -848
                  beq          s8, zero, 176f
                  sll          s9, a7, s10
                  ori          t6, t6, -2035
                  or           s8, zero, s8
169:              srl          a1, t4, s2
                  addi         a3, t5, -757
                  xor          s2, t0, t1
                  bge          a3, a7, 177f
                  sub          s6, t4, s3
                  auipc        s1, 970903
175:              sltu         s8, s0, t1
176:              slli         t3, a6, 27
177:              blt          s6, t2, 197f
                  slli         a4, s5, 17
                  srl          a5, s9, s11
                  slti         s5, a5, -760
                  srli         s4, t5, 14
                  sltu         a2, a1, a3
                  sra          ra, tp, a3
                  srli         t1, a5, 13
                  auipc        a6, 916632
                  lui          a2, 842300
                  xor          gp, gp, t5
                  ori          t1, s0, -371
                  ori          t5, a4, -1500
                  slti         s10, s6, 520
                  srl          a4, a1, s3
                  lui          a2, 319231
                  add          s7, s1, a2
                  srli         t6, a5, 20
                  srl          a0, a3, s4
                  or           tp, a1, a7
197:              add          s4, a1, t0
                  slt          t3, a5, s0
                  srai         s2, ra, 19
                  sll          a6, a6, s7
                  sll          a3, s1, s9
                  bge          s7, t0, 221f
                  ori          s7, ra, -700
                  xor          t1, s10, tp
                  sltu         s2, a6, s10
                  bltu         t3, t3, 213f
                  bge          s1, a3, 212f
                  auipc        s6, 356302
                  slt          t3, a2, a2
                  srl          t2, s6, t0
                  xori         a3, t4, 377
212:              sub          s2, t2, gp
213:              sra          ra, a1, t6
                  ori          s1, sp, -1759
                  bltu         t5, a1, 229f
                  nop
                  slli         t4, a0, 14
                  srai         s2, t4, 4
                  srl          t1, a6, s1
                  add          ra, a2, ra
221:              ori          s3, s1, 1382
                  sltu         s3, a3, s10
                  slt          s5, s6, a3
                  srli         gp, s11, 19
                  lui          a1, 837051
                  sub          s1, s0, s7
                  blt          s3, t0, 246f
                  andi         a2, s4, -1826
229:              sltu         a5, zero, a3
                  addi         s4, a6, -1105
                  add          t2, s1, gp
                  slt          s9, a0, tp
                  lui          s1, 779859
                  bne          s3, s10, 252f
                  ori          a4, s4, -1195
                  lui          s1, 382483
                  sll          s3, a2, gp
                  slt          a0, t0, t5
                  or           s8, a4, a2
                  slti         s3, a4, -676
                  add          s9, t3, s11
                  bgeu         ra, s7, 257f
                  bge          a1, a7, 262f
                  sll          a0, a5, t0
                  slli         t2, s4, 13
246:              lui          s4, 450408
                  ori          s2, a1, -1208
                  sub          t6, tp, a5
                  srai         s6, s11, 16
                  sltu         t2, s7, gp
                  bge          t1, ra, 252f
252:              xor          t2, a1, ra
                  sltu         a3, t2, t0
                  xori         s2, a4, -974
                  blt          ra, t1, 268f
                  sll          t1, t3, s0
257:              bge          s9, tp, 260f
                  beq          tp, s4, 277f
                  srli         gp, t4, 12
260:              sub          a5, s0, s4
                  srl          s2, gp, a5
262:              sub          ra, t3, s1
                  or           s0, ra, s3
                  sub          s9, a5, gp
                  sltiu        s5, s11, -1934
                  bge          a0, t0, 282f
                  sra          gp, a5, t0
268:              blt          s3, s3, 273f
                  add          a0, t6, s1
                  or           t4, gp, t4
                  slt          s7, a5, s2
                  blt          ra, t2, 280f
273:              nop
                  and          s11, s4, s8
                  add          s4, s6, sp
                  bgeu         s1, zero, 286f
277:              slli         s5, a7, 2
                  nop
                  slti         s10, a4, 47
                  srli         t4, t0, 7
                  sra          a4, ra, s0
                  la           s7, sub_1
                  addi         s7, s7, -917
                  andi         a1, a1, -383
                  bgeu         s9, t0, main_j1 #branch to jump instr
                  slt          a5, s11, gp
main_j1:          jalr         a5, s7, 918 #jump main -> sub_1
                  slli         tp, a1, 18
                  ori          t6, s6, -447
280:              or           a0, ra, t4
                  slti         s2, s7, -2011
282:              sltiu        t5, ra, 956
                  lui          gp, 121893
                  beq          s7, t4, 297f
                  xori         t4, sp, -790
286:              blt          a6, t0, 306f
                  sub          s3, a1, t4
                  bltu         s5, s1, 294f
                  bne          s2, zero, 307f
                  sltiu        s8, a1, 881
                  srai         a3, s0, 13
                  andi         a1, ra, -665
                  nop
294:              ori          s11, s9, 496
                  sll          a0, s8, t2
                  andi         s7, s6, 452
297:              addi         a3, a2, 1469
                  sltu         a5, t0, a1
                  xor          t4, a2, s0
                  ori          s11, s9, 1870
                  slt          tp, s8, a1
                  sub          s1, t0, sp
                  sub          s8, s11, s2
                  addi         a2, s11, 1051
                  xori         s9, a4, 142
                  nop
                  slli         s0, a1, 31
                  sltu         a0, zero, a6
                  la           t1, sub_2
                  andi         s3, zero, 1351
                  addi         t1, t1, -201
                  ori          a4, s7, 1988
                  nop
                  srli         s8, s5, 12
main_j2:          jalr         a5, t1, 201 #jump main -> sub_2
306:              xor          ra, sp, s6
307:              beq          t5, t5, 327f
                  lui          s7, 628100
                  beq          s3, s8, 328f
                  and          ra, a7, a7
                  srl          a6, t6, s9
                  sra          a5, t1, s0
                  and          t2, sp, t6
                  ori          t1, s9, 874
                  sub          ra, s3, s4
                  bltu         t6, t2, 334f
                  bge          s0, a1, 325f
                  srl          s5, t4, a3
                  srl          s5, t4, s1
                  nop
                  and          s10, tp, a7
                  slli         s1, s9, 19
                  la           s8, region_0+826 #start riscv_load_store_rand_instr_stream_1
                  nop
                  sb           s6, 10(s8)
                  andi         s0, t6, 166
                  srl          tp, t0, a3
                  lui          a0, 221632
                  sltu         s1, s9, t0
                  srli         s11, t6, 10
                  lb           s2, -4(s8)
                  and          s10, a1, t2
                  ori          a6, s11, 209
                  lw           a5, 14(s8)
                  and          ra, s9, ra
                  andi         a2, s2, -1261
                  auipc        t3, 107727
                  lb           gp, -12(s8)
                  lb           zero, -4(s8)
                  sb           t0, -1(s8)
                  lbu          t2, -12(s8)
                  srl          a3, a7, t1
                  srl          s10, gp, t5
                  nop
                  sh           tp, 14(s8)
                  and          a6, zero, a0
                  lbu          ra, -13(s8)
                  sb           a2, 4(s8)
                  sb           a6, 15(s8)
                  lbu          s6, 13(s8)
                  lbu          t2, -1(s8)
                  srl          s11, s11, gp
                  sw           s9, -10(s8)
                  lh           t6, 6(s8)
                  sltu         s1, gp, gp
                  lbu          t6, 7(s8)
                  sb           a2, -3(s8)
                  slt          a4, t2, s9
                  srai         s4, a6, 11
                  sb           s9, -10(s8)
                  ori          a0, s0, 509
                  lb           a0, 5(s8) #end riscv_load_store_rand_instr_stream_1
                  bne          t1, a5, 336f
                  ori          gp, a2, -1562
325:              sll          a4, t0, s9
                  and          t2, s11, s3
327:              bgeu         s7, s10, 344f
328:              or           a3, s9, s7
                  slli         s2, t5, 3
                  bgeu         t3, s0, 333f
                  bltu         s10, a5, 342f
                  sltiu        t1, t1, -854
333:              srli         s6, t2, 29
334:              blt          a3, ra, 339f
                  andi         t2, s8, 886
336:              slti         t1, a0, 1082
                  or           t1, zero, t5
                  slt          s3, t0, a6
339:              srl          zero, t2, t6
                  srai         tp, s9, 31
                  nop
342:              sub          gp, s11, s1
                  or           s0, gp, t3
344:              sll          a3, s2, t3
                  la x2, test_done
                  jalr x0, x2, 0
test_done:        
                  li gp, 1
                  ecall
sub_1:            xori         s4, gp, 538
                  nop
                  bge          a2, sp, sub_1_stack_p
                  sub          s9, tp, s6
sub_1_stack_p:    addi         a7, a7, -12
                  sub          s4, a2, t5
                  slt          t5, a1, s3
                  sw           a5, 4(a7)
                  sltiu        s6, a1, -990
                  or           gp, s4, a3
                  la           a4, region_1+1100 #start riscv_load_store_rand_instr_stream_1
                  sra          zero, a6, a4
                  slt          s4, s5, s4
                  slt          s6, gp, zero
                  lbu          s10, 173(a4)
                  lbu          t1, 138(a4)
                  auipc        t4, 625484
                  srl          a6, s2, zero
                  srai         s2, t3, 8
                  sra          t5, a3, s4
                  xor          a1, t1, s10
                  lbu          gp, 71(a4)
                  lb           s1, 105(a4)
                  sh           t6, -54(a4)
                  lb           ra, -195(a4)
                  xori         s9, a6, 1798
                  sltu         s1, s4, s0
                  slli         a2, gp, 25
                  sra          s5, zero, s4
                  xor          s5, a5, s9
                  lb           a2, -117(a4)
                  ori          s2, s9, -1239
                  lbu          a0, -171(a4)
                  lhu          s10, 110(a4)
                  andi         s9, a6, 1708
                  sb           s5, 47(a4)
                  sb           t6, 29(a4)
                  addi         tp, s10, 469
                  lb           tp, -109(a4)
                  lb           zero, -221(a4)
                  and          tp, t0, s6
                  nop
                  sltiu        s9, t0, -412
                  xor          a6, s2, s6
                  lhu          a2, 254(a4)
                  lb           a6, 125(a4)
                  xori         t3, ra, -1790
                  sb           s9, 89(a4)
                  sh           s10, -14(a4)
                  slti         t2, t3, -1410
                  and          t5, a4, t6
                  sb           s7, -113(a4)
                  slti         s3, ra, -805
                  auipc        s6, 432125
                  sb           t0, 171(a4)
                  sb           s10, -97(a4)
                  sb           sp, -243(a4)
                  sll          s9, s4, sp
                  xori         t3, s3, 1915
                  xor          t3, t3, s4
                  srai         s9, s9, 18
                  lh           tp, -222(a4)
                  xor          a1, s4, a6
                  sb           s10, 62(a4) #end riscv_load_store_rand_instr_stream_1
                  la           a0, region_0+1210 #start riscv_load_store_rand_instr_stream_0
                  lbu          s7, 173(a0)
                  sra          s1, s0, s9
                  sltiu        t5, s1, 102
                  lb           s8, 159(a0)
                  sra          ra, s2, s7
                  sb           a3, 175(a0)
                  lb           s8, 184(a0)
                  sb           t4, -137(a0)
                  sw           t6, 158(a0)
                  lbu          s0, 111(a0)
                  auipc        gp, 327989
                  lb           a2, 70(a0)
                  xori         tp, tp, -1931
                  sb           t2, 54(a0)
                  lb           t4, -219(a0)
                  lb           s11, 225(a0)
                  nop
                  slli         s10, t6, 31
                  lb           s7, -37(a0)
                  slli         s9, ra, 1
                  lbu          s9, 163(a0)
                  sb           s2, 97(a0)
                  lbu          s0, 238(a0)
                  srl          s6, s3, s2
                  sb           t3, 179(a0)
                  sra          s0, s8, s9
                  lhu          t1, -44(a0)
                  slt          s1, s2, s0
                  slti         a2, t2, -1277
                  srai         a4, a1, 10
                  lh           s9, -42(a0)
                  nop
                  xori         a3, a7, 947
                  addi         t5, ra, 1062
                  sll          t2, s2, s2
                  lbu          s4, 27(a0)
                  lbu          a1, -97(a0)
                  sb           a3, -231(a0)
                  srli         s9, a2, 2
                  srli         a3, s4, 21
                  lhu          s10, -52(a0)
                  addi         s5, t1, -1626
                  slli         a4, s2, 17
                  lh           s1, -90(a0)
                  lw           t2, -214(a0)
                  ori          t5, a2, -969
                  xori         s11, t1, -945
                  sb           s6, 186(a0)
                  lh           s7, 208(a0)
                  lbu          t3, -172(a0)
                  xor          s8, a6, s10
                  andi         a4, s5, 1668
                  xori         s3, s2, 1815
                  sltiu        zero, s2, 1190
                  sltiu        s5, ra, 846
                  lb           ra, -5(a0) #end riscv_load_store_rand_instr_stream_0
                  la           s4, region_0+396 #start riscv_load_store_hazard_instr_stream_0
                  lb           zero, 9(s4)
                  srai         t1, s3, 4
                  sb           s7, 9(s4)
                  sb           s8, 9(s4)
                  addi         a6, zero, 94
                  lb           a2, 9(s4)
                  lhu          a3, -8(s4)
                  lh           s11, -8(s4)
                  sb           s5, -8(s4)
                  lh           t4, -8(s4)
                  sh           a5, -8(s4)
                  lhu          t4, -8(s4)
                  nop
                  sw           t5, 16(s4)
                  sh           a5, 16(s4)
                  lh           s9, 16(s4)
                  sh           a2, 16(s4)
                  lbu          t3, 16(s4) #end riscv_load_store_hazard_instr_stream_0
                  la           s0, region_0+1277 #start riscv_load_store_hazard_instr_stream_2
                  lbu          s10, -1242(s0)
                  andi         t1, s1, 569
                  sb           s2, -1052(s0)
                  lb           t6, -1052(s0)
                  slti         s3, ra, -648
                  lb           s1, -1052(s0)
                  lb           t6, -1052(s0)
                  lb           t4, -511(s0)
                  sh           zero, 245(s0)
                  and          s9, s2, a0
                  lhu          t5, 245(s0)
                  sh           gp, 245(s0)
                  lh           t6, 245(s0)
                  srl          s8, a7, a1
                  lbu          zero, 245(s0)
                  sb           tp, 245(s0)
                  lh           s8, 245(s0)
                  slli         s4, a4, 26
                  lhu          s10, 245(s0) #end riscv_load_store_hazard_instr_stream_2
                  la           s6, region_1+106 #start riscv_load_store_rand_instr_stream_2
                  slli         gp, s3, 11
                  lbu          s2, 237(s6)
                  auipc        a3, 89038
                  lbu          zero, -3(s6)
                  lw           s11, 142(s6)
                  slli         a5, zero, 25
                  lb           s2, 203(s6)
                  srl          s8, a1, t0
                  lb           s7, -66(s6)
                  slt          a2, a6, s4
                  auipc        s8, 33902
                  lb           s1, -45(s6)
                  andi         s8, zero, -1469
                  sb           t2, 147(s6)
                  lui          s9, 865301
                  sb           ra, 179(s6)
                  sub          a2, t2, sp
                  srl          t3, ra, s2
                  ori          a4, tp, 718
                  srl          s11, s2, a5
                  sra          gp, tp, s0
                  slt          s8, s5, s1
                  ori          t3, a2, -858
                  xori         gp, sp, -718
                  slt          a3, t5, a1
                  and          t6, tp, s9
                  lb           s7, 237(s6)
                  sb           t0, 131(s6)
                  lbu          s5, -45(s6)
                  ori          s2, tp, 1242
                  and          gp, t1, s10
                  sltu         a0, t4, s2
                  sub          s1, s11, s6
                  xor          a3, a0, s2
                  srli         s5, zero, 15
                  add          a2, tp, s2
                  lb           t3, 146(s6)
                  auipc        s9, 729822
                  sltiu        a2, s10, -64
                  sh           s10, 240(s6)
                  lui          t3, 328887
                  lb           a1, 106(s6)
                  lw           t1, -82(s6)
                  sw           a0, 42(s6)
                  lw           s9, 78(s6) #end riscv_load_store_rand_instr_stream_2
                  la           t3, region_0+383 #start riscv_load_store_hazard_instr_stream_1
                  addi         s6, s9, -1716
                  lhu          a0, -13(t3)
                  sh           tp, -3(t3)
                  lh           s5, -3(t3)
                  sb           a0, 8(t3)
                  sltu         tp, t6, a6
                  lbu          a2, -9(t3)
                  sb           s0, -7(t3)
                  sh           s11, -7(t3)
                  lbu          t2, 9(t3)
                  sh           s2, 15(t3)
                  xor          s4, s4, s2
                  lbu          s0, 16(t3)
                  lhu          s9, 5(t3)
                  lhu          s8, 1(t3)
                  lh           s7, 1(t3)
                  sltu         s5, s8, s9
                  lhu          s9, 1(t3)
                  lhu          ra, 1(t3)
                  sh           s5, -7(t3)
                  sb           s5, 6(t3)
                  lb           a6, 12(t3) #end riscv_load_store_hazard_instr_stream_1
                  la           t2, region_0+1837 #start load_store_instr_stream_1
                  la           s4, region_0+76 #start load_store_instr_stream_2
                  la           s9, region_0+1823 #start load_store_instr_stream_3
                  la           t4, region_0+1494 #start load_store_instr_stream_0
                  sb           s7, 12(s9)
                  lbu          s8, 5(s4)
                  lbu          a3, -15(t2)
                  sw           ra, 16(s4)
                  lbu          a2, 12(t2)
                  sb           t5, -56(s9)
                  sb           s4, -8(t4)
                  sb           a3, 34(s9)
                  lh           a5, 56(s4)
                  lb           tp, 6(t4)
                  lb           t3, 32(s9)
                  lbu          t3, 6(t2)
                  lb           gp, -5(t4)
                  lbu          a4, -61(s9)
                  lb           t1, 16(t4)
                  lb           s3, -10(t2)
                  sb           sp, -3(t2)
                  sb           a1, -1(t4)
                  lb           zero, 27(s4)
                  sb           sp, 54(s4)
                  lbu          s10, -19(s9) #end load_store_instr_stream_3
                  lhu          a3, 14(t4)
                  sw           t0, 60(s4)
                  lh           s1, 15(t2)
                  lbu          zero, 16(t2)
                  sh           ra, 0(t4)
                  sb           s1, -4(t4)
                  sb           tp, -4(t2) #end load_store_instr_stream_1
                  sb           a2, 17(s4) #end load_store_instr_stream_2
                  lh           s2, -2(t4) #end load_store_instr_stream_0
                  la           a1, region_1+516 #start load_store_instr_stream_2
                  la           s4, region_1+1025 #start load_store_instr_stream_1
                  sb           s5, 2(s4)
                  la           a4, region_1+378 #start load_store_instr_stream_0
                  sb           s5, -40(a1)
                  lh           t3, -56(a4)
                  sb           a1, 44(a1)
                  lhu          a2, -24(a1)
                  lbu          t3, 45(a1)
                  sw           s9, 40(a1)
                  sb           a5, -8(s4)
                  sw           t1, -36(a1)
                  lb           gp, 15(s4)
                  sb           sp, -39(a4)
                  sb           s9, 14(s4)
                  lhu          s1, 46(a4)
                  lb           s10, -15(s4)
                  lh           gp, 46(a4)
                  lb           s2, 14(s4)
                  sb           t6, 9(s4)
                  lb           t4, -48(a4)
                  lb           s10, -35(a1)
                  lb           t2, 4(s4) #end load_store_instr_stream_1
                  lb           t1, -11(a1) #end load_store_instr_stream_2
                  sb           s5, -6(a4) #end load_store_instr_stream_0
                  la           a4, region_1+349 #start load_store_instr_stream_0
                  la           s11, region_1+1499 #start load_store_instr_stream_2
                  lhu          s6, 1(a4)
                  lbu          s10, 4(s11)
                  la           t4, region_1+1686 #start load_store_instr_stream_1
                  la           tp, region_1+347 #start load_store_instr_stream_4
                  lb           s10, 16(a4)
                  la           ra, region_1+105 #start load_store_instr_stream_3
                  lb           a1, 17(t4)
                  sb           a0, 1470(tp)
                  lh           s10, 1(s11)
                  lbu          t3, 4(a4)
                  lbu          s9, 1064(tp)
                  sw           t1, -118(t4)
                  sb           t1, 137(ra)
                  lw           a6, 257(tp)
                  lbu          t2, -13(a4)
                  sh           a4, 1(a4)
                  lbu          a6, 71(t4)
                  sh           t4, 13(tp)
                  lh           s2, 178(t4)
                  lw           s7, 103(ra)
                  lbu          a5, 6(a4)
                  sb           s3, 1638(tp)
                  lw           t1, 39(ra)
                  sb           s6, 226(ra)
                  lbu          s0, -4(s11)
                  sb           s0, 12(s11)
                  sb           s10, -167(t4)
                  lhu          zero, 1229(tp)
                  sb           s0, 173(ra)
                  sb           sp, 16(s11)
                  lb           t1, 14(a4)
                  sh           a6, 44(t4)
                  lh           a1, 1085(tp) #end load_store_instr_stream_4
                  lbu          t5, -71(ra)
                  sh           s4, -13(ra)
                  sb           s8, 138(t4) #end load_store_instr_stream_1
                  sb           s2, 10(s11) #end load_store_instr_stream_2
                  sb           ra, 110(ra) #end load_store_instr_stream_3
                  lh           s8, 13(a4) #end load_store_instr_stream_0
                  lui          ra, 767942
                  beq          s8, s8, 16f
                  xor          zero, a5, a7
                  bltu         s9, s11, 4f
4:                lui          s11, 692612
                  lui          a2, 196318
                  slti         t3, s5, -1168
                  blt          s2, t2, 18f
                  srli         a3, s7, 9
                  lui          t1, 849142
                  bne          s6, t1, 29f
                  andi         s8, s8, -1977
                  or           a6, a1, a4
                  sub          s2, s7, a4
                  beq          a1, s9, 24f
                  lui          s0, 42610
16:               and          s4, s11, s6
                  sltu         a5, t3, a0
18:               slt          a2, t4, t3
                  bne          a2, sp, 28f
                  sltu         s9, t6, s5
                  bge          s4, s2, 26f
                  beq          zero, s1, 32f
                  slli         zero, a3, 14
24:               blt          s11, a7, 30f
                  auipc        a6, 645078
26:               srl          s6, t1, a3
                  bgeu         s5, tp, 40f
28:               sra          s4, gp, t3
29:               srl          t3, t2, tp
30:               and          a3, a7, s6
                  addi         gp, t3, -307
32:               beq          s4, s5, 42f
                  bgeu         sp, a5, 43f
                  slli         s8, t1, 5
                  srli         a2, a6, 7
                  and          s0, s0, t0
                  srl          s5, t4, s7
                  srl          t3, s11, ra
                  slt          a1, s11, t3
40:               bgeu         tp, s9, 45f
                  sra          s11, s10, a6
42:               sltiu        t4, s1, 1739
43:               andi         t2, a1, 1313
                  xori         gp, s5, -1700
45:               srli         s5, t3, 15
                  sub          s1, s0, a4
                  sltiu        zero, tp, 1669
                  addi         a4, s7, 169
                  srli         t6, t0, 21
                  srai         s1, a6, 13
                  blt          s0, t3, 68f
                  bltu         zero, a2, 72f
                  bltu         t3, s2, 63f
                  srai         s10, a0, 17
                  nop
                  srl          s6, s11, t5
                  sltu         a1, t0, a6
                  bltu         s5, zero, 66f
                  xori         s7, ra, -826
                  slt          s9, s4, a3
                  blt          s8, s11, 79f
                  or           s4, ra, s2
63:               sll          s7, s0, t3
                  bltu         t5, a5, 81f
                  srl          t6, a2, a1
66:               bgeu         gp, s8, 68f
                  sltu         gp, gp, t1
68:               bge          s3, s2, 80f
                  lui          t5, 856746
                  auipc        a4, 553559
                  sra          s0, a5, s6
72:               or           s6, a3, t4
                  slti         s3, s6, 1107
                  andi         ra, s1, -1254
                  bgeu         s0, t4, 91f
                  slti         s11, zero, -1276
                  srli         a6, t6, 15
                  nop
79:               bge          s3, s8, 88f
80:               and          s8, s3, s10
81:               sub          t4, a0, t4
                  andi         a4, t3, 1890
                  bgeu         gp, s9, 87f
                  add          tp, s7, a2
                  and          t6, t6, t0
                  sll          t4, s7, a3
87:               sltu         s11, t0, t0
88:               sra          s1, t6, s0
                  and          s4, s3, s6
                  andi         s4, a1, 1987
91:               srl          s2, t6, s6
                  slt          a5, zero, zero
                  sra          s0, s4, a6
                  auipc        t1, 301672
                  andi         t5, t5, -37
                  srl          s8, s4, s8
                  nop
                  srli         ra, tp, 3
                  xori         t1, s1, -1794
                  bgeu         a5, zero, 108f
                  sltu         t5, a7, zero
                  slli         zero, a7, 22
                  sll          tp, s7, zero
                  sltiu        s0, s9, -740
                  lui          s3, 458842
                  addi         a1, t4, -2044
                  slti         s8, s3, -1237
108:              nop
                  slti         s11, ra, -1352
                  sub          a2, s11, a3
                  sra          a0, s7, a3
                  lui          zero, 298802
                  lui          s8, 446253
                  srai         s2, s11, 27
                  slli         t6, a5, 17
                  add          s6, t6, ra
                  sll          a0, a0, s3
                  add          tp, s6, a4
                  sll          a4, zero, s5
                  slt          a4, sp, a2
                  slt          s0, a5, s9
                  sll          a3, s6, t2
                  sub          ra, a6, s7
                  srli         s10, s0, 4
                  and          a1, s4, a6
                  bltu         s8, sp, 128f
                  bgeu         a5, s4, 134f
128:              sltiu        a3, a3, 1789
                  slt          s11, a7, a0
                  sra          s4, sp, s11
                  sltu         a6, a6, t5
                  add          a3, zero, t6
                  or           gp, a5, t4
134:              add          tp, t2, t3
                  sltiu        s11, t0, -68
                  bltu         s5, s1, 156f
                  xor          a4, a2, s0
                  sra          s11, s6, t5
                  slti         zero, s11, -232
                  sub          s0, tp, a4
                  srai         s11, a5, 26
                  sra          a2, s5, s5
                  srl          s9, s2, a2
                  add          a3, ra, tp
                  bltu         s0, s8, 165f
                  srl          s10, s6, a5
                  srli         s6, s7, 7
                  bne          s1, ra, 168f
                  and          s4, sp, ra
                  blt          ra, s5, 151f
151:              xor          t3, s1, a1
                  sll          tp, a5, t1
                  bne          a0, s7, 165f
                  blt          a0, t1, 159f
                  sltiu        t6, zero, -727
156:              addi         t1, a5, -1448
                  andi         s10, s3, 733
                  beq          a3, sp, 178f
159:              sub          t6, t5, s4
                  slt          a3, s0, s2
                  nop
                  blt          gp, t5, 170f
                  sub          s1, t6, s7
                  xor          tp, a4, t4
165:              sra          a3, a4, s11
                  bgeu         t3, a1, 176f
                  and          s0, s9, t5
168:              or           t6, t1, t4
                  sltu         zero, a7, tp
170:              xor          s9, s7, a3
                  ori          gp, ra, 1701
                  sra          s3, s11, t4
                  xori         t5, a0, -1220
                  lui          t6, 865900
                  slli         s4, s4, 22
176:              slt          s4, s6, s10
                  bgeu         a2, a5, 187f
178:              bge          s10, s3, 183f
                  andi         gp, s9, -271
                  slli         s11, a1, 1
                  bne          s7, s2, 190f
                  slt          s7, t0, sp
183:              xor          s11, a7, tp
                  bltu         a1, a0, 204f
                  auipc        s4, 903185
                  srli         a4, t0, 1
187:              add          t3, t4, t5
                  add          a3, s6, t3
                  bge          s0, s10, 199f
190:              bgeu         ra, t4, 210f
                  bne          t6, s1, 207f
                  and          s8, t6, t6
                  bltu         s10, s2, 210f
                  ori          s2, a3, 302
                  slt          s11, t0, a6
                  bltu         s10, t5, 206f
                  sltu         t3, t4, t2
                  blt          s8, t5, 215f
199:              auipc        s8, 372563
                  sltiu        s10, s4, -135
                  add          s1, zero, s9
                  bne          s2, ra, 208f
                  srai         s8, s9, 31
204:              slti         a0, ra, -448
                  srai         s3, a0, 22
206:              slli         a1, a7, 3
207:              andi         t3, s7, -1743
208:              bge          s10, s10, 215f
                  auipc        gp, 678083
210:              sltiu        s8, ra, -1115
                  or           s9, t4, s5
                  auipc        t2, 534038
                  slt          s7, s11, gp
                  sub          s3, gp, a0
215:              sltiu        s3, a5, 1783
                  srai         tp, a6, 9
                  srli         a0, s0, 7
                  bgeu         s4, sp, 229f
                  sub          t2, a7, t4
                  srli         s3, tp, 16
                  ori          s11, t2, 151
                  and          s7, s6, s6
                  and          s0, s7, sp
                  nop
                  slt          a4, s0, s10
                  bgeu         t6, t0, 241f
                  add          t6, s4, s9
                  or           s0, s9, s8
229:              srl          s5, s3, a5
                  ori          s6, a0, -515
                  blt          s11, s7, 251f
                  ori          s4, a6, -1830
                  slt          a2, s6, a0
                  srl          a2, s7, t0
                  or           a1, s9, t4
                  sra          s10, t6, s0
                  sra          s8, sp, s4
                  srai         s11, t0, 6
                  or           a6, t6, a0
                  sltu         s10, t1, s6
241:              sltu         s10, sp, s1
                  auipc        s1, 155819
                  xor          a4, s10, a1
                  blt          s2, s2, 248f
                  lui          zero, 558660
                  lui          s9, 141040
                  xori         s5, t0, 1864
248:              or           s5, s4, s7
                  sll          a2, s7, a2
                  sub          t4, tp, s9
251:              srli         s4, t0, 26
                  bltu         s10, ra, 254f
                  sltu         gp, t6, s10
254:              addi         a2, ra, -732
                  slt          tp, gp, s0
                  slli         a5, a6, 20
                  or           s3, a3, a5
                  srli         s2, a4, 11
                  sub          zero, s7, s1
                  sra          zero, s0, a2
                  or           s6, tp, gp
                  nop
                  sll          s4, s9, t0
                  srl          s5, sp, a6
                  srl          s1, s6, gp
                  xor          t1, t4, t4
                  bge          s1, s2, 280f
                  and          s11, ra, s9
                  nop
                  bge          zero, s2, 289f
                  add          a0, t6, s11
                  xor          s5, tp, a2
                  srli         a5, s6, 26
                  auipc        s1, 593255
                  and          t2, s2, tp
                  bge          t3, sp, 278f
                  slli         a5, t3, 25
278:              sltu         s11, tp, tp
                  slli         a6, s7, 27
280:              xor          s8, a0, t3
                  nop
                  xori         t4, a2, 149
                  add          s11, t1, s7
                  beq          zero, sp, 292f
                  xor          zero, s2, t1
                  sub          a0, a0, s2
                  beq          s2, a7, 297f
                  slt          s2, t5, sp
289:              blt          t2, s4, 307f
                  lui          t3, 602689
                  auipc        s0, 1012055
292:              bgeu         t3, t2, 301f
                  xori         s8, s2, -45
                  xori         s0, a4, -234
                  sra          a4, s1, s7
                  add          ra, a6, t3
297:              srli         a2, s1, 9
                  xori         a6, ra, -346
                  blt          s8, s3, 306f
                  xori         t1, a1, 1669
301:              srli         a6, s7, 4
                  nop
                  and          t6, a1, t2
                  ori          t5, s10, 373
                  addi         s1, s11, -1925
306:              beq          t4, t6, 308f
307:              sra          s5, zero, t0
308:              slti         a0, t2, -1428
                  bgeu         s5, a7, 329f
                  slli         a4, t0, 22
                  slli         s10, t3, 19
                  slt          s2, s7, s1
                  sll          a3, gp, s1
                  blt          tp, s7, 326f
                  addi         t4, a1, 1
                  addi         s8, a5, 1437
                  beq          s5, s4, 323f
                  blt          s9, s10, 328f
                  srl          zero, t4, s10
                  bltu         s1, t0, 329f
                  add          s0, s3, t6
                  add          s5, s2, t3
323:              xori         s11, a6, -331
                  addi         s6, s0, 739
                  bgeu         s2, s10, 329f
326:              add          s11, a4, a6
                  bne          s0, a3, 329f
328:              or           s1, s4, a0
329:              srai         t5, ra, 12
                  andi         a4, s2, -554
                  lw           a5, 4(a7)
                  addi         s8, s7, -1078
                  addi         a1, ra, 1642
                  sltiu        a1, a5, 1663
                  ori          s4, t0, 491
                  addi         a7, a7, 12
                  or           t1, sp, t5
                  sub          s1, t0, s7
668:              addi x7, x15, 1
668:              jalr x7, x7, 0
sub_2:            bne          t4, s7, sub_2_stack_p
                  andi         zero, t3, -1568
                  srai         a3, t4, 28
                  srli         a0, t4, 26
sub_2_stack_p:    addi         a7, a7, -56
                  sll          a6, zero, ra
                  srl          ra, a7, s0
                  slti         gp, a6, -2029
                  sw           a5, 4(a7)
                  slti         s6, t4, 865
                  la           s9, region_1+1357 #start riscv_load_store_rand_instr_stream_1
                  srai         tp, t5, 2
                  sltiu        a5, t6, 1029
                  lbu          s5, 27(s9)
                  or           s11, s2, s10
                  lbu          t1, 20(s9)
                  auipc        t4, 373903
                  lbu          a4, 0(s9)
                  lb           t6, -63(s9)
                  lbu          s2, -18(s9)
                  srli         a1, a5, 2
                  lb           s8, 16(s9)
                  lhu          s4, -17(s9)
                  srli         tp, s1, 10
                  srli         s6, a4, 1
                  sb           a3, -34(s9)
                  sll          s8, a4, s8
                  ori          zero, s9, 1600
                  add          a4, a5, s5
                  sll          t5, a7, t1
                  lhu          a1, 55(s9)
                  sw           s1, -57(s9)
                  lb           t4, -2(s9)
                  or           s2, a1, a2
                  andi         s5, a0, -198
                  lb           s8, -21(s9)
                  sh           t4, -19(s9)
                  lbu          a6, -40(s9)
                  slti         s10, t2, -1653
                  lbu          s7, 1(s9)
                  sb           a6, -4(s9) #end riscv_load_store_rand_instr_stream_1
                  la           s10, region_1+844 #start load_store_instr_stream_3
                  la           s1, region_1+104 #start load_store_instr_stream_2
                  lhu          zero, -60(s10)
                  lhu          tp, 64(s10)
                  la           t1, region_1+1909 #start load_store_instr_stream_0
                  la           a1, region_1+1064 #start load_store_instr_stream_1
                  sb           t0, -56(s1)
                  lbu          a3, -16(t1)
                  lb           s0, -7(t1)
                  lb           t6, 25(s10)
                  lb           a4, -64(s1)
                  lbu          s11, 205(a1)
                  sh           t5, 160(s1)
                  sb           t6, 935(a1)
                  sb           s3, -41(s10)
                  lh           s2, -52(s10)
                  lhu          s6, -38(s10)
                  lb           a0, -59(s10)
                  lb           s8, 14(t1)
                  lh           a3, -56(s1)
                  sb           s4, -7(t1)
                  sh           a2, -884(a1)
                  lb           s8, 919(a1)
                  sw           s9, 724(a1)
                  sb           a2, 47(s1)
                  sh           s11, -1(t1)
                  lw           a4, 152(s1)
                  sb           s10, 1(s10)
                  sw           s0, -16(s10)
                  sb           s8, -1023(a1)
                  sh           gp, 60(s1) #end load_store_instr_stream_2
                  lbu          a0, 877(a1)
                  lh           s2, -24(s10) #end load_store_instr_stream_3
                  lb           s2, 2(t1)
                  sh           s10, -446(a1)
                  lhu          s3, 418(a1) #end load_store_instr_stream_1
                  sb           s5, -2(t1) #end load_store_instr_stream_0
                  la           a6, region_1+423 #start riscv_load_store_hazard_instr_stream_0
                  sb           t3, 14(a6)
                  lbu          a5, -13(a6)
                  sh           sp, -13(a6)
                  lb           s0, -13(a6)
                  add          s1, s1, ra
                  sh           t5, -13(a6)
                  sb           t0, 4(a6)
                  lb           s9, 4(a6)
                  lb           ra, 4(a6)
                  slti         zero, a6, -1863
                  sb           s11, 4(a6)
                  sb           gp, 4(a6)
                  add          gp, a5, t6
                  lb           a2, 10(a6)
                  sb           tp, 10(a6)
                  lb           s1, 1(a6) #end riscv_load_store_hazard_instr_stream_0
                  la           s8, region_1+1840 #start load_store_instr_stream_1
                  la           a0, region_1+1472 #start load_store_instr_stream_2
                  lbu          t1, -1(s8)
                  la           t5, region_1+823 #start load_store_instr_stream_0
                  lb           s1, 1(s8)
                  sb           s6, -11(s8)
                  sh           sp, 0(a0)
                  lh           ra, 11(t5)
                  sh           s7, 6(a0)
                  lbu          s9, 3(a0)
                  lh           a6, -8(s8)
                  lbu          a6, 15(a0)
                  sb           gp, -11(a0)
                  sh           s1, -43(t5)
                  lw           s9, 8(s8)
                  lbu          s5, -190(t5)
                  lb           ra, 11(s8)
                  sh           s8, -12(s8)
                  lhu          a1, -14(a0)
                  sb           s4, 16(s8)
                  lhu          t4, -135(t5)
                  lbu          s3, 4(a0)
                  sh           s4, 8(a0)
                  lbu          s9, -16(s8)
                  sb           a3, -243(t5)
                  sh           a5, -8(s8) #end load_store_instr_stream_1
                  sb           ra, 158(t5)
                  lb           a5, 3(a0) #end load_store_instr_stream_2
                  lbu          a5, 221(t5) #end load_store_instr_stream_0
                  la           s10, region_1+1560 #start riscv_load_store_rand_instr_stream_0
                  srl          s2, t3, a0
                  slt          t6, gp, a7
                  sb           t1, -26(s10)
                  lbu          s7, -83(s10)
                  lbu          s11, -139(s10)
                  sub          s11, a3, s11
                  lb           s1, -44(s10)
                  lb           s7, -223(s10)
                  sb           s11, -47(s10)
                  lbu          s4, -105(s10)
                  sb           s1, 109(s10)
                  lbu          a3, -214(s10)
                  slt          s0, gp, t1
                  lbu          t4, 177(s10)
                  sb           t0, -212(s10)
                  srai         s3, s6, 27
                  slt          s8, s4, s3
                  srli         gp, s0, 4
                  andi         a4, s6, 528
                  sltiu        a3, t2, -966
                  xor          s11, s8, t4
                  lw           a3, -136(s10)
                  sh           s8, 178(s10)
                  lhu          t2, 60(s10)
                  lui          s8, 994145
                  lb           t1, -245(s10)
                  sb           a4, -101(s10)
                  lbu          s2, -165(s10)
                  sra          t6, gp, a4
                  lbu          t5, -105(s10)
                  lb           a1, 31(s10)
                  lhu          s3, 34(s10)
                  lhu          s8, -192(s10)
                  xor          s6, t2, tp
                  lbu          s1, -33(s10)
                  addi         a2, s6, 1058
                  nop
                  lbu          t6, 59(s10)
                  lw           a6, -108(s10)
                  lbu          s9, 33(s10)
                  sb           sp, -189(s10)
                  or           s0, t0, t3
                  lw           tp, 56(s10) #end riscv_load_store_rand_instr_stream_0
                  la           t4, region_0+1706 #start riscv_load_store_hazard_instr_stream_1
                  lhu          t2, -90(t4)
                  sb           s7, -1127(t4)
                  lbu          s3, 94(t4)
                  sh           s0, 94(t4)
                  lbu          s3, -1477(t4)
                  lbu          s0, -838(t4)
                  xori         a2, a2, -915
                  sb           s5, -838(t4)
                  lw           t1, -838(t4)
                  sra          ra, s1, a2
                  lw           tp, -838(t4)
                  sub          s7, s10, sp
                  sw           s1, -838(t4)
                  lhu          s10, -424(t4)
                  lbu          zero, -587(t4)
                  lbu          s11, -587(t4)
                  sb           s9, -587(t4)
                  lhu          t6, 244(t4)
                  sb           s3, 244(t4)
                  add          a6, s1, a0
                  lhu          s7, 244(t4) #end riscv_load_store_hazard_instr_stream_1
                  la           a0, region_1+743 #start riscv_load_store_hazard_instr_stream_2
                  lh           s8, -57(a0)
                  lh           a6, -57(a0)
                  lh           s3, -57(a0)
                  sb           s2, -57(a0)
                  lhu          s1, -57(a0)
                  lbu          t2, -57(a0)
                  sh           s4, -57(a0)
                  lbu          s11, -57(a0)
                  lhu          gp, -57(a0)
                  srai         a5, sp, 29
                  sb           a3, -57(a0)
                  sltu         t3, s2, s9
                  sh           s11, -57(a0)
                  lbu          t2, -57(a0)
                  lui          t6, 674684
                  ori          s0, a4, -193
                  slli         s3, a3, 29
                  lbu          s2, 50(a0)
                  srl          s0, t2, a0
                  srai         s5, s11, 19
                  sb           sp, -44(a0)
                  sb           s3, -44(a0)
                  lb           s2, -44(a0) #end riscv_load_store_hazard_instr_stream_2
                  la           s9, region_1+117 #start riscv_load_store_rand_instr_stream_2
                  or           s0, a3, sp
                  sltiu        s3, a7, -990
                  and          a1, s4, t0
                  lb           s4, -28(s9)
                  sh           a1, -15(s9)
                  nop
                  lb           s11, -26(s9)
                  srli         s7, a2, 6
                  slli         a6, s10, 25
                  andi         t2, a6, 1236
                  lbu          s1, 52(s9)
                  nop
                  slli         t5, s3, 14
                  auipc        a6, 930462
                  sb           t3, -17(s9)
                  sh           a7, 43(s9)
                  sb           s2, 6(s9)
                  andi         a4, s9, 191
                  auipc        a3, 382905
                  sh           s6, 45(s9)
                  srli         s0, s5, 3
                  lbu          s7, -27(s9)
                  lh           s2, 39(s9)
                  lb           a6, -38(s9)
                  sltu         s2, t5, zero
                  add          tp, t6, s5
                  sb           a6, 32(s9)
                  lhu          s10, 27(s9)
                  slt          a2, a1, s5
                  lbu          tp, -11(s9)
                  lb           zero, -27(s9)
                  andi         a0, t1, 1776
                  lh           a2, -55(s9)
                  lw           t1, -37(s9)
                  lb           s2, -11(s9)
                  srl          a5, s9, a0
                  lb           zero, 30(s9)
                  lbu          t3, -4(s9)
                  slt          s1, sp, s4
                  sb           a6, -40(s9)
                  xor          a2, a4, t2
                  slt          t2, s7, s4
                  sub          s3, sp, s6
                  sb           s4, 51(s9)
                  sb           t0, 35(s9)
                  lbu          s1, -1(s9)
                  lb           a2, 50(s9)
                  lhu          tp, 37(s9)
                  lbu          s8, -38(s9)
                  lbu          t4, 14(s9) #end riscv_load_store_rand_instr_stream_2
                  la           s8, region_1+773 #start load_store_instr_stream_0
                  la           gp, region_1+1460 #start load_store_instr_stream_1
                  la           t3, region_1+684 #start load_store_instr_stream_2
                  lw           s5, 83(s8)
                  sb           a4, -155(t3)
                  lh           s7, 125(s8)
                  sb           s2, -181(t3)
                  sw           a4, -60(gp)
                  la           s10, region_1+1394 #start load_store_instr_stream_3
                  sh           s9, 125(s8)
                  lw           s6, -58(s10)
                  lb           t2, 137(t3)
                  lbu          a2, -93(t3)
                  lb           s1, -33(gp)
                  lb           t2, -204(s8)
                  sh           t0, 52(s10)
                  sb           t3, 45(gp)
                  sh           s11, -64(t3)
                  sb           zero, -143(s10)
                  lw           s4, 75(s8)
                  lb           s5, -210(t3)
                  lbu          s9, 199(s10)
                  lh           tp, 44(gp)
                  sb           s0, 64(gp)
                  lb           s1, -247(s8)
                  lbu          s0, -89(s10)
                  lhu          s9, -246(t3) #end load_store_instr_stream_2
                  lh           a6, -62(gp) #end load_store_instr_stream_1
                  lb           s2, 75(s10) #end load_store_instr_stream_3
                  sb           s0, -92(s8) #end load_store_instr_stream_0
                  sub          s0, t0, a0
                  beq          a7, s6, 4f
                  blt          ra, sp, 14f
                  xori         a1, s9, 1106
4:                sub          a0, a3, a0
                  xori         zero, s7, -1618
                  xori         t1, s10, -905
                  srli         a2, a2, 11
                  xor          s3, a1, a6
                  auipc        t5, 196390
                  bge          t5, a1, 18f
                  auipc        a4, 890463
                  bgeu         a1, s3, 30f
                  srli         t4, a4, 6
14:               andi         t1, a5, -562
                  slt          s0, t0, s3
                  sra          gp, t5, s10
                  slti         s10, s3, -1731
18:               srai         ra, s4, 18
                  bgeu         a6, t6, 35f
                  andi         t1, t0, -1835
                  and          zero, a6, t5
                  blt          s9, a5, 41f
                  xori         a2, s7, 759
                  slti         s4, s6, -1098
                  addi         t2, a4, 1938
                  bge          a6, a7, 41f
                  beq          t4, t6, 43f
                  or           a3, sp, gp
                  slli         gp, a6, 20
30:               xor          a4, a2, a3
                  bltu         sp, s10, 47f
                  bltu         a1, t6, 40f
                  xori         a4, s11, 1468
                  add          s4, t0, s4
35:               slli         s1, a1, 9
                  add          s7, s1, tp
                  addi         a4, a0, 619
                  bltu         t2, gp, 47f
                  sub          tp, s2, t4
40:               addi         t4, s10, 536
41:               xor          t3, gp, s4
                  add          a5, t6, s7
43:               sll          t1, t4, s4
                  sltiu        a1, t5, 407
                  sltu         t5, ra, a3
                  nop
47:               or           t1, s1, t2
                  beq          tp, a5, 50f
                  addi         a6, s2, -441
50:               srl          s5, ra, s8
                  bne          a7, t1, 53f
                  ori          s5, s6, 578
53:               srl          t5, s9, s5
                  ori          s10, t0, 263
                  sub          s7, zero, s11
                  slti         s5, t4, -1287
                  bgeu         t3, s9, 60f
                  beq          s1, s7, 76f
                  sub          a4, t4, a5
60:               ori          s6, a0, 449
                  beq          a3, t2, 80f
                  andi         a3, s0, 1168
                  bltu         s1, s10, 64f
64:               sub          t4, s8, s1
                  beq          a3, s0, 75f
                  ori          a2, a2, 720
                  nop
                  add          s6, a2, t1
                  andi         t1, t1, -1121
                  slli         t4, s9, 22
                  lui          a0, 982158
                  slti         s1, a4, 1188
                  bne          s7, s0, 85f
                  andi         a2, s5, -470
75:               sltu         s1, s8, gp
76:               srli         t4, sp, 1
                  auipc        s6, 585113
                  slt          t3, t3, s11
                  xori         s1, s6, 1832
80:               slli         s10, t2, 15
                  lui          a1, 533442
                  blt          t4, t2, 88f
                  or           t4, a4, a2
                  addi         s8, a3, -1125
85:               auipc        s1, 836453
                  auipc        s1, 1048181
                  xori         s8, t6, -945
88:               and          s6, a7, s7
                  xori         a1, s0, -1457
                  or           a6, a6, a6
                  blt          zero, s4, 93f
                  slt          ra, gp, zero
93:               bltu         s10, sp, 95f
                  bge          s9, t5, 107f
95:               nop
                  bltu         gp, a5, 100f
                  xor          s9, zero, t1
                  xori         t4, a1, -938
                  or           t1, a0, t6
100:              sltu         t5, s2, s6
                  auipc        s2, 968421
                  sltiu        s4, a3, 1155
                  add          s0, s10, a7
                  blt          s11, s9, 108f
                  add          s8, a1, a6
                  slti         s4, sp, -1384
107:              srai         t5, gp, 3
108:              and          s10, a1, s5
                  sll          s3, t4, t3
                  sltu         t1, s10, s1
                  and          s8, t5, a7
                  lui          t2, 873010
                  nop
                  auipc        s10, 435932
                  or           a6, tp, t1
                  bne          s10, a7, 129f
                  slli         a1, s10, 1
                  ori          t4, t1, -67
                  slti         gp, ra, 289
                  or           a3, t3, s3
                  slt          s4, s4, gp
                  auipc        s1, 974234
                  lui          s2, 262837
                  or           s10, t5, a6
                  sltiu        t6, s8, 1902
                  bgeu         s9, t1, 127f
127:              and          t6, s2, s6
                  slt          t6, s4, t5
129:              sra          t6, a7, s6
                  sub          ra, s9, tp
                  andi         zero, s0, 475
                  andi         t5, s11, -1353
                  nop
                  andi         ra, a1, -355
                  bltu         gp, s1, 136f
136:              srai         t5, a5, 17
                  srl          s1, ra, t1
                  sltiu        a2, a7, 2042
                  slt          t1, gp, t4
                  bgeu         t0, ra, 152f
                  sltu         a2, a1, sp
                  bne          s5, a3, 144f
                  add          s0, t6, s5
144:              bge          t2, s1, 145f
145:              andi         a6, t2, -92
                  sra          a2, s9, s6
                  xori         tp, ra, 208
                  add          s5, s11, sp
                  add          t5, a0, s2
                  auipc        s10, 932935
                  xor          t4, a4, s11
152:              xori         s10, a5, -2047
                  sltu         s0, a3, s11
                  slt          s9, a0, t2
                  slti         zero, a4, -162
                  sll          a3, s8, t6
                  nop
                  bgeu         s7, s0, 160f
                  ori          a5, tp, -183
160:              ori          a6, s4, 835
                  bgeu         a2, a6, 173f
                  and          a6, s1, a4
                  sltiu        s9, t6, 1049
                  andi         tp, s8, 375
                  or           s3, s1, s0
                  xori         s6, s6, 1696
                  xori         s0, t4, -1055
                  slli         s8, t2, 23
                  slti         zero, t3, 151
                  xori         a2, a7, -854
                  or           tp, a1, s4
                  sltu         s0, s7, t6
173:              bgeu         t3, t2, 179f
                  or           a5, a3, t3
                  srli         s2, tp, 8
                  sltu         s3, a6, s6
                  blt          t5, t6, 186f
                  bne          s10, a7, 194f
179:              sltiu        s0, s5, 1092
                  bge          s4, a7, 190f
                  andi         t1, a3, 1274
                  nop
                  srl          a5, s10, s5
                  add          s6, s10, a4
                  nop
186:              and          t1, t5, a0
                  and          t3, t5, a2
                  ori          t4, t3, 1270
                  sra          s4, sp, t3
190:              and          s4, s0, t3
                  auipc        t2, 757235
                  lui          s5, 1033245
                  addi         t1, s3, -1582
194:              slti         s9, zero, 260
                  nop
                  sll          s4, gp, s10
                  srli         s8, s2, 11
                  sub          a3, t5, t1
                  xor          t5, a4, s4
                  or           ra, s4, s0
                  addi         s5, a0, 310
                  srai         s4, a4, 12
                  slt          gp, a6, s2
                  sra          s4, s8, t5
                  nop
                  sub          s6, ra, a6
                  blt          a0, a5, 219f
                  slli         a6, s1, 6
                  slti         t2, t6, -596
                  bge          t0, s11, 222f
                  slti         s0, a6, 678
                  beq          a2, t1, 216f
                  xori         a4, s3, -1125
                  sltiu        tp, s3, -1318
                  andi         s8, sp, 1431
216:              bgeu         t1, a3, 224f
                  ori          s11, s2, -1030
                  bltu         a2, sp, 237f
219:              bltu         s1, t5, 237f
                  sra          t1, t1, t4
                  bne          s11, t0, 234f
222:              bge          s2, a1, 225f
                  sltu         t6, t3, s2
224:              slli         s0, a1, 10
225:              srai         s5, t2, 23
                  and          tp, t5, s6
                  srl          s5, gp, s5
                  and          t5, s4, s4
                  srai         a5, s1, 29
                  or           t5, t0, s1
                  xori         s2, a1, 1251
                  andi         t1, s10, -1847
                  srl          s8, s9, t1
234:              sub          ra, a3, t2
                  slli         a2, s0, 6
                  srli         s9, ra, 1
237:              xori         a6, t2, -1954
                  srai         a0, a4, 21
                  lui          s11, 258504
                  sub          t3, s8, t0
                  ori          t3, s1, -1198
                  srli         s9, s3, 1
                  xori         zero, s3, -840
                  ori          tp, t0, -54
                  bgeu         a3, t0, 246f
246:              xor          a3, s6, a2
                  bge          gp, t6, 249f
                  lui          a2, 929526
249:              slt          tp, s7, s4
                  srli         t5, ra, 1
                  nop
                  lui          t1, 439413
                  lui          t4, 582325
                  or           a1, s2, a3
                  beq          a4, s4, 273f
                  add          t5, s8, s0
                  add          s9, t5, t2
                  bge          tp, s7, 271f
                  lui          t6, 207319
                  bne          tp, gp, 268f
                  sub          a3, zero, t5
                  sub          s2, zero, a5
                  nop
                  add          t2, s7, s10
                  srli         s3, a2, 14
                  sll          zero, s1, tp
                  sra          s10, a1, sp
268:              sltu         t5, sp, a5
                  and          t5, s6, a1
                  auipc        t4, 10480
271:              xori         s2, a2, -460
                  slt          gp, tp, s2
273:              bgeu         s5, tp, 277f
                  slti         a1, s4, 1220
                  slli         s6, t5, 5
                  slt          s8, s2, s6
277:              sub          s5, a2, s9
                  bne          a6, t3, 293f
                  srl          s11, s10, s8
                  sll          t3, s0, a7
                  bne          zero, a2, 284f
                  and          a0, t1, s4
                  slt          a4, s9, zero
284:              and          s6, s9, s2
                  andi         t2, ra, 595
                  nop
                  ori          a4, t0, -1007
                  bgeu         s2, tp, 307f
                  bltu         s9, a6, 291f
                  and          tp, s11, t1
291:              sltu         s6, s6, s2
                  and          s1, s7, a2
293:              bgeu         t6, s4, 309f
                  sra          a3, a3, s6
                  auipc        a0, 958151
                  addi         s2, s1, 735
                  slti         a5, a4, 478
                  slti         t4, a4, -1268
                  addi         zero, t0, -1192
                  sub          s10, s5, a4
                  sra          s2, t5, t1
                  addi         a0, s7, 1321
                  srl          s11, a3, t4
                  beq          a3, ra, 306f
                  bltu         a5, a2, 307f
306:              slli         s2, sp, 21
307:              bgeu         s6, s7, 308f
308:              bgeu         a7, a4, 324f
309:              slti         s11, t2, 402
                  andi         s8, zero, 242
                  or           s5, tp, a7
                  xori         a2, s5, 1479
                  xor          a0, a5, s3
                  slli         s8, t5, 13
                  slt          s2, a1, s0
                  andi         s1, s7, 996
                  and          t1, a0, a6
                  sltu         t2, gp, s7
                  sltiu        a1, s3, 1823
                  addi         a5, t5, 795
                  srai         a1, s0, 18
                  slt          s7, t4, zero
                  add          s10, a2, a2
324:              auipc        s1, 684646
                  andi         t2, s1, -248
                  lw           a5, 4(a7)
                  slt          tp, a1, t6
                  addi         a7, a7, 56
                  xor          a3, a0, t4
625:              addi x25, x15, 0
625:              jalr x25, x25, 0
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
                  addi x17, x17, -128
                  sw  x1, 4(x17)
                  sw  x2, 8(x17)
                  sw  x3, 12(x17)
                  sw  x4, 16(x17)
                  sw  x5, 20(x17)
                  sw  x6, 24(x17)
                  sw  x7, 28(x17)
                  sw  x8, 32(x17)
                  sw  x9, 36(x17)
                  sw  x10, 40(x17)
                  sw  x11, 44(x17)
                  sw  x12, 48(x17)
                  sw  x13, 52(x17)
                  sw  x14, 56(x17)
                  sw  x15, 60(x17)
                  sw  x16, 64(x17)
                  sw  x17, 68(x17)
                  sw  x18, 72(x17)
                  sw  x19, 76(x17)
                  sw  x20, 80(x17)
                  sw  x21, 84(x17)
                  sw  x22, 88(x17)
                  sw  x23, 92(x17)
                  sw  x24, 96(x17)
                  sw  x25, 100(x17)
                  sw  x26, 104(x17)
                  sw  x27, 108(x17)
                  sw  x28, 112(x17)
                  sw  x29, 116(x17)
                  sw  x30, 120(x17)
                  sw  x31, 124(x17)
                  add x5, x17, zero
                  csrr x23, 0x300 # MSTATUS
                  csrr x23, 0x342 # MCAUSE
                  srli x23, x23, 31
                  bne x23, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x23, 0x341 # MEPC
                  csrr x23, 0x342 # MCAUSE
                  li x20, 0x3 # BREAKPOINT
                  beq x23, x20, ebreak_handler
                  li x20, 0x8 # ECALL_UMODE
                  beq x23, x20, ecall_handler
                  li x20, 0x9 # ECALL_SMODE
                  beq x23, x20, ecall_handler
                  li x20, 0xb # ECALL_MMODE
                  beq x23, x20, ecall_handler
                  li x20, 0x1
                  beq x23, x20, instr_fault_handler
                  li x20, 0x5
                  beq x23, x20, load_fault_handler
                  li x20, 0x7
                  beq x23, x20, store_fault_handler
                  li x20, 0xc
                  beq x23, x20, pt_fault_handler
                  li x20, 0xd
                  beq x23, x20, pt_fault_handler
                  li x20, 0xf
                  beq x23, x20, pt_fault_handler
                  li x20, 0x2 # ILLEGAL_INSTRUCTION
                  beq x23, x20, illegal_instr_handler
                  csrr x20, 0x343 # MTVAL
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
                  add x17, x5, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
                  mret

load_fault_handler:
                  add x17, x5, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
                  mret

store_fault_handler:
                  add x17, x5, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
                  mret

ebreak_handler:   
                  csrr  x23, 0x341
                  addi  x23, x23, 4
                  csrw  0x341, x23
                  add x17, x5, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
                  mret

illegal_instr_handler:
                  csrr  x23, 0x341
                  addi  x23, x23, 4
                  csrw  0x341, x23
                  add x17, x5, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x23, 0x300 # MSTATUS;
                  csrr  x23, 0x304 # MIE;
                  csrr  x23, 0x344 # MIP;
                  csrrc x23, 0x344, x23 # MIP;
                  add x17, x5, zero
                  lw  x1, 4(x17)
                  lw  x2, 8(x17)
                  lw  x3, 12(x17)
                  lw  x4, 16(x17)
                  lw  x5, 20(x17)
                  lw  x6, 24(x17)
                  lw  x7, 28(x17)
                  lw  x8, 32(x17)
                  lw  x9, 36(x17)
                  lw  x10, 40(x17)
                  lw  x11, 44(x17)
                  lw  x12, 48(x17)
                  lw  x13, 52(x17)
                  lw  x14, 56(x17)
                  lw  x15, 60(x17)
                  lw  x16, 64(x17)
                  lw  x17, 68(x17)
                  lw  x18, 72(x17)
                  lw  x19, 76(x17)
                  lw  x20, 80(x17)
                  lw  x21, 84(x17)
                  lw  x22, 88(x17)
                  lw  x23, 92(x17)
                  lw  x24, 96(x17)
                  lw  x25, 100(x17)
                  lw  x26, 104(x17)
                  lw  x27, 108(x17)
                  lw  x28, 112(x17)
                  lw  x29, 116(x17)
                  lw  x30, 120(x17)
                  lw  x31, 124(x17)
                  addi x17, x17, 128
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
