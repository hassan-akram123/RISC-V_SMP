.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x7, h0_start
jalr x0, x7, 0
h0_start:
                  li x2, 0x40000100
                  csrw 0x301, x2
kernel_sp:        
                  la x13, kernel_stack_end

trap_vec_init:    
                  la x2, mtvec_handler
                  ori x2, x2, 0
                  csrw 0x305, x2 # MTVEC

mepc_setup:       
                  la x2, init
                  csrw 0x341, x2

custom_csr_setup: 
                  nop

init_machine_mode:
                  li x2, 0x1800
                  csrw 0x300, x2 # MSTATUS
                  mret
init:             
                  li x0, 0x0
                  li x1, 0xd71b0f90
                  li x2, 0xf85f1613
                  li x3, 0x8
                  li x4, 0x9
                  li x5, 0xb793bf7f
                  li x6, 0x5
                  li x7, 0xf392918d
                  li x8, 0x9f6399b7
                  li x9, 0x0
                  li x10, 0x80000000
                  li x11, 0xaa21ce17
                  li x12, 0x8
                  li x14, 0xcdaa80d4
                  li x15, 0x80000000
                  li x16, 0x7
                  li x17, 0xf70d5484
                  li x19, 0x1a7f9570
                  li x20, 0xb
                  li x21, 0x80000000
                  li x22, 0x1
                  li x23, 0x9ea45ea
                  li x24, 0x0
                  li x25, 0x80000000
                  li x26, 0x0
                  li x27, 0x0
                  li x28, 0x3eff50db
                  li x29, 0x8ddcea4b
                  li x30, 0xf17cce90
                  li x31, 0xbe6c9353
                  la x18, user_stack_end
main:             la           s9, region_0+1220 #start load_store_instr_stream_1
                  sb           a6, -124(s9)
                  lb           s11, 209(s9)
                  la           s5, region_0+96 #start load_store_instr_stream_0
                  sb           s11, 1(s5)
                  la           a5, region_0+1494 #start load_store_instr_stream_2
                  sb           s7, 9(s5)
                  sb           a4, -11(s5)
                  sw           s0, -74(a5)
                  sb           s4, 173(s9)
                  lbu          t1, 9(s5)
                  lbu          t4, 128(a5)
                  lbu          s10, -57(s9)
                  sb           a7, -2(s5)
                  lb           gp, -2(s9)
                  sb           t2, 185(a5)
                  sb           s5, -11(s9)
                  lb           s7, 3(s5)
                  sb           s7, 101(s9)
                  lb           t4, 86(a5)
                  sb           s6, -88(s9)
                  lbu          s1, -13(a5)
                  lb           zero, -37(a5)
                  lhu          s3, -12(s5)
                  sw           s5, -16(s5)
                  lb           a6, 131(s9) #end load_store_instr_stream_1
                  lh           t3, -72(a5) #end load_store_instr_stream_2
                  lbu          s0, 9(s5)
                  sb           s7, -7(s5) #end load_store_instr_stream_0
                  la           s8, region_1+1787 #start riscv_load_store_hazard_instr_stream_0
                  lb           s4, 14(s8)
                  sb           t0, 0(s8)
                  sub          t6, s1, a5
                  sh           s8, 5(s8)
                  lw           ra, -7(s8)
                  sb           a6, 9(s8)
                  sltu         a2, s10, t1
                  xor          gp, s0, zero
                  lbu          a2, -9(s8)
                  lhu          ra, -13(s8)
                  lb           t0, -13(s8)
                  lh           a6, 3(s8)
                  lhu          a4, -11(s8)
                  lh           t1, -3(s8)
                  sb           t2, -2(s8)
                  slti         t4, t4, 1282
                  lbu          a4, 4(s8)
                  lb           s3, 10(s8) #end riscv_load_store_hazard_instr_stream_0
                  la           s1, region_0+1367 #start load_store_instr_stream_0
                  la           gp, region_0+107 #start load_store_instr_stream_1
                  lh           s9, -35(gp)
                  lb           s8, -58(s1)
                  lh           s6, 7(gp)
                  sb           t6, 62(gp)
                  lb           a6, 46(s1)
                  sb           s0, -26(s1)
                  sb           t6, 10(gp)
                  lbu          s5, 64(s1)
                  lb           s11, -12(gp)
                  lh           s11, 1(gp)
                  sb           a0, 18(s1)
                  sb           s0, 48(s1)
                  sb           ra, 64(gp)
                  lw           s6, -51(s1)
                  lb           t5, 20(gp)
                  sb           a6, 31(s1)
                  sb           a7, -5(gp) #end load_store_instr_stream_1
                  lb           a2, 40(s1)
                  lbu          a5, 57(s1) #end load_store_instr_stream_0
                  la           s6, region_1+71 #start riscv_load_store_rand_instr_stream_1
                  sh           t0, 179(s6)
                  lb           t0, 14(s6)
                  lb           s5, -26(s6)
                  sb           s7, 62(s6)
                  srli         a1, a6, 20
                  lb           ra, 60(s6)
                  lhu          t1, 33(s6)
                  lb           ra, 186(s6)
                  srl          a7, s5, a4
                  sub          a2, s4, s7
                  or           t0, a1, s0
                  or           a1, s10, s3
                  sh           zero, 59(s6)
                  sltu         s0, tp, t1
                  lhu          a6, 231(s6)
                  xor          a2, a0, a5
                  lbu          s0, 243(s6)
                  lbu          t4, 25(s6)
                  lb           s10, 240(s6)
                  lb           t0, 132(s6)
                  lb           t0, 251(s6)
                  xor          a7, s2, s10
                  srai         t4, t6, 5
                  slt          s0, zero, s11
                  sh           s7, 251(s6)
                  xor          a6, s10, a0
                  lbu          sp, 34(s6)
                  lw           gp, -51(s6)
                  xor          s8, t1, t5
                  sb           s10, 190(s6)
                  sb           s11, 250(s6)
                  lb           t4, 233(s6)
                  sltu         t6, t0, s3
                  xor          s1, s0, t0
                  sb           s4, 243(s6)
                  lui          s0, 286434
                  xor          t5, tp, t6
                  srai         s11, s9, 2
                  xori         ra, s9, -1287
                  slti         a2, tp, 1027
                  srl          s5, a3, a5
                  sb           sp, 188(s6)
                  lw           t5, 65(s6)
                  slt          s4, s6, s2
                  slti         s1, a2, 372
                  lbu          s1, -2(s6)
                  lbu          a5, 88(s6) #end riscv_load_store_rand_instr_stream_1
                  la           a1, region_0+830 #start riscv_load_store_rand_instr_stream_0
                  lh           s10, 16(a1)
                  auipc        t0, 530927
                  sll          t1, gp, ra
                  srai         s11, s8, 9
                  sb           s11, -7(a1)
                  sh           s0, -10(a1)
                  add          t3, gp, t3
                  sh           s4, 14(a1)
                  lhu          s4, 8(a1)
                  sb           gp, 7(a1)
                  lbu          a7, -1(a1)
                  auipc        t3, 436122
                  sub          t1, t2, t5
                  sltu         a6, t5, t5
                  sb           t1, -11(a1)
                  lhu          t0, 2(a1)
                  and          t5, tp, a7
                  auipc        s6, 311668
                  sh           s6, -8(a1)
                  lb           zero, -3(a1)
                  lb           s8, -8(a1)
                  add          a6, s11, a7
                  or           t5, ra, s10
                  ori          a0, s2, 1017
                  add          s9, s10, s1
                  sb           a5, 4(a1)
                  auipc        t4, 310436
                  lb           s3, 12(a1)
                  sb           t0, 9(a1)
                  sb           t0, 11(a1)
                  sw           gp, 6(a1)
                  sra          a6, a7, s11
                  lb           a4, 1(a1)
                  sra          s8, s0, t5
                  lbu          a0, 8(a1)
                  lh           a4, -4(a1)
                  sb           t3, 3(a1)
                  sb           a0, -9(a1)
                  lui          zero, 147855
                  lb           s7, 10(a1)
                  and          ra, t3, s6
                  lbu          t6, -10(a1)
                  add          a2, s6, sp
                  slli         tp, t2, 19
                  xori         a2, a1, 1805
                  lbu          t6, -13(a1)
                  slli         t5, s5, 9
                  lhu          a2, -12(a1)
                  sb           s6, -14(a1)
                  lb           t1, -8(a1)
                  sb           s11, -6(a1) #end riscv_load_store_rand_instr_stream_0
                  sub          gp, s3, s10
                  sub          s6, gp, t6
                  add          s1, s10, t6
                  slt          t4, s0, zero
                  xori         a6, t2, 1470
                  addi         ra, t6, 678
                  or           zero, a3, a3
                  nop
                  add          t3, s2, a2
                  xori         a4, t0, -1833
                  sra          ra, a7, s8
                  andi         s11, t0, -750
                  ori          s7, a3, -313
                  add          a0, sp, s1
                  and          s9, s2, s1
                  addi         t6, s2, -1003
                  bltu         t2, sp, 19f
                  addi         t6, ra, -189
                  auipc        t6, 468383
19:               sltu         s6, s8, s3
                  add          a0, s5, s9
                  blt          s8, a3, 39f
                  slli         t4, s8, 24
                  sltiu        a6, s5, -959
                  ori          sp, a6, -992
                  sub          sp, a6, sp
                  addi         a4, s8, -1450
                  bge          t1, gp, 43f
                  and          t1, ra, a2
                  sltu         s6, a7, a7
                  add          s9, s2, ra
                  auipc        s6, 327510
                  la           sp, region_0+1978 #start riscv_load_store_hazard_instr_stream_1
                  lui          a6, 79653
                  sh           a3, -46(sp)
                  lhu          a6, -46(sp)
                  sb           s8, -46(sp)
                  sb           ra, -46(sp)
                  lw           a4, -46(sp)
                  sb           t3, -42(sp)
                  lh           a2, -42(sp)
                  lhu          s7, -42(sp)
                  lh           s5, 8(sp)
                  lh           zero, -34(sp) #end riscv_load_store_hazard_instr_stream_1
                  and          s9, sp, zero
                  srai         s5, tp, 15
                  ori          t4, a2, -1437
                  srl          s3, s11, sp
                  sub          s7, s0, t2
                  addi         a7, gp, -1107
                  blt          t3, s5, 58f
39:               slt          a2, s9, a4
                  sltu         s10, s4, a2
                  ori          a6, a3, 620
                  ori          s11, s1, 160
43:               auipc        a1, 565681
                  nop
                  xor          a4, t0, a5
                  bltu         a0, a3, 59f
                  xor          s1, a6, t1
                  srai         gp, a7, 29
                  ori          sp, a7, 323
                  sltu         s9, a2, s6
                  sra          a4, t0, t2
                  slti         a4, s0, -808
                  srl          s11, a3, a4
                  sra          a0, s0, s1
                  srai         a7, t5, 30
                  or           s6, s9, s7
                  slti         s7, s4, 616
58:               addi         t3, a4, 1509
59:               sll          s5, s9, t2
                  beq          s7, a6, 65f
                  blt          a5, a5, 70f
                  add          sp, a1, t6
                  beq          s5, s9, 82f
                  ori          t0, s5, 209
65:               andi         t5, sp, -324
                  addi         s0, s5, -762
                  slti         s6, t6, 715
                  blt          tp, s2, 79f
                  auipc        a2, 369125
70:               auipc        zero, 699131
                  xori         s8, s6, -1403
                  srai         s6, t4, 21
                  nop
                  bne          a3, s0, 94f
                  bne          a1, s3, 78f
                  sll          t4, tp, t0
                  srli         t3, s3, 31
78:               auipc        ra, 975210
79:               sub          tp, a5, t1
                  sra          gp, s9, t3
                  xor          a6, s2, a5
82:               and          s9, a3, t3
                  bltu         s5, s5, 87f
                  auipc        s7, 987869
                  sll          s10, a6, a0
                  andi         tp, a0, 1214
87:               addi         s9, a6, -558
                  auipc        a2, 62054
                  bgeu         t4, a4, 94f
                  ori          s5, a4, 1437
                  add          a6, a5, s8
                  auipc        s1, 935136
                  and          s0, s1, s11
94:               bgeu         a0, s1, 110f
                  bne          sp, s1, 111f
                  addi         s3, t5, 678
                  srli         t4, s1, 10
                  auipc        s10, 412551
                  add          a7, zero, a0
                  nop
                  addi         t1, s3, -1737
                  blt          s9, sp, 106f
                  lui          sp, 285840
                  slti         s3, tp, -693
                  xori         a6, a3, -344
106:              or           a0, zero, sp
                  beq          a2, a5, 117f
                  sll          ra, a2, gp
                  srl          a5, s10, s0
110:              nop
111:              srli         a2, t1, 14
                  bgeu         s3, a3, 128f
                  bge          s11, a1, 130f
                  add          s8, t2, a0
                  srai         s5, gp, 6
                  lui          s8, 559507
117:              and          t0, zero, t1
                  sltiu        t1, s1, 174
                  xor          zero, a6, gp
                  srai         t0, sp, 30
                  andi         tp, zero, -643
                  srai         a7, a2, 0
                  srl          s3, t5, s6
                  andi         a7, sp, 1283
                  bne          a5, s9, 134f
                  sll          a6, t3, s9
                  sll          a7, a6, t2
128:              blt          a3, a4, 133f
                  beq          a1, t2, 130f
130:              bltu         s7, a6, 138f
                  or           s9, t4, zero
                  blt          t6, a7, 149f
133:              xor          a6, a5, a2
134:              nop
                  add          a6, sp, t2
                  xor          a0, s7, sp
                  sltu         zero, t5, t6
138:              slli         s9, s5, 14
                  blt          s4, t5, 150f
                  srai         t1, zero, 23
                  lui          t4, 932627
                  addi         sp, s4, -712
                  sra          s7, t6, a0
                  bltu         s1, zero, 148f
                  addi         zero, s8, -2000
                  srai         zero, t3, 12
                  slt          t6, a7, s8
148:              and          a6, s7, a1
149:              or           s1, sp, t0
150:              blt          s9, a3, 159f
                  srai         t0, s5, 20
                  srl          a4, s11, a2
                  sltu         t1, t2, s9
                  sra          sp, ra, t4
                  ori          s9, s8, 828
                  nop
                  bne          zero, s8, 159f
                  addi         s1, t0, 1277
159:              sltiu        s7, s9, -208
                  slt          t3, s5, s11
                  or           t1, t5, s9
                  bgeu         s9, a6, 177f
                  slli         s1, s10, 30
                  bltu         a4, ra, 169f
                  and          s11, s7, s9
                  blt          s1, a7, 183f
                  lui          s7, 908641
                  nop
169:              auipc        s1, 607705
                  srli         t0, s5, 5
                  srli         s11, a5, 10
                  sub          s1, gp, a7
                  blt          t3, t3, 188f
                  srai         s4, s11, 28
                  auipc        a2, 853557
                  xori         t1, s6, 1514
177:              sltu         a0, s4, s1
                  beq          s8, s11, 182f
                  bne          t1, a5, 190f
                  add          tp, sp, s6
                  srli         s7, s4, 6
182:              srai         s7, t1, 2
183:              xor          t1, a2, t2
                  bne          s7, t3, 204f
                  slt          a2, t1, t6
                  blt          tp, s11, 202f
                  andi         t6, ra, 819
188:              add          s6, s0, a7
                  bne          s3, a0, 193f
190:              beq          s3, a6, 199f
                  srli         sp, s4, 25
                  srai         s9, s0, 3
193:              sll          s5, t2, t3
                  beq          s2, t2, 199f
                  xori         s0, s1, -862
                  bne          sp, t2, 215f
                  blt          a4, t6, 201f
                  xor          s11, a5, s11
199:              srli         s3, s3, 15
                  slli         s10, s3, 28
201:              sltu         gp, t5, t3
202:              lui          t4, 617030
                  bne          t2, s5, 208f
204:              and          zero, t6, s10
                  sltu         s9, t4, a2
                  beq          s5, tp, 222f
                  srli         s7, a3, 3
208:              sltu         ra, t6, s9
                  nop
                  bgeu         t1, a4, 223f
                  andi         s7, s11, 641
                  or           zero, t2, ra
                  srai         t0, t4, 22
                  bltu         a0, tp, 217f
215:              bltu         t4, sp, 218f
                  andi         s5, t2, 315
217:              xor          gp, tp, s1
218:              or           s11, s7, ra
                  ori          t0, a6, 1276
                  or           gp, a3, t5
                  srl          s4, s0, s2
222:              beq          t6, ra, 238f
223:              and          s4, t3, t1
                  ori          s5, a4, -557
                  bne          t2, s5, 236f
                  slt          t1, sp, a3
                  bne          a0, s4, 235f
                  xor          s9, t4, t1
                  nop
                  or           s8, s1, s8
                  bltu         t2, a2, 236f
                  xor          a0, s7, t3
                  beq          a2, s2, 243f
                  la           t6, sub_1
                  srl          t1, tp, a2
                  srai         sp, sp, 10
                  srli         s3, t1, 4
                  nop
                  addi         t6, t6, 113
                  slt          s11, gp, t6
                  bge          a3, t0, main_j1 #branch to jump instr
                  srl          s0, t2, t1
main_j1:          jalr         t6, t6, -113 #jump main -> sub_1
                  slli         tp, a3, 16
235:              andi         t4, s10, -686
236:              add          s6, a6, a7
                  addi         a6, ra, -1015
238:              sltiu        t6, t0, -121
                  and          ra, s9, a0
                  srai         s3, a4, 18
                  bge          s8, s7, 243f
                  sltu         a4, t6, s11
243:              add          a2, a3, a6
                  la x7, test_done
                  jalr x0, x7, 0
test_done:        
                  li gp, 1
                  ecall
sub_2:            bne          s10, s8, sub_2_stack_p
                  and          a6, s6, a0
                  addi         sp, sp, 219
sub_2_stack_p:    addi         s2, s2, -28
                  or           ra, s4, gp
                  sw           t6, 4(s2)
                  add          a1, t4, a0
                  la           a1, region_1+1066 #start riscv_load_store_hazard_instr_stream_0
                  lb           s8, 592(a1)
                  or           a7, s4, a5
                  lbu          s3, 592(a1)
                  sh           s7, 660(a1)
                  sh           s2, 660(a1)
                  lb           s11, 660(a1)
                  lbu          a5, 660(a1)
                  lb           s8, 660(a1)
                  sb           t6, -264(a1)
                  sb           a7, -863(a1)
                  lb           ra, -863(a1)
                  sb           s4, -863(a1)
                  lhu          ra, 876(a1)
                  sh           s3, 876(a1)
                  lb           s4, 876(a1)
                  srai         t1, a2, 18
                  slli         t6, s6, 25
                  lbu          t0, 876(a1)
                  lhu          zero, -228(a1)
                  lh           s3, -142(a1)
                  lb           s9, 27(a1) #end riscv_load_store_hazard_instr_stream_0
                  la           a1, region_1+32 #start load_store_instr_stream_2
                  la           a6, region_1+326 #start load_store_instr_stream_3
                  sb           t3, -16(a1)
                  sh           s0, -8(a6)
                  la           t0, region_1+130 #start load_store_instr_stream_1
                  la           gp, region_1+672 #start load_store_instr_stream_0
                  lw           ra, 46(t0)
                  sb           s2, -16(a6)
                  la           s11, region_1+769 #start load_store_instr_stream_4
                  sw           s4, 11(s11)
                  sw           s3, 6(a6)
                  sb           s2, 8(s11)
                  lb           ra, -1(a1)
                  lb           ra, 28(a6)
                  sb           a6, 19(a6)
                  sb           s3, 15(a1)
                  sw           s8, -12(a1)
                  sb           s11, -21(a6)
                  sb           s7, -27(gp)
                  lhu          tp, 9(s11)
                  sb           a5, 45(a6)
                  lb           tp, -3(a6)
                  sb           s0, -38(gp)
                  lb           sp, 15(a1)
                  lb           s10, 16(s11)
                  lh           s10, 15(s11)
                  sh           tp, -3(s11)
                  lbu          a7, 16(a1)
                  sb           s3, 30(a6)
                  sb           t0, -16(s11)
                  lh           s7, 2(gp)
                  sb           gp, 28(gp)
                  lb           ra, 8(t0)
                  lb           s6, -12(s11) #end load_store_instr_stream_4
                  sb           a2, -19(gp)
                  lb           s1, 35(gp)
                  sh           s6, 6(a1)
                  lbu          s6, 3(t0)
                  sb           a3, 17(t0)
                  lh           a0, -16(a1)
                  lh           a7, -48(t0) #end load_store_instr_stream_1
                  sw           s6, 56(gp)
                  lw           a7, 6(a6) #end load_store_instr_stream_3
                  sh           sp, -12(a1) #end load_store_instr_stream_2
                  lbu          t4, 47(gp) #end load_store_instr_stream_0
                  la           sp, region_1+1984 #start riscv_load_store_rand_instr_stream_0
                  and          ra, s10, a6
                  sltiu        a6, s1, 189
                  lui          t4, 394402
                  lb           a1, 1(sp)
                  or           zero, s9, t4
                  auipc        s11, 232450
                  lh           ra, -10(sp)
                  nop
                  sb           zero, -9(sp)
                  or           a6, t0, t1
                  lbu          a7, -12(sp)
                  slt          s6, tp, s10
                  sw           t1, -8(sp)
                  sltiu        s5, t1, 996
                  lbu          a2, -15(sp)
                  nop
                  auipc        s7, 65080
                  slli         a5, s7, 13
                  lbu          a1, -8(sp)
                  sltu         s9, t6, s1
                  srli         s5, t6, 5
                  or           a2, a2, s5
                  sh           s6, -14(sp)
                  lb           t3, -11(sp)
                  addi         a0, t0, -73
                  sb           s5, 1(sp)
                  sll          s4, s1, s7
                  srai         a2, s6, 3
                  lbu          tp, 7(sp) #end riscv_load_store_rand_instr_stream_0
                  bne          a3, sp, 9f
                  sub          ra, s7, a1
                  sub          a6, t0, t1
                  sra          a6, t5, zero
                  xori         s0, a7, -640
                  bge          a1, s9, 24f
                  sltu         s3, s3, s2
                  auipc        s11, 1018719
                  beq          s3, s11, 20f
9:                bltu         a1, t5, 18f
                  andi         sp, t5, 1290
                  bne          ra, t1, 26f
                  andi         s10, ra, -1256
                  addi         s9, t3, -562
                  srl          a6, s0, s4
                  sltiu        t6, a5, 1727
                  srli         a0, a7, 6
                  add          a1, ra, s1
18:               blt          a4, tp, 35f
                  xori         tp, a4, 888
20:               nop
                  andi         s3, a7, 985
                  lui          t6, 434650
                  and          a6, s7, a5
24:               slti         s6, t4, -1299
                  slti         t6, zero, 600
26:               ori          s5, a3, -278
                  slti         s3, s10, 167
                  andi         a0, a5, 816
                  sltiu        s11, s6, -731
                  add          gp, t2, sp
                  slt          s8, a1, sp
                  slli         s5, sp, 24
                  sub          s7, s4, a4
                  nop
35:               xor          a1, s6, s5
                  blt          a5, s10, 55f
                  xor          a7, s5, tp
                  sltu         s8, s4, s0
                  xori         s1, ra, 1571
                  bne          s10, s10, 55f
                  bgeu         a5, t0, 50f
                  addi         zero, a3, -2047
                  ori          s7, zero, -1411
                  lui          t6, 972802
                  bltu         a6, gp, 55f
                  sltu         a2, s5, s8
                  add          ra, s6, s4
                  slli         s1, t3, 19
                  andi         gp, t3, -1676
50:               or           zero, s4, a5
                  xor          s4, s10, a1
                  bne          tp, a3, 62f
                  blt          gp, s9, 64f
                  slli         zero, s1, 3
55:               beq          t1, t6, 56f
56:               sll          t0, s4, a4
                  srai         ra, s9, 13
                  bne          s7, t2, 67f
                  slti         a4, s4, -1093
                  srli         tp, a3, 28
                  srli         t6, gp, 16
62:               lui          a2, 319492
                  sltu         s10, sp, gp
64:               nop
                  srli         t3, s4, 10
                  blt          a3, a4, 77f
67:               auipc        tp, 680404
                  sub          s10, a3, t3
                  add          s8, tp, gp
                  lui          a5, 60432
                  beq          s1, s8, 79f
                  ori          t4, a6, -1979
                  sltiu        a6, s0, 251
                  sub          t3, ra, s9
                  sll          zero, a4, t1
                  add          s4, a5, a1
77:               auipc        t0, 260327
                  beq          s11, a7, 94f
79:               slli         s1, s6, 5
                  ori          a2, t2, -1500
                  srai         zero, s9, 16
                  srli         s10, tp, 30
                  sub          tp, a0, s10
                  auipc        gp, 800281
                  lui          ra, 838414
                  addi         s11, gp, -690
                  bge          a5, ra, 94f
                  srl          a2, t2, a6
                  bne          s1, a4, 106f
                  nop
                  andi         a6, s0, -1608
                  ori          a2, a3, -978
                  sltu         s4, s8, t0
94:               srli         t5, t3, 17
                  nop
                  srai         s11, a4, 1
                  nop
                  bltu         s9, a0, 103f
                  xori         s9, a7, 984
                  blt          sp, tp, 104f
                  bltu         a7, tp, 104f
                  ori          a2, t6, -1666
103:              srai         tp, s0, 8
104:              sltu         t3, t1, a1
                  slti         ra, t4, 1323
106:              sltiu        s1, a5, -1065
                  nop
                  sltiu        a5, sp, -568
                  auipc        s8, 254799
                  bne          s4, s0, 120f
                  xori         s10, s5, 313
                  srli         a2, s3, 8
                  slti         t3, a5, 1746
                  add          sp, s8, t4
                  sub          s8, a3, a0
                  slti         ra, a4, -1724
                  xori         a5, t5, -582
                  auipc        a0, 719053
                  auipc        s10, 382828
120:              xor          t1, a7, a0
                  ori          s0, ra, 1479
                  bne          s7, s1, 127f
                  addi         gp, s2, 1101
                  auipc        ra, 663115
                  addi         a5, a3, 1326
                  bne          tp, t4, 127f
127:              slli         s11, s5, 24
                  srl          a1, t1, s11
                  auipc        s10, 715523
                  blt          s1, s4, 139f
                  add          s10, t4, s5
                  auipc        a1, 439181
                  sub          t0, s2, s10
                  sra          a4, t4, a4
                  xori         t1, t1, 761
                  srl          s3, a3, s6
                  lui          s5, 593503
                  sub          tp, s9, s2
139:              lui          t1, 588877
                  ori          a1, t0, -1329
                  add          a5, s4, a1
                  ori          s1, ra, -636
                  nop
                  slti         s11, t6, -1365
                  slli         t6, t6, 3
                  srli         a5, t3, 10
                  bge          t5, t3, 153f
                  lui          t0, 783214
                  blt          s6, a0, 166f
                  xor          zero, t6, t2
                  slti         s11, s3, 1001
                  slt          s3, sp, a1
153:              slt          a1, s10, t2
                  srai         tp, sp, 8
                  bltu         t5, s9, 170f
                  srli         ra, t3, 8
                  sll          t4, gp, s1
                  bgeu         gp, s6, 176f
                  or           s7, tp, t0
                  sra          a5, t0, s9
                  bne          a1, t2, 180f
                  or           s4, t0, t0
                  beq          a3, t5, 180f
                  lui          tp, 522809
                  beq          t0, t5, 174f
166:              bltu         a5, t3, 178f
                  bge          tp, t2, 182f
                  bne          a6, t2, 184f
                  slt          s9, s6, t6
170:              andi         a5, s5, -1743
                  xor          a6, s4, s1
                  slt          ra, zero, gp
                  and          s11, sp, ra
174:              or           t5, a4, s10
                  sub          a4, ra, t1
176:              auipc        t3, 849179
                  bltu         s9, s10, 188f
178:              sltu         t6, t0, a1
                  sll          zero, s6, t5
180:              and          t4, a0, tp
                  srai         t3, a7, 13
182:              sltu         a7, s10, s6
                  srl          t5, t2, gp
184:              srl          a7, a2, a6
                  bgeu         sp, s4, 194f
                  blt          s10, a2, 190f
                  addi         a2, s5, 193
188:              slli         s6, t6, 3
                  andi         t3, s6, 1706
190:              sub          a7, t3, a6
                  bgeu         t0, a6, 195f
                  lui          s11, 765475
                  srl          a0, s0, s5
194:              slti         t4, s2, 429
195:              and          t1, s0, s2
                  slli         t1, s11, 9
                  sll          s6, t1, s9
                  lw           t6, 4(s2)
                  sltu         s1, t2, zero
                  sub          s6, a5, s4
                  addi         s2, s2, 28
                  andi         a0, s7, -1931
307:              addi x17, x31, 1
307:              jalr x17, x17, 0
sub_1:            blt          s10, a3, sub_1_stack_p
sub_1_stack_p:    addi         s2, s2, -40
                  sltu         s9, s4, a6
                  sltiu        s11, s7, 250
                  add          a1, a1, zero
                  sw           t6, 4(s2)
                  slli         s5, s8, 10
                  addi         s4, a2, 1737
                  sltu         s9, s7, s6
                  and          a2, s1, a7
                  auipc        s11, 783
                  sltiu        t5, s8, -1093
                  sra          s8, t4, a6
                  slti         a5, s8, -228
                  ori          t3, t6, -105
                  la           tp, sub_2
                  andi         s3, ra, 1843
                  andi         s1, a5, 1168
                  andi         s5, a6, -1032
                  srai         sp, s1, 29
                  lui          s10, 170257
                  srai         s7, s8, 24
                  andi         a7, tp, 1313
                  addi         tp, tp, -207
                  srl          s6, zero, t2
sub_1_j3:         jalr         t6, tp, 208 #jump sub_1 -> sub_2
                  la           t5, region_1+606 #start riscv_load_store_hazard_instr_stream_3
                  sb           a0, 5(t5)
                  sb           tp, 5(t5)
                  auipc        zero, 1030825
                  lb           sp, 5(t5)
                  lbu          ra, 5(t5)
                  sb           s5, 5(t5)
                  lbu          a7, 5(t5)
                  lbu          a5, 5(t5)
                  lb           s7, 5(t5)
                  sltu         s5, a4, t0
                  lbu          s6, 5(t5)
                  sll          s4, a4, s9
                  sll          t6, a0, s8
                  sub          s10, s3, s4
                  addi         s11, a1, -931
                  sb           s4, -10(t5)
                  lw           t1, -10(t5)
                  lhu          s10, -14(t5)
                  lh           s11, -14(t5) #end riscv_load_store_hazard_instr_stream_3
                  la           tp, region_1+792 #start load_store_instr_stream_1
                  la           s6, region_1+1754 #start load_store_instr_stream_2
                  la           s4, region_1+759 #start load_store_instr_stream_0
                  lb           gp, -126(s6)
                  sh           t0, -212(s6)
                  lb           s7, 1087(tp)
                  lb           sp, 42(s6)
                  sb           sp, -512(tp)
                  lb           t3, 56(s4)
                  lw           a6, 1008(tp)
                  sb           a1, -24(s4)
                  lh           t0, -23(s4)
                  lb           a2, 27(s6)
                  sb           a3, 723(tp)
                  lbu          s1, -456(tp)
                  sb           s7, -45(s6)
                  sb           s7, -73(s6)
                  lbu          t0, -235(tp)
                  lb           gp, -17(s6)
                  sb           s7, -58(s4)
                  lh           zero, -16(s6)
                  sb           gp, -120(s6)
                  lb           s5, 806(tp) #end load_store_instr_stream_1
                  lb           s10, 227(s6) #end load_store_instr_stream_2
                  lb           s8, -23(s4) #end load_store_instr_stream_0
                  la           sp, region_0+376 #start riscv_load_store_hazard_instr_stream_4
                  lbu          a1, 39(sp)
                  sb           a6, 5(sp)
                  lb           ra, 26(sp)
                  lhu          s8, 26(sp)
                  sltu         a0, t0, a2
                  sltiu        t0, a4, 1036
                  srai         tp, t6, 11
                  srai         a2, gp, 30
                  lbu          a5, 26(sp)
                  lhu          s3, 26(sp)
                  sh           t3, 26(sp)
                  sll          s3, s1, a4
                  add          a6, s4, t1
                  xori         s1, t1, -1420
                  sb           zero, 26(sp)
                  sb           gp, 26(sp)
                  sb           a6, -33(sp) #end riscv_load_store_hazard_instr_stream_4
                  la           a7, region_1+186 #start riscv_load_store_hazard_instr_stream_1
                  lb           s5, 64(a7)
                  lbu          s6, 64(a7)
                  sb           s0, 64(a7)
                  sh           sp, 64(a7)
                  sh           a0, 64(a7)
                  lh           t4, 64(a7)
                  lh           s0, 64(a7)
                  lh           sp, 64(a7)
                  lhu          zero, 64(a7)
                  lb           s0, 64(a7)
                  lb           s6, 64(a7)
                  slt          a2, s5, t2
                  sll          t1, s5, a7
                  slti         sp, t4, -1765
                  sh           gp, 64(a7)
                  lh           a5, 64(a7)
                  lui          a6, 946229
                  lh           s10, 64(a7)
                  lbu          s9, 64(a7)
                  lhu          t4, 64(a7)
                  add          s8, a4, s8
                  or           s11, s1, t4
                  lhu          s9, 64(a7)
                  sh           a1, 64(a7)
                  auipc        t1, 941
                  sb           a7, 64(a7) #end riscv_load_store_hazard_instr_stream_1
                  la           s1, region_1+1150 #start riscv_load_store_hazard_instr_stream_0
                  sb           tp, -545(s1)
                  sb           s1, -573(s1)
                  lbu          t1, -573(s1)
                  andi         a0, a3, 1810
                  lhu          a2, 452(s1)
                  sb           t2, 43(s1)
                  sb           t6, 43(s1)
                  sb           s6, -545(s1)
                  lhu          s6, 236(s1)
                  lhu          s4, -432(s1)
                  sb           s10, 587(s1)
                  lw           s9, -122(s1)
                  lb           gp, 743(s1)
                  sb           a4, -1005(s1)
                  lh           t6, 126(s1)
                  sh           s3, 126(s1)
                  sw           a0, 126(s1) #end riscv_load_store_hazard_instr_stream_0
                  la           sp, region_1+553 #start riscv_load_store_rand_instr_stream_3
                  lbu          ra, 5(sp)
                  lbu          t3, 0(sp)
                  addi         s11, s3, 495
                  nop
                  sb           a3, -10(sp)
                  srl          t1, s4, s7
                  sra          a4, a1, a6
                  sh           s10, -11(sp)
                  sw           s9, -9(sp)
                  add          t0, t3, s11
                  lhu          s5, 13(sp)
                  sltu         a2, s6, t1
                  sb           a7, 16(sp)
                  sb           ra, 0(sp)
                  sb           a2, 1(sp)
                  addi         s1, tp, -1928
                  sh           s1, -11(sp)
                  sw           s3, 3(sp)
                  sb           t5, 1(sp)
                  sh           s11, -11(sp)
                  lbu          t3, 9(sp)
                  slt          a4, a0, t3
                  sb           tp, -8(sp)
                  lbu          s8, 1(sp)
                  ori          s11, s1, 876
                  lw           s11, -5(sp)
                  lbu          s6, -6(sp)
                  slti         t6, t6, 2045
                  auipc        s7, 584932
                  lh           s4, -13(sp)
                  sb           ra, 12(sp)
                  sb           a6, 13(sp)
                  ori          a4, s6, -188
                  lb           s0, -5(sp)
                  lh           s5, 11(sp)
                  lb           t1, -2(sp)
                  slti         a6, a1, -24
                  sh           ra, -13(sp)
                  addi         t3, s4, -1196
                  andi         zero, a1, -561
                  add          s10, s8, s11
                  lh           t3, -7(sp) #end riscv_load_store_rand_instr_stream_3
                  la           s9, region_1+1313 #start load_store_instr_stream_1
                  la           tp, region_1+10 #start load_store_instr_stream_0
                  lbu          ra, 26(tp)
                  la           s10, region_1+1168 #start load_store_instr_stream_2
                  sb           a6, -46(s9)
                  sb           a0, 12(tp)
                  sb           s6, -326(s10)
                  lbu          s8, 784(s10)
                  lb           gp, -830(s10)
                  lbu          s6, 156(tp)
                  lh           s6, -203(s9)
                  sb           t0, -64(s9)
                  sb           zero, -1025(s10)
                  lb           s8, -737(s10)
                  lb           s3, 93(tp)
                  lh           s11, 28(tp)
                  lb           t0, -243(s9)
                  sw           t6, -384(s10)
                  lb           a5, 83(tp)
                  lbu          s4, 649(s10)
                  sb           t0, -179(s9)
                  lhu          t3, 140(tp)
                  lb           s5, 20(tp)
                  lb           t6, 215(s9)
                  lb           s4, -1129(s10)
                  lb           a6, 11(tp)
                  sb           t0, -214(s9) #end load_store_instr_stream_1
                  lh           s0, 694(s10) #end load_store_instr_stream_2
                  sb           s10, 23(tp) #end load_store_instr_stream_0
                  la           s5, region_0+911 #start load_store_instr_stream_3
                  la           a2, region_0+23 #start load_store_instr_stream_2
                  la           a0, region_0+1590 #start load_store_instr_stream_4
                  lb           s0, -4(s5)
                  sb           t4, -6(s5)
                  lbu          a7, -32(s5)
                  la           t0, region_0+1699 #start load_store_instr_stream_1
                  lhu          s4, -19(a2)
                  sb           ra, -38(s5)
                  lb           s9, -30(a0)
                  la           gp, region_0+57 #start load_store_instr_stream_0
                  lbu          t5, 47(a2)
                  sh           s10, 144(a0)
                  lbu          s6, -94(a0)
                  lb           s11, -16(gp)
                  lhu          a7, 23(s5)
                  lb           s0, -16(gp)
                  lbu          s1, 7(a2)
                  lb           s9, -42(s5)
                  lb           s10, 183(a0)
                  lbu          s3, -904(t0)
                  lh           s9, 61(a2)
                  sh           t4, 13(s5)
                  sh           s10, -46(a0)
                  lbu          tp, 38(s5) #end load_store_instr_stream_3
                  lb           sp, -1131(t0)
                  lh           a5, -124(a0)
                  lbu          s9, -787(t0)
                  sb           tp, 12(gp)
                  sb           s8, -3(a2)
                  sb           s9, 222(a0)
                  sb           t4, -722(t0)
                  sb           ra, 38(a2)
                  lb           zero, 0(gp)
                  lhu          s9, 207(t0) #end load_store_instr_stream_1
                  lbu          t5, 117(a0) #end load_store_instr_stream_4
                  lb           a1, 50(a2) #end load_store_instr_stream_2
                  sb           s2, -16(gp) #end load_store_instr_stream_0
                  la           t5, region_1+1830 #start load_store_instr_stream_1
                  la           t1, region_1+721 #start load_store_instr_stream_2
                  la           t6, region_1+430 #start load_store_instr_stream_0
                  lb           t4, 15(t5)
                  sb           s10, 12(t1)
                  sb           t3, 2(t1)
                  sb           a2, 53(t6)
                  sb           gp, 5(t1)
                  lbu          s6, -14(t1)
                  lh           gp, 32(t6)
                  lh           a6, 42(t5)
                  sb           t6, -26(t5)
                  lbu          a5, -31(t6)
                  lb           t3, -41(t5)
                  lw           gp, 10(t5)
                  sb           s9, 24(t5)
                  sh           s6, -38(t6)
                  lbu          ra, -36(t5) #end load_store_instr_stream_1
                  lb           tp, 0(t1) #end load_store_instr_stream_2
                  lh           sp, 18(t6) #end load_store_instr_stream_0
                  la           s0, region_1+1660 #start riscv_load_store_rand_instr_stream_4
                  sltiu        s5, a5, -482
                  sltiu        a0, s8, -89
                  lhu          t0, -1654(s0)
                  sltu         t1, s1, s8
                  lb           s9, -495(s0)
                  ori          a6, s6, 28
                  lbu          s11, -765(s0)
                  lb           s4, -417(s0)
                  sh           t5, -1108(s0)
                  add          t0, a3, s10
                  lbu          s5, -1221(s0)
                  sb           s10, -591(s0)
                  srl          gp, ra, a7
                  sb           s4, -925(s0)
                  sltu         t1, s1, t6
                  sltiu        t4, s8, 1853
                  sw           t1, -1056(s0)
                  sub          tp, sp, ra
                  add          a1, gp, a6
                  lb           a4, -458(s0)
                  lbu          t1, -199(s0)
                  lui          s11, 464705
                  add          a1, s9, s4
                  xori         s7, s7, -1386
                  srli         t6, tp, 13
                  lh           a4, -1506(s0)
                  sra          zero, t6, s9
                  andi         t3, s10, -416
                  sh           a4, -32(s0)
                  lb           t4, -487(s0)
                  sltiu        s4, a0, 1449
                  sltiu        ra, s10, 1557
                  xori         gp, a0, 433
                  sltu         a5, t4, s1
                  sh           t4, -1078(s0)
                  add          tp, t5, a6
                  sll          t3, gp, t1
                  lbu          t3, -244(s0)
                  or           s10, gp, s6
                  srai         s9, t1, 19
                  lui          t6, 583258
                  sll          s9, s0, a7
                  sw           ra, 156(s0)
                  and          a7, a1, a7
                  lb           a5, -1179(s0)
                  addi         s5, a1, -1591
                  or           a6, gp, s10
                  lb           s9, 262(s0) #end riscv_load_store_rand_instr_stream_4
                  la           a1, region_0+992 #start riscv_load_store_rand_instr_stream_2
                  lb           t3, 1(a1)
                  lh           t6, -26(a1)
                  sb           tp, -37(a1)
                  lb           a4, -9(a1)
                  lbu          s9, 29(a1)
                  lb           ra, -47(a1)
                  or           t4, a7, a4
                  lb           s8, -35(a1)
                  srli         a5, s5, 29
                  add          a4, a1, a0
                  or           s3, gp, s11
                  lb           t0, 7(a1)
                  lbu          t4, 8(a1)
                  sll          s5, s11, s10
                  slli         s6, gp, 19
                  lb           t5, -43(a1)
                  slti         tp, a7, -1717
                  srai         s6, t2, 29
                  addi         s3, s6, -1791
                  lh           a5, -60(a1)
                  sltiu        t0, s7, 719
                  nop
                  lbu          s5, 47(a1)
                  lui          a5, 87180
                  lhu          s8, 2(a1)
                  lh           sp, -22(a1)
                  lbu          s7, -27(a1)
                  sb           s3, -9(a1)
                  lhu          s1, -14(a1)
                  lhu          a4, 34(a1)
                  sb           a7, 42(a1)
                  slti         gp, s4, -733
                  lb           a5, -15(a1)
                  slt          s4, zero, s7
                  sw           sp, 28(a1)
                  lbu          ra, -19(a1)
                  lw           zero, 20(a1)
                  xor          s8, s1, s3
                  sb           t0, -43(a1)
                  sb           sp, -57(a1) #end riscv_load_store_rand_instr_stream_2
                  la           s1, region_0+1475 #start riscv_load_store_hazard_instr_stream_2
                  lh           zero, 401(s1)
                  lhu          zero, 401(s1)
                  lbu          t5, 401(s1)
                  lui          s0, 875889
                  sh           t5, 401(s1)
                  sh           tp, 401(s1)
                  lhu          t1, 401(s1)
                  lh           zero, 401(s1)
                  lhu          t5, 401(s1)
                  lbu          a6, 401(s1)
                  lw           a0, 401(s1)
                  sw           zero, 401(s1)
                  slti         zero, gp, 1706
                  lw           a4, 401(s1)
                  sh           t2, 401(s1)
                  lb           ra, 401(s1)
                  lb           t3, 401(s1)
                  lb           a2, -971(s1)
                  lb           s8, -971(s1)
                  sb           a1, -971(s1)
                  sh           a6, -971(s1) #end riscv_load_store_hazard_instr_stream_2
                  srli         s8, s7, 26
                  addi         s7, t4, -139
                  srl          t0, s11, s3
                  ori          t1, s8, -1121
                  bltu         zero, s1, 18f
                  and          gp, s8, s7
                  slt          a1, a5, s10
                  lui          t4, 406627
                  srai         t6, zero, 23
                  and          a7, a6, s3
                  srli         a5, a6, 22
                  add          a4, s1, t6
                  beq          s8, t4, 19f
                  slti         s10, a3, 1324
                  xor          a7, s9, s3
                  andi         a0, a1, 402
                  nop
                  xori         tp, a2, -2012
18:               srai         s1, zero, 12
19:               auipc        tp, 1008571
                  bne          a4, a4, 30f
                  sub          t6, gp, s7
                  srl          s9, s10, t3
                  nop
                  slti         t6, a5, 1238
                  srli         t3, a6, 23
                  bltu         a0, a1, 46f
                  slli         ra, t0, 9
                  sub          ra, a2, t6
                  sub          t1, t4, s2
30:               srai         a5, s1, 30
                  srl          t3, s8, s11
                  slt          tp, t6, s7
                  slti         s8, a1, -1542
                  sll          s3, t6, a6
                  andi         s6, a7, -60
                  sll          s1, a6, a6
                  addi         s8, s2, -957
                  sra          a0, t0, t3
                  or           ra, s6, a1
                  lui          t6, 150979
                  xor          a2, s4, t4
                  lui          a6, 756764
                  blt          s3, t1, 50f
                  slt          a0, a3, s7
                  sra          a5, a3, s9
46:               bltu         s1, ra, 55f
                  slt          s0, s4, s2
                  bne          s4, gp, 60f
                  or           a5, t1, a0
50:               srai         tp, sp, 19
                  bgeu         a3, s6, 56f
                  add          s5, s11, s2
                  slti         s4, sp, -1895
                  slti         t3, ra, 812
55:               addi         t3, a0, -623
56:               xor          s7, s8, gp
                  slti         a5, t6, 1126
                  bltu         s8, s6, 65f
                  slt          t6, t5, ra
60:               nop
                  slli         tp, a0, 28
                  ori          ra, s6, 872
                  bltu         zero, a6, 73f
                  blt          t0, s2, 71f
65:               addi         s8, ra, 184
                  lui          a7, 738755
                  andi         s0, t0, 1031
                  add          s1, sp, s9
                  lui          t6, 1016276
                  and          a4, s1, gp
71:               slli         t3, s1, 18
                  sra          a5, a3, a1
73:               bge          t3, t6, 93f
                  sll          s9, t6, gp
                  sub          s1, s11, s2
                  slti         t0, tp, 1722
                  beq          s10, zero, 78f
78:               sltu         tp, t0, ra
                  sll          s4, t0, s7
                  sltiu        s1, s2, -1605
                  bltu         s11, sp, 83f
                  slli         t4, gp, 5
83:               slli         s8, s5, 20
                  sra          a2, s10, t5
                  srl          sp, t5, ra
                  sra          s5, s5, s4
                  slli         s3, a3, 30
                  ori          t1, s5, -1250
                  beq          a3, s6, 91f
                  auipc        s10, 198487
91:               lui          s11, 65375
                  andi         t3, t6, 1420
93:               lui          t4, 929989
                  sltiu        s0, s6, 1060
                  srai         s0, sp, 3
                  slt          s0, t0, zero
                  addi         s11, t6, 74
                  sltu         s9, s11, t5
                  nop
                  add          a4, s1, s5
                  sltiu        s8, tp, 1215
                  bltu         a1, t0, 108f
                  ori          s8, s8, -757
                  sra          t5, s2, s1
                  sltu         s5, s1, s1
                  slli         a5, t0, 18
                  or           s3, s11, a0
108:              add          s6, s7, sp
                  andi         sp, t6, 879
                  sll          ra, tp, tp
                  andi         s0, a0, 1210
                  sra          s11, a2, tp
                  auipc        a7, 706958
                  add          t3, t1, s10
                  auipc        a4, 511512
                  slti         zero, a0, 867
                  or           t5, a0, a7
                  srli         a2, a0, 25
                  add          t4, t4, s0
                  and          a2, a3, s0
                  or           gp, s3, t5
                  bltu         a4, t3, 142f
                  add          a5, t3, t4
                  lui          s10, 896647
                  add          a6, tp, a2
                  andi         s8, a3, -1235
                  add          ra, s8, t3
                  lui          s7, 632467
                  bgeu         t4, s2, 135f
                  sltiu        a0, t3, 336
                  ori          s3, t5, 110
                  addi         a2, t6, 443
                  lui          s0, 317246
                  and          a5, t6, a1
135:              sll          t3, t6, t1
                  bltu         zero, t4, 152f
                  add          s0, gp, s11
                  sltiu        ra, a3, 294
                  add          s3, s1, s5
                  slti         s9, a4, -1410
                  beq          a3, a1, 151f
142:              beq          t0, t1, 149f
                  sra          a6, sp, zero
                  auipc        t3, 19341
                  add          tp, ra, a4
                  bltu         t3, s0, 157f
                  ori          s11, t4, 1886
                  slli         gp, s0, 12
149:              and          t4, s5, s10
                  blt          s10, a2, 155f
151:              slli         a4, s3, 1
152:              sra          s5, t3, s0
                  sra          a2, a0, s7
                  add          s7, s11, s11
155:              andi         s3, s7, 559
                  bltu         s1, a3, 171f
157:              sll          s0, s0, t2
                  sub          s8, s0, s2
                  sll          s4, s8, s8
                  sltu         t4, t1, t4
                  slti         a2, s5, 1815
                  slti         t0, t6, 796
                  bltu         s3, t2, 167f
                  srli         s8, gp, 22
                  bltu         s9, sp, 179f
                  slt          a0, a4, s1
167:              srli         t0, t3, 27
                  slti         t6, a4, 1960
                  addi         a7, a1, -546
                  sltiu        a7, a0, 1834
171:              auipc        t1, 13737
                  sltiu        a5, a1, -976
                  bge          t3, a4, 182f
                  sltu         tp, s10, t0
                  blt          s3, t3, 186f
                  sltu         s3, a5, zero
                  beq          ra, a6, 189f
                  nop
179:              srli         zero, s0, 30
                  sra          s3, gp, s4
                  bge          s0, t4, 194f
182:              bgeu         zero, s1, 196f
                  nop
                  srai         a2, s7, 13
                  andi         gp, a6, -551
186:              beq          zero, t1, 191f
                  or           a6, s9, s3
                  add          sp, t2, t1
189:              xor          t0, gp, s0
                  xori         gp, s7, 1898
191:              nop
                  lui          a2, 435809
                  xori         s9, t2, 1550
194:              xor          zero, t0, s3
                  auipc        a6, 606904
196:              bgeu         s4, sp, 205f
                  srli         t3, sp, 14
                  sra          s10, t4, a0
                  sltu         a6, s4, t4
                  blt          a7, s8, 206f
                  slti         t5, a1, 1737
                  sltiu        gp, t5, 1143
                  bltu         s7, sp, 214f
                  la           t0, sub_2
                  auipc        tp, 443406
                  slti         t1, gp, 918
                  sltu         s10, t3, s0
                  add          a2, s9, a6
                  addi         t0, t0, 918
                  sll          s9, s1, s11
                  addi         s10, a6, 1387
                  slt          s4, a6, s8
                  sltu         a5, ra, t0
                  sltiu        zero, s4, -40
                  srai         a6, s5, 24
sub_1_j2:         jalr         t6, t0, -917 #jump sub_1 -> sub_2
                  slt          t0, a0, t1
205:              sll          t1, t2, s4
206:              nop
                  srl          s9, s3, t2
                  slt          sp, a4, s10
                  xori         s3, gp, -1854
                  auipc        a4, 869296
                  sub          a5, tp, ra
                  slti         t0, s5, 1338
                  addi         a4, ra, -124
214:              bltu         a4, s10, 221f
                  sll          s7, a1, t4
                  and          s1, s2, t1
                  bgeu         a0, s0, 230f
                  sltu         a0, s9, s0
                  slt          a2, t0, tp
                  sub          t5, a2, s7
221:              bltu         s4, s7, 241f
                  and          t1, s11, s6
                  xor          t1, s9, s9
                  sll          s9, a4, s10
                  sltu         a5, s9, ra
                  xori         s3, s3, -804
                  andi         a4, s4, 932
                  add          a7, t5, t5
                  xori         t5, t5, 1942
230:              sub          s9, s0, sp
                  bltu         s2, s11, 246f
                  bgeu         s3, tp, 244f
                  ori          s4, a4, 1163
                  xor          tp, zero, s3
                  srli         s11, a1, 22
                  srli         tp, t6, 8
                  ori          s10, a6, 1157
                  sra          a1, s11, s3
                  and          a4, zero, t6
                  srai         s6, s5, 26
241:              nop
                  or           ra, gp, t3
                  slt          zero, s11, zero
244:              xori         t3, s4, -1936
                  ori          s11, sp, 136
246:              auipc        t1, 937040
                  auipc        s6, 91250
                  auipc        s8, 33382
                  bltu         a6, t5, 254f
                  or           a4, zero, t0
                  sltiu        s8, s8, 1041
                  srli         ra, a3, 10
                  srli         s5, a5, 21
254:              lui          a7, 128029
                  slt          t3, sp, sp
                  blt          s6, a1, 263f
                  sltu         s6, sp, sp
                  ori          gp, a1, 1245
                  sltu         a6, sp, zero
                  srli         zero, zero, 15
                  lui          gp, 716490
                  bgeu         s10, ra, 276f
263:              sltiu        a4, a2, -1768
                  slti         t1, s7, -1682
                  slti         s10, a2, 276
                  sltu         s3, s2, s2
                  add          s0, a4, s10
                  srli         a1, a5, 21
                  auipc        a6, 470967
                  sltiu        a6, s6, 1514
                  sll          a2, s3, t2
                  ori          s6, t2, -1437
                  sub          s3, t0, gp
                  sltiu        s11, s0, 1249
                  sltiu        s9, t2, -491
276:              bge          t5, s6, 296f
                  bltu         t1, t4, 284f
                  bge          s11, s0, 288f
                  bge          s9, s11, 291f
                  bne          zero, s7, 289f
                  auipc        a7, 286778
                  slt          s3, s2, s10
                  blt          s6, s5, 290f
284:              blt          s1, t3, 288f
                  la           a7, region_1+903 #start load_store_instr_stream_0
                  la           t6, region_1+465 #start load_store_instr_stream_1
                  lb           s8, -11(t6)
                  lw           s7, -1(t6)
                  lhu          a0, -7(a7)
                  lbu          t0, 3(t6)
                  lbu          zero, 16(a7)
                  lhu          s4, 7(t6)
                  lb           s1, 9(t6)
                  lb           s4, -8(a7)
                  lbu          s8, -13(t6)
                  sb           t2, -15(t6)
                  lb           a0, -4(a7)
                  sb           gp, 16(a7)
                  sb           s11, 4(a7)
                  lbu          s7, 0(t6) #end load_store_instr_stream_1
                  sb           s9, -7(a7) #end load_store_instr_stream_0
                  bge          s9, a0, 301f
                  xor          s0, a1, s11
                  lui          a2, 697180
288:              blt          t2, gp, 290f
289:              xor          gp, gp, t3
290:              sltiu        t0, s4, 1109
291:              ori          sp, s5, -1155
                  bge          t1, s8, 302f
                  sub          t5, tp, s5
                  slt          t3, a7, s2
                  and          s8, s10, s0
296:              add          t6, s0, s2
                  bne          s10, s0, 298f
298:              sltiu        gp, a0, -2020
                  bltu         a4, a7, 310f
                  xor          t0, s10, s9
301:              and          sp, a2, s0
302:              auipc        s8, 845601
                  auipc        s10, 1022985
                  sra          s7, t4, t3
                  sll          s11, s6, a7
                  bltu         t6, sp, 312f
                  slli         s0, s11, 29
                  sra          s3, s5, t1
                  srl          t1, s1, t5
310:              andi         s0, s11, 161
                  or           sp, a4, t1
312:              srai         t6, t5, 24
                  andi         s4, a3, -1410
                  xor          s0, t6, tp
                  sltu         a2, gp, a7
                  slli         t1, a0, 3
                  andi         tp, a4, -2007
                  srai         s11, t1, 9
                  sltiu        gp, a7, 1500
                  srl          s6, zero, t6
                  la           sp, region_0+438 #start riscv_load_store_rand_instr_stream_0
                  sh           t4, -82(sp)
                  sub          a7, a5, sp
                  lhu          s11, 14(sp)
                  lbu          s3, -215(sp)
                  lw           a1, -34(sp)
                  lb           a1, -193(sp)
                  srli         s9, t2, 26
                  slt          t5, s0, s7
                  sh           t1, -188(sp)
                  srai         a5, s1, 19
                  lbu          s3, 179(sp)
                  xori         a2, t6, -69
                  lbu          s4, 52(sp)
                  lbu          s5, -137(sp)
                  sb           a4, -15(sp)
                  sltiu        t6, t2, -210
                  srai         s9, s8, 30
                  lb           a1, 25(sp)
                  sb           s9, 76(sp)
                  lb           t0, -163(sp)
                  sw           a2, 98(sp)
                  lui          t5, 768615
                  slt          a5, s11, ra
                  lbu          s11, 159(sp)
                  sh           a0, 60(sp)
                  lb           s10, -244(sp)
                  lb           a6, 167(sp)
                  lb           s6, 61(sp)
                  sub          t3, s0, t3
                  auipc        s10, 109544
                  sltu         s4, s5, t1
                  lb           a6, 197(sp)
                  slti         a4, tp, -1751
                  lbu          s1, -31(sp)
                  lhu          s3, -120(sp)
                  lb           tp, -149(sp)
                  lb           zero, -51(sp) #end riscv_load_store_rand_instr_stream_0
                  bne          s3, gp, 323f
                  andi         a2, tp, -511
323:              slt          s1, a1, s1
                  bltu         sp, s2, 344f
                  addi         a2, s11, -1346
                  srli         s0, s2, 9
                  xor          s1, t0, s2
                  bge          t4, s6, 338f
                  bgeu         a4, t3, 336f
                  sltu         s11, s11, s0
                  slli         zero, a6, 5
                  sll          s9, a4, a2
                  ori          ra, a1, -1193
                  sub          a0, s10, t0
                  slti         t0, t6, 596
336:              sra          s5, a2, s1
                  sub          zero, s1, s11
338:              auipc        s7, 896249
                  sltu         t4, s7, t0
                  slti         s0, s8, -276
                  xori         a6, s1, 1949
                  sub          s5, ra, s4
                  blt          s7, s0, 354f
344:              bltu         t2, s11, 359f
                  andi         s9, t4, 390
                  srl          a4, sp, sp
                  bltu         s5, a0, 348f
348:              addi         a2, t2, 708
                  sub          a1, s2, t0
                  addi         s11, t5, -324
                  bge          a5, t1, 356f
                  bltu         t3, a4, 372f
                  sub          gp, t6, a2
354:              bge          s8, s4, 361f
                  xori         s6, a4, 1556
356:              xor          gp, tp, a5
                  slli         tp, s0, 12
                  ori          s0, a4, -721
359:              xori         s0, s8, 517
                  bne          a4, t2, 369f
361:              slli         a6, a3, 8
                  srai         s6, t2, 3
                  addi         s1, a3, 1769
                  slti         s11, a5, 397
                  and          sp, s1, gp
                  add          s4, tp, s3
                  add          t3, s5, sp
                  bne          zero, gp, 382f
369:              slli         t6, a7, 20
                  xor          s1, a6, t1
                  bgeu         ra, sp, 381f
372:              sll          a1, s1, s4
                  srl          s6, s1, a1
                  slli         zero, s5, 25
                  sll          sp, a5, t3
                  beq          t5, a2, 387f
                  or           s1, ra, t1
                  nop
                  bne          zero, a2, 393f
                  sll          s7, ra, tp
381:              nop
382:              srl          s11, t1, s4
                  ori          s1, a0, 1809
                  bge          a5, s5, 391f
                  addi         t0, s7, 996
                  slt          t5, a7, t5
387:              lui          a5, 367092
                  ori          s3, s3, 854
                  lui          t4, 313580
                  andi         a7, a1, -370
391:              bge          t1, t4, 393f
                  srli         t6, a7, 31
393:              slli         a7, a6, 7
                  slt          s8, s11, a2
                  bge          ra, s11, 408f
                  or           t4, a3, s6
                  srl          s5, s1, s8
                  bgeu         s3, a7, 405f
                  sll          a4, a6, t1
                  bltu         tp, a0, 410f
                  sltu         a4, a0, tp
                  and          zero, sp, s4
                  or           s1, t5, t0
                  auipc        a0, 735572
405:              xori         a7, t6, -983
                  slli         s5, s1, 22
                  or           s3, a6, s4
408:              lui          t6, 1031743
                  srl          a2, a6, zero
410:              srl          s0, s5, a5
                  add          t3, s5, s0
                  xori         s3, s5, -863
                  sll          s8, s2, t6
                  andi         t4, s8, -235
                  slt          s6, a7, a4
                  nop
                  srli         a0, ra, 13
                  andi         a1, a0, 282
                  bge          s6, a3, 439f
                  slti         t6, s6, 1763
                  bne          t5, s5, 441f
                  lui          s11, 832085
                  xor          a7, sp, t6
                  slli         s0, a4, 6
                  add          s0, s0, s0
                  srl          a7, a2, a2
                  sra          t4, t3, s7
                  slli         gp, a0, 19
                  sub          a7, ra, t4
                  addi         tp, a1, 270
                  addi         s11, t5, 973
                  bltu         t6, t2, 444f
                  lui          t3, 648099
                  sra          t4, t4, s6
                  bne          t1, a7, 441f
                  sub          t4, s10, s6
                  nop
                  bltu         s4, s11, 444f
439:              sra          tp, t0, s11
                  or           t0, s10, t3
                  la           gp, region_1+223 #start riscv_load_store_rand_instr_stream_1
                  ori          zero, s6, -1737
                  sub          s4, t0, s0
                  lb           ra, -4(gp)
                  sh           gp, 29(gp)
                  srli         sp, s1, 22
                  ori          s9, a0, -1292
                  lb           a7, -36(gp)
                  sb           s8, -16(gp)
                  lh           a4, -41(gp)
                  lui          t5, 270921
                  and          s10, a1, s6
                  lb           t1, -12(gp)
                  sh           a7, 15(gp)
                  lh           s1, -49(gp)
                  andi         s4, s11, 1001
                  lbu          t6, 36(gp)
                  lbu          s0, 12(gp)
                  lbu          a1, -26(gp)
                  lb           sp, 54(gp)
                  sll          s3, a4, t2
                  xori         a4, s1, -1697
                  sb           s6, 43(gp)
                  sltu         t0, t6, s11
                  lb           s1, -50(gp)
                  sll          ra, a3, s8
                  sltu         s9, s4, a5
                  sb           a5, 50(gp)
                  sll          a1, s2, t1
                  srli         s11, s8, 10
                  lb           t4, 58(gp)
                  lhu          s3, 3(gp) #end riscv_load_store_rand_instr_stream_1
441:              slt          a0, t0, s3
                  srl          t4, s4, t3
                  srai         s4, t4, 22
444:              srli         s0, sp, 10
                  srl          s6, t4, t4
                  slti         t5, t1, -1763
                  srli         a0, a4, 26
                  or           a5, s8, t0
                  lui          t1, 990064
                  slt          s7, s8, s9
                  beq          s2, a5, 460f
                  slti         tp, t6, 663
                  srai         s5, s9, 22
                  bltu         a3, s0, 456f
                  addi         t6, s9, -19
456:              andi         t6, s4, 1055
                  add          a6, s2, s3
                  blt          s2, a7, 468f
                  xor          s5, t1, zero
460:              sltu         t0, a5, a0
                  xor          t0, s11, a3
                  lui          a1, 566155
                  and          s7, t6, a1
                  sra          a5, zero, s9
                  addi         a7, sp, 1976
                  nop
                  beq          t4, s3, 472f
468:              add          s11, tp, gp
                  sra          a5, s3, zero
                  nop
                  sll          t5, a5, t1
472:              and          s1, t5, t2
                  bne          a3, s3, 489f
                  sltu         s1, t1, s2
                  srai         a7, t2, 14
                  srai         a5, a0, 2
                  addi         a5, ra, 1235
                  or           zero, s6, t2
                  andi         t4, s5, 1370
                  and          gp, a6, s0
                  sub          t0, t4, a5
                  bne          s2, s5, 486f
                  auipc        ra, 244372
                  xori         t0, a4, 727
                  sll          a7, a0, s4
486:              nop
                  slli         s9, t1, 31
                  addi         t0, a4, 1776
489:              ori          tp, a6, 506
                  slti         s10, t6, -1111
                  sll          tp, a5, gp
                  beq          s6, t5, 499f
                  slti         a5, t5, 1598
                  and          s4, s7, a2
                  bne          a4, s10, 507f
                  sra          t0, a4, zero
                  addi         s7, a7, 1943
                  xor          a6, s6, s5
499:              nop
                  srli         t5, a4, 26
                  and          t4, gp, s0
                  srl          a7, gp, t0
                  xor          gp, s9, s6
                  bltu         s1, t2, 511f
                  slti         s1, s2, -1832
                  sltiu        tp, s2, 1252
507:              bne          a3, s2, 517f
                  xori         t4, s4, -758
                  nop
                  bltu         t6, a3, 517f
511:              slli         a1, s2, 14
                  sll          s7, t2, a6
                  slti         a0, s5, 927
                  slti         a5, a3, 1817
                  sub          t3, t3, a1
                  bge          zero, a1, 528f
517:              bge          a3, t3, 529f
                  bne          t5, gp, 525f
                  srai         t0, t2, 19
                  bgeu         sp, s11, 524f
                  auipc        s10, 267136
                  sra          a6, t2, s3
                  srl          s7, a1, sp
524:              srai         s5, s4, 19
525:              bgeu         a6, s1, 527f
                  xori         t6, t1, -1992
527:              addi         s3, t0, -1311
528:              or           s1, a1, zero
529:              add          s5, t5, a5
                  beq          a2, a7, 545f
                  nop
                  srai         t3, a0, 2
                  slt          s3, a2, s4
                  bge          t4, a6, 539f
                  srli         s8, s1, 18
                  auipc        s7, 964564
                  xori         gp, s9, -148
                  xor          s1, t5, sp
539:              srai         t0, s7, 30
                  lui          zero, 266842
                  slti         a7, s1, 1377
                  and          tp, t3, a6
                  bgeu         sp, s3, 558f
                  slt          t4, s2, zero
545:              xor          a1, s6, t2
                  sltu         a2, t6, t1
                  ori          s11, s10, -1086
                  xor          a0, s6, s11
                  xor          t6, zero, s5
                  sra          s11, a6, s11
                  lui          t3, 611915
                  ori          sp, a1, 644
                  blt          a5, t5, 558f
                  slti         ra, sp, -1717
                  slt          s4, a0, s1
                  sra          s8, tp, s1
                  srai         zero, a7, 20
558:              addi         zero, s6, -1377
                  or           a6, sp, s7
                  xor          sp, s11, a3
                  sltu         s8, gp, a5
                  lw           t6, 4(s2)
                  sub          t5, sp, t3
                  addi         s2, s2, 40
                  addi         zero, a0, -707
1042:             addi x28, x31, 1
1042:             jalr x28, x28, 0
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
                  addi x18, x18, -128
                  sw  x1, 4(x18)
                  sw  x2, 8(x18)
                  sw  x3, 12(x18)
                  sw  x4, 16(x18)
                  sw  x5, 20(x18)
                  sw  x6, 24(x18)
                  sw  x7, 28(x18)
                  sw  x8, 32(x18)
                  sw  x9, 36(x18)
                  sw  x10, 40(x18)
                  sw  x11, 44(x18)
                  sw  x12, 48(x18)
                  sw  x13, 52(x18)
                  sw  x14, 56(x18)
                  sw  x15, 60(x18)
                  sw  x16, 64(x18)
                  sw  x17, 68(x18)
                  sw  x18, 72(x18)
                  sw  x19, 76(x18)
                  sw  x20, 80(x18)
                  sw  x21, 84(x18)
                  sw  x22, 88(x18)
                  sw  x23, 92(x18)
                  sw  x24, 96(x18)
                  sw  x25, 100(x18)
                  sw  x26, 104(x18)
                  sw  x27, 108(x18)
                  sw  x28, 112(x18)
                  sw  x29, 116(x18)
                  sw  x30, 120(x18)
                  sw  x31, 124(x18)
                  add x13, x18, zero
                  csrr x2, 0x300 # MSTATUS
                  csrr x2, 0x342 # MCAUSE
                  srli x2, x2, 31
                  bne x2, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x2, 0x341 # MEPC
                  csrr x2, 0x342 # MCAUSE
                  li x31, 0x3 # BREAKPOINT
                  beq x2, x31, ebreak_handler
                  li x31, 0x8 # ECALL_UMODE
                  beq x2, x31, ecall_handler
                  li x31, 0x9 # ECALL_SMODE
                  beq x2, x31, ecall_handler
                  li x31, 0xb # ECALL_MMODE
                  beq x2, x31, ecall_handler
                  li x31, 0x1
                  beq x2, x31, instr_fault_handler
                  li x31, 0x5
                  beq x2, x31, load_fault_handler
                  li x31, 0x7
                  beq x2, x31, store_fault_handler
                  li x31, 0xc
                  beq x2, x31, pt_fault_handler
                  li x31, 0xd
                  beq x2, x31, pt_fault_handler
                  li x31, 0xf
                  beq x2, x31, pt_fault_handler
                  li x31, 0x2 # ILLEGAL_INSTRUCTION
                  beq x2, x31, illegal_instr_handler
                  csrr x31, 0x343 # MTVAL
                  1: la x7, test_done
                  jalr x1, x7, 0

ecall_handler:    
                  la x2, _start
                  sw x0, 0(x2)
                  sw x1, 4(x2)
                  sw x2, 8(x2)
                  sw x3, 12(x2)
                  sw x4, 16(x2)
                  sw x5, 20(x2)
                  sw x6, 24(x2)
                  sw x7, 28(x2)
                  sw x8, 32(x2)
                  sw x9, 36(x2)
                  sw x10, 40(x2)
                  sw x11, 44(x2)
                  sw x12, 48(x2)
                  sw x13, 52(x2)
                  sw x14, 56(x2)
                  sw x15, 60(x2)
                  sw x16, 64(x2)
                  sw x17, 68(x2)
                  sw x18, 72(x2)
                  sw x19, 76(x2)
                  sw x20, 80(x2)
                  sw x21, 84(x2)
                  sw x22, 88(x2)
                  sw x23, 92(x2)
                  sw x24, 96(x2)
                  sw x25, 100(x2)
                  sw x26, 104(x2)
                  sw x27, 108(x2)
                  sw x28, 112(x2)
                  sw x29, 116(x2)
                  sw x30, 120(x2)
                  sw x31, 124(x2)
                  la x7, write_tohost
                  jalr x0, x7, 0

instr_fault_handler:
                  add x18, x13, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
                  mret

load_fault_handler:
                  add x18, x13, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
                  mret

store_fault_handler:
                  add x18, x13, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
                  mret

ebreak_handler:   
                  csrr  x2, 0x341
                  addi  x2, x2, 4
                  csrw  0x341, x2
                  add x18, x13, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
                  mret

illegal_instr_handler:
                  csrr  x2, 0x341
                  addi  x2, x2, 4
                  csrw  0x341, x2
                  add x18, x13, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
                  mret

pt_fault_handler: 
                  nop

.align 2
mmode_intr_handler:
                  csrr  x2, 0x300 # MSTATUS;
                  csrr  x2, 0x304 # MIE;
                  csrr  x2, 0x344 # MIP;
                  csrrc x2, 0x344, x2 # MIP;
                  add x18, x13, zero
                  lw  x1, 4(x18)
                  lw  x2, 8(x18)
                  lw  x3, 12(x18)
                  lw  x4, 16(x18)
                  lw  x5, 20(x18)
                  lw  x6, 24(x18)
                  lw  x7, 28(x18)
                  lw  x8, 32(x18)
                  lw  x9, 36(x18)
                  lw  x10, 40(x18)
                  lw  x11, 44(x18)
                  lw  x12, 48(x18)
                  lw  x13, 52(x18)
                  lw  x14, 56(x18)
                  lw  x15, 60(x18)
                  lw  x16, 64(x18)
                  lw  x17, 68(x18)
                  lw  x18, 72(x18)
                  lw  x19, 76(x18)
                  lw  x20, 80(x18)
                  lw  x21, 84(x18)
                  lw  x22, 88(x18)
                  lw  x23, 92(x18)
                  lw  x24, 96(x18)
                  lw  x25, 100(x18)
                  lw  x26, 104(x18)
                  lw  x27, 108(x18)
                  lw  x28, 112(x18)
                  lw  x29, 116(x18)
                  lw  x30, 120(x18)
                  lw  x31, 124(x18)
                  addi x18, x18, 128
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
